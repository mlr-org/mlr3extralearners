# Survival Priority Lasso Learner

Patient outcome prediction based on multi-omics data taking
practitioners’ preferences into account. Calls
[`prioritylasso::prioritylasso()`](https://rdrr.io/pkg/prioritylasso/man/prioritylasso.html)
from [prioritylasso](https://CRAN.R-project.org/package=prioritylasso).

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`prioritylasso::predict.prioritylasso()`](https://rdrr.io/pkg/prioritylasso/man/predict.prioritylasso.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`mlr3proba::breslow()`](https://mlr3proba.mlr-org.com/reference/breslow.html)
    where the Breslow estimator is used for computing the baseline
    hazard.

## Initial parameter values

- `family` is set to `"cox"` for the Cox survival objective and cannot
  be changed

- `type.measure` is set to `"deviance"` (cross-validation measure) and
  cannot be changed

- `cox.ties` is initialized to `"breslow"` to keep the tie-handling
  behavior of earlier glmnet versions, and to silence the glmnet v5.0
  warning about the upcoming default change to `"efron"`

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.priority_lasso")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [prioritylasso](https://CRAN.R-project.org/package=prioritylasso)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| blocks | untyped | \- |  | \- |
| max.coef | untyped | NULL |  | \- |
| block1.penalization | logical | TRUE | TRUE, FALSE | \- |
| lambda.type | character | lambda.min | lambda.min, lambda.1se | \- |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| cvoffset | logical | FALSE | TRUE, FALSE | \- |
| cvoffsetnfolds | integer | 10 |  | \\\[1, \infty)\\ |
| return.x | logical | TRUE | TRUE, FALSE | \- |
| lambda | untyped | NULL |  | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| cox.ties | character | breslow | breslow, efron | \- |
| include.allintercepts | logical | FALSE | TRUE, FALSE | \- |
| use.blocks | untyped | "all" |  | \- |

## Scope and supported arguments

This learner intentionally exposes a focused subset of training and
prediction arguments. It is designed to work well out of the box,
without requiring extensive parameter tuning. Some arguments from
`cv.glmnet()`, `glmnet()`, and `predict.prioritylasso()` are not
included, because they are not consistently supported or forwarded
through the full train/predict path (e.g. handling missing test data, or
performing relaxed lasso fits).

Please open an issue if there is a need for supporting more learner
parameters.

## References

Simon K, Vindi J, Roman H, Tobias H, Anne-Laure B (2018).
“Priority-Lasso: a simple hierarchical approach to the prediction of
clinical outcome using multi-omics data.” *BMC Bioinformatics*, **19**.
[doi:10.1186/s12859-018-2344-6](https://doi.org/10.1186/s12859-018-2344-6)
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

HarutyunyanLiana

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvPriorityLasso`

## Methods

### Public methods

- [`LearnerSurvPriorityLasso$new()`](#method-LearnerSurvPriorityLasso-initialize)

- [`LearnerSurvPriorityLasso$selected_features()`](#method-LearnerSurvPriorityLasso-selected_features)

- [`LearnerSurvPriorityLasso$clone()`](#method-LearnerSurvPriorityLasso-clone)

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

------------------------------------------------------------------------

### `LearnerSurvPriorityLasso$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvPriorityLasso$new()

------------------------------------------------------------------------

### `LearnerSurvPriorityLasso$selected_features()`

Selected features, i.e. those where the coefficient is non-zero.

#### Usage

    LearnerSurvPriorityLasso$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### `LearnerSurvPriorityLasso$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvPriorityLasso$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Check task's features
task$feature_names
#> [1] "age"        "los"        "revasc"     "revascdays" "stchange"  
#> [6] "sysbp"     

# Partition features to 2 blocks
blocks = list(bl1 = 1:3, bl2 = 4:6)

# Define learner
learner = lrn("surv.priority_lasso", blocks = blocks, block1.penalization = FALSE,
              lambda.type = "lambda.1se", standardize = TRUE, nfolds = 5)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# Selected features
learner$selected_features()
#> [1] "age"        "los"        "revasc"     "revascdays"

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
predictions
#> 
#> ── <PredictionSurv> for 330 observations: ──────────────────────────────────────
#>  row_ids  time status     crank        lp     distr
#>        1 180.0  FALSE 0.4873027 0.4873027 <list[1]>
#>        6   5.0  FALSE 1.4541773 1.4541773 <list[1]>
#>        8   2.0  FALSE 1.1603463 1.1603463 <list[1]>
#>      ---   ---    ---       ---       ---       ---
#>      995   0.5   TRUE 3.9088136 3.9088136 <list[1]>
#>      996  69.0   TRUE 3.9357878 3.9357878 <list[1]>
#>     1000  15.0  FALSE 3.7133697 3.7133697 <list[1]>

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.7351317 
```
