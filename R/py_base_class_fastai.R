#' @title Classification Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_classif.fastai
#'
#' @description
#' Simple and fast neural nets for tabular data classification.
#' Calls [fastai::tabular_learner()] from package \CRANpkg{fastai}.
#'
#' @templateVar id classif.fastai
#' @template learner
#'
#' @references
#' `r format_bib("howard_2020")`
#' @export
LearnerPythonClassifFastai <- R6::R6Class(
  "LearnerPythonClassifFastai",
  inherit = LearnerPythonClassif,

  public = list(
    initialize = function() {

      p_n_epoch = p_int(
        lower = 1L,
        tags  = c("train", "hotstart", "internal_tuning"),
        init  = 5L,
        aggr  = crate(function(x) as.integer(ceiling(mean(unlist(x)))), .parent = topenv()),
        in_tune_fn = crate(function(domain, param_vals) {
          if (is.null(param_vals$patience)) {
            stop("Parameter 'patience' must be set to use internal tuning.")
          }
          assert_integerish(domain$upper, len = 1L, any.missing = FALSE)
        }, .parent = topenv()),
        disable_in_tune = list(n_epoch = NULL)
      )

      ps_fastai <- ps(
        act_cls     = p_uty(tags = "train"),  # Activation type for LinBnDrop layers, e.g., fastai::nn()$ReLU(inplace = TRUE)
        bn_cont     = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d on continuous variables
        bn_final    = p_lgl(default = FALSE, tags = "train"),  # Use BatchNorm1d on final layer
        drop_last   = p_lgl(default = FALSE, tags = "train"),  #  If True, then the last incomplete batch is dropped.
        embed_p     = p_dbl(lower = 0L, upper = 1L, default = 0L, tags = "train"),  # Dropout probability for Embedding layer
        emb_szs     = p_uty(default = NULL, tags = "train"),  # Sequence of (num_embeddings, embedding_dim) for each categorical variable
        n_epoch     = p_n_epoch,
        eval_metric = p_uty(tags = "train", custom_check = crate({
          function(x) check_true(is.function(x) || inherits(x, "Measure"))
        })),
        layers      = p_uty(tags = "train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
        loss_func   = p_uty(tags = "train"),  # Defaults to fastai::CrossEntropyLossFlat()
        lr          = p_dbl(lower = 0, default = 0.001, tags = "train"),  # Learning rate
        metrics     = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
        n_out       = p_int(tags = "train"),  # ?
        num_workers = p_int(default = 0L, tags = "train"),  # how many subprocesses to use for data loading
        opt_func    = p_uty(tags = "train"),  # Optimizer created when Learner.fit is called. E.g., fastai::Adam()
        patience    = p_int(1L, default = 1, tags = "train"),  # number of epochs to wait when training has not improved model. add `depends = quote(early_stopping == TRUE`)`
        pin_memory  = p_lgl(default = TRUE, tags = "train"),  # If True, the data loader will copy Tensors into CUDA pinned memory before returning them.
        procs       = p_uty(default = NULL, tags = "train"),  # fastai preprocessing steps such as fastai::Categorify, fastai::Normalize, fastai::fill_missing
        ps          = p_uty(default = NULL, tags = "train"),  # Sequence of dropout probabilities
        shuffle     = p_lgl(default = FALSE, tags = "train"),  # If True, then data is shuffled every time dataloader is fully read/iterated.
        train_bn    = p_lgl(default = TRUE, tags = "train"),  # controls if BatchNorm layers are trained
        wd          = p_int(lower = 0, tags = "train"),  # weight decay used for optimization
        wd_bn_bias  = p_lgl(default = FALSE, tags = "train"),  # controls if weight decay is applied to BatchNorm layers and bias
        use_bn      = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d in LinBnDrop layers
        y_range     = p_uty(default = NULL, tags = "train"),  # Low and high for SigmoidRange activation (see below)
        bs          = p_int(default = 50, tags = "train") # how many samples per batch to load
      )

      super$initialize(
        id = "classif.python.fastai",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps_fastai,
        properties = c("multiclass", "twoclass", "weights", "validation", "marshal"),
        packages = c("mlr3extralearners", "fastai", "reticulate"), # R packages
        label = "Fastai Tabular Classifier",
        man = "mlr3extralearners::mlr_learners_classif.fastai",
        py_packages = c("fastai", "torch"),
        python_version = "3.10"
      )
    },
    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field internal_valid_scores (named `list()` or `NULL`)
    #' The validation scores extracted from `eval_protocol` which itself is set by fitting the `fastai::tab_learner`.
    #' If early stopping is activated, this contains the validation scores of the model for the optimal `n_epoch`,
    #' otherwise the `n_epoch` for the final model.
    internal_valid_scores = function() {
      self$state$internal_valid_scores
    },

    #' @field internal_tuned_values (named `list()` or `NULL`)
    #' If early stopping is activated, this returns a list with `n_epoch`,
    #' which is the last epoch that yielded improvement w.r.t. the `patience`, extracted by `max(eval_protocol$epoch)+1`
    internal_tuned_values = function() {
      self$state$internal_tuned_values
    },

    #' @field validate (`numeric(1)` or `character(1)` or `NULL`)
    #' How to construct the internal validation data. This parameter can be either `NULL`,
    #' a ratio, `"test"`, or `"predefined"`.
    validate = function(rhs) {
      if (!missing(rhs)) {
        private$.validate = assert_validate(rhs)
      }
      private$.validate
    },

    #' @field marshaled (`logical(1)`)
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .validate = NULL,

    # -------------------- TRAIN HOOK --------------------
    .train_py = function(task) {
      py_requirements = self$py_requirements()
      assert_python_packages(packages = py_requirements$packages,
                             python_version = py_requirements$python_version)

      # We need the task columns split into cat/cont; fastai uses names, not indices.
      data = task$data()
      type = NULL
      cat_cols = task$feature_types[type != "numeric"]$id
      num_cols = task$feature_types[type == "numeric"]$id

      # Default eval metric if none is supplied
      pars = self$param_set$get_values(tags = "train")
      measure = pars$eval_metric
      patience = pars$patience
      if (is.null(measure)) measure = fastai::accuracy()
      if (length(cat_cols) && is.null(pars$procs)) pars$procs = list(fastai::Categorify())

      # match parameters to fastai functions
      fastai2     = getFromNamespace("fastai2", ns = "fastai")
      args_dt     = formalArgs(fastai::TabularDataTable)
      args_dl     = formalArgs(fastai2$data$load$DataLoader)
      args_config = formalArgs(fastai::tabular_config)
      args_fit    = formalArgs(fastai2$learner$Learner$fit)

      pv_dt = pars[names(pars) %in% args_dt]
      pv_dl = pars[names(pars) %in% args_dl]
      pv_config = pars[names(pars) %in% args_config]
      pv_fit = pars[names(pars) %in% args_fit]
      pv_layers = pars[names(pars) == "layers"]

      # internal validation
      internal_valid_task = task$internal_valid_task
      if (!is.null(patience) && is.null(internal_valid_task)) {
        stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
      }

      if (!is.null(internal_valid_task)) {
        full_data = data.table::rbindlist(list(data, internal_valid_task$data()))
        splits = list(seq(task$nrow), seq(task$nrow + 1, task$nrow + internal_valid_task$nrow))
      } else {
        full_data = data
        splits = NULL
      }

      metrics = if (inherits(measure, "Measure")) {
        # wrap mlr3 measure into fastai metric
        params_for_metric = if ("twoclass" %in% unlist(measure$task_properties)) list(positive = "1")
        invoke(
          fastai::AccumMetric,
          metric,
          flatten = FALSE,
          msr = measure,
          lvl = levels(factor(as.integer(task$truth()) - 1L)),
          .args = params_for_metric
        )
      } else {
        # measure from fastai
        measure
      }

      # set data into a format suitable for fastai
      df_fai = invoke(
        fastai::TabularDataTable,
        df = full_data,
        cat_names = cat_cols,
        cont_names = num_cols,
        y_names = task$target_names,
        splits = splits,
        .args = pv_dt
      )

      dls = invoke(
        fastai::dataloaders,
        df_fai,
        .args = pv_dl
      )

      config = invoke(fastai::tabular_config, .args = pv_config)

      # observation weights (normalized), if present
      weights <- private$.get_weights(task)
      if (!is.null(weights)) {
        dls$train$wgts = weights / sum(weights)
      }

      tab_learner <- fastai::tabular_learner(
        dls = dls,
        layers = pv_layers,
        config = config,
        metrics = metrics
      )

      # early stopping / internal tuning
      if (!is.null(patience)) {
        monitor <- tab_learner$metrics[[0]]$name

        # direction for internal tuning
        # if mlr3 measure and minimize use numpy less
        comp = if (inherits(measure, "Measure") && measure$minimize) {
          np = reticulate::import("numpy")
          np$less
        }

        tab_learner$add_cb(
          fastai::EarlyStoppingCallback(monitor = monitor, comp = comp, patience = patience)
        )
      }

      # avoid plot creation when internally validating
      invisible(tab_learner$remove_cb(tab_learner$progress))

      # prevent python from printing evaluation protocol
      eval_protocol = NULL
      invisible(reticulate::py_capture_output({
        eval_protocol = invoke(
          fastai::fit,
          object = tab_learner,
          .args  = pv_fit
        )
      }))

      # Rename eval protocol in case custom metric was used
      names(eval_protocol)[
        names(eval_protocol) == "python_function"
      ] = if (inherits(measure, "Measure")) measure$id

      list(
        model = tab_learner,
        eval_protocol = eval_protocol,
        class_labels = task$class_names
      )
    },

    # -------------------- PREDICT HOOK --------------------
    .predict_py = function(task, newdata, predict_types) {
      model = self$model$model
      class_labels = self$model$class_labels

      # Fastai expects same column order & types as during fit
      pars_pred = self$param_set$get_values(tags = "predict")
      pred = invoke(fastai::predict, model, newdata, .args = pars_pred)

      if ("prob" %in% predict_types) {
        prob = as.matrix(pred[, class_labels, drop = FALSE])
        list(response = NULL, prob = prob)
      } else if ("response" %in% predict_types) {
        response = class_labels[pred$class + 1L]
        list(response = response, prob = NULL)
      } else {
        list()
      }
    },

    # ---------------- Validation extractors ----------------
    .extract_internal_tuned_values = function() {
      ep = self$model$eval_protocol
      if (is.null(self$state$param_vals$patience) || is.null(ep)) return(NULL)
      list(n_epoch = max(ep$epoch) + 1L)
    },

    .extract_internal_valid_scores = function() {
      ep = self$model$eval_protocol
      if (is.null(ep)) return(NULL)
      metric = self$model$fitted$metrics[[0]]$name
      metric_name = if (metric == "python_function") {
        self$state$param_vals$eval_metric$id
      } else metric
      set_names(list(ep[nrow(ep), metric_name]), metric_name)
    }
  )
)

.extralrns_dict$add("classif.python.fastai", LearnerPythonClassifFastai)

# Wrapper for eval measure to include in fastai
metric = function(pred, dtrain, msr = NULL, lvl = NULL, ...) {
  reticulate::py_require("fastai")

  # label is a vector of labels (0, 1, ..., n_classes - 1)
  pred = fastai::as_array(pred)
  truth = factor(as.vector(fastai::as_array(dtrain)), levels = lvl)
  # transform log odds to probabilities
  pred_exp = exp(pred)
  pred_mat = pred_exp / rowSums(pred_exp)
  colnames(pred_mat) = lvl
  pred = pred_mat
  # only look at the positive class
  if ("twoclass" %in% unlist(msr$task_properties)) {
    pred = pred_mat[, 2]
  }
  # transform prediction into class labels
  if (msr$predict_type == "response") {
    p = apply(pred_mat, MARGIN = 1, FUN = function(x) which.max(x) - 1)
    pred = factor(p, levels = levels(truth))
  }
  msr$fun(truth, pred, ...)
}
