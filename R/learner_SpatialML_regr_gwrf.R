#' @title Regression Geographically Weighted Random Forest Learner
#' @author Manh Hung LE
#' @name mlr_learners_regr.gwrf
#'
#' @description
#' Geographically weighted random forest for regression.
#' Calls `SpatialML::grf()` from package SpatialML.
#'
#' The learner requires a spatial task with coordinates, e.g., a `TaskRegrST` from package \CRANpkg{mlr3spatiotempcv}.
#' SpatialML has been archived on CRAN.
#' It can be installed with `remotes::install_version("SpatialML", version = "0.1.6")`.
#'
#' Predictions are computed with `SpatialML::predict.grf()` using only the local models,
#' i.e., `local.w = 1` and `global.w = 0`.
#'
#' @section Initial parameter values:
#' - `kernel` is initialized to `"adaptive"` because `SpatialML::grf()` has no default.
#' - `print.results` is set to `FALSE` and not exposed as a hyperparameter.
#'
#' @section Custom mlr3 parameters:
#' - `min.node.size`, `max.depth`, `replace`, and `sample.fraction` are passed to `ranger::ranger()`.
#'
#' @references
#' `r format_bib("georganos2021geographical")`
#'
#' @templateVar id regr.gwrf
#' @template learner
#'
#' @template seealso_learner
#' @export
LearnerRegrGWRF = R6Class("LearnerRegrGWRF",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        bw              = p_dbl(lower = 0, tags = c("train", "required")),
        kernel          = p_fct(levels = c("adaptive", "fixed"), init = "adaptive", tags = c("train", "required")),
        ntree           = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry            = p_int(lower = 1L, tags = "train"),
        importance      = p_fct(default = "impurity", levels = c("impurity", "permutation"), tags = "train"),
        nthreads        = p_int(lower = 1L, tags = c("train", "threads")),
        geo.weighted    = p_lgl(default = TRUE, tags = "train"),
        min.node.size   = p_int(default = 5L, lower = 1L, tags = "train"),
        max.depth       = p_int(lower = 0L, tags = "train"),
        replace         = p_lgl(default = TRUE, tags = "train"),
        sample.fraction = p_dbl(lower = 0, upper = 1, tags = "train")
      )

      super$initialize(
        id = "regr.gwrf",
        packages = c("mlr3extralearners", "SpatialML"),
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = c("importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_regr.gwrf",
        label = "Geographically Weighted Random Forest"
      )
    },

    #' @description
    #' The importance scores are the column means of the slot `Local.Variable.Importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sort(colMeans(self$model$Local.Variable.Importance), decreasing = TRUE)
    },

    #' @description
    #' The OOB error is extracted from the global model slot `Global.Model$prediction.error`.
    #' @return `numeric(1)`.
    oob_error = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      self$model$Global.Model$prediction.error
    }
  ),

  private = list(
    .train = function(task) {
      assert_spatial_task(task)
      pars = self$param_set$get_values(tags = "train")

      coords = unname(as.matrix(task$coordinates()))
      storage.mode(coords) = "numeric"
      # SpatialML::grf() substitutes its arguments and evaluates them in its own frame,
      # so they must be passed as plain variables
      formula = formulate(task$target_names, task$feature_names, quote = character())
      dframe = as.data.frame(task$data())

      invoke(SpatialML::grf,
        formula = formula,
        dframe = dframe,
        coords = coords,
        print.results = FALSE,
        .args = pars
      )
    },

    .predict = function(task) {
      assert_spatial_task(task)
      coord_names = task$col_roles$coordinate
      newdata = cbind(task$coordinates(), task$data(cols = task$feature_names))

      response = invoke(SpatialML::predict.grf,
        object = self$model,
        new.data = as.data.frame(newdata),
        x.var.name = coord_names[1L],
        y.var.name = coord_names[2L],
        local.w = 1,
        global.w = 0
      )
      list(response = response)
    }
  )
)

assert_spatial_task = function(task) {
  if (length(task$col_roles$coordinate) != 2L) {
    error_input("Learner 'regr.gwrf' requires a spatial task with coordinates, e.g., a 'TaskRegrST'.")
  }
  invisible(task)
}

.extralrns_dict$add("regr.gwrf", LearnerRegrGWRF)
