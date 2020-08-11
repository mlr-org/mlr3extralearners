if (!ci_has_env("PARAMTEST")) {
  get_stage("install") %>%
    add_step(step_install_deps())

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(devtools::test(filter = tic::ci_get_env("PKG"),
                                 stop_on_failure = TRUE))

} else if (ci_has_env("PARAMTEST")) {
  # PARAMTEST
  get_stage("install") %>%
    add_step(step_install_deps())

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(testthat::test_dir(
      system.file("paramtest",
                  package = "mlr3extralearners"),
      filter = tic::ci_get_env("PKG"),
      stop_on_failure = TRUE))

} else if (ci_has_env("LRNTABLE")) {
  get_stage("install") %>%
    add_step(step_install_deps(dependencies = c("Depends", "Imports")))
}
