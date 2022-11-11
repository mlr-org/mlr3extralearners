x = rvest::read_html("https://xgboost.readthedocs.io/en/latest/parameter.html")
x = rvest::html_elements(x, c("li", "p"))
x = rvest::html_text2(x)
x = grep("default=", x, value = TRUE)
x = strsplit(x, split = " ")
x = mlr3misc::map_chr(x, function(x) x[1])
x = gsub(",", replacement = "", x)
# these are defined on the same line as colsample_bytree and cannot be scraped therefore
x = append(x, values = c("colsample_bylevel", "colsample_bynode", "base_score"))
# valyes which do not match regex
x = append(x, values = c("interaction_constraints", "monotone_constraints", "base_score"))
# only defined in help page but not in signature or website
x = append(x, values = "lambda_bias")
add_params_xgboost = x

test_that("surv.xgboost", {
  learner = lrn("surv.xgboost", nrounds = 1)
  fun = list(xgboost::xgb.train, xgboost::xgboost, add_params_xgboost)
  exclude = c(
    "x", # handled by mlr3
    "params", # handled by mlr3
    "data", # handled by mlr3
    "obj", # handled via type parameter
    "verbosity", # handled by mlr3
    "seed", # not available in R package
    "train", # handled by mlr3
    "task", # handled by mlr3
    "model_in", # handled by mlr3
    "model_out", # handled by mlr3
    "model_dir", # handled by mlr3
    "dump_format", # CLI parameter, not for R package
    "name_dump", # CLI parameter, not for R package
    "name_pred", # CLI parameter, not for R package
    "pred_margin", # CLI parameter, not for R package
    "eval_metric", # handled by mlr3
    "label", # handled by mlr3
    "weight", # handled by mlr3
    "nthread", # handled by mlr3
    "early_stopping_set", # handled by mlr3
    "aft_loss_distribution", # survival specific
    "aft_loss_distribution_scale" # survival specific
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.xgboost", {
  learner = lrn("surv.xgboost")
  fun = xgboost:::predict.xgb.Booster # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "outputmargin", # always FALSE
    "predleaf", # always FALSE
    "predcontrib", # always FALSE
    "approxcontrib", # unused
    "predinteraction", # always FALSE
    "reshape", # handled internally
    "training", # always FALSE
    "objective" # survival specific
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
