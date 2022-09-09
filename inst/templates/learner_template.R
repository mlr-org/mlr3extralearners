#' @title <Type_lng> <algorithm> Learner
#' @author <gh_name>
#' @name mlr_learners_<type>.<key>
#'
#' @description
#' FIXME: BRIEF DESCRIPTION OF THE LEARNER.
#' Calls [<package>::<caller>()] from FIXME: (CRAN VS NO CRAN): \CRANpkg{<package>} | '<package>'.
#'
#' @section Initial parameter values:
#' FIXME: DEVIATIONS FROM UPSTREAM PARAMETERS. DELETE IF NOT APPLICABLE.
#'
#' @section Custom mlr3 defaults:
#' FIXME: DEVIATIONS FROM UPSTREAM DEFAULTS. DELETE IF NOT APPLICABLE.
#'
#' @section Installation:
#' FIXME: CUSTOM INSTALLATION INSTRUCTIONS. DELETE IF NOT APPLICABLE.
#'
#' @templateVar id <type>.<key>
#' @template learner
#'
#' @references
#' `r format_bib(FIXME: ONE OR MORE REFERENCES FROM bibentries.R)`
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
      # FIXME: MANUALLY ADD PARAMETERS BELOW AND THEN DELETE THIS LINE
      param_set = ps()

      # FIXME: MANUALLY UPDATE PARAM VALUES BELOW IF APPLICABLE THEN DELETE THIS LINE.
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
    }, # <INIT>
    # FIXME: ADD IMPORTANCE METHOD IF APPLICABLE AND DELETE OTHERWISE
    # SEE mlr3extralearners::LearnerRegrRandomForest FOR AN EXAMPLE
    #' @description
    #' The importance scores are extracted from the slot FIXME:.
    #' @return Named `numeric()`.
    importance = function() {
      pars = self$param_set$get_values(tags = "importance")
      # FIXME: Implement importance
    },
    # FIXME: ADD OOB_ERROR METHOD IF APPLICABLE AND DELETE OTHERWISE
    # SEE mlr3extralearners::LearnerRegrRandomForest FOR AN EXAMPLE
    #' @description
    #' OOB errors are extracted from the model slot FIXME:.
    #' @return `numeric(1)`.
    oob_error = function() {
      pars = self$param_set$get_values(tags = "oob_error")
      # FIXME: Implement oob_error
    },
    # FIXME: ADD SELECTED_FEATURES METHOD IF APPLICABLE AND DELETE OTHERWISE
    # SEE mlr3extralearners::LearnerRegrRandomForestSRC FOR AN EXAMPLE
    #' @description
    #' Selected features are obtained by FIXME:.
    #' @return `character()`.
    selected_features = function() {
      pars = self$param_set$get_values(tags = "selected_features")
      # FIXME: Implement selected_features
    },
    # FIXME: ADD LOGLIK METHOD IF APPLICABLE AND DELETE OTHERWISE
    # SEE mlr3learners::LearnerRegrLM FOR AN EXAMPLE
    #' @description
    #' Log-Likelihood is obtained by FIXME:.
    #' @return `numeric(1)`.
    loglik = function() {
      pars = self$param_set$get_values(tags = "loglik")
      # FIXME: Implement loglik
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # FIXME: IF LEARNER DOES NOT HAVE 'weights' PROPERTY THEN DELETE THESE LINES.
      if ("weights" %in% task$properties) {
        # Add weights to learner
      }

      # FIXME: CREATE OBJECTS FOR THE TRAIN CALL
      # AT LEAST "data" AND "formula" ARE REQUIRED
      formula = task$formula()
      data = task$data()

      # FIXME: HERE IS SPACE FOR SOME CUSTOM ADJUSTMENTS BEFORE PROCEEDING TO THE
      # TRAIN CALL. CHECK OTHER LEARNERS FOR WHAT CAN BE DONE HERE
      # USE THE mlr3misc::invoke FUNCTION (IT'S SIMILAR TO do.call())

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
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      # FIXME: ADD PREDICTIONS TO LIST BELOW
      list()
    }, # <PREDICT>
    # FIXME: ADD HOTSTART METHOD IF APPLICABLE AND DELETE METHOD OTHERWISE
    # SEE mlr3learners::LearnerClassifXgboost FOR AN EXAMPLE
    .hotstart = function(task) {
      pars = self$param_set$get_values(tags = "hotstart")
      # FIXME: Implement hotstarting
    }
  )
)

.extralrns_dict$add("<type>.<key>", Learner<Type><Classname>)
