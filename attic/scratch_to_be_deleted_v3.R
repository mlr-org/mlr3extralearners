library(fastai)
library(data.table)
library(mlr3misc)
library(mlr3)
devtools::load_all(".")

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
fit_eval = function(tab_learner) {
  self$eval_protocol = invoke(
    fastai::fit,
    object = tab_learner,
    .args = pv_fit
  )
}
# to prevent python from printing evaluation protocol do:
invisible(reticulate::py_capture_output(fit_eval(tab_learner)))

pred = invoke(predict, self$model, newdata, .args = pars)