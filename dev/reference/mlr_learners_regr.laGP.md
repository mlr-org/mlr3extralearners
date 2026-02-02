# Regression Local Approximate Gaussian Process Learner

Local approximate Gaussian process for regression. Calls
[`laGP::aGP()`](https://rdrr.io/pkg/laGP/man/aGP.html) from
[laGP](https://CRAN.R-project.org/package=laGP).

## Note

Parameters `start` and `end` tune the initial and maximum neighborhood
sizes used for the local GP fit, `d` can fix the length-scale
parameters, `g` configures the nugget/regularization term, and `method`
selects the search heuristic (`alc`, `alcray`, `efi`, `mspe`, `nn`).
Arguments `close` and `numrays` further refine the ray-based search used
by `method = "alcray"`, while `verb` controls the output verbosity.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.laGP")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [laGP](https://CRAN.R-project.org/package=laGP)

## Parameters

|         |           |         |                            |                       |
|---------|-----------|---------|----------------------------|-----------------------|
| Id      | Type      | Default | Levels                     | Range                 |
| start   | integer   | 6       |                            | \\\[6, \infty)\\      |
| end     | integer   | 50      |                            | \\\[6, \infty)\\      |
| d       | untyped   | NULL    |                            | \-                    |
| g       | untyped   | 1/10000 |                            | \-                    |
| method  | character | alc     | alc, alcray, efi, mspe, nn | \-                    |
| close   | integer   | \-      |                            | \\\[0, \infty)\\      |
| numrays | integer   | \-      |                            | \\\[0, \infty)\\      |
| verb    | numeric   | 0       |                            | \\(-\infty, \infty)\\ |

## References

Gramacy, B. R (2016). “laGP: Large-Scale Spatial Modeling via Local
Approximate Gaussian Processes in R.” *Journal of Statistical Software*,
**72**(1), 1–46.
[doi:10.18637/jss.v072.i01](https://doi.org/10.18637/jss.v072.i01) .

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
-\> `LearnerRegrLaGP`

## Methods

### Public methods

- [`LearnerRegrLaGP$new()`](#method-LearnerRegrLaGP-new)

- [`LearnerRegrLaGP$clone()`](#method-LearnerRegrLaGP-clone)

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

    LearnerRegrLaGP$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrLaGP$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner (use a small neighborhood size for this task)
learner = lrn("regr.laGP", end = 15)
print(learner)
#> 
#> ── <LearnerRegrLaGP> (regr.laGP): Local Approximate Gaussian Process ───────────
#> • Model: -
#> • Parameters: end=15
#> • Packages: mlr3, mlr3extralearners, and laGP
#> • Predict Types: [response] and se
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
#> $x
#>       am carb cyl  disp drat gear  hp  qsec vs    wt
#>  [1,]  1    4   6 160.0 3.90    4 110 17.02  0 2.875
#>  [2,]  1    1   4 108.0 3.85    4  93 18.61  1 2.320
#>  [3,]  0    1   6 225.0 2.76    3 105 20.22  1 3.460
#>  [4,]  0    4   8 360.0 3.21    3 245 15.84  0 3.570
#>  [5,]  0    4   6 167.6 3.92    4 123 18.30  1 3.440
#>  [6,]  0    4   6 167.6 3.92    4 123 18.90  1 3.440
#>  [7,]  0    3   8 275.8 3.07    3 180 17.40  0 4.070
#>  [8,]  0    4   8 460.0 3.00    3 215 17.82  0 5.424
#>  [9,]  0    4   8 440.0 3.23    3 230 17.42  0 5.345
#> [10,]  1    2   4  75.7 4.93    4  52 18.52  1 1.615
#> [11,]  1    1   4  71.1 4.22    4  65 19.90  1 1.835
#> [12,]  0    1   4 120.1 3.70    3  97 20.01  1 2.465
#> [13,]  0    2   8 318.0 2.76    3 150 16.87  0 3.520
#> [14,]  0    4   8 350.0 3.73    3 245 15.41  0 3.840
#> [15,]  0    2   8 400.0 3.08    3 175 17.05  0 3.845
#> [16,]  1    1   4  79.0 4.08    4  66 18.90  1 1.935
#> [17,]  1    2   4 120.3 4.43    5  91 16.70  0 2.140
#> [18,]  1    2   4  95.1 3.77    5 113 16.90  1 1.513
#> [19,]  1    4   8 351.0 4.22    5 264 14.50  0 3.170
#> [20,]  1    6   6 145.0 3.62    5 175 15.50  0 2.770
#> [21,]  1    2   4 121.0 4.11    4 109 18.60  1 2.780
#> 
#> $z
#>  [1] 21.0 22.8 18.1 14.3 19.2 17.8 16.4 10.4 14.7 30.4 33.9 21.5 15.5 13.3 19.2
#> [16] 27.3 26.0 30.4 15.8 19.7 21.4
#> 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> i = 1 (of 11), d = 4581.31, its = 5
#> i = 2 (of 11), d = 5199.87, its = 5
#> i = 3 (of 11), d = 11807.6, its = 6
#> i = 4 (of 11), d = 4581.31, its = 5
#> i = 5 (of 11), d = 4581.31, its = 5
#> i = 6 (of 11), d = 52669.3, its = 21
#> i = 7 (of 11), d = 24548.1, its = 7
#> i = 8 (of 11), d = 8387.04, its = 6
#> i = 9 (of 11), d = 4581.31, its = 5
#> i = 10 (of 11), d = 8711.01, its = 7
#> i = 11 (of 11), d = 10879.5, its = 6

# Score the predictions
predictions$score()
#> regr.mse 
#> 13.09359 
```
