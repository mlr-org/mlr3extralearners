#' @export
marshal_model.xgboost_model = function(model, inplace = FALSE, ...) {
  model = xgboost::xgb.save.raw(model$model)
  # xgb.DMatrix cannot be saved to a raw vector, but only to a file,
  # so we save it to a temporary file and then read it back as a raw vector
  tmp <- tempfile(fileext = ".buffer")
  xgboost::xgb.DMatrix.save(model$train_data, "xgb.data")
  train_data = readBin("xgb.data", what = "raw", n = file.info("xgb.data")$size)
  # clean up temp file
  unlink(tmp)

  structure(list(
    model = model,
    train_data = train_data,
    packages = c("mlr3extralearners", "xgboost"),
  ), class = c("xgboost_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.xgboost_model_marshaled = function(marshaled, ...) {
  model = xgboost::xgb.load.raw(marshaled$model)
  # xgb.DMatrix cannot be read from a raw vector, but only from a file,
  # so we write the stored raw vector to a temporary file and then read it back
  tmp = tempfile(fileext = ".buffer")
  writeBin(marshaled$train_data, tmp)
  train_data = xgb.DMatrix(tmp)
  # clean up
  unlink(tmp2)

  list(model = model, train_data = train_data)
}
