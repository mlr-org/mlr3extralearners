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
#> 1             0 96.31508 192.6302
#> 2             1 77.77817 162.0919
#> 3             2 71.52497 156.1211
#> 4             3 64.58873 148.7842
#> 5             4 60.32146 146.7852
#> 6             5 57.22205 147.1220
#> 7             6 54.25590 147.7253
#> 8             7 50.42646 146.6020
#> 9             8 47.21606 146.7168
#> 10            9 44.17528 147.1708
#> 11           10 39.75582 144.8674
#> 12           11 37.07486 146.0411
#> 13           12 35.28734 149.0017
#> 14           13 34.09136 153.1453
#> 15           14 32.93729 157.3727
#> 16           15 31.79613 161.6260
#> 17           16 30.60256 165.7744
#> 18           17 21.79038 154.6857
#> 19           18 18.43008 154.5006
#> 20           19 15.67258 155.5212
#> 21           20 13.77575 158.2631
#> 22           21 12.02102 161.2892


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
