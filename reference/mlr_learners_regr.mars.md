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
#> [1] 9.154743
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [5,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [6,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [10,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [11,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [14,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>                [,1]
#>  [1,] -1.7358460307
#>  [2,] -2.5436009536
#>  [3,] -0.0397142726
#>  [4,] -0.0007636503
#>  [5,]  0.6783689777
#>  [6,] -1.0057367468
#>  [7,] -2.4057367468
#>  [8,] -2.0599229406
#>  [9,] -0.5325144050
#> [10,]  4.8531848148
#> [11,]  1.1822183214
#> [12,]  5.8971350861
#> [13,] -3.1750717190
#> [14,] -1.8499774362
#> [15,]  2.0431580027
#> [16,] -0.2927079006
#> [17,] -0.0876719356
#> [18,]  2.5588280033
#> [19,] -1.3542254141
#> [20,] -1.5549056442
#> [21,]  1.4255025902
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.735846
#>  [2,] 25.343601
#>  [3,] 21.439714
#>  [4,] 18.700764
#>  [5,] 22.121631
#>  [6,] 20.205737
#>  [7,] 20.205737
#>  [8,] 17.259923
#>  [9,] 10.932514
#> [10,]  9.846815
#> [11,] 29.217782
#> [12,] 28.002865
#> [13,] 24.675072
#> [14,] 15.149977
#> [15,] 17.156842
#> [16,] 27.592708
#> [17,] 26.087672
#> [18,] 27.841172
#> [19,] 17.154225
#> [20,] 21.254906
#> [21,] 13.574497
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.60662121
#> [2,] -3.81215223
#> [3,] -0.02894179
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.362   58
#>  [2,]    1 0.807   41
#>  [3,]    1 1.702   58
#>  [4,]    1 1.927  123
#>  [5,]    1 1.637   43
#>  [6,]    1 1.927   71
#>  [7,]    1 1.927   71
#>  [8,]    1 2.267  128
#>  [9,]    1 3.737  153
#> [10,]    1 3.832  178
#> [11,]    1 0.102    0
#> [12,]    1 0.322   13
#> [13,]    1 0.952   45
#> [14,]    1 2.327  193
#> [15,]    1 2.332  123
#> [16,]    1 0.422   14
#> [17,]    1 0.627   39
#> [18,]    1 0.000   61
#> [19,]    1 1.657  212
#> [20,]    1 1.257  123
#> [21,]    1 2.057  283
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.976217 
```
