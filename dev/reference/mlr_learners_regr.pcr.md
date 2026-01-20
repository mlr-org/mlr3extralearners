# Principal Component Regression Learner

Principal Component Regression model. Calls
[`pls::pcr()`](https://rdrr.io/pkg/pls/man/mvr.html) from
[pls](https://CRAN.R-project.org/package=pls).

## Note

During prediction, all components `ncomp` used in training are used.

## Initial parameter values

- `model`

  - Actual default: `TRUE`

  - Adjusted default: `FALSE`

  - Reason for change: keeps model objects compact because predictions
    do not require the stored model frame.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.pcr")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [pls](https://CRAN.R-project.org/package=pls)

## Parameters

|        |           |         |                                                            |                  |
|--------|-----------|---------|------------------------------------------------------------|------------------|
| Id     | Type      | Default | Levels                                                     | Range            |
| ncomp  | integer   | \-      |                                                            | \\\[1, \infty)\\ |
| method | character | cppls   | kernelpls, widekernelpls, simpls, oscorespls, cppls, svdpc | \-               |
| scale  | logical   | FALSE   | TRUE, FALSE                                                | \-               |
| model  | logical   | \-      | TRUE, FALSE                                                | \-               |
| x      | logical   | FALSE   | TRUE, FALSE                                                | \-               |
| y      | logical   | FALSE   | TRUE, FALSE                                                | \-               |

## References

Jolliffe, T. I (1982). “A note on the use of principal components in
regression.” *Journal of the Royal Statistical Society. Series C
(Applied Statistics)*, **31**(3), 300–303.

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

alexander

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrPcr`

## Methods

### Public methods

- [`LearnerRegrPcr$new()`](#method-LearnerRegrPcr-new)

- [`LearnerRegrPcr$clone()`](#method-LearnerRegrPcr-clone)

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

    LearnerRegrPcr$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrPcr$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.pcr")
print(learner)
#> 
#> ── <LearnerRegrPcr> (regr.pcr): Principal Component Regression ─────────────────
#> • Model: -
#> • Parameters: model=FALSE
#> • Packages: mlr3, mlr3extralearners, and pls
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, factor, and ordered
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
#> Principal component regression, fitted with the singular value decomposition algorithm.
#> Call:
#> pcr(formula = formula, data = data, model = FALSE)


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 44.73124 
```
