test_that(".extralrns_dict rejects duplicate ids and classes", {
  dict = .extralrns_dict$clone()
  expect_error(dict$add("regr.grf", R6::R6Class("LearnerFoo")), "id 'regr.grf' is already registered")
  expect_error(dict$add("regr.foo", LearnerRegrGRF), "class 'LearnerRegrGRF' is already registered")
  dict$add("regr.foo", R6::R6Class("LearnerFoo"))
  expect_names(names(dict$lrns), must.include = "regr.foo")
  expect_false("regr.foo" %in% names(.extralrns_dict$lrns))
})
