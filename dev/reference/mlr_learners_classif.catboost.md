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
[`catboost::catboost.get_feature_importance()`](https://rdrr.io/pkg/catboost/man/catboost.get_feature_importance.html),
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
learner = lrn("classif.catboost")
print(learner)
#> 
#> ── <LearnerClassifCatboost> (classif.catboost): Gradient Boosting ──────────────
#> • Model: -
#> • Parameters: loss_function_twoclass=Logloss,
#> loss_function_multiclass=MultiClass, thread_count=1, logging_level=Silent,
#> allow_writing_files=FALSE, save_snapshot=FALSE
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
#> CatBoost model (1000 trees)
#> Loss function: Logloss
#> Fit to 60 feature(s)
print(learner$importance())
#>       V11        V9       V12       V48       V36       V21       V10       V37 
#> 8.7299237 5.7621901 5.3239902 4.8076043 4.5113267 3.6052760 3.3613692 3.3011201 
#>       V28       V49       V16       V51       V45       V31       V47       V17 
#> 3.0316455 2.6549415 2.4359113 2.1734846 2.0148914 1.9859675 1.8690622 1.8540434 
#>       V15       V27       V44       V23       V54       V26       V20       V18 
#> 1.6646423 1.5036218 1.4592956 1.4518008 1.3721321 1.3155248 1.2976443 1.2618029 
#>       V52       V46        V4       V40       V59       V43       V55       V58 
#> 1.2473298 1.2303896 1.2284290 1.1947177 1.1690286 1.1604341 1.1490829 1.0631497 
#>        V8       V33        V6       V53       V13        V2       V22        V5 
#> 1.0422584 0.9859531 0.9662950 0.9643001 0.9585729 0.9343837 0.9156230 0.9071394 
#>       V14       V24       V29       V35       V57       V38       V42       V50 
#> 0.8943117 0.8607086 0.8553317 0.8411074 0.8371850 0.8302403 0.8177765 0.8160563 
#>       V32        V7       V60       V39       V41       V19        V1       V25 
#> 0.8041429 0.7886216 0.7426255 0.7409848 0.7210347 0.6998378 0.5337831 0.5270744 
#>       V30       V56       V34        V3 
#> 0.4830355 0.4602519 0.4589197 0.4206710 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1449275 
```
