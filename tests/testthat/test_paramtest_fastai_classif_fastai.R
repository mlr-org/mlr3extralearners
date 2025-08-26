skip_if_not_installed("fastai")
skip_if_not_installed("reticulate")

test_that("classif.fastai train", {
  learner = lrn("classif.fastai")
  fun_list = list(fastai::TabularDataTable, fastai::dataloaders,
                  fastai::tabular_learner, fastai::fit)
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "act_cls", # handled internally
    "bn_cont",  # handled internally
    "bn_final",  # handled internally
    "bs",  # handled internally
    "cat_names",  # handled internally
    "cbs",  # handled internally
    "cont_names",  # handled internally
    "config",  # handled internally
    "device",  # handled internally
    "df",  # handled internally
    "dls",  # handled internally
    "do_setup",  # handled internally
    "drop_last",  # handled internally
    "embed_p",  # handled internally
    "eval_metric",  # handled internally
    "inplace",  # handled internally
    "moms",  # handled internally
    "model_dir",  # handled internally
    "n_epoch",  # handled internally
    "num_workers",  # handled internally
    "path",  # handled internally
    "patience",  # handled internally
    "pin_memory",  # handled internally
    "ps",  # handled internally
    "reduce_memory",  # handled internally
    "splits",  # handled internally
    "splitter",  # handled internally
    "shuffle",  # handled internally
    "use_bn",  # handled internally
    "y_block",  # handled internally
    "y_names"  # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.fastai predict", {
  learner = lrn("classif.fastai")
  fun = fastai::predict # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
