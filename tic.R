buid_learner_table = function() {
  library(mlr3)
  library(mlr3learners)
  library(mlr3extralearners)
  library(mlr3proba)

  keys = mlr3::mlr_learners$keys()
  all_lrns = suppressWarnings(mlr3::lrns(keys))
  .mlr3learners = data.table::data.table(t(data.table::rbindlist(list(
    mlr3misc::map(all_lrns, function(.x) {
      idsplt = strsplit(.x$id, ".", TRUE)[[1]]
      list(idsplt[[2]], idsplt[[1]], .x$id, strsplit(.x$man, "::", TRUE)[[1]][1],
           .x$packages[1], .x$properties, .x$feature_types, .x$predict_types)
    })))))

  colnames(.mlr3learners) = c("name", "class", "id", "mlr3_package", "required_package",
                              "properties", "feature_types", "predict_types")
  .mlr3learners[, 1:4] = lapply(.mlr3learners[, 1:4], as.character)
  save(.mlr3learners,
       file = file.path(system.file("inst/data", package = "mlr3extralearners"),
                        ".mlr3learners.rds"))
}

if (!ci_has_env("PARAMTEST")) {
  get_stage("install") %>%
    add_step(step_install_deps())

  get_stage("script") %>%
    add_code_step(remotes::install_dev("mlr3")) %>%
    add_code_step(devtools::test(filter = tic::ci_get_env("PKG"),
                                 stop_on_failure = TRUE))

  get_stage("after_success") %>%
    add_code_step(buid_learner_table())

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
}
