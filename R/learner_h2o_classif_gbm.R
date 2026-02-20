#' @title Classification H2O GBM Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.gbm
#'
#' @description
#' Gradient boosting machine learner.
#' Class [h2o::h2o.gbm()] from package \CRANpkg{h2o}.
#'
#' @templateVar id classif.h2o.gbm
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifH2OGBM = R6Class("LearnerClassifH2OGBM", inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ntrees = p_int(default = 50L, lower = 1L, tags = "train"),
        max_depth = p_int(default = 5L, lower = 1L, tags = "train"),
        min_rows = p_dbl(default = 10, lower = 1, tags = "train"),
        learn_rate = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train"),
        nbins = p_int(default = 20L, lower = 1L, tags = "train"),
        nbins_cats = p_int(default = 1024L, lower = 1L, tags = "train"),
        balance_classes = p_lgl(default = FALSE, tags = "train"),
        max_after_balance_size = p_dbl(default = 1, lower = 0, tags = "train"),
        seed = p_int(tags = "train"),
        quiet = p_lgl(init = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "classif.h2o.gbm",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "twoclass", "multiclass", "missings", "importance"),
        man = "mlr3extralearners::mlr_learners_classif.h2o.gbm",
        label = "H2O GBM"
      )
    },

    #' @description
    #' Variable importance scores computed by H2O.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = h2o::h2o.varimp(self$model)
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

      pars$distribution = if (length(task$class_names) == 2L) "bernoulli" else "multinomial"
      training_frame = h2o::as.h2o(data)

      train_fun = function() {
        invoke(h2o::h2o.gbm,
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

      response = factor(as.vector(pred$predict), levels = task$class_names)

      if (self$predict_type == "response") {
        return(list(response = response))
      }

      prob = as.matrix(pred[, -1L])
      prob_names = names(pred)[-1L]

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

.extralrns_dict$add("classif.h2o.gbm", LearnerClassifH2OGBM)
