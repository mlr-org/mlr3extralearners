skip_if_not_installed_py("ConfigSpace")

test_that("basic type mappings, defaults, and tags round-trip as expected", {
  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  cs = ConfigSpace$ConfigurationSpace()

  hp_lgl = ConfigSpace$CategoricalHyperparameter(
    name = "use_bias",
    choices = reticulate::tuple(TRUE, FALSE),
    default_value = TRUE,
    meta = reticulate::dict(tags = c("train", "predict"))
  )

  hp_fct = ConfigSpace$CategoricalHyperparameter(
    name = "solver",
    choices = reticulate::tuple("lbfgs", "saga", "newton"),
    default_value = "saga",
    meta = reticulate::dict(tags = c("train", "predict"))
  )

  hp_float = ConfigSpace$UniformFloatHyperparameter(
    name = "lr",
    lower = 1e-5, upper = 1e-1,
    default_value = 1e-3,
    meta = reticulate::dict(tags = "train")
  )

  hp_int = ConfigSpace$UniformIntegerHyperparameter(
    name = "num_layers",
    lower = 1L, upper = 10L,
    default_value = 3L,
    meta = reticulate::dict(tags = "train")
  )

  cs$add_hyperparameters(c(hp_lgl, hp_fct, hp_float, hp_int))
  ps = configspace_to_paramset(cs)
  defaults = default_values(ps)

  expect_setequal(ps$ids(), c("use_bias", "solver", "lr", "num_layers"))
  p_use_bias = ps$params[id == "use_bias"]
  expect_identical(p_use_bias$cls, "ParamLgl")
  expect_identical(defaults$use_bias, TRUE)
  expect_setequal(unlist(p_use_bias$.tags), c("train", "predict"))

  p_solver = ps$params[id == "solver"]
  expect_identical(p_solver$cls, "ParamFct")
  expect_identical(defaults$solver, "saga")
  expect_setequal(unlist(p_solver$.tags), c("train", "predict"))

  p_lr = ps$params[id == "lr"]
  expect_identical(p_lr$cls, "ParamDbl")
  expect_equal(p_lr$lower, 1e-5)
  expect_equal(p_lr$upper, 1e-1)
  expect_identical(defaults$lr, 1e-3)
  expect_setequal(unlist(p_lr$.tags), c("train"))
})


test_that("EqualsCondition, InCondition and AndConjunction are converted to ParamSet deps", {
  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  cs = ConfigSpace$ConfigurationSpace()

  hp_solver = ConfigSpace$CategoricalHyperparameter(
    name = "solver",
    choices = c("lbfgs", "saga", "newton"),
    default_value = "lbfgs",
    meta = reticulate::dict(tags = "train")
  )
  hp_penalty = ConfigSpace$CategoricalHyperparameter(
    name = "penalty",
    choices = c("l1", "l2", "none"),
    default_value = "l2",
    meta = reticulate::dict(tags = "train")
  )
  hp_c = ConfigSpace$UniformFloatHyperparameter(
    name = "C", lower = 1e-4, upper = 10, default_value = 1.0,
    meta = reticulate::dict(tags = "train")
  )
  hp_tol = ConfigSpace$UniformFloatHyperparameter(
    name = "tol", lower = 1e-6, upper = 1e-1, default_value = 1e-4,
    meta = reticulate::dict(tags = "train")
  )

  cs$add_hyperparameters(c(hp_solver, hp_penalty, hp_c, hp_tol))

  in_cond = ConfigSpace$InCondition(
    child = hp_c, parent = hp_solver,
    values = c("lbfgs", "newton")
  )
  # tol active only if (solver == "saga") AND (penalty == "l1")
  eq1 = ConfigSpace$EqualsCondition(child = hp_tol, parent = hp_solver, value = "saga")
  eq2 = ConfigSpace$EqualsCondition(child = hp_tol, parent = hp_penalty, value = "l1")
  and_cond = ConfigSpace$AndConjunction(eq1, eq2)

  cs$add_conditions(c(in_cond, and_cond))

  ps = configspace_to_paramset(cs)

  # Sanity
  expect_setequal(ps$ids(), c("solver", "penalty", "C", "tol"))

  # If solver = "lbfgs", C should be "active" => providing it should validate.
  x_ok = list(solver = "lbfgs", penalty = "l1", C = 0.5)
  expect_true(ps$test(x_ok))
  x_nok = list(solver = "lbfgs", penalty = "l1", C = 0.5, tol = 1e-4)
  expect_false(ps$test(x_nok))

  # If solver = "saga" and penalty != "l1", tol and C should be inactive.
  x_ok2 = list(solver = "saga", penalty = "l2")  # tol and C omitted
  expect_true(ps$test(x_ok2))

  # If solver = "saga" and penalty = "l1", tol is active but C is not
  x_ok3 = list(solver = "saga", penalty = "l1", tol = 1e-4)
  expect_true(ps$test(x_ok3))

  # If solver = "newton", C active; giving out-of-range C should fail domain test.
  x_bad = list(solver = "newton", penalty = "l2", C = 100)
  expect_false(ps$test(x_bad))
})


test_that("multiple dependent parameters on the same parent are preserved", {
  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  cs = ConfigSpace$ConfigurationSpace()

  hp_model = ConfigSpace$CategoricalHyperparameter(
    name = "model",
    choices = c("rf", "xgb"),
    default_value = "rf",
    meta = reticulate::dict(tags = "train")
  )
  hp_ntree = ConfigSpace$UniformIntegerHyperparameter(
    "ntree", 10L, 1000L, default_value = 100L, meta = reticulate::dict(tags = "train")
  )
  hp_mtry  = ConfigSpace$UniformIntegerHyperparameter(
    "mtry", 1L, 50L, default_value = 5L, meta = reticulate::dict(tags = "train")
  )

  cs$add_hyperparameters(c(hp_model, hp_ntree, hp_mtry))

  eq_ntree = ConfigSpace$EqualsCondition(child = hp_ntree, parent = hp_model, value = "rf")
  eq_mtry  = ConfigSpace$EqualsCondition(child = hp_mtry,  parent = hp_model, value = "rf")
  cs$add_conditions(c(eq_ntree, eq_mtry))

  ps = configspace_to_paramset(cs)

  # For rf: both ntree and mtry active
  x_ok = list(model = "rf", ntree = 200L, mtry = 7L)
  expect_true(ps$test(x_ok))

  # For xgb: ntree/mtry inactive, can be omitted
  x_ok2 = list(model = "xgb")
  expect_true(ps$test(x_ok2))
})


test_that("unsupported or unexpected hyperparameter types raise a clear error", {
  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  cs = ConfigSpace$ConfigurationSpace()

  # ConstantHyperparameter is intentionally not mapped in the converter
  hp_const = ConfigSpace$Constant("fixed", value = 42L)
  cs$add_hyperparameter(hp_const)

  expect_error(
    configspace_to_paramset(cs),
    regexp = "could not be converted.*paradox::Domain",
    fixed  = FALSE
  )
})
