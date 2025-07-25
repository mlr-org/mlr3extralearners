#' @title Classification Least Squares Support Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_classif.lssvm
#'
#' @description
#' Least squares support vector machine for classification.
#' Calls [kernlab::lssvm()] from \CRANpkg{kernlab}.
#' Parameters `sigma`, `degree`, `scale`, `offset`, `order`, `length`,
#' `lambda`, and `normalized` are added to make tuning `kpar` easier.
#' If `kpar` is provided then these new parameters are ignored. If none are
#' provided then the default "automatic" is used for `kpar`.
#'
#' @template learner
#' @templateVar id classif.lssvm
#'
#' @references
#' `r format_bib("karatzoglou2004kernlab")`
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
        scaled = p_uty(default = TRUE, tags = "train"),
        kernel = p_fct(default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot", "tanhdot",
            "laplacedot", "besseldot", "anovadot", "splinedot", "stringdot"),
          tags = "train"),
        sigma = p_dbl(tags = "train"),
        degree = p_dbl(tags = "train"),
        scale = p_dbl(tags = "train"),
        offset = p_dbl(tags = "train"),
        order = p_dbl(tags = "train"),
        length = p_int(lower = 0, tags = "train"),
        lambda = p_dbl(tags = "train"),
        normalized = p_lgl(tags = "train"),
        kpar = p_uty(default = "automatic", tags = "train"),
        tau = p_dbl(default = 0.01, tags = "train"),
        reduced = p_lgl(default = TRUE, tags = "train"),
        rank = p_int(tags = "train"),
        delta = p_int(default = 40, tags = "train"),
        tol = p_dbl(default = 0.0001, tags = "train"),
        fit = p_lgl(default = TRUE, tags = "train"),
        na.action = p_uty(default = na.omit, tags = "train"),
        coupler = p_fct(default = "minpair", levels = c("minpair", "pkpd"), tags = "predict")
      )

      super$initialize(
        id = "classif.lssvm",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c("numeric", "integer"),
        predict_types = "response",
        properties = c("twoclass", "multiclass"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_classif.lssvm",
        label = "Support Vector Machine"
      )
    }
  ),

  private = list(

    .train = function(task) {
      kpars_names = c("sigma", "degree", "scale", "offset", "order", "length", "lambda", "normalized")
      pars = self$param_set$get_values(tags = "train")

      # these were added by the authors
      kpars = pars[names(pars) %in% kpars_names]
      kpar = pars$kpar

      # remove kernel parameters
      pars = pars[setdiff(names(pars), c("kpar", names(kpars)))]

      if (is.null(kpar)) {
        if (length(kpars)) {
          kpar = kpars
        } else {
          kpar = "automatic"
        }
      }

      invoke(kernlab::lssvm,
        x = task$formula(),
        data = task$data(),
        kpar = kpar,
        .args = pars)
    },

    .predict = function(task) {
      out = setNames(vector("list", 1L), self$predict_type)
      pars = self$param_set$get_values(tags = "predict")
      out[[1]] = invoke(
        getMethod("predict", "lssvm"),
        self$model,
        ordered_features(task, self),
        type = self$predict_type,
        .args = pars
      )
      out
    }
  )
)

.extralrns_dict$add("classif.lssvm", LearnerClassifLSSVM)
