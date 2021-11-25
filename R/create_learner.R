# nocov start
#' @title Create a New Learner
#' @description Helper function to generate all required files, and fill in fields, for new
#' learners.
#' @details This function does the following:
#'
#' 1. Creates a learner_package_type_key.R file for the implemented learner.
#' 1. Creates a test_package_type_key.R file for unit testing the learner.
#' 1. Creates a test_paramtest_package_type_key.R file for testing correct implementation of
#' learner parameters.
#' 1. Creates a test_package.yml file for running unit tests in GitHub actions
#' 1. Automatically completes the test (2), and yaml files (4)
#' 1. Automatically adds the learner package to the DESCRIPTION file
#' 1. For the learner file all fields are automatically filled but methods must be manually added
#' along with the parameter set, this is clearly marked up in the files.
#'
#' To create a learner you must follow these steps:
#'
#' 1. Run this function with as many arguments as possible
#' 1. Manually add `.train`, `.predict` private methods for the learner, as well as adding the
#' `param_set` and possibly `param_vals`. If properties include `"oob_error"` and/or `"importance"`
#' then add these public methods manually.
#' 1. Check the paramtests and unit tests pass locally.
#' 1. Run
#'     1. `devtools::document(roclets = c('rd', 'collate', 'namespace'))`
#'     1. `styler::style_pkg(style = styler::mlr_style)` (you may need to first run `remotes::`)
#'     1. `usethis::use_tidy_description()`
#'     1. `lintr::lint_package()`
#' 1. Open a pull request to \url{https://github.com/mlr-org/mlr3extralearners/pulls} with the new
#' learner template.
#'
#' @param pkg `character(1)` \cr Path to the mlr3extralearners package.
#' @param classname `character(1)` \cr Suffix for R6 class name passed to LearnerTypeclassname.
#' @param algorithm `character(1)` \cr Brief description of algorithm for documentation title.
#' @param type `character(1)` \cr See `mlr3::mlr_reflections$task_types$type`.
#' @param key `character(1)` \cr id for learner, if not provided defaults to the `classname`
#' in all lower case.
#' @param package `character(1)` \cr Package from which the learner is implemented, defaults to
#' the `classname` in all lower case.
#' @param caller `character(1)` \cr Training function called from the implemented package.
#' @param feature_types `character()` \cr Feature types that can be handled by the learner,
#' see `mlr3::mlr_reflections$task_feature_types`.
#' @param predict_types `character()` \cr Prediction types that can be made by the learner,
#' see `mlr3::mlr_reflections$learner_predict_types`.
#' @param properties `character()` \cr Properties that can be handled by the learner,
#' see `mlr3::mlr_reflections$learner_properties`.
#' @param references `logical(1)` \cr Set to `TRUE` if you want to add references for the learner.
#' @param gh_name `character(1)` \cr Your GitHub handle, used to add you as the maintainer of
#' the learner.
#'
#' @examples
#' \dontrun{
#' # Simpler linear regression example
#' create_learner(
#'  classname = "LM",
#'  algorithm = "linear regression",
#'  type = "regr",
#'  package = "stats",
#'  caller = "lm",
#'  feature_types = c("logical", "integer", "numeric", "factor"),
#'  predict_types = c("response", "se"),
#'  properties = "weights",
#'  gh_name = "RaphaelS1"
#' )
#'
#' # Slightly more complex random forest learner
#' create_learner(
#'  classname = "RandomForestSRC",
#'  algorithm = "random forest",
#'  type = "surv",
#'  package = "randomForestSRC",
#'  caller = "rfsrc",
#'  feature_types = c("logical", "integer", "numeric", "factor"),
#'  predict_types = c("crank", "distr"),
#'  properties = c("importance", "missings", "oob_error", "weights"),
#'  references = TRUE,
#'  gh_name = "RaphaelS1"
#' )
#' }
#' @export
create_learner = function(pkg = ".", classname, algorithm, type, key = tolower(classname),
                          package = tolower(classname), caller,
                          feature_types, predict_types, properties = NULL,
                          references = FALSE, gh_name) {
  path = pkg_root(pkg)
  if (!grepl("mlr3extralearners", path, fixed = TRUE)) {
    mlr3misc::stopf("mlr3extralearners is not in 'path' (%s), set `pkg` argument to the mlr3extralearners directory.", path) # nolint
  }

  assert_choice(type, names(mlr3::mlr_reflections$task_properties))
  Type = toproper(type)

  assert_character(key, len = 1)
  if (paste(type, key, sep = ".") %in% names(mlr_learners$items)) {
    mlr3misc::stopf(
      "%s already exists in learner dictionary, please choose a different key.",
      paste(type, key, sep = "."))
  }

  algorithm = toproper(assert_character(algorithm, len = 1))
  classname = toproper(assert_character(classname, len = 1))
  assert_character(caller, len = 1)
  assert_character(gh_name, len = 1)

  assert_subset(feature_types, unname(mlr3::mlr_reflections$task_feature_types))
  assert_subset(predict_types,
                           names(mlr3::mlr_reflections$learner_predict_types[[type]]))
  assert_subset(properties, mlr3::mlr_reflections$learner_properties[[type]])
  importance = "importance" %in% properties
  oob_error = "oob_error" %in% properties
  assert_flag(references)

  type_lng = switch(type,
                    classif = "Classification",
                    regr = "Regression",
                    surv = "Survival",
                    dens = "Density")

  # ADD LEARNER
  file_name_lrn = file.path(path, "R", paste0("learner_", package, "_", type, "_", key, ".R"))
  x = file.copy(file.path(path, "templates", "learner_template.R"),
                to = file_name_lrn, overwrite = FALSE)
  add_str = c()
  if (!x) {
    mlr3misc::warningf("File %s already exists. Manually edit the file.", file_name_lrn)
  } else {
    mlr3misc::catf("Creating %s from template.\n", paste(type, key, sep = "_"))
    x = readLines(file_name_lrn)
    x = gsub("<algorithm>", algorithm, x)
    x = gsub("<Type_lng>", type_lng, x)
    x = gsub("<type>", type, x)
    x = gsub("<Type>", Type, x)
    x = gsub("<key>", key, x)
    x = gsub("<package>", package, x)
    x = gsub("<caller>", caller, x)
    x = gsub("<Classname>", classname, x)
    x = gsub("<gh_name>", gh_name, x)
    x = gsub("<feature_types>", paste0(feature_types, collapse = '", "'), x)
    x = gsub("<predict_types>", paste0(predict_types, collapse = '", "'), x)
    if (length(properties)) {
      x = gsub("<properties>", paste0(properties, collapse = '", "'), x)
    } else {
      x = x[-which(grepl("<properties>", x))]
    }
    # fix commas
    if (importance & !oob_error) {
      x[which(grepl("importance = function()", x))] = "    importance = function() { }"
    } else if (!importance & !oob_error) {
      x[which(grepl("man =", x)) + 2] = "    }"
    }
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
  }


  # ADD TESTS
  file_name_test = file.path(path, "tests", "testthat", paste0("test_", package, "_", type, "_",
                                                               key, ".R"))
  x = file.copy(file.path(path, "templates", "test_template.R"), to = file_name_test,
                overwrite = FALSE)
  if (!x) {
    mlr3misc::warningf("File %s already exists. Manually edit the file.", file_name_test)
  } else {
    mlr3misc::catf("Creating %s tests from template.\n", paste(type, key, sep = "_"))
    x = readLines(file_name_test)
    x = gsub("<type>", type, x)
    x = gsub("<Type>", Type, x)
    x = gsub("<key>", key, x)
    x = gsub("<Classname>", classname, x)
    cat(x, file = file_name_test, sep = "\n")
  }

  # ADD PARAM TESTS
  file_name_ptest = file.path(path, "inst", "paramtest", paste0("test_paramtest_", package, "_",
                                                                type, "_", key, ".R"))
  x = file.copy(file.path(path, "templates", "param_test_template.R"), to = file_name_ptest,
                overwrite = FALSE)
  if (!x) {
    mlr3misc::warningf("File %s already exists. Manually edit the file.", file_name_ptest)
  } else {
    mlr3misc::catf("Creating %s paramtests from template.\n", paste(type, key, sep = "_"))
    x = readLines(file_name_ptest)
    x = gsub("<type>", type, x)
    x = gsub("<key>", key, x)
    x = gsub("<package>", package, x)
    x = gsub("<caller>", caller, x)
    cat(x, file = file_name_ptest, sep = "\n")
  }


  # CREATE YAML
  file_name = file.path(path, ".github", "workflows", paste0("test_", package, ".yml"))
  x = file.copy(file.path(path, "templates", "test_template.yml"), to = file_name,
                overwrite = FALSE)
  if (!x) {
    mlr3misc::messagef("Learner test YAML for {%s} already exists.", package)
  } else {
    mlr3misc::catf("Creating {%s} learner test YAML file from template.\n", package)
    x = readLines(file_name)
    x = gsub("<package>", package, x)
    cat(x, file = file_name, sep = "\n")
  }

  # UPDATE DESCRIPTION
  x = readLines(file.path(path, "DESCRIPTION"))
  if (!any(grepl(package, x))) {
    mlr3misc::catf("Adding %s to DESCRIPTION Suggests.\n\n", package)
    x = gsub("testthat", paste0(c("testthat", package), collapse = ",\n    "), x)
    cat(x, file = file.path(path, "DESCRIPTION"), sep = "\n")
  } else {
    mlr3misc::messagef("{%s} already exists in DESCRIPTION.", package)
  }

  # UPDATE USER
  # nolint start
  mlr3misc::catf(
    "Now manually do the following:
  1) For %s:
    a) Add .train and .predict private methods.
    b) Add param_set and if applicable param_vals.
    c) Check generated Learner file carefully.
    %s.
  2) For %s:
    a) Check tests pass once learner is complete.
    b) Optionally modify learner parameter values.
  3) For %s:
    a) Check tests pass once learner is complete.
    b) Optionally add further tests for all functions called in your .train and .predict methods.
  4) Run:
    a) devtools::document(roclets = c('rd', 'collate', 'namespace'))
    b) styler::style_pkg(style = styler::mlr_style) (run remotes::install_github('pat-s/styler@mlr-style') if needed).
    c) usethis::use_tidy_description()
    d) lintr::lint_package()
  5) Open a pull request to https://github.com/mlr-org/mlr3extralearners/pulls with the new learner template.",
    file_name_lrn, ifelse(length(add_str), paste("d) Add", paste0(add_str, collapse = ", ")), ""),
    file_name_test, file_name_ptest)
  # nolint end


  # OPEN FILES
  cat(file_name_lrn)
  x <- readline("\nDo you want to open the new files now? (Y/N) ")
  if (x == "Y") {
    utils::file.edit(c(file_name_lrn, file_name_test, file_name_ptest))
  } else {
    mlr3misc::catf(
      "\nEdit the following files when ready:\n %s",
      paste0(c(file_name_lrn, file_name_test, file_name_ptest),
        collapse = "\n "
      )
    )
  }

}
# nocov end
