reticulate::use_condaenv('r-reticulate',required = TRUE)


task = tsk("sonar")
df = task$data()
ids = partition(task)

# Step 1: Load data into fastai-compatible format:
# We  need to divide column names into Categorical columns and Continuous columns
# We can also define several data preprocessors `procs = list(FillMissing(),Categorify(),Normalize())` and pass them to `TabularDataTable`

cat_cols = task$feature_types[type != "numeric"]$id
num_cols = task$feature_types[type == "numeric"]$id

df_fai = fastai::TabularDataTable(df, cat_names = cat_cols, cont_names = num_cols,
                                  y_names = task$target_names, splits=ids)

dl = fastai::dataloaders(df_fai, bs=50)
dl$train$y

target_factor <- factor(dl$train$y)
weights <- c(0.7, 0.3)
weight_mapping <- setNames(weights, levels(target_factor))
weights_for_factor <- weight_mapping[target_factor]
class_weights <- unname(weights_for_factor)

dl$train$wgts <- class_weights / sum(class_weights)

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
tab_learner = fastai::tabular_learner(dl, layers=c(200,100,100, 2),
                                config = config,
                                metrics = list(accuracy, RocAucBinary(),
                                               Precision(), Recall(),
                                               F1Score()))
invisible(tab_learner$remove_cb(tab_learner$progress))  # to avoid plot creation when internally validating

# invisible(reticulate::py_capture_output(fit(tab_learner, n_epoch = 5, lr = 0.005)))

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


# Prediction:
predict(model, df[ids$test])





### Set weights to loss function
loss = fastai::CrossEntropyLossFlat()
loss$func$weight = tensor(1.0, 2.0)

logloss = msr("classif.logloss")


logloss_own_imp = function (truth, prob, sample_weights = NULL, eps = 1e-15, ...)
{
  print("does it get printed?")
  ii = match(as.character(truth), colnames(prob))
  print("does it match?")
  print(ii)
  print(prob)
  p = prob[cbind(seq_len(nrow(prob)), ii)]
  print("Is the prob computed?")
  p = pmax(eps, pmin(1 - eps, p))
  print("Tester")
  -mlr3measures:::wmean(log(p), sample_weights)
}

metric = function(pred, dtrain, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  label = factor(dl$dataset$y)

  pred = as_array(pred)
  truth = factor(as.vector(as_array(dtrain)))
  # transform log odds to probabilities
  pred_exp = exp(pred)
  pred_mat = pred_exp / rowSums(pred_exp)
  colnames(pred_mat) = levels(truth)
  print("Does it handle the preprocessing?")

  loss = logloss$fun(truth, pred_mat)
  print("Does it compute the loss?")
  return(loss)

}


tab_learner = fastai::tabular_learner(dl, layers=c(100,100, 100, 50),
                                      config = config,
                                      metrics = AccumMetric(metric, flatten=FALSE,
                                                            sample_weights = NULL, eps = 1e-15))

#invisible(tab_learner$remove_cb(tab_learner$progress))  # to avoid plot creation when internally validating
eval_protocol = fit(tab_learner, 1, 0.005)
