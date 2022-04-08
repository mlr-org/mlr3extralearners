# mlr3extralearners 0.5.31
* Many non-standard tags were included in the learners, these are removed
* Some bugs in learners were fixed (survival rfsrc: "estimator" was incorrectly handled in .predict)
* Minor refactorings in train methods of learners
* Avoid partial argument matching: Some learners used "tag = ..." instead of the
  correct "tags = ..."

# mlr3extralearners 0.5.30

* Revert to using mlr3proba and survivalmodels CRAN version

# mlr3extralearners 0.5.29

* Change in vignette

# mlr3extralearners 0.5.28

* update randomForestSRC

# mlr3extralearners 0.5.27

* Update learner status page

# mlr3extralearners 0.5.26

* Fixed survivalmodel learners

# mlr3extralearners 0.5.25

* Introduce parameter `early_stopping_split` for lightgbm learners
* Tidy description of R package
* Udpate NEWS.md for previous releases

# mlr3extralearners 0.5.24

* Don't allow integer for density estimator `dens.plug`

# mlr3extralearners 0.5.23

* Fix bug in lightgbm

# mlr3extralearners 0.5.22

* Style package using the mlr3 style

# mlr3extralearners 0.5.21

* Update files for creation of new learner
* Fixes regarding `create_learner`
* CI modifications

# mlr3extralearners 0.5.20

* Fix all parameter tests (run_paramtest was updated in mlr3 in November 2021)
* paramtests were moved from inst/paramtest to tests/testthat
* Change in the CI files: parameter tests and learner tests are now run together
* formatting and other minor corrections

# mlr3extralearners 0.5.19

* Provide correct range for neighors argument for Cubist

# mlr3extralearners 0.5.18

* Allow integer as feature types for RWeka learners
* Correction of RWeka tests

# mlr3extralearners 0.5.17

* Improve vignette

# mlr3extralearners 0.5.16

* Fix bug in AdaBoostM1 (control arg)

# mlr3extralearners 0.5.15

* Change in maintainer

# mlr3extralearners 0.5.14

* Fix bug regarding Weka control args.

# mlr3extralearners 0.5.13

* Fix `categorical_features` in {lightgbm} learners

# mlr3extralearners 0.5.12

* Patch for `lightgbm` updates

# mlr3extralearners 0.5.11

* Add option to not open files with `create_learner`

# mlr3extralearners 0.5.10

* Added params `ignored_features` and `one_hot_max_size` to `classif.catboost`

# mlr3extralearners 0.5.9

* Fixed bug that didn't allow C parameter to be set for nu-regression

# mlr3extralearners 0.5.8

* Add `regr.rvm` and `classif.lssvm`

# mlr3extralearners 0.5.7

* Introduced new custom hyperparameters for `randomForestSRC::rfsrc()`,
  `partykit::cforest()` and `obliqueRSF::ORSF()` to conveniently tune
  hyperparameters whose upper limit depends on data dimensions.

# mlr3extralearners 0.5.6

* Fix learners requiring distr6. distr6 1.6.0 now forced and param6 added to suggests

# mlr3extralearners 0.5.5

* Bugfix `regr.gausspr`

# mlr3extralearners 0.5.4

* Add `regr.gausspr` and `classif.gausspr` from `kernlab::gausspr`

# mlr3extralearners 0.5.3

* Fixed bugs in catboost for classification
* Removed factor feature types from catboost
* Added `install_catboost` to make installation from catboost simpler

# mlr3extralearners 0.5.2

* Fixed learner tests
# mlr3extralearners 0.5.1

* Fixes bug in `base` parameter of {bart} learners

# mlr3extralearners 0.5.0

* Deprecated liblinear learners now removed
* Internal changes to ParamSet representation
* checkmate now imported

# mlr3extralearners 0.4.9

* Minor internal changes

# mlr3extralearners 0.4.8

* Added `LearnerRegrCubist` and `LearnerRegrMars`

# mlr3extralearners 0.4.7

* Moved `nnet` learners to [mlr3learners](https://github.com/mlr-org/mlr3learners)

# mlr3extralearners 0.4.6

* Updates default cores for `rfsrc` learners to `1`

# mlr3extralearners 0.4.5

* Fix RWeka tests (stochastic failures, implementation unaffected)

# mlr3extralearners 0.4.3

* Add support for custom families in all remaining mboost learners

# mlr3extralearners 0.4.2

* Fix broken partykit tests

# mlr3extralearners 0.4.0

* Added `LearnerRegrGam` and `LearnerClassifGam` with keys `regr.gam` and `classif.gam` from package `mgcv`.

# mlr3extralearners 0.3.6

* `surv.coxboost` now uses the GitHub version instead of CRAN (archived)

# mlr3extralearners 0.3.4

* Add support for custom families to `regr.glmboost`

# mlr3extralearners 0.3.1

* `surv.svm` now supports all feature types

# mlr3extralearners 0.3.0

* Added `LearnerRegrLightGBM` and `LearnerClassifLightGBM` with keys `regr.lightgbm` and `classif.lightgbm` respectively. Copied from [mlr3learners.lightgbm](https://github.com/mlr3learners/mlr3learners.lightgbm)
* `LearnerRegrLiblineaRX` and `LearnerClassifLiblineaRX` deprecated in favour of only two learners (`LearnerRegrLiblineaR` and `LearnerClassLiblineaR`) with added hyper-parameters. Deprecated learners will be removed in v0.3.0.
* Deprecated `classif.nnet` will be removed in v0.4.0.
* Deprecated `liblinearX` will be removed in v0.4.0.

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
