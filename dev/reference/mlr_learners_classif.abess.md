# Classification Abess Learner

Adaptive best-subset selection for classification. Calls
[`abess::abess()`](https://abess-team.github.io/abess/reference/abess.html)
from [abess](https://CRAN.R-project.org/package=abess).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.abess")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [abess](https://CRAN.R-project.org/package=abess)

## Parameters

|                   |           |          |                                |                       |
|-------------------|-----------|----------|--------------------------------|-----------------------|
| Id                | Type      | Default  | Levels                         | Range                 |
| family            | character | \-       | binomial, multinomial, ordinal | \-                    |
| tune.path         | character | sequence | sequence, gsection             | \-                    |
| tune.type         | character | gic      | gic, aic, bic, ebic, cv        | \-                    |
| normalize         | integer   | NULL     |                                | \\(-\infty, \infty)\\ |
| support.size      | untyped   | NULL     |                                | \-                    |
| c.max             | integer   | 2        |                                | \\\[1, \infty)\\      |
| gs.range          | untyped   | NULL     |                                | \-                    |
| lambda            | numeric   | 0        |                                | \\\[0, \infty)\\      |
| always.include    | untyped   | NULL     |                                | \-                    |
| group.index       | untyped   | NULL     |                                | \-                    |
| init.active.set   | untyped   | NULL     |                                | \-                    |
| splicing.type     | integer   | 2        |                                | \\\[1, 2\]\\          |
| max.splicing.iter | integer   | 20       |                                | \\\[1, \infty)\\      |
| screening.num     | integer   | NULL     |                                | \\\[0, \infty)\\      |
| important.search  | integer   | NULL     |                                | \\\[0, \infty)\\      |
| warm.start        | logical   | TRUE     | TRUE, FALSE                    | \-                    |
| nfolds            | integer   | 5        |                                | \\(-\infty, \infty)\\ |
| foldid            | untyped   | NULL     |                                | \-                    |
| cov.update        | logical   | FALSE    | TRUE, FALSE                    | \-                    |
| newton            | character | exact    | exact, approx                  | \-                    |
| newton.thresh     | numeric   | 1e-06    |                                | \\\[0, \infty)\\      |
| max.newton.iter   | integer   | NULL     |                                | \\\[1, \infty)\\      |
| early.stop        | logical   | FALSE    | TRUE, FALSE                    | \-                    |
| ic.scale          | numeric   | 1        |                                | \\\[0, \infty)\\      |
| num.threads       | integer   | 0        |                                | \\\[0, \infty)\\      |
| seed              | integer   | 0        |                                | \\(-\infty, \infty)\\ |

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifAbess`

## Methods

### Public methods

- [`LearnerClassifAbess$new()`](#method-LearnerClassifAbess-new)

- [`LearnerClassifAbess$selected_features()`](#method-LearnerClassifAbess-selected_features)

- [`LearnerClassifAbess$clone()`](#method-LearnerClassifAbess-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifAbess$new()

------------------------------------------------------------------------

### Method `selected_features()`

Extract the name of selected features from the model by
[`abess::extract()`](https://abess-team.github.io/abess/reference/extract.abess.html).

#### Usage

    LearnerClassifAbess$selected_features()

#### Returns

The names of selected features

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifAbess$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.abess")
print(learner)
#> 
#> ── <LearnerClassifAbess> (classif.abess): Fast Best Subset Selection for Classif
#> • Model: -
#> • Parameters: num.threads=1
#> • Packages: mlr3 and abess
#> • Predict Types: [response] and prob
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass, selected_features, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Call:
#> abess.default(x = x, y = y, family = "binomial", num.threads = 1L)
#> 
#>    support.size      dev      GIC
#> 1             0 96.34386 192.6877
#> 2             1 77.54259 161.6208
#> 3             2 73.80409 160.6793
#> 4             3 66.39610 152.3989
#> 5             4 62.97998 152.1023
#> 6             5 60.30137 153.2806
#> 7             6 57.27219 153.7579
#> 8             7 54.24646 154.2420
#> 9             8 52.23219 156.7490
#> 10            9 49.32739 157.4750
#> 11           10 46.16553 157.6869
#> 12           11 42.78770 157.4668
#> 13           12 40.01961 158.4662
#> 14           13 36.75307 158.4687
#> 15           14 34.53900 160.5761
#> 16           15 32.77788 163.5895
#> 17           16 29.64610 163.8615
#> 18           17 27.30728 165.7194
#> 19           18 26.04582 169.7321
#> 20           19 25.22697 174.6300
#> 21           20 24.15616 179.0240
#> 22           21 23.50762 184.2625


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
