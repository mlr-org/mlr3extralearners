---
name: mlr3-add-learner
description: >
  Implement a new mlr3 learner in the mlr3extralearners package that wraps an upstream R package or a Python package (via reticulate):
  the R6 class with its paradox parameter set, registration, roxygen documentation, DESCRIPTION/NEWS/bibentries/cspell bookkeeping,
  autotest and paramtest files, and for Python learners the pinned test virtualenv, callr-isolated tests, and pickle-based marshaling.
  Use this whenever the user asks to add, create, implement, wrap, port, or contribute a learner (classif, regr, surv, cmprsk) to
  mlr3extralearners, mentions an `lrn("...")` id that does not exist yet, wants an R package's model or a Python/scikit-learn/torch
  model usable from mlr3, asks for the regr/classif counterpart of an existing learner, or wants an existing learner's parameter set
  updated to a new upstream version. Trigger even if the user only names the upstream package or a GitHub issue number.
---

# Add a learner to mlr3extralearners

A learner in this package is a thin, well-documented adapter: an R6 class that turns an mlr3 `Task` into a call of the upstream
training function and turns the fitted model's predictions back into the list format mlr3 expects.
The package has ~200 of them, so consistency with the existing ones matters more than cleverness.
Everything below is derived from how the current learners are written; when in doubt, open the closest existing learner and copy
its structure.

The repository's `AGENTS.md` (style, `=` assignment, `invoke()`, NEWS rules, commit format) still applies on top of this skill.

## 1. Scope the learner before writing code

Answer these questions first, and write the answers down for yourself.
They determine the class name, file name, properties, and which reference file to follow.

| Question | Where to look |
|---|---|
| Learner id (`<type>.<name>`, e.g. `regr.rlm`, `classif.hgb`) and class name (`LearnerRegrRlm`) | user request, existing ids in `R/` (`ls R \| grep <name>`), `mlr3learners` for clashes |
| Task type: `classif`, `regr`, `surv`, `cmprsk` | user request; `references/task-types.md` |
| R package or Python package? | upstream package; Python means `reticulate`, read `references/python-learner.md` |
| Which upstream functions are called in train and in predict? | `args(pkg::fun)`, `?pkg::fun`, or `scripts/py_signature.R` for Python |
| Predict types (`response`, `prob`, `se`, `distr`, `crank`, `cif`) | what the upstream `predict` can return |
| Properties (`weights`, `missings`, `importance`, `selected_features`, `oob_error`, `marshal`, `validation`, `internal_tuning`) | upstream capabilities; list in `references/task-types.md` |
| Feature types the upstream accepts (`logical`, `integer`, `numeric`, `character`, `factor`, `ordered`) | upstream docs; test on a small task if unclear |
| Is there a GitHub issue? | `gh issue view <n> --comments` |

Then read the closest existing learner **in full**, including its two test files.
Good starting points:

- R regression, `response` + `se`, weights: `R/learner_grf_regr_grf.R`
- R classification with `prob`: `R/learner_C50_classif_C50.R`
- R survival (`distr`/`crank`): `R/learner_aorsf_surv_aorsf.R`
- Competing risks (`cif`): `R/learner_CoxBoost_cmprsk_coxboost.R`
- S4 upstream (needs `s4_helper()` in the paramtest): `R/learner_ropls_classif_opls.R`
- Python, scikit-learn style `fit`/`predict`/`predict_proba` class, pandas input: `R/learner_tabpfn_classif_tabpfn.R` and `R/helpers_tabpfn.R`
- Python, torch tensors in and out, `py_run_string` for `with torch.no_grad()`: `R/learner_botorch_regr_singletaskgp.R`
- Python, large backbone detached before pickling, backend selection: `R/learner_tabfm_classif_tabfm.R`
- Python with validation and internal tuning (early stopping): `R/learner_fastai_classif_fastai.R`

## 2. Files to create and touch

For a new learner `<type>.<name>` wrapping package `<pkg>`:

| File | What |
|---|---|
| `R/learner_<pkg>_<type>_<name>.R` | the R6 class, registered at the bottom with `.extralrns_dict$add("<type>.<name>", LearnerXxx)` |
| `tests/testthat/test_<pkg>_<type>_<name>.R` | `expect_learner()` + `run_autotest()` plus learner-specific tests |
| `tests/testthat/test_paramtest_<pkg>_<type>_<name>.R` | `run_paramtest()` against the upstream train and predict functions (Python: see the Python reference for the stub-function variant) |
| `DESCRIPTION` | add the R package to `Suggests` (alphabetical, with `(>= x.y.z)` if a version is needed) unless it is already there. Python packages are **not** listed. Add the contributor as `ctb` in `Authors@R` if they are new |
| `R/bibentries.R` | a `bibentry()` for the method paper or software, cited with `` `r format_bib("key")` ``. Grep the file first: packages like MASS or the scikit-learn paper may already have an entry to reuse |
| `NEWS.md` | one bullet under the development version, e.g. `* New learner \`regr.rlm\` fitting robust linear models with \`MASS::rlm()\` (#123).` |
| `.cspell/project-words.txt` | new words that appear in comments or docs (package names, author handles) |
| `man/` and `NAMESPACE` | generated: run `Rscript -e "devtools::document()"` after editing roxygen, never edit by hand |
| `man-roxygen/` | only if a custom example or a shared section template is needed |
| `R/install_python_test_envs.R`, `.github/workflows/rcmdcheck.yml` | Python learners only, see the Python reference |

`pkgdown/_pkgdown.yml` picks up `mlr_learners_*` topics automatically, so it does not need editing for a learner.
The registration dictionary throws if an id or class name is already taken, so loading the package (`devtools::load_all()`)
immediately tells you about clashes.

## 3. The learner class

The full annotated skeletons live in `references/r-learner.md` (R upstream) and `references/python-learner.md` (Python upstream).
The parts that are the same for every learner:

```r
#' @title <Method> <Classification|Regression|Survival> Learner
#' @author <github handle>
#' @name mlr_learners_<type>.<name>
#'
#' @description
#' <One sentence on the method.>
#' Calls `<pkg>::<fun>()` from \CRANpkg{<pkg>}.
#'
#' @section Initial parameter values:          # only if you set values in initialize()
#' - `num.threads` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#'
#' @section Custom mlr3 parameters:            # only for params that do not exist upstream or behave differently
#' - `mtry_ratio` ...
#'
#' @templateVar id <type>.<name>
#' @template learner
#'
#' @references
#' `r format_bib("<key>")`
#'
#' @template seealso_learner
#' @template example                           # R learners only; Python learners get no example (see Python reference)
#' @export
LearnerRegrXxx = R6Class("LearnerRegrXxx",
  inherit = LearnerRegr,                      # LearnerClassif, mlr3proba::LearnerSurv, mlr3cmprsk::LearnerCompRisks
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(...)
      super$initialize(
        id = "<type>.<name>",
        packages = c("mlr3extralearners", "<pkg>"),   # Python: c("mlr3extralearners", "reticulate")
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_<type>.<name>",
        label = "<Short Label>"
      )
    }
  ),
  private = list(
    .train = function(task) { ... },
    .predict = function(task) { ... }
  )
)

.extralrns_dict$add("<type>.<name>", LearnerRegrXxx)
```

Conventions that are easy to miss and that reviewers check:

- `initialize()` must not touch the upstream package. The learner has to be constructable when the package is not installed,
  because `lrn()` and the documentation build instantiate every learner.
- `.train()` gets its parameters with `self$param_set$get_values(tags = "train")` and calls the upstream function with
  `invoke(pkg::fun, formula = ..., data = ..., .args = pars)`. Pass weights with `private$.get_weights(task)` only when the learner
  declares the `"weights"` property.
- `.predict()` builds its new data with `ordered_features(task, self)`, because `task$data()` column order at predict time may differ
  from training time, and many upstream `predict` methods match columns by position.
- The returned list must only contain the requested predict type(s), see `references/task-types.md` for the exact shapes.
- `packages` always starts with `"mlr3extralearners"` when the file defines S3 methods or helpers the learner needs at predict time
  in a fresh session (marshaling, custom predict helpers). Most learners include it.

## 4. Parameter set rules

`ps()` from paradox, every parameter tagged `"train"` and/or `"predict"`.
Derive the list from the upstream signature, not from memory; `scripts/draft_paramset.R pkg::fun` prints a first draft from the
formals of an R function, `scripts/py_signature.R` does the same for a Python callable.

- `default =` documents what upstream uses when the parameter is unset. It is informational and must have the parameter's type, so
  leave it out when the upstream default is an expression (`NULL` is fine via `special_vals = list(NULL)`), or when it depends on the data.
- `init =` (or `param_set$set_values()` after construction) changes what mlr3 uses. Do this sparingly and document every case in
  the *Initial parameter values* section. The standard cases: thread counts to 1, verbosity off, file writing off.
- A parameter that upstream requires and that has no default gets `tags = c("train", "required")` plus an `init`, so the learner
  runs out of the box.
- Thread parameters get the extra tag `"threads"` so `set_threads()` works.
- `p_fct(levels = ...)` for enumerations, `p_uty(custom_check = ...)` for anything else (functions, vectors, formulas).
  The custom check returns `TRUE` or an error string, so `check_*()` from checkmate fits directly.
- Python `None` is modeled as `special_vals = list("None")` and converted with `reticulate::py_none()` in `.train()`.
- Parameters that mlr3 handles itself (data, formula, weights, the predict type switch, verbosity you force off, deprecated ones) are
  not in the set. Each one becomes an entry in the paramtest's `exclude` with a one-line justification.
- Add parameters that do not exist upstream (`mtry_ratio`, R-indexed `categorical_features_indices`) only when they clearly help,
  and document them under *Custom mlr3 parameters*.

## 5. Tests

`tests/testthat/test_<pkg>_<type>_<name>.R`:

```r
skip_if_not_installed("<pkg>")

test_that("autotest", {
  learner = lrn("<type>.<name>")
  expect_learner(learner)
  result = run_autotest(learner)     # exclude = "...", check_replicable = FALSE, predict_types = ... when justified
  expect_true(result, info = result$error)
})
```

`run_autotest()` trains and predicts on generated tasks covering every feature type, missings, single-column tasks, and so on, so a
failure usually means the `feature_types` or `properties` claim something the code cannot do. Fix the claim or the code, and
only `exclude` a generated task with a comment explaining why (e.g. a GP that cannot fit a single integer column).
Add targeted tests for everything you converted by hand: special values, custom parameters, `se`/`prob` output, weights.

`tests/testthat/test_paramtest_<pkg>_<type>_<name>.R` compares the param set with the upstream formals, once for `tag = "train"`
and once for `tag = "predict"`, with every exclusion justified (template in `references/r-learner.md`;
the Python reference shows how to build the formals from a Python signature).

**Install before you test.** The autotest's encapsulation stage trains the learner inside a mirai daemon, and `run_py_test()`
starts a callr session; both load the *installed* mlr3extralearners, not the one `devtools::test()` loaded with `load_all()`.
Without a fresh install the new learner fails with `could not find function ".__LearnerRegrXxx__.train"` or
`expect_man_exists()` errors, even though the code is right. So after `devtools::document()`:

```
Rscript -e "devtools::install(quick = TRUE, upgrade = FALSE)"
```

If the user's library must stay untouched, install into a scratch library instead and point `R_LIBS` at it:
`R CMD INSTALL --no-docs --no-multiarch --library=<dir> .` then `R_LIBS=<dir> Rscript -e "devtools::test(...)"`.
Reinstall whenever you change the learner file, otherwise the daemon keeps running the old code.

Run only your files:

```
Rscript -e "devtools::test(filter = '^<pkg>_')"
Rscript -e "devtools::test(filter = '^paramtest_<pkg>_')"
```

When a generated autotest task fails inside the upstream package (a classic: formula interfaces choking on the non-syntactic
names of the `utf8_feature_names` task), reproduce it with a plain upstream call first. If it is an upstream limitation, exclude
the task with a comment naming the error, and mention the limitation in the roxygen description so users are not surprised.

## 6. Documentation and bookkeeping

1. Add the bibentry, NEWS bullet, DESCRIPTION `Suggests`, and cspell words.
2. `Rscript -e "devtools::document()"` regenerates `man/mlr_learners_<id>.Rd` and the `NAMESPACE` (export of the class and any S3
   `marshal_model.*` methods). The `@template learner` block renders the parameter table from the live param set, so documentation
   errors here usually mean the learner cannot be constructed.
3. `@template example` produces a train/predict/score example on `sonar`, `mtcars`, `grace`, or `pbc` depending on the task type.
   Use `@template example_simple` (only constructs the learner) when training is slow or needs special configuration, or a custom
   `man-roxygen/example_<name>.R` when the learner needs specific parameters to be meaningful (see the existing ones for the pattern).
4. Spellcheck: `npx cspell "R/learner_<pkg>_*.R" NEWS.md` and add legitimate words to `.cspell/project-words.txt`.
5. Lint: `Rscript -e "lintr::lint('R/learner_<pkg>_<type>_<name>.R')"`.

## 7. Finish

- Run `Rscript -e "devtools::load_all(); lrn('<type>.<name>')$train(tsk('<task>'))$predict(tsk('<task>'))"` once by hand as a smoke test
  before the autotest, it gives a much better error message.
- Report what you verified (which tests ran and passed) and what you could not run (missing package, missing Python env).
- Commit as `feat: add <type>.<name> learner (#<issue>)` if asked to commit.
