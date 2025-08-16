learner = lrn("classif.rFerns")
tasks = generate_tasks(learner)
task = tasks$sanity_reordered
learner$train(task)
learner$predict(task)
