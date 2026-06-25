# BlockForest Classification Learner

Random forests for blocks of clinical and omics covariate data. Calls
[`blockForest::blockfor()`](https://bips-hb.github.io/blockForest/reference/blockfor.html)
from package
[blockForest](https://CRAN.R-project.org/package=blockForest).

In this learner, only the trained forest object (`$forest`) is retained.
The optimized block-specific tuning parameters (`paramvalues`) and the
biased OOB error estimate (`biased_oob_error_donotuse`) are discarded,
as they are either not needed for downstream use or not reliable for
performance estimation.

## Initial parameter values

- `num.threads` is initialized to 1 to avoid conflicts with
  parallelization via
  [future](https://CRAN.R-project.org/package=future).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.blockforest")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [blockForest](https://CRAN.R-project.org/package=blockForest)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| blocks | untyped | \- |  | \- |
| block.method | character | BlockForest | BlockForest, RandomBlock, BlockVarSel, VarProb, SplitWeights | \- |
| num.trees | integer | 2000 |  | \\\[1, \infty)\\ |
| mtry | untyped | NULL |  | \- |
| nsets | integer | 300 |  | \\\[1, \infty)\\ |
| num.trees.pre | integer | 1500 |  | \\\[1, \infty)\\ |
| splitrule | character | extratrees | extratrees, gini | \- |
| always.select.block | integer | 0 |  | \\\[0, 1\]\\ |
| importance | character | \- | none, impurity, impurity_corrected, permutation | \- |
| num.threads | integer | \- |  | \\\[1, \infty)\\ |
| seed | integer | NULL |  | \\(-\infty, \infty)\\ |
| verbose | logical | TRUE | TRUE, FALSE | \- |

## References

Hornung, R., Wright, N. M (2019). “Block Forests: Random forests for
blocks of clinical and omics covariate data.” *BMC Bioinformatics*,
**20**(1), 1–17.
[doi:10.1186/s12859-019-2942-y](https://doi.org/10.1186/s12859-019-2942-y)
, <https://doi.org/10.1186/s12859-019-2942-y>.

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifBlockForest`

## Methods

### Public methods

- [`LearnerClassifBlockForest$new()`](#method-LearnerClassifBlockForest-initialize)

- [`LearnerClassifBlockForest$importance()`](#method-LearnerClassifBlockForest-importance)

- [`LearnerClassifBlockForest$clone()`](#method-LearnerClassifBlockForest-clone)

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

### `LearnerClassifBlockForest$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifBlockForest$new()

------------------------------------------------------------------------

### `LearnerClassifBlockForest$importance()`

The importance scores are extracted from the model slot
`variable.importance`.

#### Usage

    LearnerClassifBlockForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifBlockForest$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifBlockForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# check task's features
task$feature_names
#>  [1] "V1"  "V10" "V11" "V12" "V13" "V14" "V15" "V16" "V17" "V18" "V19" "V2" 
#> [13] "V20" "V21" "V22" "V23" "V24" "V25" "V26" "V27" "V28" "V29" "V3"  "V30"
#> [25] "V31" "V32" "V33" "V34" "V35" "V36" "V37" "V38" "V39" "V4"  "V40" "V41"
#> [37] "V42" "V43" "V44" "V45" "V46" "V47" "V48" "V49" "V5"  "V50" "V51" "V52"
#> [49] "V53" "V54" "V55" "V56" "V57" "V58" "V59" "V6"  "V60" "V7"  "V8"  "V9" 

# partition features to 2 blocks
blocks = list(bl1 = 1:42, bl2 = 43:60)

# define learner
learner = lrn("classif.blockforest", blocks = blocks,
              importance = "permutation", nsets = 10, predict_type = "prob",
              num.trees = 50, num.trees.pre = 10, splitrule = "gini")

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# feature importance
learner$importance()
#>            V9           V12           V36           V11            V4 
#>  0.0174094623  0.0164372408  0.0118442168  0.0107042960  0.0095023200 
#>           V51           V10           V48            V1           V49 
#>  0.0092290519  0.0092238150  0.0085576093  0.0072975423  0.0072282375 
#>           V35           V13           V43           V50           V23 
#>  0.0054292904  0.0053565251  0.0052918274  0.0050202796  0.0044673084 
#>           V29           V55           V46           V30           V52 
#>  0.0042501797  0.0037878143  0.0037659002  0.0033687337  0.0033360941 
#>           V37            V6           V40           V15            V7 
#>  0.0033134351  0.0028474513  0.0026010101  0.0025042983  0.0024138744 
#>           V22           V54            V5           V58           V31 
#>  0.0022792928  0.0022657684  0.0021936156  0.0021923096  0.0020505323 
#>           V44           V56           V18           V27           V59 
#>  0.0019861202  0.0018814584  0.0018491871  0.0018459403  0.0016321063 
#>           V47           V24           V21           V41           V42 
#>  0.0014793799  0.0014792699  0.0014589595  0.0014334900  0.0014161575 
#>            V2           V60           V14           V39           V17 
#>  0.0013932324  0.0010614574  0.0010015914  0.0009724685  0.0008057536 
#>           V25           V57           V20           V53           V45 
#>  0.0007701635  0.0007518056  0.0005620076  0.0004660488  0.0004494765 
#>           V16           V28           V19           V34            V3 
#>  0.0003942827  0.0002609115  0.0001456401  0.0001318517 -0.0001119477 
#>           V38           V26           V32            V8           V33 
#> -0.0004300516 -0.0005951591 -0.0008034997 -0.0009492419 -0.0034272240 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        2     R        M 0.5606190 0.4393810
#>        6     R        R 0.4288571 0.5711429
#>        7     R        M 0.5203889 0.4796111
#>      ---   ---      ---       ---       ---
#>      199     M        M 0.8760000 0.1240000
#>      203     M        M 0.8060873 0.1939127
#>      208     M        M 0.5881270 0.4118730

# Score the predictions
pred$score()
#> classif.ce 
#>  0.2318841 
```
