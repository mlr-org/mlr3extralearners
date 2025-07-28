#' @title Classification K-nearest Neighbour Learner
#' @author annanzrv
#' @name mlr_learners_classif.knn
#'
#' @description
#' K-nearest neighbor classification.
#' Calls [class::knn()] from \CRANpkg{class}.
#'
#' @templateVar id classif.knn
#' @template learner
#'
#' @references
#' `r format_bib("knn2002")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifKnn = R6Class("LearnerClassifKnn",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        k = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        l = p_dbl(default = 0L, lower = 0L, tags = c("train", "predict")),
        prob = p_lgl(default = FALSE, tags = c("train", "predict")),
        use.all = p_lgl(default = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "classif.knn",
        packages = "class",
        feature_types = c("numeric"),
        predict_types = c("response"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.knn",
        label = "k-Nearest Neighbour Classifier"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # get data
      z = task$data()
      target = task$target_names

      # prepare arguments for knn
      train_data = as.matrix(task$data(cols = task$feature_names))
      args = c(list(train = train_data, cl = z[[target]]), pars)

      # store the arguments for prediction
      args
    },
    .predict = function(task) {
      # get newdata
      newdata = as.matrix(task$data(cols = task$feature_names))

      # prepare arguments for knn
      args = self$model
      args$test = newdata

      # predict
      pred = invoke(class::knn, .args = args)

      # return predictions
      list(response = pred)
    }
  )
)

.extralrns_dict$add("classif.knn", LearnerClassifKnn)
