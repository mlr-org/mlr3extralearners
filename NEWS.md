# mlr3extralearners (development version)

## New Features

* New Learners:

  - `Learner{Classif,Regr,Surv}BlockForest`
  - `Learner{Classif,Regr}ExhaustiveSearch`
  - `LearnerClassifFastai`
  - `Learner{Classif,Regr}Penalized`
  - `Learner{Classif,Regr}Bst`
  - `LearnerClassifAdaBoosting`
  - `Learner{Classif,Regr}Evtree`
  - `LearnerClassifKnn`

* Add new `control_custom_fun` parameter in `surv.aorsf`
* New function `learner_is_runnable()` to check whether the
  required packages to train a learner are available.

## Bug fixes

* Tests are now skipped when the suggested packages is not available.
  This will make local development much more convenient.

## Breaking Changes

* The `create_learner()` generator was removed, because it was hard to maintain and boilerplate code in the age of LLMs is easy enough to write.
* remove `discrete` parameter from `surv.parametric`, so that it is impossible to return `distr6::VectorDistribution`
  survival predictions (softly deprecated in `mlr3proba@v0.8.1`)
* `classif.lightgbm` now works with encapsulation with multiclass tasks
* the package no longer re-exports `lrn` and `lrns`, which should anyway
  be available to the user as the package depends on `mlr3`, where these
  functions are defined.
* Removed various learners:
  * `randomPlantedForest` was removed, because there is currently no way to
    save the model.
  * The deep learning methods from `survivalmodels` were removed, because
    they also cannot be saved and because the upstream package is archived.

## Other

* The package now imports `withr`
* `mlr3proba` is now an import and no longer a suggested package.
* The package no longer uses `set.seed()` in the tests and instead uses `withr::local_seed()`
  This means the auto tests will be stochastic like they should be
* The CI now checks that RCMD-check passes when suggested packages are not available.


# mlr3extralearners 1.1.0

New Features:

* Support offset in learners `regr|classif.mgcv`, `regr.glm` and `regr.lmer`.
* Added learners `LearnerRegrQGam` and `LearnerRegrMQGam`.
* Added learners `LearnerClassifTabPFN` and `LearnerRegrTabPFN`.
* Added the new version of learner weights to all learners that support weights
* Added marshaling for `surv.xgboost.cox`.
* Added learner `LearnerClassifKnn`.

Bugfixes:

* lightgbm classifier now works with encapsulation (#437)

# mlr3extralearners 1.0.0

* Add "Prediction types" doc section for all 30 survival learners + make sure it is consistent #347
* All survival learners have `crank` as main prediction type (and it is always returned) #331
* Added minimum working version for all survival learners in `DESCRIPTION` file
* Harmonized the use of times points for prediction as much as possible across survival learners #387
  * added `gridify_times()` function to coarse time points
  * fixed `surv.parametric` and `surv.akritas` use of `ntime` argument
* `surv.parametric` is now used by default with `discrete = TRUE` (no survival learner returns now `distr6` vectorized distribution by default)
* Doc update for `mlr3` (version `0.21.0`)
* Fixed custom and initial values across all learners documentation pages
* Fixed doc examples that used `learner$importance()`
* Set `n_thread = 1` for `surv.aorsf` and use unique event time points for predicted `S(t)`
* Add `selected_features()` for `surv.penalized`
* Fix `surv.prioritylasso` learner + add `distr` predictions via Breslow #344
* Survival SVM  `gamma.mu` parameter was split to `gamma` and `mu` to enable easier tuning (`surv.svm` learner)

# mlr3extralearners 0.9.0

* Added response (i.e., survival time) prediction to `aorsf` learner
* Updated support for flexsurv v2.3
* Fixed bug in catboost that caused invalid probability levels during
  `resample()` or `benchmark()` (#353)
* the `$model` slot of `lrn("classif.abess")` now contains the model of
  the upstream package again.
* Add early stopping and validation support to learners `lrn("surv.xgboost.aft")`
  and `lrn("surv.xgboost.cox")`.
* Added early stopping and validation to catboost and lightgbm.
* Added missing `case.depth` parameter to `rfsrc` learners.
* `mlr3` is now in Depends instead of Imports.
* Deprecated learner `lrn("surv.xgboost")` was now removed.
  Use `lrn("surv.xgboost.cox")` or `lrn("surv.xgboost.aft")` instead.
* Change xgboost default nrounds from 1 to 1000.
* remove obliqueRSF Learner which was long superseded by aorsf
* a lot of examples were added to the learners

# mlr3extralearners 0.8.0

* Added `surv.xgboost.cox` and `surv.xgboost.aft` separate survival learners. `distr` prediction on the cox xgboost learner is now estimated via Breslow by default and aft xgboost has now in addition a `response` prediction (survival time)
* Ported `surv.parametric` code to `survivalmodels`, changed `type` parameter to `form` to avoid conflict with survivalmodels's default parameter list
* Fix: Replace hardcoded `VectorDistribution`s from partykit and flexsurv survival learners with survival matrices (`Matdist`) (thanks to @bblodfon)
* Feat: Add `discrete` parameter in `surv.parametric` learner to return `Matdist` survival predictions
* Added method `selected_features()` to CoxBoost survival learners (thanks to @bblodfon)
* Added the Random Planted Forest Learner (thanks to @jemus42)
* re-added the catboost learner as it was requested (was previously removed
  because of installation issues)
* `surv.ranger` now receives parameters during `$predict()` (thanks to @jemus42)
* Feature: Learner `surv.bart` was added (thanks to @bblodfon)
* Parameters of `lrn("surv.aorsf")` were updated (thanks to @bcjaeger)
* Various minor doc improvements
* Added the `distr` predict type to the `surv.cv_glmnet` and `surv.glmnet`
learners (thanks to @bblodfon)
* Feat: Added many new WEKA learners (thanks to @damirpolat)
* Fix: `I` and `F` params from IBk learner are too interdependent (`I` can only be `TRUE` when `F` is `FALSE` and vice versa).
  Combined them into one factor param `weight` that has two levels -- `I` and `F`.
* Fix: `U` must be `FALSE` for `S` to be tunable in J48 learner.
* Compatibility with upcoming 'paradox' release.

# mlr3extralearners 0.7.1

* Add parameter `perf.type` to rfsrc learners
* Add vignette about "extending learners" which was previously in the mlr3book.
* Remove the `"multiclass"` property from `lrn("classif.gbm")`, as this feature is broken.

# mlr3extralearners 0.7.0

* Add new parameters to lightgbm learners
* Add feature type `"factor"` to gam learners
* Add new parameter `min.bucket` to ranger
* Remove catboost learner (because the developers don't properly take care of the R package)
* Add argument `nthreads` to `dbarts` learners; set verbose to `FALSE` by default (thanks to @ck37)
* Add new parameters to prioritylasso
* Fix: available levels for parameter of imbalanced random forest (typo)

# mlr3extralearners 0.6.1

*   BREAKING CHANGE: lightgbm's early stopping mechanism now uses the task's test set.
*   feat: Add two new learners `regr.abess` and `classif.abess` (thanks to @bbayukari)
*   feat: Added learner `LearnerClassifImbalancedRandomForestSRC` (thanks to
    @HarutyunyanLiana)
*   Feat: Added learners `LearnerClassifPriorityLasso`, `LearnerRegrPriorityLasso`, `LearnerSurvPriorityLasso` (thanks to
    @HarutyunyanLiana)

# mlr3extralearners 0.6.0

*   Feat: Added learner `LearnerClassifGlmer` (https://github.com/mlr-org/mlr3extralearners/issues/243)
*   Fix: Failing xgboost parameter test
*   Fix: Add arguments `nei` and  `ncv.thread` that were added to `mgcv::gam()` in
    version 1.8.41
*   Fix: Added missing property `"weights"` to `LearnerClassifGlmer` and
    `LearnerRegrLmer`
*   Fix: `lightgbm` uses the `param_vals` stored in the `state` for hotstarting
*   Fix: Rely on `state$data_prototype` to get ordering of features via
    `ordered_features()` like in `mlr3learners` and therefore obviate the need to
    store `feature_names` in the `state`
*   Fix: extralearners are removed from `mlr_learners` when unloading
    `mlr3extralearners`

# mlr3extralearners 0.5.49

*   Added missing feature type `"integer"` to `classif.randomForest`
*   Added missing feature type `"logical"` to {classif, regr}.randomForest

# mlr3extralearners 0.5.48

*   Add rsm learner
*   fix `list_mlr3learners()` function. Now slower but correct.
*   Remove catboost from DESCRIPTION until it can be installed with pak
*   Fix typos in test templates
*   Update README

# mlr3extralearners 0.5.47

*   Add mlr3proba dependencies into remotes (no longer on CRAN)
*   Correct documentation of gbm learner: default was incorrectly documented and
    the parameter was incorrectly referred to as `keep_data` instead of `keep.data`
*   Add catboost to the dependencies
*   Added `LearnerSurvAorsf` with key `surv.aorsf`. See https://github.com/bcjaeger/aorsf for more details on `aorsf`

# mlr3extralearners 0.5.46

*   Addresses https://github.com/mlr-org/mlr3extralearners/issues/225
*   Fix link in README
*   Fix learner status overview

# mlr3extralearners 0.5.45

*   Minor corrections in `create_learner` and the learner template.

# mlr3extralearners 0.5.44

*   Corrected parameters in lightgbm learners
*   Implemented hotstarting for lightgbm learners
*   Adjusted lightgbm train and predict methods to changes in lightgbm dev version
    (https://github.com/mlr-org/mlr3extralearners/issues/217)
*   Added paramtests for lightgbm through webscraping

# mlr3extralearners 0.5.43

*   Clean up test files
*   Fix installation of catboost in CI
*   Fix the create\_learner function
*   Adjust templates for creation of learner
*   Split up "Parameter Changes" in sections "Custom mlr3 parameters" and
    "Custom mlr3 defaults"

# mlr3extralearners 0.5.42

*   Fix bug in C50 learner: Weights were not passed correctly

*   Remove kerdiest Learner because it is not being maintained on CRAN anymore

# mlr3extralearners 0.5.41

*   Fix bugs in learners lmer and J48

*   Remove predict type proba from J48

*   Delay loading of mlr3proba learners

# mlr3extralearners 0.5.40

*   lightgbm:
    *   Add parameter convert\_categoricals
    *   Validation split not respects grouping / stratification
    *   Fixed bug

*   Docs: Renamed section "Custom mlr3 defaults" to "Parameter Changes"

*   Added labels to learners

# mlr3extralearners 0.5.39

*   Remove extraTrees because it is no longer on CRAN and GH version has errors

*   Remove sketch\_eps parameter from xgboost because it is no longer listed in the
    docs

# mlr3extralearners 0.5.38

*   Added `regr.lmer`

# mlr3extralearners 0.5.37

*   Improve docs and change doc layout
*   Fix typo in man-roxygen templates
*   Port mlr3proba learners (mlr3proba is no longer on CRAN)
*   Exclude relevant files in precommit

# mlr3extralearners 0.5.36

*   Add missing 'threads' tag to respective parameters.

# mlr3extralearners 0.5.35

*   Full installatio in workflow 'test\_selection' (is faster than the previous
    approach, where selected packages were installed from CRAN)

# mlr3extralearners 0.5.34

*   remove explicit mlr3misc:: (is imported)

# mlr3extralearners 0.5.33

*   consistency: Use params in train and predict calls, even in learners that currently don't
    have predict / train params. This allows easier correction of parameters by
    users.

# mlr3extralearners 0.5.32

*   chore: add new parameters for kde and rfsrc

*   temporarily disable feat\_all test for obliqeRSF (failed in $score() stage, because issue only happened in CI and could not be reproduced

# mlr3extralearners 0.5.31

*   Many non-standard tags were included in the learners, these are removed
*   Some bugs in learners were fixed (survival rfsrc: "estimator" was incorrectly handled in .predict)
*   Minor refactorings in train methods of learners
*   Avoid partial argument matching: Some learners used "tag = ..." instead of the
    correct "tags = ..."

# mlr3extralearners 0.5.30

*   Revert to using mlr3proba and survivalmodels CRAN version

# mlr3extralearners 0.5.29

*   Change in vignette

# mlr3extralearners 0.5.28

*   update randomForestSRC

# mlr3extralearners 0.5.27

*   Update learner status page

# mlr3extralearners 0.5.26

*   Fixed survivalmodel learners

# mlr3extralearners 0.5.25

*   Introduce parameter `early_stopping_split` for lightgbm learners
*   Tidy description of R package
*   Udpate NEWS.md for previous releases

# mlr3extralearners 0.5.24

*   Don't allow integer for density estimator `dens.plug`

# mlr3extralearners 0.5.23

*   Fix bug in lightgbm

# mlr3extralearners 0.5.22

*   Style package using the mlr3 style

# mlr3extralearners 0.5.21

*   Update files for creation of new learner
*   Fixes regarding `create_learner`
*   CI modifications

# mlr3extralearners 0.5.20

*   Fix all parameter tests (run\_paramtest was updated in mlr3 in November 2021)
*   paramtests were moved from inst/paramtest to tests/testthat
*   Change in the CI files: parameter tests and learner tests are now run together
*   formatting and other minor corrections

# mlr3extralearners 0.5.19

*   Provide correct range for neighors argument for Cubist

# mlr3extralearners 0.5.18

*   Allow integer as feature types for RWeka learners
*   Correction of RWeka tests

# mlr3extralearners 0.5.17

*   Improve vignette

# mlr3extralearners 0.5.16

*   Fix bug in AdaBoostM1 (control arg)

# mlr3extralearners 0.5.15

*   Change in maintainer

# mlr3extralearners 0.5.14

*   Fix bug regarding Weka control args.

# mlr3extralearners 0.5.13

*   Fix `categorical_features` in {lightgbm} learners

# mlr3extralearners 0.5.12

*   Patch for `lightgbm` updates

# mlr3extralearners 0.5.11

*   Add option to not open files with `create_learner`

# mlr3extralearners 0.5.10

*   Added params `ignored_features` and `one_hot_max_size` to `classif.catboost`

# mlr3extralearners 0.5.9

*   Fixed bug that didn't allow C parameter to be set for nu-regression

# mlr3extralearners 0.5.8

*   Add `regr.rvm` and `classif.lssvm`

# mlr3extralearners 0.5.7

*   Introduced new custom hyperparameters for `randomForestSRC::rfsrc()`,
    `partykit::cforest()` and `obliqueRSF::ORSF()` to conveniently tune
    hyperparameters whose upper limit depends on data dimensions.

# mlr3extralearners 0.5.6

*   Fix learners requiring distr6. distr6 1.6.0 now forced and param6 added to suggests

# mlr3extralearners 0.5.5

*   Bugfix `regr.gausspr`

# mlr3extralearners 0.5.4

*   Add `regr.gausspr` and `classif.gausspr` from `kernlab::gausspr`

# mlr3extralearners 0.5.3

*   Fixed bugs in catboost for classification
*   Removed factor feature types from catboost
*   Added `install_catboost` to make installation from catboost simpler

# mlr3extralearners 0.5.2

*   Fixed learner tests

# mlr3extralearners 0.5.1

*   Fixes bug in `base` parameter of {bart} learners

# mlr3extralearners 0.5.0

*   Deprecated liblinear learners now removed
*   Internal changes to ParamSet representation
*   checkmate now imported

# mlr3extralearners 0.4.9

*   Minor internal changes

# mlr3extralearners 0.4.8

*   Added `LearnerRegrCubist` and `LearnerRegrMars`

# mlr3extralearners 0.4.7

*   Moved `nnet` learners to [mlr3learners](https://github.com/mlr-org/mlr3learners)

# mlr3extralearners 0.4.6

*   Updates default cores for `rfsrc` learners to `1`

# mlr3extralearners 0.4.5

*   Fix RWeka tests (stochastic failures, implementation unaffected)

# mlr3extralearners 0.4.3

*   Add support for custom families in all remaining mboost learners

# mlr3extralearners 0.4.2

*   Fix broken partykit tests

# mlr3extralearners 0.4.0

*   Added `LearnerRegrGam` and `LearnerClassifGam` with keys `regr.gam` and `classif.gam` from package `mgcv`.

# mlr3extralearners 0.3.6

*   `surv.coxboost` now uses the GitHub version instead of CRAN (archived)

# mlr3extralearners 0.3.4

*   Add support for custom families to `regr.glmboost`

# mlr3extralearners 0.3.1

*   `surv.svm` now supports all feature types

# mlr3extralearners 0.3.0

*   Added `LearnerRegrLightGBM` and `LearnerClassifLightGBM` with keys `regr.lightgbm` and `classif.lightgbm` respectively. Copied from [mlr3learners.lightgbm](https://github.com/mlr3learners/mlr3learners.lightgbm)
*   `LearnerRegrLiblineaRX` and `LearnerClassifLiblineaRX` deprecated in favour of only two learners (`LearnerRegrLiblineaR` and `LearnerClassLiblineaR`) with added hyper-parameters. Deprecated learners will be removed in v0.3.0.
*   Deprecated `classif.nnet` will be removed in v0.4.0.
*   Deprecated `liblinearX` will be removed in v0.4.0.

# mlr3extralearners 0.2.0

*   `dist = "logistic"` has been removed from `surv.parametric` as it is unclear what this was previously predicting.
*   Added `type = "tobit"` for `dist = "gaussian"` so predictions can correspond with `survival::survreg`.
*   Added `LearnerRegrGlm` with the unique key `regr.glm` from package `stats`, which allows users to change the `family` hyperparameter when fitting generalized linear regression models.
*   Minor internal changes
*   Removed `keeptrees` parameter from `classif.bart` as this is forced internally
*   Fixed incorrect response and probability predictions in `classif.bart`
*   Added hyper-parameters to `classif.earth` and `regr.earth`
*   Added `se` predict type to `regr.earth`
*   Fixed predictions in `regr.knn` and `classif.knn`

# mlr3extralearners 0.1.3

*   `mlr3proba` moved to `Suggests`
*   `install_learners` now additionally installs required mlr3 packages
*   Bugfix in `surv.parametric` occurring if feature names are switched between training and predicting
*   Deprecated `classif.nnet`, in the future please load from [mlr3learners](https://github.com/mlr-org/mlr3learners)

# mlr3extralearners 0.1.2

*   Fixes in `crank` and `distr` computation of all survival learners

# mlr3extralearners 0.1.1

*   Patch for bugs in `surv` learners that were reversing the order of `crank`, see this issue for full details: https://github.com/mlr-org/mlr3proba/issues/165
*   `response` is no longer returned by `surv.mboost`, `surv.blackboost`, `surv.glmboost`, `surv.gamboost` or `surv.parametric`
*   Bugfix in `surv.parametric` with `ph` form
*   Bugfix in `survivalmodels`learners which weren't returning `distr`
*   `surv.coxboost` and `surv.coxboost_cv` can now only handle `integer` and `numeric` feature types, previous automated internal coercions were inconsistent with mlr3 design.

# mlr3extralearners 0.1.0

*   Initial release. mlr3extralearners contains all learners from the mlr3learners organisation, which is now archived.
