# Learners wrapping an R package

Annotated skeleton distilled from `R/learner_grf_regr_grf.R`, `R/learner_C50_classif_C50.R`, and their tests.
Replace the placeholders; keep the structure.

## Learner file `R/learner_<pkg>_<type>_<name>.R`

```r
#' @title Generalized Random Forest Regression Learner
#' @author jesuisantoine
#' @name mlr_learners_regr.grf
#'
#' @description
#' Generalized random forest for regression.
#' Calls `grf::regression_forest()` from \CRANpkg{grf}.
#'
#' @section Custom mlr3 parameters:
#' - `sample.weights` is not exposed as a hyperparameter.
#'   Observation weights are taken from the task instead, see the `weights` property.
#' - `estimate.variance` is not exposed as a hyperparameter.
#'   It is enabled automatically when the `predict_type` is `"se"`.
#'
#' @references
#' `r format_bib("athey2019generalized")`
#'
#' @templateVar id regr.grf
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrGRF = R6Class("LearnerRegrGRF",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        num.trees = p_int(lower = 1L, default = 2000L, tags = "train"),
        sample.fraction = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),                 # upstream default is an expression -> no default
        honesty = p_lgl(default = TRUE, tags = "train"),
        tune.parameters = p_uty(default = "none", tags = "train"),
        seed = p_int(tags = "train"),
        ll.lambda = p_dbl(lower = 0, default = NULL, special_vals = list(NULL), tags = "predict"),
        num.threads = p_int(lower = 1L, tags = c("train", "predict", "threads"))
      )

      super$initialize(
        id = "regr.grf",
        packages = c("mlr3extralearners", "grf"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.grf",
        label = "Generalized Random Forest"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      invoke(
        grf::regression_forest,
        X = as.matrix(task$data(cols = task$feature_names)),
        Y = task$truth(),
        sample.weights = private$.get_weights(task),   # NULL when the task has no weights
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = as.matrix(ordered_features(task, self))

      pred = invoke(
        predict,
        self$model,
        newdata = newdata,
        estimate.variance = self$predict_type == "se",
        .args = pars
      )

      if (self$predict_type == "response") {
        list(response = pred$predictions)
      } else {
        list(response = pred$predictions, se = sqrt(pred$variance.estimates))
      }
    }
  )
)

.extralrns_dict$add("regr.grf", LearnerRegrGRF)
```

Variations you will need:

- **Formula interface** upstream: `invoke(pkg::fun, formula = task$formula(), data = task$data(), .args = pars)` with
  `pars$weights = private$.get_weights(task)` when weights are a formal argument. Beware that some formula methods fail on
  non-syntactic column names (the autotest's `utf8_feature_names` task); reproduce with the plain upstream call before excluding.
- **Classification `prob`** (from `classif.C50`):

  ```r
  .predict = function(task) {
    pars = self$param_set$get_values(tags = "predict")
    newdata = ordered_features(task, self)
    if (self$predict_type == "response") {
      list(response = invoke(predict, self$model, newdata = newdata, type = "class", .args = pars))
    } else {
      list(prob = invoke(predict, self$model, newdata = newdata, type = "prob", .args = pars))
    }
  }
  ```

  The `prob` matrix needs one column per class, named with the class labels, rows in task order.
  For binary models that return only the positive-class probability, build the matrix with
  `pprob_to_matrix(p, task)` from `R/helpers.R` after checking which class the number refers to.
- **Importance** (`properties = "importance"`): add a public `importance()` method that errors with `stopf("No model stored")`
  when `self$model` is `NULL` and otherwise returns a sorted, named numeric vector.
  Learners with `"selected_features"` or `"oob_error"` follow the same pattern; grep the repo for `selected_features = function`.
- **Thread parameter initialized to 1**: `num.threads = p_int(lower = 1L, init = 1L, tags = c("train", "predict", "threads"))`
  and the *Initial parameter values* section line
  `` - `num.threads` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}. ``
- **Ratio-style custom parameters**: `convert_ratio(pars, "mtry", "mtry_ratio", length(task$feature_names))` from `R/helpers.R`.
- **Logical features** for matrix-based upstreams: `as_numeric_matrix()` from `R/helpers.R` converts logical matrices to double.
- **Function-valued arguments** (e.g. `psi = psi.huber` in `MASS::rlm()`): expose them as `p_fct()` over the function names and
  resolve with `getFromNamespace(name, ns = "<pkg>")` in `.train()`, so the parameter stays serializable and tunable.
- **S4 upstream**: call it normally; the difference only shows in the paramtest (below).

## Autotest file `tests/testthat/test_<pkg>_<type>_<name>.R`

```r
skip_if_not_installed("grf")

test_that("autotest", {
  learner = lrn("regr.grf")
  expect_learner(learner)
  result = run_autotest(learner, predict_types = c("response", "se"))
  expect_true(result, info = result$error)
})

test_that("se predictions require ci.group.size >= 2", {
  task = tsk("mtcars")
  learner = lrn("regr.grf", num.trees = 50L, ci.group.size = 1L, predict_type = "se")
  learner$train(task)
  expect_error(learner$predict(task), "ci.group.size")
})
```

`run_autotest()` options: `exclude = "<regex on generated task ids>"` (e.g. `"single"`, `"sanity"`, `"utf8_feature_names"`),
`check_replicable = FALSE` for stochastic upstreams that ignore `set.seed()`, `N` for the task size,
`configure_learner = function(learner, task) ...` when a parameter depends on the task.
The generated task ids are visible via `generate_tasks(learner)`, which helps when deciding what to exclude.

Survival learners source the mlr3proba helpers automatically (see `tests/testthat/helper.R`); the autotest then also checks
`distr`, `crank`, `lp`, and `response` consistency.

Remember to install the package before running the autotest (SKILL.md section 5): its encapsulation stage runs in a daemon that
loads the installed package.

## Paramtest file `tests/testthat/test_paramtest_<pkg>_<type>_<name>.R`

```r
skip_if_not_installed("grf")

test_that("paramtest regr.grf train", {
  learner = lrn("regr.grf")
  fun_list = list(grf::regression_forest)          # add control functions when `...` is forwarded, e.g. list(f, f.control)
  exclude = c(
    "X", # handled by mlr3
    "Y", # handled by mlr3
    "sample.weights" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.grf predict", {
  learner = lrn("regr.grf")
  fun_list = list(grf:::predict.regression_forest) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "estimate.variance" # handled by mlr3 predict_type
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
```

`expect_paramtest()` (defined in `tests/testthat/helper.R`) prints which parameters are missing from the param set and which are
extra, so run it early: it is the fastest way to find typos and forgotten arguments.

- Unexported S3 methods are referenced with `pkg:::fun.cls` and need `# nolint` on that line. When a formula method dispatches
  to a default method (`rlm.formula` -> `rlm.default`) or a predict method forwards to another (`predict.rlm` -> `predict.lm`),
  list all of them in `fun_list`.
- S4 methods: `getMethod("fun", "matrix")@.Data` when the method signature equals the generic, otherwise
  `s4_helper(getMethod("predict", "cls"))` to unwrap the `.local` function (helper in `tests/testthat/helper.R`).
- Parameters you deliberately pin (verbosity, plotting) still go in `exclude` with the reason.

## Examples in the documentation

`@template example` renders

```r
learner = lrn("regr.grf"); task = tsk("mtcars"); ids = partition(task)
learner$train(task, row_ids = ids$train); learner$predict(task, row_ids = ids$test)$score()
```

guarded by `@examplesIf learner_is_runnable("regr.grf")`, so the example is skipped when the Suggests package is missing.
If the default call cannot work (needs a formula, a parameter, a special task), copy one of `man-roxygen/example_*.R`, adjust it,
and reference it with `@template example_<name>`; start the file with a comment that explains why it is custom.
