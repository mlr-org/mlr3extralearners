# Polynomial Regression Learner

Polynomial regression without interactions between features. Calls
[`stats::lm()`](https://rdrr.io/r/stats/lm.html) from base package
'stats' on a model formula in which every feature is expanded with
[`stats::poly()`](https://rdrr.io/r/stats/poly.html). For polynomial
regression that also includes interaction terms, see
[`regr.polyFit`](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_regr.polyFit.md).

## Initial parameter values

- `degree`

  - Actual default: `1`

  - Adjusted default: `2`

  - Reason for change: A degree of `1` is plain linear regression, so
    the lowest degree that makes this learner differ from
    [`stats::lm()`](https://rdrr.io/r/stats/lm.html) is the more useful
    default.

## Polynomial degree

[`stats::poly()`](https://rdrr.io/r/stats/poly.html) requires the degree
of the polynomial to be smaller than the number of distinct values of a
feature. To keep the learner usable inside resampling, where individual
folds may contain features with few distinct values, the degree is
capped per feature at `min(degree, <number of distinct values> - 1)`.
Features that are constant in the training data enter the formula
untransformed.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.polynomial")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  'stats'

## Parameters

|        |         |         |             |                  |
|--------|---------|---------|-------------|------------------|
| Id     | Type    | Default | Levels      | Range            |
| degree | integer | 1       |             | \\\[1, \infty)\\ |
| raw    | logical | FALSE   | TRUE, FALSE | \-               |

## References

Hastie, Trevor, Tibshirani, Robert, Friedman, Jerome (2009). *The
Elements of Statistical Learning*, series Springer Series in Statistics,
2 edition. Springer, New York.
[doi:10.1007/978-0-387-84858-7](https://doi.org/10.1007/978-0-387-84858-7)
.

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

imanechadli2003

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrPolynomial`

## Methods

### Public methods

- [`LearnerRegrPolynomial$new()`](#method-LearnerRegrPolynomial-initialize)

- [`LearnerRegrPolynomial$clone()`](#method-LearnerRegrPolynomial-clone)

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

### `LearnerRegrPolynomial$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrPolynomial$new()

------------------------------------------------------------------------

### `LearnerRegrPolynomial$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrPolynomial$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.polynomial")
print(learner)
#> 
#> ── <LearnerRegrPolynomial> (regr.polynomial): Polynomial Regression ────────────
#> • Model: -
#> • Parameters: degree=2
#> • Packages: mlr3, mlr3extralearners, and stats
#> • Predict Types: [response] and se
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#> stats::lm(formula = formula, data = data, weights = private$.get_weights(task))
#> 
#> Coefficients:
#>                          (Intercept)     poly(am, degree = 1, raw = FALSE)  
#>                               20.814                                17.767  
#> poly(carb, degree = 2, raw = FALSE)1  poly(carb, degree = 2, raw = FALSE)2  
#>                                5.114                                -6.157  
#>  poly(cyl, degree = 2, raw = FALSE)1   poly(cyl, degree = 2, raw = FALSE)2  
#>                               48.968                                 5.170  
#> poly(disp, degree = 2, raw = FALSE)1  poly(disp, degree = 2, raw = FALSE)2  
#>                                7.378                                -0.652  
#> poly(drat, degree = 2, raw = FALSE)1  poly(drat, degree = 2, raw = FALSE)2  
#>                                2.007                               -14.253  
#> poly(gear, degree = 2, raw = FALSE)1  poly(gear, degree = 2, raw = FALSE)2  
#>                                3.034                                16.378  
#>   poly(hp, degree = 2, raw = FALSE)1    poly(hp, degree = 2, raw = FALSE)2  
#>                              -40.505                                 8.879  
#> poly(qsec, degree = 2, raw = FALSE)1  poly(qsec, degree = 2, raw = FALSE)2  
#>                               10.057                                 3.307  
#>    poly(vs, degree = 1, raw = FALSE)    poly(wt, degree = 2, raw = FALSE)1  
#>                               22.926                               -16.833  
#>   poly(wt, degree = 2, raw = FALSE)2  
#>                                6.283  
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 41.63881 
```
