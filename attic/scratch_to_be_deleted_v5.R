#' @title Classification Neural Network Learner
#' @author annanzrv
#' @name mlr_learners_classif.tester
#'
#' @description
#' Simple and fast neural nets for tabular data classification.
#' Calls [fastai::fastai()] from package \CRANpkg{fastai}.
#'
#' @section Initial parameter values:
#' - `n_epoch`:
#'   Needs to be set for [fastai::fit()] to work.
#'   If no value is given, it is set to 5.
#' - `eval_metric`:
#'   Needs to be set for [fastai::predict()] to work.
#'   If no value is given, it is set to [mlr3measures::classif.logloss].
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
LearnerClassifTester = R6Class("LearnerClassifTester",
  inherit = LearnerClassif,
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

     super$initialize(
       id = "classif.tester",
       packages = c("fastai", "reticulate"),
       feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
       predict_types = c("response", "prob"),
       param_set = param_set,
       properties = c("multiclass", "twoclass", "weights", "validation"),
       man = "mlr3extralearners::mlr_learners_classif.tester",
       label = "FastAi Neural Network Tabular Classifier"
     )
   }
  ),


  private = list(
   .train = function(task) {
     formula = task$formula()
     data = task$data()
     print(head(data, 5))
     print(tail(data, 5))
     cat_cols = task$feature_types[type != "numeric"]$id
     if ((length(cat_cols) > 0) && (is.null(self$param_set$get_values(tags = "train")$procs))) {
       print("setting categorical vars")
       self$param_set$set_values(procs = list(fastai::Categorify()))
     }
     num_cols = task$feature_types[type == "numeric"]$id

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
     print(paste0("Layers: ", pv_layers))

     browser()
     full_data = data
     splits = NULL
     #metrics = pars$eval_metric

     # set data into a format suitable for fastai
     df_fai = invoke(
       fastai::TabularDataTable,
       df = full_data,
       cat_names = cat_cols,
       cont_names = num_cols,
       y_names = task$target_names,
       splits=splits,
       #.args = pv_dt
     )
     # FIXME: Remove debug print
     print("TabularDataTable created.")
     dl = invoke(
       fastai::dataloaders,
       df_fai,
       #.args = pv_dl
     )
     # FIXME: Remove debug print
     print("DataLoader created.")
     config = invoke(
       fastai::tabular_config,
       #.args = pv_config
     )
     tab_learner = fastai::tabular_learner(dl, layers = pv_layers, config = config
                                           )
     # FIXME: Remove debug print
     print("Tabular Learner internally created.")

     # to avoid plot creation when internally validating do:
     invisible(tab_learner$remove_cb(tab_learner$progress))
     fit_eval = function(tab_learner) {
       eval_protocol = invoke(
         fastai::fit,
         object = tab_learner,
         .args = pv_fit
       )
       eval_protocol
     }
     # to prevent python from printing evaluation protocol do:
     eval_protocol  = invisible(reticulate::py_capture_output(fit_eval(tab_learner)))
     # FIXME: Remove debug print
     print("Fit successfully executed.")
     self$model = tab_learner
   },

   .predict = function(task) {
     # get parameters with tag "predict"
     pars = self$param_set$get_values(tags = "predict")

     # get newdata and ensure same ordering in train and predict
     newdata = ordered_features(task, self)

     pred = invoke(predict, self$model, newdata, .args = pars)
     print("Prediction was successfully executed.")
     print(pred)
     class_labels = levels(task$truth())
     print(task$truth())
     print(class_labels)

     if (self$predict_type == "response") {
       response = class_labels[pred$class+1]
       print(response)
       list(response = response)
     } else {
       list(prob = as.matrix(pred[, class_labels]))
     }
   }
  )
)

.extralrns_dict$add("classif.tester", LearnerClassifTester)
