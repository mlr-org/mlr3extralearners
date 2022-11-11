# nocov start
#' @title Create a New Learner
#' @description
#' Helper function to create a template for a learner, as well as the test and parameter test.
#' For more details see the [mlr3book](https://mlr3book.mlr-org.com/extending.html).
#'
#' @param path (`character(1)`)\cr
#'   The path to a folder. This is where the files will be created.
#'   In case the folder is an R package, the learner file will be create in path/R and the
#'   test files will be created in path/tests/testthat. Otherwise all the files will be created
#'   in path.
#' @param classname (`character(1)`)\cr
#'   Suffix for R6 class name passed to LearnerType 'classname'.
#' @param type (`character(1)`)\cr
#'   See `mlr3::mlr_reflections$task_types$type`.
#' @param key (`character(1)`)\cr
#'   key for learner, if not provided defaults to the `classname` in all lower case.
#'   In combination with `type` it creates the learner's id.
#' @param algorithm (`character(1)`)\cr
#'   Brief description of the algorithm, like "Linear Model" or "Random Forest".
#'   Is used for the title of the help package and as the label (if no other label is provided).
#' @param package (`character(1)`)\cr
#'   Package from which the learner is implemented.
#' @param caller `character(1)`\cr
#'   Training function called from the upstream package.
#' @param feature_types (`character()`)\cr
#'   Feature types that can be handled by the learner, see
#'   `mlr3::mlr_reflections$task_feature_types`.
#' @param predict_types (`character()`)\cr
#'   Prediction types that can be made by the learner, see
#'   `mlr3::mlr_reflections$learner_predict_types`.
#' @param properties (`character()`)\cr
#'   Properties that can be handled by the learner, see `mlr3::mlr_reflections$learner_properties`.
#' @param gh_name (`character(1)`)\cr
#'   Your GitHub handle, used to add you as the maintainer of the learner.
#'   Defaults to `"Unknown"`.
#' @param label (`character(1)`)\cr
#'   Label for the learner, default is the value of the parameter `algorithm`.
#' @param data_formats (`character(1)`)\cr
#'   The data format the learner can deal with (see `mlr_reflections$data_formats`).
#'   Default is `"data.table"`.
#'
#' @examples
#' \dontrun{
#' path = tempfile()
#' dir.create(path)
#' create_learner(
#'   path = path,
#'   classname = "Rpart",
#'   type = "classif",
#'   key = "rpart",
#'   algorithm = "Decision Tree",
#'   package = "rpart",
#'   caller = "rpart",
#'   feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
#'   predict_types = c("response", "prob"),
#'   properties = c("importance", "missings", "multiclass", "twoclass", "weights"),
#'   gh_name = "RaphaelS1",
#'   label = "Regression and Partition Tree",
#'   data_formats = "data.table"
#' )
#' }
#' @export
create_learner = function(path = ".", classname, type, key = tolower(classname), algorithm,
  package, caller,
  feature_types, predict_types, properties, gh_name = "Unknown", label = toproper(algorithm), data_formats = "data.table") {

  path = normalizePath(path)
  assert_true(dir.exists(path))
  in_package = "DESCRIPTION" %in% list.files(path)

  if (in_package) {
    testthat_dir = sprintf("%s/tests/testthat", path)
    if (!dir.exists(testthat_dir)) {
      dir.create(testthat_dir, recursive = TRUE)
    }
    r_dir = sprintf("%s/R", path)
    if (!dir.exists(r_dir)) {
      dir.create(r_dir, recursive = TRUE)
    }
  }
  assert_character(classname, len = 1L)
  assert_choice(type, mlr3::mlr_reflections$task_types$type)
  assert_character(key, len = 1L)
  assert_character(algorithm, any.missing = FALSE, len = 1L)
  assert_character(package, any.missing = FALSE, len = 1L)
  assert_character(caller, any.missing = FALSE, len = 1L)
  assert_subset(feature_types, unname(mlr3::mlr_reflections$task_feature_types))
  assert_subset(
    predict_types,
    names(mlr3::mlr_reflections$learner_predict_types[[type]])
  )
  assert_subset(properties, mlr3::mlr_reflections$learner_properties[[type]])

  assert_character(gh_name, any.missing = FALSE, len = 1)
  assert_character(label, any.missing = FALSE, len = 1L)

  assert_choice(data_formats, mlr3::mlr_reflections$data_formats)
  Type = toproper(type)

  assert_character(classname, any.missing = FALSE, len = 1)
  assert_character(caller, any.missing = FALSE, len = 1)

  algorithm = toproper(algorithm)

  type_lng = switch(type,
    classif = "Classification",
    regr = "Regression",
    surv = "Survival",
    dens = "Density",
    clust = "Cluster"
  )

  # Get the paths where the files (learner, test, parameter) test will be created.

  file_lrn = paste0("learner_", package, "_", type, "_", key, ".R")
  file_ptest = paste0("test_paramtest_", package, "_", type, "_", key, ".R")
  file_test = paste0("test_", package, "_", type, "_", key, ".R")

  template_lrn = system.file("templates", "learner_template.R", package = "mlr3extralearners")
  template_test = system.file("templates", "test_template.R", package = "mlr3extralearners")
  template_ptest = system.file("templates", "param_test_template.R", package = "mlr3extralearners")

  # Add learner file
  if (in_package) {
    path_lrn = file.path(path, "R", file_lrn)
    path_ptest = file.path(path, "tests", "testthat", file_ptest)
    path_test = file.path(path, "tests", "testthat", file_test)
  } else {
    path_lrn = file.path(path, file_lrn)
    path_ptest = file.path(path, file_ptest)
    path_test = file.path(path, file_test)
  }


  if (file.exists(path_lrn)) {
    messagef("File %s already exists. Manually edit the file.", file_lrn)
  } else {
    # either the file exists and is empty, or the file does not exist yet.
    file.create(path_lrn)
    x = readLines(template_lrn)
    x = gsub("<type>", type, x)
    x = gsub("<Type>", Type, x)
    x = gsub("<key>", key, x)
    x = gsub("<algorithm>", algorithm, x)
    x = gsub("<Type_lng>", type_lng, x)
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
    messagef("Created %s from template.", file_lrn)
    # Remove unused methods


    remove_method = function(method, x) {
      if (method %nin% properties) {
        start = grep(
          sprintf("# FIXME: ADD %s METHOD IF APPLICABLE AND DELETE OTHERWISE", toupper(method)),
          x,
          fixed = TRUE
        )
        end = grep(sprintf("%s = function()", method), x) + 3L
        return(x[-seq(start, end)])
      }
      x
    }

    x = remove_method("importance", x)
    x = remove_method("oob_error", x)
    x = remove_method("selected_features", x)
    x = remove_method("loglik", x)

    # Fix commas
    methods = c("importance", "oob_error", "selected_features", "loglik")
    methods_existing = methods[methods %in% properties]
    init_ends = grep("# <INIT>", x)
    if (length(methods_existing) == 0L) {
      x[init_ends] = "    }"
    } else {
      # remove the <INIT> comment used to located the line
      x[init_ends] = "    },"
      # remove the comma from the last existing method
      method_last = methods_existing[length(methods_existing)]
      line = grep(sprintf("%s = function()", method_last), x, fixed = TRUE) + 3L
      x[line] = gsub(",", "", x[line], fixed = TRUE)

    }
    # Now for hotstart
    if (!("hotstart_forward" %in% properties || "hotstart_backward" %in% properties)) {
      start = grep("# FIXME: ADD HOTSTART METHOD IF APPLICABLE AND DELETE METHOD OTHERWISE", x, fixed = TRUE)
      end = grep(".hotstart = function(task)", x, fixed = TRUE) + 3L
      x = x[-seq(start, end)]
      predict_ends = grep("<PREDICT>", x)
      x[predict_ends] = gsub(",", "", x[predict_ends])
      x = gsub(" # <PREDICT>", "", x, fixed = TRUE)
    }

    cat(x, file = path_lrn, sep = "\n")
  }


  # ADD TEST
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
  }

  # ADD PARAM TESTS

  if (file.exists(path_ptest)) {
    messagef("File %s already exists. Manually edit the file.", file_ptest)
  } else {
    file.create(path_ptest)
    x = readLines(template_ptest)
    x = gsub("<type>", type, x)
    x = gsub("<key>", key, x)
    x = gsub("<package>", package, x)
    x = gsub("<caller>", caller, x)
    cat(x, file = path_ptest, sep = "\n")
    messagef("Created %s paramtests from template.", paste(type, key, sep = "_"))
  }

  c(learner = path_lrn, test = path_test, param_test = path_ptest)
}
# nocov end
