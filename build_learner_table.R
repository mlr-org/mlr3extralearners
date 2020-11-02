install.packages(c("usethis", "remotes"))
remotes::install_github("mlr-org/mlr3learners", upgrade = "never")

library(mlr3)
library(mlr3learners)
library(mlr3extralearners)
library(mlr3proba)
library(mlr3cluster)

keys = mlr3::mlr_learners$keys()
all_lrns = suppressWarnings(mlr3::lrns(keys))
mlr3learners_table = data.table::data.table(t(data.table::rbindlist(list(
  mlr3misc::map(all_lrns, function(.x) {
    idsplt = strsplit(.x$id, ".", TRUE)[[1]]
    list(idsplt[[2]], idsplt[[1]], .x$id, strsplit(.x$man, "::", TRUE)[[1]][1],
         .x$packages, .x$properties, .x$feature_types, .x$predict_types)
  })))))
colnames(mlr3learners_table) = c("name", "class", "id", "mlr3_package", "required_packages",
                            "properties", "feature_types", "predict_types")
mlr3learners_table[, 1:4] = lapply(mlr3learners_table[, 1:4], as.character)
usethis::use_data(mlr3learners_table, internal = TRUE, overwrite = TRUE)
