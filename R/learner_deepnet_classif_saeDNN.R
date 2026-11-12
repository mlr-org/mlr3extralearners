#' @title Classification Stacked Autoencoder Deep Neural Network Learner
#' @author awinterstetter
#' @name mlr_learners_classif.saeDNN
#'
#' @description
#' Calls [deepnet::sae.dnn.train()] from \CRANpkg{deepnet}.
#'
#' @section Initial parameter values:
#' - `output` is set to `"softmax"` for probabilistic classification.
#'
#' @templateVar id classif.saeDNN
#' @template learner
#'
#' @references
#' `r format_bib("rong2022deepnet")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSaeDNN = R6Class("LearnerClassifSaeDNN",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        hidden = p_uty(default = 10L, tags = "train", custom_check = mlr3misc::crate({function(x) {check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)}})),
        activationfun = p_fct(levels = c("sigm", "linear", "tanh"), default = "sigm", tags = "train"),
        learningrate = p_dbl(default = 0.8, lower = 0, tags = "train"),
        momentum = p_dbl(default = 0.5, lower = 0, tags = "train"),
        learningrate_scale = p_dbl(default = 1, lower = 0, tags = "train"),
        numepochs = p_int(default = 3L, lower = 1L, tags = "train"),
        batchsize = p_int(default = 100L, lower = 1L, tags = "train"),
        output = p_fct(levels = c("sigm", "linear", "softmax"), init = "softmax", tags = "train"),
        sae_output = p_fct(levels = c("sigm", "linear", "softmax"), default = "linear", tags = "train"),
        hidden_dropout = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
        visible_dropout = p_dbl(default = 0, lower = 0, upper = 1, tags = "train")
      )

      super$initialize(
        id = "classif.saeDNN",
        packages = "deepnet",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.saeDNN",
        label = "Deep neural network with weights initialized by Stacked AutoEncoder"
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
        deepnet::sae.dnn.train,
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
        
      class_names = task$class_names

      prob = as.matrix(pred)
      colnames(prob) = class_names

      if (self$predict_type == "response") {
        response = factor(class_names[max.col(prob, ties.method = "first")], levels = class_names)
        return(list(response = response))
      }

      list(prob = prob)
    }
  )
)

.extralrns_dict$add("classif.saeDNN", LearnerClassifSaeDNN)
