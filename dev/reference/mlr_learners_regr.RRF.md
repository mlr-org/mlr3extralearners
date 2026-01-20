# Regression Regularized Random Forest Learner

Regularized random forest for regression. Calls
[`RRF::RRF()`](https://rdrr.io/pkg/RRF/man/RRF.html) from
[RRF](https://CRAN.R-project.org/package=RRF).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.RRF")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [RRF](https://CRAN.R-project.org/package=RRF)

## Parameters

|             |         |         |             |                       |
|-------------|---------|---------|-------------|-----------------------|
| Id          | Type    | Default | Levels      | Range                 |
| ntree       | integer | 500     |             | \\\[1, \infty)\\      |
| mtry        | integer | \-      |             | \\\[1, \infty)\\      |
| nodesize    | integer | \-      |             | \\\[1, \infty)\\      |
| replace     | logical | TRUE    | TRUE, FALSE | \-                    |
| flagReg     | integer | 1       |             | \\\[0, \infty)\\      |
| coefReg     | numeric | 0.8     |             | \\(-\infty, \infty)\\ |
| feaIni      | untyped | \-      |             | \-                    |
| corr.bias   | logical | FALSE   | TRUE, FALSE | \-                    |
| maxnodes    | integer | \-      |             | \\\[1, \infty)\\      |
| importance  | logical | FALSE   | TRUE, FALSE | \-                    |
| localImp    | logical | FALSE   | TRUE, FALSE | \-                    |
| nPerm       | integer | 1       |             | \\\[1, \infty)\\      |
| proximity   | logical | FALSE   | TRUE, FALSE | \-                    |
| oob.prox    | logical | FALSE   | TRUE, FALSE | \-                    |
| do.trace    | logical | FALSE   | TRUE, FALSE | \-                    |
| keep.inbag  | logical | FALSE   | TRUE, FALSE | \-                    |
| keep.forest | logical | TRUE    | TRUE, FALSE | \-                    |
| strata      | untyped | \-      |             | \-                    |
| sampsize    | untyped | \-      |             | \-                    |
| predict.all | logical | FALSE   | TRUE, FALSE | \-                    |
| nodes       | logical | FALSE   | TRUE, FALSE | \-                    |

## References

Deng, Houtao, Runger, George (2012). “Feature selection via regularized
trees.” In *2012 International Joint Conference on Neural Networks
(IJCNN)*, 1–8. IEEE.
[doi:10.1109/IJCNN.2012.6252640](https://doi.org/10.1109/IJCNN.2012.6252640)
.

Deng, Houtao, Runger, George (2013). “Gene selection with guided
regularized random forest.” *Pattern Recognition*, **46**(12),
3483–3489.
[doi:10.1016/j.patcog.2013.05.021](https://doi.org/10.1016/j.patcog.2013.05.021)
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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrRRF`

## Methods

### Public methods

- [`LearnerRegrRRF$new()`](#method-LearnerRegrRRF-new)

- [`LearnerRegrRRF$importance()`](#method-LearnerRegrRRF-importance)

- [`LearnerRegrRRF$oob_error()`](#method-LearnerRegrRRF-oob_error)

- [`LearnerRegrRRF$clone()`](#method-LearnerRegrRRF-clone)

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

    LearnerRegrRRF$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the slot `importance`.

#### Usage

    LearnerRegrRRF$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `oob_error()`

OOB errors are extracted from the model slot `mse`.

#### Usage

    LearnerRegrRRF$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrRRF$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.RRF")
print(learner)
#> 
#> ── <LearnerRegrRRF> (regr.RRF): Regularized Random Forest ──────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and RRF
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: importance and oob_error
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#>  RRF(formula = task$formula(), data = task$data()) 
#>                Type of random forest: regression
#>                      Number of trees: 500
#> No. of variables tried at each split: 3
#> 
#>           Mean of squared residuals: 8.397392
#>                     % Var explained: 71.08
print(learner$importance())
#>       disp         wt         hp        cyl       drat       carb       qsec 
#> 128.705870 122.663956 106.397911  82.780181  32.386772  22.357881  16.722934 
#>       gear         vs         am 
#>  12.376346  12.120249   9.445009 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 5.144546 
```
