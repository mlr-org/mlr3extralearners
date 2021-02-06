# mlr3extralearners 0.2.0

* `dist = "logistic"` has been removed from `surv.parametric` as it is unclear what this was previously predicting.
* Added `type = "tobit"` for `dist = "gaussian"` so predictions can correspond with `survival::survreg`.
* Added `LearnerRegrGlm` with the unique key `regr.glm` from package `stats`, which allows users to change the `family` hyperparameter when fitting generalized linear regression models.
* Minor internal changes
* Removed `keeptrees` parameter from `classif.bart` as this is forced internally
* Fixed incorrect response and probability predictions in `classif.bart`
* Added hyper-parameters to `classif.earth` and `regr.earth`
* Added `se` predict type to `regr.earth`
* Fixed predictions in `regr.knn` and `classif.knn`

# mlr3extralearners 0.1.3

* `mlr3proba` moved to `Suggests`
* `install_learners` now additionally installs required mlr3 packages
* Bugfix in `surv.parametric` occurring if feature names are switched between training and predicting
* Deprecated `classif.nnet`, in the future please load from [mlr3learners](https://github.com/mlr-org/mlr3learners)

# mlr3extralearners 0.1.2

* Fixes in `crank` and `distr` computation of all survival learners

# mlr3extralearners 0.1.1

* Patch for bugs in `surv` learners that were reversing the order of `crank`, see this issue for full details: https://github.com/mlr-org/mlr3proba/issues/165
* `response` is no longer returned by `surv.mboost`, `surv.blackboost`, `surv.glmboost`, `surv.gamboost` or `surv.parametric`
* Bugfix in `surv.parametric` with `ph` form
* Bugfix in `survivalmodels`learners which weren't returning `distr`
* `surv.coxboost` and `surv.coxboost_cv` can now only handle `integer` and `numeric` feature types, previous automated internal coercions were inconsistent with mlr3 design.

# mlr3extralearners 0.1.0

- Initial release. mlr3extralearners contains all learners from the mlr3learners organisation, which is now archived.
