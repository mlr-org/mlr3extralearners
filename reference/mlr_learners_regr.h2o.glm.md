# Generalized Linear Regression H2O Learner

Generalized linear model. Calls
[`h2o::h2o.glm()`](https://rdrr.io/pkg/h2o/man/h2o.glm.html) from
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

    lrn("regr.h2o.glm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                     |           |                |                                                                                                                |                       |
|-------------------------------------|-----------|----------------|----------------------------------------------------------------------------------------------------------------|-----------------------|
| Id                                  | Type      | Default        | Levels                                                                                                         | Range                 |
| alpha                               | numeric   | 0.5            |                                                                                                                | \\\[0, 1\]\\          |
| beta_constraints                    | untyped   | NULL           |                                                                                                                | \-                    |
| beta_epsilon                        | numeric   | 1e-04          |                                                                                                                | \\\[0, \infty)\\      |
| build_null_model                    | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| calc_like                           | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| checkpoint                          | untyped   | NULL           |                                                                                                                | \-                    |
| cold_start                          | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| compute_p_values                    | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| early_stopping                      | logical   | TRUE           | TRUE, FALSE                                                                                                    | \-                    |
| export_checkpoints_dir              | untyped   | NULL           |                                                                                                                | \-                    |
| generate_scoring_history            | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| generate_variable_inflation_factors | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| gradient_epsilon                    | numeric   | -1             |                                                                                                                | \\\[0, \infty)\\      |
| HGLM                                | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| ignore_const_cols                   | logical   | TRUE           | TRUE, FALSE                                                                                                    | \-                    |
| interactions                        | untyped   | NULL           |                                                                                                                | \-                    |
| interaction_pairs                   | untyped   | NULL           |                                                                                                                | \-                    |
| intercept                           | logical   | TRUE           | TRUE, FALSE                                                                                                    | \-                    |
| lambda                              | numeric   | 1e-05          |                                                                                                                | \\\[0, \infty)\\      |
| lambda_min_ratio                    | numeric   | -1             |                                                                                                                | \\\[0, 1\]\\          |
| lambda_search                       | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| link                                | character | family_default | family_default, identity, log, inverse                                                                         | \-                    |
| max_active_predictors               | integer   | -1             |                                                                                                                | \\\[1, \infty)\\      |
| max_iterations                      | integer   | -1             |                                                                                                                | \\\[0, \infty)\\      |
| max_runtime_secs                    | numeric   | 0              |                                                                                                                | \\\[0, \infty)\\      |
| missing_values_handling             | character | MeanImputation | MeanImputation, Skip, PlugValues                                                                               | \-                    |
| nlambdas                            | integer   | -1             |                                                                                                                | \\\[1, \infty)\\      |
| non_negative                        | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| objective_epsilon                   | numeric   | -1             |                                                                                                                | \\\[0, \infty)\\      |
| obj_reg                             | numeric   | -1             |                                                                                                                | \\\[0, \infty)\\      |
| plug_values                         | untyped   | NULL           |                                                                                                                | \-                    |
| random_columns                      | untyped   | NULL           |                                                                                                                | \-                    |
| rand_family                         | untyped   | NULL           |                                                                                                                | \-                    |
| rand_link                           | untyped   | NULL           |                                                                                                                | \-                    |
| remove_collinear_columns            | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| score_each_iteration                | logical   | FALSE          | TRUE, FALSE                                                                                                    | \-                    |
| score_iteration_interval            | integer   | -1             |                                                                                                                | \\(-\infty, \infty)\\ |
| seed                                | integer   | -1             |                                                                                                                | \\(-\infty, \infty)\\ |
| solver                              | character | AUTO           | AUTO, IRLSM, L_BFGS, COORDINATE_DESCENT_NAIVE, COORDINATE_DESCENT, GRADIENT_DESCENT_LH, GRADIENT_DESCENT_SQERR | \-                    |
| standardize                         | logical   | TRUE           | TRUE, FALSE                                                                                                    | \-                    |
| startval                            | untyped   | NULL           |                                                                                                                | \-                    |
| stopping_metric                     | character | AUTO           | AUTO, deviance, MSE, RMSE, MAE, RMSLE                                                                          | \-                    |
| stopping_rounds                     | integer   | 0              |                                                                                                                | \\\[0, \infty)\\      |
| stopping_tolerance                  | numeric   | 0.001          |                                                                                                                | \\\[0, \infty)\\      |

## Model family

This learner calls
[`h2o::h2o.glm()`](https://rdrr.io/pkg/h2o/man/h2o.glm.html) with
`family = "gaussian"`

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
-\> `LearnerRegrH2OGLM`

## Methods

### Public methods

- [`LearnerRegrH2OGLM$new()`](#method-LearnerRegrH2OGLM-new)

- [`LearnerRegrH2OGLM$clone()`](#method-LearnerRegrH2OGLM-clone)

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

    LearnerRegrH2OGLM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrH2OGLM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.h2o.glm")
print(learner)
#> 
#> ── <LearnerRegrH2OGLM> (regr.h2o.glm): H2O Generalized Linear Model ────────────
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
#> H2ORegressionModel: glm
#> Model ID:  GLM_model_R_1775230699831_111 
#> GLM Model: summary
#>     family     link                              regularization
#> 1 gaussian identity Elastic Net (alpha = 0.5, lambda = 1.1612 )
#>   number_of_predictors_total number_of_active_predictors number_of_iterations
#> 1                         10                           9                    1
#>     training_frame
#> 1 data_sid_88a0_31
#> 
#> Coefficients: glm coefficients
#>        names coefficients standardized_coefficients
#> 1  Intercept    23.068633                 19.895238
#> 2         am     1.487792                  0.754448
#> 3       carb    -0.380961                 -0.640714
#> 4        cyl    -0.310633                 -0.618301
#> 5       disp    -0.006682                 -0.928081
#> 6       drat     1.110793                  0.619642
#> 7       gear     0.000000                  0.000000
#> 8         hp    -0.011499                 -0.916071
#> 9       qsec     0.089064                  0.172467
#> 10        vs     0.449749                  0.228064
#> 11        wt    -0.997088                 -1.122552
#> 
#> H2ORegressionMetrics: glm
#> ** Reported on training data. **
#> 
#> MSE:  7.502198
#> RMSE:  2.739014
#> MAE:  2.108757
#> RMSLE:  0.1216605
#> Mean Residual Deviance :  7.502198
#> R^2 :  0.8335187
#> Null Deviance :946.3296
#> Null D.o.F. :20
#> Residual Deviance :157.5462
#> Residual D.o.F. :11
#> AIC :123.9145
#> 
#> 
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 4.993402 
```
