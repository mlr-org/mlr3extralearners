# Gradient Boosted Decision Trees Classification Learner

Gradient boosting algorithm that also supports categorical data. Calls
[`catboost::catboost.train()`](https://rdrr.io/pkg/catboost/man/catboost.train.html)
from package 'catboost'.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.catboost")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [catboost](https://CRAN.R-project.org/package=catboost)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| loss_function_twoclass | character | Logloss | Logloss, CrossEntropy | \- |
| loss_function_multiclass | character | MultiClass | MultiClass, MultiClassOneVsAll | \- |
| learning_rate | numeric | 0.03 |  | \\\[0.001, 1\]\\ |
| random_seed | integer | 0 |  | \\\[0, \infty)\\ |
| l2_leaf_reg | numeric | 3 |  | \\\[0, \infty)\\ |
| bootstrap_type | character | \- | Bayesian, Bernoulli, MVS, Poisson, No | \- |
| bagging_temperature | numeric | 1 |  | \\\[0, \infty)\\ |
| subsample | numeric | \- |  | \\\[0, 1\]\\ |
| sampling_frequency | character | PerTreeLevel | PerTree, PerTreeLevel | \- |
| sampling_unit | character | Object | Object, Group | \- |
| mvs_reg | numeric | \- |  | \\\[0, \infty)\\ |
| random_strength | numeric | 1 |  | \\\[0, \infty)\\ |
| depth | integer | 6 |  | \\\[1, 16\]\\ |
| grow_policy | character | SymmetricTree | SymmetricTree, Depthwise, Lossguide | \- |
| min_data_in_leaf | integer | 1 |  | \\\[1, \infty)\\ |
| max_leaves | integer | 31 |  | \\\[1, \infty)\\ |
| ignored_features | untyped | NULL |  | \- |
| one_hot_max_size | untyped | FALSE |  | \- |
| has_time | logical | FALSE | TRUE, FALSE | \- |
| rsm | numeric | 1 |  | \\\[0.001, 1\]\\ |
| nan_mode | character | Min | Min, Max | \- |
| fold_permutation_block | integer | \- |  | \\\[1, 256\]\\ |
| leaf_estimation_method | character | \- | Newton, Gradient, Exact | \- |
| leaf_estimation_iterations | integer | \- |  | \\\[1, \infty)\\ |
| leaf_estimation_backtracking | character | AnyImprovement | No, AnyImprovement, Armijo | \- |
| fold_len_multiplier | numeric | 2 |  | \\\[1.001, \infty)\\ |
| approx_on_full_history | logical | TRUE | TRUE, FALSE | \- |
| class_weights | untyped | \- |  | \- |
| auto_class_weights | character | None | None, Balanced, SqrtBalanced | \- |
| boosting_type | character | \- | Ordered, Plain | \- |
| boost_from_average | logical | \- | TRUE, FALSE | \- |
| langevin | logical | FALSE | TRUE, FALSE | \- |
| diffusion_temperature | numeric | 10000 |  | \\\[0, \infty)\\ |
| score_function | character | Cosine | Cosine, L2, NewtonCosine, NewtonL2 | \- |
| monotone_constraints | untyped | \- |  | \- |
| feature_weights | untyped | \- |  | \- |
| first_feature_use_penalties | untyped | \- |  | \- |
| penalties_coefficient | numeric | 1 |  | \\\[0, \infty)\\ |
| per_object_feature_penalties | untyped | \- |  | \- |
| model_shrink_rate | numeric | \- |  | \\(-\infty, \infty)\\ |
| model_shrink_mode | character | \- | Constant, Decreasing | \- |
| target_border | numeric | \- |  | \\(-\infty, \infty)\\ |
| border_count | integer | \- |  | \\\[1, 65535\]\\ |
| feature_border_type | character | GreedyLogSum | Median, Uniform, UniformAndQuantiles, MaxLogSum, MinEntropy, GreedyLogSum | \- |
| per_float_feature_quantization | untyped | \- |  | \- |
| classes_count | integer | \- |  | \\\[1, \infty)\\ |
| thread_count | integer | 1 |  | \\\[-1, \infty)\\ |
| task_type | character | CPU | CPU, GPU | \- |
| devices | untyped | \- |  | \- |
| logging_level | character | Silent | Silent, Verbose, Info, Debug | \- |
| metric_period | integer | 1 |  | \\\[1, \infty)\\ |
| train_dir | untyped | "catboost_info" |  | \- |
| model_size_reg | numeric | 0.5 |  | \\\[0, 1\]\\ |
| allow_writing_files | logical | FALSE | TRUE, FALSE | \- |
| save_snapshot | logical | FALSE | TRUE, FALSE | \- |
| snapshot_file | untyped | \- |  | \- |
| snapshot_interval | integer | 600 |  | \\\[1, \infty)\\ |
| simple_ctr | untyped | \- |  | \- |
| combinations_ctr | untyped | \- |  | \- |
| ctr_target_border_count | integer | \- |  | \\\[1, 255\]\\ |
| counter_calc_method | character | Full | SkipTest, Full | \- |
| max_ctr_complexity | integer | \- |  | \\\[1, \infty)\\ |
| ctr_leaf_count_limit | integer | \- |  | \\\[1, \infty)\\ |
| store_all_simple_ctr | logical | FALSE | TRUE, FALSE | \- |
| final_ctr_computation_mode | character | Default | Default, Skip | \- |
| verbose | logical | FALSE | TRUE, FALSE | \- |
| ntree_start | integer | 0 |  | \\\[0, \infty)\\ |
| ntree_end | integer | 0 |  | \\\[0, \infty)\\ |
| early_stopping_rounds | integer | \- |  | \\\[1, \infty)\\ |
| eval_metric | untyped | \- |  | \- |
| use_best_model | logical | \- | TRUE, FALSE | \- |
| iterations | integer | 1000 |  | \\\[1, \infty)\\ |

## Installation

See <https://catboost.ai/en/docs/concepts/r-installation>.

## Initial parameter values

- `logging_level`:

  - Actual default: "Verbose"

  - Adjusted default: "Silent"

  - Reason for change: consistent with other mlr3 learners

- `thread_count`:

  - Actual default: -1

  - Adjusted default: 1

  - Reason for change: consistent with other mlr3 learners

- `allow_writing_files`:

  - Actual default: TRUE

  - Adjusted default: FALSE

  - Reason for change: consistent with other mlr3 learners

- `save_snapshot`:

  - Actual default: TRUE

  - Adjusted default: FALSE

  - Reason for change: consistent with other mlr3 learners

## Early stopping

Early stopping can be used to find the optimal number of boosting
rounds. Set `early_stopping_rounds` to an integer value to monitor the
performance of the model on the validation set while training. For
information on how to configure the validation set, see the *Validation*
section of
[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html).

## References

Dorogush, Veronika A, Ershov, Vasily, Gulin, Andrey (2018). “CatBoost:
gradient boosting with categorical features support.” *arXiv preprint
arXiv:1810.11363*.

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

sumny

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifCatboost`

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

- [`LearnerClassifCatboost$new()`](#method-LearnerClassifCatboost-initialize)

- [`LearnerClassifCatboost$importance()`](#method-LearnerClassifCatboost-importance)

- [`LearnerClassifCatboost$clone()`](#method-LearnerClassifCatboost-clone)

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

### `LearnerClassifCatboost$new()`

Create a `LearnerClassifCatboost` object.

#### Usage

    LearnerClassifCatboost$new()

------------------------------------------------------------------------

### `LearnerClassifCatboost$importance()`

The importance scores are calculated using
[`catboost::catboost.get_feature_importance()`](https://rdrr.io/pkg/catboost/man/catboost.get_feature_importance.html),
setting `type = "FeatureImportance"`, returned for 'all'.

#### Usage

    LearnerClassifCatboost$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifCatboost$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifCatboost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.catboost", iterations = 10)
print(learner)
#> 
#> ── <LearnerClassifCatboost> (classif.catboost): Gradient Boosting ──────────────
#> • Model: -
#> • Parameters: loss_function_twoclass=Logloss,
#> loss_function_multiclass=MultiClass, thread_count=1, logging_level=Silent,
#> allow_writing_files=FALSE, save_snapshot=FALSE, iterations=10
#> • Validate: NULL
#> • Packages: mlr3, mlr3extralearners, and catboost
#> • Predict Types: [response] and prob
#> • Feature Types: numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, internal_tuning, missings, multiclass, twoclass,
#> validation, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> CatBoost model (10 trees)
#> Loss function: Logloss
#> Fit to 60 feature(s)
print(learner$importance())
#>        V11        V28        V17        V27        V44        V54        V31 
#> 17.2670487  8.3722813  7.6749626  4.9189456  4.8122602  4.5770617  4.3560750 
#>        V49        V32         V9        V37        V40        V13        V58 
#>  3.9069842  3.8492729  3.6618641  2.9605357  2.6727721  2.6441403  2.6008500 
#>         V5        V10        V53         V7        V52        V34        V50 
#>  2.5485455  2.4318094  1.9469130  1.7960184  1.7829952  1.3506510  1.3468574 
#>        V51        V57        V19        V38        V21        V12        V45 
#>  1.3417785  1.1638038  1.1589858  1.1231483  1.0780155  0.9340811  0.9332603 
#>        V33        V36        V26         V6        V56        V47        V14 
#>  0.8774916  0.8559965  0.7966975  0.6465196  0.5857834  0.4231784  0.3381599 
#>        V59         V1        V15        V16        V18         V2        V20 
#>  0.2642556  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V22        V23        V24        V25        V29         V3        V30 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V35        V39         V4        V41        V42        V43        V46 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V48        V55        V60         V8 
#>  0.0000000  0.0000000  0.0000000  0.0000000 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
