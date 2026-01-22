#' @title Classification Gradient Boosting Learner
#' @author annanzrv
#' @name mlr_learners_classif.bst
#'
#' @description
#' Classification gradient boosting learner.
#' Calls [bst::bst()] from \CRANpkg{bst}.
#'
#' @section Initial parameter values:
#' * `Learner = "ls"`: Default base learner type
#' * `xval = 0`: No cross-validation
#' * `maxdepth = 1`: Maximum tree depth
#'
#' @note Only classification-appropriate loss functions are available for the `family` parameter.
#'
#' @templateVar id classif.bst
#' @template learner
#'
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifBst = R6Class("LearnerClassifBst",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        center        = p_lgl(default = FALSE, tags = "train"),
        coefir         = p_uty(default = NULL, tags = "train"),
        cost           = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train"),
        cp             = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        df             = p_int(default = 4L, lower = 1L, tags = "train"),
        family         = p_fct(default = "hinge", levels = c(
          "hinge", "hinge2", "binom", "thingeDC", "tbinomDC", "binomdDC", "loss", "clossR", "clossRMM", "clossMM"
        ), tags = "train"),
        f.init         = p_uty(default = NULL, tags = "train"),
        fk             = p_uty(default = NULL, tags = "train"),
        intercept      = p_lgl(default = TRUE, tags = "train"),
        iter           = p_int(default = 1L, lower = 1L, tags = "train"),
        Learner        = p_fct(default = "ls", levels = c("ls", "sm", "tree"), tags = "train"),
        maxdepth       = p_int(default = 1L, lower = 1L, upper = 30L, tags = "train"),
        maxsurrogate   = p_int(default = 5L, lower = 0L, tags = "train"),
        minbucket      = p_int(lower = 1L, tags = "train"),
        minsplit       = p_int(default = 20L, lower = 1L, tags = "train"),
        mstop          = p_int(default = 50L, lower = 1L, tags = c("train", "predict")),
        numsample      = p_int(default = 50L, lower = 1L, tags = "train"),
        nu             = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train"),
        q              = p_dbl(lower = 0, upper = 1, tags = "train"),
        qh             = p_dbl(lower = 0, upper = 1, tags = "train"),
        s              = p_dbl(lower = 0, tags = "train"),
        sh             = p_dbl(lower = 0, tags = "train"),
        start          = p_lgl(default = FALSE, tags = "train"),
        surrogatestyle = p_int(default = 0L, lower = 0, upper = 1, tags = "train"),
        threshold      = p_fct(default = "adaptive", levels = c("adaptive", "fixed"), tags = "train"),
        trace          = p_lgl(default = FALSE, tags = "train"),
        trun           = p_lgl(default = FALSE, tags = "train"),
        twinboost      = p_lgl(default = FALSE, tags = "train"),
        twintype       = p_int(default = 1L, lower = 1L, upper = 2L, tags = "train"),
        xselect.init   = p_uty(default = NULL, tags = "train"),
        xval           = p_int(default = 10L, lower = 0L, tags = "train")
      )

      param_set$values = list(Learner = "ls", maxdepth = 1L, xval = 0L)

      super$initialize(
        id = "classif.bst",
        packages = c("mlr3extralearners", "bst", "rpart"),
        feature_types = c("numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.bst",
        label = "Gradient Boosting"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      data = task$data()
      target = task$target_names
      features = task$feature_names

      # Recode target to -1/+1
      data[[target]] = ifelse(data[[target]] == task$positive, 1, -1)

      # Split control parameters
      ctrl_pars = formalArgs(bst::bst_control)
      tree_pars = formalArgs(rpart::rpart.control)

      ctrl = invoke(bst::bst_control, .args = pars[names(pars) %in% ctrl_pars])
      ctrl_tree = invoke(list, .args = pars[names(pars) %in% tree_pars])

      invoke(
        bst::bst,
        x = data[, features, with = FALSE],
        y = data[[target]],
        ctrl = ctrl,
        control.tree = ctrl_tree,
        learner = pars$Learner,
        .args = pars[setdiff(names(pars), c(ctrl_pars, tree_pars, "Learner"))]
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      # Get raw predictions
      p = invoke(predict, self$model, newdata = newdata, type = "response", .args = pars)

      if (self$predict_type == "response") {
        list(response = factor(ifelse(p > 0, task$positive, task$negative)))
      } else {
        # Convert to probabilities using sigmoid
        probs = 1 / (1 + exp(-p))
        list(prob = matrix(c(1 - probs, probs), ncol = 2, dimnames = list(NULL, c(task$negative, task$positive))))
      }
    }
  )
)

.extralrns_dict$add("classif.bst", LearnerClassifBst)
