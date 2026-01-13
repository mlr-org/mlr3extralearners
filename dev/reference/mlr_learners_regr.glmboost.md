# Boosted Generalized Linear Regression Learner

Fit a generalized linear regression model using a boosting algorithm.
Calls
[`mboost::glmboost()`](https://rdrr.io/pkg/mboost/man/glmboost.html)
from [mboost](https://CRAN.R-project.org/package=mboost).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.glmboost")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mboost](https://CRAN.R-project.org/package=mboost)

## Parameters

|               |           |                |                                                                        |                       |
|---------------|-----------|----------------|------------------------------------------------------------------------|-----------------------|
| Id            | Type      | Default        | Levels                                                                 | Range                 |
| family        | character | Gaussian       | Gaussian, Laplace, Huber, Poisson, GammaReg, NBinomial, Hurdle, custom | \-                    |
| custom.family | untyped   | \-             |                                                                        | \-                    |
| nuirange      | untyped   | c(0, 100)      |                                                                        | \-                    |
| d             | numeric   | NULL           |                                                                        | \\(-\infty, \infty)\\ |
| center        | logical   | TRUE           | TRUE, FALSE                                                            | \-                    |
| mstop         | integer   | 100            |                                                                        | \\(-\infty, \infty)\\ |
| nu            | numeric   | 0.1            |                                                                        | \\(-\infty, \infty)\\ |
| risk          | character | inbag          | inbag, oobag, none                                                     | \-                    |
| oobweights    | untyped   | NULL           |                                                                        | \-                    |
| trace         | logical   | FALSE          | TRUE, FALSE                                                            | \-                    |
| stopintern    | untyped   | FALSE          |                                                                        | \-                    |
| na.action     | untyped   | stats::na.omit |                                                                        | \-                    |
| contrasts.arg | untyped   | \-             |                                                                        | \-                    |

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGLMBoost`

## Methods

### Public methods

- [`LearnerRegrGLMBoost$new()`](#method-LearnerRegrGLMBoost-new)

- [`LearnerRegrGLMBoost$clone()`](#method-LearnerRegrGLMBoost-clone)

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

Create a `LearnerRegrGLMBoost` object.

#### Usage

    LearnerRegrGLMBoost$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGLMBoost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.glmboost")
print(learner)
#> 
#> ── <LearnerRegrGLMBoost> (regr.glmboost): Boosted Generalized Linear Model ─────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and mboost
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: offset and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#>   Generalized Linear Models Fitted via Gradient Boosting
#> 
#> Call:
#> glmboost.formula(formula = f, data = data, family = new("boost_family_glm",     fW = function (f)     return(rep(1, length = length(f))), ngradient = function (y,         f, w = 1)     y - f, risk = function (y, f, w = 1)     sum(w * loss(y, f), na.rm = TRUE), offset = function (x,         w, ...)     UseMethod("weighted.mean"), check_y = function (y)     {        if (!is.numeric(y) || !is.null(dim(y)))             stop("response is not a numeric vector but ", sQuote("family = Gaussian()"))        y    }, weights = function (w)     {        switch(weights, any = TRUE, none = isTRUE(all.equal(unique(w),             1)), zeroone = isTRUE(all.equal(unique(w + abs(w -             1)), 1)), case = isTRUE(all.equal(unique(w - floor(w)),             0)))    }, nuisance = function ()     return(NA), response = function (f)     f, rclass = function (f)     NA, name = "Squared Error (Regression)", charloss = "(y - f)^2 \n"),     control = ctrl)
#> 
#> 
#>   Squared Error (Regression) 
#> 
#> Loss function: (y - f)^2 
#>  
#> 
#> Number of boosting iterations: mstop = 100 
#> Step size:  0.1 
#> Offset:  20.07619 
#> 
#> Coefficients: 
#> (Intercept)          am        carb         cyl          hp        qsec 
#> 15.93349236  2.88275048 -0.35121243 -0.56193586 -0.02866626  0.02652325 
#>          vs          wt 
#> -0.57369560 -2.53170846 
#> attr(,"offset")
#> [1] 20.07619
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 6.182379 
```
