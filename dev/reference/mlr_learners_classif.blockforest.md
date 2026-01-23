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
#>           V11           V12           V10           V13           V28 
#>  3.224705e-02  2.310894e-02  1.365063e-02  1.262996e-02  1.250045e-02 
#>           V47           V43           V46           V27           V37 
#>  1.052732e-02  7.699655e-03  7.256844e-03  6.219059e-03  4.276756e-03 
#>           V15           V52           V59           V20            V6 
#>  4.256949e-03  3.899175e-03  3.787215e-03  3.779195e-03  3.767462e-03 
#>           V58           V36           V24            V8           V44 
#>  3.737882e-03  3.696775e-03  3.354065e-03  3.329135e-03  3.011202e-03 
#>            V1           V22           V16           V21            V9 
#>  2.943659e-03  2.851956e-03  2.808189e-03  2.806517e-03  2.800189e-03 
#>           V19           V45           V55           V29           V60 
#>  2.759013e-03  2.465123e-03  2.360553e-03  2.178815e-03  2.015886e-03 
#>           V38           V18            V3           V42           V23 
#>  1.870915e-03  1.720434e-03  1.617345e-03  1.520622e-03  1.430093e-03 
#>           V25           V49           V57            V4           V32 
#>  1.417410e-03  1.415895e-03  1.238490e-03  1.016764e-03  7.995089e-04 
#>           V33            V2           V53           V39           V26 
#>  7.524967e-04  7.383262e-04  6.651628e-04  5.856918e-04  4.389680e-04 
#>           V30           V51           V31           V54           V41 
#>  2.532009e-04  1.486059e-04  1.347045e-04  7.652360e-05  6.424849e-05 
#>            V5           V34           V17           V14           V48 
#>  3.585372e-05  3.397950e-05 -1.298705e-04 -1.964637e-04 -2.756192e-04 
#>           V50            V7           V40           V56           V35 
#> -2.946358e-04 -6.948188e-04 -7.510104e-04 -1.650401e-03 -1.968193e-03 
# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        4     R        R 0.2467778 0.7532222
#>        6     R        R 0.4867460 0.5132540
#>       10     R        R 0.2080000 0.7920000
#>      ---   ---      ---       ---       ---
#>      203     M        M 0.8710000 0.1290000
#>      207     M        M 0.6471429 0.3528571
#>      208     M        M 0.5660000 0.4340000
# Score the predictions
pred$score()
#> classif.ce 
#>   0.173913 
```
