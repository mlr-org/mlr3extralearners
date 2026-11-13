# Learners wrapping a Python package (reticulate)

The package has four Python-backed learner families: `tabpfn`, `tabfm`, `botorch`, and `fastai`.
They share a set of mechanisms that an R-only learner does not need.
Read this whole file before writing a Python learner, then open `R/learner_tabpfn_classif_tabpfn.R` (the cleanest template) and
`tests/testthat/test_tabpfn_classif_tabpfn.R`.

The vignette `vignettes/extending.Rmd` still shows an older test pattern (`skip_if_not_installed_py()`, `RETICULATE_PYTHON = "managed"`).
Ignore it; the current mechanism is `skip_if_no_python_env()` + `run_py_test()` in `tests/testthat/helper.R`.

## 1. How Python dependencies are declared

There is no Python package in `DESCRIPTION`. Only `reticulate` is in `Suggests`, and the learner declares
`packages = c("mlr3extralearners", "reticulate")`.

At the start of **both** `.train()` and `.predict()` call

```r
assert_python_packages(c("torch", "<pkg>"))
pkg = reticulate::import("<pkg>")
```

`assert_python_packages()` (`R/assertions.R`) does three things in this order, which is why it must come before any `import()`:

1. `reticulate::py_require(packages)` registers the requirements, so that reticulate can build an ephemeral `uv` environment for
   users who have no Python set up. Pip-style constraints are allowed (`"fastcore<2.0.0"`).
2. If `torch` is among them, `preload_torch()` imports it with `RTLD_DEEPBIND`, which prevents a segfault with recent OpenBLAS.
   Importing torch (directly or through a package that imports it) before this call defeats the fix.
3. It checks `py_module_available()` for each module and errors with a clear message otherwise.

List every top-level Python distribution the learner imports or that the upstream forgets to declare
(`tabfm[pytorch]` needs `safetensors`, `fastai` needs `IPython`, `pydicom`, `kornia`, and anything that receives a data frame
needs `pandas`, which scikit-learn for example does not depend on). Discovering those is part of the job: install the group
environment (section 5) and train on a task; a `ModuleNotFoundError` at runtime names the missing one.

**Pip name versus module name.** `assert_python_packages()` derives the module it checks from the requirement string, so it works
for `tabpfn`, `torch`, `botorch` but fails for distributions whose import name differs (`scikit-learn` imports as `sklearn`,
`Pillow` as `PIL`, `pyyaml` as `yaml`): `py_module_available("scikit-learn")` is always `FALSE`. The fix is an explicit `modules`
argument on the shared helper in `R/assertions.R`, not a workaround inside the learner:

```r
assert_python_packages = function(packages, python_version = NULL, modules = NULL) {
  assert_character(modules, any.missing = FALSE, len = length(packages), null.ok = TRUE)
  reticulate::py_require(packages, python_version = python_version)
  # packages may carry pip-style version constraints, e.g. "fastcore<2.0.0"
  modules = modules %??% trimws(sub("[<>=!~\\[].*$", "", packages))
  ...
```

Document the new argument in the roxygen block (it is an exported, documented function), call it as
`assert_python_packages(c("scikit-learn", "pandas"), modules = c("sklearn", "pandas"))`, and rerun one existing Python learner's
test file (`devtools::test(filter = "botorch_regr_singletaskgp")`) as a regression check, because every Python learner goes
through this function. If a later version of the package already has such an argument, use it.

`initialize()` stays free of any reticulate call.

## 2. Inspecting the upstream API

Run `scripts/py_signature.R` to print the constructor and method signatures with defaults, and the docstring:

```
Rscript <skill>/scripts/py_signature.R scikit-learn sklearn.ensemble HistGradientBoostingClassifier
Rscript <skill>/scripts/py_signature.R scikit-learn sklearn.ensemble HistGradientBoostingClassifier.fit
```

Map each constructor argument to a paradox parameter (rules in SKILL.md section 4), each `fit()` argument to a train parameter,
and each `predict()`/`predict_proba()` argument to a predict parameter. Note the Python types; they decide the conversion below.

## 3. Converting values between R and Python

reticulate converts scalars and vectors automatically, but several cases bite:

| R value | What Python receives | Fix |
|---|---|---|
| `5` (double) where Python wants `int` | `5.0`, often a `TypeError` | `p_int()` already yields integers; otherwise `as.integer()` |
| the string `"None"` (`special_vals = list("None")`) | the string | `if (identical(pars$x, "None")) pars$x = reticulate::py_none()` |
| 1-based index vector | off by one | `as.integer(idx - 1L)` and document that the mlr3 parameter uses R indexing |
| named list | `dict` | fine; unnamed list becomes `list`. Use `reticulate::r_to_py(as.list(x))` to force a list from a vector |
| `NA` in integer or logical columns | `-2147483648` / `False` | cast those columns to double before `r_to_py()`, see `tabpfn_data()` in `R/helpers_tabpfn.R` |
| numeric matrix for torch | shares R memory, read only | `torch$tensor(as_numeric_matrix(x), dtype = torch$float64)` copies, never `torch$from_numpy()` |
| torch dtype / device given as string | string | `reticulate::py_get_attr(torch, "float32")`, `torch$device("cpu")` |
| class labels in `class_weight`-style dicts | sklearn label-encodes `y`, so names do not match | map labels to encoded indices, or turn class weights into observation weights in R |

Build the training data as a pandas data frame when the upstream does its own preprocessing (sklearn-style APIs, foundation models):

```r
x_py = reticulate::r_to_py(as.data.frame(task$data(cols = task$feature_names)))
y_py = reticulate::r_to_py(task$truth())
fitted = mlr3misc::invoke(estimator$fit, X = x_py, y = y_py)
```

Factor columns become pandas `category`; character columns become `object`; most sklearn estimators then need `categorical_features`
or an encoder, so test with a factor feature before claiming `"factor"` in `feature_types`.

Construct the estimator with all parameters via `mlr3misc::invoke(pkg$Estimator, .args = pars)` after removing or converting the
mlr3-only entries from `pars`.

Reading predictions back:

```r
response = reticulate::py_to_r(model$predict(X = x_py))          # numpy -> R vector
prob = reticulate::py_to_r(model$predict_proba(X = x_py))
colnames(prob) = as.character(reticulate::py_to_r(model$classes_))
```

For classification check that the labels come back as the task's class labels (sklearn returns the values of `y`, which are the
factor labels when `y` was a factor; cast with `as.character()` or `factor(..., levels = task$class_names)` as needed).

Python context managers and anything that needs Python syntax go through `reticulate::py_run_string()`, defining a small function
once and calling it via `reticulate::py$fun(...)`; `R/learner_botorch_regr_singletaskgp.R` does this for `with torch.no_grad()`.
`reticulate::py_capture_output()` silences chatty fits.
Set thread counts explicitly (`torch$set_num_threads()`), the test harness runs with mirai daemons.

## 4. Marshaling (required)

Python objects are external pointers, so a trained learner cannot be saved or sent to a parallel worker without marshaling.
Every Python learner therefore has the `"marshal"` property and this boilerplate (copied verbatim from `classif.tabpfn`):

```r
  public = list(
    initialize = function() { ... properties = c("twoclass", "multiclass", "missings", "marshal") ... },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),
```

`.train()` wraps the Python object in a classed list, `structure(list(fitted = fitted), class = "<pkg>_model")`, and two exported
S3 methods pickle it to raw bytes and back:

```r
#' @export
marshal_model.<pkg>_model = function(model, inplace = FALSE, ...) {
  reticulate::py_require("<pkg>")
  reticulate::import("<pkg>")              # the unpickler needs the classes importable
  pickle = reticulate::import("pickle")
  pickled = as.raw(pickle$dumps(model$fitted))
  structure(list(
    marshaled = pickled,
    packages = "mlr3extralearners"
  ), class = c("<pkg>_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.<pkg>_model_marshaled = function(model, inplace = FALSE, ...) {
  reticulate::py_require("<pkg>")
  reticulate::import("<pkg>")
  pickle = reticulate::import("pickle")
  fitted = pickle$loads(reticulate::r_to_py(model$marshaled))
  structure(list(fitted = fitted), class = "<pkg>_model")
}
```

Run `devtools::document()` afterwards so the S3 methods land in `NAMESPACE`.
If the model carries a multi-gigabyte backbone that can be reloaded from a cache, detach it before pickling and reload it on
unmarshal (`R/learner_tabfm_classif_tabfm.R`). Store any R-side extras (eval protocols, class names) next to the raw bytes.

## 5. The pinned test environment

Tests never use the ephemeral environment; they run in a named virtualenv per requirement group so that CI is reproducible and
conflicting requirements never meet. Add a group to `R/install_python_test_envs.R`:

```r
  <group> = list(
    python = "3.12",
    packages = c(
      "torch==2.13.0",          # same torch pin as the other groups unless the upstream needs another
      "<pkg>==<current version>",
      "pandas==<current version>"   # when data frames are passed and the upstream does not depend on pandas
    )
  )
```

Rules for that file: pin exact versions (the pins define what is tested; the learner itself stays unpinned), keep it base R plus
reticulate only (CI sources it without loading the package), and keep torch out of groups that do not need it.
Then create the environment locally and use it:

```
Rscript -e 'source("R/install_python_test_envs.R"); install_python_test_envs("<group>")'
```

On Linux this installs the CPU wheels of torch. The CI workflow `.github/workflows/rcmdcheck.yml` caches `~/.virtualenvs` keyed on
the hash of that file, so adding a group automatically rebuilds the cache. If the model weights are gated (Hugging Face, license
tokens), the workflow also needs the secret in its `env:` block, as `TABPFN_TOKEN` and `HF_TOKEN` are.

## 6. Tests

Every test body runs inside `run_py_test("<group>", function() { ... })`, which starts a fresh R session via callr with
`RETICULATE_PYTHON` pointing at the group's virtualenv, attaches mlr3/testthat/checkmate, sources the mlr3 test helpers, and sets up
a mirai daemon. The isolation is mandatory: reticulate binds one interpreter per process, and Python torch cannot share a process
with the R `torch` package that other tests load.

```r
skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_if_no_python_env("<group>")        # skips locally when the env is missing, never skips in GitHub Actions

test_that("autotest", {
  expect_true(run_py_test("<group>", function() {
    learner = lrn("<type>.<name>")
    expect_learner(learner)
    result = run_autotest(learner, check_replicable = FALSE)   # most Python models are not bit-reproducible across runs
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works", {
  expect_true(run_py_test("<group>", function() {
    learner = lrn("<type>.<name>")
    task = tsk("iris")
    learner$train(task)
    pred = learner$predict(task)
    class_prev = class(learner$model)

    expect_false(learner$marshaled)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    expect_invisible(learner$unmarshal())
    expect_equal(learner$predict(task), pred)     # compare predictions, Python pointers always differ after unpickling
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

# group small checks in one block, every run_py_test() pays for a fresh R session and Python start-up
test_that("other tests", {
  expect_true(run_py_test("<group>", function() {
    ...
  }))
})
```

Add `skip_on_os(c("windows", "mac"))` and `skip_on_cran()` when the upstream wheels only exist for Linux or the test is slow
(the botorch and fastai tests do both). If a full `run_autotest()` is too slow (foundation models on CPU), replace it with one
smoke test on a small task with mixed feature types and missing values, as `tests/testthat/test_tabfm_regr_tabfm.R` does, and say
so in a comment.

**Paramtest.** `run_paramtest()` compares the param set with the formals of an R function, so for a Python callable build a stub R
function whose formals are the Python parameter names and run the same test inside `run_py_test()`.
This keeps the learner honest against upstream version bumps exactly like the R learners' paramtests do:

```r
test_that("paramtest classif.<name> train", {
  expect_true(run_py_test("<group>", function() {
    learner = lrn("classif.<name>")
    inspect = reticulate::import("inspect")
    module = reticulate::import("<module>")
    builtins = reticulate::import_builtins()
    py_args = unlist(reticulate::py_to_r(builtins$list(inspect$signature(module$<Estimator>)$parameters)))

    # mimic an R function with the python arguments as formals, so that run_paramtest() can be used
    fun = function() NULL
    formals(fun) = stats::setNames(rep(list(quote(expr = )), length(py_args)), py_args)

    exclude = c(
      "warm_start" # not applicable, each $train() fits a new estimator
    )
    paramtest = run_paramtest(learner, fun, exclude, tag = "train")
    expect_true(isTRUE(paramtest), info = if (!isTRUE(paramtest)) {
      sprintf("missing: %s; extra: %s", str_collapse(paramtest$missing), str_collapse(paramtest$extra))
    })
  }))
})
```

Do the same for the `fit()` arguments you expose as train parameters and for `predict()` arguments tagged `"predict"`; when a
method takes only `X`, assert that `learner$param_set$ids(tags = "predict")` is empty instead. `expect_paramtest()` from
`tests/testthat/helper.R` is not available inside the callr child, hence the inline `info`.
List deliberately omitted arguments with a reason in `exclude`, and in the *Custom mlr3 parameters* section when users would miss them.

**Install first.** The callr child does `library(mlr3extralearners)`, so it sees the installed package. Run
`Rscript -e "devtools::install(quick = TRUE, upgrade = FALSE)"` (or `R CMD INSTALL --library=<scratch dir>` plus `R_LIBS`) after
every change to the learner, then `Rscript -e "devtools::test(filter = '^<pkg>_')"`. Expect minutes, not seconds.

## 7. Documentation

Python learners carry two extra sections, kept in a shared template `man-roxygen/sections_<pkg>.R` so the classif and regr
versions do not drift:

```r
#' @section Installation:
#' This learner relies on \CRANpkg{reticulate} to handle Python dependencies.
#' It is not necessary to install any Python package manually in advance or specify a Python environment
#' via `reticulate::use_python()`, `reticulate::use_virtualenv()`, `reticulate::use_condaenv()`,
#' or `reticulate::use_miniconda()`.
#' By calling `$train()` or `$predict()`, the required Python packages will be installed automatically, if not already.
#' Reticulate will then configure and initialize an ephemeral environment satisfying those requirements,
#' unless an existing environment (e.g., `"r-reticulate"`) in reticulate's
#' [Order of Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
#' contains all the necessary packages.
#'
#' @section Saving a Learner:
#' In order to save a `<%= class %>` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `<%= class %>` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
```

In the learner file: `@templateVar class LearnerClassifXxx` followed by `@template sections_<pkg>`, and a description line
`` Uses \CRANpkg{reticulate} to interface with the [`<pkg>`](<url>) Python package. ``.
The regr twin reuses the classif text with `@inherit mlr_learners_classif.<name> description` and
`@inherit mlr_learners_classif.<name> references`.

Do **not** add `@template example`: examples run during `R CMD check` and would install Python packages on the check machine.

Document in *Custom mlr3 parameters* every place where the mlr3 parameter differs from Python: `"None"` special values, R indexing,
strings that are turned into torch objects, dict parameters passed as named lists.

## 8. Checklist specific to Python learners

- [ ] `assert_python_packages()` first in `.train()` and `.predict()`, listing every distribution actually imported (plus `pandas`
      when data frames are passed), with `modules =` when a pip name differs from its import name
- [ ] no reticulate call in `initialize()`
- [ ] `"marshal"` property, `marshal()`/`unmarshal()`/`marshaled`, exported `marshal_model.*`/`unmarshal_model.*`, NAMESPACE regenerated
- [ ] `None`, integer, and index conversions done and documented
- [ ] NA-safe data conversion verified with a task that has missing values in integer and logical columns (if `"missings"` is claimed)
- [ ] group added to `R/install_python_test_envs.R`, environment created locally, tests run inside `run_py_test()`
- [ ] paramtest via a stub function built from `inspect.signature()`, run inside `run_py_test()`
- [ ] dev package installed before running the tests
- [ ] secrets added to the CI workflow if weights are gated
- [ ] `man-roxygen/sections_<pkg>.R` with Installation and Saving sections, no example template
- [ ] cspell words for the package and model names
