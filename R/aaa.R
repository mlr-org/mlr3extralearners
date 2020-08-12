lrns_dict = mlr3misc::Dictionary$new()

#' @title List Learners in mlr3verse
#' @description Lists all learners, properties, and associated packages in a table that can be
#' filtered and queried.
#' @param select `character()` \cr Passed to [data.table::subset].
#' @param filter `list()` \cr Named list of conditions to filter on, names correspond to column
#' names in table.
#' @examples
#' list_mlr3learners(hide_cols = c("properties", "feature_types"),
#'       filter = list(class = "surv", predict_types = "distr"))
#' @export
list_mlr3learners = function(select = NULL, filter = NULL) {

  load(file.path(system.file("inst/table", package = "mlr3extralearners"), ".mlr3learners.rds"))
  dt = copy(.mlr3learners)
  rm(.mlr3learners)

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
    if (!is.null(filter$required_package)) {
      dt = subset(dt, required_package %in% filter$required_package)
    }
    if (!is.null(filter$properties)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$properties,
                                        function(.x) any(filter$properties %in% .x)))
    }
    if (!is.null(filter$feature_types)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$feature_types,
                                        function(.x) any(filter$feature_types %in% .x)))
    }
    if (!is.null(filter$predict_types)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$predict_types,
                                        function(.x) any(filter$predict_types %in% .x)))
    }
  }

  if (!is.null(select)) {
    dt = subset(dt, select = select)
  }

  return(dt)
}

#' @title Install Learner Dependencies
#' @description Install required dependencies for specified learners.
#' @param .keys `character()` \cr Keys passed to [mlr_learners][mlr3::mlr_learners] specifying
#' learners to install.
#' @param ... `ANY` \cr Additional options to pass to [install.packages].
#' @examples
#' install_learners(c("regr.gbm", "classif.kknn"))
#' @export
install_learners = function(.keys, ...) {
  pkg = as.character(unlist(list_mlr3learners(filter = list(id = .keys),
                                              select = "required_package")))
  utils::install.packages(pkg, ...)
}

#' @title Syntactic Sugar for Learner Construction
#' @description Overloads [mlr3::lrn] to automatically detect if required packages are installed.
#' @param .key `(character(1))` \cr Key passed to [mlr_learners][mlr3::mlr_learners] to retrieve
#' the learner.
#' @param ... `ANY` \cr Passed to [mlr3::lrn]
#' @export
lrn = function(.key, ...) {
  pkg = as.character(unlist(list_mlr3learners(filter = list(id = .key),
                                              select = "required_package")))
  tryCatch(require(pkg, character.only = TRUE),
           warning = function(w)
             mlr3misc::stopf('%s is not installed, please run `install_learners("%s")` to install all required packages.', pkg, .key))

  mlr3misc::dictionary_sugar_get(mlr_learners, .key, ...)
}

#' @rdname lrn
#' @param .keys `(character())` \cr Keys passed to [mlr_learners][mlr3::mlr_learners] to retrieve
#' the learners.
#' @param ... `ANY` \cr Passed to [mlr3::lrns]
#' @export
lrns = function(.keys, ...) {
  pkg = as.character(unlist(list_mlr3learners(filter = list(id = .keys),
                                              select = "required_package")))

  for (i in seq_along(pkg)) {
    tryCatch(require(pkg[[i]], character.only = TRUE),
             warning = function(w)
               mlr3misc::stopf('%s is not installed, please run `install_learners("%s")` to install all required packages.', pkg[[i]], .keys[[i]]))
  }

  mlr3misc::dictionary_sugar_mget(mlr_learners, .keys, ...)
}
