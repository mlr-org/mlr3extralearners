#' @title Deep Neural Network with DBN Pretraining Learner
#' @author awinterstetter
#' @name mlr_learners_classif.dbnDNN
#'
#' @description
#' Deep neural network with weights initialized by a deep belief network.
#' Calls [deepnet::dbn.dnn.train()] from \CRANpkg{deepnet}.
#' 
#' This learner works with tasks that have at least two features.
#'
#' @section Initial parameter values:
#' - `output` is set to `"softmax"` to enable class probabilities.
#'
#' @templateVar id classif.dbnDNN
#' @template learner
#'
#' @references
#' `r format_bib("rong2014deepnet")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifDbnDNN = R6Class("LearnerClassifDbnDNN",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        hidden = p_uty(init = 10L, tags = "train", custom_check = function(x) {
          check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)
        }),
        activationfun = p_fct(levels = c("sigm", "linear", "tanh"), init = "sigm", tags = "train"),
        learningrate = p_dbl(init = 0.8, lower = 0, tags = "train"),
        momentum = p_dbl(init = 0.5, lower = 0, tags = "train"),
        learningrate_scale = p_dbl(init = 1, lower = 0, tags = "train"),
        numepochs = p_int(init = 3L, lower = 1L, tags = "train"),
        batchsize = p_int(init = 100L, lower = 1L, tags = "train"),
        output = p_fct(levels = c("sigm", "linear", "softmax"), init = "softmax", tags = "train"),
        hidden_dropout = p_dbl(init = 0, lower = 0, upper = 1, tags = "train"),
        visible_dropout = p_dbl(init = 0, lower = 0, upper = 1, tags = "train"),
        cd = p_int(init = 1L, lower = 1L, tags = "train")
      )

      super$initialize(
        id = "classif.dbnDNN",
        packages = "deepnet",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.dbnDNN",
        label = "Deep Belief Network DNN"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      x = data.matrix(task$data(cols = task$feature_names))
      y = as.numeric(task$truth())
      dict = sort(unique(y))
      onehot = matrix(0, length(y), length(dict))

      for (i in seq_along(dict)) {
        ind = which(y == dict[i])
        onehot[ind, i] = 1
      }

      invoke(
        deepnet::dbn.dnn.train,
        x = x,
        y = onehot,
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = data.matrix(ordered_features(task, self))

      pred = invoke(
        deepnet::nn.predict,
        self$model,
        newdata
      )

      pred = as.matrix(pred)
      colnames(pred) = task$class_names

      if (self$predict_type == "response") {
        response = factor(
          task$class_names[max.col(pred, ties.method = "first")],
          levels = task$class_names
        )
        return(list(response = response))
      }

      list(prob = pred)
    }
  )
)

.extralrns_dict$add("classif.dbnDNN", LearnerClassifDbnDNN)
