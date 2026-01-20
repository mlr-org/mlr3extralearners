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
#>           V11            V9           V12           V45           V10 
#>  2.462381e-02  1.623111e-02  1.509385e-02  1.487744e-02  1.456400e-02 
#>           V36           V15           V49           V48           V47 
#>  1.124360e-02  9.409217e-03  8.883432e-03  8.258299e-03  6.959633e-03 
#>           V46            V7           V28           V31           V27 
#>  6.941511e-03  6.570437e-03  6.347298e-03  6.092263e-03  5.974808e-03 
#>           V51           V20           V52           V59           V16 
#>  5.662082e-03  5.469401e-03  4.409310e-03  4.299674e-03  4.167816e-03 
#>           V19            V1            V2            V3           V35 
#>  3.907847e-03  3.530809e-03  3.401319e-03  3.254555e-03  3.138580e-03 
#>           V33           V58           V13           V23           V44 
#>  3.070725e-03  3.035721e-03  2.676346e-03  2.641999e-03  2.595838e-03 
#>           V55           V43           V17           V14           V24 
#>  2.295423e-03  2.089428e-03  2.077910e-03  1.960624e-03  1.873045e-03 
#>           V21           V42            V5           V32            V6 
#>  1.711376e-03  1.614584e-03  1.514718e-03  1.140216e-03  1.066449e-03 
#>           V37           V57           V40           V41            V4 
#>  7.703999e-04  7.441266e-04  6.672986e-04  6.068587e-04  4.341868e-04 
#>           V54           V29           V50           V56           V22 
#>  4.204946e-04  3.225466e-04  1.835935e-04  3.868994e-05 -4.003627e-05 
#>           V30           V26           V38           V39           V18 
#> -1.111111e-04 -2.567659e-04 -3.571429e-04 -3.646206e-04 -5.318915e-04 
#>           V53            V8           V34           V60           V25 
#> -5.401491e-04 -6.010829e-04 -7.764877e-04 -1.026382e-03 -2.831539e-03 
# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M     prob.R
#>        1     R        M 0.5498333 0.45016667
#>        4     R        M 0.5556508 0.44434921
#>        5     R        R 0.4931508 0.50684921
#>      ---   ---      ---       ---        ---
#>      201     M        M 0.9091667 0.09083333
#>      207     M        M 0.7471270 0.25287302
#>      208     M        M 0.6791667 0.32083333
# Score the predictions
pred$score()
#> classif.ce 
#>  0.2463768 
```
