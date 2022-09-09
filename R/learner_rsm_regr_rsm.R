#' @title Regression Response Surface Model Learner
#' @author sebffischer
#' @name mlr_learners_regr.rsm
#'
#' @description
#' Fit a linear model with a response-surface component.
#' Calls [rsm::rsm()] from FIXME: \CRANpkg{rsm}.
#'
#' @section Initial parameter values:
#' - `modelfun`: This parameter controls how the formula for [rsm::rsm()] is created. Possible values are:
#'   - `"FO"` - first order
#'   - `"TWI"` - wo-way interactions, this is with 1st oder terms
#'   - `"SO"` - full second order
#'
#' @templateVar id regr.rsm
#' @template learner
#'
#' @references
#' `r format_bib("lenth2010response")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRSM = R6Class("LearnerRegrRSM",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        modelfun = p_fct(default = "FO", levels = c("FO", "TWI", "SO"), tags = c("train", "required"))
      )
      param_set$values = list(modelfun = "FO")

      super$initialize(
        id = "regr.rsm",
        packages = "rsm",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = character(0),
        man = "mlr3extralearners::mlr_learners_regr.rsm",
        label = "Response Surface Model"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      vs = paste(task$feature_names, collapse = ",", sep = " ")
      g = function(x) paste(x, "(", vs, ")", sep = "")

      mf = switch(pars$modelfun,
        FO = g("FO"),
        TWI = paste(g("TWI"), "+", g("FO"), sep = " "),
        SO = g("SO"),
        stop("Unknown modelfun: ", mf)
      )
      formula = as.formula(paste(task$target_names, "~", mf, sep = " "))

      data = task$data()
      invoke(
        rsm::rsm,
        formula = formula,
        data = data
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model, newdata = newdata, .args = pars)
      names(pred) = NULL

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.rsm", LearnerRegrRSM)
