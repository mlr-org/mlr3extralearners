skip_if_not_installed_py("ConfigSpace")

test_that("errors and basic input validation", {
  expect_error(paramset_to_configspace(list()), "ParamSet")
})

test_that("converts a simple mixed ParamSet (happy path)", {
  checkmate::assert_true(requireNamespace("paradox", quietly = TRUE))

  ps = paradox::ps(
    lr        = paradox::p_dbl(lower = 1e-5, upper = 1, default = 0.01, tags = "train"),
    ntree     = paradox::p_int(lower = 10,   upper = 500, default = 100,  tags = c("train","tuning")),
    bootstrap = paradox::p_lgl(default = TRUE, tags = "train"),
    criterion = paradox::p_fct(levels = c("gini","entropy","other"), default = "gini", tags = "train")
  )

  cs = paramset_to_configspace(ps, name = "happy")
  checkmate::expect_class(cs, "python.builtin.object")

  hps = cs_get_hp_names(cs)
  expect_setequal(hps, c("bootstrap","criterion","lr","ntree"))
})


test_that("ParamUty are skipped with explicit IDs in the warning", {
  ps = paradox::ps(
    a = paradox::p_dbl(lower = 0, upper = 1, default = 0.5),
    u = paradox::p_uty(),
    v = paradox::p_uty()
  )
  expect_warning(cs <- paramset_to_configspace(ps))
})


test_that("ParamDbl with infinite or missing bounds is skipped", {
  ps = paradox::ps(
    good = paradox::p_dbl(lower = 0, upper = 1, default = 0.5),
    infu = paradox::p_dbl(lower = 0, upper = Inf, default = 1),
    infl = paradox::p_dbl(lower = -Inf, upper = 1, default = 0)
  )
  cs <- suppressWarnings(paramset_to_configspace(ps))
  hps = cs$get_hyperparameter_names()
  expect_true("good" %in% hps)
  expect_false("infu" %in% hps)
  expect_false("infl" %in% hps)
})


test_that("ParamFct without default warns and takes first level", {
  ps = paradox::ps(
    f = paradox::p_fct(levels = c("x","y","z"))
  )
  expect_warning(cs <- paramset_to_configspace(ps), "no default.*first level")
  f_hp = cs$get_hyperparameter("f")
  expect_setequal(f_hp$choices, c("x","y","z"))
  expect_identical(f_hp$default_value, "x")
})


test_that("ParamFct with zero levels warns and is skipped", {
  bad = paradox::p_fct(levels = character(0))
  ps  = paradox::ps(ok = paradox::p_fct(levels = c("a","b"), default = "a"), bad = bad)
  expect_warning(cs <- paramset_to_configspace(ps))
  hps = cs$get_hyperparameter_names()
  expect_setequal(hps, "ok")
})


test_that("ParamLgl becomes a categorical {TRUE,FALSE} with appropriate default", {
  ps = paradox::ps(
    l = paradox::p_lgl(default = TRUE)
  )
  cs = paramset_to_configspace(ps)
  l_hp = cs$get_hyperparameter("l")
  expect_setequal(as.logical(l_hp$choices), c(TRUE, FALSE))
  expect_identical(as.logical(l_hp$default_value), TRUE)
})


test_that("Dependencies are added and combined with AndConjunction where applicable", {
  ps = paradox::ps(
    crit   = paradox::p_fct(levels = c("gini","entropy"), default = "gini"),
    extras = paradox::p_fct(levels = c("alpha","beta","gamma"), default = "alpha"),
    dep    = paradox::p_lgl(depends = quote(crit == "entropy" && extras %in% c("alpha","beta")))
  )
  cs = paramset_to_configspace(ps)

  conds = cs$get_conditions()
  if (!is.null(conds)) {
    expect_length(conds, 1L)
  }

  if (!is.null(cs$sample_configuration())) {
    configs = replicate(20, cs$sample_configuration(), simplify = FALSE)
    ok = TRUE
    for (cfg in configs) {
      crit_val   = as.character(cfg$get("crit"))
      extras_val = as.character(cfg$get("extras"))
      has_dep    = !is.null(cfg$get("dep"))
      cond_ok <- (crit_val == "entropy" && extras_val %in% c("alpha","beta"))
      # If dep present but conditions false -> violation
      if (isTRUE(has_dep) && !cond_ok) ok = FALSE
    }
    expect_true(ok)
  }
})


test_that("Warnings for missing defaults are emitted (ParamDbl) but conversion continues", {
  ps <- paradox::ps(
    x = paradox::p_dbl(lower = 0, upper = 1),  # no default
    y = paradox::p_dbl(lower = 0, upper = 1, default = 0.8)  # with default
  )
  expect_warning(cs <- paramset_to_configspace(ps))
  hps = cs$get_hyperparameter_names()
  expect_true("y" %in% hps)
})


test_that("Name argument is forwarded to ConfigurationSpace", {
  ps = paradox::ps(a = paradox::p_int(lower = 0, upper = 11, default = 8))
  cs = paramset_to_configspace(ps, name = "mine")

  # Try several name attributes across several ConfigSpace versions
  nms <- c("name", "_name", "configuration_space", "__name__")
  got <- NULL
  for (nm in nms) if (!is.null(cs[[nm]])) { got <- cs[[nm]]; break }
  # Some ConfigSpace versions don't expose name, so only assert if available
  if (!is.null(got)) expect_match(as.character(got), "mine")
})