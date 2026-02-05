# Classification Decision Tree Learner

Evolutionary learning of globally optimal classification trees. Calls
[`evtree::evtree()`](https://rdrr.io/pkg/evtree/man/evtree.html)
from[evtree](https://CRAN.R-project.org/package=evtree).

## Initial parameter values

`pmutatemajor`, `pmutateminor`, `pcrossover`, `psplit`, and `pprune`,
are scaled internally to sum to 100.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifEvtree`

## Methods

### Public methods

- [`LearnerClassifEvtree$new()`](#method-LearnerClassifEvtree-new)

- [`LearnerClassifEvtree$clone()`](#method-LearnerClassifEvtree-clone)

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

    LearnerClassifEvtree$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifEvtree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.evtree")
print(learner)
#> 
#> ── <LearnerClassifEvtree> (classif.evtree): Evolutionary learning of globally op
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and evtree
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Model formula:
#> Class ~ V1 + V10 + V11 + V12 + V13 + V14 + V15 + V16 + V17 + 
#>     V18 + V19 + V2 + V20 + V21 + V22 + V23 + V24 + V25 + V26 + 
#>     V27 + V28 + V29 + V3 + V30 + V31 + V32 + V33 + V34 + V35 + 
#>     V36 + V37 + V38 + V39 + V4 + V40 + V41 + V42 + V43 + V44 + 
#>     V45 + V46 + V47 + V48 + V49 + V5 + V50 + V51 + V52 + V53 + 
#>     V54 + V55 + V56 + V57 + V58 + V59 + V6 + V60 + V7 + V8 + 
#>     V9
#> 
#> Fitted party:
#> [1] root
#> |   [2] V47 < 0.1319
#> |   |   [3] V20 < 0.8321
#> |   |   |   [4] V12 < 0.2325: R (n = 39, err = 2.6%)
#> |   |   |   [5] V12 >= 0.2325
#> |   |   |   |   [6] V22 < 0.4393: R (n = 8, err = 25.0%)
#> |   |   |   |   [7] V22 >= 0.4393: M (n = 27, err = 11.1%)
#> |   |   [8] V20 >= 0.8321: M (n = 15, err = 13.3%)
#> |   [9] V47 >= 0.1319
#> |   |   [10] V16 < 0.6699: M (n = 43, err = 7.0%)
#> |   |   [11] V16 >= 0.6699: R (n = 7, err = 14.3%)
#> 
#> Number of inner nodes:    5
#> Number of terminal nodes: 6


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
