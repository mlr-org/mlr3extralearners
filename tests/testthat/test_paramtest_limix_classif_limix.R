skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
# LimiX imports triton, which is only available on linux
skip_on_os(c("windows", "mac"))

skip_if_no_python_env("limix")

test_that("paramtest classif.limix train", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("classif.limix")
    mlr3extralearners:::assert_limix_packages()
    inspect = reticulate::import("inspect")
    builtins = reticulate::import_builtins()

    exclude = c(
      "ckpt", # the checkpoint is loaded by the learner from model_path
      "categorical_features_indices", # not used by LimiX for classification and regression
      "inference_with_DDP", # requires a distributed setup, removed in the V2.0 predictor
      "kwargs", # unknown arguments are ignored by LimiX
      "average_before_softmax", # only used for regression
      "regression_decoder_type", # only used for regression
      "model" # custom parameter selecting the checkpoint to download
    )

    # the V1.0 predictor is used for "LimiX-2M" and "LimiX-16M", the V2.0 predictor for "LimiX-2"
    for (module in c("inference.v1_0.predictor", "inference.v2_0.predictor")) {
      predictor = reticulate::import(module)$LimiXPredictor
      py_args = unlist(reticulate::py_to_r(builtins$list(inspect$signature(predictor)$parameters)))

      # mimic an R function with the python arguments as formals, so that run_paramtest() can be used
      fun = function() NULL
      formals(fun) = stats::setNames(rep(list(quote(expr = )), length(py_args)), py_args)

      # parameters of the V2.0 predictor that the V1.0 predictor does not have
      v2_only = if (module == "inference.v1_0.predictor") {
        c("cache_dir", "test_batch_mode", "test_batch_size", "enable_preprocess_parallel", "preprocess_num_jobs",
          "gpu_ids")
      }
      paramtest = run_paramtest(learner, fun, c(exclude, v2_only), tag = "train")
      expect_true(isTRUE(paramtest), info = if (!isTRUE(paramtest)) {
        sprintf("%s missing: %s; extra: %s", module, str_collapse(paramtest$missing), str_collapse(paramtest$extra))
      })
    }
  }))
})

test_that("paramtest classif.limix predict", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("classif.limix")
    mlr3extralearners:::assert_limix_packages()
    inspect = reticulate::import("inspect")
    builtins = reticulate::import_builtins()

    exclude = c(
      "x_train", # handled by mlr3
      "y_train", # handled by mlr3
      "x_test", # handled by mlr3
      "task_type" # set by the learner
    )

    for (module in c("inference.v1_0.predictor", "inference.v2_0.predictor")) {
      predictor = reticulate::import(module)$LimiXPredictor
      py_args = unlist(reticulate::py_to_r(builtins$list(inspect$signature(predictor$predict)$parameters)))
      py_args = setdiff(py_args, "self")

      fun = function() NULL
      formals(fun) = stats::setNames(rep(list(quote(expr = )), length(py_args)), py_args)

      paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
      expect_true(isTRUE(paramtest), info = if (!isTRUE(paramtest)) {
        sprintf("%s missing: %s; extra: %s", module, str_collapse(paramtest$missing), str_collapse(paramtest$extra))
      })
    }
  }))
})
