#' @title Classification Decision Tree Learner
#' @author annanzrv
#' @name mlr_learners_classif.evtree
#'
#' @description
#' Evolutionary learning of globally optimal classification trees.
#' Calls [evtree::evtree()] from\CRANpkg{evtree}.
#'
#' @section Initial parameter values:
#' `pmutatemajor`, `pmutateminor`, `pcrossover`, `psplit`, and `pprune`,
#'  are scaled internally to sum to 100.
#'
#' @templateVar id classif.evtree
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("classif.evtree")
#' task = tsk("iris")
#' learner = lrn("classif.evtree", ntrees = 50)
#' splits = partition(task)
#' learner$train(task, splits$train)
#' pred = learner$predict(task, splits$test)
#' @export
LearnerClassifEvtree = R6Class("LearnerClassifEvtree",
  inherit = LearnerClassif,
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
        id = "classif.evtree",
        packages = "evtree",
        # feature type "ordered" supported in mlr2 but throws evtree errors in autotest?
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.evtree",
        label = "Evolutionary learning of globally optimal trees"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # if ("weights" %in% task$properties) {
      #   # weights must be integers (not recognized in mlr2)
      #   if (is.integer(task$weights$weight)) pars$weights = task$weights$weight
      # }
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
        .args = pv_train
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = unname(pred))
      } else {
        list(prob = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.evtree", LearnerClassifEvtree)
