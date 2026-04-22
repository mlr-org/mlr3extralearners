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
#> There were 60 predictors of which 41 had non-zero influence.
print(learner$importance())
#>        V12        V51        V45        V10         V9        V31        V48 
#> 19.7279445 11.4306610  8.0073839  7.4344971  7.3475883  6.3069808  5.3046914 
#>        V28        V52        V11        V23        V56        V16        V27 
#>  5.3016434  4.9392708  4.6815425  4.1854605  4.1534838  3.9743500  3.8326106 
#>        V36        V20        V49        V58        V54        V46        V17 
#>  3.2486777  2.4214522  2.3154766  2.2936757  2.2241554  2.1381217  2.0330464 
#>        V37         V4        V43        V32         V5        V30        V19 
#>  1.8227177  1.7883767  1.7774978  1.5522082  1.4645266  1.4478531  1.3680647 
#>        V42        V25        V44        V59        V15        V21        V50 
#>  1.2802446  1.2079906  1.1199359  1.0531015  0.8778880  0.7792759  0.7277900 
#>        V53        V40         V7        V55        V39         V3         V1 
#>  0.5685167  0.5674845  0.5571257  0.5132807  0.4751420  0.4076587  0.0000000 
#>        V13        V14        V18         V2        V22        V24        V26 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V29        V33        V34        V35        V38        V41        V47 
#>  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000  0.0000000 
#>        V57         V6        V60         V8 
#>  0.0000000  0.0000000  0.0000000  0.0000000 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
