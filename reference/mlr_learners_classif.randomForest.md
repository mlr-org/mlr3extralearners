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
#>         OOB estimate of  error rate: 23.74%
#> Confusion matrix:
#>    M  R class.error
#> M 62 11   0.1506849
#> R 22 44   0.3333333
print(learner$importance())
#>           V11           V10            V9           V12           V45 
#>  2.714041e-02  1.789222e-02  1.655098e-02  1.465728e-02  1.113218e-02 
#>            V4           V48           V49           V36           V23 
#>  8.264376e-03  8.075377e-03  7.949388e-03  6.425339e-03  5.811201e-03 
#>           V37           V13           V21           V47            V5 
#>  5.775094e-03  5.296473e-03  5.064846e-03  4.949056e-03  4.558594e-03 
#>           V28           V46            V8           V44           V17 
#>  4.422826e-03  4.200097e-03  4.155302e-03  4.137747e-03  3.886355e-03 
#>            V1            V6           V59           V43           V20 
#>  3.640248e-03  3.188487e-03  3.172542e-03  3.155719e-03  2.952173e-03 
#>           V51           V42           V15           V27           V34 
#>  2.927500e-03  2.593565e-03  2.261090e-03  2.122227e-03  2.118000e-03 
#>           V25           V33           V32           V16           V19 
#>  2.090759e-03  2.030660e-03  1.943615e-03  1.934996e-03  1.898623e-03 
#>           V18           V22            V2           V50           V52 
#>  1.781431e-03  1.659087e-03  1.568003e-03  1.469157e-03  1.424759e-03 
#>           V31           V30           V26           V14            V3 
#>  1.378189e-03  1.346387e-03  1.300852e-03  1.234245e-03  1.199866e-03 
#>           V41           V55           V38           V54            V7 
#>  1.182436e-03  1.046261e-03  9.466201e-04  7.881772e-04  5.061304e-04 
#>           V60           V40           V35           V58           V39 
#>  4.172158e-04  3.939936e-04  3.699370e-04  1.122935e-04 -5.366228e-06 
#>           V29           V24           V56           V57           V53 
#> -7.295028e-05 -1.098584e-04 -2.238116e-04 -3.525674e-04 -9.191491e-04 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
