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
#> [1] 1 4 6 8
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
#> [1] 7.878324
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
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    1   0    0    0    0  0    0  0  0
#> [13,]  0   -1   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [8,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [10,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [12,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [15,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [16,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [17,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.43510457
#>  [2,] -0.59569320
#>  [3,] -1.30559842
#>  [4,]  1.14676575
#>  [5,] -0.53263049
#>  [6,]  1.42204018
#>  [7,] -0.07617719
#>  [8,] -0.57680786
#>  [9,]  1.90142257
#> [10,] -2.45829969
#> [11,] -2.38977656
#> [12,]  1.77317632
#> [13,] -0.38372800
#> [14,] -0.71808519
#> [15,] -0.37353717
#> [16,]  4.02261299
#> [17,]  4.34790890
#> [18,] -0.45534758
#> [19,] -2.16978830
#> [20,]  1.08386748
#> [21,] -2.22721998
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.43510
#>  [2,] 21.59569
#>  [3,] 24.10560
#>  [4,] 16.95323
#>  [5,] 14.83263
#>  [6,] 22.97796
#>  [7,] 19.27618
#>  [8,] 18.37681
#>  [9,] 14.49858
#> [10,] 12.85830
#> [11,] 12.78978
#> [12,] 12.92682
#> [13,] 21.88373
#> [14,] 16.21809
#> [15,] 15.57354
#> [16,] 15.17739
#> [17,] 26.05209
#> [18,] 16.25535
#> [19,] 21.86979
#> [20,] 13.91613
#> [21,] 23.62722
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 31.2221787
#> [2,] -2.1845153
#> [3,] -0.0308355
#> [4,] -1.4989489
#> 
#> $x
#>       [,1] [,2] [,3] [,4]
#>  [1,]    1    2   48 1.96
#>  [2,]    1    2   48 2.52
#>  [3,]    1    0   31 4.11
#>  [4,]    1    2   43 5.72
#>  [5,]    1    4  183 1.34
#>  [6,]    1    0    0 5.50
#>  [7,]    1    2   61 3.80
#>  [8,]    1    2   61 4.40
#>  [9,]    1    4  118 2.90
#> [10,]    1    4  143 3.48
#> [11,]    1    4  153 3.32
#> [12,]    1    4  168 2.92
#> [13,]    1    0   35 5.51
#> [14,]    1    4   88 2.37
#> [15,]    1    4   88 2.80
#> [16,]    1    4  113 2.55
#> [17,]    1    0   51 2.40
#> [18,]    1    4  202 0.00
#> [19,]    1    2  113 1.00
#> [20,]    1    4  273 0.10
#> [21,]    1    0   47 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 27.11552 
```
