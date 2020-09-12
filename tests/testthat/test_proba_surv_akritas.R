install_learners("surv.akritas")

test_that("autotest", {
  learner <- LearnerSurvAkritas$new()
  expect_learner(learner)
  result <- run_autotest(learner, check_replicable = FALSE, exclude = "single")
  expect_true(result, info = result$error)
})

test_that("akritas", {
  expect_error(akritas(survival::Surv(time, status) ~ .))
  expect_silent(akritas(survival::Surv(time, status) ~ ., data = survival::rats[1:10, ]))
  expect_error(akritas(x = "litter"), "Both 'x' and 'y'")
  expect_error(akritas(time_variable = "time"), "'time_variable'")
  expect_error(akritas(
    x = survival::rats[, c("rx", "litter")],
    y = survival::rats$time), "Must inherit from")
  expect_error(akritas(
    x = survival::rats$rx,
    y = survival::Surv(survival::rats$time, survival::rats$status)
  ), "data.frame")

  fit <- akritas(survival::Surv(time, status) ~ ., data = survival::rats[1:100, ])
  expect_equal(
    as.numeric(predict(fit, newdata = survival::rats[1:100, ], lambda = 1)[1, ]),
    survfit(survival::Surv(time, status) ~ 1, data = survival::rats[1:100, ])$surv)

  fit <- akritas(survival::Surv(time, status) ~ ., data = survival::rats[1:100, ], reverse = TRUE)
  expect_equal(
    as.numeric(predict(fit, newdata = survival::rats[1:100, ], lambda = 1)[1, ]),
    survfit(survival::Surv(time, 1 - status) ~ 1, data = survival::rats[1:100, ])$surv)
})
