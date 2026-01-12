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
#> [1]  1  2  4  6  8 10 12 14 16
#> 
#> $selected.terms
#> [1] 1 6 8
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
#> [1] 10.23771
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    0  0    0  0  1
#>  [7,]  0    0   0    0    0    0  0    0  0 -1
#>  [8,]  0    0   0    0    0    0  1    0  0  0
#>  [9,]  0    0   0    0    0    0 -1    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [8,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> 
#> $residuals
#>               [,1]
#>  [1,] -2.499341238
#>  [2,] -2.313640874
#>  [3,]  0.011253120
#>  [4,]  0.212832150
#>  [5,]  1.369251986
#>  [6,]  0.309383356
#>  [7,]  0.003329438
#>  [8,] -1.919309692
#>  [9,] -0.695878905
#> [10,]  4.750127946
#> [11,]  5.986950144
#> [12,]  1.458776090
#> [13,] -2.969850958
#> [14,] -4.113925135
#> [15,] -1.503021535
#> [16,]  0.183138297
#> [17,]  3.070971636
#> [18,] -0.764801088
#> [19,] -1.163803513
#> [20,]  2.151706076
#> [21,] -1.564147300
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 23.499341
#>  [2,] 25.113641
#>  [3,] 21.388747
#>  [4,] 18.487168
#>  [5,] 23.030748
#>  [6,] 16.090617
#>  [7,] 17.296671
#>  [8,] 17.119310
#>  [9,] 11.095879
#> [10,]  9.949872
#> [11,] 26.413050
#> [12,] 28.941224
#> [13,] 24.469851
#> [14,] 19.313925
#> [15,] 14.803022
#> [16,] 25.816862
#> [17,] 27.329028
#> [18,] 16.564801
#> [19,] 20.863804
#> [20,] 12.848294
#> [21,] 22.964147
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.30304009
#> [2,] -3.54721741
#> [3,] -0.03236085
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107   58
#>  [2,]    1 0.807   41
#>  [3,]    1 1.702   58
#>  [4,]    1 1.927  123
#>  [5,]    1 1.677   10
#>  [6,]    1 2.557  128
#>  [7,]    1 2.217  128
#>  [8,]    1 2.267  128
#>  [9,]    1 3.737  153
#> [10,]    1 3.832  178
#> [11,]    1 0.687   14
#> [12,]    1 0.102    0
#> [13,]    1 0.952   45
#> [14,]    1 1.922   98
#> [15,]    1 2.327  193
#> [16,]    1 0.627   39
#> [17,]    1 0.000   61
#> [18,]    1 1.657  212
#> [19,]    1 1.257  123
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
#> 6.667806 
```
