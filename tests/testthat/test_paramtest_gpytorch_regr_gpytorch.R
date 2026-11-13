skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("paramtest regr.gpytorch train", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.gpytorch")
    inspect = reticulate::import("inspect")
    module = mlr3extralearners:::import_gpytorch_module()
    builtins = reticulate::import_builtins()
    py_args = unlist(reticulate::py_to_r(builtins$list(inspect$signature(module$GPyTorchWrapper)$parameters)))

    # mimic an R function with the python arguments as formals, so that run_paramtest() can be used
    fun = function() NULL
    formals(fun) = stats::setNames(rep(list(quote(expr = )), length(py_args)), py_args)

    paramtest = run_paramtest(learner, fun, character(), tag = "train")
    expect_true(isTRUE(paramtest), info = if (!isTRUE(paramtest)) {
      sprintf("missing: %s; extra: %s", str_collapse(paramtest$missing), str_collapse(paramtest$extra))
    })
  }))
})

test_that("paramtest regr.gpytorch predict", {
  learner = lrn("regr.gpytorch")
  expect_length(learner$param_set$ids(tags = "predict"), 0L)
})
