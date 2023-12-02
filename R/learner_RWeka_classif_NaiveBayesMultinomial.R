#' @title Classification Multinomial Naive Bayes Classifier
#' @author damirpolat
#' @name mlr_learners_classif.NaiveBayesMultinomial
#'
#' @description
#' Multinomial Naive Bayes classifier
#' Calls [RWeka::make_Weka_classifier()]{RWeka::make_Weka_classifier('weka/classifiers/bayes/NaiveBayesMultinomial')} from \CRANpkg{RWeka}.
#'
#' @section Custom mlr3 parameters:
#' - `output_debug_info`:
#'   - original id: output-debug-info
#'
#' - `do_not_check_capabilities`:
#'   - original id: do-not-check-capabilities
#'
#' - `num_decimal_places`:
#'   - original id: num-decimal-places
#'
#' - `batch_size`:
#'   - original id: batch-size
#'   
#'
#' @templateVar id classif.NaiveBayesMultinomial
#' @template learner
#'
#' @references
#' `r format_bib(Mccallum1998)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifNaiveBayesMultinomial = R6Class("LearnerClassifNaiveBayesMultinomial",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )
      
      super$initialize(
        id = "classif.NaiveBayesMultinomial",
        packages = "RWeka",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.NaiveBayesMultinomial",
        label = "Multinomial Naive Bayes Classifier"
      )
    }
  ),
  
  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier('weka/classifiers/bayes/NaiveBayesMultinomial')
      
      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(weka_learner)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      pars = pars[which(names(pars) %nin% ctrl_arg_names)]
      
      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }
      
      formula = task$formula()
      data = task$data()
      invoke(weka_learner, formula = formula, data = data, control = ctrl)
    },
    
    .predict = function(task) {
      response = NULL
      prob = NULL
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      
      if (self$predict_type == "response") {
        response = invoke(predict, self$model, newdata = newdata, type = "class",
                          .args = pars
        )
      } else {
        prob = invoke(predict, self$model, newdata = newdata, type = "prob",
                      .args = pars
        )
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.NaiveBayesMultinomial", LearnerClassifNaiveBayesMultinomial)
