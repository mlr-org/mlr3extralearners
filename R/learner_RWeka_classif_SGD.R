#' @title Classification Stochastic Gradient Descent For Learning Various Linear Models
#' @author damirpolat
#' @name mlr_learners_classif.SGD
#'
#' @description
#' Stochastic Gradient Descent for learning various linear models
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}
#'
#' @section Initial parameter values:
#' - `F`:
#'    - Has only 2 out of 5 original loss functions: 0 = hinge loss (SVM) and 1 = log loss (logistic regression)
#'      with 0 (hinge loss) still being the default
#'    - Reason for change: this learner should only contain loss functions appropriate for classification tasks
#'
#' @section Custom mlr3 parameters:
#' - `output_debug_info`:
#'   - original id: output-debug-info
#'
#' - `do_not_check_capabilities`:
#'   - original id: do-not-check-capabilities
#'
#' - `num_decimal_places`:
#'   - original id: num-decimal-places
#'
#' - `batch_size`:
#'   - original id: batch-size
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#'
#' @templateVar id classif.SGD
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSGD = R6Class("LearnerClassifSGD",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        F = p_fct(default = "0", levels = c("0", "1"), tags = "train"),
        L = p_dbl(default = 0.01, tags = "train"),
        R = p_dbl(default = 0.0001, tags = "train"),
        E = p_int(default = 500L, tags = "train"),
        C = p_dbl(default = 1e-3, tags = "train"),
        N = p_lgl(tags = "train"),
        M = p_lgl(tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.SGD",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.SGD",
        label = "Stochastic Gradient Descent For Learning Various Linear Models"
      )
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/SGD")

      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(weka_learner)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      pars = pars[which(names(pars) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      formula = task$formula()
      data = task$data()
      invoke(weka_learner, formula = formula, data = data, control = ctrl)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, newdata = newdata, type = "class",
          .args = pars
        )
      } else {
        prob = invoke(predict, self$model, newdata = newdata, type = "prob",
          .args = pars
        )
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.SGD", LearnerClassifSGD)
