# Classification Random Forest Learner

Random forest for classification. Calls
[`randomForest::randomForest()`](https://rdrr.io/pkg/randomForest/man/randomForest.html)
from [randomForest](https://CRAN.R-project.org/package=randomForest).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.randomForest")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [randomForest](https://CRAN.R-project.org/package=randomForest)

## Parameters

|             |           |         |                      |                  |
|-------------|-----------|---------|----------------------|------------------|
| Id          | Type      | Default | Levels               | Range            |
| ntree       | integer   | 500     |                      | \\\[1, \infty)\\ |
| mtry        | integer   | \-      |                      | \\\[1, \infty)\\ |
| replace     | logical   | TRUE    | TRUE, FALSE          | \-               |
| classwt     | untyped   | NULL    |                      | \-               |
| cutoff      | untyped   | \-      |                      | \-               |
| strata      | untyped   | \-      |                      | \-               |
| sampsize    | untyped   | \-      |                      | \-               |
| nodesize    | integer   | 1       |                      | \\\[1, \infty)\\ |
| maxnodes    | integer   | \-      |                      | \\\[1, \infty)\\ |
| importance  | character | FALSE   | accuracy, gini, none | \-               |
| localImp    | logical   | FALSE   | TRUE, FALSE          | \-               |
| proximity   | logical   | FALSE   | TRUE, FALSE          | \-               |
| oob.prox    | logical   | \-      | TRUE, FALSE          | \-               |
| norm.votes  | logical   | TRUE    | TRUE, FALSE          | \-               |
| do.trace    | logical   | FALSE   | TRUE, FALSE          | \-               |
| keep.forest | logical   | TRUE    | TRUE, FALSE          | \-               |
| keep.inbag  | logical   | FALSE   | TRUE, FALSE          | \-               |
| predict.all | logical   | FALSE   | TRUE, FALSE          | \-               |
| nodes       | logical   | FALSE   | TRUE, FALSE          | \-               |

## References

Breiman, Leo (2001). “Random Forests.” *Machine Learning*, **45**(1),
5–32. ISSN 1573-0565,
[doi:10.1023/A:1010933404324](https://doi.org/10.1023/A%3A1010933404324)
.

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

pat-s

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRandomForest`

## Methods

### Public methods

- [`LearnerClassifRandomForest$new()`](#method-LearnerClassifRandomForest-new)

- [`LearnerClassifRandomForest$importance()`](#method-LearnerClassifRandomForest-importance)

- [`LearnerClassifRandomForest$oob_error()`](#method-LearnerClassifRandomForest-oob_error)

- [`LearnerClassifRandomForest$clone()`](#method-LearnerClassifRandomForest-clone)

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

    LearnerClassifRandomForest$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the slot `importance`.
Parameter 'importance' must be set to either `"accuracy"` or `"gini"`.

#### Usage

    LearnerClassifRandomForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB errors are extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifRandomForest$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifRandomForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.randomForest", importance = "accuracy")
print(learner)
#> 
#> ── <LearnerClassifRandomForest> (classif.randomForest): Random Forest ──────────
#> • Model: -
#> • Parameters: importance=accuracy
#> • Packages: mlr3, mlr3extralearners, and randomForest
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, multiclass, oob_error, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")
# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#>  randomForest(formula = formula, data = data, classwt = classwt,      cutoff = cutoff, importance = TRUE) 
#>                Type of random forest: classification
#>                      Number of trees: 500
#> No. of variables tried at each split: 7
#> 
#>         OOB estimate of  error rate: 20.86%
#> Confusion matrix:
#>    M  R class.error
#> M 64  9   0.1232877
#> R 20 46   0.3030303
print(learner$importance())
#>           V12           V11           V48           V49           V10 
#>  2.034246e-02  1.961325e-02  1.616356e-02  1.406815e-02  1.281359e-02 
#>            V9           V36           V37           V45           V21 
#>  1.162087e-02  7.789898e-03  6.977609e-03  6.252046e-03  5.530348e-03 
#>           V22           V23           V47           V28           V20 
#>  4.151764e-03  4.151631e-03  3.558400e-03  3.423907e-03  3.352390e-03 
#>           V15           V46            V8           V52           V51 
#>  3.131000e-03  3.109176e-03  3.014981e-03  2.752358e-03  2.670429e-03 
#>            V6           V35           V43           V26           V44 
#>  2.609744e-03  2.457892e-03  2.419620e-03  2.404493e-03  2.394730e-03 
#>            V3            V5           V27           V18           V32 
#>  2.385364e-03  2.336946e-03  1.992082e-03  1.943410e-03  1.882815e-03 
#>            V1           V17           V55           V34           V25 
#>  1.750153e-03  1.609584e-03  1.607048e-03  1.574334e-03  1.481653e-03 
#>           V16           V29           V14            V4           V30 
#>  1.328197e-03  1.277242e-03  1.268434e-03  1.239871e-03  1.184361e-03 
#>           V19           V31           V50            V7           V54 
#>  1.181100e-03  1.116789e-03  1.048026e-03  1.042940e-03  9.324004e-04 
#>           V53            V2           V58           V42           V39 
#>  8.613609e-04  8.529714e-04  7.638315e-04  7.610153e-04  7.453636e-04 
#>           V24           V13           V60           V41           V59 
#>  6.678830e-04  6.467354e-04  2.775009e-04  2.382102e-04  2.368970e-04 
#>           V56           V40           V38           V33           V57 
#> -8.962482e-05 -1.222210e-04 -1.876751e-04 -2.507183e-04 -3.461446e-04 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1304348 
```
