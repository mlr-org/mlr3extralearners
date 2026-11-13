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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| ntree | integer | 500 |  | \\\[1, \infty)\\ |
| method | character | rfq | rfq, brf, standard | \- |
| block.size | integer | 10 |  | \\\[1, \infty)\\ |
| fast | logical | FALSE | TRUE, FALSE | \- |
| ratio | numeric | \- |  | \\\[0, 1\]\\ |
| mtry | integer | \- |  | \\\[1, \infty)\\ |
| mtry.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| nodesize | integer | 15 |  | \\\[1, \infty)\\ |
| nodedepth | integer | \- |  | \\\[1, \infty)\\ |
| splitrule | character | gini | gini, auc, entropy | \- |
| nsplit | integer | 10 |  | \\\[0, \infty)\\ |
| importance | character | FALSE | FALSE, TRUE, none, permute, random, anti | \- |
| bootstrap | character | by.root | by.root, by.node, none, by.user | \- |
| samptype | character | swor | swor, swr | \- |
| samp | untyped | \- |  | \- |
| membership | logical | FALSE | TRUE, FALSE | \- |
| sampsize | untyped | \- |  | \- |
| sampsize.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| na.action | character | na.omit | na.omit, na.impute | \- |
| nimpute | integer | 1 |  | \\\[1, \infty)\\ |
| ntime | integer | \- |  | \\\[1, \infty)\\ |
| proximity | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| distance | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| forest.wt | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| xvar.wt | untyped | \- |  | \- |
| split.wt | untyped | \- |  | \- |
| forest | logical | TRUE | TRUE, FALSE | \- |
| var.used | character | FALSE | FALSE, all.trees | \- |
| split.depth | character | FALSE | FALSE, all.trees | \- |
| seed | integer | \- |  | \\(-\infty, -1\]\\ |
| do.trace | logical | FALSE | TRUE, FALSE | \- |
| get.tree | untyped | \- |  | \- |
| outcome | character | train | train, test | \- |
| ptn.count | integer | 0 |  | \\\[0, \infty)\\ |
| cores | integer | 1 |  | \\\[1, \infty)\\ |
| save.memory | logical | FALSE | TRUE, FALSE | \- |
| perf.type | character | \- | gmean, misclass, brier, none | \- |
| case.depth | logical | FALSE | TRUE, FALSE | \- |
| marginal.xvar | untyped | NULL |  | \- |

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

HarutyunyanLiana

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifImbalancedRandomForestSRC`

## Methods

### Public methods

- [`LearnerClassifImbalancedRandomForestSRC$new()`](#method-LearnerClassifImbalancedRandomForestSRC-initialize)

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

### `LearnerClassifImbalancedRandomForestSRC$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$new()

------------------------------------------------------------------------

### `LearnerClassifImbalancedRandomForestSRC$importance()`

The importance scores are extracted from the slot `importance`.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifImbalancedRandomForestSRC$selected_features()`

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

### `LearnerClassifImbalancedRandomForestSRC$oob_error()`

OOB error extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifImbalancedRandomForestSRC$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifImbalancedRandomForestSRC$clone()`

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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")
# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#>                          Sample size: 139
#>            Frequency of class labels: M=73, R=66
#>                      Number of trees: 3000
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 16.3067
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RFQ
#>                               Family: class
#>                       Splitting rule: auc *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.1061
#>                    (OOB) Brier score: 0.12433903
#>         (OOB) Normalized Brier score: 0.49735613
#>                            (OOB) AUC: 0.94499792
#>                       (OOB) Log-loss: 0.40316794
#>                         (OOB) PR-AUC: 0.94270899
#>                         (OOB) G-mean: 0.83584098
#>    (OOB) Requested performance error: 0.49735613, 0.24867807, 0.24867807
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error class.freq
#>          M 66  7      0.0959         73
#>          R 15 51      0.2273         66
#> 
#>       (OOB) Misclassification rate: 0.1582734
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718   PR-AUC: 0.47482014
print(learner$importance())
#>          V12          V11          V10           V9          V27          V45 
#> 0.1249124365 0.1230043577 0.0574555753 0.0468172647 0.0453045427 0.0447400953 
#>          V36          V46          V23          V13          V17          V48 
#> 0.0361078808 0.0342731387 0.0276509819 0.0275392073 0.0253550436 0.0252935947 
#>          V43          V37          V21          V47          V49          V28 
#> 0.0245049873 0.0238255702 0.0237189085 0.0220251972 0.0189378441 0.0181562332 
#>           V1          V44          V26          V16          V31          V24 
#> 0.0177145095 0.0174275583 0.0171472024 0.0166414409 0.0166332543 0.0153429659 
#>          V25          V52          V54          V51          V18          V42 
#> 0.0131119348 0.0127607895 0.0126898288 0.0123416522 0.0118714749 0.0116830033 
#>           V5          V59           V4          V15          V14          V22 
#> 0.0116622730 0.0112547402 0.0107122161 0.0101825503 0.0099515472 0.0094727168 
#>          V32          V20          V19          V29          V57          V41 
#> 0.0090688218 0.0083195800 0.0059101476 0.0057929730 0.0055520396 0.0055370427 
#>          V40          V58          V35          V50           V2           V3 
#> 0.0051440359 0.0050952509 0.0049935108 0.0049880564 0.0048082693 0.0047730223 
#>          V33          V30           V6          V53          V56          V39 
#> 0.0046753955 0.0045800276 0.0038061086 0.0036584743 0.0036046880 0.0030834752 
#>          V38           V7          V34           V8          V55          V60 
#> 0.0026651556 0.0025884922 0.0023042416 0.0015996224 0.0015702665 0.0006629875 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
