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
#>         M 60 14
#>         R 17 48
print(learner$importance())
#>          V11           V9          V12          V10          V49          V48 
#>  0.099197707  0.091967073  0.089613811  0.079221166  0.078597753  0.073647569 
#>          V46          V45          V47          V43          V44          V36 
#>  0.055917424  0.053802766  0.051365652  0.051296933  0.046968652  0.046934787 
#>          V20          V22          V21          V37           V4          V58 
#>  0.044245764  0.042504162  0.038913281  0.037183550  0.036544099  0.036232520 
#>           V2          V13          V23           V1           V8          V31 
#>  0.035840439  0.030815868  0.029944987  0.029722785  0.028983365  0.028374159 
#>           V5           V3          V42          V18          V50          V19 
#>  0.026226365  0.025518348  0.024768699  0.024754173  0.024693474  0.024333626 
#>          V51          V35          V16          V39          V28          V59 
#>  0.022539588  0.022388347  0.021905260  0.021628416  0.021186128  0.020918229 
#>          V52          V27          V32          V30          V14          V26 
#>  0.020886856  0.020451203  0.019671600  0.018009517  0.016754730  0.016726776 
#>           V6          V24          V38          V33          V56          V34 
#>  0.015895481  0.015640322  0.014330846  0.013153972  0.013061161  0.011370348 
#>          V17          V60          V29           V7          V41          V53 
#>  0.010158514  0.010079468  0.009798767  0.009006792  0.008842394  0.006147385 
#>          V40          V25          V15          V54          V57          V55 
#>  0.004947673  0.004626367  0.004195088  0.003755767  0.001022492 -0.001605249 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
