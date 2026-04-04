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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

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
#>         OOB estimate of  error rate: 15.83%
#> Confusion matrix:
#>    M  R class.error
#> M 62  9   0.1267606
#> R 13 55   0.1911765
print(learner$importance())
#>           V11           V12           V10            V9           V49 
#>  0.0236801481  0.0229046502  0.0186681316  0.0176101316  0.0122271252 
#>           V52           V37           V46           V36            V4 
#>  0.0101976979  0.0077421217  0.0076902141  0.0074889329  0.0069057967 
#>           V47           V45           V13           V48           V51 
#>  0.0066604474  0.0064295214  0.0058982044  0.0056527315  0.0044192298 
#>           V43           V27           V28            V8           V35 
#>  0.0037563940  0.0034802712  0.0031521438  0.0031376103  0.0030811842 
#>            V5           V44           V55           V15           V26 
#>  0.0029270172  0.0028120227  0.0027098021  0.0026367170  0.0024183832 
#>           V18            V1           V14           V17           V40 
#>  0.0023707225  0.0021863183  0.0021770112  0.0020964079  0.0019108303 
#>           V20           V21            V6           V42           V22 
#>  0.0018419834  0.0017924336  0.0016688225  0.0016156883  0.0015322091 
#>           V16           V30           V31           V54           V50 
#>  0.0014587792  0.0014427312  0.0012871191  0.0009763706  0.0008741057 
#>           V19           V53           V24           V39           V25 
#>  0.0008121293  0.0007698499  0.0007537034  0.0007310988  0.0007000047 
#>           V57           V23           V59           V38           V60 
#>  0.0006976532  0.0006653810  0.0006337021  0.0006252303  0.0005868461 
#>           V32           V34           V33            V7            V2 
#>  0.0005815997  0.0005743143  0.0004830612  0.0004138623  0.0002960294 
#>           V29           V41            V3           V58           V56 
#>  0.0002111416  0.0001752740 -0.0001822343 -0.0002340926 -0.0004384921 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
