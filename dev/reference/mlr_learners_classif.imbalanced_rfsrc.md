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
#>            Frequency of class labels: M=72, R=67
#>                      Number of trees: 3000
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 17.1187
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RFQ
#>                               Family: class
#>                       Splitting rule: auc *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.0746
#>                    (OOB) Brier score: 0.14165791
#>         (OOB) Normalized Brier score: 0.56663165
#>                            (OOB) AUC: 0.9077529
#>                       (OOB) Log-loss: 0.44383638
#>                         (OOB) PR-AUC: 0.90499563
#>                         (OOB) G-mean: 0.81038042
#>    (OOB) Requested performance error: 0.18961958
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error
#>          M 66  6      0.0833
#>          R 19 48      0.2836
#> 
#>       (OOB) Misclassification rate: 0.1798561
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718
print(learner$importance())
#>          V42          V20           V6          V12          V29          V45 
#>  0.031699940  0.026922714  0.025732952  0.024940779  0.023095474  0.023095474 
#>           V5          V10          V23          V27          V36          V37 
#>  0.023095474  0.020729276  0.020729276  0.020729276  0.020729276  0.020729276 
#>          V52          V11          V31           V4          V32          V44 
#>  0.020729276  0.018631925  0.018631925  0.016801291  0.014584038  0.014584038 
#>          V48          V57           V9           V1          V13          V15 
#>  0.014584038  0.014584038  0.014584038  0.012372947  0.012372947  0.012372947 
#>          V19          V21          V22          V41          V51          V59 
#>  0.012372947  0.012372947  0.012372947  0.012372947  0.012372947  0.012372947 
#>           V8          V16          V43          V50          V18          V24 
#>  0.012372947  0.008485893  0.008485893  0.008485893  0.006162678  0.006162678 
#>           V3          V30          V33          V35          V53          V47 
#>  0.006162678  0.006162678  0.006162678  0.006162678  0.006162678  0.004103218 
#>          V14          V17           V2          V25          V26          V34 
#>  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000 
#>          V38          V39          V40          V46          V54          V56 
#>  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000 
#>          V58          V60           V7          V28          V55          V49 
#>  0.000000000  0.000000000  0.000000000 -0.002171407 -0.002171407 -0.008397949 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
