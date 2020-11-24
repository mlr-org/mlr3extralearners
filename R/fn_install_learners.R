#' @title Install Learner Dependencies
#' @description Install required dependencies for specified learners. Works for packages on
#' GitHub and CRAN, otherwise must be manually installed.
#' @param .keys `character()` \cr Keys passed to [mlr_learners][mlr3::mlr_learners] specifying
#' learners to install.
#' @param ... `ANY` \cr Additional options to pass to [utils::install.packages] or
#' [remotes::install_github].
#' @export
install_learners = function(.keys, ...) {
  sapply(.keys, function(.key) {
    lrn = mlr3::lrn(.key)
    pkgs = lrn$packages
    if (lrn$task_type %in% c("surv", "dens")) {
      pkgs = c(pkgs, "mlr3proba")
    } else if (lrn$task_type == "clust") {
      pkgs = c(pkgs, "mlr3cluster")
    }

    sapply(unique(pkgs), function(pkg) {
      if (grepl("/", pkg) && !requireNamespace(strsplit(pkg, "/", TRUE)[[1]][2], quietly = TRUE)) {
        remotes::install_github(pkg, upgrade = "always", ...)
      } else if (!grepl("/", pkg) && !requireNamespace(pkg, quietly = TRUE)) {
        utils::install.packages(pkg, ...)
      }
    })
  })
  invisible()
}