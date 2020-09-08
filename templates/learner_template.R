#' @title <Type_lng> <algorithm> Learner
#' @author <gh_name>
#' @name mlr_learners_<type>.<key>
#'
#' @template class_learner
#' @templateVar id <type>.<key>
#' @templateVar caller <caller>
#'
#' @references
#' <OPTIONAL - DELETE THIS AND LINE ABOVE IF OMITTED>
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
      # FIXME - MANUALLY ADD PARAM_SET BELOW AND THEN DELETE THIS LINE
      ps = <param_set>

      # FIXME - MANUALLY UPDATE PARAM VALUES BELOW IF APPLICABLE THEN DELETE THIS LINE.
      # OTHERWISE DELETE THIS AND LINE BELOW.
      ps$values = list(<param_vals>)

      super$initialize(
        id = "<type>.<key>",
        packages = "<package>",
        feature_types = c("<feature_types>"),
        predict_types = c("<predict_types>"),
        param_set = ps,
        properties = c("<properties>"),
        man = "mlr3extralearners::mlr_learners_<type>.<key>"
      )
    },

    # FIXME - ADD IMPORTANCE METHOD HERE AND DELETE THIS LINE.
    # <See mlr3learners.randomForest for an example>
    #' @description
    #' The importance scores are extracted from the slot <FIXME>.
    #' @return Named `numeric()`.
    importance = function() { },

    # FIXME - ADD OOB_ERROR METHOD HERE AND DELETE THIS LINE.
    # <See mlr3learners.randomForest for an example>
    #' @description
    #' OOB errors are extracted from the model slot <FIXME>.
    #' @return `numeric(1)`.
    oob_error = function() { }
  ),

  private = list(

    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      # FIXME - <Create objects for the train call
      # <At least "data" and "formula" are required>
      formula = task$formula()
      data = task$data()

      # FIXME - <here is space for some custom adjustments before proceeding to the
      # train call. Check other learners for what can be done here>

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(<package>::<caller>,
                       formula = formula,
                       data = data,
                       .args = pars)
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")
      # get newdata
      newdata = task$data(cols = task$feature_names)


      pred = mlr3misc::invoke(predict, self$model, newdata = newdata,
                              type = type, .args = pars)

      # FIXME - ADD PREDICTION TO OBJECT BELOW
      Prediction<Type>$new(task = task, ...)
    }
  )
)

# lrns_dict$add("<type>.<key>", Learner<Type><Classname>)
