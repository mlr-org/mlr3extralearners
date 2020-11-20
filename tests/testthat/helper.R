library(checkmate)
library(mlr3)
# install for actions tests
install.packages("mlr3proba", repos = "https://cloud.r-project.org")
library(mlr3proba)

lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

lapply(list.files(system.file("testthat", package = "mlr3proba"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)
