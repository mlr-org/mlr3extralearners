# NOTE - Most parameters not in formals, all listed here:
#   https://github.com/microsoft/LightGBM/blob/master/docs/Parameters.rst
# --> Paramtest does not make sense
x = rvest::read_html("https://lightgbm.readthedocs.io/en/latest/Parameters.html")
# x = rvest::html_elements(
#   x, xpath = "//section[@id='core-parameters' or @id='learning-control-parameters']/ul/li"
# )
x = html_elements(x, xpath = "//section[@id='core-parameters']/ul/li")
x = rvest::html_text2(x)
x = strsplit(x, split = " ")
lgbm_params = mlr3misc::map_chr(x, function(x) x[1])


install_learners("regr.fnn")

# knn has no real training phase

test_that("paramtest regr.fnn predict", {
  learner = lrn("regr.lightgbm")
  fun_list = list(lightgbm::lgb.train, lgbm_params)
  exclude = c()

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
