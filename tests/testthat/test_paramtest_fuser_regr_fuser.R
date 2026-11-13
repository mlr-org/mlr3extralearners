skip_if_not_installed("fuser")

test_that("paramtest regr.fuser train", {
  learner = lrn("regr.fuser")
  fun_list = list(fuser::generateBlockDiagonalMatrices, fuser::fusedL2DescentGLMNet)
  exclude = c(
    "X", # handled internally
    "Y", # handled internally
    "groups", # taken from the column with the subset role
    "transformed.x", # output of generateBlockDiagonalMatrices()
    "transformed.x.f", # output of generateBlockDiagonalMatrices()
    "transformed.y" # output of generateBlockDiagonalMatrices()
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})
