#' @title Regression Mixed-Effect Random Forest Learner
#' @name mlr_learners_regr.merf
#'
#' @description
#' Mixed-Effect Random Forest learner for regression.
#' @templateVar id regr.merf
#' @importFrom LongituRF MERF
#' @importFrom mlr3 LearnerRegr
#' @importFrom paradox ps p_int p_dbl p_fct p_uty
#' @export

LearnerRegrMERF = R6::R6Class(
  "LearnerRegrMERF",
  inherit = mlr3::LearnerRegr,

  public = list(

    initialize = function() {

      ps = paradox::ps(
        iter     = paradox::p_int(default = 100, lower = 1,   tags = "train"),
        ntree    = paradox::p_int(default = 500, lower = 1,   tags = "train"),
        mtry     = paradox::p_uty(default = NULL,             tags = "train"),
        sto      = paradox::p_fct(
          default = "none",
          levels  = c("none", "BM", "OrnUhl", "BBridge", "fbm"),
          tags    = "train"
        ),
        delta    = paradox::p_dbl(default = 0.001, lower = 0, tags = "train"),
        z_cols   = paradox::p_uty(default = NULL,             tags = "train"),
        time_col = paradox::p_uty(                            tags = "train")
      )

      # Force les valeurs par défaut
      ps$values = list(
        iter  = 100L,
        ntree = 500L,
        sto   = "none",
        delta = 0.001
      )

      super$initialize(
        id            = "regr.merf",
        packages      = "LongituRF",
        feature_types = c("numeric", "integer", "factor"),
        predict_types = "response",
        param_set     = ps,
        properties    = character(0)
      )
    }
  ),

  private = list(

    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      # Sécurité sur les défauts
      if (is.null(pars$iter))  pars$iter  = 100L
      if (is.null(pars$ntree)) pars$ntree = 500L
      if (is.null(pars$sto))   pars$sto   = "none"
      if (is.null(pars$delta)) pars$delta = 0.001

      all_cols = task$backend$colnames

      # GROUP
      id_col = task$col_roles$group
      if (length(id_col) == 0) {
        stop("MERF requires a 'group' role.")
      }

      # TIME
      if (is.null(pars$time_col)) {
        stop("time_col must be provided.")
      }
      if (!pars$time_col %in% all_cols) {
        stop("time_col not found in task.")
      }

      X = as.data.frame(task$data(cols = task$feature_names))
      Y = task$truth()

      # Récupère group et time via le backend
      id_vec = as.numeric(
        task$backend$data(rows = task$row_ids, cols = id_col)[[1]]
      )
      time_vec = as.numeric(
        task$backend$data(rows = task$row_ids, cols = pars$time_col)[[1]]
      )

      # Z matrix
      if (is.null(pars$z_cols)) {
        Z_mat = matrix(1, nrow = nrow(X), ncol = 1)
      } else {
        if (!all(pars$z_cols %in% all_cols)) {
          stop("Some z_cols not found in task.")
        }
        Z_mat = data.matrix(task$data(cols = pars$z_cols))
      }

      # SORT
      ord      = order(id_vec, time_vec)
      X        = X[ord, , drop = FALSE]
      Y        = Y[ord]
      Z_mat    = Z_mat[ord, , drop = FALSE]
      id_vec   = id_vec[ord]
      time_vec = time_vec[ord]

      # Store state
      self$state = list(
        z_cols   = pars$z_cols,
        time_col = pars$time_col
      )

      #
      mtry_val = if (is.null(pars$mtry)) ceiling(ncol(X) / 3) else as.integer(pars$mtry)

      # Train
      self$model = LongituRF::MERF(
        X     = X,
        Y     = Y,
        Z     = Z_mat,
        id    = id_vec,
        time  = time_vec,
        iter  = pars$iter,
        mtry  = mtry_val,
        ntree = pars$ntree,
        sto   = pars$sto,
        delta = pars$delta
      )

      self$model
    },

    .predict = function(task) {

      if (is.null(self$model)) {
        stop("Model has not been trained.")
      }

      all_cols = task$backend$colnames

      # Group
      id_col = task$col_roles$group
      if (length(id_col) == 0) {
        stop("Prediction requires 'group' role.")
      }

      # STATE
      if (is.null(self$state)) {
        stop("Model state missing.")
      }

      z_cols   = self$state$z_cols
      time_col = self$state$time_col

      if (is.null(time_col)) {
        stop("time_col missing in model state.")
      }
      if (!time_col %in% all_cols) {
        stop("time_col not found in prediction task.")
      }

      newdata = as.data.frame(task$data(cols = task$feature_names))

      # Récupère group et time
      id_new = as.numeric(
        task$backend$data(rows = task$row_ids, cols = id_col)[[1]]
      )
      time_new = as.numeric(
        task$backend$data(rows = task$row_ids, cols = time_col)[[1]]
      )

      # Z matrix
      if (is.null(z_cols)) {
        Z_new = matrix(1, nrow = nrow(newdata), ncol = 1)
      } else {
        if (!all(z_cols %in% all_cols)) {
          stop("Some z_cols missing in prediction task.")
        }
        Z_new = data.matrix(task$data(cols = z_cols))
      }

      # predict
      p = predict(
        self$model,
        X    = newdata,
        Z    = Z_new,
        id   = id_new,
        time = time_new
      )

      list(response = as.numeric(p))
    }
  )  # on ferme le private | we close the private
)    # fin R6Class

