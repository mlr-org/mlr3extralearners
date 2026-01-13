# Survival Cox Model with Likelihood Based Boosting Learner

Fit a Survival Cox model with a likelihood based boosting algorithm.
Calls
[`CoxBoost::CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/CoxBoost.html)
from package 'CoxBoost'.

## Details

Use LearnerSurvCoxboost and
[LearnerSurvCVCoxboost](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.cv_coxboost.md)
for Cox boosting without and with internal cross-validation of boosting
step number, respectively. Tuning using the internal optimizer in
[LearnerSurvCVCoxboost](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.cv_coxboost.md)
may be more efficient when tuning `stepno` only. However, for tuning
multiple hyperparameters,
[mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning) and
LearnerSurvCoxboost will likely give better results.

## Prediction types

This learner returns three prediction types, using the internal
`predict.CoxBoost()` function:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation.

2.  `crank`: same as `lp`.

3.  `distr`: a 2d survival matrix, with observations as rows and time
    points as columns. The internal transformation uses the Breslow
    estimator to compute the baseline hazard and compose the survival
    distributions from the `lp` predictions.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.coxboost")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [CoxBoost](https://CRAN.R-project.org/package=CoxBoost)

## Parameters

|                 |           |         |                                |                       |
|-----------------|-----------|---------|--------------------------------|-----------------------|
| Id              | Type      | Default | Levels                         | Range                 |
| unpen.index     | untyped   | \-      |                                | \-                    |
| standardize     | logical   | TRUE    | TRUE, FALSE                    | \-                    |
| stepno          | integer   | 100     |                                | \\\[0, \infty)\\      |
| penalty         | numeric   | \-      |                                | \\(-\infty, \infty)\\ |
| criterion       | character | pscore  | pscore, score, hpscore, hscore | \-                    |
| stepsize.factor | numeric   | 1       |                                | \\(-\infty, \infty)\\ |
| sf.scheme       | character | sigmoid | sigmoid, linear                | \-                    |
| pendistmat      | untyped   | \-      |                                | \-                    |
| connected.index | untyped   | \-      |                                | \-                    |
| x.is.01         | logical   | FALSE   | TRUE, FALSE                    | \-                    |
| return.score    | logical   | TRUE    | TRUE, FALSE                    | \-                    |
| trace           | logical   | FALSE   | TRUE, FALSE                    | \-                    |
| at.step         | untyped   | \-      |                                | \-                    |

## Installation

The package 'CoxBoost' is not on CRAN and has to be installed from
GitHub using `remotes::install_github("binderh/CoxBoost")`.

## References

Binder, Harald, Allignol, Arthur, Schumacher, Martin, Beyersmann, Jan
(2009). “Boosting for high-dimensional time-to-event data with competing
risks.” *Bioinformatics*, **25**(7), 890–896.

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
-\> `LearnerSurvCoxboost`

## Methods

### Public methods

- [`LearnerSurvCoxboost$new()`](#method-LearnerSurvCoxboost-new)

- [`LearnerSurvCoxboost$selected_features()`](#method-LearnerSurvCoxboost-selected_features)

- [`LearnerSurvCoxboost$clone()`](#method-LearnerSurvCoxboost-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCoxboost$new()

------------------------------------------------------------------------

### Method `selected_features()`

Returns the set of selected features which have non-zero coefficients.
Calls the internal `coef.CoxBoost()` function.

#### Usage

    LearnerSurvCoxboost$selected_features(at_step = NULL)

#### Arguments

- `at_step`:

  (`integer(1)`)  
  Which boosting step to get the coefficients for. If no step is given
  (default), the final boosting step is used.

#### Returns

([`character()`](https://rdrr.io/r/base/character.html)) vector of
feature names.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvCoxboost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.coxboost")
print(learner)
#> 
#> ── <LearnerSurvCoxboost> (surv.coxboost): Likelihood-based Boosting ────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and CoxBoost
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: selected_features and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 100 boosting steps resulting in 6 non-zero coefficients  
#> partial log-likelihood: -1199.139 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8437066 
```
