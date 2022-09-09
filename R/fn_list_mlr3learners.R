#' @title List Learners in mlr3verse
#' @description Lists all learners, properties, and associated packages in a table that can be
#' filtered and queried.
#' @param select `character()` \cr Passed to [data.table::subset].
#' @param filter `list()` \cr Named list of conditions to filter on, names correspond to column
#' names in table.
#' @examples
#' list_mlr3learners(
#'   select = c("id", "properties", "predict_types"),
#'   filter = list(class = "surv", predict_types = "distr"))
#' @export
list_mlr3learners = function(select = NULL, filter = NULL) {
  require_namespaces(c("mlr3learners", "mlr3proba", "mlr3cluster"), quietly = TRUE)
  messagef("This will take a few seconds.")
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
  mlr3learners_table[mlr3learners_table$class == "clust", "mlr3_package"] = "mlr3cluster"
  mlr3learners_table

  dt = mlr3learners_table # for readability

  if (!is.null(filter)) {
    if (!is.null(filter$name)) {
      dt = subset(dt, name %in% filter$name)
    }
    if (!is.null(filter$class)) {
      dt = subset(dt, class %in% filter$class)
    }
    if (!is.null(filter$id)) {
      dt = subset(dt, id %in% filter$id)
    }
    if (!is.null(filter$mlr3_package)) {
      dt = subset(dt, mlr3_package %in% filter$mlr3_package)
    }
    if (!is.null(filter$required_packages)) {
      dt = subset(dt, required_packages %in% filter$required_packages)
    }
    if (!is.null(filter$properties)) {
      dt = subset(dt, map_lgl(
        dt$properties,
        function(.x) any(filter$properties %in% .x)))
    }
    if (!is.null(filter$feature_types)) {
      dt = subset(dt, map_lgl(
        dt$feature_types,
        function(.x) any(filter$feature_types %in% .x)))
    }
    if (!is.null(filter$predict_types)) {
      dt = subset(dt, map_lgl(
        dt$predict_types,
        function(.x) any(filter$predict_types %in% .x)))
    }
  }

  if (!is.null(select)) {
    dt = subset(dt, select = select)
  }

  return(dt)
}
