# Regression Gradient Boosting Learner

Regression gradient boosting learner. Calls
[`bst::bst()`](https://rdrr.io/pkg/bst/man/bst.html) from
[bst](https://CRAN.R-project.org/package=bst).

## Initial parameter values

- `Learner = "ls"`: Default base learner type

- `xval = 0`: No cross-validation

- `maxdepth = 1`: Maximum tree depth

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.bst")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [bst](https://CRAN.R-project.org/package=bst),
  [rpart](https://CRAN.R-project.org/package=rpart)

## Parameters

|                |           |          |                                                                  |                  |
|----------------|-----------|----------|------------------------------------------------------------------|------------------|
| Id             | Type      | Default  | Levels                                                           | Range            |
| center         | logical   | FALSE    | TRUE, FALSE                                                      | \-               |
| coefir         | untyped   | NULL     |                                                                  | \-               |
| cost           | numeric   | 0.5      |                                                                  | \\\[0, 1\]\\     |
| cp             | numeric   | 0.01     |                                                                  | \\\[0, 1\]\\     |
| df             | integer   | 4        |                                                                  | \\\[1, \infty)\\ |
| family         | character | gaussian | gaussian, laplace, huber, rhuberDC, thingeDC, tbinomDC, binomdDC | \-               |
| f.init         | untyped   | NULL     |                                                                  | \-               |
| fk             | untyped   | NULL     |                                                                  | \-               |
| intercept      | logical   | TRUE     | TRUE, FALSE                                                      | \-               |
| iter           | integer   | 1        |                                                                  | \\\[1, \infty)\\ |
| Learner        | character | ls       | ls, sm, tree                                                     | \-               |
| maxdepth       | integer   | 1        |                                                                  | \\\[1, 30\]\\    |
| maxsurrogate   | integer   | 5        |                                                                  | \\\[0, \infty)\\ |
| minbucket      | integer   | \-       |                                                                  | \\\[1, \infty)\\ |
| minsplit       | integer   | 20       |                                                                  | \\\[1, \infty)\\ |
| mstop          | integer   | 50       |                                                                  | \\\[1, \infty)\\ |
| numsample      | integer   | 50       |                                                                  | \\\[1, \infty)\\ |
| nu             | numeric   | 0.1      |                                                                  | \\\[0, 1\]\\     |
| q              | numeric   | \-       |                                                                  | \\\[0, 1\]\\     |
| qh             | numeric   | \-       |                                                                  | \\\[0, 1\]\\     |
| s              | numeric   | \-       |                                                                  | \\\[0, \infty)\\ |
| sh             | numeric   | \-       |                                                                  | \\\[0, \infty)\\ |
| start          | logical   | FALSE    | TRUE, FALSE                                                      | \-               |
| surrogatestyle | integer   | 0        |                                                                  | \\\[0, 1\]\\     |
| threshold      | character | adaptive | adaptive, fixed                                                  | \-               |
| trace          | logical   | FALSE    | TRUE, FALSE                                                      | \-               |
| trun           | logical   | FALSE    | TRUE, FALSE                                                      | \-               |
| twinboost      | logical   | FALSE    | TRUE, FALSE                                                      | \-               |
| twintype       | integer   | 1        |                                                                  | \\\[1, 2\]\\     |
| xselect.init   | untyped   | NULL     |                                                                  | \-               |
| xval           | integer   | 10       |                                                                  | \\\[0, \infty)\\ |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBst`

## Methods

### Public methods

- [`LearnerRegrBst$new()`](#method-LearnerRegrBst-new)

- [`LearnerRegrBst$clone()`](#method-LearnerRegrBst-clone)

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

    LearnerRegrBst$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBst$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.bst")
print(learner)
#> 
#> ── <LearnerRegrBst> (regr.bst): Gradient Boosting ──────────────────────────────
#> • Model: -
#> • Parameters: Learner=ls, maxdepth=1, xval=0
#> • Packages: mlr3, mlr3extralearners, bst, and rpart
#> • Predict Types: [response]
#> • Feature Types: numeric
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
#>   Models Fitted with Gradient Boosting
#> 
#> Call:
#> bst::bst(x = data[, features, with = FALSE], y = data[[target]],     ctrl = ctrl, control.tree = ctrl_tree, learner = pars$Learner)
#> 
#> [1] "gaussian"
#> 
#> Base learner:  ls 
#> Number of boosting iterations: mstop = 50 
#> Step size:  0.1 
#> Offset:  20.47619 
#> 
#> Coefficients: 
#>           am         carb          cyl         disp         drat         gear 
#>  4.069201589 -0.265751891  0.000000000 -0.002532708  0.000000000  0.000000000 
#>           hp         qsec           vs           wt 
#> -0.009243847  0.000000000  2.029686757  0.000000000 
#> attr(,"offset")
#> [1] 20.47619
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 19.02456 
```
