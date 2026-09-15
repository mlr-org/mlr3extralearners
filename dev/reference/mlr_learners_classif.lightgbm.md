# Classification LightGBM Learner

Gradient boosting algorithm. Calls
[`lightgbm::lightgbm()`](https://rdrr.io/pkg/lightgbm/man/lightgbm.html)
from [lightgbm](https://CRAN.R-project.org/package=lightgbm). The list
of parameters can be found
[here](https://lightgbm.readthedocs.io/en/latest/Parameters.html#) and
in the documentation of
[`lightgbm::lgb.train()`](https://rdrr.io/pkg/lightgbm/man/lgb.train.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.lightgbm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [lightgbm](https://CRAN.R-project.org/package=lightgbm)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| objective | character | \- | binary, multiclass, multiclassova | \- |
| eval | untyped | \- |  | \- |
| verbose | integer | 1 |  | \\(-\infty, \infty)\\ |
| record | logical | TRUE | TRUE, FALSE | \- |
| eval_freq | integer | 1 |  | \\\[1, \infty)\\ |
| callbacks | untyped | \- |  | \- |
| reset_data | logical | FALSE | TRUE, FALSE | \- |
| boosting | character | gbdt | gbdt, rf, dart, goss | \- |
| linear_tree | logical | FALSE | TRUE, FALSE | \- |
| learning_rate | numeric | 0.1 |  | \\\[0, \infty)\\ |
| num_leaves | integer | 31 |  | \\\[1, 131072\]\\ |
| tree_learner | character | serial | serial, feature, data, voting | \- |
| num_threads | integer | 0 |  | \\\[0, \infty)\\ |
| device_type | character | cpu | cpu, gpu | \- |
| seed | integer | \- |  | \\(-\infty, \infty)\\ |
| deterministic | logical | FALSE | TRUE, FALSE | \- |
| data_sample_strategy | character | bagging | bagging, goss | \- |
| force_col_wise | logical | FALSE | TRUE, FALSE | \- |
| force_row_wise | logical | FALSE | TRUE, FALSE | \- |
| histogram_pool_size | numeric | -1 |  | \\(-\infty, \infty)\\ |
| max_depth | integer | -1 |  | \\(-\infty, \infty)\\ |
| min_data_in_leaf | integer | 20 |  | \\\[0, \infty)\\ |
| min_sum_hessian_in_leaf | numeric | 0.001 |  | \\\[0, \infty)\\ |
| bagging_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| pos_bagging_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| neg_bagging_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| bagging_freq | integer | 0 |  | \\\[0, \infty)\\ |
| bagging_seed | integer | 3 |  | \\(-\infty, \infty)\\ |
| bagging_by_query | logical | FALSE | TRUE, FALSE | \- |
| feature_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| feature_fraction_bynode | numeric | 1 |  | \\\[0, 1\]\\ |
| feature_fraction_seed | integer | 2 |  | \\(-\infty, \infty)\\ |
| extra_trees | logical | FALSE | TRUE, FALSE | \- |
| extra_seed | integer | 6 |  | \\(-\infty, \infty)\\ |
| max_delta_step | numeric | 0 |  | \\(-\infty, \infty)\\ |
| lambda_l1 | numeric | 0 |  | \\\[0, \infty)\\ |
| lambda_l2 | numeric | 0 |  | \\\[0, \infty)\\ |
| linear_lambda | numeric | 0 |  | \\\[0, \infty)\\ |
| min_gain_to_split | numeric | 0 |  | \\\[0, \infty)\\ |
| drop_rate | numeric | 0.1 |  | \\\[0, 1\]\\ |
| max_drop | integer | 50 |  | \\(-\infty, \infty)\\ |
| skip_drop | numeric | 0.5 |  | \\\[0, 1\]\\ |
| xgboost_dart_mode | logical | FALSE | TRUE, FALSE | \- |
| uniform_drop | logical | FALSE | TRUE, FALSE | \- |
| drop_seed | integer | 4 |  | \\(-\infty, \infty)\\ |
| top_rate | numeric | 0.2 |  | \\\[0, 1\]\\ |
| other_rate | numeric | 0.1 |  | \\\[0, 1\]\\ |
| min_data_per_group | integer | 100 |  | \\\[1, \infty)\\ |
| max_cat_threshold | integer | 32 |  | \\\[1, \infty)\\ |
| cat_l2 | numeric | 10 |  | \\\[0, \infty)\\ |
| cat_smooth | numeric | 10 |  | \\\[0, \infty)\\ |
| max_cat_to_onehot | integer | 4 |  | \\\[1, \infty)\\ |
| top_k | integer | 20 |  | \\\[1, \infty)\\ |
| monotone_constraints | untyped | NULL |  | \- |
| monotone_constraints_method | character | basic | basic, intermediate, advanced | \- |
| monotone_penalty | numeric | 0 |  | \\\[0, \infty)\\ |
| feature_contri | untyped | NULL |  | \- |
| forcedsplits_filename | untyped | "" |  | \- |
| refit_decay_rate | numeric | 0.9 |  | \\\[0, 1\]\\ |
| cegb_tradeoff | numeric | 1 |  | \\\[0, \infty)\\ |
| cegb_penalty_split | numeric | 0 |  | \\\[0, \infty)\\ |
| cegb_penalty_feature_lazy | untyped | \- |  | \- |
| cegb_penalty_feature_coupled | untyped | \- |  | \- |
| path_smooth | numeric | 0 |  | \\\[0, \infty)\\ |
| interaction_constraints | untyped | \- |  | \- |
| use_quantized_grad | logical | TRUE | TRUE, FALSE | \- |
| num_grad_quant_bins | integer | 4 |  | \\(-\infty, \infty)\\ |
| quant_train_renew_leaf | logical | FALSE | TRUE, FALSE | \- |
| stochastic_rounding | logical | TRUE | TRUE, FALSE | \- |
| serializable | logical | TRUE | TRUE, FALSE | \- |
| max_bin | integer | 255 |  | \\\[2, \infty)\\ |
| max_bin_by_feature | untyped | NULL |  | \- |
| min_data_in_bin | integer | 3 |  | \\\[1, \infty)\\ |
| bin_construct_sample_cnt | integer | 200000 |  | \\\[1, \infty)\\ |
| data_random_seed | integer | 1 |  | \\(-\infty, \infty)\\ |
| is_enable_sparse | logical | TRUE | TRUE, FALSE | \- |
| enable_bundle | logical | TRUE | TRUE, FALSE | \- |
| use_missing | logical | TRUE | TRUE, FALSE | \- |
| zero_as_missing | logical | FALSE | TRUE, FALSE | \- |
| feature_pre_filter | logical | TRUE | TRUE, FALSE | \- |
| pre_partition | logical | FALSE | TRUE, FALSE | \- |
| two_round | logical | FALSE | TRUE, FALSE | \- |
| forcedbins_filename | untyped | "" |  | \- |
| is_unbalance | logical | FALSE | TRUE, FALSE | \- |
| scale_pos_weight | numeric | 1 |  | \\\[0, \infty)\\ |
| sigmoid | numeric | 1 |  | \\\[0, \infty)\\ |
| boost_from_average | logical | TRUE | TRUE, FALSE | \- |
| eval_at | untyped | 1:5 |  | \- |
| multi_error_top_k | integer | 1 |  | \\\[1, \infty)\\ |
| auc_mu_weights | untyped | NULL |  | \- |
| num_machines | integer | 1 |  | \\\[1, \infty)\\ |
| local_listen_port | integer | 12400 |  | \\\[1, \infty)\\ |
| time_out | integer | 120 |  | \\\[1, \infty)\\ |
| machines | untyped | "" |  | \- |
| gpu_platform_id | integer | -1 |  | \\(-\infty, \infty)\\ |
| gpu_device_id | integer | -1 |  | \\(-\infty, \infty)\\ |
| gpu_device_id_list | untyped | NULL |  | \- |
| gpu_use_dp | logical | FALSE | TRUE, FALSE | \- |
| num_gpu | integer | 1 |  | \\\[1, \infty)\\ |
| start_iteration_predict | integer | 0 |  | \\(-\infty, \infty)\\ |
| num_iteration_predict | integer | -1 |  | \\(-\infty, \infty)\\ |
| pred_early_stop | logical | FALSE | TRUE, FALSE | \- |
| pred_early_stop_freq | integer | 10 |  | \\(-\infty, \infty)\\ |
| pred_early_stop_margin | numeric | 10 |  | \\(-\infty, \infty)\\ |
| num_iterations | integer | 100 |  | \\\[1, \infty)\\ |
| early_stopping_rounds | integer | \- |  | \\\[1, \infty)\\ |
| early_stopping_min_delta | numeric | \- |  | \\\[0, \infty)\\ |
| first_metric_only | logical | FALSE | TRUE, FALSE | \- |

## Initial parameter values

- `num_threads`:

  - Actual default: 0L

  - Initial value: 1L

  - Reason for change: Prevents accidental conflicts with `future`.

- `verbose`:

  - Actual default: 1L

  - Initial value: -1L

  - Reason for change: Prevents accidental conflicts with mlr messaging
    system.

- `objective`:

  - Depends on the task: if binary classification, then this parameter
    is set to `"binary"`, otherwise `"multiclass"` and cannot be
    changed.

## Custom mlr3 parameters

- `num_class`: This parameter is automatically inferred for multiclass
  tasks and does not have to be set.

## Early Stopping and Validation

Early stopping can be used to find the optimal number of boosting
rounds. Set `early_stopping_rounds` to an integer value to monitor the
performance of the model on the validation set while training. For
information on how to configure the validation set, see the *Validation*
section of
[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html). The
internal validation measure can be set the `eval` parameter which should
be a list of
[mlr3::Measure](https://mlr3.mlr-org.com/reference/Measure.html)s,
functions, or strings for the internal lightgbm measures. If
`first_metric_only = FALSE` (default), the learner stops when any metric
fails to improve.

## References

Ke, Guolin, Meng, Qi, Finley, Thomas, Wang, Taifeng, Chen, Wei, Ma,
Weidong, Ye, Qiwei, Liu, Tie-Yan (2017). “Lightgbm: A highly efficient
gradient boosting decision tree.” *Advances in neural information
processing systems*, **30**.

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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

kapsner

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifLightGBM`

## Active bindings

- `internal_valid_scores`:

  The last observation of the validation scores for all metrics.
  Extracted from `model$evaluation_log`

- `internal_tuned_values`:

  Returns the early stopped iterations if `early_stopping_rounds` was
  set during training.

- `validate`:

  How to construct the internal validation data. This parameter can be
  either `NULL`, a ratio, `"test"`, or `"predefined"`.

## Methods

### Public methods

- [`LearnerClassifLightGBM$new()`](#method-LearnerClassifLightGBM-initialize)

- [`LearnerClassifLightGBM$importance()`](#method-LearnerClassifLightGBM-importance)

- [`LearnerClassifLightGBM$clone()`](#method-LearnerClassifLightGBM-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### `LearnerClassifLightGBM$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLightGBM$new()

------------------------------------------------------------------------

### `LearnerClassifLightGBM$importance()`

The importance scores are extracted from `lbg.importance`.

#### Usage

    LearnerClassifLightGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifLightGBM$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLightGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.lightgbm")
print(learner)
#> 
#> ── <LearnerClassifLightGBM> (classif.lightgbm): Gradient Boosting ──────────────
#> • Model: -
#> • Parameters: verbose=-1, num_threads=1
#> • Validate: NULL
#> • Packages: mlr3, mlr3extralearners, and lightgbm
#> • Predict Types: response and [prob]
#> • Feature Types: logical, integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: hotstart_forward, importance, internal_tuning, missings,
#> multiclass, twoclass, validation, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> LightGBM Model (100 trees)
#> Objective: binary
#> Fitted to dataset with 60 columns
print(learner$importance())
#>          V11          V23          V36          V52          V12          V43 
#> 1.710209e-01 7.230699e-02 6.932540e-02 6.765845e-02 5.533154e-02 4.583144e-02 
#>           V9          V45          V49          V51          V16          V37 
#> 4.268483e-02 4.197557e-02 4.082835e-02 4.000168e-02 3.395008e-02 3.021565e-02 
#>          V27           V2          V20           V4          V15          V10 
#> 3.003417e-02 2.707364e-02 2.146846e-02 2.024405e-02 1.847047e-02 1.679712e-02 
#>          V48          V18          V46          V39          V44          V21 
#> 1.599847e-02 1.283964e-02 1.035023e-02 1.010689e-02 9.735883e-03 8.272242e-03 
#>          V59          V25          V17          V55           V6          V32 
#> 8.042462e-03 7.382849e-03 7.307850e-03 7.186338e-03 6.415557e-03 5.972355e-03 
#>          V26          V31          V47          V22          V24          V34 
#> 5.702408e-03 5.646064e-03 4.155587e-03 4.041230e-03 3.429383e-03 2.469552e-03 
#>          V38          V28           V7          V42          V29          V50 
#> 2.184241e-03 1.987900e-03 1.835661e-03 1.748671e-03 1.734988e-03 1.529621e-03 
#>           V8          V57           V3          V33          V13          V54 
#> 1.397275e-03 1.388874e-03 1.042123e-03 9.627546e-04 7.456607e-04 6.955654e-04 
#>           V1          V14          V60          V53          V40          V56 
#> 4.998393e-04 4.970483e-04 3.858536e-04 3.352472e-04 2.458691e-04 1.966874e-04 
#>          V30          V19          V35 
#> 1.921786e-04 7.434887e-05 4.583052e-05 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
