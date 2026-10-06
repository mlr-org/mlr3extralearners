# Helper functions for H2O

# Connect to an H2O cluster, starting a local one on 127.0.0.1 if none is running.
# Suppresses the verbose startup output and the harmless warning that the cluster
# version is outdated, which CRAN's h2o build emits because it lags behind the latest stable release.
init_h2o = function() {
  if (inherits(try(h2o::h2o.getConnection(), silent = TRUE), "H2OConnection")) {
    return(invisible(NULL))
  }
  withCallingHandlers(
    invisible(capture.output(h2o::h2o.init(ip = "127.0.0.1"))),
    warning = function(w) {
      if (grepl("cluster version is", conditionMessage(w), fixed = TRUE)) {
        invokeRestart("muffleWarning")
      }
    }
  )
}
