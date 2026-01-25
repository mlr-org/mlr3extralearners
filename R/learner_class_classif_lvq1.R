#' @title Classification Learning Vector Quantization 1
#' @author awinterstetter
#' @name mlr_learners_classif.lvq1
#'
#' @description
#' Learning Vector Quantization 1.
#' Calls [class::lvqinit()], [class::lvq1()], and [class::lvqtest()] from \CRANpkg{class}.
#'
#' @note
#' The learner does not work on tasks with two target groups and one feature.
#' 
#' @templateVar id classif.lvq1
#' @template learner
#'
#' @references
#' `r format_bib("kohonen_1990", "kohonen_1995")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifLvq1 = R6Class("LearnerClassifLvq1",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        size = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        prior = p_uty(default = NULL, tags = "train"),
        k = p_int(default = 5L, lower = 1L, tags = "train"),
        niter = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        alpha = p_dbl(default = 0.03, lower = 0, tags = "train")
      )

      super$initialize(
        id = "classif.lvq1",
        packages = "class",
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.lvq1",
        label = "Learning Vector Quantization 1"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      d = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()

      cdbk_pars = pars[names(pars) %in% c("size", "prior", "k")]
      cdbk_args = c(list(x = d, cl = target), cdbk_pars)
      codebk = invoke(
        class::lvqinit, 
        .args = cdbk_args)

      lvq_pars = pars[names(pars) %in% c("niter", "alpha")]
      lvq_args = c(list(x = d, cl = target, codebk = codebk), lvq_pars)

      invoke(class::lvq1, .args = lvq_args)
      
    },
    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      pred = invoke(class::lvqtest,
        codebk = self$model,
        test = newdata)
      list(response = pred)
    }
  )
)

.extralrns_dict$add("classif.lvq1", LearnerClassifLvq1)
