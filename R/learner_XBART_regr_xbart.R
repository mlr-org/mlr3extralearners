#' @title Regression Accelerated Bayesian Additive Regression Trees Learner
#' @author AntoineDbn
#' @name mlr_learners_regr.xbart
#'
#' @description
#' Accelerated Bayesian additive regression trees (XBART) for regression.
#' Calls `XBART::XBART()` from package 'XBART'.
#'
#' The prediction is the mean over the sweeps after the burn-in period, as recommended by the upstream package.
#' XBART draws random numbers from its own generator and ignores `set.seed()`.
#' Set the `random_seed` parameter to obtain reproducible results.
#' Messages printed by XBART during training are suppressed unless `verbose` is `TRUE`.
#'
#' @section Installation:
#' Package 'XBART' is not on CRAN and has to be installed from GitHub via
#' `remotes::install_github("JingyuHe/XBART")`.
#' It links against the GNU Scientific Library (GSL),
#' which has to be installed on the system first, e.g. via `apt install libgsl-dev` or `brew install gsl`.
#'
#' @section Initial parameter values:
#' - `num_trees` is initialized to 100 and `num_sweeps` to 40, because `XBART::XBART()` has no defaults for them.
#' - `nthread` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#'
#' @templateVar id regr.xbart
#' @template learner
#'
#' @references
#' `r format_bib("he2019xbart", "he2023stochastic")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrXBART = R6Class("LearnerRegrXBART",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        num_trees = p_int(lower = 1L, init = 100L, tags = c("train", "required")),
        num_sweeps = p_int(lower = 1L, init = 40L, tags = c("train", "required")),
        max_depth = p_int(lower = 1L, default = 250L, tags = "train"),
        Nmin = p_int(lower = 1L, default = 1L, tags = "train"),
        num_cutpoints = p_int(lower = 1L, default = 100L, tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        beta = p_dbl(lower = 0, default = 1.25, tags = "train"),
        tau = p_dbl(lower = 0, special_vals = list(NULL), tags = "train"),
        no_split_penalty = p_dbl(lower = 0, special_vals = list(NULL, "Auto"), tags = "train"),
        burnin = p_int(lower = 0L, default = 1L, tags = "train"),
        mtry = p_int(lower = 1L, special_vals = list(NULL), tags = "train"),
        p_categorical = p_int(lower = 0L, default = 0L, tags = "train"),
        kap = p_dbl(lower = 0, default = 16, tags = "train"),
        s = p_dbl(lower = 0, default = 4, tags = "train"),
        tau_kap = p_dbl(lower = 0, default = 3, tags = "train"),
        tau_s = p_dbl(lower = 0, default = 0.5, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        update_tau = p_lgl(default = TRUE, tags = "train"),
        parallel = p_lgl(default = TRUE, tags = "train"),
        random_seed = p_int(special_vals = list(NULL), tags = "train"),
        sample_weights = p_lgl(default = TRUE, tags = "train"),
        nthread = p_int(lower = 0L, init = 1L, tags = c("train", "threads"))
      )

      super$initialize(
        id = "regr.xbart",
        packages = c("mlr3extralearners", "XBART"),
        feature_types = c("logical", "integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.xbart",
        label = "Accelerated Bayesian Additive Regression Trees"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      X = as_numeric_matrix(task$data(cols = task$feature_names))
      y = as.matrix(task$truth())

      fit = function() invoke(XBART::XBART, y = y, X = X, .args = pars)

      # XBART prints the data-dependent defaults of tau and mtry on every call
      if (isTRUE(pars$verbose)) {
        model = fit()
      } else {
        capture.output({
          model = fit()
        })
      }
      model$burnin = pars$burnin %??% 1L
      model
    },

    .predict = function(task) {
      newdata = as_numeric_matrix(ordered_features(task, self))
      # one column per sweep, the burn-in sweeps are discarded before averaging
      pred = invoke(predict, self$model, X = newdata)
      sweeps = seq.int(self$model$burnin + 1L, ncol(pred))
      list(response = rowMeans(pred[, sweeps, drop = FALSE]))
    }
  )
)

.extralrns_dict$add("regr.xbart", LearnerRegrXBART)
