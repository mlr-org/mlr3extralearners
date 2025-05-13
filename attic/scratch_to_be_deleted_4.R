learner = lrn("classif.fastai")
tasks = generate_tasks(learner)
learner$train(tasks$sanity_switched)
pred = learner$predict(tasks$sanity_switched)
pred$score(mlr3::msr("classif.ce"))
learner$eval_protocol

learner = lrn("classif.fastai")
learner$train(tasks$sanity)
pred = learner$predict(tasks$sanity)
pred$score(mlr3::msr("classif.ce"))
learner$eval_protocol

learner = lrn("classif.fastai")
tasks = generate_tasks(learner)
task = tasks$sanity_switched
df = task$data()
cat_cols = task$feature_types[type != "numeric", id]
num_cols = task$feature_types[type == "numeric", id]


set.seed(42)  # R-level seed

# Python seeds (via reticulate)
reticulate::py_run_string("
import random
import numpy as np
import torch

seed = 42
random.seed(seed)
np.random.seed(seed)
torch.manual_seed(seed)
torch.cuda.manual_seed_all(seed)

torch.use_deterministic_algorithms(True)
torch.backends.cudnn.deterministic = True
torch.backends.cudnn.benchmark = False
")

df_fai <- invoke(
  fastai::TabularDataTable,
  df = df,
  cat_names = cat_cols,
  cont_names = num_cols,
  y_names = task$target_names,
  procs = list(fastai::Categorify()),
)

dl <- invoke(
  fastai::dataloaders,
  df_fai
)

tab_learner <- fastai::tabular_learner(dl, layer=c(2, 4, 2))

fastai::fit(tab_learner, 5)  # Will now be repeatable


task = tsk("sonar")

set.seed(42)
learner = lrn("classif.fastai")
learner$train(task)
print(learner$eval_protocol)
