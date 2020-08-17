library(mlr3extralearners)

test_that("surv.parametric", {
  learner = lrn("surv.parametric")
  fun = survival::survreg
  exclude = c(
    "maxiter",
    # control parameter
    "rel.tolerance",
    # control parameter
    "toler.chol",
    # control parameter
    "debug",
    # control parameter
    "outer.max",
    # control parameter
    "control",
    # control parameter
    "weights",
    # handled in mlr3
    "subset",
    # handled in mlr3
    "x",
    # x,y,data are all coerced to formula internally
    "y",
    # x,y,data are all coerced to formula internally
    "model",
    # model always returned
    "data",
    # x,y,data are all coerced to formula internally
    "formula" # x,y,data are all coerced to formula internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})

test_that("surv.parametric_control", {
  learner = lrn("surv.parametric")
  fun = survival::survreg.control # replace!
  exclude = c("iter.max" # identical to maxiter
              )

              ParamTest = run_paramtest(learner, fun, exclude)
              expect_true(ParamTest, info = paste0(
                "\nMissing parameters:\n",
                paste0("- '", ParamTest$missing, "'", collapse = "\n")
              ))
})
