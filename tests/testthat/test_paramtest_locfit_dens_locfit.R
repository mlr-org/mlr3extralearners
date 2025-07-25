test_that("paramtest dens.locfit train", {
  learner = lrn("dens.locfit")
  # density.lf calls locfit.raw internally (this is where the ... go)
  fun_list = list(locfit::density.lf, locfit::locfit.raw)
  exclude = c(
    "x", # handled in predict
    "y", # only for regressoin
    "n", # ev used instead
    "ev", # handled in predict
    "family", # always density
    "deg", # deprecated
    "alpha", # deprecated
    "scale", # deprecated
    "sty", # deprecated
    "acri", # deprecated
    "geth", # docs say `don't use`
    "window", # equialent to `kern` argument
    "cens", # hazard rate or censored regressoin
    "base", # regression
    # not implemented by the author (can be upon user request)
    "debug",
    "xlim",
    "deriv",
    "weights",
    "basis",
    "dc"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

# no predict time parameters
