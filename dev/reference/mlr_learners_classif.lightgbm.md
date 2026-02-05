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
#>          V11          V36          V45          V51          V43          V28 
#> 2.106792e-01 9.839225e-02 6.785152e-02 4.958834e-02 4.243151e-02 3.972974e-02 
#>          V29          V31          V23          V13          V21          V55 
#> 3.722764e-02 3.607173e-02 3.559500e-02 2.919343e-02 2.919026e-02 2.810701e-02 
#>          V59          V12          V48          V49          V37          V44 
#> 2.462110e-02 2.328959e-02 1.973364e-02 1.931476e-02 1.612217e-02 1.585814e-02 
#>          V15          V10          V41          V17          V54          V57 
#> 1.512724e-02 1.451825e-02 1.300733e-02 1.137855e-02 1.105035e-02 1.090143e-02 
#>          V52          V27          V60          V50           V1          V26 
#> 1.051115e-02 8.672276e-03 8.344506e-03 7.783714e-03 7.061376e-03 5.938323e-03 
#>          V58          V47           V4          V20           V9          V39 
#> 5.600518e-03 5.522212e-03 5.091201e-03 5.058514e-03 4.862968e-03 4.763904e-03 
#>          V18          V19          V40          V30          V53           V5 
#> 4.569670e-03 2.921831e-03 2.764646e-03 2.384896e-03 1.649741e-03 1.562090e-03 
#>          V22           V3          V42          V46          V34          V32 
#> 1.357069e-03 1.220758e-03 1.016317e-03 6.784501e-04 6.371786e-04 4.482868e-04 
#>          V33          V56          V35 
#> 4.367757e-04 1.067001e-04 5.478784e-05 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
