# Regression Fast Generalized Additive Model Learner

Fast generalized additive models for large datasets. Calls
[`mgcv::bam()`](https://rdrr.io/pkg/mgcv/man/bam.html) from package
[mgcv](https://CRAN.R-project.org/package=mgcv). For smaller datasets,
use
[`regr.gam`](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_regr.gam.md)
instead.

## Formula

A gam formula specific to the task at hand is required for the `formula`
parameter (see example and
[`?mgcv::formula.gam`](https://rdrr.io/pkg/mgcv/man/formula.gam.html)).
Beware, if no formula is provided, a fallback formula is used that will
make the model behave like a glm (this behavior is required for the unit
tests). Only features specified in the formula will be used, superseding
columns with col_roles "feature" in the task.

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`mgcv::bam()`](https://rdrr.io/pkg/mgcv/man/bam.html). No offset is
applied during prediction for this learner.

## Custom mlr3 parameters

- `control` is passed to
  [`mgcv::gam.control()`](https://rdrr.io/pkg/mgcv/man/gam.control.html)
  as a list. Unlike
  [`regr.gam`](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_regr.gam.md),
  the individual control options are not exposed as hyperparameters,
  because `nthreads` is both a control option and an argument of
  [`mgcv::bam()`](https://rdrr.io/pkg/mgcv/man/bam.html).

- `discrete` is a parameter of both
  [`mgcv::bam()`](https://rdrr.io/pkg/mgcv/man/bam.html) and
  [`mgcv::predict.bam()`](https://rdrr.io/pkg/mgcv/man/predict.bam.html),
  with different defaults. Only the training parameter is exposed, and
  prediction uses the default of
  [`mgcv::predict.bam()`](https://rdrr.io/pkg/mgcv/man/predict.bam.html).

- Only the training parameter `nthreads` is tagged with `"threads"`, so
  [`mlr3::set_threads()`](https://mlr3.mlr-org.com/reference/set_threads.html)
  does not change the prediction parameter `n.threads`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.bam")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mgcv](https://CRAN.R-project.org/package=mgcv)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| formula | untyped | \- |  | \- |
| family | character | gaussian | gaussian, poisson | \- |
| method | character | fREML | fREML, GCV.Cp, GACV.Cp, REML, P-REML, ML, P-ML | \- |
| control | untyped | list() |  | \- |
| select | logical | FALSE | TRUE, FALSE | \- |
| scale | numeric | 0 |  | \\(-\infty, \infty)\\ |
| gamma | numeric | 1 |  | \\\[1, \infty)\\ |
| knots | untyped | NULL |  | \- |
| sp | untyped | NULL |  | \- |
| min.sp | untyped | NULL |  | \- |
| paraPen | untyped | NULL |  | \- |
| chunk.size | integer | 10000 |  | \\\[1, \infty)\\ |
| rho | numeric | 0 |  | \\(-\infty, \infty)\\ |
| AR.start | untyped | NULL |  | \- |
| discrete | logical | FALSE | TRUE, FALSE | \- |
| nthreads | integer | 1 |  | \\\[1, \infty)\\ |
| use.chol | logical | FALSE | TRUE, FALSE | \- |
| samfrac | numeric | 1 |  | \\\[0, 1\]\\ |
| coef | untyped | NULL |  | \- |
| drop.unused.levels | logical | TRUE | TRUE, FALSE | \- |
| G | untyped | NULL |  | \- |
| drop.intercept | logical | NULL | TRUE, FALSE | \- |
| in.out | untyped | NULL |  | \- |
| nei | untyped | NULL |  | \- |
| cluster | untyped | NULL |  | \- |
| gc.level | integer | 0 |  | \\\[0, \infty)\\ |
| terms | untyped | NULL |  | \- |
| exclude | untyped | NULL |  | \- |
| block.size | integer | 50000 |  | \\(-\infty, \infty)\\ |
| n.threads | integer | 1 |  | \\\[1, \infty)\\ |

## References

Hastie, J T, Tibshirani, J R (2017). *Generalized additive models*.
Routledge.

Wood, Simon (2012). “mgcv: Mixed GAM Computation Vehicle with
GCV/AIC/REML smoothness estimation.”

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

Tino-Rg

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBam`

## Methods

### Public methods

- [`LearnerRegrBam$new()`](#method-LearnerRegrBam-initialize)

- [`LearnerRegrBam$clone()`](#method-LearnerRegrBam-clone)

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

### `LearnerRegrBam$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrBam$new()

------------------------------------------------------------------------

### `LearnerRegrBam$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBam$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# simple example
t = tsk("mtcars")
l = lrn("regr.bam")
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
#> 5.11 1.00  total = 9.11 
#> 
#> fREML score: 67.84661     
```
