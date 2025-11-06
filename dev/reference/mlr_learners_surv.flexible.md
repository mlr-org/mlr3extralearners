# Survival Flexible Parametric Spline Learner

Flexible parametric spline learner. Calls
[`flexsurv::flexsurvspline()`](http://chjackson.github.io/flexsurv-dev/reference/flexsurvspline.md)
from [flexsurv](https://CRAN.R-project.org/package=flexsurv).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.flexible")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [flexsurv](https://CRAN.R-project.org/package=flexsurv)

## Parameters

|               |           |         |                      |                       |
|---------------|-----------|---------|----------------------|-----------------------|
| Id            | Type      | Default | Levels               | Range                 |
| formula       | untyped   | \-      |                      | \-                    |
| bhazard       | untyped   | \-      |                      | \-                    |
| k             | integer   | 0       |                      | \\\[0, \infty)\\      |
| knots         | untyped   | \-      |                      | \-                    |
| bknots        | untyped   | \-      |                      | \-                    |
| scale         | character | hazard  | hazard, odds, normal | \-                    |
| timescale     | character | log     | log, identity        | \-                    |
| spline        | character | rp      | rp, splines2ns       | \-                    |
| rtrunc        | untyped   | \-      |                      | \-                    |
| inits         | untyped   | \-      |                      | \-                    |
| fixedpars     | untyped   | \-      |                      | \-                    |
| cl            | numeric   | 0.95    |                      | \\\[0, 1\]\\          |
| anc           | untyped   | \-      |                      | \-                    |
| maxiter       | integer   | 30      |                      | \\(-\infty, \infty)\\ |
| rel.tolerance | numeric   | 1e-09   |                      | \\(-\infty, \infty)\\ |
| toler.chol    | numeric   | 1e-10   |                      | \\(-\infty, \infty)\\ |
| debug         | integer   | 0       |                      | \\\[0, 1\]\\          |
| outer.max     | integer   | 10      |                      | \\(-\infty, \infty)\\ |

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`flexsurv::flexsurvspline()`](http://chjackson.github.io/flexsurv-dev/reference/flexsurvspline.md)
    and the estimated coefficients. For fitted coefficients,
    \\\hat{\beta} = (\hat{\beta_0},...,\hat{\beta_P})\\, and the test
    data covariates \\X^T = (X_0,...,X_P)^T\\, where \\X_0\\ is a column
    of \\1\\s and \\\hat{\beta_0} = \hat{\gamma_0}\\, the linear
    predictor vector is \\lp = \hat{\beta} X^T\\.

2.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    `predict.flexsurvreg(type = "survival", ...)`.

3.  `crank`: same as `lp`.

4.  `response`: mean survival time calculated using
    `predict.flexsurvreg(type = "response", ...)`

## Initial parameter values

- `k`:

  - Actual default: `0`

  - Initial value: `1`

  - Reason for change: The default value of `0` is equivalent to, and a
    much less efficient implementation of,
    [LearnerSurvParametric](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.parametric.md).

## References

Royston, Patrick, Parmar, KB M (2002). “Flexible parametric
proportional-hazards and proportional-odds models for censored survival
data, with application to prognostic modelling and estimation of
treatment effects.” *Statistics in medicine*, **21**(15), 2175–2197.

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
-\> `LearnerSurvFlexible`

## Methods

### Public methods

- [`LearnerSurvFlexible$new()`](#method-LearnerSurvFlexible-new)

- [`LearnerSurvFlexible$clone()`](#method-LearnerSurvFlexible-clone)

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

    LearnerSurvFlexible$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvFlexible$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
library(survival)

# Define the task, split to train/test set
task = tsk("lung")
set.seed(42)
part = partition(task)

# Define the learner
learner = lrn("surv.flexible", k = 1,
  formula = Surv(time, status) ~ age + ph.karno + sex,
  anc = list(gamma1 = ~ sex))

# Train the learner on the training ids
learner$train(task, part$train)
print(learner$model)
#> Call:
#> flexsurv::flexsurvspline(formula = form, data = task$data(), 
#>     k = 1L, anc = list(gamma1 = ~sex), sr.control = list(iter.max = 30, 
#>         rel.tolerance = 1e-09, toler.chol = 1e-10, debug = 0, 
#>         maxiter = 30, outer.max = 10))
#> 
#> Estimates: 
#>               data mean  est        L95%       U95%       se         exp(est) 
#> gamma0               NA   -8.73038  -13.77364   -3.68713    2.57314         NA
#> gamma1               NA    1.15817    0.29894    2.01741    0.43839         NA
#> gamma2               NA   -0.05009   -0.11585    0.01567    0.03355         NA
#> age            63.39823    0.00878   -0.01982    0.03737    0.01459    1.00882
#> ph.karno       82.30088   -0.00192   -0.02008    0.01624    0.00926    0.99808
#> sexm            0.61947    2.30274   -1.45935    6.06482    1.91947   10.00151
#> gamma1(sexm)    0.61947   -0.29320   -0.90598    0.31957    0.31265    0.74587
#>               L95%       U95%     
#> gamma0               NA         NA
#> gamma1               NA         NA
#> gamma2               NA         NA
#> age             0.98037    1.03808
#> ph.karno        0.98012    1.01637
#> sexm            0.23239  430.44606
#> gamma1(sexm)    0.40415    1.37654
#> 
#> N = 113,  Events: 80,  Censored: 33
#> Total time at risk: 34858
#> Log-likelihood = -554.9652, df = 7
#> AIC = 1123.93
#> 

# Make predictions for the test rows
predictions = learner$predict(task, part$test)
print(predictions)
#> 
#> ── <PredictionSurv> for 55 observations: ───────────────────────────────────────
#>  row_ids time status     crank        lp response     distr
#>        7  166   TRUE -6.026908 -6.026908 338.0766 <list[1]>
#>        8  170   TRUE -6.081253 -6.081253 351.0301 <list[1]>
#>       11  707   TRUE -5.970881 -5.970881 325.1780 <list[1]>
#>      ---  ---    ---       ---       ---      ---       ---
#>      158  185  FALSE -5.995166 -5.995166 330.7130 <list[1]>
#>      160  183   TRUE -5.914491 -5.914491 312.6467 <list[1]>
#>      161  211  FALSE -8.250652 -8.250652 440.6995 <list[1]>

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.5855263 
```
