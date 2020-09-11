if (ci_get_env("TEST") == "Learner") {

  get_stage("install") %>%
    add_step(step_install_deps(dependencies = c("Depends", "Imports")))

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(devtools::test(filter = paste0("_", tic::ci_get_env("PKG"), "_"),
                                 stop_on_failure = TRUE))

} else if (ci_get_env("TEST") == "Param") {

  get_stage("install") %>%
    add_step(step_install_deps(dependencies = c("Depends", "Imports")))

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(testthat::test_dir(
      system.file("paramtest",
                  package = "mlr3extralearners"),
      filter = paste0("_", tic::ci_get_env("PKG"), "_"),
      stop_on_failure = TRUE))

} else {
  do_package_checks()

  get_stage("install") %>%
    add_step(step_install_github("mlr-org/mlr3pkgdowntemplate"))

  do_pkgdown()
}
