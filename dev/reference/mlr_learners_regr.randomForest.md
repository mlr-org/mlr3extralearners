# Regression Random Forest Learner

Random forest for regression. Calls
[`randomForest::randomForest()`](https://rdrr.io/pkg/randomForest/man/randomForest.html)
from [randomForest](https://CRAN.R-project.org/package=randomForest).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.randomForest")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [randomForest](https://CRAN.R-project.org/package=randomForest)

## Parameters

|             |           |         |                       |                  |
|-------------|-----------|---------|-----------------------|------------------|
| Id          | Type      | Default | Levels                | Range            |
| ntree       | integer   | 500     |                       | \\\[1, \infty)\\ |
| mtry        | integer   | \-      |                       | \\\[1, \infty)\\ |
| replace     | logical   | TRUE    | TRUE, FALSE           | \-               |
| strata      | untyped   | \-      |                       | \-               |
| sampsize    | untyped   | \-      |                       | \-               |
| nodesize    | integer   | 5       |                       | \\\[1, \infty)\\ |
| maxnodes    | integer   | \-      |                       | \\\[1, \infty)\\ |
| importance  | character | FALSE   | mse, nudepurity, none | \-               |
| localImp    | logical   | FALSE   | TRUE, FALSE           | \-               |
| proximity   | logical   | FALSE   | TRUE, FALSE           | \-               |
| oob.prox    | logical   | \-      | TRUE, FALSE           | \-               |
| norm.votes  | logical   | TRUE    | TRUE, FALSE           | \-               |
| do.trace    | logical   | FALSE   | TRUE, FALSE           | \-               |
| keep.forest | logical   | TRUE    | TRUE, FALSE           | \-               |
| keep.inbag  | logical   | FALSE   | TRUE, FALSE           | \-               |
| predict.all | logical   | FALSE   | TRUE, FALSE           | \-               |
| nodes       | logical   | FALSE   | TRUE, FALSE           | \-               |

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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrRandomForest`

## Methods

### Public methods

- [`LearnerRegrRandomForest$new()`](#method-LearnerRegrRandomForest-new)

- [`LearnerRegrRandomForest$importance()`](#method-LearnerRegrRandomForest-importance)

- [`LearnerRegrRandomForest$oob_error()`](#method-LearnerRegrRandomForest-oob_error)

- [`LearnerRegrRandomForest$clone()`](#method-LearnerRegrRandomForest-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrRandomForest$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the slot `importance`.
Parameter 'importance' must be set to either `"mse"` or `"nodepurity"`.

#### Usage

    LearnerRegrRandomForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB errors are extracted from the model slot `mse`.

#### Usage

    LearnerRegrRandomForest$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrRandomForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.randomForest", importance = "mse")
print(learner)
#> 
#> ── <LearnerRegrRandomForest> (regr.randomForest): Random Forest ────────────────
#> • Model: -
#> • Parameters: importance=mse
#> • Packages: mlr3, mlr3extralearners, and randomForest
#> • Predict Types: [response]
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, oob_error, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")
# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#>  randomForest(formula = formula, data = data, importance = TRUE) 
#>                Type of random forest: regression
#>                      Number of trees: 500
#> No. of variables tried at each split: 3
#> 
#>           Mean of squared residuals: 5.473645
#>                     % Var explained: 85.94
print(learner$importance())
#>         hp       disp         wt        cyl       carb       drat         vs 
#> 10.9136075 10.6582783  8.3475744  7.1947689  2.7578902  1.5195518  0.9136400 
#>       gear         am       qsec 
#>  0.3404328  0.2606282  0.1064981 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>   6.2239 
```
