#' @title FIXME : Title for the Learner
#' @author <gh_name>
#' @name mlr_learners_<type>.<key>
#'
#' @description
#' FIXME: Brief description of the learner.
#' Calls [<package>::<caller>()] from <FIXME (CRAN vs no CRAN): \CRANpkg{<package>} | '<package>'>.
#'
#' @section Custom mlr3 defaults:
#' FIXME: Deviations from upstream defaults
#'
#' @section Installation:
#' FIXME: (ONLY IF UNUSUAL INSTALLATION) : INSTRUCTIONS ON INSTALLATION
#'
#' @template learner
#' @templateVar id <type>.<key>
#'
#' @references
#' `r format_bib(<FIXME: One or more references from bibentries>)`
#'
#' @template seealso_learner
#' @template example
#' @export
Learner<Type><Classname> = R6Class("Learner<Type><Classname>",
  inherit = Learner<Type>,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # FIXME - MANUALLY ADD PARAMETERS BELOW AND THEN DELETE THIS LINE
      param_set = ps()

      # FIXME - MANUALLY UPDATE PARAM VALUES BELOW IF APPLICABLE THEN DELETE THIS LINE.
      param_set$values = list()

      super$initialize(
        id = "<type>.<key>",
        packages = "<package>",
        feature_types = c("<feature_types>"),
        predict_types = c("<predict_types>"),
        param_set = param_set,
        properties = c("<properties>"),
        man = "mlr3extralearners::mlr_learners_<type>.<key>",
        label = "<label>"
      )
    },

    # FIXME: ADD IMPORTANCE METHOD IF APPLICABLE AND DELETE OTHERWISE
    # <See mlr3extralearners::LearnerRegrRandomForest for an example>
    #' @description
    #' The importance scores are extracted from the slot <FIXME>.
    #' @return Named `numeric()`.
    importance = function() {
      pars = self$param_set$get_values(tags = "importance")
    },

    # FIXME: ADD OOB_ERROR METHOD IF APPLICABLE AND DELETE OTHERWISE
    # <See mlr3extralearners::LearnerRegrRandomForest for an example>
    #' @description
    #' OOB errors are extracted from the model slot <FIXME>.
    #' @return `numeric(1)`.
    oob_error = function() {
      pars = self$param_set$get_values(tags = "oob_error")
    },

    # FIXME: ADD SELECTED_FEATURES METHOD HERE AND DELETE OTHERWISE
    # <See mlr3extralearners::LearnerRegrRandomForestSRC for an example>
    #' @description
    #' Selected features are obtained by <FIXME>.
    #' @return `character()`.
    selected_features = function() {
      pars = self$param_set$get_values(tags = "selected_features")
    },
    # FIXME: ADD LOGLIK METHOD HERE AND DELETE OTHERWISE
    # <See mlr3learners::LearnerRegrLM for an example>
    #' @description
    #' Log-Likelihood is obtained by <FIXME>.
    #' @return `character()`.
    loglik = function() {
      pars = self$param_set$get_values(tags = "selected_features")
    }
  ),

  private = list(

    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # FIXME: If learner does not have 'weights' property then delete these lines.
      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      # FIXME: <Create objects for the train call>
      # <At least "data" and "formula" are required>
      formula = task$formula()
      data = task$data()

      # FIXME - <here is space for some custom adjustments before proceeding to the
      # train call. Check other learners for what can be done here>
      # use the mlr3misc::invoke function (it's similar to do.call())
      invoke(
        <package>::<caller>,
        formula = formula,
        data = data,
        .args = pars
      )
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      # FIXME - ADD PREDICTIONS TO LIST BELOW
      list(...)
    },

    .hotstart = function(task) {
      # FIXME: ADD HOTSTART METHOD IF APPLICABLE AND DELETE METHOD OTHERWISE
      # <See  mlr3learners::LearnerClassifXgboost for an example>
      pars = self$param_set$get_values(tags = "hotstard")
    }

  )
)

.extralrns_dict$add("<type>.<key>", Learner<Type><Classname>)
