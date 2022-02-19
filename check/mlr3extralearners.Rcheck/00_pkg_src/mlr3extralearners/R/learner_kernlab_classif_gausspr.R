#' @title Classifession Gaussian Process Learner
#' @author RaphaelS1
#' @name mlr_learners_classif.gausspr
#'
#' @template class_learner
#' @templateVar id classif.gausspr
#' @templateVar caller gausspr
#'
#' @details Parameters `sigma`, `degree`, `scale`, `offset` and `order` are
#' added to make tuning `kpar` easier. If `kpar` is provided then these
#' new parameters are ignored. If none are provided then the default
#' "automatic" is used for `kpar`.
#'
#' @references
#' `r format_bib("karatzoglou2004kernlab")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifGausspr = R6Class("LearnerClassifGausspr",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        scaled = p_uty(default = TRUE, tag = "train"),
        kernel = p_fct(default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot", "tanhdot",
            "laplacedot", "besseldot", "anovadot", "splinedot"),
          tags = "train"),
        sigma = p_dbl(tag = c("train", "kpar")),
        degree = p_dbl(tag = c("train", "kpar")),
        scale = p_dbl(tag = c("train", "kpar")),
        offset = p_dbl(tag = c("train", "kpar")),
        order = p_dbl(tag = c("train", "kpar")),
        kpar = p_uty(default = "automatic", tag = "train"),
        tol = p_dbl(lower = 0, default = 0.001, tag = "train"),
        fit = p_lgl(default = TRUE, tag = "train"),
        na.action = p_uty(default = na.omit, tag = "train"),
        coupler = p_fct(default = "minpair", levels = c("minpair", "pkpd"), tag = "predict")
      )

      super$initialize(
        id = "classif.gausspr",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c("numeric", "integer", "logical", "character",
          "factor", "ordered"),
        predict_types = c("response", "prob"),
        properties = c("twoclass", "multiclass"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_classif.gausspr"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # get parameters for training

      pars = self$param_set$get_values(tags = "train")
      kpars = self$param_set$get_values(tags = "kpar")
      kpar = self$param_set$values$kpar

      if (is.null(kpar)) {
        if (length(kpars)) {
          kpar = kpars
        } else {
          kpar = "automatic"
        }
      }

      pars = pars[setdiff(names(pars), c("kpar", names(kpars)))]

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      mlr3misc::invoke(kernlab::gausspr,
        x = task$formula(),
        data = task$data(),
        kpar = kpar,
        .args = pars)
    },

    .predict = function(task) {
      out = setNames(vector("list", 1L), self$predict_type)
      pars = self$param_set$get_values(tags = "predict")
      out[[1]] = mlr3misc::invoke(
        getMethod("predict", "gausspr"),
        self$model,
        task$data(cols = self$state$feature_names),
        type = self$predict_type,
        .args = pars
      )
      out
    }
  )
)

.extralrns_dict$add("classif.gausspr", LearnerClassifGausspr)
