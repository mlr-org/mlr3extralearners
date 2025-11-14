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
#>         OOB estimate of  error rate: 18.71%
#> Confusion matrix:
#>    M  R class.error
#> M 56 13   0.1884058
#> R 13 57   0.1857143
print(learner$importance())
#>           V11           V12           V10            V9           V49 
#>  2.559094e-02  2.131107e-02  1.606560e-02  1.440383e-02  1.212882e-02 
#>           V13           V48           V52           V51           V45 
#>  8.655057e-03  8.594503e-03  8.407855e-03  7.527816e-03  6.547448e-03 
#>           V36           V20           V46           V21           V37 
#>  5.508584e-03  5.502481e-03  5.157540e-03  4.490383e-03  4.133542e-03 
#>           V47           V22            V6            V4           V23 
#>  3.716640e-03  3.456317e-03  3.203685e-03  2.992848e-03  2.794890e-03 
#>           V28           V27           V43           V18           V15 
#>  2.791465e-03  2.576229e-03  2.540254e-03  2.362809e-03  2.308253e-03 
#>           V16           V17           V19           V35           V26 
#>  2.297891e-03  1.989970e-03  1.938577e-03  1.829462e-03  1.827633e-03 
#>            V1            V3           V38           V31           V44 
#>  1.764609e-03  1.696081e-03  1.571542e-03  1.562891e-03  1.528490e-03 
#>           V34            V8           V54           V30            V2 
#>  1.436465e-03  1.399400e-03  1.398761e-03  1.363518e-03  1.312111e-03 
#>           V32           V29           V14            V5           V24 
#>  1.311949e-03  1.291702e-03  1.289361e-03  1.186339e-03  1.139316e-03 
#>           V25           V50            V7           V55           V59 
#>  1.130667e-03  9.852040e-04  8.657495e-04  7.864187e-04  6.333703e-04 
#>           V39           V42           V53           V41           V58 
#>  6.162422e-04  5.178006e-04  4.764501e-04  3.929366e-04  2.318095e-04 
#>           V56           V57           V33           V60           V40 
#>  6.427741e-05 -3.398071e-04 -3.995102e-04 -9.207035e-04 -9.385282e-04 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
