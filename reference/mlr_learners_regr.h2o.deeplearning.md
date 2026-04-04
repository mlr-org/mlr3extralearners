# Regression H2O Deep Learning Learner

Regression feed-forward multilayer artificial neural network learner.
Class
[`h2o::h2o.deeplearning()`](https://rdrr.io/pkg/h2o/man/h2o.deeplearning.html)
from package [h2o](https://CRAN.R-project.org/package=h2o).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.h2o.deeplearning")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                  |           |                 |                                                                                                      |                       |
|----------------------------------|-----------|-----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| Id                               | Type      | Default         | Levels                                                                                               | Range                 |
| activation                       | character | Rectifier       | Rectifier, Tanh, TanhWithDropout, RectifierWithDropout, Maxout, MaxoutWithDropout                    | \-                    |
| adaptive_rate                    | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| autoencoder                      | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| average_activation               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| categorical_encoding             | character | AUTO            | AUTO, Enum, OneHotInternal, OneHotExplicit, Binary, Eigen, LabelEncoder, SortByResponse, EnumLimited | \-                    |
| checkpoint                       | untyped   | NULL            |                                                                                                      | \-                    |
| diagnostics                      | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| distribution                     | character | AUTO            | AUTO, gaussian, poisson, gamma, tweedie, laplace, huber, quantile                                    | \-                    |
| elastic_averaging                | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| elastic_averaging_moving_rate    | numeric   | 0.9             |                                                                                                      | \\(-\infty, \infty)\\ |
| elastic_averaging_regularization | numeric   | 0.001           |                                                                                                      | \\(-\infty, \infty)\\ |
| epochs                           | numeric   | 10              |                                                                                                      | \\\[1, \infty)\\      |
| epsilon                          | numeric   | 1e-08           |                                                                                                      | \\\[1e-10, 1e-04\]\\  |
| export_checkpoints_dir           | untyped   | NULL            |                                                                                                      | \-                    |
| export_weights_and_biases        | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| fast_mode                        | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| force_load_balance               | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| hidden                           | untyped   | c(200L, 200L)   |                                                                                                      | \-                    |
| hidden_dropout_ratios            | numeric   | 0.5             |                                                                                                      | \\(-\infty, \infty)\\ |
| huber_alpha                      | numeric   | 0.9             |                                                                                                      | \\\[0, 1\]\\          |
| ignore_const_cols                | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| initial_weight_distribution      | character | UniformAdaptive | UniformAdaptive, Uniform, Normal                                                                     | \-                    |
| initial_weight_scale             | numeric   | 1               |                                                                                                      | \\(-\infty, \infty)\\ |
| input_dropout_ratio              | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| l1                               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| l2                               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| loss                             | character | Automatic       | Automatic, Quantile, Quadratic, Absolute, Huber                                                      | \-                    |
| max_categorical_features         | integer   | 2147483647      |                                                                                                      | \\\[1, \infty)\\      |
| max_runtime_secs                 | numeric   | 0               |                                                                                                      | \\\[0, \infty)\\      |
| max_w2                           | numeric   | 3.402823e+38    |                                                                                                      | \\(-\infty, \infty)\\ |
| mini_batch_size                  | integer   | 1               |                                                                                                      | \\(-\infty, \infty)\\ |
| missing_values_handling          | character | MeanImputation  | MeanImputation, Skip                                                                                 | \-                    |
| momentum_ramp                    | numeric   | 1e+06           |                                                                                                      | \\(-\infty, \infty)\\ |
| momentum_stable                  | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| momentum_start                   | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| nesterov_accelerated_gradient    | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| overwrite_with_best_model        | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| pretrained_autoencoder           | untyped   | NULL            |                                                                                                      | \-                    |
| quantile_alpha                   | numeric   | 0.5             |                                                                                                      | \\\[0, 1\]\\          |
| quiet_mode                       | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| rate                             | numeric   | 0.005           |                                                                                                      | \\\[0, 1\]\\          |
| rate_annealing                   | numeric   | 1e-06           |                                                                                                      | \\\[0, \infty)\\      |
| rate_decay                       | numeric   | 1               |                                                                                                      | \\\[0, \infty)\\      |
| regression_stop                  | numeric   | 1e-06           |                                                                                                      | \\\[-1, \infty)\\     |
| replicate_training_data          | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| reproducible                     | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| rho                              | numeric   | 0.99            |                                                                                                      | \\\[0, \infty)\\      |
| score_duty_cycle                 | numeric   | 0.1             |                                                                                                      | \\(-\infty, \infty)\\ |
| score_each_iteration             | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| score_interval                   | numeric   | 5               |                                                                                                      | \\(-\infty, \infty)\\ |
| score_training_samples           | integer   | 10000           |                                                                                                      | \\(-\infty, \infty)\\ |
| score_validation_samples         | integer   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| seed                             | integer   | -1              |                                                                                                      | \\(-\infty, \infty)\\ |
| shuffle_training_data            | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| single_node_mode                 | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| sparse                           | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| sparsity_beta                    | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| standardize                      | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| stopping_metric                  | character | AUTO            | AUTO, deviance, MSE, RMSE, MAE, RMSLE                                                                | \-                    |
| stopping_rounds                  | integer   | 5               |                                                                                                      | \\\[0, \infty)\\      |
| stopping_tolerance               | numeric   | 0               |                                                                                                      | \\\[0, \infty)\\      |
| target_ratio_comm_to_comp        | numeric   | 0.05            |                                                                                                      | \\(-\infty, \infty)\\ |
| train_samples_per_iteration      | integer   | -2              |                                                                                                      | \\\[-2, \infty)\\     |
| tweedie_power                    | numeric   | 1.5             |                                                                                                      | \\\[1, 2\]\\          |
| verbose                          | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |

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
-\> `LearnerRegrH2ODeeplearning`

## Methods

### Public methods

- [`LearnerRegrH2ODeeplearning$new()`](#method-LearnerRegrH2ODeeplearning-new)

- [`LearnerRegrH2ODeeplearning$clone()`](#method-LearnerRegrH2ODeeplearning-clone)

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

    LearnerRegrH2ODeeplearning$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrH2ODeeplearning$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.h2o.deeplearning")
print(learner)
#> 
#> ── <LearnerRegrH2ODeeplearning> (regr.h2o.deeplearning): H2O Deep Learning ─────
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
#> H2ORegressionModel: deeplearning
#> Model ID:  DeepLearning_model_R_1775293475328_109 
#> Status of Neuron Layers: predicting mpg, regression, gaussian distribution, Quadratic loss, 42,601 weights/biases, 508.1 KB, 210 training samples, mini-batch size 1
#>   layer units      type dropout       l1       l2 mean_rate rate_rms momentum
#> 1     1    10     Input  0.00 %       NA       NA        NA       NA       NA
#> 2     2   200 Rectifier  0.00 % 0.000000 0.000000  0.005913 0.004748 0.000000
#> 3     3   200 Rectifier  0.00 % 0.000000 0.000000  0.017362 0.037532 0.000000
#> 4     4     1    Linear      NA 0.000000 0.000000  0.000425 0.000539 0.000000
#>   mean_weight weight_rms mean_bias bias_rms
#> 1          NA         NA        NA       NA
#> 2   -0.001088   0.098643  0.494626 0.006187
#> 3   -0.000633   0.069678  0.998198 0.002658
#> 4    0.001928   0.096643 -0.000046 0.000000
#> 
#> 
#> H2ORegressionMetrics: deeplearning
#> ** Reported on training data. **
#> ** Metrics reported on full training frame **
#> 
#> MSE:  5.953111
#> RMSE:  2.4399
#> MAE:  1.983237
#> RMSLE:  0.1058494
#> Mean Residual Deviance :  5.953111
#> 
#> 
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 3.793963 
```
