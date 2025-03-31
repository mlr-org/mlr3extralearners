#' @title Classification Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_classif.fastai
#'
#' @description
#' FIXME: BRIEF DESCRIPTION OF THE LEARNER.
#' Calls [fastai::fastai()] from FIXME: (CRAN VS NO CRAN): \CRANpkg{fastai} | 'fastai'.
#'
#' @section Initial parameter values:
#' FIXME: DEVIATIONS FROM UPSTREAM PARAMETERS. DELETE IF NOT APPLICABLE.
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
LearnerClassifFastAi = R6Class("LearnerClassifFastAi",
  inherit = LearnerClassif,
  public = list(
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
        epochs      = p_int(lower=1, default = 5, tags="train"), # Epochs
        layers      = p_uty(tags="train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
        loss_func   = p_uty(tags="train"),  # Defaults to fastai::CrossEntropyLossFlat()
        lr          = p_dbl(lower=0, default = 0.001, tags = "train"),  # Learning rate
        metrics     = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
        n_out       = p_int(default = NULL, tags="train"),  # ?
        num_workers = p_int(default = 0L, tags = "train"),  # how many subprocesses to use for data loading
        opt_func    = p_uty(tags="train"),  # Optimizer created when Learner.fit is called. E.g., fastai::Adam()
        pin_memory  = p_lgl(default = TRUE, tags = "train"),  # If True, the data loader will copy Tensors into CUDA pinned memory before returning them.
        ps          = p_uty(default = NULL, tags = "train"),  # Sequence of dropout probabilities
        shuffle     = p_lgl(default = FALSE, tags = "train"),  # If True, then data is shuffled every time dataloader is fully read/iterated.
        train_bn    = p_lgl(default = TRUE, tags = "train"),  # controls if BatchNorm layers are trained
        wd_bn_bias  = p_lgl(default = FALSE, tags = "train"),  # controls if weight decay is applied to BatchNorm layers and bias
        use_bn      = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d in LinBnDrop layers
        y_range     = p_uty(default = NULL, tags = "train"),  # Low and high for SigmoidRange activation (see below)
        bs          = p_int(default = 50, tags="train") # how many samples per batch to load
      )

      super$initialize(
        id = "classif.fastai",
        packages = c("mlr3extralearners", "fastai"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "validation", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.fastai",
        label = "FastAi Neural Network Tabular Learner"
      )
    },
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

      pv_dt = formalArgs(fastai::TabularDataTable)
      pv_dl = formalArgs(fastai:::fastai2$data$load$DataLoader)
      pv_config = formalArgs(fastai::tabular_config)
      pv_fit = formalArgs(fastai:::fastai2$learner$Learner$fit)

      internal_valid_task = task$internal_valid_task
      formula = task$formula()
      data = task$data()
      cat_cols = task$feature_types[type != "numeric"]$id
      num_cols = task$feature_types[type == "numeric"]$id

      if (!is.null(internal_valid_task)) {
        full_data = rbind(data, internal_valid_task$data())
        duplicates = full_data[duplicated(full_data)]
        if(nrow(duplicates) > 0) {
          message("Train and validation dataset have duplicate rows")
        }
        splits = list(
          seq(1, nrow(data)), seq(nrow(data), nrow(internal_valid_task$data()))
        )
      }

      df_fai = fastai::TabularDataTable(df, cat_names = cat_cols, cont_names = num_cols,
                                        y_names = task$target_names, splits=NULL)
      dl = fastai::dataloaders(df_fai, bs=50)

      # FIXME: IF LEARNER DOES NOT HAVE 'weights' PROPERTY THEN DELETE THESE LINES.
      if ("weights" %in% task$properties) {
        task$weights$weight
      }


      # invoke(
      #   fastai::fastai,
      #   formula = formula,
      #   data = data,
      #   .args = pars
      # )
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
    }
  )
)

.extralrns_dict$add("classif.fastai", LearnerClassifFastAi)
