library(mlr3learners)
library(rvest)
library(magrittr)

add_params_xgboost = read_html("https://xgboost.readthedocs.io/en/latest/parameter.html") %>%
  html_elements(c("li", "p")) %>%
  html_text2() %>%
  grep("default=", ., value = T) %>%
  strsplit(., split = " ") %>%
  mlr3misc::map_chr(., function(x) x[1]) %>%
  gsub(",", replacement = "", .) %>%
  ## these are defined on the same line as colsample_bytree and cannot be scraped therefore
  append(values = c("colsample_bylevel", "colsample_bynode")) %>%
  # valyes which do not match regex
  append(values = c("interaction_constraints", "monotone_constraints")) %>%
  # only defined in help page but not in signature or website
  append(values = c("lambda_bias"))

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
    "aft_loss_distribution", # survival specific
    "aft_loss_distribution_scale" # survival specific
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.xgboost", {
  learner = lrn("surv.xgboost")
  fun = xgboost:::predict.xgb.Booster
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
