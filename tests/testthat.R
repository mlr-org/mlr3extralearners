if (requireNamespace("testthat", quietly = TRUE)) {
  library("testthat")
  library("mlr3extralearners")
  test_check("mlr3extralearners")
}
