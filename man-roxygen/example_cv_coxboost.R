# Custom template for CoxBoost learner (surv.cv_coxboost)
# Reason: This learner requires manual feature selection via col_roles to work properly,
# and uses a specific task setup that differs from the standard example.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' task = tsk("rats")
#' task$col_roles$feature = c("litter", "rx")
#' learner = lrn("<%= id %>", maxstepno = 20)
#' splits = partition(task)
#' learner$train(task, splits$train)
#' pred = learner$predict(task, splits$test)
