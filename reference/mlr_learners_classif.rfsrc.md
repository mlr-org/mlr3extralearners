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
5–32. ISSN 1573-0565,
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
#>            Frequency of class labels: M=79, R=60
#>                      Number of trees: 500
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 16.822
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RF-C
#>                               Family: class
#>                       Splitting rule: gini *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.3167
#>                    (OOB) Brier score: 0.12719277
#>         (OOB) Normalized Brier score: 0.50877106
#>                            (OOB) AUC: 0.94050633
#>                       (OOB) Log-loss: 0.41242783
#>                         (OOB) PR-AUC: 0.92409705
#>                         (OOB) G-mean: 0.76967855
#>    (OOB) Requested performance error: 0.20143885, 0.08860759, 0.35
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error
#>          M 72  7      0.0886
#>          R 21 39      0.3500
#> 
#>       (OOB) Misclassification rate: 0.2014388
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718
print(learner$importance())
#>          V11          V12          V52          V37          V36           V9 
#>  0.081998039  0.079477318  0.057413948  0.056386237  0.044421192  0.034651375 
#>          V10          V48          V13          V39          V17          V20 
#>  0.033000916  0.023257768  0.022948840  0.021532046  0.019931854  0.019714735 
#>          V47          V49           V4          V18          V51          V16 
#>  0.016730285  0.016010583  0.014819375  0.014551833  0.014400266  0.013533891 
#>           V5          V45          V46           V7          V50          V31 
#>  0.013514768  0.012964881  0.012089950  0.011616010  0.011374945  0.010877319 
#>          V27           V3          V35          V57          V29          V40 
#>  0.010634067  0.010334782  0.010181512  0.009289513  0.009026016  0.008980555 
#>          V26          V33          V34          V32          V21          V53 
#>  0.008599714  0.008593567  0.008586941  0.008574617  0.008548730  0.007982834 
#>          V58          V43          V28           V6           V8          V15 
#>  0.007965752  0.007700416  0.007689714  0.007580211  0.006822525  0.006723015 
#>          V14          V55          V30          V24          V42          V41 
#>  0.006712915  0.006676450  0.006274541  0.005675864  0.005526319  0.004649519 
#>          V19          V22          V59           V1          V60          V23 
#>  0.004622634  0.004212527  0.004066682  0.003779922  0.003749225  0.003208661 
#>          V44          V54          V25          V56          V38           V2 
#>  0.003038296  0.002896309  0.002771885  0.002631987  0.001750938 -0.001733732 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
