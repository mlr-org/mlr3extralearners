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
#> Model ID:  GLM_model_R_1775211581060_56 
#> GLM Model: summary
#>     family  link                               regularization
#> 1 binomial logit Elastic Net (alpha = 0.5, lambda = 0.04336 )
#>   number_of_predictors_total number_of_active_predictors number_of_iterations
#> 1                         60                          28                    7
#>     training_frame
#> 1 data_sid_84a6_11
#> 
#> Coefficients: glm coefficients
#>       names coefficients standardized_coefficients
#> 1 Intercept     3.703869                 -0.299668
#> 2        V1    -5.996189                 -0.145792
#> 3       V10     0.000000                  0.000000
#> 4       V11    -2.073519                 -0.275397
#> 5       V12    -2.666832                 -0.381933
#> 
#> ---
#>    names coefficients standardized_coefficients
#> 56   V59   -40.354296                 -0.257528
#> 57    V6     0.000000                  0.000000
#> 58   V60     0.000000                  0.000000
#> 59    V7     0.536466                  0.034602
#> 60    V8     0.000000                  0.000000
#> 61    V9     0.000000                  0.000000
#> 
#> H2OBinomialMetrics: glm
#> ** Reported on training data. **
#> 
#> MSE:  0.1116488
#> RMSE:  0.3341388
#> LogLoss:  0.3652232
#> Mean Per-Class Error:  0.1399254
#> AUC:  0.9444444
#> AUCPR:  0.9446334
#> Gini:  0.8888889
#> R^2:  0.5528264
#> Residual Deviance:  101.5321
#> AIC:  159.5321
#> 
#> Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
#>         M  R    Error     Rate
#> M      54 18 0.250000   =18/72
#> R       2 65 0.029851    =2/67
#> Totals 56 83 0.143885  =20/139
#> 
#> Maximum Metrics: Maximum metrics at their respective thresholds
#>                         metric threshold     value idx
#> 1                       max f1  0.429494  0.866667  82
#> 2                       max f2  0.429494  0.925926  82
#> 3                 max f0point5  0.680274  0.910931  44
#> 4                 max accuracy  0.544287  0.856115  66
#> 5                max precision  0.945586  1.000000   0
#> 6                   max recall  0.270761  1.000000  96
#> 7              max specificity  0.945586  1.000000   0
#> 8             max absolute_mcc  0.429494  0.733657  82
#> 9   max min_per_class_accuracy  0.544287  0.850746  66
#> 10 max mean_per_class_accuracy  0.429494  0.860075  82
#> 11                     max tns  0.945586 72.000000   0
#> 12                     max fns  0.945586 66.000000   0
#> 13                     max fps  0.000164 72.000000 138
#> 14                     max tps  0.270761 67.000000  96
#> 15                     max tnr  0.945586  1.000000   0
#> 16                     max fnr  0.945586  0.985075   0
#> 17                     max fpr  0.000164  1.000000 138
#> 18                     max tpr  0.270761  1.000000  96
#> 
#> Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
