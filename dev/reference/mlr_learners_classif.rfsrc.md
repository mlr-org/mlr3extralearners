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

|                |           |         |                                          |                    |
|----------------|-----------|---------|------------------------------------------|--------------------|
| Id             | Type      | Default | Levels                                   | Range              |
| ntree          | integer   | 500     |                                          | \\\[1, \infty)\\   |
| mtry           | integer   | \-      |                                          | \\\[1, \infty)\\   |
| mtry.ratio     | numeric   | \-      |                                          | \\\[0, 1\]\\       |
| nodesize       | integer   | 15      |                                          | \\\[1, \infty)\\   |
| nodedepth      | integer   | \-      |                                          | \\\[1, \infty)\\   |
| splitrule      | character | gini    | gini, auc, entropy                       | \-                 |
| nsplit         | integer   | 10      |                                          | \\\[0, \infty)\\   |
| importance     | character | FALSE   | FALSE, TRUE, none, permute, random, anti | \-                 |
| block.size     | integer   | 10      |                                          | \\\[1, \infty)\\   |
| bootstrap      | character | by.root | by.root, by.node, none, by.user          | \-                 |
| samptype       | character | swor    | swor, swr                                | \-                 |
| samp           | untyped   | \-      |                                          | \-                 |
| membership     | logical   | FALSE   | TRUE, FALSE                              | \-                 |
| sampsize       | untyped   | \-      |                                          | \-                 |
| sampsize.ratio | numeric   | \-      |                                          | \\\[0, 1\]\\       |
| na.action      | character | na.omit | na.omit, na.impute                       | \-                 |
| nimpute        | integer   | 1       |                                          | \\\[1, \infty)\\   |
| proximity      | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| distance       | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| forest.wt      | character | FALSE   | FALSE, TRUE, inbag, oob, all             | \-                 |
| xvar.wt        | untyped   | \-      |                                          | \-                 |
| split.wt       | untyped   | \-      |                                          | \-                 |
| forest         | logical   | TRUE    | TRUE, FALSE                              | \-                 |
| var.used       | character | FALSE   | FALSE, all.trees                         | \-                 |
| split.depth    | character | FALSE   | FALSE, all.trees, by.tree                | \-                 |
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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRandomForestSRC`

## Methods

### Public methods

- [`LearnerClassifRandomForestSRC$new()`](#method-LearnerClassifRandomForestSRC-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifRandomForestSRC$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot `importance`,
returned for 'all'.

#### Usage

    LearnerClassifRandomForestSRC$importance()

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

    LearnerClassifRandomForestSRC$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB error extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifRandomForestSRC$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")
# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#>                          Sample size: 139
#>            Frequency of class labels: M=74, R=65
#>                      Number of trees: 500
#>            Forest terminal node size: 1
#>        Average no. of terminal nodes: 16.76
#> No. of variables tried at each split: 8
#>               Total no. of variables: 60
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 88
#>                             Analysis: RF-C
#>                               Family: class
#>                       Splitting rule: gini *random*
#>        Number of random split points: 10
#>                     Imbalanced ratio: 1.1385
#>                    (OOB) Brier score: 0.13530542
#>         (OOB) Normalized Brier score: 0.54122166
#>                            (OOB) AUC: 0.92203742
#>                       (OOB) Log-loss: 0.42863062
#>                         (OOB) PR-AUC: 0.91057121
#>                         (OOB) G-mean: 0.75914384
#>    (OOB) Requested performance error: 0.22302158, 0.10810811, 0.35384615
#> 
#> Confusion matrix:
#> 
#>           predicted
#>   observed  M  R class.error
#>          M 66  8      0.1081
#>          R 23 42      0.3538
#> 
#>       (OOB) Misclassification rate: 0.2230216
#> 
#> Random-classifier baselines (uniform):
#>    Brier: 0.25   Normalized Brier: 1   Log-loss: 0.69314718
print(learner$importance())
#>         V12          V9         V11         V49         V51         V13 
#> 0.071833852 0.052899417 0.047501976 0.037598449 0.029269886 0.026203333 
#>         V28         V36         V37         V10         V17         V20 
#> 0.026039729 0.024569252 0.024237725 0.023739692 0.021291620 0.019870927 
#>         V39         V18         V23         V54         V31         V16 
#> 0.016787380 0.015326293 0.015282417 0.014684223 0.014043591 0.013865242 
#>         V21         V27         V45         V58         V48         V47 
#> 0.013701674 0.013243339 0.013102355 0.012960243 0.012255560 0.011796703 
#>         V52         V35          V5         V15         V40         V30 
#> 0.011365235 0.011263236 0.011065502 0.010918712 0.010793221 0.010638373 
#>         V41         V46          V4         V32         V14         V44 
#> 0.010056546 0.009167380 0.008762686 0.008742014 0.008622306 0.008464881 
#>         V43          V6         V22         V55          V2         V38 
#> 0.007570786 0.007558383 0.007436421 0.006866346 0.006834896 0.006710522 
#>         V19         V24         V57         V29         V33          V3 
#> 0.006121041 0.006104206 0.005684330 0.005514957 0.005396455 0.005394318 
#>         V42         V50          V1          V7         V25         V26 
#> 0.005248144 0.005112559 0.004817827 0.004537415 0.003498528 0.003482740 
#>         V60         V56         V59          V8         V34         V53 
#> 0.003064993 0.002910060 0.002051547 0.001329179 0.001045278 0.000566920 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
