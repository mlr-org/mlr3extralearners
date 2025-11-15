# Gradient Boosting Classification Learner

Gradient Boosting Classification Algorithm. Calls
[`gbm::gbm()`](https://rdrr.io/pkg/gbm/man/gbm.html) from
[gbm](https://CRAN.R-project.org/package=gbm).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.gbm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [gbm](https://CRAN.R-project.org/package=gbm)

## Parameters

|                   |           |           |                                             |                       |
|-------------------|-----------|-----------|---------------------------------------------|-----------------------|
| Id                | Type      | Default   | Levels                                      | Range                 |
| distribution      | character | bernoulli | bernoulli, adaboost, huberized, multinomial | \-                    |
| n.trees           | integer   | 100       |                                             | \\\[1, \infty)\\      |
| interaction.depth | integer   | 1         |                                             | \\\[1, \infty)\\      |
| n.minobsinnode    | integer   | 10        |                                             | \\\[1, \infty)\\      |
| shrinkage         | numeric   | 0.001     |                                             | \\\[0, \infty)\\      |
| bag.fraction      | numeric   | 0.5       |                                             | \\\[0, 1\]\\          |
| train.fraction    | numeric   | 1         |                                             | \\\[0, 1\]\\          |
| cv.folds          | integer   | 0         |                                             | \\(-\infty, \infty)\\ |
| keep.data         | logical   | FALSE     | TRUE, FALSE                                 | \-                    |
| verbose           | logical   | FALSE     | TRUE, FALSE                                 | \-                    |
| n.cores           | integer   | 1         |                                             | \\(-\infty, \infty)\\ |
| var.monotone      | untyped   | \-        |                                             | \-                    |

## Initial parameter values

- `keep.data` is initialized to `FALSE` to save memory.

- `n.cores` is initialized to 1 to avoid conflicts with parallelization
  through future.

## References

Friedman, H J (2002). “Stochastic gradient boosting.” *Computational
statistics & data analysis*, **38**(4), 367–378.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifGBM`

## Methods

### Public methods

- [`LearnerClassifGBM$new()`](#method-LearnerClassifGBM-new)

- [`LearnerClassifGBM$importance()`](#method-LearnerClassifGBM-importance)

- [`LearnerClassifGBM$clone()`](#method-LearnerClassifGBM-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifGBM$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted by
[`gbm::relative.influence()`](https://rdrr.io/pkg/gbm/man/relative.influence.html)
from the model.

#### Usage

    LearnerClassifGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.gbm")
print(learner)
#> 
#> ── <LearnerClassifGBM> (classif.gbm): Gradient Boosting ────────────────────────
#> • Model: -
#> • Parameters: keep.data=FALSE, n.cores=1
#> • Packages: mlr3, mlr3extralearners, and gbm
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Distribution not specified, assuming bernoulli ...

print(learner$model)
#> gbm::gbm(formula = f, data = data, keep.data = FALSE, n.cores = 1L)
#> A gradient boosted model with bernoulli loss function.
#> 100 iterations were performed.
#> There were 60 predictors of which 41 had non-zero influence.
print(learner$importance())
#>        V12        V10         V4        V52        V45        V36        V47 
#> 14.5674199 12.2534211  7.7169886  7.4107379  6.7795696  5.6096254  5.5032759 
#>        V37        V51        V16        V17        V49        V21        V48 
#>  5.4729487  4.9313851  4.4977193  4.3513135  4.1403161  4.1272520  4.0918294 
#>        V35        V20        V11        V13        V59        V28        V23 
#>  4.0317870  3.7857954  3.2043056  2.9926207  2.8863301  2.2042693  2.1336444 
#>        V34        V26        V31        V60        V39        V55        V40 
#>  1.8348864  1.5898376  1.5628858  1.4703700  1.3844396  1.3305142  1.2972038 
#>        V24        V15        V54         V5        V30        V46        V42 
#>  1.2322263  1.1138095  1.1033016  1.0297925  1.0010337  0.9890559  0.9312185 
#>        V32        V44         V2         V9         V3        V18         V1 
#>  0.8314353  0.8111396  0.6665214  0.5150197  0.5054424  0.4194220  0.0000000 
#>        V14        V19        V22        V25        V27        V29        V33 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V38        V41        V43        V50        V53        V56        V57 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V58         V6         V7         V8 
#>  0.0000000  0.0000000  0.0000000  0.0000000 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.115942 
```
