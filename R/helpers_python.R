# Marshals a model that wraps a python object by pickling the element `slot` to a raw vector.
# The remaining elements of the model must be plain R objects and are kept as is.
# `packages` are the python requirements needed to pickle the object, see assert_python_packages().
# The marshaled model has the class "<class>_marshaled", where <class> is the class of the model.
marshal_python_model = function(model, slot, packages = NULL) {
  if (length(packages)) {
    assert_python_packages(packages)
  }
  # pickle is available in any python environment
  pickle = reticulate::import("pickle")
  # as.raw() ensures that the bytes are converted to R
  pickled = as.raw(pickle$dumps(model[[slot]]))

  structure(
    c(list(marshaled = pickled), model[names(model) != slot], list(packages = "mlr3extralearners")),
    class = c(paste0(class(model)[[1L]], "_marshaled"), "marshaled")
  )
}

# Inverse of marshal_python_model().
# Unpickles the python object into the element `slot` and restores the class of the model.
unmarshal_python_model = function(model, slot, packages = NULL) {
  if (length(packages)) {
    assert_python_packages(packages)
  }
  pickle = reticulate::import("pickle")
  unpickled = pickle$loads(reticulate::r_to_py(model$marshaled))

  structure(
    c(set_names(list(unpickled), slot), model[names(model) %nin% c("marshaled", "packages")]),
    class = sub("_marshaled$", "", class(model)[[1L]])
  )
}
