#' @title Classification Least Squares Support Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_classif.lssvm
#'
#' @template class_learner
#' @templateVar id classif.lssvm
#' @templateVar caller lssvm
#'
#' @details Parameters `sigma`, `degree`, `scale`, `offset`, `order`, `length`,
#' `lambda`, and `normalized` are added to make tuning `kpar` easier.
#' If `kpar` is provided then these new parameters are ignored. If none are
#' provided then the default "automatic" is used for `kpar`.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifLSSVM = R6Class("LearnerClassifLSSVM",
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
            "laplacedot", "besseldot", "anovadot", "splinedot", "stringdot"),
          tags = "train"),
        sigma = p_dbl(tag = c("train", "kpar")),
        degree = p_dbl(tag = c("train", "kpar")),
        scale = p_dbl(tag = c("train", "kpar")),
        offset = p_dbl(tag = c("train", "kpar")),
        order = p_dbl(tag = c("train", "kpar")),
        length = p_int(lower = 0, tag = c("train", "kpar")),
        lambda = p_dbl(tag = c("train", "kpar")),
        normalized = p_lgl(tag = c("train", "kpar")),
        kpar = p_uty(default = "automatic", tag = "train"),
        tau = p_dbl(default = 0.01, tag = "train"),
        reduced = p_lgl(default = TRUE, tag = "train"),
        rank = p_int(tag = "train"),
        delta = p_int(default = 40, tag = "train"),
        tol = p_dbl(default = 0.0001, tag = "train"),
        fit = p_lgl(default = TRUE, tag = "train"),
        cross = p_int(lower = 0, default = 0, tag = "train"),
        na.action = p_uty(default = na.omit, tag = "train")
      )

      super$initialize(
        id = "classif.lssvm",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c("numeric", "integer"),
        predict_types = "response",
        properties = c("twoclass", "multiclass"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_classif.lssvm"
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

      mlr3misc::invoke(kernlab::lssvm,
                       x = task$formula(),
                       data = task$data(),
                       kpar = kpar,
                       .args = pars)
    },

    .predict = function(task) {
      out = setNames(vector("list", 1L), self$predict_type)
      out[[1]] = mlr3misc::invoke(
        getMethod("predict", "lssvm"),
        self$model,
        task$data(cols = self$state$feature_names),
        type = self$predict_type
      )
      out
    }
  )
)

.extralrns_dict$add("classif.lssvm", LearnerClassifLSSVM)
