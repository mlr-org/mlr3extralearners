# NOTE - Most parameters not in formals, all listed here:
#   https://github.com/microsoft/LightGBM/blob/master/docs/Parameters.rst
# --> Paramtest does not make sense
# x = rvest::read_html("https://lightgbm.readthedocs.io/en/latest/Parameters.html")
# # x = rvest::html_elements(
# #   x, xpath = "//section[@id='core-parameters' or @id='learning-control-parameters']/ul/li"
# # )
# x = html_elements(x, xpath = "//section[@id='core-parameters']/ul/li")
# x = rvest::html_text2(x)
# x = strsplit(x, split = " ")
# lgbm_params = mlr3misc::map_chr(x, function(x) x[1])
#
#
# install_learners("regr.fnn")
#
# # knn has no real training phase
#
# test_that("paramtest regr.fnn predict", {
#   learner = lrn("regr.lightgbm")
#   fun_list = list(lightgbm::lgb.train, lgbm_params)
#   exclude = c()
#
#   paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
#   expect_paramtest(paramtest)
# })


x = rvest::read_html("https://lightgbm.readthedocs.io/en/latest/Parameters.html")
tmp = c(
  "core-parameters",
  "learning-control-parameters",
  "dataset-parameters",
  "objective-parameters",
  "metric-parameters",
  "network-parameters",
  "gpu-parameters"
)
tmp = paste0("@id='", tmp, "'", collapse = " or ")
x = rvest::html_elements(
  x,
  xpath = sprintf("//section[%s]/ul/li", tmp)
)
x = rvest::html_text2(x)
x = strsplit(x, split = " ")
x = mlr3misc::map_chr(x, function(x) x[1])


test_that("paramtest classif.lightgbm train", {
  learner = lrn("classif.lightgbm")
  fun_list = list(lightgbm::lgb.train, x)
  exclude = c(
  )

  paramtest = run_paramtest(learner, fun_list, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.mars predict", {
  learner = lrn("regr.mars")
  fun = mda:::predict.mars # nolint
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
