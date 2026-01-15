# Partial Least Squares Regression

Partial least squares regression. Calls
[`pls::plsr()`](https://rdrr.io/pkg/pls/man/mvr.html) from
[pls](https://CRAN.R-project.org/package=pls).

## Note

During prediction, all components `ncomp` used in training are used.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.plsr")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [pls](https://CRAN.R-project.org/package=pls)

## Parameters

|            |           |           |                                              |                  |
|------------|-----------|-----------|----------------------------------------------|------------------|
| Id         | Type      | Default   | Levels                                       | Range            |
| ncomp      | integer   | \-        |                                              | \\\[1, \infty)\\ |
| method     | character | kernelpls | kernelpls, widekernelpls, simpls, oscorespls | \-               |
| scale      | logical   | TRUE      | TRUE, FALSE                                  | \-               |
| center     | logical   | TRUE      | TRUE, FALSE                                  | \-               |
| validation | character | none      | none, CV, LOO                                | \-               |
| model      | logical   | TRUE      | TRUE, FALSE                                  | \-               |
| x          | logical   | FALSE     | TRUE, FALSE                                  | \-               |
| y          | logical   | FALSE     | TRUE, FALSE                                  | \-               |

## References

Mevik, Bjorn-Helge, Wehrens, Ron (2007). “The pls Package: Principal
Component and Partial Least Squares Regression in R.” *Journal of
Statistical Software*, **18**(2), 1–24.
[doi:10.18637/jss.v018.i02](https://doi.org/10.18637/jss.v018.i02) .

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrPlsr`

## Methods

### Public methods

- [`LearnerRegrPlsr$new()`](#method-LearnerRegrPlsr-new)

- [`LearnerRegrPlsr$clone()`](#method-LearnerRegrPlsr-clone)

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

    LearnerRegrPlsr$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrPlsr$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.plsr")
print(learner)
#> 
#> ── <LearnerRegrPlsr> (regr.plsr): Partial Least Squares Regression ─────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and pls
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Partial least squares regression, fitted with the kernel algorithm.
#> Call:
#> plsr(formula = formula, data = task$data())


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.76933 
```
