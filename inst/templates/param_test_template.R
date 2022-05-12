test_that("<type>.<key> train", {
  learner = lrn("<type>.<key>")
  # FIXME: Add upstream functions to this list, that are being called during train.
  # The list cann also contain character vectors.
  fun_list = list()
  # FIXME: Add parameters (with explanation) that are not in the setunion of the arguments in
  # fun_list and the parameters of the learner.
  exclude = c(
    # these values are only exemplaric
    "object", # handled internally
    "data" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

test_that("<type>.<key> predict", {
  learner = lrn("<type>.<key>")
  # FIXME: Add parameters (with explanation) that are not in the setunion of the arguments in
  # fun_list and the parameters of the learner.
  fun_list = list()
  exclude = c(
    # these values are only exemplaric
    "object", # handled internally
    "data", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})


# <FIXME> Add Parameter Tests for methods `$hotstart()`, `$loglik()`, `$importance()`, or
# `$selected_features()` if applicable.
