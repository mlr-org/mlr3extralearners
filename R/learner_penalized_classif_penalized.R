#' @title L1 and L2 Penalized Classification Learner
#' @author sebffischer
#' @name mlr_learners_classif.penalized
#'
#' @description
#' Penalized (L1 and L2) generalized linear models.
#' Calls [penalized::penalized()] from \CRANpkg{penalized}.
#'
#' @template learner
#' @templateVar id classif.penalized
#'
#' @details
#' The `penalized` and `unpenalized` arguments in the learner are implemented slightly
#' differently than in [penalized::penalized()]. Here, there is no parameter for `penalized` but
#' instead it is assumed that every variable is penalized unless stated in the `unpenalized`
#' parameter, see examples.
#'
#' @references
#' `r format_bib("goeman2010l1")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifPenalized = R6Class("LearnerClassifPenalized",
  inherit = mlr3::LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        unpenalized = p_uty(tags = c("train", "predict")),
        lambda1 = p_uty(default = 0, tags = "train"),
        lambda2 = p_uty(default = 0, tags = "train"),
        positive = p_lgl(default = FALSE, tags = "train"),
        fusedl = p_lgl(default = FALSE, tags = "train"),
        startbeta = p_dbl(tags = "train"),
        startgamma = p_dbl(tags = "train"),
        steps = p_int(lower = 1L, default = 1L, tags = "train"),
        epsilon = p_dbl(default = 1.0e-10, lower = 0, upper = 1, tags = "train"),
        maxiter = p_int(lower = 1, tags = "train"),
        standardize = p_lgl(default = FALSE, tags = "train"),
        trace = p_lgl(default = TRUE, tags = "train")
      )

      super$initialize(
        id = "classif.penalized",
        properties = "twoclass",
        packages = c("mlr3extralearners", "penalized", "pracma"),
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("response", "prob"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_classif.penalized",
        label = "Penalized Classification"
      )
    }
  ),

  private = list(
    .train = function(task) {
      # Changes the structure of the penalized and unpenalized parameters to be more user friendly.
      # Now the user supplies the column names as a vector and these are added to the formula as
      # required.
      pars = self$param_set$get_values(tags = "train")
      if (length(pars$unpenalized) == 0) {
        penalized = formulate(rhs = task$feature_names)
      } else {
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      list(
        model = invoke(penalized::penalized,
          response = task$truth(), penalized = penalized,
          data = task$data(cols = task$feature_names), .args = pars),
        class_names = levels(task$truth(task$row_ids[1L]))
      )
    },

    .predict = function(task) {
      # Again the penalized and unpenalized covariates are automatically converted to the
      # correct formula

      pars = self$param_set$get_values(tags = "predict")
      if (length(pars$unpenalized) == 0) {
        penalized = formulate(rhs = task$feature_names)
      } else {
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      pred = with_package("penalized", {
        invoke(penalized::predict, self$model$model,
          penalized = penalized,
          data = ordered_features(task, self),
          .args = pars)
      })
      if (self$predict_type == "prob") {
        list(prob = pprob_to_matrix(pred))
      } else {
        list(response = ifelse(pred > 0.5, self$model$class_names[2L], self$model$class_names[1L]))
      }
    }
  )
)

.extralrns_dict$add("classif.penalized", LearnerClassifPenalized)
