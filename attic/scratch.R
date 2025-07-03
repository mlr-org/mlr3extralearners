learner = lrn("classif.pamr")
tasks = generate_tasks(learner)
task = tasks$sanity
learner$train(task)
p = learner$predict(task)
ce$fun(task$truth(), p$response)
# ce to high