#' @title Classification Nearest Shrunken Centroid Learner
#' @author annanzrv
#' @name mlr_learners_classif.pamr
#'
#' @description
#' Classification using nearest shrunken centroids.
#' Calls [pamr::pamr()] from \CRANpkg{pamr}.
#' Note that the task has to have at least two features.
#'
#'
#' @templateVar id classif.pamr
#' @template learner
#'
#' @references
#' `r format_bib("tibshirani2002diagnosis")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifPamr = R6Class("LearnerClassifPamr",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        gene.subset       = p_uty(tags = "train"),
        hetero            = p_uty(tags = "train"),
        n.threshold       = p_int(default = 30L, tags = "train"),
        ngroup.survival   = p_int(default = 2L, tags = "train"),
        offset.percent    = p_dbl(default = 50, lower = 0, upper = 100, tags = "train"),
        prior             = p_dbl(lower = 0, upper = 1, tags = c("train", "predict")),
        remove.zeros      = p_lgl(default = TRUE, tags = "train"),
        sample.subset     = p_uty(tags = "train"),
        scale.sd          = p_lgl(default = TRUE, tags = "train"),
        se.scale          = p_uty(tags = "train"),
        sign.contrast     = p_fct(default = "both", levels = c("both", "negative", "positive"), tags = "train"),
        threshold         = p_dbl(tags = c("train", "predict")),
        threshold.scale   = p_dbl(tags = c("train", "predict"))
      )

      super$initialize(
        id = "classif.pamr",
        packages = "pamr",
        feature_types = c("numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.pamr",
        label = "Nearest shrunken centroid"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # check that the task has at least two features
      if (length(task$feature_names) < 2) {
        stopf("Learner 'classif.pamr': Task must have at least two feature columns, but got %i.",
              length(task$feature_names))
      }
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars$n.threshold = if (is.null(pars$n.threshold)) task$n_features

      # get data
      d = task$data()
      data = list(x = t(task$data(cols = task$feature_names)), y = d[[task$target_names]])

      # train model
      invoke(pamr::pamr.train, data = data, .args = pars)
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)
      pars$threshold = if (is.null(pars$threshold)) self$state$model$threshold

      # Calculate predictions for the selected predict type
      type = ifelse(self$predict_type == "prob", "posterior", "class")
      pred = invoke(pamr::pamr.predict,
        self$model,
        newx = t(newdata),
        type = type,
        .args = pars
      )

      if (self$predict_type == "prob") {
        list(prob = pred)
      } else {
        list(response = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.pamr", LearnerClassifPamr)
