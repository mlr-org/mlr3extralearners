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

|                                |           |                 |                                                                           |                       |
|--------------------------------|-----------|-----------------|---------------------------------------------------------------------------|-----------------------|
| Id                             | Type      | Default         | Levels                                                                    | Range                 |
| loss_function_twoclass         | character | Logloss         | Logloss, CrossEntropy                                                     | \-                    |
| loss_function_multiclass       | character | MultiClass      | MultiClass, MultiClassOneVsAll                                            | \-                    |
| learning_rate                  | numeric   | 0.03            |                                                                           | \\\[0.001, 1\]\\      |
| random_seed                    | integer   | 0               |                                                                           | \\\[0, \infty)\\      |
| l2_leaf_reg                    | numeric   | 3               |                                                                           | \\\[0, \infty)\\      |
| bootstrap_type                 | character | \-              | Bayesian, Bernoulli, MVS, Poisson, No                                     | \-                    |
| bagging_temperature            | numeric   | 1               |                                                                           | \\\[0, \infty)\\      |
| subsample                      | numeric   | \-              |                                                                           | \\\[0, 1\]\\          |
| sampling_frequency             | character | PerTreeLevel    | PerTree, PerTreeLevel                                                     | \-                    |
| sampling_unit                  | character | Object          | Object, Group                                                             | \-                    |
| mvs_reg                        | numeric   | \-              |                                                                           | \\\[0, \infty)\\      |
| random_strength                | numeric   | 1               |                                                                           | \\\[0, \infty)\\      |
| depth                          | integer   | 6               |                                                                           | \\\[1, 16\]\\         |
| grow_policy                    | character | SymmetricTree   | SymmetricTree, Depthwise, Lossguide                                       | \-                    |
| min_data_in_leaf               | integer   | 1               |                                                                           | \\\[1, \infty)\\      |
| max_leaves                     | integer   | 31              |                                                                           | \\\[1, \infty)\\      |
| ignored_features               | untyped   | NULL            |                                                                           | \-                    |
| one_hot_max_size               | untyped   | FALSE           |                                                                           | \-                    |
| has_time                       | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| rsm                            | numeric   | 1               |                                                                           | \\\[0.001, 1\]\\      |
| nan_mode                       | character | Min             | Min, Max                                                                  | \-                    |
| fold_permutation_block         | integer   | \-              |                                                                           | \\\[1, 256\]\\        |
| leaf_estimation_method         | character | \-              | Newton, Gradient, Exact                                                   | \-                    |
| leaf_estimation_iterations     | integer   | \-              |                                                                           | \\\[1, \infty)\\      |
| leaf_estimation_backtracking   | character | AnyImprovement  | No, AnyImprovement, Armijo                                                | \-                    |
| fold_len_multiplier            | numeric   | 2               |                                                                           | \\\[1.001, \infty)\\  |
| approx_on_full_history         | logical   | TRUE            | TRUE, FALSE                                                               | \-                    |
| class_weights                  | untyped   | \-              |                                                                           | \-                    |
| auto_class_weights             | character | None            | None, Balanced, SqrtBalanced                                              | \-                    |
| boosting_type                  | character | \-              | Ordered, Plain                                                            | \-                    |
| boost_from_average             | logical   | \-              | TRUE, FALSE                                                               | \-                    |
| langevin                       | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| diffusion_temperature          | numeric   | 10000           |                                                                           | \\\[0, \infty)\\      |
| score_function                 | character | Cosine          | Cosine, L2, NewtonCosine, NewtonL2                                        | \-                    |
| monotone_constraints           | untyped   | \-              |                                                                           | \-                    |
| feature_weights                | untyped   | \-              |                                                                           | \-                    |
| first_feature_use_penalties    | untyped   | \-              |                                                                           | \-                    |
| penalties_coefficient          | numeric   | 1               |                                                                           | \\\[0, \infty)\\      |
| per_object_feature_penalties   | untyped   | \-              |                                                                           | \-                    |
| model_shrink_rate              | numeric   | \-              |                                                                           | \\(-\infty, \infty)\\ |
| model_shrink_mode              | character | \-              | Constant, Decreasing                                                      | \-                    |
| target_border                  | numeric   | \-              |                                                                           | \\(-\infty, \infty)\\ |
| border_count                   | integer   | \-              |                                                                           | \\\[1, 65535\]\\      |
| feature_border_type            | character | GreedyLogSum    | Median, Uniform, UniformAndQuantiles, MaxLogSum, MinEntropy, GreedyLogSum | \-                    |
| per_float_feature_quantization | untyped   | \-              |                                                                           | \-                    |
| classes_count                  | integer   | \-              |                                                                           | \\\[1, \infty)\\      |
| thread_count                   | integer   | 1               |                                                                           | \\\[-1, \infty)\\     |
| task_type                      | character | CPU             | CPU, GPU                                                                  | \-                    |
| devices                        | untyped   | \-              |                                                                           | \-                    |
| logging_level                  | character | Silent          | Silent, Verbose, Info, Debug                                              | \-                    |
| metric_period                  | integer   | 1               |                                                                           | \\\[1, \infty)\\      |
| train_dir                      | untyped   | "catboost_info" |                                                                           | \-                    |
| model_size_reg                 | numeric   | 0.5             |                                                                           | \\\[0, 1\]\\          |
| allow_writing_files            | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| save_snapshot                  | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| snapshot_file                  | untyped   | \-              |                                                                           | \-                    |
| snapshot_interval              | integer   | 600             |                                                                           | \\\[1, \infty)\\      |
| simple_ctr                     | untyped   | \-              |                                                                           | \-                    |
| combinations_ctr               | untyped   | \-              |                                                                           | \-                    |
| ctr_target_border_count        | integer   | \-              |                                                                           | \\\[1, 255\]\\        |
| counter_calc_method            | character | Full            | SkipTest, Full                                                            | \-                    |
| max_ctr_complexity             | integer   | \-              |                                                                           | \\\[1, \infty)\\      |
| ctr_leaf_count_limit           | integer   | \-              |                                                                           | \\\[1, \infty)\\      |
| store_all_simple_ctr           | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| final_ctr_computation_mode     | character | Default         | Default, Skip                                                             | \-                    |
| verbose                        | logical   | FALSE           | TRUE, FALSE                                                               | \-                    |
| ntree_start                    | integer   | 0               |                                                                           | \\\[0, \infty)\\      |
| ntree_end                      | integer   | 0               |                                                                           | \\\[0, \infty)\\      |
| early_stopping_rounds          | integer   | \-              |                                                                           | \\\[1, \infty)\\      |
| eval_metric                    | untyped   | \-              |                                                                           | \-                    |
| use_best_model                 | logical   | \-              | TRUE, FALSE                                                               | \-                    |
| iterations                     | integer   | 1000            |                                                                           | \\\[1, \infty)\\      |

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

- [`LearnerClassifCatboost$new()`](#method-LearnerClassifCatboost-new)

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

### Method `new()`

Create a `LearnerClassifCatboost` object.

#### Usage

    LearnerClassifCatboost$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are calculated using
[`catboost.get_feature_importance`](https://rdrr.io/pkg/catboost/man/catboost.get_feature_importance.html),
setting `type = "FeatureImportance"`, returned for 'all'.

#### Usage

    LearnerClassifCatboost$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifCatboost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.catboost",
  iterations = 100)

print(learner)
#> 
#> ── <LearnerClassifCatboost> (classif.catboost): Gradient Boosting ──────────────
#> • Model: -
#> • Parameters: loss_function_twoclass=Logloss,
#> loss_function_multiclass=MultiClass, thread_count=1, logging_level=Silent,
#> allow_writing_files=FALSE, save_snapshot=FALSE, iterations=100
#> • Validate: NULL
#> • Packages: mlr3, mlr3extralearners, and catboost
#> • Predict Types: [response] and prob
#> • Feature Types: numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, internal_tuning, missings, multiclass, twoclass,
#> validation, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> CatBoost model (100 trees)
#> Loss function: Logloss
#> Fit to 60 feature(s)
print(learner$importance())
#>        V48        V11        V36        V12        V21        V37         V9 
#> 8.39380702 6.04772583 5.19865066 4.73173904 3.73992191 3.57819143 3.06382885 
#>        V52        V51        V13        V23        V31        V39        V45 
#> 3.04528608 2.99961997 2.43912580 2.41366971 2.29854035 2.26418209 2.18963476 
#>        V46        V28        V58        V26        V59        V38        V22 
#> 2.18099232 2.15483992 2.02805985 1.72372635 1.70244736 1.64105725 1.60868984 
#>        V16        V27        V15         V6        V10        V53        V49 
#> 1.56716421 1.52649419 1.50307852 1.41538735 1.37442430 1.37147520 1.34632132 
#>         V1        V19        V17         V7        V14        V44        V54 
#> 1.31795205 1.20769555 1.19679274 1.10164380 1.08405241 1.07506478 1.03269759 
#>        V40        V50        V47        V35        V57        V24        V41 
#> 1.02067000 1.00601164 0.96943349 0.94582465 0.94331824 0.90598995 0.87478813 
#>         V5        V33        V42         V4        V20        V18        V43 
#> 0.84568549 0.84371822 0.81180600 0.77502263 0.69504629 0.68885952 0.67912778 
#>        V29        V56        V32        V55        V25         V8         V2 
#> 0.66597544 0.63560692 0.51677799 0.49712666 0.44332780 0.44094228 0.37100769 
#>         V3        V34        V30        V60 
#> 0.36759405 0.26383443 0.18984112 0.03868315 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.115942 
```
