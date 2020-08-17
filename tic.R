get_stage("install") %>%
  # only install packages required by all learners
  add_step(step_install_deps(dependencies = c("Depends", "Imports")))

if (ci_get_env("TEST") == "Learner") {

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(devtools::test(filter = tic::ci_get_env("PKG"),
                                 stop_on_failure = TRUE))

} else if (ci_get_env("TEST") == "Param") {

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(testthat::test_dir(
      system.file("paramtest",
                  package = "mlr3extralearners"),
      filter = tic::ci_get_env("PKG"),
      stop_on_failure = TRUE))

}
