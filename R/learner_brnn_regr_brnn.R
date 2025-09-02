#' @title Regression Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_regr.brnn
#'
#' @description
#' Bayesian regularization for feed-forward neural networks.
#' Calls [brnn::brnn] from \CRANpkg{brnn}.
#'
#' @templateVar id regr.brnn
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBrnn = R6Class("LearnerRegrBrnn",
  inherit = LearnerRegr,
  public = list(
   #' @description
   #' Creates a new instance of this [R6][R6::R6Class] class.
   initialize = function() {
      param_set = ps(
         change      = p_dbl(default = 0.001, tags = "train"),
         cores       = p_int(default = 1L, lower = 1L, tags = "train"),
         #contrasts  = p_uty(tags = "train"),  # optional list of contrasts to be used for some or all of the factors appearing as variables in the model formula
         epochs      = p_int(default = 1000L, lower = 1L, tags = "train"),
         min_grad    = p_dbl(default = 1e-10, tags = "train"),
         Monte_Carlo = p_lgl(default = FALSE, tags = "train"),
         mu          = p_dbl(default = 0.005, tags = "train"),
         mu_dec      = p_dbl(default = 0.1, tags = "train"),
         mu_inc      = p_dbl(default = 10, tags = "train"),
         mu_max      = p_dbl(default = 1e10, tags = "train"),
         neurons     = p_int(default = 2L, lower = 1L, tags = "train"),
         normalize   = p_lgl(default = TRUE, tags = "train"),
         samples     = p_int(default = 40L, lower = 1L, tags = "train"),
         tol         = p_dbl(default = 1e-06, tags = "train"),
         verbose     = p_lgl(default = FALSE, tags = "train")
      )

     super$initialize(
       id = "regr.brnn",
       packages = c("mlr3extralearners", "brnn"),
       feature_types = c("numeric", "integer"),
       predict_types = "response",
       param_set = param_set,
       man = "mlr3extralearners::mlr_learners_regr.brnn",
       label = "Bayesian regularization for feed-forward neural networks"
     )
   }
  ),
  private = list(
   .train = function(task) {
     # get parameters for training
     pars = self$param_set$get_values(tags = "train")
     formula = task$formula()
     data = task$data()
     invoke(
       brnn::brnn,
       formula = formula,
       data = data,
       .args = pars
     )
   },
   .predict = function(task) {
     newdata = ordered_features(task, self)
     pars = self$param_set$get_values(tags = "predict")

     pred = invoke(predict, self$model, newdata = newdata, .args = pars)

     list(response = pred)
   }
  )
)

.extralrns_dict$add("regr.brnn", LearnerRegrBrnn)
