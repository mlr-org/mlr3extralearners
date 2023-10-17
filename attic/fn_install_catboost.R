#' @title Install catboost
#' @description
#' Helper function to install catboost.
#' Installs the latest version if no version is provided.
#'
#' @param version `(character(1))`
#'   Version to install, if `NULL` installs latest.
#'   Can e.g. be `"1.0.6"`.
#' @param INSTALL_opts `(character())` \cr
#'   Passed to [remotes::install_url]
#' @param ... `ANY` \cr
#'   Other arguments passed to [remotes::install_url]
#'
#' @export
install_catboost = function(version = NULL,
  INSTALL_opts = c("--no-multiarch", "--no-test-load"), ...) {

  if (is.null(version)) {
    require_namespaces(c("jsonlite", "curl", "remotes"))
  }

  version = jsonlite::fromJSON(
    "https://api.github.com/repos/catboost/catboost/releases"
  )$tag_name[1]
  version = gsub("v", "", version)
  os = as.character(Sys.info()["sysname"])

  url = sprintf(
    "https://github.com/catboost/catboost/releases/download/v%s/catboost-R-%s-%s.tgz",
    version, os, version
  )

  remotes::install_url(url, INSTALL_opts = INSTALL_opts, ...)
}
