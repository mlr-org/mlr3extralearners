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
#>  OOB error 22.30%; OOB confusion matrix:
#>          True
#> Predicted  M  R
#>         M 57 17
#>         R 14 51
print(learner$importance())
#>         V11         V12         V49         V48         V10         V21 
#> 0.097747534 0.091984974 0.087757544 0.077657249 0.075445478 0.071541759 
#>          V9         V51         V47         V20         V52         V43 
#> 0.069762720 0.067862321 0.062553473 0.055234832 0.053130555 0.047548553 
#>         V36         V46          V2         V44          V1         V28 
#> 0.045429862 0.043493236 0.043262307 0.040226350 0.039478116 0.037934223 
#>          V4         V45         V15         V31         V22         V35 
#> 0.037441178 0.037125884 0.036560689 0.035563039 0.034170480 0.033661103 
#>         V25         V19         V13         V26         V37         V23 
#> 0.031363911 0.030889855 0.029164103 0.029157422 0.029139042 0.027315268 
#>         V59         V30         V32         V29         V16         V58 
#> 0.026935121 0.026391299 0.026348996 0.025881754 0.024804590 0.023916744 
#>          V5         V14         V53         V42         V17         V34 
#> 0.022130710 0.021690693 0.019925364 0.019427673 0.019188984 0.017899549 
#>         V50         V24         V56          V8          V3         V41 
#> 0.017513470 0.016782120 0.016580398 0.015864337 0.015840070 0.015717835 
#>          V6         V18         V27         V39         V57         V33 
#> 0.015548434 0.014883994 0.013461171 0.013316481 0.011952582 0.011116608 
#>         V60         V38          V7         V54         V55         V40 
#> 0.009950590 0.007362352 0.006151900 0.002143575 0.002043178 0.001840291 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
