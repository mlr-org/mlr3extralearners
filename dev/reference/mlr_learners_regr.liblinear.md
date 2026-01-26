# L2-Regularized Support Vector Regression Learner

L2 regularized support vector regression. Calls
[`LiblineaR::LiblineaR()`](https://rdrr.io/pkg/LiblineaR/man/LiblineaR.html)
from [LiblineaR](https://CRAN.R-project.org/package=LiblineaR).

## Details

Type of SVR depends on `type` argument:

- `type = 11` - L2-regularized L2-loss support vector regression
  (primal)

- `type = 12` – L2-regularized L2-loss support vector regression (dual)

- `type = 13` – L2-regularized L1-loss support vector regression (dual)

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.liblinear")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [LiblineaR](https://CRAN.R-project.org/package=LiblineaR)

## Parameters

|          |         |         |             |                       |
|----------|---------|---------|-------------|-----------------------|
| Id       | Type    | Default | Levels      | Range                 |
| type     | integer | 11      |             | \\\[11, 13\]\\        |
| cost     | numeric | 1       |             | \\\[0, \infty)\\      |
| bias     | numeric | 1       |             | \\(-\infty, \infty)\\ |
| svr_eps  | numeric | NULL    |             | \\\[0, \infty)\\      |
| cross    | integer | 0       |             | \\\[0, \infty)\\      |
| verbose  | logical | FALSE   | TRUE, FALSE | \-                    |
| findC    | logical | FALSE   | TRUE, FALSE | \-                    |
| useInitC | logical | TRUE    | TRUE, FALSE | \-                    |

## Initial parameter values

- `svr_eps`:

  - Actual default: `NULL`

  - Initial value: 0.001

  - Reason for change: `svr_eps` is type dependent and the "type" is
    handled by the mlr3learner. The default value is set to th default
    of the respective "type".

## References

Fan, Rong-En, Chang, Kai-Wei, Hsieh, Cho-Jui, Wang, Xiang-Rui, Lin,
Chih-Jen (2008). “LIBLINEAR: A library for large linear classification.”
*the Journal of machine Learning research*, **9**, 1871–1874.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrLiblineaR`

## Methods

### Public methods

- [`LearnerRegrLiblineaR$new()`](#method-LearnerRegrLiblineaR-new)

- [`LearnerRegrLiblineaR$clone()`](#method-LearnerRegrLiblineaR-clone)

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

    LearnerRegrLiblineaR$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrLiblineaR$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.liblinear")
print(learner)
#> 
#> ── <LearnerRegrLiblineaR> (regr.liblinear): Support Vector Machine ─────────────
#> • Model: -
#> • Parameters: svr_eps=0.001
#> • Packages: mlr3, mlr3extralearners, and LiblineaR
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $TypeDetail
#> [1] "L2-regularized L2-loss support vector regression primal (L2R_L2LOSS_SVR)"
#> 
#> $Type
#> [1] 11
#> 
#> $W
#>              am         carb      cyl        disp      drat      gear
#> [1,] 0.07944933 -0.005790454 0.182632 -0.03375632 0.3093475 0.3037198
#>               hp     qsec         vs         wt       Bias
#> [1,] 0.001561037 1.360376 0.07963124 0.08140897 0.06906595
#> 
#> $Bias
#> [1] 1
#> 
#> $NbClass
#> [1] 2
#> 
#> attr(,"class")
#> [1] "LiblineaR"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 6.016412 
```
