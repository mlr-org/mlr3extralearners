#' @title Classification H2O GLM Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.glm
#'
#' @description
#' Generalized linear classification model.
#' Calls [h2o::h2o.glm()] from package \CRANpkg{h2o} with `family`
#' always set to `"binomial"`.
#'
#' @section Initial parameter values:
#' - `family`
#'   - Fixed to `"binomial"` by this learner wrapper.
#' - `missing_values_handling`
#'   - Not exposed; H2O default `"MeanImputation"` is used.
#'
#' @templateVar id classif.h2o.glm
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifH2OGLM = R6Class("LearnerClassifH2OGLM", inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        max_iterations = p_int(lower = 0L, default = 50L, tags = "train"),
        beta_epsilon = p_dbl(lower = 0, default = 0, tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        solver = p_fct(levels = c("IRLSM", "L_BFGS"), default = "IRLSM", tags = "train"),
        link = p_fct(levels = c("logit", "log"), default = "logit", tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        prior = p_dbl(lower = 0, tags = "train"),
        lambda = p_dbl(lower = 0, default = 1e-5, tags = "train"),
        lambda_search = p_lgl(default = FALSE, tags = "train"),
        nlambdas = p_int(lower = 1L, depends = quote(lambda_search == TRUE), tags = "train"),
        lambda_min_ratio = p_dbl(lower = 0, upper = 1, depends = quote(lambda_search == TRUE), tags = "train"),
        beta_constraints = p_uty(tags = "train"),
        intercept = p_lgl(default = TRUE, tags = "train"),
        quiet = p_lgl(init = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "classif.h2o.glm",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "twoclass", "missings", "importance"),
        man = "mlr3extralearners::mlr_learners_classif.h2o.glm",
        label = "H2O GLM"
      )
    },

    #' @description
    #' Variable importance scores computed by H2O.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = stats::na.omit(as.data.frame(h2o::h2o.varimp(self$model)))
      if (is.null(imp) || !nrow(imp)) {
        stop("No importance available from H2O.")
      }

      scores = imp$relative_importance
      names(scores) = imp$variable
      sort(scores, decreasing = TRUE)
    }
  ),

  private = list(

    .train = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      pars = self$param_set$get_values(tags = "train")
      target = task$target_names
      features = task$feature_names
      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      quiet = pars$quiet
      pars$quiet = NULL

      pars$family = "binomial"
      training_frame = h2o::as.h2o(data)

      train_fun = function() {
        invoke(h2o::h2o.glm,
          y = target,
          x = features,
          training_frame = training_frame,
          .args = pars
        )
      }

      if (quiet == TRUE) {
        utils::capture.output({
          model = train_fun()
        })
      } else {
        model = train_fun()
      }

      model
    },

    .predict = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      newdata = h2o::as.h2o(ordered_features(task, self))

      pars = self$param_set$get_values(tags = "predict")
      quiet = pars$quiet

      pred_fun = function() {
        h2o::h2o.predict(self$model, newdata = newdata)
      }

      if (quiet == TRUE) {
        utils::capture.output({
          pred = pred_fun()
        })
      } else {
        pred = pred_fun()
      }

      pred_df = as.data.frame(pred)
      response = factor(as.character(pred_df$predict), levels = task$class_names)

      if (self$predict_type == "response") {
        return(list(response = response))
      }

      prob = as.matrix(pred_df[, -1L, drop = FALSE])
      prob_names = names(pred_df)[-1L]

      if (all(grepl("^p[[:digit:]]+$", prob_names))) {
        stripped = sub("^p", "", prob_names)
        if (all(task$class_names %in% stripped)) {
          prob_names = stripped
        }
      }

      colnames(prob) = prob_names
      prob = prob[, task$class_names, drop = FALSE]

      list(prob = prob, response = response)
    }
  )
)

.extralrns_dict$add("classif.h2o.glm", LearnerClassifH2OGLM)
