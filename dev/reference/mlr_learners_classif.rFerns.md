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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRferns`

## Methods

### Public methods

- [`LearnerClassifRferns$new()`](#method-LearnerClassifRferns-initialize)

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

### `LearnerClassifRferns$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifRferns$new()

------------------------------------------------------------------------

### `LearnerClassifRferns$importance()`

The importance scores are extracted from the model slot `importance`.

#### Usage

    LearnerClassifRferns$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifRferns$oob_error()`

OOB error is extracted from the model slot `oobErr`.

#### Usage

    LearnerClassifRferns$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### `LearnerClassifRferns$clone()`

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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#>  OOB error 21.58%; OOB confusion matrix:
#>          True
#> Predicted  M  R
#>         M 60 20
#>         R 10 49
print(learner$importance())
#>          V12          V11          V10          V49          V13          V36 
#>  0.149099321  0.130962338  0.081368057  0.073936214  0.072342820  0.064619491 
#>          V21          V48           V9          V46          V51          V47 
#>  0.060398324  0.059640657  0.057216117  0.055179424  0.050168653  0.050110413 
#>          V20          V31           V5          V44          V35           V4 
#>  0.043895110  0.043349907  0.041894638  0.038722387  0.037664237  0.035177587 
#>          V28          V37          V19           V8          V30           V6 
#>  0.034608912  0.030019954  0.028828127  0.026812989  0.025677472  0.025595552 
#>          V45          V27          V18          V15           V1          V57 
#>  0.025272777  0.024484879  0.022953658  0.022035973  0.021372691  0.020924489 
#>          V34          V32           V3          V59          V52          V14 
#>  0.020803163  0.020461917  0.020225392  0.019535930  0.017553311  0.016978897 
#>          V58          V16          V22          V29          V43          V23 
#>  0.016451215  0.015697385  0.015528231  0.015239685  0.014636042  0.013873942 
#>           V2          V42          V54          V41          V33          V56 
#>  0.013514148  0.013243455  0.012608335  0.009725614  0.007658179  0.007060967 
#>           V7          V55          V17          V39          V50          V25 
#>  0.006951312  0.006888297  0.005565030  0.005072844  0.004646233  0.003428242 
#>          V26          V24          V60          V53          V40          V38 
#>  0.003386137  0.003100094  0.001289471 -0.001416895 -0.002818776 -0.003724897 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1449275 
```
