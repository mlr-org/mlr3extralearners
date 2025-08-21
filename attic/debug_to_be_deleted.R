learner = lrn("classif.rFerns")
# note that you can skip tests using the exclude argument
result = run_autotest(learner, check_replicable = FALSE)

learner = result$learner
task = result$task
newdata = task$data(cols = rev(task$feature_names))
learner$predict_newdata(newdata)
