# nocov start
#' @title Create a New Learner
#' @description
#' Helper function to create a new Learner.
#' For more details see the [mlr3book](https://mlr3book.mlr-org.com/extending.html).
#'
#' @param path (`character(1)`) Either a child directory to mlr3extralearners or to a writeable
#' file
#' where the learner is created (in this case no test-files are created).
#' learners.
#' @param classname (`character(1)`)\cr
#'   Suffix for R6 class name passed to LearnerType<classname>.
#' @param type (`character(1)`)\cr
#'   See `mlr3::mlr_reflections$task_types$type`.
#' @param key (`character(1)`)\cr
#'   Id for learner, if not provided defaults to the `classname` in all lower case.
#' @param package (`character(1)`)\cr
#'   Package from which the learner is implemented, defaults to the `classname` in all lower case.
#' @param caller `character(1)`\cr
#'   Training function called from the implemented package.
#' @param feature_types (`character()`)\cr
#'   Feature types that can be handled by the learner, see
#'   `mlr3::mlr_reflections$task_feature_types`.
#' @param predict_types ()`character()`)\cr
#'   Prediction types that can be made by the learner, see
#'   `mlr3::mlr_reflections$learner_predict_types`.
#' @param properties ()`character()`)\cr
#'   Properties that can be handled by the learner, see `mlr3::mlr_reflections$learner_properties`.
#' @param gh_name ()`character(1)`)\cr
#'   Your GitHub handle, used to add you as the maintainer of the learner.
#' @param label (`character(1)`)\cr
#'   Label for the learner.
#' @param data_formats (`character(1)`)\cr
#'   The data format the learner can deal with (see `mlr_reflections$data_formats`).
#'
#' @examples
#' \dontrun{
#' # Simpler linear regression example
#' create_learner(
#'   classname = "LM",
#'   type = "regr",
#'   package = "stats",
#'   caller = "lm",
#'   feature_types = c("logical", "integer", "numeric", "factor"),
#'   predict_types = c("response", "se"),
#'   properties = "weights",
#'   gh_name = "RaphaelS1",
#'   label = "Linear Regression"
#' )
#' }
#' @export
create_learner = function(path = ".", classname, type, key, package, caller,
  feature_types, predict_types, properties, gh_name, label, data_formats = "data.table",
  ask = TRUE) {
  path = normalizePath(path)
  in_package = grepl("mlr3extralearners", path)

  if (!in_package) {
    assert_true(file.exists(path) && !dir.exists(path))
    assert_true(all.equal(readLines(path), character(0)))
    messagef(
      paste0(
        "mlr3extralearners is not a parent directory of argument 'path'.\n",
        "Only the learner file will be created in empty file: %s."
      ), path
    )
  } else {
    path = pkg_root(path)
    assert_true(dir.exists(sprintf("%s/tests/testthat/", path)))
    assert_true(dir.exists(sprintf("%s/R/", path)))
    messagef(
      paste0(
        "mlr3extralearners is a parent directory of argument 'path'.\n",
        "The files will be added to the R-package."
      )
    )
  }

  if (ask && tolower(readline("Do you want to continue creating the files? (y/n)")) != "y") {
    return(NULL)
  }

  assert_character(label, all.missing = FALSE, len = 1L)
  assert_choice(data_formats, mlr3::mlr_reflections$data_formats)
  assert_choice(type, mlr3::mlr_reflections$task_types$type)
  Type = toproper(type)

  assert_character(key, len = 1)
  if (paste0(type, ".", key) %in% mlr_learners$keys()) {
    stopf(
      "%s already exists in learner dictionary, please choose a different key.",
      paste(type, key, sep = "."))
  }

  assert_character(classname, len = 1)
  assert_character(caller, len = 1)
  assert_character(gh_name, len = 1)

  assert_subset(feature_types, unname(mlr3::mlr_reflections$task_feature_types))
  assert_subset(predict_types,
    names(mlr3::mlr_reflections$learner_predict_types[[type]]))
  assert_subset(properties, mlr3::mlr_reflections$learner_properties[[type]])

  # ADD LEARNER

  if (in_package) {
    copy = TRUE
    file_lrn = paste0("learner_", package, "_", type, "_", key, ".R")
    path_lrn = file.path(path, "R", file_lrn)
  } else {
    file_lrn = basename(path)
    path_lrn = path
  }

  template_lrn = system.file("templates", "learner_template.R", package = "mlr3extralearners")


  if (in_package && file.exists(path_lrn)) {
    messagef("File %s already exists. Manually edit the file.", file_lrn)
  } else {
    # either the file exists and is empty, or the file does not exist yet.
    file.create(path_lrn)
    x = readLines(template_lrn)
    x = gsub("<type>", type, x)
    x = gsub("<Type>", Type, x)
    x = gsub("<key>", key, x)
    x = gsub("<package>", package, x)
    x = gsub("<caller>", caller, x)
    x = gsub("<Classname>", classname, x)
    x = gsub("<gh_name>", gh_name, x)
    x = gsub("<feature_types>", paste0(feature_types, collapse = '", "'), x)
    x = gsub("<predict_types>", paste0(predict_types, collapse = '", "'), x)
    x = gsub("<label>", label, x)
    if (length(properties)) {
      x = gsub("<properties>", paste0(properties, collapse = '", "'), x)
    }
    cat(x, file = path_lrn, sep = "\n")
    messagef("Created %s from template.", file_lrn)
  }

  if (!in_package) {
    return(path_lrn)
  }

  # ADD TEST
  template_test = system.file("templates", "test_template.R", package = "mlr3extralearners")

  file_test = paste0("test_", package, "_", type, "_", key, ".R")
  path_test = file.path(path, "tests", "testthat", file_test)

  files = file_lrn

  if (file.exists(path_test)) {
    messagef("File %s already exists. Manually edit the file.", file_test)
  } else {
    file.create(path_test)
    x = readLines(template_test)
    x = gsub("<type>", type, x)
    x = gsub("<Type>", Type, x)
    x = gsub("<key>", key, x)
    x = gsub("<Classname>", classname, x)
    cat(x, file = path_test, sep = "\n")
    messagef("Created %s tests from template.", paste(type, key, sep = "_"))
    files = c(files, file_test)
  }

  # ADD PARAM TESTS
  template_ptest = system.file("templates", "param_test_template.R", package = "mlr3extralearners")

  file_ptest = paste0("test_paramtest_", package, "_", type, "_", key, ".R")
  path_ptest = file.path(path, "tests", "testthat", file_ptest)

  if (file.exists(path_ptest)) {
    messagef("File %s already exists. Manually edit the file.", file_ptest)
  } else {
    file.create(path_ptest)
    messagef("Creating %s paramtests from template.", paste(type, key, sep = "_"))
    x = readLines(template_ptest)
    x = gsub("<type>", type, x)
    x = gsub("<key>", key, x)
    x = gsub("<package>", package, x)
    x = gsub("<caller>", caller, x)
    cat(x, file = path_ptest, sep = "\n")
    files = c(files, file_ptest)
  }

  return(files)
}
# nocov end
