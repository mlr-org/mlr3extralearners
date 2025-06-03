# nolint start
# Check why the fastai learner produces surprisingly wrong predictions.
# Source scratch_to_be_deleted_v3 to get simple fastai learner w/o interval validation.

source("attic/scratch_to_be_deleted_v3.R")

learner = lrn("classif.fastai")
tasks = generate_tasks(learner)

# Check the learner
learner = LearnerClassifTester$new()
learner$train(tasks$sanity)
pred = learner$predict(tasks$sanity)
pred$score(mlr3::msr("classif.ce"))
learner$eval_protocol


# Go step by step through the code:

task = tasks$sanity
df = task$data()

cat_cols = task$feature_types[type != "numeric", id]
num_cols = task$feature_types[type == "numeric", id]

df_fai_n <- invoke(
  fastai::TabularDataTable,
  df = df,
  cat_names = cat_cols,
  cont_names = num_cols,
  y_names = task$target_names,
  splits = NULL,
  #procs = list(fastai::Categorify(), fastai::Normalize())
)

dl_n <- invoke(
  fastai::dataloaders,
  df_fai_n
)

config_n = invoke(
  fastai::tabular_config
)
tab_learner_n <- fastai::tabular_learner(dl_n, layers = NULL, metrics = fastai::accuracy(), config = config_n)
invisible(tab_learner_n$remove_cb(tab_learner_n$progress))
fit_eval = function(tab_learner_n) {
  eval_protocol = invoke(
    fastai::fit,
    object = tab_learner_n,
    n_epoch = 5
  )
  eval_protocol
}

# to prevent python from printing evaluation protocol do:
eval = invisible(reticulate::py_capture_output(fit_eval(tab_learner_n)))

pred = predict(tab_learner_n, ordered_features(task, learner))

class_labels = levels(task$truth())
factor(class_labels[pred$class+1])
# nolint end