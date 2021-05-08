#' @title Classification nnet Learner
#' @author henrifnk
#' @name mlr_learners_classif.nnet
#'
#' @template class_learner
#' @templateVar id classif.nnet
#' @templateVar caller nnet
#'
#' @section Custom mlr3 defaults:
#' - `size`:
#'   - Adjusted default: 3L
#'   - Reason for change: no default in nnet().
#'
#' @references
#' Ripley, B (1996).
#' Pattern Recognition and Neural Networks. Cambridge.
#' \url{http://www.stats.ox.ac.uk/~ripley/PRbook/Compl.pdf}
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifNnet = R6Class("LearnerClassifNnet",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      warning("classif.nnet is now deprecated from mlr3extralearners, for use in the future please load mlr3learners >= 0.4.3.") # nolint

      ps = ps(
        params = list(
          size = p_int(default = 3L, lower = 0L, tags = "train"),
          subset = p_uty(tags = "train"),
          na.action = p_uty(tags = "train"),
          contrasts = p_uty(default = NULL, tags = "train"),
          Wts = p_uty(tags = "train"),
          mask = p_uty(tags = "train"),
          linout = p_lgl(default = FALSE, tags = "train"),
          entropy = p_lgl(default = FALSE, tags = "train"),
          softmax = p_lgl(default = FALSE, tags = "train"),
          censored = p_lgl(default = FALSE, tags = "train"),
          skip = p_lgl(default = FALSE, tags = "train"),
          rang = p_dbl(default = 0.7, tags = "train"),
          decay = p_dbl(default = 0, tags = "train"),
          maxit = p_int(default = 100L, lower = 1L, tags = "train"),
          Hess = p_lgl(default = FALSE, tags = "train"),
          trace = p_lgl(default = TRUE, tags = "train"),
          MaxNWts = p_int(default = 1000L, lower = 1L, tags = "train"),
          abstol = p_dbl(default = 1.0e-4, tags = "train"),
          reltol = p_dbl(default = 1.0e-8, tags = "train")
        )
      )
      ps$values = list(size = 3L)
      ps$add_dep("linout", "entropy", CondEqual$new(FALSE))
      ps$add_dep("linout", "softmax", CondEqual$new(FALSE))
      ps$add_dep("linout", "censored", CondEqual$new(FALSE))
      ps$add_dep("entropy", "linout", CondEqual$new(FALSE))
      ps$add_dep("entropy", "softmax", CondEqual$new(FALSE))
      ps$add_dep("entropy", "censored", CondEqual$new(FALSE))
      ps$add_dep("softmax", "linout", CondEqual$new(FALSE))
      ps$add_dep("softmax", "entropy", CondEqual$new(FALSE))
      ps$add_dep("softmax", "censored", CondEqual$new(FALSE))
      ps$add_dep("censored", "linout", CondEqual$new(FALSE))
      ps$add_dep("censored", "entropy", CondEqual$new(FALSE))
      ps$add_dep("censored", "softmax", CondEqual$new(FALSE))

      super$initialize(
        id = "classif.nnet",
        packages = "nnet",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("prob", "response"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.nnet"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      if ("weights" %in% task$properties) {
        pars = mlr3misc::insert_named(pars, list(weights = task$weights$weight))
      }
      f = task$formula()
      data = task$data()
      mlr3misc::invoke(nnet::nnet.formula, formula = f, data = data, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      if (self$predict_type == "response") {
        response = mlr3misc::invoke(predict, self$model, newdata = newdata, type = "class")
        return(list(response = response))
      } else {
        prob = mlr3misc::invoke(predict, self$model, newdata = newdata, type = "raw")
        if (length(self$model$lev) == 2L) {
          prob = cbind(1 - prob, prob)
          colnames(prob) = self$model$lev
        }
        return(list(prob = prob))
      }
    }
  )
)

.extralrns_dict$add("classif.nnet", LearnerClassifNnet)
