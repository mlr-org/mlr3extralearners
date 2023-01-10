docs = rvest::read_html("https://lightgbm.readthedocs.io/en/latest/Parameters.html")
tmp = c(
  "core-parameters",
  "learning-control-parameters",
  "dataset-parameters",
  "objective-parameters",
  "metric-parameters",
  "network-parameters",
  "gpu-parameters",
  "convert-parameters"
)
tmp = paste0("@id='", tmp, "'", collapse = " or ")
x_train = rvest::html_elements(
  docs,
  xpath = sprintf("//section[%s]/ul/li", tmp)
)
x_train = rvest::html_text2(x_train)
x_train = strsplit(x_train, split = " ")
x_train = mlr3misc::map_chr(x_train, function(x) x[1])

x_predict = rvest::html_elements(
  docs,
  xpath = "//section[@id = 'predict-parameters']/ul/li"
)
x_predict = rvest::html_text2(x_predict)
x_predict = strsplit(x_predict, split = " ")
x_predict = mlr3misc::map_chr(x_predict, function(x) x[1])


test_that("paramtest classif.lightgbm train", {
  learner = lrn("classif.lightgbm")
  fun = list(lightgbm::lgb.train, x_train)
  exclude = c(
    "config", # only used in cli version
    "task", # automatically set to "train"
    "data", # handled internally
    "valid", # handled internally
    "verbosity", # using alias verbose
    "early_stopping_round", # using alias early_stopping_round[s]
    "label_column", # using alias label
    "weight_column", # handled internally
    "group_column", # grouping is handled by mlr3
    "ignore_column", # handled internally
    "precise_float_parser", # we don't load data from files
    "parser_config_file", # we don't load data from files
    "num_class", # automatically inferred
    "reg_sqrt", # only regression
    "alpha", # only regression
    "fair_c", # only regression
    "poisson_max_delta_step", # only poisson regression
    "tweedie_variance_power", # only tweedie regression
    "params", # handled internally
    "saved_feature_importance_type", # cli version
    "input_model", # cli version
    "output_model", # cli version
    "machine_list_filename", # cli version
    "save_binary", # cli version
    "output_result", # only cli version
    "convert_model_language", # only cli version
    "convert_model", # only cli version
    "metric_freq", # only cli version
    "is_provide_training_metric", # only cli version
    "snapshot_freq", # only cli version
    "header", # we don't load data from the text file
    "objective_seed", # only in ranking applications
    "metric", # we use the lgb.train-only argument "eval"


    # rank parameters
    "lambdarank_truncation_level", # ranking
    "lambdarank_norm", # ranking
    "label_gain", # ranking

    # custom parameters
    "early_stopping",
    "convert_categorical",

    # lgb.train
    "nrounds", # alias for num_iterations
    "valids", # handled internally
    "obj", # alias for objective
    "colnames", # we don't want to allow overwriting any names
    "init_model" # handled internally via hotstarting

  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.lightgbm train", {
  learner = lrn("classif.lightgbm")
  fun = list(lightgbm:::predict.lgb.Booster, x_predict)
  exclude = c(
    # params listed online
    "predict_raw_score", # raw score prediction
    "predict_leaf_index", # leaf index prediction
    "predict_contrib", # shapely prediction
    "predict_disable_shape_check", # don't disable this
    "output_result", # cli

    # from the R function
    "params", # handled internally
    "object", # handled internally
    "data", # handled internally
    "reshape", # not a user parameter in mlr3 (shapes output), also deprecate
    "rawscore", # not a user parameter in mlr3 (predict type, scores)
    "predleaf", # not a user parameter in mlr3 (predict type: leaf)
    "predleaf", # not a user parameter in mlr3 (predict type: shapley)
    "predcontrib", # shapely
    "header", # for prediction for text file
    "start_iteration", # alias for start_iteration_predict
    "num_iteration", # alias for num_iteration_predict
    "early_stopping" # custom parameter
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
