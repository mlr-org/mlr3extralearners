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

- [`LearnerRegrMars$new()`](#method-LearnerRegrMars-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrMars$new()

------------------------------------------------------------------------

### Method `clone()`

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
#> [1] 1 2 4
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
#> [1] 8.560984
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    0   0    0    0    1  0    0  0  0
#>  [7,]  0    0   0    0    0   -1  0    0  0  0
#>  [8,]  0    0   0    1    0    0  0    0  0  0
#>  [9,]  0    0   0   -1    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    1   0    0    0    0  0    0  0  0
#> [13,]  0   -1   0    0    0    0  0    0  0  0
#> [14,]  0    0   1    0    0    0  0    0  0  0
#> [15,]  0    0  -1    0    0    0  0    0  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [5,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [6,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#>  [8,]    0    0    0 75.7    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0 75.7    0    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [11,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [12,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [13,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [14,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.26025166
#>  [2,] -2.53208183
#>  [3,]  0.74940365
#>  [4,]  0.81342842
#>  [5,] -1.52137550
#>  [6,]  2.37653953
#>  [7,] -0.04562094
#>  [8,] -0.94623845
#>  [9,]  1.86654272
#> [10,]  5.79414429
#> [11,]  0.65869240
#> [12,] -3.04106893
#> [13,] -2.66121827
#> [14,] -3.36363210
#> [15,] -0.86336992
#> [16,]  3.23081195
#> [17,] -0.56043999
#> [18,]  1.77006526
#> [19,] -1.03876200
#> [20,]  1.91057522
#> [21,] -1.33614385
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.260252
#>  [2,] 25.332082
#>  [3,] 20.650596
#>  [4,] 17.886572
#>  [5,] 19.621376
#>  [6,] 22.023460
#>  [7,] 19.245621
#>  [8,] 16.146238
#>  [9,]  8.533457
#> [10,] 26.605856
#> [11,] 29.741308
#> [12,] 24.541069
#> [13,] 18.161218
#> [14,] 18.563632
#> [15,] 14.163370
#> [16,] 15.969188
#> [17,] 27.860440
#> [18,] 28.629935
#> [19,] 16.838762
#> [20,] 13.089425
#> [21,] 22.736144
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 30.22420419
#> [2,] -4.73428031
#> [3,] -0.02613556
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.362   58
#>  [2,]    1 0.807   41
#>  [3,]    1 1.702   58
#>  [4,]    1 1.927  123
#>  [5,]    1 1.947   53
#>  [6,]    1 1.677   10
#>  [7,]    1 1.927   71
#>  [8,]    1 2.267  128
#>  [9,]    1 3.737  153
#> [10,]    1 0.687   14
#> [11,]    1 0.102    0
#> [12,]    1 0.952   45
#> [13,]    1 2.007   98
#> [14,]    1 1.922   98
#> [15,]    1 2.327  193
#> [16,]    1 2.332  123
#> [17,]    1 0.422   14
#> [18,]    1 0.000   61
#> [19,]    1 1.657  212
#> [20,]    1 2.057  283
#> [21,]    1 1.267   57
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 9.929461 
```
