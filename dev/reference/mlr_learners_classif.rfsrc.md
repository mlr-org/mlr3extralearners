# Classification Random Forest SRC Learner

Random forest for classification. Calls
[`randomForestSRC::rfsrc()`](https://www.randomforestsrc.org//reference/rfsrc.html)
from
[randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.rfsrc")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| ntree | integer | 500 |  | \\\[1, \infty)\\ |
| mtry | integer | \- |  | \\\[1, \infty)\\ |
| mtry.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| nodesize | integer | 15 |  | \\\[1, \infty)\\ |
| nodedepth | integer | \- |  | \\\[1, \infty)\\ |
| splitrule | character | gini | gini, auc, entropy | \- |
| nsplit | integer | 10 |  | \\\[0, \infty)\\ |
| importance | character | FALSE | FALSE, TRUE, none, permute, random, anti | \- |
| block.size | integer | 10 |  | \\\[1, \infty)\\ |
| bootstrap | character | by.root | by.root, by.node, none, by.user | \- |
| samptype | character | swor | swor, swr | \- |
| samp | untyped | \- |  | \- |
| membership | logical | FALSE | TRUE, FALSE | \- |
| sampsize | untyped | \- |  | \- |
| sampsize.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| na.action | character | na.omit | na.omit, na.impute | \- |
| nimpute | integer | 1 |  | \\\[1, \infty)\\ |
| proximity | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| distance | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| forest.wt | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| xvar.wt | untyped | \- |  | \- |
| split.wt | untyped | \- |  | \- |
| forest | logical | TRUE | TRUE, FALSE | \- |
| var.used | character | FALSE | FALSE, all.trees | \- |
| split.depth | character | FALSE | FALSE, all.trees, by.tree | \- |
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

Breiman, Leo (2001). “Random Forests.” *Machine Learning*, **45**(1),
5–32. ISSN 1573-0565.
[doi:10.1023/A:1010933404324](https://doi.org/10.1023/A%3A1010933404324)
.

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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRandomForestSRC`

## Methods

### Public methods

- [`LearnerClassifRandomForestSRC$new()`](#method-LearnerClassifRandomForestSRC-initialize)

- [`LearnerClassifRandomForestSRC$importance()`](#method-LearnerClassifRandomForestSRC-importance)

- [`LearnerClassifRandomForestSRC$selected_features()`](#method-LearnerClassifRandomForestSRC-selected_features)

- [`LearnerClassifRandomForestSRC$oob_error()`](#method-LearnerClassifRandomForestSRC-oob_error)

- [`LearnerClassifRandomForestSRC$clone()`](#method-LearnerClassifRandomForestSRC-clone)

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

### `LearnerClassifRandomForestSRC$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifRandomForestSRC$new()

------------------------------------------------------------------------

### `LearnerClassifRandomForestSRC$importance()`

The importance scores are extracted from the model slot `importance`,
returned for 'all'.

#### Usage

    LearnerClassifRandomForestSRC$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifRandomForestSRC$selected_features()`

Selected features are extracted from the model slot `var.used`.

**Note**: Due to a known issue in `randomForestSRC`, enabling
`var.used = "all.trees"` causes prediction to fail. Therefore, this
setting should be used exclusively for feature selection purposes and
not when prediction is required.

#### Usage

    LearnerClassifRandomForestSRC$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### `LearnerClassifRandomForestSRC$oob_error()`

OOB error extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifRandomForestSRC$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifRandomForestSRC$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifRandomForestSRC$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.rfsrc", importance = "TRUE")
print(learner)
#> 
#> ── <LearnerClassifRandomForestSRC> (classif.rfsrc): Random Forest ──────────────
#> • Model: -
#> • Parameters: importance=TRUE
#> • Packages: mlr3, mlr3extralearners, and randomForestSRC
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, multiclass, oob_error, selected_features,
#> twoclass, and weights
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
#>                      Number of trees: 500
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 17.358
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RF-C
#>                               Family: class
#>                       Splitting rule: gini *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.1061
#>                    (OOB) Brier score: 0.14811923
#>         (OOB) Normalized Brier score: 0.59247692
#>                            (OOB) AUC: 0.89196762
#>                       (OOB) Log-loss: 0.459078
#>                         (OOB) PR-AUC: 0.89685832
#>                         (OOB) G-mean: 0.76749013
#>    (OOB) Requested performance error: 0.21582734, 0.09589041, 0.34848485
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error class.freq
#>          M 67  6      0.0822         73
#>          R 23 43      0.3485         66
#> 
#>       (OOB) Misclassification rate: 0.2086331
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718   PR-AUC: 0.47482014
print(learner$importance())
#>           V11           V12           V10           V49            V9 
#>  0.0554249255  0.0524327710  0.0390352193  0.0304382623  0.0294228213 
#>           V37           V48           V21           V52           V36 
#>  0.0211431626  0.0203980176  0.0200753806  0.0192511796  0.0176980042 
#>           V27           V32           V47           V28           V18 
#>  0.0164219028  0.0152077138  0.0148345339  0.0141056340  0.0137984151 
#>           V16           V45           V20           V33           V17 
#>  0.0137234274  0.0136845711  0.0122093493  0.0113690023  0.0106318290 
#>           V22           V43           V44           V15            V5 
#>  0.0103572657  0.0098156870  0.0097738549  0.0093021597  0.0089165680 
#>            V3           V39           V31           V14           V58 
#>  0.0083450044  0.0083027518  0.0075681964  0.0072904854  0.0071247967 
#>           V51           V26           V34           V46            V2 
#>  0.0068392623  0.0067127946  0.0066648111  0.0062876427  0.0061798724 
#>           V19            V4           V35           V30           V42 
#>  0.0061327386  0.0061288125  0.0059934942  0.0059655807  0.0055606890 
#>           V24           V53            V7           V13           V50 
#>  0.0055502325  0.0054308091  0.0050738771  0.0049822213  0.0045184418 
#>           V40           V54            V6           V29           V38 
#>  0.0042098872  0.0040765294  0.0039272121  0.0038153200  0.0034922635 
#>           V23           V55            V1            V8           V25 
#>  0.0026449140  0.0023276265  0.0019111173  0.0019044077  0.0017788336 
#>           V56           V60           V59           V41           V57 
#>  0.0016352499  0.0011508444  0.0010051563  0.0004453816 -0.0002600299 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1449275 
```
