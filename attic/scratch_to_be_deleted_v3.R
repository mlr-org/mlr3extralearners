library(fastai)

# Create the data.table
full_data <- data.table(
  target = factor(c(
    "A", "B", "A", "B", "A", "B", "A", "B", "A", "B",
    "A", "B", "A", "B", "A", "B", "A", "B", "A", "B",
    "A", "B", "A", "B", "A", "B", "A", "B", "A", "B"
  )),
  logical = c(
    FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE,
    TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE,
    FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE
  )
)


learner = lrn("classif.fastai")
tasks = generate_tasks(learner)

learner$train(tasks$sanity_switched)
pred = learner$predict(tasks$sanity_switched)
pred$score(mlr3::msr("classif.ce"))


task = tasks$sanity_switched

df = task$data()

cat_cols = task$feature_types[type != "numeric"]$id
num_cols = task$feature_types[type == "numeric"]$id

df_fai = invoke(
  fastai::TabularDataTable,
  df = df,
  cat_names = cat_cols,
  cont_names = num_cols,
  y_names = "y",
  procs = list(fastai::Categorify())
)

dl = invoke(
  fastai::dataloaders,
  df_fai
)

tab_learner = fastai::tabular_learner(dl)

# to avoid plot creation when internally validating do:
invisible(tab_learner$remove_cb(tab_learner$progress))
helper = list()
fit_eval = function(tab_learner) {
  helper$eval_protocol = invoke(
    fastai::fit,
    object = tab_learner,
    n_epoch = 5
  )
}
# to prevent python from printing evaluation protocol do:
invisible(reticulate::py_capture_output(fit_eval(tab_learner)))

row = [(.N-1):.N]
test_dl = tab_learner$dls$test_dl(row)
tab_learner$get_preds(dl = test_dl, with_decoded = FALSE)

pred = predict(tab_learner, df)

