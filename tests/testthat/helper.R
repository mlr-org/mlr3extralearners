library(checkmate)
library(mlr3)

lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

load_tests = function(key) {
  class = subset(list_mlr3learners(), id == key)$class

  if (class %in% c("surv", "dens")) {
    if (!requireNamespace("mlr3proba", quietly = TRUE)) {
      remotes::install_github("mlr-org/mlr3proba", upgrade = "always")
    }
    invisible(lapply(list.files(system.file("testthat", package = "mlr3proba"),
                      pattern = "^helper.*\\.[rR]", full.names = TRUE), source))
  } else if (class == "clust") {
    if (!requireNamespace("mlr3cluster", quietly = TRUE)) {
      remotes::install_github("mlr-org/mlr3cluster", upgrade = "always")
    }
    invisible(lapply(list.files(system.file("testthat", package = "mlr3cluster"),
                      pattern = "^helper.*\\.[rR]", full.names = TRUE), source))
  }

}