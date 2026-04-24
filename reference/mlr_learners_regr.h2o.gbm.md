# Regression H2O GBM Learner

Gradient boosting machine learner. Class
[`h2o::h2o.gbm()`](https://rdrr.io/pkg/h2o/man/h2o.gbm.html) from
package [h2o](https://CRAN.R-project.org/package=h2o).

## H2O Connection

If no running H2O connection is found, the learner will automatically
start a local H2O server on `127.0.0.1` via
[`h2o::h2o.init()`](https://rdrr.io/pkg/h2o/man/h2o.init.html). If you
want to connect to a remote H2O cluster, call
[`h2o::h2o.init()`](https://rdrr.io/pkg/h2o/man/h2o.init.html) with the
appropriate arguments before training or predicting.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.h2o.gbm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                       |           |          |                                                                                                      |                       |
|---------------------------------------|-----------|----------|------------------------------------------------------------------------------------------------------|-----------------------|
| Id                                    | Type      | Default  | Levels                                                                                               | Range                 |
| auto_rebalance                        | logical   | TRUE     | TRUE, FALSE                                                                                          | \-                    |
| build_tree_one_node                   | logical   | FALSE    | TRUE, FALSE                                                                                          | \-                    |
| categorical_encoding                  | character | AUTO     | AUTO, Enum, OneHotInternal, OneHotExplicit, Binary, Eigen, LabelEncoder, SortByResponse, EnumLimited | \-                    |
| check_constant_response               | logical   | TRUE     | TRUE, FALSE                                                                                          | \-                    |
| checkpoint                            | untyped   | NULL     |                                                                                                      | \-                    |
| col_sample_rate                       | numeric   | 1        |                                                                                                      | \\\[0, 1\]\\          |
| col_sample_rate_change_per_level      | numeric   | 1        |                                                                                                      | \\\[0, 2\]\\          |
| col_sample_rate_per_tree              | numeric   | 1        |                                                                                                      | \\\[0, 1\]\\          |
| custom_distribution_func              | untyped   | NULL     |                                                                                                      | \-                    |
| distribution                          | character | gaussian | AUTO, poisson, laplace, tweedie, gaussian, huber, gamma, quantile, custom                            | \-                    |
| export_checkpoints_dir                | untyped   | NULL     |                                                                                                      | \-                    |
| histogram_type                        | character | AUTO     | AUTO, UniformAdaptive, Random, QuantilesGlobal, RoundRobin, UniformRobust                            | \-                    |
| huber_alpha                           | numeric   | 0.9      |                                                                                                      | \\\[0, 1\]\\          |
| ignore_const_cols                     | logical   | TRUE     | TRUE, FALSE                                                                                          | \-                    |
| in_training_checkpoints_dir           | untyped   | NULL     |                                                                                                      | \-                    |
| in_training_checkpoints_tree_interval | integer   | 1        |                                                                                                      | \\\[1, \infty)\\      |
| interaction_constraints               | untyped   | NULL     |                                                                                                      | \-                    |
| learn_rate                            | numeric   | 0.1      |                                                                                                      | \\\[0, 1\]\\          |
| learn_rate_annealing                  | numeric   | 1        |                                                                                                      | \\\[0, 1\]\\          |
| max_abs_leafnode_pred                 | numeric   | Inf      |                                                                                                      | \\\[0, \infty)\\      |
| max_depth                             | integer   | 5        |                                                                                                      | \\\[1, \infty)\\      |
| max_runtime_secs                      | numeric   | 0        |                                                                                                      | \\\[0, \infty)\\      |
| min_rows                              | integer   | 10       |                                                                                                      | \\\[1, \infty)\\      |
| min_split_improvement                 | numeric   | 1e-05    |                                                                                                      | \\\[0, \infty)\\      |
| monotone_constraints                  | untyped   | NULL     |                                                                                                      | \-                    |
| nbins                                 | integer   | 20       |                                                                                                      | \\\[1, \infty)\\      |
| nbins_cats                            | integer   | 1024     |                                                                                                      | \\\[1, \infty)\\      |
| nbins_top_level                       | integer   | 1024     |                                                                                                      | \\\[1, \infty)\\      |
| ntrees                                | integer   | 50       |                                                                                                      | \\\[1, \infty)\\      |
| pred_noise_bandwidth                  | numeric   | 0        |                                                                                                      | \\\[0, \infty)\\      |
| quantile_alpha                        | numeric   | 0.5      |                                                                                                      | \\\[0, 1\]\\          |
| sample_rate                           | numeric   | 1        |                                                                                                      | \\\[0, 1\]\\          |
| score_each_iteration                  | logical   | FALSE    | TRUE, FALSE                                                                                          | \-                    |
| score_tree_interval                   | integer   | 0        |                                                                                                      | \\\[0, \infty)\\      |
| seed                                  | integer   | -1       |                                                                                                      | \\(-\infty, \infty)\\ |
| stopping_metric                       | character | AUTO     | AUTO, deviance, MSE, RMSE, MAE, RMSLE                                                                | \-                    |
| stopping_rounds                       | integer   | 0        |                                                                                                      | \\\[0, \infty)\\      |
| stopping_tolerance                    | numeric   | 0.001    |                                                                                                      | \\\[0, \infty)\\      |
| tweedie_power                         | numeric   | 1.5      |                                                                                                      | \\\[1, 2\]\\          |
| verbose                               | logical   | FALSE    | TRUE, FALSE                                                                                          | \-                    |

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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrH2OGBM`

## Methods

### Public methods

- [`LearnerRegrH2OGBM$new()`](#method-LearnerRegrH2OGBM-new)

- [`LearnerRegrH2OGBM$clone()`](#method-LearnerRegrH2OGBM-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrH2OGBM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrH2OGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.h2o.gbm")
print(learner)
#> 
#> ── <LearnerRegrH2OGBM> (regr.h2o.gbm): H2O GBM ─────────────────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and h2o
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: missings and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Model Details:
#> ==============
#> 
#> H2ORegressionModel: gbm
#> Model ID:  GBM_model_R_1777020145368_110 
#> Model Summary: 
#>   number_of_trees number_of_internal_trees model_size_in_bytes min_depth
#> 1              50                       50                4188         1
#>   max_depth mean_depth min_leaves max_leaves mean_leaves
#> 1         1    1.00000          2          2     2.00000
#> 
#> 
#> H2ORegressionMetrics: gbm
#> ** Reported on training data. **
#> 
#> MSE:  8.878073
#> RMSE:  2.97961
#> MAE:  2.27534
#> RMSLE:  0.1313612
#> Mean Residual Deviance :  8.878073
#> 
#> 
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 11.65713 
```
