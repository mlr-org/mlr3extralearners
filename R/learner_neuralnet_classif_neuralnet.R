#' @title Classification Neural Network Learner
#' @name mlr_learners_classif.neuralnet
#'
#' @description
#' Calls [neuralnet::neuralnet()] from \CRANpkg{neuralnet}.
#'
#' @section Initial parameter values:
#' - `err.fct` is set to `"ce"`.
#' - `linear.output` is set to `FALSE` to perform classification.
#' - `act.fct` is set to `"logistic"` for classification.
#'
#' @templateVar id classif.neuralnet
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifNeuralnet = R6Class("LearnerClassifNeuralnet",
  inherit = LearnerClassif,
  public = list(
   #' @description
   #' Creates a new instance of this [R6][R6::R6Class] class.
   initialize = function() {
     param_set = ps(
       act.fct             = p_uty(default = "logistic", tags = "train"),
       algorithm           = p_fct(levels = c("backprop", "rprop+", "rprop-", "sag", "slr"), default = "rprop+", tags = "train"),
       constant.weights    = p_uty(tags = "train"),
       err.fct             = p_fct(levels = c("sse", "ce"), default = "ce", tags = "train"),
       exclude             = p_uty(tags = "train"),
       hidden              = p_uty(default = 1L, tags = "train"),
       learningrate        = p_dbl(tags = "train"),
       learningrate.factor = p_uty(default = list(minus = 0.5, plus = 1.2), tags = "train"),
       learningrate.limit  = p_uty(tags = "train"),
       lifesign            = p_fct(levels = c("none", "minimal", "full"), default = "none", tags = "train"),
       lifesign.step       = p_int(default = 1000L, tags = "train"),
       likelihood          = p_lgl(default = FALSE, tags = "train"),
       linear.output       = p_lgl(default = FALSE, tags = "train"),
       rep                 = p_int(lower = 1L, default = 1L, tags = c("train", "predict")),
       startweights        = p_uty(tags = "train"),
       stepmax             = p_dbl(default = 1e+05, tags = "train"),
       threshold           = p_dbl(default = 0.01, tags = "train")
     )

     param_set$values = list(
       act.fct = "logistic", linear.output = FALSE, err.fct = "ce"
     )

     super$initialize(
       id = "classif.neuralnet",
       packages = "neuralnet",
       feature_types = c("numeric", "integer"),
       predict_types = c("response", "prob"),
       param_set = param_set,
       properties = "twoclass",  # c("twoclass", "multiclass") generally possible but produces weird output
       man = "mlr3extralearners::mlr_learners_classif.neuralnet",
       label = "Neural Network from neuralnet"
     )
   }
 ),
 private = list(
  .train = function(task) {
    pars = self$param_set$get_values(tags = "train")

    target = task$target_names
    class_names = task$class_names
    data = task$data()
    formula = task$formula()

    # multiclass
    if (length(class_names) > 2L) {
      lhs = paste0("(", eval(target), "== \"", class_names, "\")", collapse = " + ")
      formula_str = paste(lhs, "~ .")
      formula = as.formula(formula_str)
    } else {
    # binary
      # Generally, we do not have to one-hot-encode the target, because neuralnet has an internal
      # mechanism for this. But, switched sanity check in autotest revealed, that the encoding might
      # be off...
      if (is.factor(data[[target]])) {
        data[[target]] = as.numeric(data[[target]]) - 1
      }
      # formula does not have to change
    }

    invoke(
      neuralnet::neuralnet,
      formula = formula,
      data = data,
      .args = pars
    )
  },
  .predict = function(task) {
    newdata = ordered_features(task, self)

    pred_mat = invoke(predict, self$model, newdata = newdata)
    class_names = task$class_names

    # multiclass
    if (is.matrix(pred_mat) && ncol(pred_mat) > 1L) {
      prob = as.matrix(pred_mat)
      rs = rowSums(prob)
      rs[rs == 0] = 1
      prob = prob / rs
      colnames(prob) = class_names
      if (self$predict_type == "response") {
        response = factor(class_names[max.col(prob, ties.method = "first")], levels = class_names)
        return(list(response = response))
      }
      return(list(prob = prob))
    }

    # binary
    if (is.matrix(pred_mat) && ncol(pred_mat) == 1L) {
      p = as.numeric(pred_mat[, 1L])
    } else if (is.vector(pred_mat)) {
      p = as.numeric(pred_mat)
    } else {
      p = as.numeric(pred_mat[, ncol(pred_mat)])
    }
    prob = cbind(1 - p, p)
    colnames(prob) = class_names

    if (self$predict_type == "response") {
      response = factor(class_names[max.col(prob, ties.method = "first")], levels = class_names)
      return(list(response = response))
    }
    list(prob = prob)
  }
 )
)

.extralrns_dict$add("classif.neuralnet", LearnerClassifNeuralnet)
