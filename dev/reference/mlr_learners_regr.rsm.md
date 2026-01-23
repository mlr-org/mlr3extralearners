# Regression Response Surface Model Learner

Fit a linear model with a response-surface component. Calls
[`rsm::rsm()`](https://github.com/rvlenth/rsm/reference/rsm.html) from
[rsm](https://CRAN.R-project.org/package=rsm).

## Custom mlr3 parameters

- `modelfun`: This parameter controls how the formula for
  [`rsm::rsm()`](https://github.com/rvlenth/rsm/reference/rsm.html) is
  created. Possible values are:

  - `"FO"` - first order

  - `"TWI"` - wo-way interactions, this is with 1st oder terms

  - `"SO"` - full second order

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.rsm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [rsm](https://CRAN.R-project.org/package=rsm)

## Parameters

|          |           |         |             |
|----------|-----------|---------|-------------|
| Id       | Type      | Default | Levels      |
| modelfun | character | \-      | FO, TWI, SO |

## References

Lenth, V R (2010). “Response-surface methods in R, using rsm.” *Journal
of Statistical Software*, **32**, 1–17.

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

sebffischer

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrRSM`

## Methods

### Public methods

- [`LearnerRegrRSM$new()`](#method-LearnerRegrRSM-new)

- [`LearnerRegrRSM$clone()`](#method-LearnerRegrRSM-clone)

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

    LearnerRegrRSM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrRSM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.rsm")
print(learner)
#> 
#> ── <LearnerRegrRSM> (regr.rsm): Response Surface Model ─────────────────────────
#> • Model: -
#> • Parameters: modelfun=FO
#> • Packages: mlr3 and rsm
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
#> 
#> Call:
#> rsm(formula = mpg ~ FO(am, carb, cyl, disp, drat, gear, hp, qsec, 
#>     vs, wt), data = data)
#> 
#> Coefficients:
#>                                               (Intercept)  
#>                                                 -19.84437  
#>   FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)am  
#>                                                   2.00464  
#> FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)carb  
#>                                                  -1.14670  
#>  FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)cyl  
#>                                                   0.98341  
#> FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)disp  
#>                                                   0.02994  
#> FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)drat  
#>                                                   3.79292  
#> FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)gear  
#>                                                   4.28504  
#>   FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)hp  
#>                                                  -0.02760  
#> FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)qsec  
#>                                                   0.85280  
#>   FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)vs  
#>                                                   1.23851  
#>   FO(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)wt  
#>                                                  -3.59208  
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  15.9811 
```
