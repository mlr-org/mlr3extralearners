# Survival Conditional Inference Tree Learner

Survival Partition Tree where a significance test is used to determine
the univariate splits. Calls
[`partykit::ctree()`](https://rdrr.io/pkg/partykit/man/ctree.html) from
[partykit](https://CRAN.R-project.org/package=partykit).

## Prediction types

This learner returns two prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using the
    internal
    [`partykit::predict.party()`](https://rdrr.io/pkg/partykit/man/party-predict.html)
    function.

2.  `crank`: the expected mortality using
    [`mlr3proba::surv_return()`](https://mlr3proba.mlr-org.com/reference/surv_return.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.ctree")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [partykit](https://CRAN.R-project.org/package=partykit),
  [coin](https://CRAN.R-project.org/package=coin),
  [sandwich](https://CRAN.R-project.org/package=sandwich)

## Parameters

|                 |           |            |                                                   |                       |
|-----------------|-----------|------------|---------------------------------------------------|-----------------------|
| Id              | Type      | Default    | Levels                                            | Range                 |
| teststat        | character | quadratic  | quadratic, maximum                                | \-                    |
| splitstat       | character | quadratic  | quadratic, maximum                                | \-                    |
| splittest       | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| testtype        | character | Bonferroni | Bonferroni, MonteCarlo, Univariate, Teststatistic | \-                    |
| nmax            | untyped   | \-         |                                                   | \-                    |
| alpha           | numeric   | 0.05       |                                                   | \\\[0, 1\]\\          |
| mincriterion    | numeric   | 0.95       |                                                   | \\\[0, 1\]\\          |
| logmincriterion | numeric   | \-         |                                                   | \\(-\infty, \infty)\\ |
| minsplit        | integer   | 20         |                                                   | \\\[1, \infty)\\      |
| minbucket       | integer   | 7          |                                                   | \\\[1, \infty)\\      |
| minprob         | numeric   | 0.01       |                                                   | \\\[0, \infty)\\      |
| stump           | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| lookahead       | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| MIA             | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| nresample       | integer   | 9999       |                                                   | \\\[1, \infty)\\      |
| tol             | numeric   | \-         |                                                   | \\\[0, \infty)\\      |
| maxsurrogate    | integer   | 0          |                                                   | \\\[0, \infty)\\      |
| numsurrogate    | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| mtry            | integer   | Inf        |                                                   | \\\[0, \infty)\\      |
| maxdepth        | integer   | Inf        |                                                   | \\\[0, \infty)\\      |
| maxvar          | integer   | \-         |                                                   | \\\[1, \infty)\\      |
| multiway        | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| splittry        | integer   | 2          |                                                   | \\\[0, \infty)\\      |
| intersplit      | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| majority        | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| caseweights     | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| applyfun        | untyped   | \-         |                                                   | \-                    |
| cores           | integer   | NULL       |                                                   | \\(-\infty, \infty)\\ |
| saveinfo        | logical   | TRUE       | TRUE, FALSE                                       | \-                    |
| update          | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| splitflavour    | character | ctree      | ctree, exhaustive                                 | \-                    |
| cluster         | untyped   | \-         |                                                   | \-                    |
| scores          | untyped   | \-         |                                                   | \-                    |
| doFit           | logical   | TRUE       | TRUE, FALSE                                       | \-                    |
| maxpts          | integer   | 25000      |                                                   | \\(-\infty, \infty)\\ |
| abseps          | numeric   | 0.001      |                                                   | \\\[0, \infty)\\      |
| releps          | numeric   | 0          |                                                   | \\\[0, \infty)\\      |

## References

Hothorn T, Zeileis A (2015). “partykit: A Modular Toolkit for Recursive
Partytioning in R.” *Journal of Machine Learning Research*, **16**(118),
3905-3909.
[http://jmlr.org/papers/v16/hothorn15a.html](http://jmlr.org/papers/v16/hothorn15a.md).

Hothorn T, Hornik K, Zeileis A (2006). “Unbiased Recursive Partitioning:
A Conditional Inference Framework.” *Journal of Computational and
Graphical Statistics*, **15**(3), 651–674.
[doi:10.1198/106186006x133933](https://doi.org/10.1198/106186006x133933)
, <https://doi.org/10.1198/106186006x133933>.

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

adibender

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCTree`

## Methods

### Public methods

- [`LearnerSurvCTree$new()`](#method-LearnerSurvCTree-new)

- [`LearnerSurvCTree$clone()`](#method-LearnerSurvCTree-clone)

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

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCTree$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvCTree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.ctree")
print(learner)
#> 
#> ── <LearnerSurvCTree> (surv.ctree): Conditional Inference Tree ─────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3proba, mlr3extralearners, partykit, coin, and sandwich
#> • Predict Types: [crank] and distr
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Model formula:
#> Surv(time, status, type = "right") ~ age + los + revasc + revascdays + 
#>     stchange + sysbp
#> 
#> Fitted party:
#> [1] root
#> |   [2] age <= 71
#> |   |   [3] revascdays <= 171
#> |   |   |   [4] revasc <= 0
#> |   |   |   |   [5] los <= 1: 1.000 (n = 15)
#> |   |   |   |   [6] los > 1
#> |   |   |   |   |   [7] age <= 64: 45.000 (n = 42)
#> |   |   |   |   |   [8] age > 64: 19.000 (n = 23)
#> |   |   |   [9] revasc > 0: Inf (n = 233)
#> |   |   [10] revascdays > 171
#> |   |   |   [11] revascdays <= 179: Inf (n = 7)
#> |   |   |   [12] revascdays > 179: Inf (n = 74)
#> |   [13] age > 71
#> |   |   [14] revascdays <= 168
#> |   |   |   [15] revasc <= 0
#> |   |   |   |   [16] stchange <= 0: 85.000 (n = 37)
#> |   |   |   |   [17] stchange > 0: 8.000 (n = 72)
#> |   |   |   [18] revasc > 0: Inf (n = 109)
#> |   |   [19] revascdays > 168: Inf (n = 58)
#> 
#> Number of inner nodes:     9
#> Number of terminal nodes: 10


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>    0.788504 
```
