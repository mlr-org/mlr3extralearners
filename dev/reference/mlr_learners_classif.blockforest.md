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
. <https://doi.org/10.1186/s12859-019-2942-y>.

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
#>           V12            V9           V13           V48           V59 
#>  2.167305e-02  1.014797e-02  9.954182e-03  7.371187e-03  7.285146e-03 
#>           V10           V23           V36           V11            V5 
#>  6.804346e-03  6.086176e-03  5.335585e-03  5.045567e-03  4.973844e-03 
#>           V49           V33           V31           V37           V45 
#>  4.919542e-03  4.740128e-03  4.551407e-03  4.263530e-03  4.148756e-03 
#>           V51            V4           V47           V20           V27 
#>  3.812488e-03  3.808230e-03  3.732442e-03  2.946046e-03  2.664820e-03 
#>            V7           V34           V30           V19           V29 
#>  2.536412e-03  2.498820e-03  2.284324e-03  2.107872e-03  2.064121e-03 
#>           V24           V39           V54            V8           V50 
#>  1.872502e-03  1.840847e-03  1.808597e-03  1.795687e-03  1.628497e-03 
#>           V46           V38           V53           V26           V28 
#>  1.585596e-03  1.507567e-03  1.506359e-03  1.458333e-03  1.341049e-03 
#>           V16           V55            V6           V35           V25 
#>  1.324152e-03  1.317136e-03  1.288794e-03  1.172686e-03  1.157374e-03 
#>           V44           V52           V21           V18           V57 
#>  1.058781e-03  1.027834e-03  9.926274e-04  8.609703e-04  8.008285e-04 
#>           V15           V17            V3           V43           V40 
#>  4.793963e-04  4.739950e-04  3.532507e-04  3.348375e-04  3.013727e-04 
#>           V14           V22           V41           V56            V2 
#>  2.328995e-04  1.731345e-04  2.657048e-05 -1.693857e-04 -2.796375e-04 
#>           V32           V60            V1           V42           V58 
#> -5.913056e-04 -9.381741e-04 -9.817052e-04 -1.065064e-03 -3.682614e-03 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        1     R        R 0.4875556 0.5124444
#>        5     R        M 0.5650238 0.4349762
#>       15     R        M 0.5103968 0.4896032
#>      ---   ---      ---       ---       ---
#>      205     M        M 0.5795397 0.4204603
#>      206     M        M 0.6620000 0.3380000
#>      207     M        M 0.6988571 0.3011429

# Score the predictions
pred$score()
#> classif.ce 
#>  0.2028986 
```
