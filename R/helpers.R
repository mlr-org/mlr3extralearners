toproper = function(str, split = " ", fixed = TRUE) {
  str = strsplit(str, split, fixed)
  str = lapply(str, function(x) {
    paste0(toupper(substr(x, 1, 1)), tolower(substr(x, 2, 1000)), collapse = split)
  })
  return(unlist(str))
}

# a less robust but faster version of devtools::as.package
pkg_root = function(path = ".") {
  path = normalizePath(path)

  if (!grepl("mlr3extralearners", path)) {
    stopf("Path (%s) is not in mlr3extralearners directory.")
  }

  while (TRUE) {
    if (file.exists(file.path(path, "DESCRIPTION"))) {
      return(path)
    } else {
      path = dirname(path)
    }
  }
}

create_learner = function(pkg = ".", classname, algorithm, type, key = tolower(classname), package,
                          caller, param_set, param_vals = list(), feature_types, predict_types,
                          properties, importance = FALSE, oob_error = FALSE, references = FALSE) {

  path = pkg_root(pkg)

  checkmate::assert_choice(type, names(mlr3::mlr_reflections$task_properties))
  Type = toproper(type)

  checkmate::assert_character(key, len = 1)
  if (paste(type, key, sep = ".") %in% names(mlr_learners$items)) {
    stopf(
      "%s already exists in learner dictionary, please choose a different key.",
      paste(type, key, sep = "."))
  }

  algorithm = toproper(checkmate::assert_character(algorithm, len = 1))
  classname = toproper(checkmate::assert_character(classname, len = 1))
  checkmate::assert_character(caller, len = 1)

  assert_param_set(param_set)
  checkmate::assert_list(param_vals)

  checkmate::assert_subset(feature_types, unname(mlr3::mlr_reflections$task_feature_types))
  checkmate::assert_subset(predict_types,
                           names(mlr3::mlr_reflections$learner_predict_types[[type]]))
  checkmate::assert_subset(properties, mlr3::mlr_reflections$learner_properties[[type]])
  checkmate::assert_flag(importance)
  checkmate::assert_flag(oob_error)
  checkmate::assert_flag(references)

  type_lng = switch(type,
                    classif = "Classification",
                    regr = "Regression",
                    surv = "Survival",
                    dens = "Density")

  # ADD LEARNER
  cat(sprintf("Creating %s from template.\n", paste(type, key, sep = "_")))
  file_name_lrn = file.path(path, "R", paste0("learner_", type, "_", key, ".R"))
  x = file.copy(file.path(path, "templates", "learner_template.R"),
                to = file_name_lrn, overwrite = FALSE)
  if (!x) {
    utils::file.edit(file_name_lrn)
    stopf("File %s already exists. Manually edit the file.", file_name_lrn)
  }
  x = readLines(file_name_lrn)
  x = gsub("<algorithm>", algorithm, x)
  x = gsub("<Type_lng>", type_lng, x)
  x = gsub("<type>", type, x)
  x = gsub("<Type>", Type, x)
  x = gsub("<key>", key, x)
  x = gsub("<package>", package, x)
  x = gsub("<caller>", caller, x)
  x = gsub("<Classname>", classname, x)
  if (length(param_vals)) {
    x = gsub("<param_vals>", paste0(names(param_vals), " = ",
                                    unlist(param_vals), collapse = ", "), x)
  }
  x = gsub("<feature_types>", paste0(feature_types, collapse = '", "'), x)
  x = gsub("<predict_types>", paste0(predict_types, collapse = '", "'), x)
  x = gsub("<properties>", paste0(properties, collapse = '", "'), x)
  # fix commas
  if (importance & !oob_error) {
    x[which(grepl("importance = function()", x))] = "    importance = function() { }"
  } else if (!importance & !oob_error) {
    x[which(grepl("man =", x)) + 2] = "    }"
  }
  add_str = c()
  if (!importance) {
    x = x[-seq.int(
      which(grepl("FIXME - ADD IMPORTANCE METHOD HERE", x)),
      which(grepl("importance = function()", x)))]
  } else {
    add_str = c(add_str, "importance method")
  }
  if (!oob_error) {
    x = x[-seq.int(
      which(grepl("FIXME - ADD OOB_ERROR METHOD HERE", x)),
      which(grepl("oob_error = function()", x)))]
  } else {
    add_str = c(add_str, "oob_error method")
  }
  if (!references) {
    x = x[-seq.int(which(grepl("@references", x)), which(grepl("@references", x)) + 1)]
  } else {
    add_str = c(add_str, "references")
  }
  cat(x, file = file_name_lrn, sep = "\n")

  # ADD TESTS
  cat(sprintf("Creating %s tests from template.\n", paste(type, key, sep = "_")))
  file_name_test = file.path(path, "tests", "testthat", paste0("test_", type, "_", key, ".R"))
  x = file.copy(file.path(path, "templates", "test_template.R"), to = file_name_test,
                overwrite = FALSE)
  if (!x) {
    utils::file.edit(file_name_test)
    stopf("File %s already exists. Manually edit the file.", file_name_test)
  }
  x = readLines(file_name_test)
  x = gsub("<type>", type, x)
  x = gsub("<Type>", Type, x)
  x = gsub("<key>", key, x)
  x = gsub("<Classname>", classname, x)
  cat(x, file = file_name_test, sep = "\n")

  # ADD PARAM TESTS
  cat(sprintf("Creating %s paramtests from template.\n", paste(type, key, sep = "_")))
  file_name_ptest = file.path(path, "inst", "paramtest", paste0("test_paramtest_", type, "_",
                                                                key, ".R"))
  x = file.copy(file.path(path, "templates", "param_test_template.R"), to = file_name_ptest,
                overwrite = FALSE)
  if (!x) {
    utils::file.edit(file_name_ptest)
    stopf("File %s already exists. Manually edit the file.", file_name_ptest)
  }
  x = readLines(file_name_ptest)
  x = gsub("<type>", type, x)
  x = gsub("<key>", key, x)
  x = gsub("<package>", package, x)
  x = gsub("<caller>", caller, x)
  cat(x, file = file_name_ptest, sep = "\n")

  # CREATE YAMLS
  cat(sprintf("Creating %s YAML files from template.\n", paste(type, key, sep = "_")))
  file_name = file.path(path, ".github", "workflows", paste0("test_", key, ".yml"))
  x = file.copy(file.path(path, "templates", "test_template.yml"), to = file_name,
                overwrite = FALSE)
  if (!x) {
    utils::file.edit(file_name)
    stopf("File %s already exists. Manually edit the file.", file_name)
  }
  x = readLines(file_name)
  x = gsub("<key>", key, x)
  cat(x, file = file_name, sep = "\n")

  file_name = file.path(path, ".github", "workflows", paste0("paramtest_", key, ".yml"))
  x = file.copy(file.path(path, "templates", "paramtest_template.yml"), to = file_name,
                overwrite = FALSE)
  if (!x) {
    utils::file.edit(file_name)
    stopf("File %s already exists. Manually edit the file.", file_name)
  }
  x = readLines(file_name)
  x = gsub("<key>", key, x)
  cat(x, file = file_name, sep = "\n")

  # UPDATE DESCRIPTION
  cat(sprintf("Adding %s to DESCRIPTION Suggests.\n\n", package))
  x = readLines(file.path(path, "DESCRIPTION"))
  if (!any(grepl(package, x))) {
    x = gsub("testthat", paste0(c("testthat", package), collapse = ",\n    "), x)
  }
  cat(x, file = file.path(path, "DESCRIPTION"), sep = "\n")

  # UPDATE USER
  cat(sprintf(
    "Now manually do the following:
  1) For %s:
    a) Add .train and .predict private methods.
    b) Check generated Learner file carefully.
    %s.
  2) For %s:
    a) Check tests pass once learner is complete.
    b) Optionally modify learner parameter values.
  3) For %s:
    a) Check tests pass once learner is complete.
    b) Optionally add further tests for all functions called in your .train and .predict methods.
  4) Run:
    a) devtools::document(roclets = c('rd', 'collate', 'namespace'))
    b) styler::style_pkg(style = styler::mlr_style)
    c) usethis::use_tidy_description()
    d) lintr::lint_package()
  5) Open a pull request to ",
    file_name_lrn, ifelse(length(add_str), paste("c) Add", paste0(add_str, collapse = ", ")), ""),
    file_name_test, file_name_ptest))


  # OPEN FILES
  utils::file.edit(c(file_name_lrn, file_name_test, file_name_ptest))
}
