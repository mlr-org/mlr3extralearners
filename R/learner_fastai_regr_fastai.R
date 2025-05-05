#' @title Regression Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_regr.fastai
#'
#' @description
#' Simple and fast neural nets for tabular data regression
#' Calls [fastai::fastai()] from package \CRANpkg{fastai}.
#'
#' @section Initial parameter values:
#' - `n_epoch`:
#'   Needs to be set for [fastai::fit()] to work.
#'   If no value is given, it is set to 5.
#' - `eval_metric`:
#'   Needs to be set for [fastai::predict()] to work.
#'   If no value is given, it is set to [mlr3measures::regr.rmse].
#'
#' @section Custom mlr3 parameters:
#' FIXME: DEVIATIONS FROM UPSTREAM DEFAULTS. DELETE IF NOT APPLICABLE.
#'
#' @templateVar id regr.fastai
#' @template learner
#'
#' @references
#' `r format_bib(FIXME: ONE OR MORE REFERENCES FROM bibentries.R)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrFastai = R6Class("LearnerRegrFastai",
  inherit = LearnerRegr,
  public = list(
    eval_protocol = NULL,
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        act_cls     = p_uty(tags = "train"),  # Activation type for LinBnDrop layers, e.g., fastai::nn()$ReLU(inplace = TRUE)
        bn_cont     = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d on continuous variables
        bn_final    = p_lgl(default = FALSE, tags = "train"),  # Use BatchNorm1d on final layer
        drop_last   = p_lgl(default = FALSE, tags = "train"),  #  If True, then the last incomplete batch is dropped.
        embed_p     = p_dbl(lower = 0L, upper = 1L, default = 0L, tags = "train"),  # Dropout probability for Embedding layer
        emb_szs     = p_uty(default=NULL, tags="train"),  # Sequence of (num_embeddings, embedding_dim) for each categorical variable
        n_epoch     = p_int(lower=1, default = 5, tags="train"), # Epochs
        eval_metric = p_uty(tags = "train", custom_check = crate({function(x) check_true(any(is.character(x), is.function(x), inherits(x, "Measure")))})),
        layers      = p_uty(tags="train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
        loss_func   = p_uty(tags="train"),  # Defaults to fastai::CrossEntropyLossFlat()
        lr          = p_dbl(lower=0, default = 0.001, tags = "train"),  # Learning rate
        metrics     = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
        n_out       = p_int(tags="train"),  # ?
        num_workers = p_int(default = 0L, tags = "train"),  # how many subprocesses to use for data loading
        opt_func    = p_uty(tags="train"),  # Optimizer created when Learner.fit is called. E.g., fastai::Adam()
        patience    = p_int(1L, default = 1, tags = c("train", "internal_validation")),  # number of epochs to wait when training has not improved model. add `depends = quote(early_stopping == TRUE`)`
        pin_memory  = p_lgl(default = TRUE, tags = "train"),  # If True, the data loader will copy Tensors into CUDA pinned memory before returning them.
        procs       = p_uty(default=NULL, tags="train"),  # fastai preprocessing steps such as fastai::Categorify, fastai::Normalize, fastai::fill_missing
        ps          = p_uty(default = NULL, tags = "train"),  # Sequence of dropout probabilities
        shuffle     = p_lgl(default = FALSE, tags = "train"),  # If True, then data is shuffled every time dataloader is fully read/iterated.
        train_bn    = p_lgl(default = TRUE, tags = "train"),  # controls if BatchNorm layers are trained
        wd          = p_int(lower = 0, tags = "train"),  # weight decay used for optimization
        wd_bn_bias  = p_lgl(default = FALSE, tags = "train"),  # controls if weight decay is applied to BatchNorm layers and bias
        use_bn      = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d in LinBnDrop layers
        y_range     = p_uty(default = NULL, tags = "train"),  # Low and high for SigmoidRange activation (see below)
        bs          = p_int(default = 50, tags="train") # how many samples per batch to load
      )

      # Epochs is set to default parameter.
      if (is.null(param_set$values$n_epoch)) {
        param_set$set_values(n_epoch = 5)
      }
      if (is.null(param_set$values$eval_metric)) {
        param_set$set_values(eval_metric = msr("regr.rmse"))
      }
      self$eval_protocol = NULL

      super$initialize(
        id = "regr.fastai",
        packages = "fastai",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "validation"),
        man = "mlr3extralearners::mlr_learners_regr.fastai",
        label = "FastAi Neural Network Tabular Regression"
      )
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
    }
  ),

  private = list(
    .validate = NULL,
    .train = function(task) {
      formula = task$formula()
      data = task$data()
      cat_cols = task$feature_types[type != "numeric", id]
      if ((length(cat_cols) > 0) && (is.null(self$param_set$get_values(tags = "train")$procs))) {
        print("setting categorical vars")
        self$param_set$set_values(procs = list(fastai::Categorify()))
      }
      num_cols = task$feature_types[type == "numeric", id]
      comp = NULL  # comparison that fastai uses for internal validation

      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      args_dt = formalArgs(fastai::TabularDataTable)
      args_dl = formalArgs(fastai:::fastai2$data$load$DataLoader)
      args_config = formalArgs(fastai::tabular_config)
      args_fit = formalArgs(fastai:::fastai2$learner$Learner$fit)

      pv_dt = pars[names(pars) %in% args_dt]
      pv_dl = pars[names(pars) %in% args_dl]
      pv_config = pars[names(pars) %in% args_config]
      pv_fit = pars[names(pars) %in% args_fit]
      pv_layers = pars[names(pars) == "layers"]

      internal_valid_task = task$internal_valid_task
      if (!is.null(internal_valid_task)) {
        # combine the training data with the validation data
        full_data = rbind(data, internal_valid_task$data())
        # set splits accordingly
        splits = list(
          seq(1, nrow(data)), seq(nrow(data), nrow(internal_valid_task$data()))
        )
        # set internal validation metric and convert it to format compatible with fastai
        measure = pars$eval_metric
        if (inherits(measure, "Measure")) {  # measure from mlr3measures
          metrics = invoke(
            fastai::AccumMetric,
            metric,
            flatten=FALSE,
            msr=measure
          )  # see wrapper below
          if (measure$minimize) {
            np = reticulate::import("numpy")
            comp = np$less
          }
        } else {
          metrics = measure  # measure from fastai
        }

        # if no internal validation
      } else {
        full_data = data
        splits = NULL
        metrics = pars$eval_metric  # needs to be set to get prediction working
      }

      # set data into a format suitable for fastai
      df_fai = invoke(
        fastai::TabularDataTable,
        df = full_data,
        cat_names = cat_cols,
        cont_names = num_cols,
        y_names = task$target_names,
        splits=splits,
        .args = pv_dt
      )
      # FIXME: Remove debug print
      print("TabularDataTable created.")
      dl = invoke(
        fastai::dataloaders,
        df_fai,
        .args = pv_dl
      )
      # FIXME: Remove debug print
      print("DataLoader created.")
      config = invoke(
        fastai::tabular_config,
        .args = pv_config
      )
      if ("weights" %in% task$properties) {
        dl$train$wgts <- task$weights$weight / sum(task$weights$weight)
      }
      fastai::tabular_learner(dl)
      tab_learner = fastai::tabular_learner(dl, layers = pv_layers, config = config,
                                            metrics = metrics)
      # FIXME: Remove debug print
      print("Tabular Learner internally created.")
      if (!is.null(pars$patience)) {
        patience = pars$patience
        if (!is.null(pars$eval_metric)) {
          monitor = tab_learner$metrics[[0]]$name
        }
        tab_learner$add_cb(
          fastai::EarlyStoppingCallback(monitor = monitor, comp = comp, patience = patience)
        )
        print("Early stopping activated")
      }
      # to avoid plot creation when internally validating do:
      invisible(tab_learner$remove_cb(tab_learner$progress))
      fit_eval = function(tab_learner) {
        self$eval_protocol = invoke(
          fastai::fit,
          object = tab_learner,
          .args = pv_fit
        )
      }
      # to prevent python from printing evaluation protocol do:
      invisible(reticulate::py_capture_output(fit_eval(tab_learner)))
      # FIXME: Remove debug print
      print("Fit successfully executed.")
      self$model = tab_learner
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      target = task$target_names
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      test_dl = self$model$dls$test_dl(newdata)
      tab_learner$get_preds(dl = test_dl, with_decoded = FALSE)

      pred = invoke(predict, self$model, newdata, .args = pars)
      print("Prediction was successfully executed.")
      print(head(pred, 10))
      list(response = pred[,target])
    },

    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$patience) || is.null(self$eval_protocol)) {
        return(NULL)
      }
      list(n_epoch = max(self$eval_protocol$epoch)+1)
    },

    .extract_internal_valid_scores = function() {
      if (is.null(self$eval_protocol)) {
        NULL
      }
      metric = self$model$metrics[[0]]$name
      list(score = self$eval_protocol[nrow(self$eval_protocol), metric])
    }
  )
)

.extralrns_dict$add("regr.fastai", LearnerRegrFastai)


# Wrapper for eval measure to include in fastai
metric = function(pred, dtrain, msr = NULL, ...) {
  pred = fastai::as_array(pred)
  truth = as.vector(fastai::as_array(dtrain))
  measure = msr$fun(truth, pred, ...)
  print("Measure wrapper: did calling the measures work?")
  return(measure)
}