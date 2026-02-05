# Survival Priority Lasso Learner

Patient outcome prediction based on multi-omics data taking
practitioners’ preferences into account. Calls
[`prioritylasso::prioritylasso()`](https://rdrr.io/pkg/prioritylasso/man/prioritylasso.html)
from [prioritylasso](https://CRAN.R-project.org/package=prioritylasso).
Many parameters for this survival learner are the same as
[mlr_learners_surv.cv_glmnet](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.cv_glmnet.md)
as `prioritylasso()` calls
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
during training phase. Note that `prioritylasso()` has ways to deal with
block-wise missing data, but this feature is not supported currently.

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

- `type.measure` set to `"deviance"` (cross-validation measure)

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

|                       |           |            |                         |                       |
|-----------------------|-----------|------------|-------------------------|-----------------------|
| Id                    | Type      | Default    | Levels                  | Range                 |
| blocks                | untyped   | \-         |                         | \-                    |
| max.coef              | untyped   | NULL       |                         | \-                    |
| block1.penalization   | logical   | TRUE       | TRUE, FALSE             | \-                    |
| lambda.type           | character | lambda.min | lambda.min, lambda.1se  | \-                    |
| standardize           | logical   | TRUE       | TRUE, FALSE             | \-                    |
| nfolds                | integer   | 5          |                         | \\\[1, \infty)\\      |
| foldid                | untyped   | NULL       |                         | \-                    |
| cvoffset              | logical   | FALSE      | TRUE, FALSE             | \-                    |
| cvoffsetnfolds        | integer   | 10         |                         | \\\[1, \infty)\\      |
| return.x              | logical   | TRUE       | TRUE, FALSE             | \-                    |
| include.allintercepts | logical   | FALSE      | TRUE, FALSE             | \-                    |
| use.blocks            | untyped   | "all"      |                         | \-                    |
| alignment             | character | lambda     | lambda, fraction        | \-                    |
| alpha                 | numeric   | 1          |                         | \\\[0, 1\]\\          |
| big                   | numeric   | 9.9e+35    |                         | \\(-\infty, \infty)\\ |
| devmax                | numeric   | 0.999      |                         | \\\[0, 1\]\\          |
| dfmax                 | integer   | \-         |                         | \\\[0, \infty)\\      |
| eps                   | numeric   | 1e-06      |                         | \\\[0, 1\]\\          |
| epsnr                 | numeric   | 1e-08      |                         | \\\[0, 1\]\\          |
| exclude               | untyped   | \-         |                         | \-                    |
| exmx                  | numeric   | 250        |                         | \\(-\infty, \infty)\\ |
| fdev                  | numeric   | 1e-05      |                         | \\\[0, 1\]\\          |
| gamma                 | untyped   | \-         |                         | \-                    |
| grouped               | logical   | TRUE       | TRUE, FALSE             | \-                    |
| intercept             | logical   | TRUE       | TRUE, FALSE             | \-                    |
| keep                  | logical   | FALSE      | TRUE, FALSE             | \-                    |
| lambda                | untyped   | \-         |                         | \-                    |
| lambda.min.ratio      | numeric   | \-         |                         | \\\[0, 1\]\\          |
| lower.limits          | untyped   | -Inf       |                         | \-                    |
| maxit                 | integer   | 100000     |                         | \\\[1, \infty)\\      |
| mnlam                 | integer   | 5          |                         | \\\[1, \infty)\\      |
| mxit                  | integer   | 100        |                         | \\\[1, \infty)\\      |
| mxitnr                | integer   | 25         |                         | \\\[1, \infty)\\      |
| nlambda               | integer   | 100        |                         | \\\[1, \infty)\\      |
| offset                | untyped   | NULL       |                         | \-                    |
| parallel              | logical   | FALSE      | TRUE, FALSE             | \-                    |
| penalty.factor        | untyped   | \-         |                         | \-                    |
| pmax                  | integer   | \-         |                         | \\\[0, \infty)\\      |
| pmin                  | numeric   | 1e-09      |                         | \\\[0, 1\]\\          |
| prec                  | numeric   | 1e-10      |                         | \\(-\infty, \infty)\\ |
| standardize.response  | logical   | FALSE      | TRUE, FALSE             | \-                    |
| thresh                | numeric   | 1e-07      |                         | \\\[0, \infty)\\      |
| trace.it              | integer   | 0          |                         | \\\[0, 1\]\\          |
| type.gaussian         | character | \-         | covariance, naive       | \-                    |
| type.logistic         | character | Newton     | Newton, modified.Newton | \-                    |
| type.multinomial      | character | ungrouped  | ungrouped, grouped      | \-                    |
| upper.limits          | untyped   | Inf        |                         | \-                    |
| relax                 | logical   | FALSE      | TRUE, FALSE             | \-                    |

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

HarutyunyanLiana

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvPriorityLasso`

## Methods

### Public methods

- [`LearnerSurvPriorityLasso$new()`](#method-LearnerSurvPriorityLasso-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvPriorityLasso$new()

------------------------------------------------------------------------

### Method `selected_features()`

Selected features, i.e. those where the coefficient is non-zero.

#### Usage

    LearnerSurvPriorityLasso$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `clone()`

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

# check task's features
task$feature_names
#> [1] "age"        "los"        "revasc"     "revascdays" "stchange"  
#> [6] "sysbp"     

# partition features to 2 blocks
blocks = list(bl1 = 1:3, bl2 = 4:6)

# define learner
learner = lrn("surv.priority_lasso", blocks = blocks, block1.penalization = FALSE,
              lambda.type = "lambda.1se", standardize = TRUE, nfolds = 5)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# selected features
learner$selected_features()
#> [1] "age"        "los"        "revasc"     "revascdays"

# Make predictions for the test observations
pred = learner$predict(task, row_ids = ids$test)
pred
#> 
#> ── <PredictionSurv> for 330 observations: ──────────────────────────────────────
#>  row_ids time status     crank        lp     distr
#>        1  180  FALSE 0.6958959 0.6958959 <list[1]>
#>        4    5  FALSE 1.1111496 1.1111496 <list[1]>
#>        6    5  FALSE 1.4526302 1.4526302 <list[1]>
#>      ---  ---    ---       ---       ---       ---
#>      990   12   TRUE 4.3805176 4.3805176 <list[1]>
#>      992   26   TRUE 4.2569360 4.2569360 <list[1]>
#>      997    2   TRUE 4.2401111 4.2401111 <list[1]>

# Score the predictions
pred$score()
#> surv.cindex 
#>   0.7224306 
```
