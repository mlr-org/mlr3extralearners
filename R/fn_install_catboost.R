#' Helper function to install catboost
#' @title Install catboost
#' @param version `(character(1))`
#' Version to install, if `NULL` installs latest
#' @param os `(character(1))` \cr
#' Operating system to install on, if `NULL` automatically detected
#' @param install_required `(logical(1))` \cr
#' If `TRUE` (default) and version is `NULL` then installs {curl} and
#' {jsonlite} if not already installed.
#' @param INSTALL_opts `(character())` \cr
#' Passed to [devtools::install_url]
#' @param ... `ANY` \cr
#' Other arguments passed to [devtools::install_url]
#' @export
install_catboost <- function(version = NULL, os = NULL,
                             install_required = TRUE,
                             INSTALL_opts = c("--no-multiarch",
                                              "--no-test-load"), ...) {

  if (is.null(version)) {
    if (requireNamespace("jsonlite", quietly = TRUE) && install_required) {
      utils::install.packages("jsonlite", repos = "https://cloud.r-project.org")
    }

    if (requireNamespace("curl", quietly = TRUE) && install_required) {
      utils::install.packages("curl", repos = "https://cloud.r-project.org")
    }

    version <-  jsonlite::fromJSON(
        "https://api.github.com/repos/catboost/catboost/releases"
    )$tag_name[1]
  }

  version <- gsub("v", "", version)

  if (is.null(os)) {
    os <- as.character(Sys.info()["sysname"])
  }

  url <- sprintf(
    "https://github.com/catboost/catboost/releases/download/v%s/catboost-R-%s-%s.tgz",
    version, os, version)

  devtools::install_url(url, INSTALL_opts = INSTALL_opts, ...)
}
