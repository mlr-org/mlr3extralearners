#' @title Polynomial Regression Learner
#' @name mlr_learners_regr.polyFit
#'
#' @description
#' Polynomial regression.
#' Calls [polyreg::polyFit()] from \CRANpkg{polyreg}.
#'
#' @section Initial parameter values:
#' * `deg`: We have set this to 2, pretty arbitrarily.
#' * `noisy`: We have set this to FALSE, to get no output on the console.
#'
#' @templateVar id regr.polyFit
#' @template learner
#' @template seealso_learner
#' @export
LearnerRegrPoly = R6Class("LearnerRegrPolyFit",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        deg = p_int(lower = 0, tags = c("train", "required")),
        maxInteractDeg = p_int(lower = 0, tags = "train"),
        # we dont put param "use" here because these is determined by the task
        return_xy = p_lgl(default = FALSE, tags = "train"),
        returnPoly = p_lgl(default = FALSE, tags = "train"),
        noisy = p_lgl(default = TRUE, tags = "train")
      )
      param_set$set_values(deg = 2, noisy = FALSE)

      super$initialize(
        id = "regr.polyFit",
        packages = c("mlr3extralearners", "polyreg"),
        feature_types =  c("numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = character(0),
        label = "Polynomial Regression",
        man = "mlr3extralearners::mlr_learners_regr.polyFit"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      pars$use = "lm"
      data = task$data()
      colns = c(task$feature_names, task$target_names)
      data = data[, colns, with = FALSE]
      invoke(
        polyreg::polyFit,
        xy = data,
        .args = pars
      )
    },
    .predict = function(task) {
      newdata = ordered_features(task, self)
      pred = invoke(predict, self$model, newdata = newdata)
      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.polyFit", LearnerRegrPoly)

