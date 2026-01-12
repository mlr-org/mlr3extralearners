# Extreme Gradient Boosting Cox Survival Learner

eXtreme Gradient Boosting regression using a **Cox Proportional
Hazards** objective. Calls
[`xgboost::xgb.train()`](https://rdrr.io/pkg/xgboost/man/xgb.train.html)
from package [xgboost](https://CRAN.R-project.org/package=xgboost) with
`objective` set to `survival:cox` and `eval_metric` to `cox-nloglik`.

## Note

To compute on GPUs, you first need to compile
[xgboost](https://CRAN.R-project.org/package=xgboost) yourself and link
against CUDA. See
<https://xgboost.readthedocs.io/en/stable/build.html#building-with-gpu-support>.

## Prediction types

Three types of prediction are returned for this learner:

1.  `lp`: a vector of linear predictors (relative risk scores), one per
    observation.

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. By default, the
    Breslow estimator is used via
    [`mlr3proba::breslow()`](https://mlr3proba.mlr-org.com/reference/breslow.html).

## Initial parameter values

- `nrounds` is initialized to 1000.

- `nthread` is initialized to 1 to avoid conflicts with parallelization
  via [future](https://CRAN.R-project.org/package=future).

- `verbose` and `verbosity` are both initialized to 0.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.xgboost.cox")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [xgboost](https://CRAN.R-project.org/package=xgboost)

## Parameters

|                             |           |           |                                          |                       |
|-----------------------------|-----------|-----------|------------------------------------------|-----------------------|
| Id                          | Type      | Default   | Levels                                   | Range                 |
| alpha                       | numeric   | 0         |                                          | \\\[0, \infty)\\      |
| base_score                  | numeric   | 0.5       |                                          | \\(-\infty, \infty)\\ |
| booster                     | character | gbtree    | gbtree, gblinear, dart                   | \-                    |
| callbacks                   | untyped   | list()    |                                          | \-                    |
| seed                        | integer   | \-        |                                          | \\(-\infty, \infty)\\ |
| colsample_bylevel           | numeric   | 1         |                                          | \\\[0, 1\]\\          |
| colsample_bynode            | numeric   | 1         |                                          | \\\[0, 1\]\\          |
| colsample_bytree            | numeric   | 1         |                                          | \\\[0, 1\]\\          |
| disable_default_eval_metric | logical   | FALSE     | TRUE, FALSE                              | \-                    |
| early_stopping_rounds       | integer   | NULL      |                                          | \\\[1, \infty)\\      |
| evals                       | untyped   | NULL      |                                          | \-                    |
| learning_rate               | numeric   | 0.3       |                                          | \\\[0, 1\]\\          |
| feature_selector            | character | cyclic    | cyclic, shuffle, random, greedy, thrifty | \-                    |
| gamma                       | numeric   | 0         |                                          | \\\[0, \infty)\\      |
| grow_policy                 | character | depthwise | depthwise, lossguide                     | \-                    |
| interaction_constraints     | untyped   | \-        |                                          | \-                    |
| iterationrange              | untyped   | \-        |                                          | \-                    |
| lambda                      | numeric   | 1         |                                          | \\\[0, \infty)\\      |
| max_bin                     | integer   | 256       |                                          | \\\[2, \infty)\\      |
| max_delta_step              | numeric   | 0         |                                          | \\\[0, \infty)\\      |
| max_depth                   | integer   | 6         |                                          | \\\[0, \infty)\\      |
| max_leaves                  | integer   | 0         |                                          | \\\[0, \infty)\\      |
| maximize                    | logical   | NULL      | TRUE, FALSE                              | \-                    |
| min_child_weight            | numeric   | 1         |                                          | \\\[0, \infty)\\      |
| monotone_constraints        | integer   | 0         |                                          | \\\[-1, 1\]\\         |
| normalize_type              | character | tree      | tree, forest                             | \-                    |
| nrounds                     | integer   | \-        |                                          | \\\[1, \infty)\\      |
| nthread                     | integer   | \-        |                                          | \\\[1, \infty)\\      |
| num_parallel_tree           | integer   | 1         |                                          | \\\[1, \infty)\\      |
| one_drop                    | logical   | FALSE     | TRUE, FALSE                              | \-                    |
| print_every_n               | integer   | 1         |                                          | \\\[1, \infty)\\      |
| rate_drop                   | numeric   | 0         |                                          | \\\[0, 1\]\\          |
| refresh_leaf                | logical   | TRUE      | TRUE, FALSE                              | \-                    |
| sampling_method             | character | uniform   | uniform, gradient_based                  | \-                    |
| sample_type                 | character | uniform   | uniform, weighted                        | \-                    |
| save_name                   | untyped   | \-        |                                          | \-                    |
| save_period                 | integer   | \-        |                                          | \\\[0, \infty)\\      |
| scale_pos_weight            | numeric   | 1         |                                          | \\(-\infty, \infty)\\ |
| seed_per_iteration          | logical   | FALSE     | TRUE, FALSE                              | \-                    |
| skip_drop                   | numeric   | 0         |                                          | \\\[0, 1\]\\          |
| use_rmm                     | logical   | FALSE     | TRUE, FALSE                              | \-                    |
| max_cached_hist_node        | integer   | NULL      |                                          | \\(-\infty, \infty)\\ |
| extmem_single_page          | logical   | FALSE     | TRUE, FALSE                              | \-                    |
| max_cat_to_onehot           | integer   | 4         |                                          | \\(-\infty, \infty)\\ |
| max_cat_threshold           | integer   | 64        |                                          | \\(-\infty, \infty)\\ |
| subsample                   | numeric   | 1         |                                          | \\\[0, 1\]\\          |
| top_k                       | integer   | 0         |                                          | \\\[0, \infty)\\      |
| tree_method                 | character | auto      | auto, exact, approx, hist, gpu_hist      | \-                    |
| updater                     | untyped   | \-        |                                          | \-                    |
| verbose                     | integer   | \-        |                                          | \\\[0, 2\]\\          |
| verbosity                   | integer   | \-        |                                          | \\\[0, 2\]\\          |
| xgb_model                   | untyped   | \-        |                                          | \-                    |
| device                      | untyped   | \-        |                                          | \-                    |
| missing                     | numeric   | NA        |                                          | \\(-\infty, \infty)\\ |
| validate_features           | logical   | TRUE      | TRUE, FALSE                              | \-                    |

## Early stopping

Early stopping can be used to find the optimal number of boosting
rounds. The `early_stopping_set` parameter controls which set is used to
monitor the performance. By default, `early_stopping_set = "none"` which
disables early stopping. Set `early_stopping_set = "test"` to monitor
the performance of the model on the test set while training. The test
set for early stopping can be set with the `"test"` row role in the
[mlr3::Task](https://mlr3.mlr-org.com/reference/Task.html).
Additionally, the range must be set in which the performance must
increase with `early_stopping_rounds` and the maximum number of boosting
rounds with `nrounds`. While resampling, the test set is automatically
applied from the
[mlr3::Resampling](https://mlr3.mlr-org.com/reference/Resampling.html).
Not that using the test set for early stopping can potentially bias the
performance scores.

## References

Chen, Tianqi, Guestrin, Carlos (2016). “Xgboost: A scalable tree
boosting system.” In *Proceedings of the 22nd ACM SIGKDD Conference on
Knowledge Discovery and Data Mining*, 785–794. ACM.
[doi:10.1145/2939672.2939785](https://doi.org/10.1145/2939672.2939785) .

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/basics.html#learners>

- [mlr3learners](https://CRAN.R-project.org/package=mlr3learners) for a
  selection of recommended learners.

- [mlr3cluster](https://CRAN.R-project.org/package=mlr3cluster) for
  unsupervised clustering learners.

- [mlr3pipelines](https://CRAN.R-project.org/package=mlr3pipelines) to
  combine learners with pre- and postprocessing steps.

- [mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning) for tuning
  of hyperparameters,
  [mlr3tuningspaces](https://CRAN.R-project.org/package=mlr3tuningspaces)
  for established default tuning spaces.

## Author

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvXgboostCox`

## Active bindings

- `internal_valid_scores`:

  (named [`list()`](https://rdrr.io/r/base/list.html) or `NULL`)
  Validation metrics extracted from the xgboost model's
  `evaluation_log`. If early stopping is enabled, the scores correspond
  to the `best_iteration` selected by early stopping. Otherwise, the
  scores are taken from the final boosting round (`nrounds`).

- `internal_tuned_values`:

  (named [`list()`](https://rdrr.io/r/base/list.html) or `NULL`) If
  early stopping is activated, this returns a list with the early
  stopped iterations (`nrounds`), which is extracted from the best
  iteration of the model. Otherwise `NULL`.

- `validate`:

  How to construct the internal validation data. This parameter can be
  either `NULL`, a ratio, `"test"`, or `"predefined"`.

- `model`:

  (any)  
  The fitted model. Only available after `$train()` has been called.

## Methods

### Public methods

- [`LearnerSurvXgboostCox$new()`](#method-LearnerSurvXgboostCox-new)

- [`LearnerSurvXgboostCox$importance()`](#method-LearnerSurvXgboostCox-importance)

- [`LearnerSurvXgboostCox$clone()`](#method-LearnerSurvXgboostCox-clone)

Inherited methods

- [`mlr3::Learner$base_learner()`](https://mlr3.mlr-org.com/reference/Learner.html#method-base_learner)
- [`mlr3::Learner$configure()`](https://mlr3.mlr-org.com/reference/Learner.html#method-configure)
- [`mlr3::Learner$encapsulate()`](https://mlr3.mlr-org.com/reference/Learner.html#method-encapsulate)
- [`mlr3::Learner$format()`](https://mlr3.mlr-org.com/reference/Learner.html#method-format)
- [`mlr3::Learner$help()`](https://mlr3.mlr-org.com/reference/Learner.html#method-help)
- [`mlr3::Learner$predict()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict)
- [`mlr3::Learner$predict_newdata()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict_newdata)
- [`mlr3::Learner$print()`](https://mlr3.mlr-org.com/reference/Learner.html#method-print)
- [`mlr3::Learner$reset()`](https://mlr3.mlr-org.com/reference/Learner.html#method-reset)
- [`mlr3::Learner$selected_features()`](https://mlr3.mlr-org.com/reference/Learner.html#method-selected_features)
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvXgboostCox$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are calculated with
[`xgboost::xgb.importance()`](https://rdrr.io/pkg/xgboost/man/xgb.importance.html).

#### Usage

    LearnerSurvXgboostCox$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvXgboostCox$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.xgboost.cox")
print(learner)
#> 
#> ── <LearnerSurvXgboostCox> (surv.xgboost.cox): Extreme Gradient Boosting Cox ───
#> • Model: -
#> • Parameters: nrounds=1000, nthread=1, verbose=0, verbosity=0
#> • Validate: NULL
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and xgboost
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, internal_tuning, missings, validation, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> ##### xgb.Booster
#> call:
#>   xgboost::xgb.train(params = pv[names(pv) %in% formalArgs(xgboost::xgb.params)], 
#>     data = data, nrounds = pv$nrounds, evals = pv$evals, verbose = pv$verbose, 
#>     print_every_n = pv$print_every_n, early_stopping_rounds = pv$early_stopping_rounds, 
#>     maximize = pv$maximize, save_period = pv$save_period, save_name = pv$save_name, 
#>     callbacks = pv$callbacks %??% list())
#> # of features: 6 
#> # of rounds:  1000 
#> callbacks:
#>    lp_train, times, status 
print(learner$importance())
#>      sysbp revascdays        los     revasc        age   stchange 
#> 0.48659951 0.23907252 0.09871223 0.08322981 0.08089301 0.01149292 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8682978 
```
