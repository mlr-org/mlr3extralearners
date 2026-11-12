skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("marshal_python_model and unmarshal_python_model roundtrip", {
  expect_true(run_py_test("botorch", function() {
    model = structure(list(fitted = reticulate::r_to_py(list(a = 1L)), meta = "x"), class = "py_test_model")

    marshaled = mlr3extralearners:::marshal_python_model(model, slot = "fitted")
    expect_class(marshaled, c("py_test_model_marshaled", "marshaled"))
    expect_raw(marshaled$marshaled)
    expect_equal(marshaled$meta, "x")
    expect_equal(marshaled$packages, "mlr3extralearners")
    # no python object is left in the marshaled model
    expect_equal(unserialize(serialize(marshaled, NULL)), marshaled)

    unmarshaled = mlr3extralearners:::unmarshal_python_model(marshaled, slot = "fitted")
    expect_class(unmarshaled, "py_test_model")
    expect_named(unmarshaled, c("fitted", "meta"))
    expect_equal(reticulate::py_to_r(unmarshaled$fitted), list(a = 1L))
    expect_equal(unmarshaled$meta, "x")
  }))
})
