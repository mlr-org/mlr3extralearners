# Regression Splines Learner

Categorical Regression Splines. Calls
[`crs::crs()`](https://rdrr.io/pkg/crs/man/crs.html) from
[crs](https://CRAN.R-project.org/package=crs).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.crs")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [crs](https://CRAN.R-project.org/package=crs)

## Parameters

|                           |           |              |                             |                       |
|---------------------------|-----------|--------------|-----------------------------|-----------------------|
| Id                        | Type      | Default      | Levels                      | Range                 |
| degree                    | integer   | 3            |                             | \\\[0, \infty)\\      |
| segments                  | integer   | 1            |                             | \\\[1, \infty)\\      |
| include                   | integer   | \-           |                             | \\(-\infty, \infty)\\ |
| lambda                    | untyped   | \-           |                             | \-                    |
| lambda.discrete           | logical   | FALSE        | TRUE, FALSE                 | \-                    |
| lambda.discrete.num       | integer   | 100          |                             | \\\[0, \infty)\\      |
| cv                        | character | nomad        | nomad, exhaustive, none     | \-                    |
| cv.threshold              | integer   | 1000         |                             | \\\[0, \infty)\\      |
| cv.func                   | character | cv.ls        | cv.ls, cv.gcv, cv.aic       | \-                    |
| kernel                    | logical   | TRUE         | TRUE, FALSE                 | \-                    |
| degree.max                | integer   | 10           |                             | \\\[0, \infty)\\      |
| segments.max              | integer   | 10           |                             | \\\[1, \infty)\\      |
| degree.min                | integer   | 0            |                             | \\\[0, \infty)\\      |
| segments.min              | integer   | 1            |                             | \\\[1, \infty)\\      |
| cv.df.min                 | integer   | 1            |                             | \\(-\infty, \infty)\\ |
| complexity                | character | degree-knots | degree-knots, degree, knots | \-                    |
| knots                     | character | quantiles    | quantiles, uniform, auto    | \-                    |
| basis                     | character | auto         | auto, additive, tensor, glp | \-                    |
| prune                     | logical   | FALSE        | TRUE, FALSE                 | \-                    |
| restarts                  | integer   | 0            |                             | \\\[0, \infty)\\      |
| nmulti                    | integer   | 5            |                             | \\\[0, \infty)\\      |
| singular.ok               | logical   | FALSE        | TRUE, FALSE                 | \-                    |
| deriv                     | integer   | 0            |                             | \\\[0, \infty)\\      |
| data.return               | logical   | FALSE        | TRUE, FALSE                 | \-                    |
| model.return              | logical   | FALSE        | TRUE, FALSE                 | \-                    |
| random.seed               | integer   | \-           |                             | \\(-\infty, \infty)\\ |
| tau                       | numeric   | \-           |                             | \\\[0, 1\]\\          |
| initial.mesh.size.real    | untyped   | \-           |                             | \-                    |
| initial.mesh.size.integer | untyped   | \-           |                             | \-                    |
| max.bb.eval               | untyped   | \-           |                             | \-                    |
| min.mesh.size.real        | untyped   | \-           |                             | \-                    |
| min.mesh.size.integer     | untyped   | \-           |                             | \-                    |
| min.frame.size.real       | untyped   | \-           |                             | \-                    |
| min.frame.size.integer    | untyped   | \-           |                             | \-                    |
| display.nomad.progress    | logical   | TRUE         | TRUE, FALSE                 | \-                    |
| display.warnings          | logical   | TRUE         | TRUE, FALSE                 | \-                    |
| opts                      | untyped   | \-           |                             | \-                    |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrCrs`

## Methods

### Public methods

- [`LearnerRegrCrs$new()`](#method-LearnerRegrCrs-new)

- [`LearnerRegrCrs$clone()`](#method-LearnerRegrCrs-clone)

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

    LearnerRegrCrs$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrCrs$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.crs", cv = "none")
print(learner)
#> 
#> ── <LearnerRegrCrs> (regr.crs): Regression Splines ─────────────────────────────
#> • Model: -
#> • Parameters: cv=none
#> • Packages: mlr3 and crs
#> • Predict Types: [response] and se
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Warning:  cv="none" selected but no degree provided, using degree=rep(3,num.x): you might consider other degree settings
#> Warning:  cv="none" selected but no segments provided, using segments=rep(1,num.x): you might consider other segment settings
#> Warning:  cv="none" selected, basis="auto" changed to basis="additive": you might consider basis="tensor" etc.
#> Warning: NaNs produced

print(learner$model)
#> Call:
#> crs.formula(formula = formula, cv = "none", data = data, weights = private$.get_weights(task))

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> Warning: some 'x' values beyond boundary knots may cause ill-conditioned bases
#> Warning: some 'x' values beyond boundary knots may cause ill-conditioned bases
#> Warning: some 'x' values beyond boundary knots may cause ill-conditioned bases
#> Warning: some 'x' values beyond boundary knots may cause ill-conditioned bases
#> Warning: prediction from rank-deficient fit; attr(*, "non-estim") has doubtful cases
#> Warning: NaNs produced

# Score the predictions
predictions$score()
#> regr.mse 
#> 80565.21 
```
