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
#>  OOB error 17.99%; OOB confusion matrix:
#>          True
#> Predicted  M  R
#>         M 62 14
#>         R 11 52
print(learner$importance())
#>         V11         V48         V10         V12          V9         V49 
#> 0.098880289 0.083161529 0.079946956 0.077799471 0.076220662 0.075526487 
#>         V47         V45         V51         V13         V36         V37 
#> 0.059295924 0.050465585 0.048448598 0.044673624 0.044544213 0.044179461 
#>         V27         V20         V35         V52         V21          V1 
#> 0.042693157 0.042609820 0.040326697 0.038911772 0.038664961 0.037127445 
#>         V46         V28         V43         V59          V8         V31 
#> 0.036903372 0.035758412 0.035425738 0.034595600 0.033321550 0.028469627 
#>         V44         V23         V18          V5         V30         V34 
#> 0.026384461 0.026036693 0.025556325 0.025267422 0.025086335 0.024670725 
#>         V22         V58          V2         V19         V50         V54 
#> 0.023757343 0.023527689 0.023155482 0.023061016 0.022036426 0.021200202 
#>         V29         V25          V4         V15         V14         V53 
#> 0.019562807 0.019437174 0.018857137 0.018199732 0.016984028 0.016626615 
#>          V6         V32         V16         V26          V7         V56 
#> 0.016189019 0.014886810 0.014650921 0.013873273 0.013607643 0.013143004 
#>         V17         V33         V42         V40         V24         V39 
#> 0.010861499 0.010463956 0.008970122 0.008767943 0.008510903 0.008340098 
#>          V3         V60         V55         V41         V57         V38 
#> 0.006308070 0.006209075 0.005317338 0.004002800 0.001956836 0.001781208 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
