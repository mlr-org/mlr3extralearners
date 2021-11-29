#' @title Classification Adaptive Best-subset Selection Learner
#' @author @abess-team
#' @name mlr_learners_classif.abess
#'
#' @template class_learner
#' @templateVar id classif.abess
#' @templateVar caller abess
#'
#' @template seealso_learner
#' @template example
#' @export

LearnerClassifAbess = R6Class("LearnerClassifAbess",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        family = p_fct(
          levels = c("binomial", "multinomial"),
          default = "binomial", tags = "train"),

        tune.path = p_fct(
          levels = c("sequence", "gsection"),
          default = "sequence", tags = "train"),
        tune.type = p_fct(
          levels = c("gic", "ebic", "bic", "aic", "cv"),
          default = "gic", tags = "train"),
        weight = p_uty(default = NULL, tags = "train"),
        normalize = p_int(lower = 0L, upper = 3L, default = 2L, tags = "train"),
        c.max = p_int(lower = 1L, upper = Inf, default = 2L, tags = "train"),
        support.size = p_uty(tags = c("train", "predict")),
        lambda = p_dbl(lower = 0, upper = Inf, default = 0, tags = "train"),
        always.include = p_uty(default = NULL, tags = "train"),
        group.index = p_uty(default = NULL, tags = "train"),
        splicing.type = p_int(lower = 1L, upper = 2L, default = 2, tags = "train"),
        max.splicing.iter = p_int(
          lower = 1L, upper = Inf,
          default = 20L, tags = "train"),
        screening.num = p_int(default = 2, tags = "train"),
        important.search = p_int(default = 128, tags = "train"),
        warm.start = p_lgl(default = TRUE, tags = "train"),
        nfolds = p_int(lower = 1L, upper = Inf, default = 5L, tags = "train"),
        newton = p_fct(levels = c("exact", "approx"), tags = "train"),
        newton.thresh = p_dbl(default = 1e-6, tags = "train"),
        max.newton.iter = p_int(
          lower = 1L, upper = Inf,
          default = 60, tags = "train"),
        early.stop = p_lgl(default = FALSE, tags = "train"),
        num.threads = p_int(lower = 0L, upper = Inf, default = 0L, tags = "train"),
        seed = p_int(lower = 0L, default = 1L, tags = "train"),
        subset = p_uty(tags = "train", custom_check = check_string),
        na.action = p_uty(default = stats::na.omit, tags = "train")
      )
      ps$add_dep(id = "support.size", on = "tune.path", CondEqual$new("sequence"))
      ps$add_dep(id = "num.threads", on = "tune.type", CondEqual$new("cv"))
      ps$values$newton = "approx"

      super$initialize(
        id = "classif.abess",
        packages = "abess",
        feature_types = c("logical", "integer", "numeric", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("missings", "multiclass", "selected_features", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.abess"
      )
    },

    #' @description
    #' Selected features are extracted from the model slot `screening.vars`.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model$screening.vars) & !is.null(self$model)) {
        mlr3misc::stopf("No features were selected.")
      }

      self$model$screening.vars
    }
  ),


  private = list(
    .train = function(task) {

      if (task$properties == "multiclass") {
        self$param_set$values$family = "multinomial"
      } else {
        self$param_set$values$family = "binomial"
      }

      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(abess::abess,
        formula = task$formula(),
        data = task$data(),
        .args = pars)
    },

    .predict = function(task) {

      response = NULL
      prob = NULL
      # get parameters with tag "predict"
      .args = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)
      
      if (self$predict_type == "response") {
        pred = mlr3misc::invoke(predict, self$model,
          newx = newdata,
          type = "response")
        label = apply(pred[[1]], 1, which.max)
        response = task$class_names[label]
      } else {
        prob = mlr3misc::invoke(predict, self$model,
          newx = newdata,
          type = "response")
      }

      list(response = response, prob = prob[[1]])
    }
  )
)

.extralrns_dict$add("classif.abess", LearnerClassifAbess)

