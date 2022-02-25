#' @title Install randomForestSRC from GitHub
#' @description
#' randomForestSRC is (probably temporarily) removed from CRAN. This function installs the
#' latest version from GitHub.
#' @export
install_rfsrc = function() {
  remotes::install_github("kogalur/randomForestSRC", subdir = "src/main/resources/cran")
}
