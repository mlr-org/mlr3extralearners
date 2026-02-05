# Regression Abess Learner

Adaptive best-subset selection for regression. Calls
[`abess::abess()`](https://abess-team.github.io/abess/reference/abess.html)
from [abess](https://CRAN.R-project.org/package=abess).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.abess")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [abess](https://CRAN.R-project.org/package=abess)

## Parameters

|                   |           |          |                                     |                       |
|-------------------|-----------|----------|-------------------------------------|-----------------------|
| Id                | Type      | Default  | Levels                              | Range                 |
| family            | character | gaussian | gaussian, mgaussian, poisson, gamma | \-                    |
| tune.path         | character | sequence | sequence, gsection                  | \-                    |
| tune.type         | character | gic      | gic, aic, bic, ebic, cv             | \-                    |
| normalize         | integer   | NULL     |                                     | \\(-\infty, \infty)\\ |
| support.size      | untyped   | NULL     |                                     | \-                    |
| c.max             | integer   | 2        |                                     | \\\[1, \infty)\\      |
| gs.range          | untyped   | NULL     |                                     | \-                    |
| lambda            | numeric   | 0        |                                     | \\\[0, \infty)\\      |
| always.include    | untyped   | NULL     |                                     | \-                    |
| group.index       | untyped   | NULL     |                                     | \-                    |
| init.active.set   | untyped   | NULL     |                                     | \-                    |
| splicing.type     | integer   | 2        |                                     | \\\[1, 2\]\\          |
| max.splicing.iter | integer   | 20       |                                     | \\\[1, \infty)\\      |
| screening.num     | integer   | NULL     |                                     | \\\[0, \infty)\\      |
| important.search  | integer   | NULL     |                                     | \\\[0, \infty)\\      |
| warm.start        | logical   | TRUE     | TRUE, FALSE                         | \-                    |
| nfolds            | integer   | 5        |                                     | \\(-\infty, \infty)\\ |
| foldid            | untyped   | NULL     |                                     | \-                    |
| cov.update        | logical   | FALSE    | TRUE, FALSE                         | \-                    |
| newton            | character | exact    | exact, approx                       | \-                    |
| newton.thresh     | numeric   | 1e-06    |                                     | \\\[0, \infty)\\      |
| max.newton.iter   | integer   | NULL     |                                     | \\\[1, \infty)\\      |
| early.stop        | logical   | FALSE    | TRUE, FALSE                         | \-                    |
| ic.scale          | numeric   | 1        |                                     | \\\[0, \infty)\\      |
| num.threads       | integer   | 0        |                                     | \\\[0, \infty)\\      |
| seed              | integer   | 1        |                                     | \\(-\infty, \infty)\\ |

## Initial parameter values

- `num.threads`: This parameter is initialized to 1 (default is 0) to
  avoid conflicts with the mlr3 parallelization.

- `family`: Depends on the task type, if the parameter `family` is
  `NULL`, it is set to `"binomial"` for binary classification tasks and
  to `"multinomial"` for multiclass classification problems.

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

bbayukari

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrAbess`

## Methods

### Public methods

- [`LearnerRegrAbess$new()`](#method-LearnerRegrAbess-new)

- [`LearnerRegrAbess$selected_features()`](#method-LearnerRegrAbess-selected_features)

- [`LearnerRegrAbess$clone()`](#method-LearnerRegrAbess-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrAbess$new()

------------------------------------------------------------------------

### Method `selected_features()`

Extract the name of selected features from the model by
[`abess::extract()`](https://abess-team.github.io/abess/reference/extract.abess.html).

#### Usage

    LearnerRegrAbess$selected_features()

#### Returns

The names of selected features

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrAbess$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.abess")
print(learner)
#> 
#> ── <LearnerRegrAbess> (regr.abess): Fast Best Subset Selection for Regression ──
#> • Model: -
#> • Parameters: num.threads=1
#> • Packages: mlr3 and abess
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: selected_features and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Call:
#> abess.default(x = task$data(cols = task$feature_names), y = as.matrix(task$data(cols = task$target_names)), 
#>     num.threads = 1L)
#> 
#>   support.size       dev      GIC
#> 1            0 12.673968 53.33055
#> 2            1  4.154460 32.47140
#> 3            2  3.283066 30.09147
#> 4            3  2.542050 27.28310
#> 5            4  2.393383 28.58114
#> 6            5  2.108814 28.48649
#> 7            6  2.080212 30.76328
#> 8            7  2.057899 33.10038
#> 9            8  2.025682 35.33260


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.16953 
```
