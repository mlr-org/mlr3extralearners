# Regression Mars Learner

Multivariate Adaptive Regression Splines. Calls
[`mda::mars()`](https://rdrr.io/pkg/mda/man/mars.html) from
[mda](https://CRAN.R-project.org/package=mda).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.mars")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mda](https://CRAN.R-project.org/package=mda)

## Parameters

|              |         |         |             |                  |
|--------------|---------|---------|-------------|------------------|
| Id           | Type    | Default | Levels      | Range            |
| degree       | integer | 1       |             | \\\[1, \infty)\\ |
| nk           | integer | \-      |             | \\\[1, \infty)\\ |
| penalty      | numeric | 2       |             | \\\[0, \infty)\\ |
| thresh       | numeric | 0.001   |             | \\\[0, \infty)\\ |
| prune        | logical | TRUE    | TRUE, FALSE | \-               |
| trace.mars   | logical | FALSE   | TRUE, FALSE | \-               |
| forward.step | logical | FALSE   | TRUE, FALSE | \-               |

## References

Friedman, H J (1991). “Multivariate adaptive regression splines.” *The
annals of statistics*, **19**(1), 1–67.

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

sumny

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrMars`

## Methods

### Public methods

- [`LearnerRegrMars$new()`](#method-LearnerRegrMars-initialize)

- [`LearnerRegrMars$clone()`](#method-LearnerRegrMars-clone)

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

### `LearnerRegrMars$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrMars$new()

------------------------------------------------------------------------

### `LearnerRegrMars$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrMars$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.mars")
print(learner)
#> 
#> ── <LearnerRegrMars> (regr.mars): Multivariate Adaptive Regression Splines ─────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and mda
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $call
#> mda::mars(x = x, y = y)
#> 
#> $all.terms
#> [1]  1  2  4  6  8 10 12 14 16
#> 
#> $selected.terms
#> [1]  1  4 12
#> 
#> $penalty
#> [1] 2
#> 
#> $degree
#> [1] 1
#> 
#> $nk
#> [1] 21
#> 
#> $thresh
#> [1] 0.001
#> 
#> $gcv
#> [1] 10.14817
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  0    0   0    1    0    0  0    0  0  0
#>  [9,]  0    0   0   -1    0    0  0    0  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [3,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [5,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [6,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [8,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [13,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [14,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.9623761
#>  [2,] -0.3224038
#>  [3,] -0.8624702
#>  [4,]  0.1253606
#>  [5,] -3.8069117
#>  [6,] -2.3777683
#>  [7,]  1.4157781
#>  [8,]  0.4819818
#>  [9,] -2.7714136
#> [10,]  0.6167629
#> [11,]  4.9612544
#> [12,]  1.3422423
#> [13,]  4.4331800
#> [14,] -5.0208315
#> [15,] -1.6038331
#> [16,]  2.5628451
#> [17,]  1.4460246
#> [18,]  2.5823895
#> [19,] -1.3869691
#> [20,] -0.5040197
#> [21,] -0.3488222
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.962376
#>  [2,] 21.322404
#>  [3,] 22.262470
#>  [4,] 18.574639
#>  [5,] 21.906912
#>  [6,] 16.677768
#>  [7,] 22.984222
#>  [8,] 15.918018
#>  [9,] 17.971414
#> [10,]  9.783237
#> [11,]  9.738746
#> [12,] 29.057758
#> [13,] 29.466820
#> [14,] 26.520832
#> [15,] 14.903833
#> [16,] 16.637155
#> [17,] 24.553975
#> [18,] 27.817611
#> [19,] 17.186969
#> [20,] 20.204020
#> [21,] 15.348822
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 25.245457
#> [2,] -4.863300
#> [3,]  1.071731
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107 1.96
#>  [2,]    1 1.362 2.52
#>  [3,]    1 1.702 4.94
#>  [4,]    1 1.927 2.52
#>  [5,]    1 1.947 5.72
#>  [6,]    1 2.057 1.34
#>  [7,]    1 1.677 5.50
#>  [8,]    1 2.557 2.90
#>  [9,]    1 2.267 3.50
#> [10,]    1 3.911 3.32
#> [11,]    1 3.832 2.92
#> [12,]    1 0.102 4.02
#> [13,]    1 0.322 5.40
#> [14,]    1 0.952 5.51
#> [15,]    1 2.327 0.91
#> [16,]    1 2.332 2.55
#> [17,]    1 0.627 2.20
#> [18,]    1 0.000 2.40
#> [19,]    1 1.657 0.00
#> [20,]    1 1.257 1.00
#> [21,]    1 2.057 0.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.356097 
```
