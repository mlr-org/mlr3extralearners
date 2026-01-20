# Regression Fast Nearest Neighbor Search Learner

Fast Nearest Neighbour Regression. Calls
[`FNN::knn.reg()`](https://rdrr.io/pkg/FNN/man/knn.reg.html) from
[FNN](https://CRAN.R-project.org/package=FNN).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.fnn")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [FNN](https://CRAN.R-project.org/package=FNN)

## Parameters

|           |           |         |                            |                  |
|-----------|-----------|---------|----------------------------|------------------|
| Id        | Type      | Default | Levels                     | Range            |
| k         | integer   | 1       |                            | \\\[1, \infty)\\ |
| algorithm | character | kd_tree | kd_tree, cover_tree, brute | \-               |

## References

Boltz, Sylvain, Debreuve, Eric, Barlaud, Michel (2007). “kNN-based
high-dimensional Kullback-Leibler distance for tracking.” In *Eighth
International Workshop on Image Analysis for Multimedia Interactive
Services (WIAMIS'07)*, 16–16. IEEE.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrFNN`

## Methods

### Public methods

- [`LearnerRegrFNN$new()`](#method-LearnerRegrFNN-new)

- [`LearnerRegrFNN$clone()`](#method-LearnerRegrFNN-clone)

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

    LearnerRegrFNN$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrFNN$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.fnn")
print(learner)
#> 
#> ── <LearnerRegrFNN> (regr.fnn): Fast Nearest Neighbour ─────────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and FNN
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
#> $train
#>        am  carb   cyl  disp  drat  gear    hp  qsec    vs    wt
#>     <num> <num> <num> <num> <num> <num> <num> <num> <num> <num>
#>  1:     1     4     6 160.0  3.90     4   110 16.46     0 2.620
#>  2:     0     1     6 258.0  3.08     3   110 19.44     1 3.215
#>  3:     0     1     6 225.0  2.76     3   105 20.22     1 3.460
#>  4:     0     4     8 360.0  3.21     3   245 15.84     0 3.570
#>  5:     0     2     4 140.8  3.92     4    95 22.90     1 3.150
#>  6:     0     3     8 275.8  3.07     3   180 17.40     0 4.070
#>  7:     0     3     8 275.8  3.07     3   180 17.60     0 3.730
#>  8:     0     3     8 275.8  3.07     3   180 18.00     0 3.780
#>  9:     0     4     8 472.0  2.93     3   205 17.98     0 5.250
#> 10:     0     4     8 460.0  3.00     3   215 17.82     0 5.424
#> 11:     0     4     8 440.0  3.23     3   230 17.42     0 5.345
#> 12:     1     1     4  78.7  4.08     4    66 19.47     1 2.200
#> 13:     1     2     4  75.7  4.93     4    52 18.52     1 1.615
#> 14:     1     1     4  71.1  4.22     4    65 19.90     1 1.835
#> 15:     0     1     4 120.1  3.70     3    97 20.01     1 2.465
#> 16:     0     2     8 318.0  2.76     3   150 16.87     0 3.520
#> 17:     1     1     4  79.0  4.08     4    66 18.90     1 1.935
#> 18:     1     2     4 120.3  4.43     5    91 16.70     0 2.140
#> 19:     1     2     4  95.1  3.77     5   113 16.90     1 1.513
#> 20:     1     6     6 145.0  3.62     5   175 15.50     0 2.770
#> 21:     1     2     4 121.0  4.11     4   109 18.60     1 2.780
#>        am  carb   cyl  disp  drat  gear    hp  qsec    vs    wt
#>     <num> <num> <num> <num> <num> <num> <num> <num> <num> <num>
#> 
#> $y
#>  [1] 21.0 21.4 18.1 14.3 22.8 16.4 17.3 15.2 10.4 10.4 14.7 32.4 30.4 33.9 21.5
#> [16] 15.5 27.3 26.0 30.4 19.7 21.4
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.445657 
```
