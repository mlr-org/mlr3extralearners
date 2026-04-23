#' @title Geographically Weighted Random Forest Learner
#' @author Manh Hung LE
#' @name LearnerRegrGRF
#'
#' @description
#' Geographically Weighted Random Forest for regression.
#' Calls `SpatialML::grf()` from the SpatialML package.
#' Note that SpatialML is not on CRAN. To install it, use:
#' `remotes::install_version("SpatialML", version = "0.1.6")`
#'
#' @importFrom R6 R6Class
#' @importFrom SpatialML grf predict.grf
#' @importFrom stats predict
#' @importFrom mlr3 LearnerRegr
#' @importFrom paradox ps p_dbl p_fct p_int
#' @importFrom stats as.formula setNames
#' @importFrom mlr3misc invoke stopf
#' @export
LearnerRegrGRF = R6Class("LearnerRegrGRF",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        bw = p_dbl(lower = 0, tags = "train"),
        kernel = p_fct(default = "adaptive", levels = c("adaptive", "fixed"), tags = "train"),
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        nodesize = p_int(default = 5L, lower = 1L, tags = "train"),
        maxnodes = p_int(lower = 1L, tags = "train")
      )

      super$initialize(
        id = "regr.grf",
        packages = "SpatialML",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = ps,
        properties = c("importance", "oob_error"),
        label = "Geographically Weighted Random Forest"
      )
    },

    #' @description
    #' The importance scores are extracted from the slot `Local.Variable.Importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = self$model$Local.Variable.Importance
      scores = colMeans(imp)
      sort(stats::setNames(scores, names(scores)), decreasing = TRUE)
    },

    #' @description
    #' OOB errors are extracted from the model slot `Global.Model$prediction.error`.
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
      pars = self$param_set$get_values(tags = "train")

      target = task$target_names
      features = task$feature_names

      dframe = as.data.frame(task$data(cols = c(features, target)))

      coords = as.matrix(task$coordinates())
      coords = unname(coords)
      storage.mode(coords) = "numeric"

      formula = stats::as.formula(paste(target, "~", paste(features, collapse = " + ")))

      if (is.null(pars$kernel)) pars$kernel = "adaptive"
      if (is.null(pars$ntree)) pars$ntree = 500L

      invoke(SpatialML::grf,
        formula = formula,
        dframe = dframe,
        coords = coords,
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = as.data.frame(task$data(cols = self$feature_names))
      coords_new = as.data.frame(task$coordinates())
      new_data = cbind(coords_new, newdata)
      coord_names = task$col_roles$coordinate

      pred = SpatialML::predict.grf(
        self$model,
        new.data = new_data,
        x.var.name = coord_names[1],
        y.var.name = coord_names[2],
        local.w = 1,
        global.w = 0
      )
      list(response = pred)
    }
  )
)

extralrns_dict$add("regr.grf", LearnerRegrGRF)
