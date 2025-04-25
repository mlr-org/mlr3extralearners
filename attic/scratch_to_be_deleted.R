reticulate::use_condaenv('r-reticulate',required = TRUE)


task = tsk("sonar")
df = task$data()
ids = partition(task)

learner = lrn("classif.fastai")
tasks = generate_tasks(learner)
task = tasks$sanity_switched
# Step 1: Load data into fastai-compatible format:
# We  need to divide column names into Categorical columns and Continuous columns
# We can also define several data preprocessors `procs = list(FillMissing(),Categorify(),Normalize())` and pass them to `TabularDataTable`

cat_cols = task$feature_types[type != "numeric"]$id
num_cols = task$feature_types[type == "numeric"]$id

df_fai = fastai::TabularDataTable(df, cat_names = cat_cols, cont_names = num_cols,
                                  y_names = task$target_names, splits=NULL)

dl = fastai::dataloaders(df_fai, bs=50)
# dl$train$y
#
# target_factor <- factor(dl$train$y)
# weights <- c(0.7, 0.3)
# weight_mapping <- setNames(weights, levels(target_factor))
# weights_for_factor <- weight_mapping[target_factor]
# class_weights <- unname(weights_for_factor)
#
# dl$train$wgts <- class_weights / sum(class_weights)

# These params are not documented by fastai-r but only by fastai-py:
# ps_dataloaders = ps(
#   bs          = p_int(defualt = NULL, tags="train"), # how many samples per batch to load
#   num_workers = p_int(default = 0L, tags = "train"),  # how many subprocesses to use for data loading
#   pin_memory  = p_lgl(default = TRUE, tags = "train"),  # If True, the data loader will copy Tensors into CUDA pinned memory before returning them.
#   shuffle     = p_lgl(default = FALSE, tags = "train"),  # If True, then data is shuffled every time dataloader is fully read/iterated.
#   drop_last   = p_lgl(default = FALSE, tags = "train")  #  If True, then the last incomplete batch is dropped.
# )


# Step 2: Define a set of configs for the learner
config = fastai::tabular_config(embed_p = 0.3, use_bn = FALSE)
# ps_config = ps(
#   ps       = p_uty(default = NULL, tags = "train"),  # Sequence of dropout probabilities
#   embed_p  = p_dbl(lower = 0L, upper = 1L, default = 0L, tags = "train"),  # Dropout probability for Embedding layer
#   y_range  = p_uty(default = NULL, tags = "train"),  # Low and high for SigmoidRange activation (see below)
#   use_bn   = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d in LinBnDrop layers
#   bn_final = p_lgl(default = FALSE, tags = "train"),  # Use BatchNorm1d on final layer
#   bn_cont  = p_lgl(default = TRUE, tags = "train"),  # Use BatchNorm1d on continuous variables
#   act_cls  = p_uty(tags = "train")  # Activation type for LinBnDrop layers, e.g., fastai::nn()$ReLU(inplace = TRUE)
# )

# SigmoidRange: torch.sigmoid(x) * (high - low) + low
#
# LinBnDrop is a module grouping BatchNorm1d, Dropout and Linear layers:
#
# lin_first is not set in fastai-r and defaults to True
# class LinBnDrop(nn.Sequential):
#   def __init__(self, n_in, n_out, bn=True, p=0., act=None, lin_first=False):
#   layers = [BatchNorm(n_out if lin_first else n_in, ndim=1)] if bn else []
#   if p != 0: layers.append(nn.Dropout(p))
#   lin = [nn.Linear(n_in, n_out, bias=not bn)]
#   if act is not None: lin.append(act)
#   layers = lin+layers if lin_first else layers+lin
#   super().__init__(*layers)


# Step 3: Define and fit the tabular learner
tab_learner = fastai::tabular_learner(dl, layers=c(200,100,100))
invisible(tab_learner$remove_cb(tab_learner$progress))  # to avoid plot creation when internally validating

invisible(reticulate::py_capture_output(fit(tab_learner, n_epoch = 5, lr = 0.005)))

fit_eval = function(tab_learner, args) {
  eval_protocol = invoke(  # set this to self$eval_protocol
    fastai::fit,
    tab_learner,
    .args = args
  )
}

invisible(reticulate::py_capture_output(fit_eval(tab_learner, list(n_epoch = 5, lr = 0.005))))

eval_protocol = fastai::fit(tab_learner, n_epoch = 5, lr = 0.005)
# ps_learnr = ps(
#   layers     = p_uty(tags="train"),  # Sequence of ints used to specify the input and output size of each LinBnDrop layer
#   emb_szs    = p_int(lower = 0, default=NULL, tags="train"),  # Sequence of (num_embeddings, embedding_dim) for each categorical variable
#   n_out      = p_int(lower = 1, default = NULL, tags="train"),  # Number of outputs for final LinBnDrop layer
#   loss_func  = p_uty(tags="train"),
#   opt_func   = p_uty(tags="train"),  # Optimizer created when Learner.fit is called. E.g., fastai::Adam()
#   epochs     = p_int(lower=1, default = 5, tags="train"), # Epochs
#   lr         = p_int(lower=0, default = 0.001, tags = "train"),  # Learning rate
#   metrics    = p_uty(tags = "train"),  # optional list of metrics, e.g, fastai::Precision() or fastai::accuracy()
#   train_bn   = p_lgl(default = TRUE, tags = "train"),  # controls if BatchNorm layers are trained
#   wd_bn_bias = p_lgl(default = FALSE, tags = "train")  # controls if weight decay is applied to BatchNorm layers and bias
# )




# Define task:
task = tsk("sonar")
df = task$data()
ids = partition(task)

# Normal Training:
learner = lrn("classif.fastai")
learner
learner$param_set
learner$train(task, row_ids = ids$train)
learner$eval_protocol
pred = learner$predict(task, row_ids = ids$test)
learner$predict_type = "prob"
learner$predict(task, row_ids = ids$test)

# Training with validation
learner = lrn("classif.fastai")
learner$validate = 1/3
learner$param_set$set_values(
  n_epoch = 7,
  eval_metric = msr("classif.auc")
)
learner$train(task, row_ids = ids$train)
learner$eval_protocol

# Training with validation and early stopping
learner = lrn("classif.fastai")
learner$validate = 1/3
learner$param_set$set_values(
  n_epoch = 10,
  patience = 3,
  eval_metric = msr("classif.auc"),
  layers = c(10, 30, 10)
)
learner$train(task, row_ids = ids$train)
learner$internal_tuned_values
learner$internal_valid_scores


# Training with validation and early stopping using fastai metric
learner = lrn("classif.fastai")
learner$validate = 1/3
learner$param_set$set_values(
  n_epoch = 10,
  patience = 3,
  eval_metric = fastai::Precision(),
  layers = c(10, 30, 10)
)
learner$train(task, row_ids = ids$train)
learner$eval_protocol
learner$internal_tuned_values
learner$internal_valid_scores

