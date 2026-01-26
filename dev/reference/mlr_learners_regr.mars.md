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
#> • Other settings: use_weights = 'error'

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
#>  [1]  1  2  4  6  8 10 12 14 16 18
#> 
#> $selected.terms
#> [1]  1  2 10
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
#> [1] 8.374492
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> [18,]  0    0   0    0    0    1  0    0  0  0
#> [19,]  0    0   0    0    0   -1  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [12,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [14,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [18,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [19,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.76190010
#>  [2,] -2.12694214
#>  [3,]  1.04409406
#>  [4,] -1.70572971
#>  [5,] -1.80903221
#>  [6,] -0.59991587
#>  [7,] -1.18342955
#>  [8,]  0.82650689
#>  [9,] -1.28146770
#> [10,]  2.00228573
#> [11,]  3.07044725
#> [12,]  6.20704105
#> [13,]  1.66648045
#> [14,] -3.61953956
#> [15,] -2.68106995
#> [16,]  0.05480554
#> [17,]  1.43364730
#> [18,]  2.25047680
#> [19,] -1.55863649
#> [20,] -0.23343153
#> [21,] -0.99469024
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.761900
#>  [2,] 24.926942
#>  [3,] 17.655906
#>  [4,] 19.805730
#>  [5,] 16.109032
#>  [6,] 23.399916
#>  [7,] 18.983430
#>  [8,] 16.473493
#>  [9,] 16.481468
#> [10,]  8.397714
#> [11,]  7.329553
#> [12,] 26.192959
#> [13,] 28.733520
#> [14,] 25.119540
#> [15,] 17.881070
#> [16,] 27.245194
#> [17,] 24.566353
#> [18,] 28.149523
#> [19,] 17.358636
#> [20,] 15.233432
#> [21,] 22.394690
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 26.4548122
#> [2,] -5.4895448
#> [3,]  0.7061296
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107 1.96
#>  [2,]    1 0.807 4.11
#>  [3,]    1 1.927 2.52
#>  [4,]    1 1.947 5.72
#>  [5,]    1 2.057 1.34
#>  [6,]    1 1.637 8.40
#>  [7,]    1 1.927 4.40
#>  [8,]    1 2.217 3.10
#>  [9,]    1 2.267 3.50
#> [10,]    1 3.737 3.48
#> [11,]    1 3.911 3.32
#> [12,]    1 0.687 4.97
#> [13,]    1 0.102 4.02
#> [14,]    1 0.952 5.51
#> [15,]    1 1.922 2.80
#> [16,]    1 0.422 4.40
#> [17,]    1 0.627 2.20
#> [18,]    1 0.000 2.40
#> [19,]    1 1.657 0.00
#> [20,]    1 2.057 0.10
#> [21,]    1 1.267 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.43547 
```
