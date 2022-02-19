# mlr3proba 0.4.3.9000

* Minor change to how distributions are created to better support improper distributions
* Fixed bug in `simsurv` task that made it impossible to predict the target

# mlr3proba 0.4.3

* Massive speed-up in distrcompositor PipeOp/pipeline
* More informative error given if `$distr` called for a learner that does not support this return type
* Fix massive bottleneck in scoring rule measures
* Add Density coercions `as_task_dens` and `as_prediction_dens`
* Measures now use parameter sets like learners. This streamlines the interface but unfortunately means ids can no longer be set dynamically.
* Add parameters `t_max` and `p_max` to Graf, Schmid and Integrated Log-loss as an alternative to `times`. `t_max` is equivalent to `times = seq(t_max)` and `p_max` is the proportion of censoring to integrate up to in the dataset.
* Fix bug in Rcpp code that was causing erroneous values for calculating the cindex in datasets greater than 20,000 observations.

# mlr3proba 0.4.2

* Patch for linux

# mlr3proba 0.4.1

* Remove `mlr3extralearners` from Suggests
* Add `response` to `as_prediction_surv`
* Now exported a couple cpp functions and `assert_surv`
* `mlr3` is now in `Depends` not `imports`
* `distr` predictions are now internally stored as matrices to significantly reduce prediction object sizes
* Tasks now support strata property

# mlr3proba 0.4.0

* Deprecated measures from 0.2.0 have now been deleted.
* IPCW measures such as `surv.graf`, `surv.schmid`, and `surv.intlogloss` now allow training data to be passed to the score function with `task` and `train_set` to allow the censoring distribution to be estimated on the training data. This is automatically applied for resample and benchmark results.
* IPCW measures such as `surv.graf`, `surv.schmid`, and `surv.intlogloss` now include a parameter `proper` to determine what weighting scheme should be applied by the estimated censoring distribution, The current method (Graf, 1999) `proper = FALSE`, weights observations either by their event time or 'current' time depending if they're dead or not, the new method `proper = TRUE` weights observations by event time. The `proper = TRUE` method is strictly proper when censoring and survival times are independent and G is estimated on large enough data. The `proper = FALSE` method is never proper. The default is currently `proper = FALSE` to enable backward compatibility, this will be changed to `proper = TRUE` in v0.6.0.
* The `rm_cens` parameter in `surv.logloss` has been deprecated in favour of `IPCW`. `rm_cens` will be removed in v0.6.0. If `rm_cens` or `IPCW` are `TRUE` then censored observations are removed and the score is weighted by an estimate of the censoring distribution at individual event times. Otherwise if `rm_cens` and `IPCW` are `FALSE` then no deletion or weighting takes place. The `IPCW = TRUE` method is strictly proper when censoring and survival times are independent and G is estimated on large enough data. The `ipcw = FALSE` method is never proper.
* Add `surv.dcalib` for the D-Calibration measure from Haider et al. (2020).

# mlr3proba 0.3.2

* Patched bug causing ``"interval2"`` task type not to work
* Fixed bug causing pipelines not to function correctly in `$aggregate`

# mlr3proba 0.3.1

* Reverted removal of `"interval2"`

# mlr3proba 0.3.0

* Commonly used survival quantities have been added as active bindings to `TaskSurv` including `times` (observed survival times), `status` (observed survival indicator), `unique_times` (set of sorted unique outcome times), `unique_event_times` (set of sorted unique failure times), `risk_set` (set of observations alive 'just before' a given time)
* `"interval2"` censoring type has been removed from `TaskSurv` as this is covered by the other types
* Default values have now been given to the `time` and `event` arguments in `TaskSurv`
* `PredictionDens` can now include `distr` return type (equivalent to `learner$model`)

# mlr3proba 0.2.6

* Minor internal fixes

# mlr3proba 0.2.5

* `PipeOpCrankCompositor` updated to fix bottleneck in computation via `mean`. Now `Inf` or `NA` is replaced by `0` for `response` and imputed with the median for `crank`
* Bug in `distr` predict types fixed that lead to fitting degenerate distributions and returning incorrect values for mean survival time and `crank`

# mlr3proba 0.2.4

* CRITICAL BUG FIX - `compose_crank` was previously returning ranks with the reverse ordering so that higher ranks implied higher risk not lower.

# mlr3proba 0.2.3

* All learners that previously lived in the mlr3learners organisation are now in the [mlr3extralearners](https://github.com/mlr-org/mlr3extralearners) repository.
* Fixed bottleneck in `MeasureSurvLogloss`
* Bugfix in `MeasureSurvCalibrationAlpha`
* Patch for valgrind
* `TaskDens` now inherits from `TaskUnsupervised` which means `target`/`truth` has been removed. No specification of a `target` column is required, instead a one-column matrix-like object or numeric vector should be passed to the task `backend` and the density will be estimated for this column, or two columns and one set as `weight`.
* Fixed bug in  `load_eruption` to fix name of data columns
* Added calibration plot for comparing average predicted survival distribution to Kaplan-Meier to [mlr3viz](https://github.com/mlr-org/mlr3viz)
* Removed unneccessary `pracma` dependency in learners
* Fix in `PipeOpDistrCompositor`, previously base distribution was only using the first predicted distribution, now the baseline is taken by averaging over all predictions with uniform weights

# mlr3proba 0.2.2

* Default kernel for `LearnerDensityKDE` is now `Epan` to reduce imports
* Minor internal patches for mlr3 0.6.0
* Bug fix in `MeasureSurvCalibrationBeta` now returns `NA` not error if `lp` predict type not available

# mlr3proba 0.2.1

* Removed `PredictionRegr` causing masking issues with `{mlr3}`
* Bug fix in `PipeOpDistrCompositor` causing some `cdf` predictions to be lost
* Internal fixes for `mlr3pipelines`: public train and predict methods to private
* Added four datasets and tasks: `grace`, `actg`, `gbcs`, `whas`
* Add `overwrite` to `crankcompositor` pipeop and pipeline
* Bug fix in `surv.kaplan` `crank` prediction

# mlr3proba 0.2.0

### Added Functionality

* `MeasureSurvCindex` added. Generalises all c-index measures with a fast C++ implementation
* Akritas estimator added to `mlr3learners/mlr3learners.proba`
* Added scoring rule `MeasureSurvSchmid`
* Addd calibration measures `MeasureSurvCalibrationBeta` and `MeasureSurvCalibrationAlpha`
* `surv.brier` alias added for `surv.graf`
* `response` parameter added to `PipeOpCrankCompositor` and `crankcompositor` to now optionally fill `response` predict type with same values as `crank`
* Added `PipeOpProbregrCompostior` and `compose_probregr` for composition to `distr` return type from (a) regression learner(s) predicting `response` and `se`
* Added `PipeOpSurvAvg` and `surv_averager` pipeline for weighted model averaging of distr, lp, crank, and response predictions.

### Deprecated Functionality

* The following measures are deprecated use `MeasureSurvCindex` instead with following parameters: `MeasureSurvBeggC`, use defaults; `MeasureSurvHarrellC`, use defaults; `MeasureSurvUnoC`, use `weight_meth = 'G/2'`; `MeasureSurvGonenC`, use `weight_method = 'GH'`
* `MeasureSurvGrafSE`, `MeasureSurvLoglossSE`, `MeasureSurvIntLoglossSE`, `MeasureSurvRMSESE`, `MeasureSurvMSESE`, and `MeasureSurvMAESE` all deprecated and will be deleted in v0.4.0. Use `msr("surv.graf", se = TRUE)` instead (for example).
* Measures renamed such that `surv.nagelkR2` is now `surv.nagelk_r2`, analogously for all R2, AUC, TPR, and TNR measures. Old constructors will be deleted in v0.4.0.
* Renamed `distrcompose` and `crankcompose` to `distr_compose` and `crank_compose`. Old ids will be deleted in v0.4.0.

### Edited Functionality

* Measures renamed such that `surv.nagelkR2` is now `surv.nagelk_r2`, analogously for all R2, AUC, TPR, and TNR measures. Old constructors will be deleted in v0.4.0.
* `MeasureSurvGraf` and `MeasureSurvIntLogloss` now have much faster C++ implementation

### Moved Functionality

- `LearnerSurvGlmnet`, `LearnerSurvCVGlmnet`, `LearnerSurvXgboost` and `LearnerSurvRanger` have been moved to `mlr-org/mlr3learners`

- `LearnerSurvGBM` has been moved to https://www.github.com/mlr3learners/mlr3learners.gbm

- `LearnerSurvMboost`, `LearnerSurvGlmBoost`, `LearnerSurvGamboost`, `LearnerSurvBlackboost` have been moved to https://www.github.com/mlr3learners/mlr3learners.mboost



# mlr3proba 0.1.6

* Early release due to backward compatibility error introduced by an upstream dependency
* Minor updates to `mboost` family of learners: added `gehan` family, fixed parameters for `cindex`, added support for:  `weights`, `response` predict type, `importance`, `selected_features`
* Minor internal changes
* All density learners except `LearnerDensHist` and `LearnerDensKDE` have been moved to the `mlr3learners org`
* The following survival learners have been moved to  the `mlr3learners org`, LearnerSurv: `Flexible`, `ObliqueRSF`, `Penalized`, `RandomForestSRC`
* Bugfix in `LearnerSurvXgboost` previously `lp` was erroneously returned as `exp(lp)`
* Now licenced under LPGL-3

# mlr3proba 0.1.5

* `LearnerSurvParametric` and `LearnerSurvNelson` moved to `mlr3learners/mlr3learners.survival ` repo
* `LearnerSurvCoxboost` and `LearnerSurvCVCoxboost` moved to `mlr3learners/mlr3learners.coxboost ` repo
* `LearnerSurvSVM` moved to `mlr3learners/mlr3learners.survivalsvm` repo
* In the next release, all learners except for `LearnerSurvKaplan`, `LearnerSurvCoxPH`, and `LearnerDensHist` will be moved to the `mlr3learners` org
* Minor internal changes

# mlr3proba 0.1.4

* Density estimation has now been added to mlr3proba, see `TaskDens`, `LearnerDens`, `PredictionDens`, and `MeasureDens`.
* Added `mlr_tasks_faithful` and `mlr_tasks_precip` for density task examples
* Added `mlr_task_generators_simdens` for generating density tasks
* Added learners for density estimation, see `mlr3::mlr_learners$keys("^dens")` for the full list
* In line with mlr3 0.1.7, public methods `train_internal`, `predict_internal`, `score_internal` are now private methods `.train`,`.predict`,`.score`
* Converted to roxygen2 R6 documentation

# mlr3proba 0.1.3

* Changed `lp` in `surv.parametric` to include the intercept, which is in line with `survival::survreg`. Now `exp(pred$lp)` is equal to the predicted survival time for AFTs
* Moved `mboost` to `suggests`
* Added `response` predict type, which predicts the time until event. Currently only supported for AFT models in `surv.parametric`
* Added measures for `response` predict type: `MeasureSurvMAE, MeasureSurvMAESE, MeasureSurvMSE, MeasureSurvMSESE, MeasureSurvRMSE, MeasureSurvRMSESE`

# mlr3proba 0.1.2

* Fixed error in r-patched-solaris
* Added `mode` option to `crankcompositor`
* Fixes bug resulting from `R62S3` incompatibility

# mlr3proba 0.1.1

* Added `method` argument to integrated scores and added weighting by bin-width
* Added notes to IGS documentation regarding default methods and comparison to other packages
* Added `method` to `MeasureSurvIntegrated` constructor and fields
* Fixed mistake in documentation of: `TaskSurv`, `MeasureSurvUnoC`
* Added missing `LearnerSurvRpart` parameter `parms` and `cost`
* Fixed errors in r-patched-solaris and r-devel debian-clang

# mlr3proba 0.1.0

* Initial upload to CRAN.
