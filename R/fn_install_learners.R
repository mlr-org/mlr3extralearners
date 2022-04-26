#' @title Install Learner Dependencies
#' @description Install required dependencies for specified learners. Works for packages on
#' GitHub and CRAN, otherwise must be manually installed.
#' @param .keys (`character()`) \cr Keys passed to [mlr_learners][mlr3::mlr_learners] specifying
#' learners to install.
#' @param repos (`character(1)`) \cr Passed to [utils::install.packages].
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

    lrn = suppressWarnings(mlr3::lrn(.key))
    pkgs = lrn$packages
    # get uninstalled packages
    cran = pkgs[!grepl("/", pkgs)]
    gh = setdiff(pkgs, cran)

    cran = cran[!map_lgl(cran, requireNamespace, quietly = TRUE)]
    if (length(cran)) utils::install.packages(cran, repos = repos, ...)

    gh = gh[!map_lgl(gh, function(.x) {
      requireNamespace(strsplit(.x, "/", TRUE)[[1]][2], quietly = TRUE)
    })]
    if (length(gh)) sapply(gh, remotes::install_github, upgrade = "always", ...)
  })

  invisible(NULL)
}
