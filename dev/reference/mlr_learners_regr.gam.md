# Regression Generalized Additive Model Learner

Generalized additive models. Calls
[`mgcv::gam()`](https://rdrr.io/pkg/mgcv/man/gam.html) from package
[mgcv](https://CRAN.R-project.org/package=mgcv).

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

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gam")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mgcv](https://CRAN.R-project.org/package=mgcv)

## Parameters

|                    |           |                      |                                         |                       |
|--------------------|-----------|----------------------|-----------------------------------------|-----------------------|
| Id                 | Type      | Default              | Levels                                  | Range                 |
| family             | character | gaussian             | gaussian, poisson                       | \-                    |
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
| nthreads           | integer   | 1                    |                                         | \\\[1, \infty)\\      |
| irls.reg           | numeric   | 0                    |                                         | \\\[0, \infty)\\      |
| epsilon            | numeric   | 1e-07                |                                         | \\\[0, \infty)\\      |
| maxit              | integer   | 200                  |                                         | \\(-\infty, \infty)\\ |
| trace              | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| mgcv.tol           | numeric   | 1e-07                |                                         | \\\[0, \infty)\\      |
| mgcv.half          | integer   | 15                   |                                         | \\\[0, \infty)\\      |
| rank.tol           | numeric   | 1.490116e-08         |                                         | \\\[0, \infty)\\      |
| nlm                | untyped   | list()               |                                         | \-                    |
| optim              | untyped   | list()               |                                         | \-                    |
| newton             | untyped   | list()               |                                         | \-                    |
| outerPIsteps       | integer   | 0                    |                                         | \\\[0, \infty)\\      |
| idLinksBases       | logical   | TRUE                 | TRUE, FALSE                             | \-                    |
| scalePenalty       | logical   | TRUE                 | TRUE, FALSE                             | \-                    |
| efs.lspmax         | integer   | 15                   |                                         | \\\[0, \infty)\\      |
| efs.tol            | numeric   | 0.1                  |                                         | \\\[0, \infty)\\      |
| scale.est          | character | fletcher             | fletcher, pearson, deviance             | \-                    |
| nei                | untyped   | \-                   |                                         | \-                    |
| ncv.threads        | integer   | 1                    |                                         | \\\[1, \infty)\\      |
| edge.correct       | logical   | FALSE                | TRUE, FALSE                             | \-                    |
| block.size         | integer   | 1000                 |                                         | \\(-\infty, \infty)\\ |
| unconditional      | logical   | FALSE                | TRUE, FALSE                             | \-                    |

## References

Hastie, J T, Tibshirani, J R (2017). *Generalized additive models*.
Routledge.

Wood, Simon (2012). “mgcv: Mixed GAM Computation Vehicle with
GCV/AIC/REML smoothness estimation.”

## Author

pierrecamilleri

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGam`

## Methods

### Public methods

- [`LearnerRegrGam$new()`](#method-LearnerRegrGam-new)

- [`LearnerRegrGam$clone()`](#method-LearnerRegrGam-clone)

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

    LearnerRegrGam$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGam$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# simple example
t = tsk("mtcars")
l = lrn("regr.gam")
l$param_set$values$formula = mpg ~ cyl + am + s(disp) + s(hp)
l$train(t)
l$model
#> 
#> Family: gaussian 
#> Link function: identity 
#> 
#> Formula:
#> mpg ~ cyl + am + s(disp) + s(hp)
#> 
#> Estimated degrees of freedom:
#> 6.86 1.00  total = 10.86 
#> 
#> GCV score: 4.851986     
```
