
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

  get_stage("install") %>%
    add_step(step_install_deps(dependencies = c("Depends", "Imports"))) %>%
    add_step(step_install_github("mlr-org/mlr3pkgdowntemplate"))

  get_stage("before_deploy") %>%
    add_step(step_setup_ssh()) %>%
    add_step(step_setup_push_deploy(
      path = "docs",
      branch = "gh-pages",
      orphan = TRUE,
      remote_url = NULL,
      checkout = TRUE
    ))

  get_stage("deploy") %>%
    add_step(step_build_pkgdown(examples = FALSE)) %>%
    add_step(step_do_push_deploy())
}
