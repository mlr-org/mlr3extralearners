#' @title Classification Generalized Additive Model Learner
#' @author JazzyPierrot
#' @name mlr_learners_classif.gam
#'
#' @template class_learner
#' @templateVar id classif.gam
#' @templateVar caller gam
#'
#' @references
#'
#' Wood, S.N. (2017) Generalized Additive Models: An Introduction with R (2nd edition). Chapman
#' & Hall/ CRC, Boca Raton, Florida
#'
#' Key Reference on GAMs generally:
#'
#' Hastie (1993) in Chambers and Hastie (1993) Statistical Models in S. Chapman
#' and Hall.
#'
#' Hastie and Tibshirani (1990) Generalized Additive Models. Chapman and Hall.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifGam = R6Class("LearnerClassifGam",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(list(
        ParamDbl$new("scale", default = 0, tags = "train")
      ))

      super$initialize(
        id = "classif.gam",
        packages = "mgcv",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("prob"),
        param_set = ps,
        properties = c("twoclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.gam"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      data = as.data.frame(task$data(cols = c(task$feature_names, task$target_names)))

      formula_feats = purrr::map_chr(
        task$feature_names,
        ~ ifelse(
          is.logical(data[[.]]) | length(unique(data[[.]])) <= 10,
          .,
          paste0("s(", ., ")")
        )
        )
      formula = as.formula(paste(
        task$target_names,
        "~",
        paste(formula_feats, collapse = " + ")
      ))

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }
      pars$family = binomial(link = "logit")

      mlr3misc::invoke(
        mgcv::gam,
        formula = formula,
        data = data,
        .args = pars
      )
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = as.data.frame(task$data(cols = self$state$feature_names))

      pred = mlr3misc::invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "response",
        .args = pars
      )
      prob = cbind(as.matrix(1 - pred), as.matrix(pred))
      colnames(prob) = levels(task$data(cols = task$target_names)[[1]])
      list(prob = prob)
    }
  )
)

.extralrns_dict$add("classif.gam", LearnerClassifGam)
