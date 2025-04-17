#' @title Classification Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_classif.fastai
#'
#' @description
#' Simple and fast neural nets for tabular data classification.
#' Calls [fastai::fastai()] from package \CRANpkg{fastai}.
#'
#' @section Initial parameter values:
#' - `n_epoch`:
#'   Needs to be set for [fastai::fit()] to work.
#'   If no value is given, it is set to 5.
#'
#' @section Custom mlr3 parameters:
#' FIXME: DEVIATIONS FROM UPSTREAM DEFAULTS. DELETE IF NOT APPLICABLE.
#'
#' @templateVar id classif.fastai
#' @template learner
#'
#' @references
#' `r format_bib(FIXME: ONE OR MORE REFERENCES FROM bibentries.R)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifFastai = R6Class("LearnerClassifFastai",
  inherit = LearnerClassif,
  public = list(
    eval_protocol = NULL,
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        act_cls        = p_uty(tags = "train"),  # Activation type for LinBnDrop layers, e.g., fastai::nn()$ReLU(inplace = TRUE)
        bn_cont        = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d on continuous variables
        bn_final       = p_lgl(default = FALSE, tags = "train"),  # Use BatchNorm1d on final layer
        drop_last      = p_lgl(default = FALSE, tags = "train"),  #  If True, then the last incomplete batch is dropped.
        # early_stopping = p_lgl(default = FALSE, tags = "train"),  # perform early stopping
        embed_p        = p_dbl(lower = 0L, upper = 1L, default = 0L, tags = "train"),  # Dropout probability for Embedding layer
        emb_szs        = p_uty(default=NULL, tags="train"),  # Sequence of (num_embeddings, embedding_dim) for each categorical variable
        n_epoch        = p_int(lower=1, default = 5, tags="train"), # Epochs
        eval_metric    = p_uty(tags = "train", custom_check = crate({function(x) check_true(any(is.character(x), is.function(x), inherits(x, "Measure")))})),
        layers         = p_uty(tags="train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
        loss_func      = p_uty(tags="train"),  # Defaults to fastai::CrossEntropyLossFlat()
        lr             = p_dbl(lower=0, default = 0.001, tags = "train"),  # Learning rate
        metrics        = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
        n_out          = p_int(tags="train"),  # ?
        num_workers    = p_int(default = 0L, tags = "train"),  # how many subprocesses to use for data loading
        opt_func       = p_uty(tags="train"),  # Optimizer created when Learner.fit is called. E.g., fastai::Adam()
        patience       = p_int(1L, default = 1, tags = c("train", "internal_validation")),  # number of epochs to wait when training has not improved model. add `depends = quote(early_stopping == TRUE`)`
        pin_memory     = p_lgl(default = TRUE, tags = "train"),  # If True, the data loader will copy Tensors into CUDA pinned memory before returning them.
        ps             = p_uty(default = NULL, tags = "train"),  # Sequence of dropout probabilities
        shuffle        = p_lgl(default = FALSE, tags = "train"),  # If True, then data is shuffled every time dataloader is fully read/iterated.
        train_bn       = p_lgl(default = TRUE, tags = "train"),  # controls if BatchNorm layers are trained
        wd_bn_bias     = p_lgl(default = FALSE, tags = "train"),  # controls if weight decay is applied to BatchNorm layers and bias
        use_bn         = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d in LinBnDrop layers
        y_range        = p_uty(default = NULL, tags = "train"),  # Low and high for SigmoidRange activation (see below)
        bs             = p_int(default = 50, tags="train") # how many samples per batch to load
      )

      # Epochs is set to default parameter.
      if (is.null(param_set$values$n_epoch)) {
        param_set$values = list(n_epoch = 5)
      }
      self$eval_protocol = NULL

      super$initialize(
        id = "classif.fastai",
        packages = c("fastai", "reticulate"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.fastai",
        label = "FastAi Neural Network Tabular Classifier"
      )
    }
  ),

  active = list(
    #' @field internal_valid_scores (named `list()` or `NULL`)
    #' The validation scores extracted from `model$evaluation_log`.
    #' If early stopping is activated, this contains the validation scores of the model for the optimal `nrounds`,
    #' otherwise the `nrounds` for the final model.
    internal_valid_scores = function() {
      self$state$internal_valid_scores
    },

    #' @field internal_tuned_values (named `list()` or `NULL`)
    #' If early stopping is activated, this returns a list with `nrounds`,
    #' which is extracted from `$best_iteration` of the model and otherwise `NULL`.
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

      formula = task$formula()
      data = task$data()

      cat_cols = task$feature_types[type != "numeric"]$id
      num_cols = task$feature_types[type == "numeric"]$id

      internal_valid_task = task$internal_valid_task
      if (!is.null(internal_valid_task)) {
        # combine the training data with the validation data
        full_data = rbind(data, internal_valid_task$data())
        duplicates = full_data[duplicated(full_data)]
        if(nrow(duplicates) > 0) {
          message("Train and validation dataset have duplicate rows.")
        }
        # set splits accordingly
        splits = list(
          seq(1, nrow(data)), seq(nrow(data), nrow(internal_valid_task$data()))
        )
        # set internal validation metric and convert it to format compatible with fastai
        measure = pars$eval_metric
        if (inherits(measure, "Measure")) {  # measure from mlr3measures
          metrics = fastai::AccumMetric(metric, flatten=FALSE, msr=measure)  # see wrapper below
          # This is needed for early stopping. We must tell the early stopping callback whether
          # the comparison between the epochs should be < or >.
          if (measure$minimize) {
            np = reticulate::import("numpy")
            comp = np$less
          }
        } else {
          metrics = measure  # measure from fastai
          comp = NULL  # fastai chooses comparison itself internally
        }

      # if no internal validation
      } else {
        full_data = data
        splits = NULL
        metrics = NULL
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
      print("TabularDataTable created")
      dl = invoke(
        fastai::dataloaders,
        df_fai,
        .args = pv_dl
      )
      # FIXME: Remove debug print
      print("DataLoader created")
      config = invoke(
        fastai::tabular_config,
        .args = pv_config
      )
      if ("weights" %in% task$properties) {
        dl$train$wgts <- task$weights$weight
      }
      tab_learner = fastai::tabular_learner(dl, layers = pv_layers, config = config,
                                            metrics = metrics)
      # FIXME: Remove debug print
      print("Tabular Learner internally created")
      if (!is.null(pars$patience)) {  # if (isTRUE(pars$early_stopping))
        patience = pars$patience
        if (!is.null(pars$eval_metric)) {
          monitor = tab_learner$metrics[[0]]$name
        }
        tab_learner$add_cb(
          EarlyStoppingCallback(monitor=monitor, comp=comp, patience=patience)
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
      print("Fit was successfully executetd")
      self$model = tab_learner
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      pred = invoke(predict, self$model, newdata, .args = pars)

      if (self$predict_type == "response") {
        list(response = factor(pred$class, labels = levels(task$truth())))
      } else {
        list(prob = pred[, c("M", "R")])
      }
    }
  )
)

.extralrns_dict$add("classif.fastai", LearnerClassifFastai)


# Wrapper for mlr3measures to include in fastai
metric = function(pred, dtrain, msr = NULL, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  label = factor(dl$dataset$y)
  pred = fastai::as_array(pred)
  truth = factor(as.vector(as_array(dtrain)), levels = levels(label))
  # transform log odds to probabilities
  pred_exp = exp(pred)
  pred_mat = pred_exp / rowSums(pred_exp)
  colnames(pred_mat) = levels(truth)
  pred = pred_mat
  # transform prediction into class labels
  if (msr$predict_type == "response") {
    p = apply(pred_mat, MARGIN = 1, FUN = function(x) which.max(x) - 1)
    pred = factor(p, levels = levels(truth))
  }
  measure = msr$fun(truth, pred, ...)
  return(measure)
}