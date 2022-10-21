#' @title Classification C5.0 Learner
#' @author henrifnk
#' @name mlr_learners_classif.C50
#'
#' @description
#' Decision Tree Algorithm.
#' Calls [C50::C5.0.formula()] from \CRANpkg{C50}.
#'
#'
#' @template learner
#' @templateVar id classif.C50
#'
#' @references
#' `r format_bib("quinlan2014c4")`
#'
#' @export
LearnerClassifC50 = R6Class("LearnerClassifC50",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        trials = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        rules = p_lgl(default = FALSE, tags = "train"),
        costs = p_uty(default = NULL, tags = "train"),
        subset = p_lgl(default = TRUE, tags = "train"),
        bands = p_int(lower = 0, upper = 1000L, tags = "train"),
        winnow = p_lgl(default = FALSE, tags = "train"),
        noGlobalPruning = p_lgl(default = FALSE, tags = "train"),
        CF = p_dbl(default = 0.25, lower = 0, upper = 1, tags = "train"),
        minCases = p_int(default = 2L, lower = 0L, upper = Inf, tags = "train"),
        fuzzyThreshold = p_lgl(default = FALSE, tags = "train"),
        sample = p_dbl(default = 0, lower = 0, upper = .999, tags = "train"),
        seed = p_int(lower = -Inf, upper = Inf, tags = "train"),
        earlyStopping = p_lgl(default = TRUE, tags = "train"),
        label = p_uty(default = "outcome", tags = "train"),
        na.action = p_uty(default = stats::na.pass, tags = "predict")
      )
      ps$add_dep("bands", "rules", CondEqual$new(TRUE))

      super$initialize(
        id = "classif.C50",
        packages = c("mlr3extralearners", "C50"),
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.C50",
        label = "Tree-based Model"
      )
    }
  ),


  private = list(
    .train = function(task) {
      args_ctrl = formalArgs(C50::C5.0Control)
      pars = self$param_set$get_values(tags = "train")
      pars_ctrl = pars[names(pars) %in% args_ctrl]
      pars_train = pars[names(pars) %nin% args_ctrl]

      ctrl = do.call(C50::C5.0Control, pars_ctrl)

      if ("weights" %in% task$properties) {
        pars_train$weights = task$weights$weight
      }

      f = task$formula()
      data = task$data()
      invoke(C50::C5.0.formula, formula = f, data = data, control = ctrl, .args = pars_train)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      if (self$predict_type == "response") {
        response = invoke(predict, self$model,
          newdata = newdata,
          type = "class", .args = pars
        )
      } else {
        prob = invoke(predict, self$model,
          newdata = newdata,
          type = "prob", .args = pars
        )
      }

      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.C50", LearnerClassifC50)
