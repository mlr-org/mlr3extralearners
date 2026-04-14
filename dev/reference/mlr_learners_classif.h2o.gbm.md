# Classification H2O GBM Learner

Gradient boosting machine learner. Class
[`h2o::h2o.gbm()`](https://rdrr.io/pkg/h2o/man/h2o.gbm.html) from
package [h2o](https://CRAN.R-project.org/package=h2o).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.h2o.gbm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                       |           |         |                                                                                                      |                       |
|---------------------------------------|-----------|---------|------------------------------------------------------------------------------------------------------|-----------------------|
| Id                                    | Type      | Default | Levels                                                                                               | Range                 |
| auc_type                              | character | AUTO    | AUTO, NONE, MACRO_OVR, WEIGHTED_OVR, MACRO_OVO, WEIGHTED_OVO                                         | \-                    |
| auto_rebalance                        | logical   | TRUE    | TRUE, FALSE                                                                                          | \-                    |
| balance_classes                       | logical   | FALSE   | TRUE, FALSE                                                                                          | \-                    |
| build_tree_one_node                   | logical   | FALSE   | TRUE, FALSE                                                                                          | \-                    |
| categorical_encoding                  | character | AUTO    | AUTO, Enum, OneHotInternal, OneHotExplicit, Binary, Eigen, LabelEncoder, SortByResponse, EnumLimited | \-                    |
| check_constant_response               | logical   | TRUE    | TRUE, FALSE                                                                                          | \-                    |
| checkpoint                            | untyped   | NULL    |                                                                                                      | \-                    |
| class_sampling_factors                | untyped   | NULL    |                                                                                                      | \-                    |
| col_sample_rate                       | numeric   | 1       |                                                                                                      | \\\[0, 1\]\\          |
| col_sample_rate_change_per_level      | numeric   | 1       |                                                                                                      | \\\[0, 2\]\\          |
| col_sample_rate_per_tree              | numeric   | 1       |                                                                                                      | \\\[0, 1\]\\          |
| export_checkpoints_dir                | untyped   | NULL    |                                                                                                      | \-                    |
| gainslift_bins                        | integer   | -1      |                                                                                                      | \\\[-1, \infty)\\     |
| histogram_type                        | character | AUTO    | AUTO, UniformAdaptive, Random, QuantilesGlobal, RoundRobin, UniformRobust                            | \-                    |
| ignore_const_cols                     | logical   | TRUE    | TRUE, FALSE                                                                                          | \-                    |
| in_training_checkpoints_dir           | untyped   | NULL    |                                                                                                      | \-                    |
| in_training_checkpoints_tree_interval | integer   | 1       |                                                                                                      | \\\[1, \infty)\\      |
| interaction_constraints               | untyped   | NULL    |                                                                                                      | \-                    |
| learn_rate                            | numeric   | 0.1     |                                                                                                      | \\\[0, 1\]\\          |
| learn_rate_annealing                  | numeric   | 1       |                                                                                                      | \\\[0, 1\]\\          |
| max_abs_leafnode_pred                 | numeric   | Inf     |                                                                                                      | \\\[0, \infty)\\      |
| max_after_balance_size                | numeric   | 5       |                                                                                                      | \\(-\infty, \infty)\\ |
| max_depth                             | integer   | 5       |                                                                                                      | \\\[1, \infty)\\      |
| max_runtime_secs                      | numeric   | 0       |                                                                                                      | \\\[0, \infty)\\      |
| min_rows                              | integer   | 10      |                                                                                                      | \\\[1, \infty)\\      |
| min_split_improvement                 | numeric   | 1e-05   |                                                                                                      | \\\[0, \infty)\\      |
| monotone_constraints                  | untyped   | NULL    |                                                                                                      | \-                    |
| nbins                                 | integer   | 20      |                                                                                                      | \\\[1, \infty)\\      |
| nbins_cats                            | integer   | 1024    |                                                                                                      | \\\[1, \infty)\\      |
| nbins_top_level                       | integer   | 1024    |                                                                                                      | \\\[1, \infty)\\      |
| ntrees                                | integer   | 50      |                                                                                                      | \\\[1, \infty)\\      |
| pred_noise_bandwidth                  | numeric   | 0       |                                                                                                      | \\\[0, \infty)\\      |
| sample_rate                           | numeric   | 1       |                                                                                                      | \\\[0, 1\]\\          |
| sample_rate_per_class                 | untyped   | NULL    |                                                                                                      | \-                    |
| score_each_iteration                  | logical   | FALSE   | TRUE, FALSE                                                                                          | \-                    |
| score_tree_interval                   | integer   | 0       |                                                                                                      | \\\[0, \infty)\\      |
| seed                                  | integer   | -1      |                                                                                                      | \\(-\infty, \infty)\\ |
| stopping_metric                       | character | AUTO    | AUTO, logloss, AUC, AUCPR, lift_top_group, misclassification, mean_per_class_error                   | \-                    |
| stopping_rounds                       | integer   | 0       |                                                                                                      | \\\[0, \infty)\\      |
| stopping_tolerance                    | numeric   | 0.001   |                                                                                                      | \\\[0, \infty)\\      |
| verbose                               | logical   | FALSE   | TRUE, FALSE                                                                                          | \-                    |

## References

Fryda T, LeDell E, Gill N, Aiello S, Fu A, Candel A, Click C, Kraljevic
T, Nykodym T, Aboyoun P, Kurka M, Malohlava M, Poirier S, Wong W (2025).
*h2o: R Interface for the 'H2O' Scalable Machine Learning Platform*. R
package version 3.46.0.9, <https://github.com/h2oai/h2o-3>.

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifH2OGBM`

## Methods

### Public methods

- [`LearnerClassifH2OGBM$new()`](#method-LearnerClassifH2OGBM-new)

- [`LearnerClassifH2OGBM$clone()`](#method-LearnerClassifH2OGBM-clone)

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

    LearnerClassifH2OGBM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifH2OGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.h2o.gbm")
print(learner)
#> 
#> ── <LearnerClassifH2OGBM> (classif.h2o.gbm): H2O GBM ───────────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and h2o
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: missings, multiclass, twoclass, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Model Details:
#> ==============
#> 
#> H2OBinomialModel: gbm
#> Model ID:  GBM_model_R_1776186279408_4 
#> Model Summary: 
#>   number_of_trees number_of_internal_trees model_size_in_bytes min_depth
#> 1              50                       50                8953         4
#>   max_depth mean_depth min_leaves max_leaves mean_leaves
#> 1         5    4.98000          8         12     9.62000
#> 
#> 
#> H2OBinomialMetrics: gbm
#> ** Reported on training data. **
#> 
#> MSE:  0.001487782
#> RMSE:  0.03857178
#> LogLoss:  0.03327294
#> Mean Per-Class Error:  0
#> AUC:  1
#> AUCPR:  1
#> Gini:  1
#> R^2:  0.9939099
#> 
#> Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
#>         M  R    Error    Rate
#> M      80  0 0.000000   =0/80
#> R       0 59 0.000000   =0/59
#> Totals 80 59 0.000000  =0/139
#> 
#> Maximum Metrics: Maximum metrics at their respective thresholds
#>                         metric threshold     value idx
#> 1                       max f1  0.903266  1.000000  58
#> 2                       max f2  0.903266  1.000000  58
#> 3                 max f0point5  0.903266  1.000000  58
#> 4                 max accuracy  0.903266  1.000000  58
#> 5                max precision  0.990244  1.000000   0
#> 6                   max recall  0.903266  1.000000  58
#> 7              max specificity  0.990244  1.000000   0
#> 8             max absolute_mcc  0.903266  1.000000  58
#> 9   max min_per_class_accuracy  0.903266  1.000000  58
#> 10 max mean_per_class_accuracy  0.903266  1.000000  58
#> 11                     max tns  0.990244 80.000000   0
#> 12                     max fns  0.990244 58.000000   0
#> 13                     max fps  0.007273 80.000000 138
#> 14                     max tps  0.903266 59.000000  58
#> 15                     max tnr  0.990244  1.000000   0
#> 16                     max fnr  0.990244  0.983051   0
#> 17                     max fpr  0.007273  1.000000 138
#> 18                     max tpr  0.903266  1.000000  58
#> 
#> Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
