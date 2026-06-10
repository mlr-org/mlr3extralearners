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

- [`LearnerClassifBlockForest$new()`](#method-LearnerClassifBlockForest-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifBlockForest$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot
`variable.importance`.

#### Usage

    LearnerClassifBlockForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

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
#>            V9           V52           V11           V49           V45 
#>  1.504971e-02  1.141597e-02  1.034671e-02  1.013254e-02  8.324989e-03 
#>           V12           V36           V48           V46           V59 
#>  6.305913e-03  6.275966e-03  6.271275e-03  4.374764e-03  4.367932e-03 
#>            V5           V33           V10           V47           V28 
#>  4.044939e-03  3.289845e-03  3.008766e-03  2.951231e-03  2.364315e-03 
#>           V54           V31           V37           V50           V60 
#>  1.993189e-03  1.733754e-03  1.708764e-03  1.561162e-03  1.433336e-03 
#>           V16           V27           V14           V19           V55 
#>  1.429911e-03  1.419141e-03  1.386435e-03  1.137227e-03  1.051739e-03 
#>           V21           V39           V20            V4            V8 
#>  9.576992e-04  7.039188e-04  5.768300e-04  4.537911e-04  4.186033e-04 
#>           V35           V24           V38           V29           V57 
#>  3.846154e-04  3.773585e-04  3.302983e-04  2.267170e-04  1.831310e-04 
#>           V44           V25           V23           V17           V15 
#>  1.821807e-04  7.103430e-05  3.205128e-05  2.333333e-05  1.558926e-05 
#>           V32           V22           V30           V26           V40 
#>  1.318643e-05  0.000000e+00  0.000000e+00 -2.220446e-18 -3.324954e-05 
#>           V42           V51           V18           V34           V56 
#> -1.814059e-04 -2.557374e-04 -3.044872e-04 -4.419697e-04 -6.088486e-04 
#>           V41            V2            V1           V58           V53 
#> -7.805703e-04 -9.304197e-04 -1.471792e-03 -1.564561e-03 -2.184537e-03 
#>            V3           V13            V7           V43            V6 
#> -2.265317e-03 -2.997020e-03 -3.045175e-03 -3.449011e-03 -5.022730e-03 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        1     R        M 0.7531746 0.2468254
#>        4     R        M 0.6046111 0.3953889
#>        5     R        R 0.2945397 0.7054603
#>      ---   ---      ---       ---       ---
#>      197     M        M 0.8514524 0.1485476
#>      203     M        M 0.6932222 0.3067778
#>      206     M        M 0.7014444 0.2985556

# Score the predictions
pred$score()
#> classif.ce 
#>  0.2173913 
```
