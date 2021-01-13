#' @title Classification Kernlab Support Vector Machine
#' @author mboecker
#' @name mlr_learners_classif.ksvm
#'
#' @template class_learner
#' @templateVar id classif.ksvm
#' @templateVar caller ksvm
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifKSVM = R6Class("LearnerClassifKSVM",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(list(
        ParamLgl$new(id = "scaled", default = TRUE, tags = c("train")),
        ParamFct$new(
          id = "type", default = "C-svc",
          levels = c("C-svc", "nu-svc", "C-bsvc", "spoc-svc", "kbb-svc"),
          tags = c("train")),
        ParamFct$new(
          id = "kernel", default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot",
            "laplacedot", "besseldot", "anovadot"),
          tags = c("train")),
        ParamDbl$new(id = "C", default = 1, tags = c("train")),
        ParamDbl$new(id = "nu", default = 0.2, lower = 0, tags = c("train")),
        ParamInt$new(id = "cache", default = 40, lower = 1L, tags = c("train")),
        ParamDbl$new(id = "tol", default = 0.001, lower = 0, tags = c("train")),
        ParamLgl$new(id = "shrinking", default = TRUE, tags = c("train")),
        ParamDbl$new(id = "sigma", default = NO_DEF, lower = 0, tags = "train"),
        ParamInt$new(
          id = "degree", default = NO_DEF, lower = 1L,
          tags = "train"),
        ParamDbl$new(id = "scale", default = NO_DEF, lower = 0, tags = "train"),
        ParamInt$new(id = "order", default = NO_DEF, tags = "train"),
        ParamDbl$new(id = "offset", default = NO_DEF, tags = "train")
      ))

      ps$add_dep(
        "C", "type",
        CondAnyOf$new(c("C-svc", "C-bsvc", "spoc-svc", "kbb-svc")))
      ps$add_dep("nu", "type", CondAnyOf$new(c("nu-svc")))
      ps$add_dep(
        "sigma", "kernel",
        CondAnyOf$new(c("rbfdot", "laplacedot", "besseldot", "anovadot")))
      ps$add_dep(
        "degree", "kernel",
        CondAnyOf$new(c("polydot", "besseldot", "anovadot")))
      ps$add_dep("scale", "kernel", CondAnyOf$new(c("polydot")))
      ps$add_dep("order", "kernel", CondAnyOf$new(c("besseldot")))
      ps$add_dep("offset", "kernel", CondAnyOf$new(c("polydot")))

      super$initialize(
        id = "classif.ksvm",
        packages = "kernlab",
        feature_types = c(
          "logical", "integer", "numeric",
          "character", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.ksvm"
      )
    }),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      kpar = intersect(
        c("sigma", "degree", "scale", "order", "offset"),
        names(pars))

      if ("weights" %in% task$properties) {
        pars$class.weights = task$weights$weight
      }

      if (length(kpar) > 0) {
        pars$kpar = pars[kpar]
        pars[kpar] = NULL
      }

      f = task$formula()
      data = task$data()

      invoke(kernlab::ksvm,
        x = f, data = data,
        prob.model = self$predict_type == "prob", .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      predict_type = ifelse(self$predict_type == "prob",
        "probabilities", "response")
      p = invoke(kernlab::predict, self$model,
        newdata = newdata,
        type = predict_type)

      if (self$predict_type == "response") {
        list(response = p)
      } else {
        list(prob = p)
      }
    }
  )
)

.extralrns_dict$add("classif.ksvm", LearnerClassifKSVM)
