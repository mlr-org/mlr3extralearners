# Classification Imbalanced Random Forest Src Learner

Imbalanced Random forest for classification between two classes. Calls
[`randomForestSRC::imbalanced.rfsrc()`](https://www.randomforestsrc.org//reference/imbalanced.rfsrc.html)
from from
[randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.imbalanced_rfsrc")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC)

## Parameters

|                |           |         |                                          |                    |
|----------------|-----------|---------|------------------------------------------|--------------------|
| Id             | Type      | Default | Levels                                   | Range              |
| ntree          | integer   | 500     |                                          | \\\[1, \infty)\\   |
| method         | character | rfq     | rfq, brf, standard                       | \-                 |
| block.size     | integer   | 10      |                                          | \\\[1, \infty)\\   |
| fast           | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| ratio          | numeric   | \-      |                                          | \\\[0, 1\]\\       |
| mtry           | integer   | \-      |                                          | \\\[1, \infty)\\   |
| mtry.ratio     | numeric   | \-      |                                          | \\\[0, 1\]\\       |
| nodesize       | integer   | 15      |                                          | \\\[1, \infty)\\   |
| nodedepth      | integer   | \-      |                                          | \\\[1, \infty)\\   |
| splitrule      | character | gini    | gini, auc, entropy                       | \-                 |
| nsplit         | integer   | 10      |                                          | \\\[0, \infty)\\   |
| importance     | character | FALSE   | FALSE, TRUE, none, permute, random, anti | \-                 |
| bootstrap      | character | by.root | by.root, by.node, none, by.user          | \-                 |
| samptype       | character | swor    | swor, swr                                | \-                 |
| samp           | untyped   | \-      |                                          | \-                 |
| membership     | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| sampsize       | untyped   | \-      |                                          | \-                 |
| sampsize.ratio | numeric   | \-      |                                          | \\\[0, 1\]\\       |
| na.action      | character | na.omit | na.omit, na.impute                       | \-                 |
| nimpute        | integer   | 1       |                                          | \\\[1, \infty)\\   |
| ntime          | integer   | \-      |                                          | \\\[1, \infty)\\   |
| proximity      | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| distance       | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| forest.wt      | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| xvar.wt        | untyped   | \-      |                                          | \-                 |
| split.wt       | untyped   | \-      |                                          | \-                 |
| forest         | logical   | TRUE    | TRUE, FALSE                              | \-                 |
| var.used       | character | FALSE   | FALSE, all.trees                         | \-                 |
| split.depth    | character | FALSE   | FALSE, all.trees                         | \-                 |
| seed           | integer   | \-      |                                          | \\(-\infty, -1\]\\ |
| do.trace       | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| get.tree       | untyped   | \-      |                                          | \-                 |
| outcome        | character | train   | train, test                              | \-                 |
| ptn.count      | integer   | 0       |                                          | \\\[0, \infty)\\   |
| cores          | integer   | 1       |                                          | \\\[1, \infty)\\   |
| save.memory    | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| perf.type      | character | \-      | gmean, misclass, brier, none             | \-                 |
| case.depth     | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| marginal.xvar  | untyped   | NULL    |                                          | \-                 |

## Custom mlr3 parameters

- `mtry`: This hyperparameter can alternatively be set via the added
  hyperparameter `mtry.ratio` as
  `mtry = max(ceiling(mtry.ratio * n_features), 1)`. Note that `mtry`
  and `mtry.ratio` are mutually exclusive.

- `sampsize`: This hyperparameter can alternatively be set via the added
  hyperparameter `sampsize.ratio` as
  `sampsize = max(ceiling(sampsize.ratio * n_obs), 1)`. Note that
  `sampsize` and `sampsize.ratio` are mutually exclusive.

- `cores`: This value is set as the option `rf.cores` during training
  and is set to 1 by default.

## References

O’Brien R, Ishwaran H (2019). “A random forests quantile classifier for
class imbalanced data.” *Pattern Recognition*, **90**, 232–249.
[doi:10.1016/j.patcog.2019.01.036](https://doi.org/10.1016/j.patcog.2019.01.036)
.

Chao C, Leo B (2004). “Using Random Forest to Learn Imbalanced Data.”
*University of California, Berkeley*.

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

HarutyunyanLiana

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifImbalancedRandomForestSRC`

## Methods

### Public methods

- [`LearnerClassifImbalancedRandomForestSRC$new()`](#method-LearnerClassifImbalancedRandomForestSRC-new)

- [`LearnerClassifImbalancedRandomForestSRC$importance()`](#method-LearnerClassifImbalancedRandomForestSRC-importance)

- [`LearnerClassifImbalancedRandomForestSRC$selected_features()`](#method-LearnerClassifImbalancedRandomForestSRC-selected_features)

- [`LearnerClassifImbalancedRandomForestSRC$oob_error()`](#method-LearnerClassifImbalancedRandomForestSRC-oob_error)

- [`LearnerClassifImbalancedRandomForestSRC$clone()`](#method-LearnerClassifImbalancedRandomForestSRC-clone)

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

    LearnerClassifImbalancedRandomForestSRC$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the slot `importance`.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `selected_features()`

Selected features are extracted from the model slot `var.used`.

**Note**: Due to a known issue in `randomForestSRC`, enabling
`var.used = "all.trees"` causes prediction to fail. Therefore, this
setting should be used exclusively for feature selection purposes and
not when prediction is required.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB error extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.imbalanced_rfsrc", importance = "TRUE")
print(learner)
#> 
#> ── <LearnerClassifImbalancedRandomForestSRC> (classif.imbalanced_rfsrc): Imbalan
#> • Model: -
#> • Parameters: importance=TRUE
#> • Packages: mlr3 and randomForestSRC
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, oob_error, selected_features, twoclass, and
#> weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")
# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#>                          Sample size: 139
#>            Frequency of class labels: M=80, R=59
#>                      Number of trees: 3000
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 16.9737
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RFQ
#>                               Family: class
#>                       Splitting rule: auc *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.3559
#>                    (OOB) Brier score: 0.13511055
#>         (OOB) Normalized Brier score: 0.5404422
#>                            (OOB) AUC: 0.93305085
#>                       (OOB) Log-loss: 0.42934082
#>                         (OOB) PR-AUC: 0.91048225
#>                         (OOB) G-mean: 0.84372057
#>    (OOB) Requested performance error: 0.15627943
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error
#>          M 70 10      0.1250
#>          R 11 48      0.1864
#> 
#>       (OOB) Misclassification rate: 0.1510791
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718
print(learner$importance())
#>           V37           V11           V17           V21           V27 
#>  0.0301700796  0.0267916410  0.0267916410  0.0267916410  0.0267916410 
#>           V52           V12            V9           V28           V33 
#>  0.0267916410  0.0236854361  0.0236854361  0.0177645279  0.0177645279 
#>           V36           V43           V45           V49           V55 
#>  0.0177645279  0.0177645279  0.0177645279  0.0177645279  0.0177645279 
#>            V6           V60            V7           V46           V57 
#>  0.0177645279  0.0177645279  0.0177645279  0.0118857630  0.0118857630 
#>           V51           V16           V19           V26           V29 
#>  0.0094696666  0.0088350139  0.0088350139  0.0088350139  0.0088350139 
#>           V30           V39           V41           V42           V48 
#>  0.0088350139  0.0088350139  0.0088350139  0.0088350139  0.0088350139 
#>           V50           V59           V44           V10           V23 
#>  0.0088350139  0.0088350139  0.0060482541  0.0028926929  0.0028926929 
#>           V53           V47           V14           V15           V18 
#>  0.0028926929  0.0002511447  0.0000000000  0.0000000000  0.0000000000 
#>            V2           V20           V22           V24           V25 
#>  0.0000000000  0.0000000000  0.0000000000  0.0000000000  0.0000000000 
#>            V3           V32           V35           V38           V40 
#>  0.0000000000  0.0000000000  0.0000000000  0.0000000000  0.0000000000 
#>            V5           V54           V58           V13            V1 
#>  0.0000000000  0.0000000000  0.0000000000 -0.0060052044 -0.0087434519 
#>           V31           V34           V56            V8            V4 
#> -0.0087434519 -0.0087434519 -0.0087434519 -0.0087434519 -0.0148108881 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1304348 
```
