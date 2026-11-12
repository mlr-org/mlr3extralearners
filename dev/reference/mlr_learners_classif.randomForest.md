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
5–32. ISSN 1573-0565.
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

- [`LearnerClassifRandomForest$new()`](#method-LearnerClassifRandomForest-initialize)

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

### `LearnerClassifRandomForest$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifRandomForest$new()

------------------------------------------------------------------------

### `LearnerClassifRandomForest$importance()`

The importance scores are extracted from the slot `importance`.
Parameter 'importance' must be set to either `"accuracy"` or `"gini"`.

#### Usage

    LearnerClassifRandomForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifRandomForest$oob_error()`

OOB errors are extracted from the model slot `err.rate`.

#### Usage

    LearnerClassifRandomForest$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### `LearnerClassifRandomForest$clone()`

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
#>         OOB estimate of  error rate: 20.14%
#> Confusion matrix:
#>    M  R class.error
#> M 62 10   0.1388889
#> R 18 49   0.2686567
print(learner$importance())
#>           V12           V11           V49            V9           V10 
#>  1.742990e-02  1.645482e-02  1.340418e-02  1.338414e-02  1.164210e-02 
#>           V47           V48           V46           V45           V36 
#>  1.159513e-02  1.030936e-02  9.729162e-03  9.284331e-03  6.901929e-03 
#>           V52            V4           V37           V21           V16 
#>  6.405730e-03  5.399893e-03  5.343274e-03  5.198310e-03  4.771513e-03 
#>           V17           V59           V20           V28           V13 
#>  4.514922e-03  4.295992e-03  4.136511e-03  3.869920e-03  3.291051e-03 
#>           V27           V39           V43            V8           V22 
#>  3.237160e-03  3.043297e-03  2.968352e-03  2.898248e-03  2.546522e-03 
#>           V15            V5            V6            V1           V23 
#>  2.430281e-03  2.313206e-03  2.233462e-03  2.226950e-03  2.135292e-03 
#>           V58           V30           V18           V44           V34 
#>  2.106136e-03  2.003453e-03  1.873156e-03  1.793988e-03  1.746260e-03 
#>           V19           V42           V35           V40           V29 
#>  1.655569e-03  1.550292e-03  1.503013e-03  1.401509e-03  1.399135e-03 
#>           V55           V26           V32            V3           V53 
#>  1.223416e-03  1.186983e-03  1.141185e-03  1.133311e-03  1.073138e-03 
#>           V25           V56           V51           V38           V54 
#>  1.071000e-03  9.268149e-04  8.683435e-04  7.646769e-04  7.536330e-04 
#>           V31           V24           V14            V2           V33 
#>  6.981276e-04  6.733770e-04  6.392942e-04  3.682518e-04  1.576985e-04 
#>           V41            V7           V50           V57           V60 
#>  5.297308e-05 -3.725811e-05 -1.077790e-04 -1.124051e-03 -1.272738e-03 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1304348 
```
