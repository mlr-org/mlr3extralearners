#' @title Classification Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_classif.fastai
#'
#' @description
#' Simple and fast neural nets for tabular data classification.
#' Calls `fastai::tabular_learner()` from package \CRANpkg{fastai}.
#'
#' @section Installation:
#' The Python dependencies are automatically installed via `reticulate::py_require()`.
#' See [Installing Python Dependencies](https://rstudio.github.io/reticulate/articles/python_packages.html) for more details.
#' You can manually specify a virtual environment by calling `reticulate::use_virtualenv()` prior to calling the `$train()` function.
#' In this virtual environment, the `fastai` package and its dependencies must be installed.
#'
#' @section Saving a Learner:
#' In order to save a `lrn("classif.fastai")` for later usage, it is necessary to call the `$marshal()` method on the `Learner`  before writing it to disk,
#' as the object will otherwise not be saved correctly.
#' After loading a marshaled `lrn("classif.fastai")` into R again, you then need to call `$unmarshal()` to transform it into a useable state.
#'
#' @section Initial parameter values:
#' - `n_epoch`:
#'   Needs to be set for `fastai::fit()` to work.
#'   If no value is given, it is set to 5.
#' - `eval_metric`:
#'   Needs to be set for `fastai::predict()` to work.
#'   If no value is given, it is set to `fastai::accuracy()`.
#'
#' @templateVar id classif.fastai
#' @template learner
#'
#' @references
#' `r format_bib("howard_2020")`
#'
#' @template seealso_learner
#' @export
LearnerClassifFastai = R6Class("LearnerClassifFastai",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      p_n_epoch = p_int(1L,
        tags = c("train", "hotstart", "internal_tuning"),
        default = 5L,
        aggr = crate(function(x) as.integer(ceiling(mean(unlist(x)))), .parent = topenv()),
        in_tune_fn = crate(function(domain, param_vals) {
          if (is.null(param_vals$patience)) {
            stop("Parameter 'patience' must be set to use internal tuning.")
          }
          assert_integerish(domain$upper, len = 1L, any.missing = FALSE)
        }, .parent = topenv()),
        disable_in_tune = list(patience = NULL)
      )

      param_set = ps(
        act_cls     = p_uty(tags = "train"),  # Activation type for LinBnDrop layers, e.g., fastai::nn()$ReLU(inplace = TRUE)
        bn_cont     = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d on continuous variables
        bn_final    = p_lgl(default = FALSE, tags = "train"),  # Use BatchNorm1d on final layer
        drop_last   = p_lgl(default = FALSE, tags = "train"),  #  If True, then the last incomplete batch is dropped.
        embed_p     = p_dbl(lower = 0L, upper = 1L, default = 0L, tags = "train"),  # Dropout probability for Embedding layer
        emb_szs     = p_uty(default = NULL, tags = "train"),  # Sequence of (num_embeddings, embedding_dim) for each categorical variable
        n_epoch     = p_n_epoch,
        eval_metric = p_uty(tags = "train", custom_check = crate({
          function(x) check_true(is.null(x) || is.character(x) || inherits(x, "Measure"))
        })),
        layers      = p_uty(tags = "train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
        loss_func   = p_uty(tags = "train"),  # Defaults to fastai::CrossEntropyLossFlat()
        lr          = p_dbl(lower = 0, default = 0.001, tags = "train"),  # Learning rate
        metrics     = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
        n_out       = p_int(tags = "train"),  # ?
        num_workers = p_int(init = 1L, tags = c("train", "predict", "threads")),  # how many subprocesses to use for data loading and torch threads
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

      param_set$set_values(n_epoch = 5L)

      super$initialize(
        id = "classif.fastai",
        packages = c("mlr3extralearners", "fastai", "reticulate"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass", "weights", "validation", "marshal", "internal_tuning"),
        man = "mlr3extralearners::mlr_learners_classif.fastai",
        label = "FastAi Neural Network Tabular Classifier"
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

    .train = function(task) {
      # the fastai R package loads the fastai Python package in .onLoad()
      # R CMD check will download and install the fastai Python package when `fastai::` is checked
      # this is a note
      # thus we have to use getFromNamespace() to avoid `fastai::`

      pars = self$param_set$get_values(tags = "train")
      assert_python_packages(c("IPython", "torch", "torchvision", "fastai", "pydicom", "kornia"))
      torch = reticulate::import("torch")
      torch$set_num_threads(as.integer(pars$num_workers))

      formula = task$formula()
      data = task$data()
      type = NULL
      cat_cols = task$feature_types[type != "numeric"]$id
      num_cols = task$feature_types[type == "numeric"]$id
      eval_metric = pars$eval_metric
      patience = pars$patience

      metrics = if (is.character(eval_metric)) {
        accuracy = getFromNamespace("accuracy", "fastai")
        error_rate = getFromNamespace("error_rate", "fastai")
        top_k_accuracy = getFromNamespace("top_k_accuracy", "fastai")
        APScoreBinary = getFromNamespace("APScoreBinary", "fastai")
        BalancedAccuracy = getFromNamespace("BalancedAccuracy", "fastai")
        BrierScore = getFromNamespace("BrierScore", "fastai")
        CohenKappa = getFromNamespace("CohenKappa", "fastai")
        F1Score = getFromNamespace("F1Score", "fastai")
        FBeta = getFromNamespace("FBeta", "fastai")
        HammingLoss = getFromNamespace("HammingLoss", "fastai")
        Jaccard = getFromNamespace("Jaccard", "fastai")
        Precision = getFromNamespace("Precision", "fastai")
        Recall = getFromNamespace("Recall", "fastai")
        RocAuc = getFromNamespace("RocAuc", "fastai")
        RocAucBinary = getFromNamespace("RocAucBinary", "fastai")
        MatthewsCorrCoef = getFromNamespace("MatthewsCorrCoef", "fastai")

        # match character to fastai metric
        # these objects must be created here because they break when serialized
        switch(eval_metric,
          "accuracy" = accuracy(),
          "error_rate" = error_rate(),
          "top_k_accuracy" = top_k_accuracy(),
          "APScoreBinary" = APScoreBinary(),
          "BalancedAccuracy" = BalancedAccuracy(),
          "BrierScore" = BrierScore(),
          "CohenKappa" = CohenKappa(),
          "F1Score" = F1Score(),
          "FBeta" = FBeta(),
          "HammingLoss" = HammingLoss(),
          "Jaccard" = Jaccard(),
          "Precision" = Precision(),
          "Recall" = Recall(),
          "RocAuc" = RocAuc(),
          "RocAucBinary" = RocAucBinary(),
          "MatthewsCorrCoef" = MatthewsCorrCoef(),
          error_config("Unknown eval_metric")
        )
      } else if(inherits(eval_metric, "Measure")) {
        # wrap mlr3 measure into fastai metric
        AccumMetric = getFromNamespace("AccumMetric", "fastai")

        invoke(
          AccumMetric,
          fastai_measure_wrapper,
          flatten = FALSE,
          msr = eval_metric,
          lvl = levels(factor(as.integer(task$truth()) - 1)),
          .args = if ("twoclass" %in% unlist(eval_metric$task_properties)) list(positive = "1")
        )
      } else {
        # fastai fails without a metric
        accuracy = getFromNamespace("accuracy", "fastai")
        accuracy()
      }

      Categorify = getFromNamespace("Categorify", "fastai")
      if (length(cat_cols) && is.null(pars$procs)) pars$procs = list(Categorify())

      # match parameters to fastai functions
      fastai2 = getFromNamespace("fastai2", ns = "fastai")
      TabularDataTable = getFromNamespace("TabularDataTable", "fastai")
      tabular_config = getFromNamespace("tabular_config", "fastai")

      args_dt = formalArgs(TabularDataTable)
      args_dl = formalArgs(fastai2$data$load$DataLoader)
      args_config = formalArgs(tabular_config)
      args_fit = formalArgs(fastai2$learner$Learner$fit)

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

      # set data into a format suitable for fastai
      TabularDataTable = getFromNamespace("TabularDataTable", "fastai")
      df_fai = invoke(
        TabularDataTable,
        df = full_data,
        cat_names = cat_cols,
        cont_names = num_cols,
        y_names = task$target_names,
        splits = splits,
        .args = pv_dt
      )

      dataloaders = getFromNamespace("dataloaders", "fastai")
      dl = invoke(
        dataloaders,
        df_fai,
        .args = pv_dl
      )

      tabular_config = getFromNamespace("tabular_config", "fastai")
      config = invoke(
        tabular_config,
        .args = pv_config
      )

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        dl$train$wgts = weights / sum(weights)
      }

      tabular_learner = getFromNamespace("tabular_learner", "fastai")
      tab_learner = tabular_learner(
        dls = dl,
        layers = pv_layers,
        config = config,
        metrics = metrics
      )

      # internal tuning
      if (!is.null(patience)) {
        monitor = tab_learner$metrics[[0]]$name

        # direction for internal tuning
        # if mlr3 measure and minimize use numpy less
        comp = if (inherits(eval_metric, "Measure") && eval_metric$minimize) {
          np = reticulate::import("numpy")
          np$less
        }

        EarlyStoppingCallback = getFromNamespace("EarlyStoppingCallback", "fastai")
        tab_learner$add_cb(
          EarlyStoppingCallback(monitor = monitor, comp = comp, patience = patience)
        )
      }

      # avoid plot creation when internally validating
      invisible(tab_learner$remove_cb(tab_learner$progress))

      # prevent python from printing evaluation protocol
      #fit = getFromNamespace("fit", "fastai")
      invisible(reticulate::py_capture_output({
        eval_protocol = invoke(
          fit,
          object = tab_learner,
          .args = pv_fit
        )
      }))

      # Rename eval protocol in case custom metric was used
      names(eval_protocol)[
        names(eval_protocol) == "python_function"
      ] = if (inherits(eval_metric, "Measure")) eval_metric$id

      torch$set_num_threads(1L)
      structure(list(tab_learner = tab_learner, eval_protocol = eval_protocol), class = "fastai_model")
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      assert_python_packages(c("IPython", "torch", "torchvision", "fastai", "pydicom", "kornia"))
      torch = reticulate::import("torch")
      torch$set_num_threads(as.integer(pars$num_workers))

      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model$tab_learner, newdata, .args = pars)
      class_labels = task$class_names

      torch$set_num_threads(1L)

      if (self$predict_type == "response") {
        response = class_labels[pred$class + 1]
        list(response = response)
      } else {
        list(prob = as.matrix(pred[, class_labels]))
      }
    },

    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$patience) || is.null(self$model$eval_protocol)) {
        return(NULL)
      }
      list(n_epoch = max(self$model$eval_protocol$epoch) + 1)
    },

    .extract_internal_valid_scores = function() {
      if (is.null(self$model$eval_protocol)) {
        return(NULL)
      }
      metric = self$model$tab_learner$metrics[[0]]$name
      metric_name = if (metric == "python_function") {
        self$state$param_vals$eval_metric$id
      } else {
        metric
      }
      set_names(list(self$model$eval_protocol[nrow(self$model$eval_protocol), metric_name]), metric_name)
    }
  )
)

.extralrns_dict$add("classif.fastai", LearnerClassifFastai)


# Wrapper for eval measure to include in fastai
fastai_measure_wrapper = function(pred, dtrain, msr = NULL, lvl = NULL, ...) {
  reticulate::py_require("fastai")

  # label is a vector of labels (0, 1, ..., n_classes - 1)
  as_array = getFromNamespace("as_array", "fastai")
  pred = as_array(pred)
  truth = factor(as.vector(as_array(dtrain)), levels = lvl)
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

#' @export
marshal_model.fastai_model = function(model, inplace = FALSE, ...) {
  # pickle should be available in any python environment
  pickle = reticulate::import("pickle")
  # save model as bytes
  pickled = pickle$dumps(model$tab_learner)
  # ensure object is converted to R
  pickled = as.raw(pickled)

  structure(list(
    marshaled = list(pickled = pickled, eval_protocol = model$eval_protocol),
    packages = "mlr3extralearners"
  ), class = c("fastai_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.fastai_model_marshaled = function(model, inplace = FALSE, ...) {
  pickle = reticulate::import("pickle")
  # unpickle
  tab_learner = pickle$loads(reticulate::r_to_py(model$marshaled$pickled))
  structure(list(tab_learner = tab_learner, eval_protocol = model$marshaled$eval_protocol), class = "fastai_model")
}
