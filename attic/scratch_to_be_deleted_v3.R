library(fastai)
library(data.table)
library(mlr3misc)
library(mlr3)
devtools::load_all(".")

     # Epochs is set to default parameter.
     if (is.null(param_set$values$n_epoch)) {
       param_set$set_values(n_epoch = 5)
     }
     if (is.null(param_set$values$eval_metric)) {
       param_set$set_values(eval_metric = fastai::accuracy())
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
       df_fai
       #.args = pv_dl
     )
     # FIXME: Remove debug print
     print("DataLoader created.")
     config = invoke(
       fastai::tabular_config
       #.args = pv_config
     )
     tab_learner = fastai::tabular_learner(dl, layers = pv_layers, config = config,
                                           metrics = pars$eval_metric)
     # FIXME: Remove debug print
     print("Tabular Learner internally created.")

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
