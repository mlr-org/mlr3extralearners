#' @title Classification Multilayer Perceptron Learner
#' @author awinterstetter
#' @name mlr_learners_classif.mlp
#'
#' @description
#' Calls [RSNNS::mlp()] from \CRANpkg{RSNNS}.
#'
#' @templateVar id classif.mlp
#' @template learner
#'
#' @references
#' `r format_bib("bergmeir2023rsnns")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifMLP = R6Class("LearnerClassifMLP",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        size = p_uty(default = 5L, tags = "train",
          custom_check = mlr3misc::crate({function(x) {
            check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)
          }})),
        maxit = p_int(default = 100L, lower = 1L, tags = "train"),
        initFunc = p_uty(default = "Randomize_Weights", tags = "train"),
        initFuncParams = p_uty(tags = "train"),
        learnFunc = p_uty(default = "Std_Backpropagation", tags = "train"),
        learnFuncParams = p_uty(tags = "train"),
        updateFunc = p_uty(default = "Topological_Order", tags = "train"),
        updateFuncParams = p_uty(tags = "train"),
        hiddenActFunc = p_uty(default = "Act_Logistic", tags = "train"),
        shufflePatterns = p_lgl(default = TRUE, tags = "train"),
        linOut = p_lgl(default = FALSE, tags = "train"),
        inputsTest = p_uty(tags = "train"),
        targetsTest = p_uty(tags = "train"),
        pruneFunc = p_uty(tags = "train"),
        pruneFuncParams = p_uty(tags = "train")
      )

      super$initialize(
        id = "classif.mlp",
        packages = "RSNNS",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.mlp",
        label = "Multi-Layer Perceptron"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      x = data.matrix(task$data(cols = task$feature_names))
      y = RSNNS::decodeClassLabels(task$truth())

      invoke(RSNNS::mlp, x = x, y = y, .args = pars)
    },
    .predict = function(task) {
      newdata = data.matrix(ordered_features(task, self))
      pred = invoke(predict, self$model, newdata = newdata)
      class_names = task$class_names

      prob = as.matrix(pred)
      if (ncol(prob) == 1L && length(class_names) == 2L) {
        prob = cbind(1 - prob[, 1L], prob[, 1L])
      } else {
        rs = rowSums(prob)
        rs[rs == 0] = 1
        prob = prob / rs
      }
      colnames(prob) = class_names

      if (self$predict_type == "response") {
        response = factor(class_names[max.col(prob, ties.method = "first")], levels = class_names)
        return(list(response = response))
      }

      list(prob = prob)
    }
  )
)

.extralrns_dict$add("classif.mlp", LearnerClassifMLP)
