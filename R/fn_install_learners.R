#' @title Install Learner Dependencies
#' @description Install required dependencies for specified learners. Works for packages on
#' GitHub and CRAN, otherwise must be manually installed.
#' @param .keys (`character()`) \cr Keys passed to [mlr_learners][mlr3::mlr_learners] specifying
#' learners to install.
#' @param repos (`character(1)`) \cr Passed to [install.packages].
#' @param ... (`ANY`) \cr Additional options to pass to [utils::install.packages] or
#' [remotes::install_github].
#' @export
install_learners = function(.keys, repos = "https://cloud.r-project.org", ...) {
  sapply(.keys, function(.key) {
    if (grepl("surv|dens", .key) && !requireNamespace("mlr3proba", quietly = TRUE)) {
      utils::install.packages("mlr3proba", repos = repos, ...)
    } else if (grepl("clust", .key) && !requireNamespace("mlr3cluster", quietly = TRUE)) {
      utils::install.packages("mlr3cluster", repos = repos, ...)
    }

    lrn = mlr3::lrn(.key)
    pkgs = lrn$packages

    sapply(unique(pkgs), function(pkg) {
      if (grepl("/", pkg) && !requireNamespace(strsplit(pkg, "/", TRUE)[[1]][2], quietly = TRUE)) {
        remotes::install_github(pkg, upgrade = "always", ...)
      } else if (!grepl("/", pkg) && !requireNamespace(pkg, quietly = TRUE)) {
        utils::install.packages(pkg, repos = repos, ...)
      }
    })
  })
  invisible(NULL)
}