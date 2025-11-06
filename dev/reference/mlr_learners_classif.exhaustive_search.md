# Logistic Regression with Exhaustive Search

Logistic Regression, where the features used in the model are selected
by running Exhaustive Search.

Calls
[`ExhaustiveSearch::ExhaustiveSearch()`](https://rdrr.io/pkg/ExhaustiveSearch/man/ExhaustiveSearch.html)
from
[ExhaustiveSearch](https://CRAN.R-project.org/package=ExhaustiveSearch).

## Initial parameter values

- `family`:

  - Actual default: NULL

  - Adjusted default: "binomial"

  - Reason for change: To comply with mlr3 architecture, we
    differentiate between classification and regression learners.

- `nThreads`:

  - Actual default: NULL

  - Adjusted default: 1

  - Reason for change: Suppressing the automatic internal
    parallelization if `cv.folds` \> 0.

- `quietly`:

  - Actual default: FALSE

  - Adjusted default: TRUE

  - Reason for change: Suppression of constant printing to console

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.exhaustive_search")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [ExhaustiveSearch](https://CRAN.R-project.org/package=ExhaustiveSearch)

## Parameters

|                    |           |         |                    |                  |
|--------------------|-----------|---------|--------------------|------------------|
| Id                 | Type      | Default | Levels             | Range            |
| family             | character | \-      | gaussian, binomial | \-               |
| performanceMeasure | character | \-      | MSE, AIC           | \-               |
| combsUpTo          | integer   | \-      |                    | \\\[1, \infty)\\ |
| nResults           | integer   | 5000    |                    | \\\[1, \infty)\\ |
| nThreads           | integer   | \-      |                    | \\\[1, \infty)\\ |
| testSetIDs         | integer   | \-      |                    | \\\[1, \infty)\\ |
| errorVal           | untyped   | -1L     |                    | \-               |
| quietly            | logical   | \-      | TRUE, FALSE        | \-               |
| checkLarge         | logical   | TRUE    | TRUE, FALSE        | \-               |

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

ngerman

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifExhaustiveSearch`

## Methods

### Public methods

- [`LearnerClassifExhaustiveSearch$new()`](#method-LearnerClassifExhaustiveSearch-new)

- [`LearnerClassifExhaustiveSearch$selected_features()`](#method-LearnerClassifExhaustiveSearch-selected_features)

- [`LearnerClassifExhaustiveSearch$clone()`](#method-LearnerClassifExhaustiveSearch-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifExhaustiveSearch$new()

------------------------------------------------------------------------

### Method `selected_features()`

Extracts selected features of this learner.

#### Usage

    LearnerClassifExhaustiveSearch$selected_features()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifExhaustiveSearch$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# define the learner
learner = lrn("classif.exhaustive_search", predict_type = "prob", combsUpTo = 3)

# define the task
# and subset to 3 features to speed up the example
tsk_sonar = tsk("sonar")$select(c("V1", "V2", "V3"))

# train the learner
learner$train(tsk_sonar)

# extract selected features
learner$selected_features()
#> [1] "V1"

# predict on training task
learner$predict(tsk_sonar)
#> 
#> ── <PredictionClassif> for 208 observations: ───────────────────────────────────
#>  row_ids truth response    prob.M    prob.R
#>        1     R        R 0.4753214 0.5246786
#>        2     R        M 0.6664160 0.3335840
#>        3     R        M 0.5237325 0.4762675
#>      ---   ---      ---       ---       ---
#>      206     M        M 0.7125284 0.2874716
#>      207     M        M 0.5555589 0.4444411
#>      208     M        M 0.5221729 0.4778271
```
