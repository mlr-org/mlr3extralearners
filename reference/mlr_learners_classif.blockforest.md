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
#>            V9           V11           V12           V36           V10 
#>  0.0183985721  0.0180897851  0.0167401243  0.0160636231  0.0126089389 
#>           V45           V48           V21           V35           V37 
#>  0.0122524814  0.0108705630  0.0104789954  0.0076617859  0.0075129173 
#>            V5           V34           V49            V2           V27 
#>  0.0062457278  0.0060553740  0.0052956374  0.0046710091  0.0046146463 
#>           V46           V47           V29           V23           V50 
#>  0.0045673676  0.0044694015  0.0040019624  0.0036408010  0.0033490904 
#>           V17           V22            V3           V16           V19 
#>  0.0032016655  0.0027670797  0.0024830566  0.0022913000  0.0020581595 
#>           V60           V18           V51           V39           V44 
#>  0.0018777672  0.0017365397  0.0015634312  0.0015627806  0.0011992003 
#>           V28            V4           V26           V13            V1 
#>  0.0010437230  0.0010157906  0.0009841900  0.0009248614  0.0003908897 
#>           V40           V54           V43            V7           V32 
#>  0.0003049862  0.0002773999  0.0002560822  0.0002094316  0.0001960845 
#>           V14           V57           V15           V31           V56 
#>  0.0001917714  0.0001756185  0.0001207269  0.0000183641 -0.0003685068 
#>           V52           V25           V33           V30            V6 
#> -0.0006289919 -0.0007287297 -0.0007835017 -0.0008865930 -0.0009321901 
#>           V58           V42           V55            V8           V38 
#> -0.0011799979 -0.0012243493 -0.0013143291 -0.0013258968 -0.0013838338 
#>           V41           V59           V24           V53           V20 
#> -0.0015468910 -0.0016700155 -0.0017521869 -0.0027809423 -0.0034053073 

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionClassif> for 69 observations: ────────────────────────────────────
#>  row_ids truth response    prob.M     prob.R
#>        3     R        M 0.5188571 0.48114286
#>        4     R        R 0.4044524 0.59554762
#>        7     R        M 0.7519762 0.24802381
#>      ---   ---      ---       ---        ---
#>      202     M        M 0.9133333 0.08666667
#>      203     M        M 0.8340000 0.16600000
#>      205     M        M 0.7588571 0.24114286

# Score the predictions
pred$score()
#> classif.ce 
#>  0.1884058 
```
