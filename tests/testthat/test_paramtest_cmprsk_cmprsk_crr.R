skip_if_not_installed("mlr3proba")
skip_if_not_installed("cmprsk")

test_that("paramtest cmprsk.crr train", {
  learner = lrn("cmprsk.crr")
  fun_list = list(cmprsk::crr)
  exclude = c(
    "ftime",   # target variable extracted from task
    "fstatus", # target variable
    "cencode", # Set to 0L
    "failcode",  # iterates through cmp_events
    "cengroup", # handled by cengroup_name
    "init",     # handled by init_list
    "subset",  # handled by task$filter()
    "cov2",    # handled by cov2_info parameter
    "tf",       # handled by cov2_info parameter
    "cov1",     # handled indirectly by cov2_info 
    "cov2_info",
    "init_list", # 
    "cengroup_name"
 )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest cmprsk.crr predict", {
  learner = lrn("cmprsk.crr")
  fun_list = list(cmprsk:::predict.crr)
  exclude = c(
    "object", # handled internally
    "cov1",
    "cov2",
    "cov2_info"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})
