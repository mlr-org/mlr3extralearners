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

|                              |           |         |                                   |                       |
|------------------------------|-----------|---------|-----------------------------------|-----------------------|
| Id                           | Type      | Default | Levels                            | Range                 |
| objective                    | character | \-      | binary, multiclass, multiclassova | \-                    |
| eval                         | untyped   | \-      |                                   | \-                    |
| verbose                      | integer   | 1       |                                   | \\(-\infty, \infty)\\ |
| record                       | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| eval_freq                    | integer   | 1       |                                   | \\\[1, \infty)\\      |
| callbacks                    | untyped   | \-      |                                   | \-                    |
| reset_data                   | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| boosting                     | character | gbdt    | gbdt, rf, dart, goss              | \-                    |
| linear_tree                  | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| learning_rate                | numeric   | 0.1     |                                   | \\\[0, \infty)\\      |
| num_leaves                   | integer   | 31      |                                   | \\\[1, 131072\]\\     |
| tree_learner                 | character | serial  | serial, feature, data, voting     | \-                    |
| num_threads                  | integer   | 0       |                                   | \\\[0, \infty)\\      |
| device_type                  | character | cpu     | cpu, gpu                          | \-                    |
| seed                         | integer   | \-      |                                   | \\(-\infty, \infty)\\ |
| deterministic                | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| data_sample_strategy         | character | bagging | bagging, goss                     | \-                    |
| force_col_wise               | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| force_row_wise               | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| histogram_pool_size          | numeric   | -1      |                                   | \\(-\infty, \infty)\\ |
| max_depth                    | integer   | -1      |                                   | \\(-\infty, \infty)\\ |
| min_data_in_leaf             | integer   | 20      |                                   | \\\[0, \infty)\\      |
| min_sum_hessian_in_leaf      | numeric   | 0.001   |                                   | \\\[0, \infty)\\      |
| bagging_fraction             | numeric   | 1       |                                   | \\\[0, 1\]\\          |
| pos_bagging_fraction         | numeric   | 1       |                                   | \\\[0, 1\]\\          |
| neg_bagging_fraction         | numeric   | 1       |                                   | \\\[0, 1\]\\          |
| bagging_freq                 | integer   | 0       |                                   | \\\[0, \infty)\\      |
| bagging_seed                 | integer   | 3       |                                   | \\(-\infty, \infty)\\ |
| bagging_by_query             | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| feature_fraction             | numeric   | 1       |                                   | \\\[0, 1\]\\          |
| feature_fraction_bynode      | numeric   | 1       |                                   | \\\[0, 1\]\\          |
| feature_fraction_seed        | integer   | 2       |                                   | \\(-\infty, \infty)\\ |
| extra_trees                  | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| extra_seed                   | integer   | 6       |                                   | \\(-\infty, \infty)\\ |
| max_delta_step               | numeric   | 0       |                                   | \\(-\infty, \infty)\\ |
| lambda_l1                    | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| lambda_l2                    | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| linear_lambda                | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| min_gain_to_split            | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| drop_rate                    | numeric   | 0.1     |                                   | \\\[0, 1\]\\          |
| max_drop                     | integer   | 50      |                                   | \\(-\infty, \infty)\\ |
| skip_drop                    | numeric   | 0.5     |                                   | \\\[0, 1\]\\          |
| xgboost_dart_mode            | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| uniform_drop                 | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| drop_seed                    | integer   | 4       |                                   | \\(-\infty, \infty)\\ |
| top_rate                     | numeric   | 0.2     |                                   | \\\[0, 1\]\\          |
| other_rate                   | numeric   | 0.1     |                                   | \\\[0, 1\]\\          |
| min_data_per_group           | integer   | 100     |                                   | \\\[1, \infty)\\      |
| max_cat_threshold            | integer   | 32      |                                   | \\\[1, \infty)\\      |
| cat_l2                       | numeric   | 10      |                                   | \\\[0, \infty)\\      |
| cat_smooth                   | numeric   | 10      |                                   | \\\[0, \infty)\\      |
| max_cat_to_onehot            | integer   | 4       |                                   | \\\[1, \infty)\\      |
| top_k                        | integer   | 20      |                                   | \\\[1, \infty)\\      |
| monotone_constraints         | untyped   | NULL    |                                   | \-                    |
| monotone_constraints_method  | character | basic   | basic, intermediate, advanced     | \-                    |
| monotone_penalty             | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| feature_contri               | untyped   | NULL    |                                   | \-                    |
| forcedsplits_filename        | untyped   | ""      |                                   | \-                    |
| refit_decay_rate             | numeric   | 0.9     |                                   | \\\[0, 1\]\\          |
| cegb_tradeoff                | numeric   | 1       |                                   | \\\[0, \infty)\\      |
| cegb_penalty_split           | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| cegb_penalty_feature_lazy    | untyped   | \-      |                                   | \-                    |
| cegb_penalty_feature_coupled | untyped   | \-      |                                   | \-                    |
| path_smooth                  | numeric   | 0       |                                   | \\\[0, \infty)\\      |
| interaction_constraints      | untyped   | \-      |                                   | \-                    |
| use_quantized_grad           | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| num_grad_quant_bins          | integer   | 4       |                                   | \\(-\infty, \infty)\\ |
| quant_train_renew_leaf       | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| stochastic_rounding          | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| serializable                 | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| max_bin                      | integer   | 255     |                                   | \\\[2, \infty)\\      |
| max_bin_by_feature           | untyped   | NULL    |                                   | \-                    |
| min_data_in_bin              | integer   | 3       |                                   | \\\[1, \infty)\\      |
| bin_construct_sample_cnt     | integer   | 200000  |                                   | \\\[1, \infty)\\      |
| data_random_seed             | integer   | 1       |                                   | \\(-\infty, \infty)\\ |
| is_enable_sparse             | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| enable_bundle                | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| use_missing                  | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| zero_as_missing              | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| feature_pre_filter           | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| pre_partition                | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| two_round                    | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| forcedbins_filename          | untyped   | ""      |                                   | \-                    |
| is_unbalance                 | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| scale_pos_weight             | numeric   | 1       |                                   | \\\[0, \infty)\\      |
| sigmoid                      | numeric   | 1       |                                   | \\\[0, \infty)\\      |
| boost_from_average           | logical   | TRUE    | TRUE, FALSE                       | \-                    |
| eval_at                      | untyped   | 1:5     |                                   | \-                    |
| multi_error_top_k            | integer   | 1       |                                   | \\\[1, \infty)\\      |
| auc_mu_weights               | untyped   | NULL    |                                   | \-                    |
| num_machines                 | integer   | 1       |                                   | \\\[1, \infty)\\      |
| local_listen_port            | integer   | 12400   |                                   | \\\[1, \infty)\\      |
| time_out                     | integer   | 120     |                                   | \\\[1, \infty)\\      |
| machines                     | untyped   | ""      |                                   | \-                    |
| gpu_platform_id              | integer   | -1      |                                   | \\(-\infty, \infty)\\ |
| gpu_device_id                | integer   | -1      |                                   | \\(-\infty, \infty)\\ |
| gpu_use_dp                   | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| num_gpu                      | integer   | 1       |                                   | \\\[1, \infty)\\      |
| start_iteration_predict      | integer   | 0       |                                   | \\(-\infty, \infty)\\ |
| num_iteration_predict        | integer   | -1      |                                   | \\(-\infty, \infty)\\ |
| pred_early_stop              | logical   | FALSE   | TRUE, FALSE                       | \-                    |
| pred_early_stop_freq         | integer   | 10      |                                   | \\(-\infty, \infty)\\ |
| pred_early_stop_margin       | numeric   | 10      |                                   | \\(-\infty, \infty)\\ |
| num_iterations               | integer   | 100     |                                   | \\\[1, \infty)\\      |
| early_stopping_rounds        | integer   | \-      |                                   | \\\[1, \infty)\\      |
| early_stopping_min_delta     | numeric   | \-      |                                   | \\\[0, \infty)\\      |
| first_metric_only            | logical   | FALSE   | TRUE, FALSE                       | \-                    |

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
    is set to `"binary"`, otherwise `"multiclasss"` and cannot be
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

- [`LearnerClassifLightGBM$new()`](#method-LearnerClassifLightGBM-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLightGBM$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from `lbg.importance`.

#### Usage

    LearnerClassifLightGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'use'

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
#>          V12          V21          V36          V51          V45          V23 
#> 9.454798e-02 7.999199e-02 6.749383e-02 6.368906e-02 6.244671e-02 5.432014e-02 
#>          V31          V43          V10          V27          V47          V11 
#> 4.963963e-02 4.952231e-02 4.898348e-02 4.767166e-02 3.946238e-02 2.981482e-02 
#>          V48          V57          V20          V37           V9          V26 
#> 2.914565e-02 2.340987e-02 2.335591e-02 2.308015e-02 2.109183e-02 1.877641e-02 
#>          V32          V18           V5          V49          V55          V54 
#> 1.806824e-02 1.702810e-02 1.474972e-02 1.422189e-02 1.364967e-02 1.184862e-02 
#>           V4          V17          V42           V8          V13          V60 
#> 9.935041e-03 9.057295e-03 7.744429e-03 7.187689e-03 5.016952e-03 3.787341e-03 
#>          V19          V15          V30          V44          V38          V33 
#> 3.726962e-03 3.714099e-03 3.513148e-03 3.498538e-03 3.141627e-03 2.840793e-03 
#>           V6          V40          V50          V59          V28          V29 
#> 2.452795e-03 2.222846e-03 2.093012e-03 2.076838e-03 2.028042e-03 1.684706e-03 
#>           V1          V41          V14          V53          V56           V2 
#> 1.589646e-03 1.279632e-03 1.161744e-03 1.150551e-03 1.064435e-03 7.862717e-04 
#>          V52           V7          V16          V22 
#> 5.490605e-04 3.644574e-04 2.698022e-04 5.219886e-05 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#> 0.08695652 
```
