# Survival Cox Model with Cross-Validation Likelihood Based Boosting Learner

Fits a survival Cox model using likelihood based boosting and internal
cross-validation for the number of steps. Calls
[`CoxBoost::CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/CoxBoost.html)
or
[`CoxBoost::cv.CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/cv.CoxBoost.html)
from package 'CoxBoost'.

## Details

Use
[LearnerSurvCoxboost](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.coxboost.md)
and LearnerSurvCVCoxboost for Cox boosting without and with internal
cross-validation of boosting step number, respectively. Tuning using the
internal optimizer in LearnerSurvCVCoxboost may be more efficient when
tuning `stepno` only. However, for tuning multiple hyperparameters,
[mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning) and
[LearnerSurvCoxboost](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.coxboost.md)
will likely give better results.

If `penalty == "optimCoxBoostPenalty"` then
[`CoxBoost::optimCoxBoostPenalty()`](https://rdrr.io/pkg/CoxBoost/man/optimCoxBoostPenalty.html)
is used to determine the penalty value to be used in
[`CoxBoost::cv.CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/cv.CoxBoost.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.cv_coxboost")

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
| maxstepno       | integer   | 100     |                                | \\\[0, \infty)\\      |
| K               | integer   | 10      |                                | \\\[2, \infty)\\      |
| type            | character | verweij | verweij, naive                 | \-                    |
| folds           | untyped   | NULL    |                                | \-                    |
| minstepno       | integer   | 50      |                                | \\\[0, \infty)\\      |
| start.penalty   | numeric   | \-      |                                | \\(-\infty, \infty)\\ |
| iter.max        | integer   | 10      |                                | \\\[1, \infty)\\      |
| upper.margin    | numeric   | 0.05    |                                | \\\[0, 1\]\\          |
| unpen.index     | untyped   | \-      |                                | \-                    |
| standardize     | logical   | TRUE    | TRUE, FALSE                    | \-                    |
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
-\> `LearnerSurvCVCoxboost`

## Methods

### Public methods

- [`LearnerSurvCVCoxboost$new()`](#method-LearnerSurvCVCoxboost-new)

- [`LearnerSurvCVCoxboost$selected_features()`](#method-LearnerSurvCVCoxboost-selected_features)

- [`LearnerSurvCVCoxboost$clone()`](#method-LearnerSurvCVCoxboost-clone)

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

    LearnerSurvCVCoxboost$new()

------------------------------------------------------------------------

### Method `selected_features()`

Returns the set of selected features which have non-zero coefficients.
Calls the internal `coef.CoxBoost()` function.

#### Usage

    LearnerSurvCVCoxboost$selected_features(at_step = NULL)

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

    LearnerSurvCVCoxboost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
task = tsk("rats")
task$col_roles$feature = c("litter", "rx")
learner = lrn("surv.cv_coxboost", maxstepno = 20)
splits = partition(task)
learner$train(task, splits$train)
pred = learner$predict(task, splits$test)
```
