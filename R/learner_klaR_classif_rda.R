#' @title Classification Discriminant Analysis Learner
#' @author annanzrv
#' @name mlr_learners_classif.rda
#'
#' @description
#' Regularized Discriminant Analysis.
#' Calls [klaR::rda()] from: \CRANpkg{klaR}.
#'
#' @templateVar id classif.rda
#' @template learner
#'
#' @references
#' `r format_bib("friedman1989rda")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRda = R6Class("LearnerClassifRda",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        lambda         = p_dbl(lower = 0, upper = 1, tags = "train"),
        gamma          = p_dbl(lower = 0, upper = 1, tags = "train"),
        crossval       = p_lgl(default = TRUE, tags = "train"),
        fold           = p_int(default = 10L, lower = 1L, tags = "train"),
        train.fraction = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train"),
        output         = p_lgl(default = FALSE, tags = "train"),
        schedule       = p_int(default = 2L, depends = quote(simAnn == TRUE), tags = "train"),
        T.start        = p_dbl(default = 0.1, lower = 0, depends = quote(simAnn == TRUE), tags = "train"),
        halflife       = p_dbl(default = 50, lower = 0, depends = quote(simAnn == TRUE && schedule == 1),
                               tags = "train"),
        zero.temp      = p_dbl(default = 0.01, lower = 0, depends = quote(simAnn == TRUE && schedule == 1),
                               tags = "train"),
        alpha          = p_dbl(default = 2, lower = 1, depends = quote(simAnn == TRUE && schedule == 2),
                               tags = "train"),
        K              = p_int(default = 100L, lower = 1L, depends = quote(simAnn == TRUE && schedule == 2),
                               tags = "train"),
        trafo          = p_lgl(default = TRUE, tags = "train"),
        simAnn         = p_lgl(default = FALSE, tags = "train"),
        estimate.error = p_lgl(default = TRUE, tags = "train"),
        max.iter       = p_int(default = 100, tags = "train")
      )

      super$initialize(
        id = "classif.rda",
        packages = "klaR",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.rda",
        label = "Regularized Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      formula = task$formula()
      data = task$data()
      invoke(
        klaR::rda,
        formula = formula,
        data = data,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = pred$class)
      } else {
        list(prob = pred$posterior)
      }
    }
  )
)

.extralrns_dict$add("classif.rda", LearnerClassifRda)
