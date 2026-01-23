# Gradient Boosting with Regression Trees Survival Learner

Gradient boosting with regression trees for survival analysis. Calls
[`mboost::blackboost()`](https://rdrr.io/pkg/mboost/man/blackboost.html)
from [mboost](https://CRAN.R-project.org/package=mboost).

## Details

`distr` prediction made by
[`mboost::survFit()`](https://rdrr.io/pkg/mboost/man/survFit.html).

## Prediction types

This learner returns two to three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`mboost::predict.blackboost()`](https://rdrr.io/pkg/mboost/man/methods.html).
    If the `family` parameter is not `"coxph"`, `-lp` is returned, since
    non-coxph families represent AFT-style distributions where lower
    `lp` values indicate higher risk.

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`mboost::survFit()`](https://rdrr.io/pkg/mboost/man/survFit.html).
    This prediction type is present only when the `family` distribution
    parameter is equal to `"coxph"` (default). By default the Breslow
    estimator is used for computing the baseline hazard.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.blackboost")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mboost](https://CRAN.R-project.org/package=mboost)

## Parameters

|                 |           |                |                                                          |                       |
|-----------------|-----------|----------------|----------------------------------------------------------|-----------------------|
| Id              | Type      | Default        | Levels                                                   | Range                 |
| family          | character | coxph          | coxph, weibull, loglog, lognormal, gehan, cindex, custom | \-                    |
| custom.family   | untyped   | \-             |                                                          | \-                    |
| nuirange        | untyped   | c(0, 100)      |                                                          | \-                    |
| center          | logical   | TRUE           | TRUE, FALSE                                              | \-                    |
| mstop           | integer   | 100            |                                                          | \\\[0, \infty)\\      |
| nu              | numeric   | 0.1            |                                                          | \\\[0, 1\]\\          |
| risk            | character | \-             | inbag, oobag, none                                       | \-                    |
| stopintern      | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| trace           | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| oobweights      | untyped   | \-             |                                                          | \-                    |
| teststat        | character | quadratic      | quadratic, maximum                                       | \-                    |
| splitstat       | character | quadratic      | quadratic, maximum                                       | \-                    |
| splittest       | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| testtype        | character | Bonferroni     | Bonferroni, MonteCarlo, Univariate, Teststatistic        | \-                    |
| maxpts          | integer   | 25000          |                                                          | \\\[1, \infty)\\      |
| abseps          | numeric   | 0.001          |                                                          | \\(-\infty, \infty)\\ |
| releps          | numeric   | 0              |                                                          | \\(-\infty, \infty)\\ |
| nmax            | untyped   | \-             |                                                          | \-                    |
| alpha           | numeric   | 0.05           |                                                          | \\\[0, 1\]\\          |
| mincriterion    | numeric   | 0.95           |                                                          | \\\[0, 1\]\\          |
| logmincriterion | numeric   | -0.05129329    |                                                          | \\(-\infty, 0\]\\     |
| minsplit        | integer   | 20             |                                                          | \\\[0, \infty)\\      |
| minbucket       | integer   | 7              |                                                          | \\\[0, \infty)\\      |
| minprob         | numeric   | 0.01           |                                                          | \\\[0, 1\]\\          |
| stump           | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| lookahead       | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| MIA             | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| nresample       | integer   | 9999           |                                                          | \\\[1, \infty)\\      |
| tol             | numeric   | 1.490116e-08   |                                                          | \\\[0, \infty)\\      |
| maxsurrogate    | integer   | 0              |                                                          | \\\[0, \infty)\\      |
| mtry            | integer   | \-             |                                                          | \\\[0, \infty)\\      |
| maxdepth        | integer   | \-             |                                                          | \\\[0, \infty)\\      |
| multiway        | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| splittry        | integer   | 2              |                                                          | \\\[1, \infty)\\      |
| intersplit      | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| majority        | logical   | FALSE          | TRUE, FALSE                                              | \-                    |
| caseweights     | logical   | TRUE           | TRUE, FALSE                                              | \-                    |
| sigma           | numeric   | 0.1            |                                                          | \\\[0, 1\]\\          |
| ipcw            | untyped   | 1              |                                                          | \-                    |
| na.action       | untyped   | stats::na.omit |                                                          | \-                    |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated via the `offset` argument in `mboost`'s
training function. No offset is applied during prediction for this
learner.

## References

Bühlmann, Peter, Yu, Bin (2003). “Boosting with the L 2 loss: regression
and classification.” *Journal of the American Statistical Association*,
**98**(462), 324–339.

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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvBlackBoost`

## Methods

### Public methods

- [`LearnerSurvBlackBoost$new()`](#method-LearnerSurvBlackBoost-new)

- [`LearnerSurvBlackBoost$clone()`](#method-LearnerSurvBlackBoost-clone)

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

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvBlackBoost$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvBlackBoost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.blackboost")
print(learner)
#> 
#> ── <LearnerSurvBlackBoost> (surv.blackboost): Gradient Boosting ────────────────
#> • Model: -
#> • Parameters: family=coxph
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and mboost
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: offset and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#>   Model-based Boosting
#> 
#> Call:
#> mboost::blackboost(formula = task$formula(task$feature_names),     data = task$data(), family = family)
#> 
#> 
#>   Cox Partial Likelihood 
#> 
#> Loss function:  
#> 
#> Number of boosting iterations: mstop = 100 
#> Step size:  0.1 
#> Offset:  0 
#> Number of baselearners:  1 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8578227 
```
