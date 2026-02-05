# Regression Gaussian Process Learner (GPfit)

Gaussian process regression via
[`GPfit::GP_fit()`](https://rdrr.io/pkg/GPfit/man/GP_fit.html) from
[GPfit](https://CRAN.R-project.org/package=GPfit).

## Note

As the optimization routine assumes that the inputs are scaled to the
unit hypercube, the input gets scaled for each variable by default. If
this is not wanted,
``` scale = FALSE`` has to be set. We replace the GPfit parameter  ```corr
= list(type = 'exponential',power =
1.95)`to be separate parameters`type`and`power`, in the case of `corr =
list(type = 'matern', nu =
0.5)`, the separate parameters are `type`and`matern_nu_k =
0`, and nu is computed by `nu = (2 \* matern_nu_k + 1) / 2 = 0.5\`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gpfit")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [GPfit](https://CRAN.R-project.org/package=GPfit)

## Parameters

|             |           |             |                     |                  |
|-------------|-----------|-------------|---------------------|------------------|
| Id          | Type      | Default     | Levels              | Range            |
| control     | untyped   | NULL        |                     | \-               |
| nug_thres   | numeric   | \-          |                     | \\\[0, \infty)\\ |
| trace       | logical   | \-          | TRUE, FALSE         | \-               |
| maxit       | integer   | \-          |                     | \\\[1, \infty)\\ |
| optim_start | untyped   | \-          |                     | \-               |
| scale       | logical   | \-          | TRUE, FALSE         | \-               |
| type        | character | exponential | exponential, matern | \-               |
| matern_nu_k | integer   | 0           |                     | \\\[0, \infty)\\ |
| power       | numeric   | 1.95        |                     | \\\[1, 2\]\\     |

## References

`r format_bib("macdonald2015gpfit")`

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
-\> `LearnerRegrGPfit`

## Methods

### Public methods

- [`LearnerRegrGPfit$new()`](#method-LearnerRegrGPfit-new)

- [`LearnerRegrGPfit$clone()`](#method-LearnerRegrGPfit-clone)

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

    LearnerRegrGPfit$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGPfit$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.gpfit")
print(learner)
#> 
#> ── <LearnerRegrGPfit> (regr.gpfit): Gaussian Process (GPfit) ───────────────────
#> • Model: -
#> • Parameters: nug_thres=20, trace=FALSE, maxit=100, optim_start=<NULL>,
#> scale=TRUE
#> • Packages: mlr3, mlr3extralearners, and GPfit
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
#> $model
#> 
#> Number Of Observations: n = 21
#> Input Dimensions: d = 10
#> 
#> Correlation: Exponential (power = 1.95)
#> Correlation Parameters: 
#>     beta_hat.1 beta_hat.2 beta_hat.3 beta_hat.4 beta_hat.5 beta_hat.6
#> [1] -0.1595304  -8.785053        -10  -8.060125  -7.397818   0.362155
#>     beta_hat.7 beta_hat.8 beta_hat.9 beta_hat.10
#> [1]   1.366509  0.5593852  -8.378369   0.2543255
#> 
#> sigma^2_hat: [1] 38.45304
#> 
#> delta_lb(beta_hat): [1] 0
#> 
#> nugget threshold parameter: 20
#> 
#> 
#> $mlist
#> $mlist$scaled
#> [1] TRUE
#> 
#> $mlist$not_const
#>  [1] "am"   "carb" "cyl"  "disp" "drat" "gear" "hp"   "qsec" "vs"   "wt"  
#> 
#> $mlist$high
#>      am    carb     cyl    disp    drat    gear      hp    qsec      vs      wt 
#>   1.000   4.000   8.000 460.000   4.430   5.000 245.000  22.900   1.000   5.424 
#> 
#> $mlist$low
#>     am   carb    cyl   disp   drat   gear     hp   qsec     vs     wt 
#>  0.000  1.000  4.000 78.700  2.760  3.000 62.000 15.410  0.000  1.513 
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  9.88129 
```
