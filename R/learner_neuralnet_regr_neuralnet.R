#' @title Regression Multilayer Neural Net Via Neuralnet Learner
#' @author FBerding
#' @name mlr_learners_regr.neuralnet
#'
#' @template class_learner
#' @templateVar id regr.neuralnet
#' @templateVar caller neuralnet
#'
#' @references
#' Fritsch, S., Guenther, F., Wright, M. N., Suling, M., Mueller, S. M. (2019)
#' Package ‘neuralnet’. URL: https://cran.r-project.org/web/packages/neuralnet/
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrNeuralnet = R6Class("LearnerRegrNeuralnet",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(params = list(
        ParamInt$new(id = "layernumber", default = 1L, lower = 1L, upper = 25L, tags = c("train", "Layer", "required")),

        ParamDbl$new(id = "threshold", default = 0.01, lower = 0, upper = 1, tags = c("train", "not_auxiliary")),
        ParamDbl$new(id = "stepmax", default = 1e+05, lower = 1, tags = c("train", "not_auxiliary")),
        ParamInt$new(id = "rep", default = 1L, lower = 1L, tags = c("train", "not_auxiliary", "predict")),
        ParamUty$new(id = "startweights", default = NULL, tags = c("train", "not_auxiliary")),
        ParamUty$new(id = "learningrate.limit", default = NULL, tags = c("train", "not_auxiliary")),
        ParamUty$new(id = "learningrate.factor", default = list(minus = 0.5, plus = 1.2), tags = c("train", "not_auxiliary")),
        ParamDbl$new(id = "learningrate", default = 0, lower = 0, tags = c("train", "not_auxiliary")),
        ParamFct$new(id = "lifesign", default = "none", levels = c("none", "minimal", "full"), tags = c("train", "not_auxiliary")),
        ParamInt$new(id = "lifesign.step", default = 1000L, lower = 1L, tags = c("train")),
        ParamFct$new(id = "algorithm", default = "rprop+", levels = c("backprop", "rprop+", "rprop-", "sag", "slr"), tags = c("train", "not_auxiliary")),
        ParamFct$new(id = "err.fct", default = "sse", levels = c("sse", "ce"), tags = c("train", "not_auxiliary")),
        ParamFct$new(id = "act.fct", default = "logistic", levels = c("logistic", "tanh"), tags = c("train", "not_auxiliary")),
        # ParamLgl$new(id = "linear.output", default = FALSE, tags = c("train", "not_auxiliary")),
        ParamUty$new(id = "exclude", default = NULL, tags = c("train", "not_auxiliary")),
        ParamUty$new(id = "constant.weights", default = NULL, tags = c("train", "not_auxiliary")),
        ParamLgl$new(id = "likelihood", default = FALSE, tags = c("train", "not_auxiliary"))
      ))

      ps$add_dep("learningrate", "algorithm", CondEqual$new("backprop"))
      ps$add_dep("learningrate.limit", "algorithm", CondAnyOf$new(c("rprop+", "rprop-", "sag", "slr")))
      ps$add_dep("learningrate.factor", "algorithm", CondAnyOf$new(c("rprop+", "rprop-", "sag", "slr")))

      for (i in 1:ps$upper["layernumber"]) {
        number = i
        if (i <= 9) {
          number = paste("0", i, sep = "")
        }
        id_string = paste("layer", number, "size", sep = "")
        ps$add(ParamInt$new(id = id_string, lower = 1L, default = 3L, tags = c("train", "layersizes")))
        ps$add_dep(id_string, "layernumber", CondAnyOf$new(c(i:ps$upper["layernumber"])))
      }

      super$initialize(
        id = "regr.neuralnet",
        packages = "neuralnet",
        feature_types = c("integer", "numeric"),
        predict_types = c("response"),
        param_set = ps,
        man = NA
      )
    }


  ),

  private = list(
    .train = function(task) {
      # get parameters for training

      pars_train = self$param_set$get_values(tags = "not_auxiliary")

      pars_aux = self$param_set$get_values(tags = "layersizes")

      Layer_n = self$param_set$get_values()$layernumber


      hidden = NULL

      for (i in 1:Layer_n) {
        number = i
        if (i <= 9) {
          number = paste("0", i, sep = "")
        }

        id_string = id_string = paste("layer", number, "size", sep = "")

        if (is.null(pars_aux[[id_string]][1]) == TRUE) {
          hidden = cbind(hidden, as.integer(self$param_set$default[[id_string]][1]))
        }
        else {
          hidden = cbind(hidden, pars_aux[[id_string]][1])
        }
      }

      hidden = as.vector(hidden)

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # FIXME - <Create objects for the train call>
      # <At least "data" and "formula" are required>
      formula = task$formula()
      data = task$data()

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(neuralnet::neuralnet,
        formula = formula,
        data = data,
        .args = pars_train,
        hidden = hidden,
        linear.output = TRUE)
    },

    .predict = function(task) {
      # get parameters with tag "predict"

      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        type = type, .args = pars)

      response = mlr3misc::invoke(predict,
        self$model,
        newdata = newdata,
        .args = pars)
      colnames(response) = task$target_names
      return(list(response = response))
    }
  )
)

.extralrns_dict$add("regr.neuralnet", LearnerRegrNeuralnet)
