library(mlr3)
library(mlr3learners)
library(mlr3extralearners)
library(mlr3proba)
library(data.table)

keys = mlr_learners$keys()
all_lrns = suppressWarnings(mlr3::lrns(keys))

# creates data.table with id split into name and class, as well as original id;
# the mlr3 package that the learner is implemented in; external package it is interfaced from;
# learner properties; feature types; and predict types
#
# may look better as tibble, option to print given in below function
#
# ideally this table is abstracted from the user and they access it through the getter below
.mlr3learners = data.table(t(rbindlist(list(mlr3misc::map(all_lrns, function(.x) {
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
