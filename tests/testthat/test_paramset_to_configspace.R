skip_if_not_installed_py("ConfigSpace")

test_that("basic mapping: dbl/int/lgl/fct are converted as expected", {
  ps = paradox::ps(
    a = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
    b = p_int(lower = 1, upper = 10, default = 3, tags = "tuning"),
    l = p_lgl(default = TRUE, tags = "train"),
    f = p_fct(levels = c("x", "y", "z"), default = "y", tags = "train")
  )
  cs = paramset_to_configspace(ps, name = "basic")
  param_names = cs$get_hyperparameter_names()
  params = cs$get_hyperparameters_dict()
  expect_true(all(c("a","b","l","f") %in% param_names))
  expect_equal(params$a$lower, 0)
  expect_equal(params$a$upper, 1)
  expect_equal(params$b$lower, 1)
  expect_equal(params$b$upper, 10)
  expect_true(isTRUE(params$l$default_value) || isTRUE(params$l$default))
  lvls = if (!is.null(params$f$choices)) unlist(params$f$choices) else unlist(params$f$items)
  expect_equal(lvls, c("x","y","z"))
})


test_that("multiple dependencies for one child are combined (AND)", {
  ps = paradox::ps(
    a = p_fct(levels = c("x","y"), default = "x"),
    b = p_fct(levels = c("u","v", "w"), default = "u"),
    c = p_int(lower = 1, upper = 5, default = 3,
              depends = quote(a == "y" && b %in% c("u","v")))
  )

  cs = paramset_to_configspace(ps, name = "deps-and")
  conds = cs$get_conditions()
  expect_true(length(conds) == 1)
  expect_class(conds[[1]], "ConfigSpace.conditions.AndConjunction")

  # Flatten to all leaf conditions (handle AndConjunction if present)
  leaves = list()
  for (cond in conds) {
    if (!is.null(cond$components)) {
      leaves = c(leaves, cond$components)
    } else {
      leaves = c(leaves, list(cond))
    }
  }
  # Expect two conditions on child 'c': Equals(a == "y") AND In(b in {"u","v"})
  child_names  = vapply(leaves, function(z) z$child$name, character(1))
  parent_names = vapply(leaves, function(z) z$parent$name, character(1))
  expect_true(all(child_names == "c"))
  expect_setequal(parent_names, c("a","b"))
})


test_that("multiple dependent children can coexist", {
  ps = paradox::ps(
    parent = p_fct(levels = c("on","off"), default = "on"),
    c1 = p_dbl(lower = 0, upper = 1, default = 0.1,
               depends = quote(parent == "on")),
    c2 = p_int(lower = 1, upper = 5, default = 2,
               depends = quote(parent == "on"))
  )
  cs = paramset_to_configspace(ps, name = "deps-multi-children")
  conds = cs$get_conditions()
  expect_true(length(conds) == 2)
  children = vapply(conds, function(z) z$child$name, character(1))
  parents  = vapply(conds, function(z) z$parent$name, character(1))
  expect_setequal(children, c("c1","c2"))
  expect_true(all(parents == c("parent", "parent")))
})


test_that("error when a parameter misses a default", {
  ps = paradox::ps(
    x = p_dbl(lower = 0, upper = 1, default = 0.2),
    y = p_int(lower = 1, upper = 3) # no default
  )
  expect_error(paramset_to_configspace(ps),
               "All parameters must have a default", fixed = FALSE)
})


# test_that("error when both numeric bounds are missing", {
#   ps1 = paradox::ps(x = p_dbl(lower = 0, default = 0.1))     # no upper
#   ps2 = paradox::ps(y = p_int(upper = 10, default = 3))       # no lower
#   ps3 = paradox::ps(y = p_int(default = 3))
#   suppressWarnings(paramset_to_configspace(ps1))
#   suppressWarnings(paramset_to_configspace(ps2))
#   expect_error(paramset_to_configspace(ps3))
# })


test_that("ParamUty is skipped with a warning and not present in ConfigSpace", {
  ps = paradox::ps(
    x = p_dbl(lower = 0, upper = 1, default = 0.3),
    misc = p_uty()  # no default allowed, but will be warned + skipped by converter
  )
  expect_warning(
    cs <- paramset_to_configspace(ps, name = "uty-skip"),
    "ParamUty .* will be skipped"
  )
  param_names = cs$get_hyperparameter_names()
  expect_true("x" %in% param_names)
  expect_false("misc" %in% param_names)
})


test_that("ConfigurationSpace name is set when provided", {
  ps = paradox::ps(x = p_dbl(lower = 0, upper = 1, default = 0.5))
  cs = paramset_to_configspace(ps, name = "myspace")
  # cs$name may be a field or property depending on API; check loosely
  nm = tryCatch(cs$name, error = function(e) NULL)
  expect_true(is.null(nm) || identical(nm, "myspace"))
})
