library(mlr3)
lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "helper_autotest", full.names = TRUE), source)
