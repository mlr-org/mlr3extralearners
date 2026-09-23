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
#>           V12           V11            V5           V48           V13 
#>  3.069632e-02  1.904746e-02  1.632828e-02  1.309372e-02  1.137680e-02 
#>           V49           V21            V4            V9           V46 
#>  1.135259e-02  1.114073e-02  8.942677e-03  8.505602e-03  7.137794e-03 
#>           V31           V20           V44           V36           V37 
#>  6.208086e-03  5.705020e-03  5.342984e-03  4.858328e-03  4.209200e-03 
#>           V51           V27            V1           V35           V30 
#>  3.638970e-03  3.508796e-03  3.478264e-03  3.224536e-03  3.134528e-03 
#>           V38           V23           V39           V42           V26 
#>  3.019304e-03  2.959549e-03  2.553023e-03  2.493522e-03  2.390625e-03 
#>           V28           V43            V2           V54           V18 
#>  2.334694e-03  2.149635e-03  2.077088e-03  2.044040e-03  2.005793e-03 
#>           V22           V47           V53           V50           V19 
#>  1.762101e-03  1.501954e-03  1.366516e-03  1.225658e-03  1.206324e-03 
#>           V52           V10           V32           V15           V45 
#>  1.136376e-03  1.135011e-03  1.072220e-03  1.006781e-03  9.056871e-04 
#>           V17           V16            V8           V33           V56 
#>  8.939286e-04  7.866756e-04  6.665802e-04  5.727104e-04  4.876052e-04 
#>           V60           V40           V29            V6           V25 
#>  3.588066e-04  2.151714e-04  1.410474e-04  7.210329e-05 -5.575973e-04 
#>           V24           V57            V7           V14           V59 
#> -6.077873e-04 -6.537865e-04 -7.035803e-04 -8.354240e-04 -1.254624e-03 
#>           V34            V3           V41           V55           V58 
#> -1.401141e-03 -1.656236e-03 -1.697057e-03 -1.812851e-03 -2.891926e-03 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        1     R        R 0.4540238 0.5459762
#>        2     R        M 0.5462540 0.4537460
#>        9     R        R 0.4901587 0.5098413
#>      ---   ---      ---       ---       ---
#>      200     M        M 0.8150159 0.1849841
#>      203     M        M 0.8221111 0.1778889
#>      206     M        M 0.7904444 0.2095556

# Score the predictions
pred$score()
#> classif.ce 
#>  0.2028986 
```
