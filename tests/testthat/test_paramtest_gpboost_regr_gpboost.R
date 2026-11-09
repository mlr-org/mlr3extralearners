skip_if_not_installed("rvest")
skip_if_not_installed("gpboost")

docs = rvest::read_html("https://gpboost.readthedocs.io/en/latest/Parameters.html")
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
x_train = rvest::html_elements(docs, xpath = sprintf("//section[%s]/ul/li", tmp))
x_train = rvest::html_text2(x_train)
x_train = mlr3misc::map_chr(strsplit(x_train, split = " "), function(x) x[1])

x_predict = rvest::html_elements(docs, xpath = "//section[@id = 'predict-parameters']/ul/li")
x_predict = rvest::html_text2(x_predict)
x_predict = mlr3misc::map_chr(strsplit(x_predict, split = " "), function(x) x[1])

test_that("paramtest regr.gpboost train", {
  learner = lrn("regr.gpboost")
  fun_list = list(gpboost::gpb.train, x_train, gpboost::GPModel)
  exclude = c(
    # custom mlr3 parameters
    "group_data_cols",
    "gp_coords_cols",
    # gpb.train
    "params", # handled internally
    "data", # handled by mlr3
    "gp_model", # handled by mlr3 via group_data_cols and gp_coords_cols
    "valids", # validation is not supported
    "obj", # custom objectives are not supported, use objective
    "eval", # validation is not supported
    "eval_freq", # validation is not supported
    "init_model", # continued training is not supported
    "colnames", # handled by mlr3
    "categorical_feature", # handled by mlr3
    "early_stopping_rounds", # validation is not supported
    "callbacks", # not supported
    # GPModel
    "group_data", # handled by mlr3 via group_data_cols
    "gp_coords", # handled by mlr3 via gp_coords_cols
    "group_rand_coef_data", # random coefficients are not supported
    "ind_effect_group_rand_coef", # random coefficients are not supported
    "drop_intercept_group_rand_effect", # random coefficients are not supported
    "gp_rand_coef_data", # random coefficients are not supported
    "cluster_ids", # independent realizations of random effects are not supported
    "weights", # handled by mlr3
    "num_data", # only used for models without random effects
    "free_raw_data", # handled internally
    "vecchia_approx", # discontinued, use gp_approx
    "vecchia_pred_type", # predict parameter
    "num_neighbors_pred", # predict parameter
    # parameter list
    "num_iterations", # alias of nrounds
    "verbosity", # alias of verbose
    "early_stopping_round", # validation is not supported
    "config", # only used in cli version
    "task", # automatically set to "train"
    "valid", # validation is not supported
    "input_model", # cli version
    "output_model", # cli version
    "saved_feature_importance_type", # cli version
    "snapshot_freq", # cli version
    "header", # we don't load data from files
    "label_column", # handled by mlr3
    "weight_column", # handled by mlr3
    "group_column", # ranking only
    "ignore_column", # handled by mlr3
    "save_binary", # cli version
    "output_result", # cli version
    "convert_model_language", # cli version
    "convert_model", # cli version
    "metric", # validation is not supported
    "metric_freq", # cli version
    "is_provide_training_metric", # cli version
    "precise_float_parser", # we don't load data from files
    "parser_config_file", # we don't load data from files
    # classification and ranking only
    "pos_bagging_fraction",
    "neg_bagging_fraction",
    "objective_seed",
    "num_class",
    "is_unbalance",
    "scale_pos_weight",
    "sigmoid",
    "lambdarank_truncation_level",
    "lambdarank_norm",
    "label_gain",
    "eval_at",
    "multi_error_top_k",
    "auc_mu_weights",
    "machine_list_filename" # cli version
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gpboost predict", {
  learner = lrn("regr.gpboost")
  fun_list = list(gpboost:::predict.gpb.Booster, x_predict) # nolint
  exclude = c(
    "object", # handled by mlr3
    "data", # handled by mlr3
    "pred_latent", # always FALSE, predictions are on the response scale
    "predleaf", # not supported
    "predcontrib", # not supported
    "header", # we don't load data from files
    "reshape", # not supported
    "group_data_pred", # handled by mlr3 via group_data_cols
    "group_rand_coef_data_pred", # random coefficients are not supported
    "gp_coords_pred", # handled by mlr3 via gp_coords_cols
    "gp_rand_coef_data_pred", # random coefficients are not supported
    "cluster_ids_pred", # independent realizations of random effects are not supported
    "predict_cov_mat", # not supported
    "predict_var", # handled by mlr3 via predict_type
    "sample_posterior", # not supported
    "num_post_samples", # not supported
    "cov_pars", # estimated covariance parameters are used
    "offset_pred", # offsets are not supported
    "rawscore", # not supported
    # parameter list
    "start_iteration_predict", # alias of start_iteration
    "num_iteration_predict", # alias of num_iteration
    "predict_raw_score", # not supported
    "predict_leaf_index", # not supported
    "predict_contrib", # not supported
    "predict_disable_shape_check", # not supported
    "pred_early_stop", # classification only
    "pred_early_stop_freq", # classification only
    "pred_early_stop_margin", # classification only
    "output_result" # cli version
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
