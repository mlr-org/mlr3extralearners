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
#>           V12           V11           V48           V52           V47 
#>  1.723580e-02  1.162091e-02  1.114815e-02  1.059618e-02  9.908197e-03 
#>            V9            V2           V36           V10           V45 
#>  6.646841e-03  6.613529e-03  6.603312e-03  6.572562e-03  5.807579e-03 
#>           V13           V46            V4           V20           V28 
#>  5.764985e-03  5.601521e-03  5.195147e-03  4.307784e-03  4.067775e-03 
#>           V23           V37           V50           V51           V57 
#>  2.885183e-03  2.466999e-03  2.455610e-03  2.452096e-03  2.385271e-03 
#>           V44           V35           V17           V14            V1 
#>  2.357396e-03  2.309667e-03  2.147240e-03  1.975749e-03  1.928663e-03 
#>           V19           V55           V34           V53           V27 
#>  1.912631e-03  1.908621e-03  1.835641e-03  1.787607e-03  1.724860e-03 
#>           V31           V54           V30            V3           V21 
#>  1.614827e-03  1.441897e-03  1.362561e-03  1.106332e-03  1.045226e-03 
#>           V15           V39           V42            V6           V33 
#>  1.025265e-03  9.108375e-04  8.452355e-04  7.422044e-04  6.044729e-04 
#>            V8           V22           V29           V24           V32 
#>  5.705793e-04  5.140382e-04  4.983978e-04  3.743115e-04  3.522432e-04 
#>           V60            V7           V40           V43           V41 
#>  2.790432e-04  2.480906e-04  1.851852e-04  1.165141e-04  9.930808e-05 
#>           V49           V18           V58            V5           V26 
#>  5.812901e-05  1.744431e-05 -6.572173e-06 -5.755793e-05 -8.053221e-05 
#>           V16           V38           V25           V59           V56 
#> -1.551693e-04 -3.597538e-04 -4.434246e-04 -4.639846e-04 -1.705471e-03 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        1     R        R 0.4176905 0.5823095
#>        2     R        R 0.4591667 0.5408333
#>        3     R        M 0.5091190 0.4908810
#>      ---   ---      ---       ---       ---
#>      205     M        M 0.6909206 0.3090794
#>      206     M        M 0.6118571 0.3881429
#>      208     M        M 0.5725794 0.4274206

# Score the predictions
pred$score()
#> classif.ce 
#>  0.2318841 
```
