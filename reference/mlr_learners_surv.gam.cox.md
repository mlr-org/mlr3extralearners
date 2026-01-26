# Cox Proportional Hazards Generalized Additive Learner

Cox proportional hazards model fitted via generalized additive modeling.
Internally calls [`mgcv::gam()`](https://rdrr.io/pkg/mgcv/man/gam.html)
from the [mgcv](https://CRAN.R-project.org/package=mgcv) package with
`family = mgcv::cox.ph()`. The censoring indicator is passed via the
`weights` argument.

## Prediction types

Three types of prediction are returned for this learner:

1.  `lp`: a vector of linear predictors (relative risk scores), one per
    observation. Calls
    [`mgcv::predict.gam()`](https://rdrr.io/pkg/mgcv/man/predict.gam.html)
    with `type = "link"`.

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. By default, the
    Breslow estimator is used via
    [`mlr3proba::breslow()`](https://mlr3proba.mlr-org.com/reference/breslow.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.gam.cox")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mgcv](https://CRAN.R-project.org/package=mgcv)

## Parameters

|                    |           |                      |                                         |                       |
|--------------------|-----------|----------------------|-----------------------------------------|-----------------------|
| Id                 | Type      | Default              | Levels                                  | Range                 |
| formula            | untyped   | \-                   |                                         | \-                    |
| method             | character | GCV.Cp               | GCV.Cp, GACV.Cp, REML, P-REML, ML, P-ML | \-                    |
| optimizer          | untyped   | c("outer", "newton") |                                         | \-                    |
| scale              | numeric   | 0                    |                                         | \\(-\infty, \infty)\\ |
| select             | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| knots              | untyped   | NULL                 |                                         | \-                    |
| sp                 | untyped   | NULL                 |                                         | \-                    |
| min.sp             | untyped   | NULL                 |                                         | \-                    |
| H                  | untyped   | NULL                 |                                         | \-                    |
| gamma              | numeric   | 1                    |                                         | \\\[1, \infty)\\      |
| paraPen            | untyped   | NULL                 |                                         | \-                    |
| G                  | untyped   | NULL                 |                                         | \-                    |
| in.out             | untyped   | NULL                 |                                         | \-                    |
| drop.unused.levels | logical   | TRUE                 | TRUE, FALSE                             | \-                    |
| drop.intercept     | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| nei                | untyped   | \-                   |                                         | \-                    |
| nthreads           | integer   | 1                    |                                         | \\\[1, \infty)\\      |
| ncv.threads        | integer   | 1                    |                                         | \\\[1, \infty)\\      |
| irls.reg           | numeric   | 0                    |                                         | \\\[0, \infty)\\      |
| epsilon            | numeric   | 1e-07                |                                         | \\\[0, \infty)\\      |
| maxit              | integer   | 200                  |                                         | \\(-\infty, \infty)\\ |
| mgcv.tol           | numeric   | 1e-07                |                                         | \\\[0, \infty)\\      |
| mgcv.half          | integer   | 15                   |                                         | \\\[0, \infty)\\      |
| trace              | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| rank.tol           | numeric   | 1.490116e-08         |                                         | \\\[0, \infty)\\      |
| nlm                | untyped   | list()               |                                         | \-                    |
| optim              | untyped   | list()               |                                         | \-                    |
| newton             | untyped   | list()               |                                         | \-                    |
| idLinksBases       | logical   | TRUE                 | TRUE, FALSE                             | \-                    |
| scalePenalty       | logical   | TRUE                 | TRUE, FALSE                             | \-                    |
| efs.lspmax         | integer   | 15                   |                                         | \\\[0, \infty)\\      |
| efs.tol            | numeric   | 0.1                  |                                         | \\\[0, \infty)\\      |
| scale.est          | character | fletcher             | fletcher, pearson, deviance             | \-                    |
| edge.correct       | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| block.size         | integer   | 1000                 |                                         | \\(-\infty, \infty)\\ |
| unconditional      | logical   | FALSE                | TRUE, FALSE                             | \-                    |

## Formula

A gam formula specific to the task at hand is required for the `formula`
parameter (see example and
[`?mgcv::formula.gam`](https://rdrr.io/pkg/mgcv/man/formula.gam.html)).
Beware, if no formula is provided, a fallback formula is used that will
make the gam behave like a glm (this behavior is required for the unit
tests). Only features specified in the formula will be used, superseding
columns with col_roles "feature" in the task.

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`mgcv::gam()`](https://rdrr.io/pkg/mgcv/man/gam.html). No offset is
applied during prediction for this learner.

## References

Wood, Simon (2012). “mgcv: Mixed GAM Computation Vehicle with
GCV/AIC/REML smoothness estimation.”

Wood, N. S, Pya, Natalya, Safken, Benjamin (2016). “Smoothing Parameter
and Model Selection for General Smooth Models.” *Journal of the American
Statistical Association*, **111**(516), 1548–1563.
[doi:10.1080/01621459.2016.1180986](https://doi.org/10.1080/01621459.2016.1180986)
.

## Author

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvGamCox`

## Methods

### Public methods

- [`LearnerSurvGamCox$new()`](#method-LearnerSurvGamCox-new)

- [`LearnerSurvGamCox$clone()`](#method-LearnerSurvGamCox-clone)

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

    LearnerSurvGamCox$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvGamCox$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# simple example
t = tsk("lung")
l = lrn("surv.gam.cox")
l$param_set$set_values(formula = time ~ s(age, k = 5) + ph.karno + sex)
l$train(t)
l$model
#> 
#> Family: Cox PH 
#> Link function: identity 
#> 
#> Formula:
#> time ~ s(age, k = 5) + ph.karno + sex
#> 
#> Estimated degrees of freedom:
#> 1  total = 3 
#> 
#> REML score: 513.9053     
```
