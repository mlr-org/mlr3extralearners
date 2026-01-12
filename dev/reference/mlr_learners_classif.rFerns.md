# Random Ferns Classification Learner

Ensemble machine learning algorithm based on Random Ferns, which are a
simplified, faster alternative to Random Forests. Calls
[`rFerns::rFerns()`](https://rdrr.io/pkg/rFerns/man/rFerns.html) from
[rFerns](https://CRAN.R-project.org/package=rFerns).

## Initial parameter values

- `importance`:

  - Actual default: `FALSE`

  - Initial value: `"simple"`

  - Reason for change: The default value of `FALSE` will resolve to
    "none", which turns importance calculation off. To enable importance
    calculation by default, `importance` is set to `"simple"`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.rFerns")

## Meta Information

- Task type: “classif”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [rFerns](https://CRAN.R-project.org/package=rFerns)

## Parameters

|                |         |         |             |                       |
|----------------|---------|---------|-------------|-----------------------|
| Id             | Type    | Default | Levels      | Range                 |
| consistentSeed | untyped | NULL    |             | \-                    |
| depth          | integer | 5       |             | \\\[1, 16\]\\         |
| ferns          | integer | 1000    |             | \\(-\infty, \infty)\\ |
| importance     | untyped | FALSE   |             | \-                    |
| saveForest     | logical | TRUE    | TRUE, FALSE | \-                    |
| threads        | integer | 0       |             | \\(-\infty, \infty)\\ |

## References

Kursa MB (2014). “rFerns: An Implementation of the Random Ferns Method
for General-Purpose Machine Learning.” *Journal of Statistical
Software*, **61**(10), 1–13. <https://www.jstatsoft.org/v61/i10/>.

Ozuysal, Mustafa, Calonder, Michael, Lepetit, Vincent, Fua, Pascal
(2010). “Fast Keypoint Recognition Using Random Ferns.” *IEEE
Transactions on Pattern Analysis and Machine Intelligence*, **32**(3),
448-461.
[doi:10.1109/TPAMI.2009.23](https://doi.org/10.1109/TPAMI.2009.23) .

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRferns`

## Methods

### Public methods

- [`LearnerClassifRferns$new()`](#method-LearnerClassifRferns-new)

- [`LearnerClassifRferns$importance()`](#method-LearnerClassifRferns-importance)

- [`LearnerClassifRferns$oob_error()`](#method-LearnerClassifRferns-oob_error)

- [`LearnerClassifRferns$clone()`](#method-LearnerClassifRferns-clone)

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

    LearnerClassifRferns$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot `importance`.

#### Usage

    LearnerClassifRferns$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB error is extracted from the model slot `oobErr`.

#### Usage

    LearnerClassifRferns$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifRferns$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.rFerns")
print(learner)
#> 
#> ── <LearnerClassifRferns> (classif.rFerns): Random Ferns Classifier ────────────
#> • Model: -
#> • Parameters: importance=simple
#> • Packages: mlr3, mlr3extralearners, and rFerns
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, multiclass, oob_error, and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#>  Forest of 1000 ferns of a depth 5.
#> 
#>  OOB error 16.55%; OOB confusion matrix:
#>          True
#> Predicted  M  R
#>         M 64 17
#>         R  6 52
print(learner$importance())
#>           V11           V12           V10           V13           V20 
#>  1.340097e-01  1.216886e-01  7.363268e-02  7.318481e-02  6.799043e-02 
#>           V48            V9           V21           V46           V45 
#>  6.639899e-02  6.429419e-02  6.400602e-02  6.171550e-02  5.937667e-02 
#>           V49           V36           V47           V35            V4 
#>  5.753718e-02  5.467503e-02  5.461520e-02  4.894496e-02  4.859453e-02 
#>            V5           V22           V51           V37            V8 
#>  4.545191e-02  4.287347e-02  4.112436e-02  3.897235e-02  3.816498e-02 
#>           V27           V18           V44           V23           V16 
#>  3.638607e-02  3.617523e-02  3.369360e-02  3.248658e-02  2.976452e-02 
#>           V24           V19           V29           V14           V33 
#>  2.967997e-02  2.879176e-02  2.866908e-02  2.819107e-02  2.754445e-02 
#>           V26           V34           V43            V7           V31 
#>  2.740465e-02  2.692681e-02  2.596846e-02  2.383417e-02  2.230970e-02 
#>           V17            V6           V52           V28           V42 
#>  2.212703e-02  2.099412e-02  2.006373e-02  1.883244e-02  1.793682e-02 
#>            V2            V3           V50           V30           V53 
#>  1.789386e-02  1.753157e-02  1.718507e-02  1.699561e-02  1.442052e-02 
#>           V15           V25           V55           V59            V1 
#>  1.386791e-02  1.278143e-02  1.128493e-02  1.111352e-02  9.952218e-03 
#>           V39           V32           V58           V56           V38 
#>  8.711734e-03  6.530381e-03  6.136375e-03  5.450289e-03  4.063598e-03 
#>           V41           V54           V60           V40           V57 
#>  4.024418e-03  3.099639e-03  2.951535e-03  4.176138e-05 -5.447230e-03 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
