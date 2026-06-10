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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| alpha | numeric | 0.5 |  | \\\[0, 1\]\\ |
| balance_classes | logical | FALSE | TRUE, FALSE | \- |
| beta_constraints | untyped | NULL |  | \- |
| beta_epsilon | numeric | 1e-04 |  | \\\[0, \infty)\\ |
| build_null_model | logical | FALSE | TRUE, FALSE | \- |
| calc_like | logical | FALSE | TRUE, FALSE | \- |
| checkpoint | untyped | NULL |  | \- |
| class_sampling_factors | untyped | NULL |  | \- |
| cold_start | logical | FALSE | TRUE, FALSE | \- |
| compute_p_values | logical | FALSE | TRUE, FALSE | \- |
| early_stopping | logical | TRUE | TRUE, FALSE | \- |
| export_checkpoints_dir | untyped | NULL |  | \- |
| gainslift_bins | integer | -1 |  | \\\[-1, \infty)\\ |
| generate_scoring_history | logical | FALSE | TRUE, FALSE | \- |
| generate_variable_inflation_factors | logical | FALSE | TRUE, FALSE | \- |
| gradient_epsilon | numeric | -1 |  | \\\[0, \infty)\\ |
| HGLM | logical | FALSE | TRUE, FALSE | \- |
| ignore_const_cols | logical | TRUE | TRUE, FALSE | \- |
| interactions | untyped | NULL |  | \- |
| interaction_pairs | untyped | NULL |  | \- |
| intercept | logical | TRUE | TRUE, FALSE | \- |
| lambda | numeric | 1e-05 |  | \\\[0, \infty)\\ |
| lambda_min_ratio | numeric | -1 |  | \\\[0, 1\]\\ |
| lambda_search | logical | FALSE | TRUE, FALSE | \- |
| link | character | logit | family_default, logit | \- |
| max_active_predictors | integer | -1 |  | \\\[1, \infty)\\ |
| max_after_balance_size | numeric | 5 |  | \\\[0, \infty)\\ |
| max_iterations | integer | -1 |  | \\\[0, \infty)\\ |
| max_runtime_secs | numeric | 0 |  | \\\[0, \infty)\\ |
| missing_values_handling | character | MeanImputation | MeanImputation, Skip, PlugValues | \- |
| nlambdas | integer | -1 |  | \\\[1, \infty)\\ |
| non_negative | logical | FALSE | TRUE, FALSE | \- |
| objective_epsilon | numeric | -1 |  | \\\[0, \infty)\\ |
| obj_reg | numeric | -1 |  | \\\[0, \infty)\\ |
| plug_values | untyped | NULL |  | \- |
| prior | numeric | -1 |  | \\\[0, \infty)\\ |
| random_columns | untyped | NULL |  | \- |
| remove_collinear_columns | logical | FALSE | TRUE, FALSE | \- |
| score_each_iteration | logical | FALSE | TRUE, FALSE | \- |
| score_iteration_interval | integer | -1 |  | \\(-\infty, \infty)\\ |
| seed | integer | -1 |  | \\(-\infty, \infty)\\ |
| solver | character | AUTO | AUTO, IRLSM, L_BFGS, COORDINATE_DESCENT, COORDINATE_DESCENT_NAIVE | \- |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| startval | untyped | NULL |  | \- |
| stopping_metric | character | AUTO | AUTO, logloss, AUC, AUCPR, lift_top_group, misclassification, mean_per_class_error | \- |
| stopping_rounds | integer | 0 |  | \\\[0, \infty)\\ |
| stopping_tolerance | numeric | 0.001 |  | \\\[0, \infty)\\ |

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
#> Model ID:  GLM_model_R_1781101935297_56 
#> GLM Model: summary
#>     family  link                               regularization
#> 1 binomial logit Elastic Net (alpha = 0.5, lambda = 0.04877 )
#>   number_of_predictors_total number_of_active_predictors number_of_iterations
#> 1                         60                          28                    6
#>     training_frame
#> 1 data_sid_b4eb_11
#> 
#> Coefficients: glm coefficients
#>       names coefficients standardized_coefficients
#> 1 Intercept     3.423016                 -0.213625
#> 2        V1     0.000000                  0.000000
#> 3       V10     0.000000                  0.000000
#> 4       V11    -3.673049                 -0.511814
#> 5       V12    -1.405007                 -0.194877
#> 
#> ---
#>    names coefficients standardized_coefficients
#> 56   V59     0.000000                  0.000000
#> 57    V6     0.000000                  0.000000
#> 58   V60     0.000000                  0.000000
#> 59    V7     0.000000                  0.000000
#> 60    V8     0.000000                  0.000000
#> 61    V9    -1.260492                 -0.161735
#> 
#> H2OBinomialMetrics: glm
#> ** Reported on training data. **
#> 
#> MSE:  0.107774
#> RMSE:  0.3282895
#> LogLoss:  0.357067
#> Mean Per-Class Error:  0.1244292
#> AUC:  0.9474886
#> AUCPR:  0.9483206
#> Gini:  0.8949772
#> R^2:  0.567808
#> Residual Deviance:  99.26463
#> AIC:  157.2646
#> 
#> Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
#>         M  R    Error     Rate
#> M      67  6 0.082192    =6/73
#> R      11 55 0.166667   =11/66
#> Totals 78 61 0.122302  =17/139
#> 
#> Maximum Metrics: Maximum metrics at their respective thresholds
#>                         metric threshold     value idx
#> 1                       max f1  0.525933  0.866142  60
#> 2                       max f2  0.316496  0.920680  88
#> 3                 max f0point5  0.613617  0.902256  49
#> 4                 max accuracy  0.549431  0.877698  58
#> 5                max precision  0.963932  1.000000   0
#> 6                   max recall  0.153603  1.000000 114
#> 7              max specificity  0.963932  1.000000   0
#> 8             max absolute_mcc  0.549431  0.757431  58
#> 9   max min_per_class_accuracy  0.492031  0.863014  66
#> 10 max mean_per_class_accuracy  0.525933  0.875571  60
#> 11                     max tns  0.963932 73.000000   0
#> 12                     max fns  0.963932 65.000000   0
#> 13                     max fps  0.005559 73.000000 138
#> 14                     max tps  0.153603 66.000000 114
#> 15                     max tnr  0.963932  1.000000   0
#> 16                     max fnr  0.963932  0.984848   0
#> 17                     max fpr  0.005559  1.000000 138
#> 18                     max tpr  0.153603  1.000000 114
#> 
#> Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
