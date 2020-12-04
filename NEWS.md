# mlr3extralearners 0.1.2.9000

* `mlr3proba` moved to `Suggests`
* `install_learners` now additionally installs required mlr3 packages
* Bugfix in `surv.parametric` occurring if feature names are switched between training and predicting

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
