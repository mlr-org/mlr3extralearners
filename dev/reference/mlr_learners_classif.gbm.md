# Gradient Boosting Classification Learner

Gradient Boosting Classification Algorithm. Calls
[`gbm::gbm()`](https://gbm-developers.github.io/gbm/reference/gbm.html)
from [gbm](https://CRAN.R-project.org/package=gbm).

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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| distribution | character | bernoulli | bernoulli, adaboost, huberized, multinomial | \- |
| n.trees | integer | 100 |  | \\\[1, \infty)\\ |
| interaction.depth | integer | 1 |  | \\\[1, \infty)\\ |
| n.minobsinnode | integer | 10 |  | \\\[1, \infty)\\ |
| shrinkage | numeric | 0.001 |  | \\\[0, \infty)\\ |
| bag.fraction | numeric | 0.5 |  | \\\[0, 1\]\\ |
| train.fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| cv.folds | integer | 0 |  | \\(-\infty, \infty)\\ |
| keep.data | logical | FALSE | TRUE, FALSE | \- |
| verbose | logical | FALSE | TRUE, FALSE | \- |
| n.cores | integer | 1 |  | \\(-\infty, \infty)\\ |
| var.monotone | untyped | \- |  | \- |

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifGBM`

## Methods

### Public methods

- [`LearnerClassifGBM$new()`](#method-LearnerClassifGBM-initialize)

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

### `LearnerClassifGBM$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifGBM$new()

------------------------------------------------------------------------

### `LearnerClassifGBM$importance()`

The importance scores are extracted by
[`gbm::relative.influence()`](https://gbm-developers.github.io/gbm/reference/relative.influence.html)
from the model.

#### Usage

    LearnerClassifGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifGBM$clone()`

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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

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
#> There were 60 predictors of which 42 had non-zero influence.
print(learner$importance())
#>        V51        V27        V12         V9        V21        V11        V28 
#> 15.1669257  9.4401584  9.2088416  7.7534559  7.5343469  7.2502008  6.3704501 
#>        V49        V15        V48        V20        V16        V37        V43 
#>  5.8280886  4.2713478  4.1614760  4.0711833  3.4224481  3.3751838  3.3223432 
#>        V53        V10        V23        V33        V36        V22        V47 
#>  3.3049825  2.9976608  2.9296438  2.8204138  2.7395052  2.2461125  2.2246082 
#>        V54        V52         V4        V35        V59        V39        V26 
#>  2.0524106  1.6654590  1.6206179  1.6172281  1.6052424  1.5441638  1.4343681 
#>        V34        V31        V44         V2        V58        V55         V1 
#>  1.3449221  1.2480182  1.2186543  1.1213640  1.0020629  0.9566285  0.8792410 
#>        V24        V17        V60        V32        V25         V7        V56 
#>  0.8158694  0.7044170  0.4919276  0.4447042  0.4432545  0.3982840  0.3353291 
#>        V13        V14        V18        V19        V29         V3        V30 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V38        V40        V41        V42        V45        V46         V5 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V50        V57         V6         V8 
#>  0.0000000  0.0000000  0.0000000  0.0000000 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1449275 
```
