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

|                     |           |             |                                                              |                       |
|---------------------|-----------|-------------|--------------------------------------------------------------|-----------------------|
| Id                  | Type      | Default     | Levels                                                       | Range                 |
| blocks              | untyped   | \-          |                                                              | \-                    |
| block.method        | character | BlockForest | BlockForest, RandomBlock, BlockVarSel, VarProb, SplitWeights | \-                    |
| num.trees           | integer   | 2000        |                                                              | \\\[1, \infty)\\      |
| mtry                | untyped   | NULL        |                                                              | \-                    |
| nsets               | integer   | 300         |                                                              | \\\[1, \infty)\\      |
| num.trees.pre       | integer   | 1500        |                                                              | \\\[1, \infty)\\      |
| splitrule           | character | extratrees  | extratrees, gini                                             | \-                    |
| always.select.block | integer   | 0           |                                                              | \\\[0, 1\]\\          |
| importance          | character | \-          | none, impurity, impurity_corrected, permutation              | \-                    |
| num.threads         | integer   | \-          |                                                              | \\\[1, \infty)\\      |
| seed                | integer   | NULL        |                                                              | \\(-\infty, \infty)\\ |
| verbose             | logical   | TRUE        | TRUE, FALSE                                                  | \-                    |

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
#>           V11           V12           V48            V9           V45 
#>  2.497309e-02  2.013613e-02  1.524494e-02  1.492450e-02  1.298735e-02 
#>           V49           V27           V10           V28           V20 
#>  9.841747e-03  9.519082e-03  8.634747e-03  7.862153e-03  6.980810e-03 
#>            V4           V36           V44           V47            V5 
#>  5.000582e-03  4.886950e-03  4.874886e-03  4.295315e-03  3.707697e-03 
#>           V51           V14            V1           V16           V37 
#>  3.648392e-03  3.531896e-03  3.406090e-03  3.174794e-03  3.055436e-03 
#>           V17           V57           V50           V46           V31 
#>  2.910812e-03  2.755931e-03  2.490050e-03  2.467654e-03  2.312021e-03 
#>           V35           V15           V23           V18            V8 
#>  2.288141e-03  2.238466e-03  2.141381e-03  1.920038e-03  1.823730e-03 
#>           V43           V19           V38           V60            V3 
#>  1.792389e-03  1.725331e-03  1.632219e-03  1.384392e-03  1.174497e-03 
#>           V21           V52           V25           V41           V58 
#>  1.146504e-03  1.144548e-03  8.575786e-04  8.485733e-04  7.468082e-04 
#>           V34           V24           V40            V7           V56 
#>  7.434729e-04  7.388462e-04  5.132828e-04  4.015458e-04  3.728602e-04 
#>           V22           V13           V39           V29           V42 
#>  2.457043e-04  2.279988e-04  7.624273e-05  0.000000e+00 -5.626979e-05 
#>           V54           V32           V53           V33           V55 
#> -2.105121e-04 -2.288889e-04 -3.261932e-04 -3.661763e-04 -4.507703e-04 
#>           V26            V2           V30           V59            V6 
#> -4.726261e-04 -9.799908e-04 -1.308163e-03 -1.478365e-03 -3.024109e-03 
# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        4     R        R 0.4456905 0.5543095
#>        6     R        R 0.4380000 0.5620000
#>        8     R        M 0.6917778 0.3082222
#>      ---   ---      ---       ---       ---
#>      200     M        M 0.7397222 0.2602778
#>      205     M        M 0.6436667 0.3563333
#>      206     M        M 0.7914762 0.2085238
# Score the predictions
pred$score()
#> classif.ce 
#>  0.2463768 
```
