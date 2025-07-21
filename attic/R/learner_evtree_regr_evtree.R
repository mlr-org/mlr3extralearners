#' @title Regression Decision Tree Learner
#' @author annanzrv
#' @name mlr_learners_regr.evtree
#'
#' @description
#' Evolutionary learning of globally optimal regression trees.
#' Calls [evtree::evtree()] from\CRANpkg{evtree}.
#'
#' @section Initial parameter values:
#' `pmutatemajor`, `pmutateminor`, `pcrossover`, `psplit`, and `pprune`,
#'  are scaled internally to sum to 100.
#'
#' @templateVar id classif.evtree
#'
#' @template seealso_learner
#' @export
LearnerRegrEvtree = R6Class("LearnerRegrEvtree",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        alpha        = p_dbl(lower = 0, default = 1, tags = "train"),
        maxdepth     = p_int(lower = 1L, default = 9L, tags = "train"),
        minbucket    = p_int(lower = 1L, default = 7L, tags = "train"),
        minsplit     = p_int(lower = 1L, default = 20L, tags = "train"),
        niterations  = p_int(lower = 1L, default = 10000L, tags = "train"),
        ntrees       = p_int(lower = 2L, default = 100L, tags = "train"),
        pcrossover   = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        pmutatemajor = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        pmutateminor = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        pprune       = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        psplit       = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        seed         = p_int(lower = -1L, tags = "train")
      )

      super$initialize(
        id = "regr.evtree",
        packages = "evtree",
        # feature type "ordered" supported in mlr2 but throws evtree errors in autotest?
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response"),
        param_set = param_set,
        properties = c("weights"),
        man = "mlr3extralearners::mlr_learners_regr.evtree",
        label = "Evolutionary learning of globally optimal trees"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      if (is.integer(private$.get_weights(task))) {
        pars$weights = private$.get_weights(task)
      }

      formula = task$formula()
      data = task$data()

      args_ctrl = formalArgs(evtree::evtree.control)
      args_operatorprob = c("pcrossover", "pmutatemajor", "pmutateminor",
                            "pprune", "psplit")
      pv_operatorprob = pars[names(pars) %in% args_operatorprob]
      pv_ctrl = pars[names(pars) %in% args_ctrl]
      pv_train = pars[names(pars) %nin% args_ctrl]

      ctrl = suppressWarnings(
        invoke(evtree::evtree.control, operatorprob = pv_operatorprob, .args = pv_ctrl)
      )

      invoke(
        evtree::evtree,
        formula = formula,
        data = data,
        contol = ctrl,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model, newdata = newdata, .args = pars)

      list(response = unname(pred))
    }
  )
)

.extralrns_dict$add("regr.evtree", LearnerRegrEvtree)
