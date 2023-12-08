prev_r6_dollar = `$.R6`
prev_r6_bracket = `[[.R6`
`$.R6` = NULL
`[[.R6` = NULL

test_that("classif.tabnet works", {
  learner = lrn("classif.tabnet", device = "cpu")
  task = tsk("iris")
  learner$train(task)
  learner$predict(task)
})

`$.R6` = prev_r6_dollar
`[[.R6` = prev_r6_bracket
