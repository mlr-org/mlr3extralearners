# if (!ci_has_env("PARAMTEST")) {
get_stage("install") %>%
    add_step(step_install_deps())

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(testthat::test_check(
      package = "mlr3extralearners",
      filter = ci_get_env()),
    stop_on_failure = TRUE))

#} else if (ci_has_env("PARAMTEST")) {
#  # PARAMTEST
#  get_stage("install") %>%
#    add_step(step_install_deps())

#  get_stage("script") %>%
#    add_code_step(remotes::install_dev("mlr3")) %>%
#    add_code_step(testthat::test_dir(system.file("paramtest",
#      package = "mlr3extralearners"),
#    stop_on_failure = TRUE))
#}
