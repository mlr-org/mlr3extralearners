# Classification H2O GLM Learner

Generalized linear classification model. Calls
[`h2o::h2o.glm()`](https://rdrr.io/pkg/h2o/man/h2o.glm.html) from
package [h2o](https://CRAN.R-project.org/package=h2o) with `family`
always set to `"binomial"`.

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

    lrn("classif.h2o.glm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                     |           |                |                                                                                    |                       |
|-------------------------------------|-----------|----------------|------------------------------------------------------------------------------------|-----------------------|
| Id                                  | Type      | Default        | Levels                                                                             | Range                 |
| alpha                               | numeric   | 0.5            |                                                                                    | \\\[0, 1\]\\          |
| balance_classes                     | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| beta_constraints                    | untyped   | NULL           |                                                                                    | \-                    |
| beta_epsilon                        | numeric   | 1e-04          |                                                                                    | \\\[0, \infty)\\      |
| build_null_model                    | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| calc_like                           | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| checkpoint                          | untyped   | NULL           |                                                                                    | \-                    |
| class_sampling_factors              | untyped   | NULL           |                                                                                    | \-                    |
| cold_start                          | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| compute_p_values                    | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| early_stopping                      | logical   | TRUE           | TRUE, FALSE                                                                        | \-                    |
| export_checkpoints_dir              | untyped   | NULL           |                                                                                    | \-                    |
| gainslift_bins                      | integer   | -1             |                                                                                    | \\\[-1, \infty)\\     |
| generate_scoring_history            | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| generate_variable_inflation_factors | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| gradient_epsilon                    | numeric   | -1             |                                                                                    | \\\[0, \infty)\\      |
| HGLM                                | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| ignore_const_cols                   | logical   | TRUE           | TRUE, FALSE                                                                        | \-                    |
| interactions                        | untyped   | NULL           |                                                                                    | \-                    |
| interaction_pairs                   | untyped   | NULL           |                                                                                    | \-                    |
| intercept                           | logical   | TRUE           | TRUE, FALSE                                                                        | \-                    |
| lambda                              | numeric   | 1e-05          |                                                                                    | \\\[0, \infty)\\      |
| lambda_min_ratio                    | numeric   | -1             |                                                                                    | \\\[0, 1\]\\          |
| lambda_search                       | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| link                                | character | logit          | family_default, logit                                                              | \-                    |
| max_active_predictors               | integer   | -1             |                                                                                    | \\\[1, \infty)\\      |
| max_after_balance_size              | numeric   | 5              |                                                                                    | \\\[0, \infty)\\      |
| max_iterations                      | integer   | -1             |                                                                                    | \\\[0, \infty)\\      |
| max_runtime_secs                    | numeric   | 0              |                                                                                    | \\\[0, \infty)\\      |
| missing_values_handling             | character | MeanImputation | MeanImputation, Skip, PlugValues                                                   | \-                    |
| nlambdas                            | integer   | -1             |                                                                                    | \\\[1, \infty)\\      |
| non_negative                        | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| objective_epsilon                   | numeric   | -1             |                                                                                    | \\\[0, \infty)\\      |
| obj_reg                             | numeric   | -1             |                                                                                    | \\\[0, \infty)\\      |
| plug_values                         | untyped   | NULL           |                                                                                    | \-                    |
| prior                               | numeric   | -1             |                                                                                    | \\\[0, \infty)\\      |
| random_columns                      | untyped   | NULL           |                                                                                    | \-                    |
| remove_collinear_columns            | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| score_each_iteration                | logical   | FALSE          | TRUE, FALSE                                                                        | \-                    |
| score_iteration_interval            | integer   | -1             |                                                                                    | \\(-\infty, \infty)\\ |
| seed                                | integer   | -1             |                                                                                    | \\(-\infty, \infty)\\ |
| solver                              | character | AUTO           | AUTO, IRLSM, L_BFGS, COORDINATE_DESCENT, COORDINATE_DESCENT_NAIVE                  | \-                    |
| standardize                         | logical   | TRUE           | TRUE, FALSE                                                                        | \-                    |
| startval                            | untyped   | NULL           |                                                                                    | \-                    |
| stopping_metric                     | character | AUTO           | AUTO, logloss, AUC, AUCPR, lift_top_group, misclassification, mean_per_class_error | \-                    |
| stopping_rounds                     | integer   | 0              |                                                                                    | \\\[0, \infty)\\      |
| stopping_tolerance                  | numeric   | 0.001          |                                                                                    | \\\[0, \infty)\\      |

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
-\> `LearnerClassifH2OGLM`

## Methods

### Public methods

- [`LearnerClassifH2OGLM$new()`](#method-LearnerClassifH2OGLM-new)

- [`LearnerClassifH2OGLM$clone()`](#method-LearnerClassifH2OGLM-clone)

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

    LearnerClassifH2OGLM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifH2OGLM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.h2o.glm")
print(learner)
#> 
#> ── <LearnerClassifH2OGLM> (classif.h2o.glm): H2O GLM ───────────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and h2o
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: missings, twoclass, and weights
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
#> H2OBinomialModel: glm
#> Model ID:  GLM_model_R_1775292879287_56 
#> GLM Model: summary
#>     family  link                               regularization
#> 1 binomial logit Elastic Net (alpha = 0.5, lambda = 0.04361 )
#>   number_of_predictors_total number_of_active_predictors number_of_iterations
#> 1                         60                          33                    8
#>     training_frame
#> 1 data_sid_8f7f_11
#> 
#> Coefficients: glm coefficients
#>       names coefficients standardized_coefficients
#> 1 Intercept     3.516291                 -0.356481
#> 2        V1    -9.855176                 -0.229382
#> 3       V10     0.000000                  0.000000
#> 4       V11    -2.866139                 -0.387717
#> 5       V12    -2.572195                 -0.366715
#> 
#> ---
#>    names coefficients standardized_coefficients
#> 56   V59   -10.154338                 -0.066955
#> 57    V6     0.000000                  0.000000
#> 58   V60   -16.966575                 -0.089207
#> 59    V7     0.268722                  0.017304
#> 60    V8     0.000000                  0.000000
#> 61    V9    -0.118795                 -0.015151
#> 
#> H2OBinomialMetrics: glm
#> ** Reported on training data. **
#> 
#> MSE:  0.1141492
#> RMSE:  0.3378598
#> LogLoss:  0.372667
#> Mean Per-Class Error:  0.1066192
#> AUC:  0.9419774
#> AUCPR:  0.940126
#> Gini:  0.8839548
#> R^2:  0.5380231
#> Residual Deviance:  103.6014
#> AIC:  171.6014
#> 
#> Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
#>         M  R    Error     Rate
#> M      73  4 0.051948    =4/77
#> R      10 52 0.161290   =10/62
#> Totals 83 56 0.100719  =14/139
#> 
#> Maximum Metrics: Maximum metrics at their respective thresholds
#>                         metric threshold     value idx
#> 1                       max f1  0.520488  0.881356  55
#> 2                       max f2  0.377294  0.902141  78
#> 3                 max f0point5  0.520488  0.909091  55
#> 4                 max accuracy  0.520488  0.899281  55
#> 5                max precision  0.965725  1.000000   0
#> 6                   max recall  0.206360  1.000000 106
#> 7              max specificity  0.965725  1.000000   0
#> 8             max absolute_mcc  0.520488  0.797354  55
#> 9   max min_per_class_accuracy  0.503624  0.854839  58
#> 10 max mean_per_class_accuracy  0.520488  0.893381  55
#> 11                     max tns  0.965725 77.000000   0
#> 12                     max fns  0.965725 61.000000   0
#> 13                     max fps  0.002394 77.000000 138
#> 14                     max tps  0.206360 62.000000 106
#> 15                     max tnr  0.965725  1.000000   0
#> 16                     max fnr  0.965725  0.983871   0
#> 17                     max fpr  0.002394  1.000000 138
#> 18                     max tpr  0.206360  1.000000 106
#> 
#> Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
