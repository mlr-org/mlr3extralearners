#' @title Classification Discriminant Analysis Learner
#' @author annanzrv
#' @name mlr_learners_classif.mda
#'
#' @description
#' Mixture Discriminant Analysis.
#' Calls `mda::mda()` from \CRANpkg{mda}.
#'
#' @section Initial parameter values:
#' * `keep.fitted`: Set to `FALSE` by default for speed.
#'
#' @templateVar id classif.mda
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifMda = R6Class("LearnerClassifMda",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        criterion    = p_fct(default = "misclassification", levels = c("misclassification", "deviance"), tags = "train"),
        dimension    = p_int(lower = 1L, tags = c("train", "predict")),
        eps          = p_dbl(default = .Machine$double.eps, lower = 0, tags = "train"),
        iter         = p_int(default = 5L, lower = 1L, tags = "train"),
        keep.fitted  = p_lgl(default = TRUE, tags = "train"),
        method       = p_fct(default = "polyreg", levels = c("polyreg", "mars", "bruto", "gen.ridge"), tags = "train"),
        prior        = p_dbl(lower = 0, upper = 1, tags = "predict"),
        start.method = p_fct(default = "kmeans", levels = c("kmeans", "lvq"), tags = "train"),
        sub.df       = p_int(lower = 1L, tags = "train"),
        subclasses   = p_int(default = 2L, tags = "train"),
        tot.df       = p_int(lower = 1L, tags = "train"),
        trace        = p_lgl(default = FALSE, tags = "train"),
        tries        = p_int(default = 5L, lower = 1L, tags = "train"),
        weights      = p_uty(tags = "train")
      )

      param_set$values = list(keep.fitted = FALSE)

      super$initialize(
        id = "classif.mda",
        packages = "mda",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.mda",
        label = "Mixture Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # get formula and data
      formula = task$formula()
      data = task$data()

      # handle method parameter
      if (!is.null(pars$method)) {
        if (is.character(pars$method)) {
          pars$method = getFromNamespace(pars$method, "mda")
        }
      }

      invoke(
        mda::mda,
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

      # Calculate predictions for the selected predict type
      type = ifelse(self$predict_type == "response", "class", "posterior")
      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = pred)
      } else {
        list(prob = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.mda", LearnerClassifMda)
