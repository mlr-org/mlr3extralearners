# Survival Conditional Random Forest Learner

A random forest based on conditional inference trees
([`partykit::ctree()`](https://rdrr.io/pkg/partykit/man/ctree.html)).
Calls
[`partykit::cforest()`](https://rdrr.io/pkg/partykit/man/cforest.html)
from [partykit](https://CRAN.R-project.org/package=partykit).

## Prediction types

This learner returns two prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using the
    internal
    [`partykit::predict.cforest()`](https://rdrr.io/pkg/partykit/man/cforest.html)
    function.

2.  `crank`: the expected mortality using
    [`mlr3proba::surv_return()`](https://mlr3proba.mlr-org.com/reference/surv_return.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.cforest")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [partykit](https://CRAN.R-project.org/package=partykit),
  [sandwich](https://CRAN.R-project.org/package=sandwich),
  [coin](https://CRAN.R-project.org/package=coin),
  [survdistr](https://CRAN.R-project.org/package=survdistr)

## Parameters

|                 |           |                  |                                                   |                       |
|-----------------|-----------|------------------|---------------------------------------------------|-----------------------|
| Id              | Type      | Default          | Levels                                            | Range                 |
| ntree           | integer   | 500              |                                                   | \\\[1, \infty)\\      |
| replace         | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| fraction        | numeric   | 0.632            |                                                   | \\\[0, 1\]\\          |
| mtry            | integer   | \-               |                                                   | \\\[0, \infty)\\      |
| mtryratio       | numeric   | \-               |                                                   | \\\[0, 1\]\\          |
| applyfun        | untyped   | \-               |                                                   | \-                    |
| cores           | integer   | NULL             |                                                   | \\(-\infty, \infty)\\ |
| trace           | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| cluster         | untyped   | \-               |                                                   | \-                    |
| na.action       | untyped   | "stats::na.pass" |                                                   | \-                    |
| scores          | untyped   | \-               |                                                   | \-                    |
| teststat        | character | quadratic        | quadratic, maximum                                | \-                    |
| splitstat       | character | quadratic        | quadratic, maximum                                | \-                    |
| splittest       | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| testtype        | character | Univariate       | Bonferroni, MonteCarlo, Univariate, Teststatistic | \-                    |
| nmax            | untyped   | \-               |                                                   | \-                    |
| alpha           | numeric   | 0.05             |                                                   | \\\[0, 1\]\\          |
| mincriterion    | numeric   | 0.95             |                                                   | \\\[0, 1\]\\          |
| logmincriterion | numeric   | -0.05129329      |                                                   | \\(-\infty, \infty)\\ |
| minsplit        | integer   | 20               |                                                   | \\\[1, \infty)\\      |
| minbucket       | integer   | 7                |                                                   | \\\[1, \infty)\\      |
| minprob         | numeric   | 0.01             |                                                   | \\\[0, 1\]\\          |
| stump           | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| lookahead       | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| MIA             | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| nresample       | integer   | 9999             |                                                   | \\\[1, \infty)\\      |
| tol             | numeric   | 1.490116e-08     |                                                   | \\\[0, \infty)\\      |
| maxsurrogate    | integer   | 0                |                                                   | \\\[0, \infty)\\      |
| numsurrogate    | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| maxdepth        | integer   | Inf              |                                                   | \\\[0, \infty)\\      |
| multiway        | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| splittry        | integer   | 2                |                                                   | \\\[0, \infty)\\      |
| intersplit      | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| majority        | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| caseweights     | logical   | TRUE             | TRUE, FALSE                                       | \-                    |
| saveinfo        | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| update          | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| splitflavour    | character | ctree            | ctree, exhaustive                                 | \-                    |
| maxvar          | integer   | \-               |                                                   | \\\[1, \infty)\\      |
| OOB             | logical   | FALSE            | TRUE, FALSE                                       | \-                    |
| simplify        | logical   | TRUE             | TRUE, FALSE                                       | \-                    |
| scale           | logical   | TRUE             | TRUE, FALSE                                       | \-                    |
| maxpts          | integer   | 25000            |                                                   | \\(-\infty, \infty)\\ |
| abseps          | numeric   | 0.001            |                                                   | \\\[0, \infty)\\      |
| releps          | numeric   | 0                |                                                   | \\\[0, \infty)\\      |

## Initial parameter values

- `cores`: This parameter is initialized to 1 (default is `NULL`) to
  avoid threading conflicts with
  [future](https://CRAN.R-project.org/package=future).

## Custom mlr3 parameters

- `mtry`:

  - This hyperparameter can alternatively be set via the added
    hyperparameter `mtryratio` as
    `mtry = max(ceiling(mtryratio * n_features), 1)`. Note that `mtry`
    and `mtryratio` are mutually exclusive.

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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCForest`

## Methods

### Public methods

- [`LearnerSurvCForest$new()`](#method-LearnerSurvCForest-new)

- [`LearnerSurvCForest$clone()`](#method-LearnerSurvCForest-clone)

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

    LearnerSurvCForest$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvCForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.cforest", ntree = 50L)
print(learner)
#> 
#> ── <LearnerSurvCForest> (surv.cforest): Conditional Random Forest ──────────────
#> • Model: -
#> • Parameters: ntree=50, cores=1, teststat=quadratic, testtype=Univariate,
#> mincriterion=0, saveinfo=FALSE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, partykit, sandwich, coin, and
#> survdistr
#> • Predict Types: [crank] and distr
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $nodes
#> $nodes[[1]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V3 <= 8
#> |   |   |   |   |   [6] V2 <= 60
#> |   |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   |   |   [9] V2 > 60 *
#> |   |   |   |   [10] V3 > 8 *
#> |   |   |   [11] V2 > 64
#> |   |   |   |   [12] V3 <= 2 *
#> |   |   |   |   [13] V3 > 2
#> |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   [15] V5 <= 15 *
#> |   |   |   |   |   |   [16] V5 > 15 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V3 <= 8
#> |   |   |   |   |   |   |   [19] V3 <= 5 *
#> |   |   |   |   |   |   |   [20] V3 > 5 *
#> |   |   |   |   |   |   [21] V3 > 8 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 85
#> |   |   |   |   [24] V3 <= 22
#> |   |   |   |   |   [25] V7 <= 143
#> |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   [27] V5 <= 1 *
#> |   |   |   |   |   |   |   [28] V5 > 1
#> |   |   |   |   |   |   |   |   [29] V2 <= 70
#> |   |   |   |   |   |   |   |   |   [30] V7 <= 123 *
#> |   |   |   |   |   |   |   |   |   [31] V7 > 123 *
#> |   |   |   |   |   |   |   |   [32] V2 > 70 *
#> |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   [34] V3 <= 5
#> |   |   |   |   |   |   |   |   [35] V2 <= 47 *
#> |   |   |   |   |   |   |   |   [36] V2 > 47 *
#> |   |   |   |   |   |   |   [37] V3 > 5
#> |   |   |   |   |   |   |   |   [38] V2 <= 74
#> |   |   |   |   |   |   |   |   |   [39] V3 <= 11
#> |   |   |   |   |   |   |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [41] V7 > 130 *
#> |   |   |   |   |   |   |   |   |   [42] V3 > 11 *
#> |   |   |   |   |   |   |   |   [43] V2 > 74 *
#> |   |   |   |   |   [44] V7 > 143
#> |   |   |   |   |   |   [45] V2 <= 63
#> |   |   |   |   |   |   |   [46] V7 <= 190
#> |   |   |   |   |   |   |   |   [47] V2 <= 58
#> |   |   |   |   |   |   |   |   |   [48] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [49] V3 > 7 *
#> |   |   |   |   |   |   |   |   [50] V2 > 58 *
#> |   |   |   |   |   |   |   [51] V7 > 190 *
#> |   |   |   |   |   |   [52] V2 > 63
#> |   |   |   |   |   |   |   [53] V2 <= 66 *
#> |   |   |   |   |   |   |   [54] V2 > 66
#> |   |   |   |   |   |   |   |   [55] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [56] V5 > 1
#> |   |   |   |   |   |   |   |   |   [57] V7 <= 165 *
#> |   |   |   |   |   |   |   |   |   [58] V7 > 165 *
#> |   |   |   |   [59] V3 > 22 *
#> |   |   |   [60] V2 > 85 *
#> |   [61] V5 > 171
#> |   |   [62] V6 <= 0 *
#> |   |   [63] V6 > 0
#> |   |   |   [64] V2 <= 58 *
#> |   |   |   [65] V2 > 58 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 93
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V5 <= 11
#> |   |   |   |   |   |   [10] V7 <= 102 *
#> |   |   |   |   |   |   [11] V7 > 102
#> |   |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   |   [13] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [14] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   [15] V2 > 61 *
#> |   |   |   |   |   |   |   |   [16] V5 > 3
#> |   |   |   |   |   |   |   |   |   [17] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [18] V3 > 10 *
#> |   |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   |   [20] V2 <= 54
#> |   |   |   |   |   |   |   |   |   [21] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [22] V3 > 7 *
#> |   |   |   |   |   |   |   |   [23] V2 > 54
#> |   |   |   |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [26] V3 <= 12
#> |   |   |   |   |   |   |   |   |   |   |   [27] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   |   [28] V2 > 60
#> |   |   |   |   |   |   |   |   |   |   |   |   [29] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [30] V3 > 7 *
#> |   |   |   |   |   |   |   |   |   |   [31] V3 > 12 *
#> |   |   |   |   |   [32] V5 > 11 *
#> |   |   |   [33] V5 > 13 *
#> |   |   [34] V5 > 93
#> |   |   |   [35] V3 <= 3 *
#> |   |   |   [36] V3 > 3
#> |   |   |   |   [37] V7 <= 145
#> |   |   |   |   |   [38] V2 <= 58 *
#> |   |   |   |   |   [39] V2 > 58 *
#> |   |   |   |   [40] V7 > 145 *
#> |   [41] V2 > 71
#> |   |   [42] V2 <= 87
#> |   |   |   [43] V5 <= 173
#> |   |   |   |   [44] V3 <= 1 *
#> |   |   |   |   [45] V3 > 1
#> |   |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   [49] V2 <= 76 *
#> |   |   |   |   |   |   |   [50] V2 > 76 *
#> |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   [52] V5 <= 8
#> |   |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   |   |   [55] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [56] V2 <= 78 *
#> |   |   |   |   |   |   |   |   |   [57] V2 > 78 *
#> |   |   |   |   |   |   |   |   [58] V3 > 8 *
#> |   |   |   |   |   |   [59] V5 > 8 *
#> |   |   |   [60] V5 > 173 *
#> |   |   [61] V2 > 87
#> |   |   |   [62] V5 <= 50 *
#> |   |   |   [63] V5 > 50 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V2 <= 50
#> |   |   |   |   [5] V5 <= 1 *
#> |   |   |   |   [6] V5 > 1
#> |   |   |   |   |   [7] V3 <= 5 *
#> |   |   |   |   |   [8] V3 > 5 *
#> |   |   |   [9] V2 > 50
#> |   |   |   |   [10] V3 <= 1 *
#> |   |   |   |   [11] V3 > 1
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V5 <= 13
#> |   |   |   |   |   |   |   [14] V4 <= 0 *
#> |   |   |   |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   |   |   |   |   [17] V7 <= 154 *
#> |   |   |   |   |   |   |   |   |   [18] V7 > 154 *
#> |   |   |   |   |   |   |   |   [19] V2 > 63
#> |   |   |   |   |   |   |   |   |   [20] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [21] V5 > 3 *
#> |   |   |   |   |   |   [22] V5 > 13 *
#> |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   [24] V4 <= 0 *
#> |   |   |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   |   |   [26] V5 <= 11
#> |   |   |   |   |   |   |   |   [27] V5 <= 7
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 1
#> |   |   |   |   |   |   |   |   |   |   [29] V7 <= 115 *
#> |   |   |   |   |   |   |   |   |   |   [30] V7 > 115
#> |   |   |   |   |   |   |   |   |   |   |   [31] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   |   |   [32] V2 > 59 *
#> |   |   |   |   |   |   |   |   |   [33] V5 > 1 *
#> |   |   |   |   |   |   |   |   [34] V5 > 7 *
#> |   |   |   |   |   |   |   [35] V5 > 11 *
#> |   |   [36] V2 > 71
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V5 <= 6
#> |   |   |   |   |   [39] V5 <= 3 *
#> |   |   |   |   |   [40] V5 > 3 *
#> |   |   |   |   [41] V5 > 6
#> |   |   |   |   |   [42] V3 <= 8
#> |   |   |   |   |   |   [43] V5 <= 119
#> |   |   |   |   |   |   |   [44] V3 <= 6 *
#> |   |   |   |   |   |   |   [45] V3 > 6 *
#> |   |   |   |   |   |   [46] V5 > 119 *
#> |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V3 <= 21
#> |   |   |   |   |   [50] V2 <= 85
#> |   |   |   |   |   |   [51] V3 <= 12
#> |   |   |   |   |   |   |   [52] V3 <= 10
#> |   |   |   |   |   |   |   |   [53] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [54] V5 > 1 *
#> |   |   |   |   |   |   |   [55] V3 > 10 *
#> |   |   |   |   |   |   [56] V3 > 12 *
#> |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   |   [58] V3 > 21 *
#> |   [59] V5 > 171
#> |   |   [60] V3 <= 1 *
#> |   |   [61] V3 > 1 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V3 <= 1 *
#> |   |   |   |   [6] V3 > 1
#> |   |   |   |   |   [7] V5 <= 1
#> |   |   |   |   |   |   [8] V7 <= 140
#> |   |   |   |   |   |   |   [9] V2 <= 46 *
#> |   |   |   |   |   |   |   [10] V2 > 46
#> |   |   |   |   |   |   |   |   [11] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [12] V7 > 125 *
#> |   |   |   |   |   |   [13] V7 > 140
#> |   |   |   |   |   |   |   [14] V3 <= 8 *
#> |   |   |   |   |   |   |   [15] V3 > 8 *
#> |   |   |   |   |   [16] V5 > 1
#> |   |   |   |   |   |   [17] V4 <= 0
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   |   [20] V4 > 0
#> |   |   |   |   |   |   |   [21] V7 <= 114 *
#> |   |   |   |   |   |   |   [22] V7 > 114
#> |   |   |   |   |   |   |   |   [23] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [24] V3 > 4
#> |   |   |   |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [26] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   [27] V3 > 11 *
#> |   |   |   |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [29] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [30] V5 > 7
#> |   |   |   |   |   |   |   |   |   |   |   [31] V3 <= 15 *
#> |   |   |   |   |   |   |   |   |   |   |   [32] V3 > 15 *
#> |   |   |   [33] V5 > 13 *
#> |   |   [34] V5 > 171 *
#> |   [35] V2 > 71
#> |   |   [36] V5 <= 173
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V5 <= 2 *
#> |   |   |   |   [39] V5 > 2
#> |   |   |   |   |   [40] V7 <= 145
#> |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   |   [43] V5 <= 29
#> |   |   |   |   |   |   |   |   [44] V2 <= 84 *
#> |   |   |   |   |   |   |   |   [45] V2 > 84 *
#> |   |   |   |   |   |   |   [46] V5 > 29 *
#> |   |   |   |   |   [47] V7 > 145
#> |   |   |   |   |   |   [48] V3 <= 5 *
#> |   |   |   |   |   |   [49] V3 > 5 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   [52] V5 <= 2 *
#> |   |   |   |   |   [53] V5 > 2 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V7 <= 167
#> |   |   |   |   |   |   [56] V2 <= 82
#> |   |   |   |   |   |   |   [57] V2 <= 79
#> |   |   |   |   |   |   |   |   [58] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [59] V2 > 73 *
#> |   |   |   |   |   |   |   [60] V2 > 79 *
#> |   |   |   |   |   |   [61] V2 > 82 *
#> |   |   |   |   |   [62] V7 > 167 *
#> |   |   [63] V5 > 173 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 6
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   |   |   [10] V2 <= 45 *
#> |   |   |   |   |   |   |   [11] V2 > 45 *
#> |   |   |   |   |   [12] V5 > 6 *
#> |   |   |   [13] V2 > 54
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V7 <= 120 *
#> |   |   |   |   |   [16] V7 > 120
#> |   |   |   |   |   |   [17] V5 <= 13
#> |   |   |   |   |   |   |   [18] V2 <= 64 *
#> |   |   |   |   |   |   |   [19] V2 > 64 *
#> |   |   |   |   |   |   [20] V5 > 13 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V5 <= 11
#> |   |   |   |   |   |   [23] V7 <= 147
#> |   |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   |   [26] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [27] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [28] V5 > 1 *
#> |   |   |   |   |   |   |   |   [29] V3 > 7
#> |   |   |   |   |   |   |   |   |   [30] V7 <= 130
#> |   |   |   |   |   |   |   |   |   |   [31] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [32] V5 > 8 *
#> |   |   |   |   |   |   |   |   |   [33] V7 > 130 *
#> |   |   |   |   |   |   [34] V7 > 147
#> |   |   |   |   |   |   |   [35] V7 <= 162
#> |   |   |   |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [37] V6 > 0 *
#> |   |   |   |   |   |   |   [38] V7 > 162
#> |   |   |   |   |   |   |   |   [39] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [40] V5 > 2 *
#> |   |   |   |   |   [41] V5 > 11 *
#> |   |   [42] V5 > 171 *
#> |   [43] V2 > 74
#> |   |   [44] V7 <= 97 *
#> |   |   [45] V7 > 97
#> |   |   |   [46] V6 <= 0
#> |   |   |   |   [47] V2 <= 81
#> |   |   |   |   |   [48] V5 <= 125 *
#> |   |   |   |   |   [49] V5 > 125 *
#> |   |   |   |   [50] V2 > 81 *
#> |   |   |   [51] V6 > 0
#> |   |   |   |   [52] V4 <= 0
#> |   |   |   |   |   [53] V3 <= 8
#> |   |   |   |   |   |   [54] V7 <= 159
#> |   |   |   |   |   |   |   [55] V5 <= 50
#> |   |   |   |   |   |   |   |   [56] V2 <= 85 *
#> |   |   |   |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   |   |   |   |   [58] V5 > 50 *
#> |   |   |   |   |   |   [59] V7 > 159 *
#> |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   [61] V4 > 0
#> |   |   |   |   |   [62] V5 <= 9
#> |   |   |   |   |   |   [63] V5 <= 1 *
#> |   |   |   |   |   |   [64] V5 > 1 *
#> |   |   |   |   |   [65] V5 > 9 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139 *
#> |   |   |   |   [6] V7 > 139 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 6
#> |   |   |   |   |   |   [10] V7 <= 152 *
#> |   |   |   |   |   |   [11] V7 > 152 *
#> |   |   |   |   |   [12] V5 > 6
#> |   |   |   |   |   |   [13] V7 <= 145 *
#> |   |   |   |   |   |   [14] V7 > 145 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 11
#> |   |   |   |   |   |   [17] V3 <= 3 *
#> |   |   |   |   |   |   [18] V3 > 3
#> |   |   |   |   |   |   |   [19] V2 <= 59
#> |   |   |   |   |   |   |   |   [20] V2 <= 54
#> |   |   |   |   |   |   |   |   |   [21] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [22] V3 > 6 *
#> |   |   |   |   |   |   |   |   [23] V2 > 54 *
#> |   |   |   |   |   |   |   [24] V2 > 59
#> |   |   |   |   |   |   |   |   [25] V2 <= 64 *
#> |   |   |   |   |   |   |   |   [26] V2 > 64 *
#> |   |   |   |   |   [27] V5 > 11 *
#> |   |   [28] V5 > 169
#> |   |   |   [29] V3 <= 8 *
#> |   |   |   [30] V3 > 8 *
#> |   [31] V2 > 66
#> |   |   [32] V2 <= 87
#> |   |   |   [33] V7 <= 104 *
#> |   |   |   [34] V7 > 104
#> |   |   |   |   [35] V3 <= 14
#> |   |   |   |   |   [36] V5 <= 171
#> |   |   |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   |   |   [39] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [40] V3 > 3 *
#> |   |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   |   [42] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [43] V2 > 73 *
#> |   |   |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   |   |   [45] V7 <= 142
#> |   |   |   |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   |   |   |   [48] V2 <= 73 *
#> |   |   |   |   |   |   |   |   |   [49] V2 > 73 *
#> |   |   |   |   |   |   |   [50] V7 > 142
#> |   |   |   |   |   |   |   |   [51] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [52] V5 > 1
#> |   |   |   |   |   |   |   |   |   [53] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [54] V5 > 3 *
#> |   |   |   |   |   [55] V5 > 171 *
#> |   |   |   |   [56] V3 > 14
#> |   |   |   |   |   [57] V5 <= 10 *
#> |   |   |   |   |   [58] V5 > 10 *
#> |   |   [59] V2 > 87
#> |   |   |   [60] V5 <= 67
#> |   |   |   |   [61] V7 <= 142 *
#> |   |   |   |   [62] V7 > 142 *
#> |   |   |   [63] V5 > 67 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2 *
#> |   |   |   |   [8] V5 > 16
#> |   |   |   |   |   [9] V3 <= 5 *
#> |   |   |   |   |   [10] V3 > 5 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   [15] V5 > 2
#> |   |   |   |   |   |   [16] V3 <= 8
#> |   |   |   |   |   |   |   [17] V3 <= 3 *
#> |   |   |   |   |   |   |   [18] V3 > 3
#> |   |   |   |   |   |   |   |   [19] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [20] V7 > 120 *
#> |   |   |   |   |   |   [21] V3 > 8 *
#> |   |   [22] V5 > 173 *
#> |   [23] V4 > 0
#> |   |   [24] V7 <= 142
#> |   |   |   [25] V2 <= 66
#> |   |   |   |   [26] V5 <= 2
#> |   |   |   |   |   [27] V7 <= 130
#> |   |   |   |   |   |   [28] V7 <= 116 *
#> |   |   |   |   |   |   [29] V7 > 116 *
#> |   |   |   |   |   [30] V7 > 130 *
#> |   |   |   |   [31] V5 > 2
#> |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   [33] V5 <= 9 *
#> |   |   |   |   |   |   [34] V5 > 9 *
#> |   |   |   |   |   [35] V6 > 0 *
#> |   |   |   [36] V2 > 66
#> |   |   |   |   [37] V5 <= 8
#> |   |   |   |   |   [38] V3 <= 10
#> |   |   |   |   |   |   [39] V5 <= 2 *
#> |   |   |   |   |   |   [40] V5 > 2 *
#> |   |   |   |   |   [41] V3 > 10 *
#> |   |   |   |   [42] V5 > 8 *
#> |   |   [43] V7 > 142
#> |   |   |   [44] V5 <= 1
#> |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 3 *
#> |   |   |   |   |   [48] V3 > 3 *
#> |   |   |   [49] V5 > 1
#> |   |   |   |   [50] V2 <= 65
#> |   |   |   |   |   [51] V2 <= 55 *
#> |   |   |   |   |   [52] V2 > 55
#> |   |   |   |   |   |   [53] V7 <= 170 *
#> |   |   |   |   |   |   [54] V7 > 170 *
#> |   |   |   |   [55] V2 > 65
#> |   |   |   |   |   [56] V2 <= 78
#> |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   [58] V6 > 0 *
#> |   |   |   |   |   [59] V2 > 78 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 105 *
#> |   |   |   |   [6] V7 > 105
#> |   |   |   |   |   [7] V5 <= 16
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3 *
#> |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V3 <= 4
#> |   |   |   |   |   [13] V3 <= 2 *
#> |   |   |   |   |   [14] V3 > 2 *
#> |   |   |   |   [15] V3 > 4
#> |   |   |   |   |   [16] V3 <= 11
#> |   |   |   |   |   |   [17] V2 <= 67 *
#> |   |   |   |   |   |   [18] V2 > 67 *
#> |   |   |   |   |   [19] V3 > 11 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 147
#> |   |   |   |   [22] V2 <= 66
#> |   |   |   |   |   [23] V5 <= 1
#> |   |   |   |   |   |   [24] V5 <= 0 *
#> |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   [26] V5 > 1
#> |   |   |   |   |   |   [27] V5 <= 8
#> |   |   |   |   |   |   |   [28] V3 <= 6 *
#> |   |   |   |   |   |   |   [29] V3 > 6 *
#> |   |   |   |   |   |   [30] V5 > 8 *
#> |   |   |   |   [31] V2 > 66
#> |   |   |   |   |   [32] V5 <= 2
#> |   |   |   |   |   |   [33] V2 <= 80
#> |   |   |   |   |   |   |   [34] V2 <= 73 *
#> |   |   |   |   |   |   |   [35] V2 > 73 *
#> |   |   |   |   |   |   [36] V2 > 80 *
#> |   |   |   |   |   [37] V5 > 2
#> |   |   |   |   |   |   [38] V7 <= 120 *
#> |   |   |   |   |   |   [39] V7 > 120 *
#> |   |   |   [40] V7 > 147
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V2 <= 69
#> |   |   |   |   |   |   [43] V2 <= 52 *
#> |   |   |   |   |   |   [44] V2 > 52 *
#> |   |   |   |   |   [45] V2 > 69 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V2 <= 59 *
#> |   |   |   |   |   [48] V2 > 59
#> |   |   |   |   |   |   [49] V3 <= 4 *
#> |   |   |   |   |   |   [50] V3 > 4
#> |   |   |   |   |   |   |   [51] V5 <= 1 *
#> |   |   |   |   |   |   |   [52] V5 > 1 *
#> |   [53] V5 > 173 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V2 <= 52 *
#> |   |   |   |   [6] V2 > 52 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   [10] V7 > 120 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V7 <= 114 *
#> |   |   |   |   |   [13] V7 > 114
#> |   |   |   |   |   |   [14] V3 <= 4
#> |   |   |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   |   |   [16] V3 > 3 *
#> |   |   |   |   |   |   [17] V3 > 4
#> |   |   |   |   |   |   |   [18] V5 <= 9 *
#> |   |   |   |   |   |   |   [19] V5 > 9 *
#> |   |   [20] V5 > 169
#> |   |   |   [21] V7 <= 158
#> |   |   |   |   [22] V3 <= 10 *
#> |   |   |   |   [23] V3 > 10 *
#> |   |   |   [24] V7 > 158
#> |   |   |   |   [25] V7 <= 162 *
#> |   |   |   |   [26] V7 > 162
#> |   |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   |   [28] V3 > 3 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 85
#> |   |   |   [31] V6 <= 0
#> |   |   |   |   [32] V7 <= 172
#> |   |   |   |   |   [33] V2 <= 55 *
#> |   |   |   |   |   [34] V2 > 55
#> |   |   |   |   |   |   [35] V7 <= 122 *
#> |   |   |   |   |   |   [36] V7 > 122
#> |   |   |   |   |   |   |   [37] V3 <= 5 *
#> |   |   |   |   |   |   |   [38] V3 > 5
#> |   |   |   |   |   |   |   |   [39] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [40] V7 > 140 *
#> |   |   |   |   [41] V7 > 172 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V2 <= 50 *
#> |   |   |   |   [44] V2 > 50
#> |   |   |   |   |   [45] V7 <= 102 *
#> |   |   |   |   |   [46] V7 > 102
#> |   |   |   |   |   |   [47] V7 <= 185
#> |   |   |   |   |   |   |   [48] V3 <= 2 *
#> |   |   |   |   |   |   |   [49] V3 > 2
#> |   |   |   |   |   |   |   |   [50] V7 <= 112 *
#> |   |   |   |   |   |   |   |   [51] V7 > 112
#> |   |   |   |   |   |   |   |   |   [52] V3 <= 17
#> |   |   |   |   |   |   |   |   |   |   [53] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   |   [54] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   |   [55] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [56] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [59] V3 > 6 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   |   |   |   |   |   |   |   [61] V5 > 8 *
#> |   |   |   |   |   |   |   |   |   |   [62] V3 > 13 *
#> |   |   |   |   |   |   |   |   |   [63] V3 > 17 *
#> |   |   |   |   |   |   [64] V7 > 185 *
#> |   |   [65] V2 > 85 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V3 <= 8
#> |   |   |   |   |   |   [7] V7 <= 130 *
#> |   |   |   |   |   |   [8] V7 > 130 *
#> |   |   |   |   |   [9] V3 > 8 *
#> |   |   |   |   [10] V2 > 64
#> |   |   |   |   |   [11] V2 <= 69 *
#> |   |   |   |   |   [12] V2 > 69 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V3 <= 20
#> |   |   |   |   |   [15] V7 <= 102 *
#> |   |   |   |   |   [16] V7 > 102
#> |   |   |   |   |   |   [17] V3 <= 6
#> |   |   |   |   |   |   |   [18] V2 <= 43 *
#> |   |   |   |   |   |   |   [19] V2 > 43
#> |   |   |   |   |   |   |   |   [20] V7 <= 150
#> |   |   |   |   |   |   |   |   |   [21] V7 <= 135
#> |   |   |   |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [23] V3 > 3 *
#> |   |   |   |   |   |   |   |   |   [24] V7 > 135 *
#> |   |   |   |   |   |   |   |   [25] V7 > 150 *
#> |   |   |   |   |   |   [26] V3 > 6
#> |   |   |   |   |   |   |   [27] V5 <= 1
#> |   |   |   |   |   |   |   |   [28] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [29] V2 > 63 *
#> |   |   |   |   |   |   |   [30] V5 > 1
#> |   |   |   |   |   |   |   |   [31] V2 <= 50 *
#> |   |   |   |   |   |   |   |   [32] V2 > 50
#> |   |   |   |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [34] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   |   [35] V3 > 10 *
#> |   |   |   |   |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [37] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   |   [38] V2 > 61
#> |   |   |   |   |   |   |   |   |   |   |   [39] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   |   [40] V5 > 9 *
#> |   |   |   |   [41] V3 > 20 *
#> |   |   [42] V2 > 72
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V7 <= 110 *
#> |   |   |   |   [45] V7 > 110
#> |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V7 <= 147 *
#> |   |   |   |   |   |   [49] V7 > 147 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V7 <= 124 *
#> |   |   |   |   [52] V7 > 124
#> |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V7 <= 143 *
#> |   |   |   |   |   |   [56] V7 > 143 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V3 <= 7
#> |   |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   |   [9] V2 <= 43 *
#> |   |   |   |   |   |   |   [10] V2 > 43 *
#> |   |   |   |   |   [11] V3 > 7 *
#> |   |   |   |   [12] V2 > 54
#> |   |   |   |   |   [13] V4 <= 0
#> |   |   |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   |   |   [15] V3 > 2 *
#> |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V7 <= 170
#> |   |   |   |   |   |   |   |   [19] V7 <= 152
#> |   |   |   |   |   |   |   |   |   [20] V2 <= 68
#> |   |   |   |   |   |   |   |   |   |   [21] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [22] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   [23] V2 > 68 *
#> |   |   |   |   |   |   |   |   [24] V7 > 152 *
#> |   |   |   |   |   |   |   [25] V7 > 170 *
#> |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   |   |   |   [28] V3 > 3
#> |   |   |   |   |   |   |   |   [29] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [30] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   [31] V2 > 59
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [33] V5 > 0 *
#> |   |   |   |   |   |   |   |   [34] V5 > 1
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 147
#> |   |   |   |   |   |   |   |   |   |   [36] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   |   [37] V2 > 64 *
#> |   |   |   |   |   |   |   |   |   [38] V7 > 147
#> |   |   |   |   |   |   |   |   |   |   [39] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   [40] V5 > 9 *
#> |   |   |   [41] V5 > 13
#> |   |   |   |   [42] V3 <= 8 *
#> |   |   |   |   [43] V3 > 8 *
#> |   |   [44] V5 > 169
#> |   |   |   [45] V2 <= 58
#> |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   [47] V3 > 5 *
#> |   |   |   [48] V2 > 58 *
#> |   [49] V2 > 74
#> |   |   [50] V5 <= 169
#> |   |   |   [51] V4 <= 0
#> |   |   |   |   [52] V7 <= 159
#> |   |   |   |   |   [53] V2 <= 82
#> |   |   |   |   |   |   [54] V5 <= 8 *
#> |   |   |   |   |   |   [55] V5 > 8 *
#> |   |   |   |   |   [56] V2 > 82
#> |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   [58] V6 > 0 *
#> |   |   |   |   [59] V7 > 159 *
#> |   |   |   [60] V4 > 0
#> |   |   |   |   [61] V2 <= 85
#> |   |   |   |   |   [62] V7 <= 126 *
#> |   |   |   |   |   [63] V7 > 126
#> |   |   |   |   |   |   [64] V3 <= 9 *
#> |   |   |   |   |   |   [65] V3 > 9 *
#> |   |   |   |   [66] V2 > 85 *
#> |   |   [67] V5 > 169 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 63
#> |   |   [3] V7 <= 110 *
#> |   |   [4] V7 > 110
#> |   |   |   [5] V5 <= 77
#> |   |   |   |   [6] V5 <= 11
#> |   |   |   |   |   [7] V3 <= 14
#> |   |   |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   |   |   [11] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [12] V2 <= 52 *
#> |   |   |   |   |   |   |   |   |   [13] V2 > 52 *
#> |   |   |   |   |   |   |   |   [14] V5 > 6 *
#> |   |   |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [17] V3 > 3
#> |   |   |   |   |   |   |   |   |   [18] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [19] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   [20] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [21] V5 > 1 *
#> |   |   |   |   |   [22] V3 > 14 *
#> |   |   |   |   [23] V5 > 11 *
#> |   |   |   [24] V5 > 77
#> |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   [26] V3 > 3
#> |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   [28] V6 > 0 *
#> |   [29] V2 > 63
#> |   |   [30] V5 <= 171
#> |   |   |   [31] V2 <= 74
#> |   |   |   |   [32] V7 <= 115
#> |   |   |   |   |   [33] V2 <= 69 *
#> |   |   |   |   |   [34] V2 > 69 *
#> |   |   |   |   [35] V7 > 115
#> |   |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   |   [37] V7 <= 150 *
#> |   |   |   |   |   |   [38] V7 > 150 *
#> |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   [40] V2 <= 68
#> |   |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   |   [42] V6 > 0 *
#> |   |   |   |   |   |   [43] V2 > 68
#> |   |   |   |   |   |   |   [44] V5 <= 6 *
#> |   |   |   |   |   |   |   [45] V5 > 6 *
#> |   |   |   [46] V2 > 74
#> |   |   |   |   [47] V4 <= 0
#> |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   [49] V7 <= 133 *
#> |   |   |   |   |   |   [50] V7 > 133 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V2 <= 84
#> |   |   |   |   |   |   |   [53] V3 <= 4 *
#> |   |   |   |   |   |   |   [54] V3 > 4 *
#> |   |   |   |   |   |   [55] V2 > 84 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   [59] V5 <= 1
#> |   |   |   |   |   |   |   [60] V3 <= 3 *
#> |   |   |   |   |   |   |   [61] V3 > 3 *
#> |   |   |   |   |   |   [62] V5 > 1 *
#> |   |   [63] V5 > 171 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V7 <= 130 *
#> |   |   |   |   |   [7] V7 > 130 *
#> |   |   |   |   [8] V5 > 16
#> |   |   |   |   |   [9] V5 <= 67 *
#> |   |   |   |   |   [10] V5 > 67 *
#> |   |   |   [11] V5 > 171 *
#> |   |   [12] V6 > 0
#> |   |   |   [13] V3 <= 1 *
#> |   |   |   [14] V3 > 1
#> |   |   |   |   [15] V5 <= 126
#> |   |   |   |   |   [16] V5 <= 11
#> |   |   |   |   |   |   [17] V2 <= 70 *
#> |   |   |   |   |   |   [18] V2 > 70 *
#> |   |   |   |   |   [19] V5 > 11 *
#> |   |   |   |   [20] V5 > 126
#> |   |   |   |   |   [21] V2 <= 58 *
#> |   |   |   |   |   [22] V2 > 58 *
#> |   [23] V4 > 0
#> |   |   [24] V6 <= 0
#> |   |   |   [25] V2 <= 79
#> |   |   |   |   [26] V3 <= 4 *
#> |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   [28] V7 <= 172
#> |   |   |   |   |   |   [29] V3 <= 8 *
#> |   |   |   |   |   |   [30] V3 > 8
#> |   |   |   |   |   |   |   [31] V7 <= 132 *
#> |   |   |   |   |   |   |   [32] V7 > 132 *
#> |   |   |   |   |   [33] V7 > 172 *
#> |   |   |   [34] V2 > 79 *
#> |   |   [35] V6 > 0
#> |   |   |   [36] V7 <= 112
#> |   |   |   |   [37] V5 <= 2 *
#> |   |   |   |   [38] V5 > 2 *
#> |   |   |   [39] V7 > 112
#> |   |   |   |   [40] V3 <= 9
#> |   |   |   |   |   [41] V5 <= 4
#> |   |   |   |   |   |   [42] V2 <= 74
#> |   |   |   |   |   |   |   [43] V5 <= 0
#> |   |   |   |   |   |   |   |   [44] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [45] V2 > 65 *
#> |   |   |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   |   |   [47] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [48] V7 > 140 *
#> |   |   |   |   |   |   [49] V2 > 74 *
#> |   |   |   |   |   [50] V5 > 4 *
#> |   |   |   |   [51] V3 > 9
#> |   |   |   |   |   [52] V3 <= 14
#> |   |   |   |   |   |   [53] V3 <= 11 *
#> |   |   |   |   |   |   [54] V3 > 11 *
#> |   |   |   |   |   [55] V3 > 14 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V2 <= 64
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139 *
#> |   |   |   |   [6] V7 > 139 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 57
#> |   |   |   |   |   [9] V3 <= 13
#> |   |   |   |   |   |   [10] V5 <= 3
#> |   |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   |   |   [13] V5 > 3 *
#> |   |   |   |   |   [14] V3 > 13 *
#> |   |   |   |   [15] V2 > 57
#> |   |   |   |   |   [16] V7 <= 110 *
#> |   |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   [20] V5 > 169
#> |   |   |   [21] V3 <= 8 *
#> |   |   |   [22] V3 > 8 *
#> |   [23] V2 > 64
#> |   |   [24] V5 <= 169
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V5 <= 2 *
#> |   |   |   |   [27] V5 > 2
#> |   |   |   |   |   [28] V7 <= 130
#> |   |   |   |   |   |   [29] V5 <= 7 *
#> |   |   |   |   |   |   [30] V5 > 7 *
#> |   |   |   |   |   [31] V7 > 130
#> |   |   |   |   |   |   [32] V3 <= 8
#> |   |   |   |   |   |   |   [33] V7 <= 152 *
#> |   |   |   |   |   |   |   [34] V7 > 152 *
#> |   |   |   |   |   |   [35] V3 > 8 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   [38] V7 <= 124 *
#> |   |   |   |   |   [39] V7 > 124
#> |   |   |   |   |   |   [40] V5 <= 9
#> |   |   |   |   |   |   |   [41] V5 <= 2 *
#> |   |   |   |   |   |   |   [42] V5 > 2 *
#> |   |   |   |   |   |   [43] V5 > 9 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V5 <= 3
#> |   |   |   |   |   |   [46] V7 <= 143
#> |   |   |   |   |   |   |   [47] V3 <= 3 *
#> |   |   |   |   |   |   |   [48] V3 > 3
#> |   |   |   |   |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   [51] V7 > 143
#> |   |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   [54] V5 > 3
#> |   |   |   |   |   |   [55] V3 <= 12 *
#> |   |   |   |   |   |   [56] V3 > 12 *
#> |   |   [57] V5 > 169 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V2 <= 63
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 48 *
#> |   |   |   [5] V2 > 48
#> |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   [7] V5 <= 169 *
#> |   |   |   |   |   [8] V5 > 169 *
#> |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   [10] V2 <= 59
#> |   |   |   |   |   |   [11] V5 <= 99 *
#> |   |   |   |   |   |   [12] V5 > 99 *
#> |   |   |   |   |   [13] V2 > 59 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V2 <= 50
#> |   |   |   |   [16] V7 <= 121 *
#> |   |   |   |   [17] V7 > 121
#> |   |   |   |   |   [18] V2 <= 46 *
#> |   |   |   |   |   [19] V2 > 46 *
#> |   |   |   [20] V2 > 50
#> |   |   |   |   [21] V3 <= 7
#> |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   [24] V3 > 7
#> |   |   |   |   |   [25] V5 <= 8
#> |   |   |   |   |   |   [26] V2 <= 56 *
#> |   |   |   |   |   |   [27] V2 > 56 *
#> |   |   |   |   |   [28] V5 > 8 *
#> |   [29] V2 > 63
#> |   |   [30] V5 <= 171
#> |   |   |   [31] V2 <= 71
#> |   |   |   |   [32] V5 <= 21
#> |   |   |   |   |   [33] V3 <= 2 *
#> |   |   |   |   |   [34] V3 > 2
#> |   |   |   |   |   |   [35] V4 <= 0 *
#> |   |   |   |   |   |   [36] V4 > 0
#> |   |   |   |   |   |   |   [37] V7 <= 150
#> |   |   |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   |   |   [40] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [41] V3 > 7 *
#> |   |   |   |   |   |   |   [42] V7 > 150 *
#> |   |   |   |   [43] V5 > 21 *
#> |   |   |   [44] V2 > 71
#> |   |   |   |   [45] V5 <= 15
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V4 <= 0 *
#> |   |   |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   |   |   [49] V7 <= 142 *
#> |   |   |   |   |   |   |   [50] V7 > 142 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V3 <= 4
#> |   |   |   |   |   |   |   [53] V3 <= 1 *
#> |   |   |   |   |   |   |   [54] V3 > 1
#> |   |   |   |   |   |   |   |   [55] V2 <= 79 *
#> |   |   |   |   |   |   |   |   [56] V2 > 79 *
#> |   |   |   |   |   |   [57] V3 > 4
#> |   |   |   |   |   |   |   [58] V5 <= 1 *
#> |   |   |   |   |   |   |   [59] V5 > 1
#> |   |   |   |   |   |   |   |   [60] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [61] V5 > 8 *
#> |   |   |   |   [62] V5 > 15
#> |   |   |   |   |   [63] V5 <= 108
#> |   |   |   |   |   |   [64] V5 <= 59 *
#> |   |   |   |   |   |   [65] V5 > 59 *
#> |   |   |   |   |   [66] V5 > 108 *
#> |   |   [67] V5 > 171 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V6 <= 0 *
#> |   |   |   [5] V6 > 0 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V2 <= 64
#> |   |   |   |   |   [9] V5 <= 13 *
#> |   |   |   |   |   [10] V5 > 13 *
#> |   |   |   |   [11] V2 > 64
#> |   |   |   |   |   [12] V2 <= 71
#> |   |   |   |   |   |   [13] V2 <= 68 *
#> |   |   |   |   |   |   [14] V2 > 68 *
#> |   |   |   |   |   [15] V2 > 71
#> |   |   |   |   |   |   [16] V5 <= 7 *
#> |   |   |   |   |   |   [17] V5 > 7
#> |   |   |   |   |   |   |   [18] V5 <= 71 *
#> |   |   |   |   |   |   |   [19] V5 > 71 *
#> |   |   |   [20] V4 > 0
#> |   |   |   |   [21] V2 <= 85
#> |   |   |   |   |   [22] V2 <= 54
#> |   |   |   |   |   |   [23] V7 <= 161
#> |   |   |   |   |   |   |   [24] V7 <= 116 *
#> |   |   |   |   |   |   |   [25] V7 > 116
#> |   |   |   |   |   |   |   |   [26] V2 <= 44 *
#> |   |   |   |   |   |   |   |   [27] V2 > 44
#> |   |   |   |   |   |   |   |   |   [28] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [29] V3 > 5 *
#> |   |   |   |   |   |   [30] V7 > 161 *
#> |   |   |   |   |   [31] V2 > 54
#> |   |   |   |   |   |   [32] V7 <= 112
#> |   |   |   |   |   |   |   [33] V3 <= 5 *
#> |   |   |   |   |   |   |   [34] V3 > 5 *
#> |   |   |   |   |   |   [35] V7 > 112
#> |   |   |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   |   |   [37] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 142 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 142 *
#> |   |   |   |   |   |   |   |   [40] V5 > 6
#> |   |   |   |   |   |   |   |   |   [41] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   [42] V3 > 12 *
#> |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   [44] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [45] V7 > 125
#> |   |   |   |   |   |   |   |   |   [46] V7 <= 147
#> |   |   |   |   |   |   |   |   |   |   [47] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   [48] V2 > 60
#> |   |   |   |   |   |   |   |   |   |   |   [49] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   |   |   [50] V2 > 69 *
#> |   |   |   |   |   |   |   |   |   [51] V7 > 147
#> |   |   |   |   |   |   |   |   |   |   [52] V7 <= 180
#> |   |   |   |   |   |   |   |   |   |   |   [53] V5 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   |   [54] V5 > 6 *
#> |   |   |   |   |   |   |   |   |   |   [55] V7 > 180 *
#> |   |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 135 *
#> |   |   |   |   [6] V7 > 135
#> |   |   |   |   |   [7] V7 <= 152 *
#> |   |   |   |   |   [8] V7 > 152 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 36
#> |   |   |   |   |   [11] V3 <= 8 *
#> |   |   |   |   |   [12] V3 > 8 *
#> |   |   |   |   [13] V5 > 36 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V5 <= 171
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V3 <= 2 *
#> |   |   |   |   |   [18] V3 > 2
#> |   |   |   |   |   |   [19] V2 <= 61 *
#> |   |   |   |   |   |   [20] V2 > 61 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V7 <= 106 *
#> |   |   |   |   |   [23] V7 > 106
#> |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   [25] V2 <= 66
#> |   |   |   |   |   |   |   |   [26] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [27] V5 > 8 *
#> |   |   |   |   |   |   |   [28] V2 > 66 *
#> |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   [30] V5 <= 1
#> |   |   |   |   |   |   |   |   [31] V7 <= 153 *
#> |   |   |   |   |   |   |   |   [32] V7 > 153 *
#> |   |   |   |   |   |   |   [33] V5 > 1
#> |   |   |   |   |   |   |   |   [34] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [35] V2 > 57
#> |   |   |   |   |   |   |   |   |   [36] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [37] V7 > 140 *
#> |   |   |   [38] V5 > 171
#> |   |   |   |   [39] V2 <= 58 *
#> |   |   |   |   [40] V2 > 58 *
#> |   [41] V2 > 70
#> |   |   [42] V5 <= 167
#> |   |   |   [43] V3 <= 13
#> |   |   |   |   [44] V7 <= 124
#> |   |   |   |   |   [45] V4 <= 0
#> |   |   |   |   |   |   [46] V2 <= 80 *
#> |   |   |   |   |   |   [47] V2 > 80 *
#> |   |   |   |   |   [48] V4 > 0 *
#> |   |   |   |   [49] V7 > 124
#> |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   [51] V5 <= 108
#> |   |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   |   |   [54] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [55] V3 > 6 *
#> |   |   |   |   |   |   [56] V5 > 108 *
#> |   |   |   |   |   [57] V4 > 0
#> |   |   |   |   |   |   [58] V3 <= 5 *
#> |   |   |   |   |   |   [59] V3 > 5
#> |   |   |   |   |   |   |   [60] V2 <= 80 *
#> |   |   |   |   |   |   |   [61] V2 > 80 *
#> |   |   |   [62] V3 > 13
#> |   |   |   |   [63] V3 <= 19 *
#> |   |   |   |   [64] V3 > 19 *
#> |   |   [65] V5 > 167
#> |   |   |   [66] V6 <= 0 *
#> |   |   |   [67] V6 > 0 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V2 <= 80
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 10 *
#> |   |   |   |   [6] V5 > 10 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 55 *
#> |   |   |   |   [9] V2 > 55
#> |   |   |   |   |   [10] V3 <= 9 *
#> |   |   |   |   |   [11] V3 > 9 *
#> |   |   [12] V2 > 80 *
#> |   [13] V7 > 112
#> |   |   [14] V4 <= 0
#> |   |   |   [15] V5 <= 173
#> |   |   |   |   [16] V2 <= 61
#> |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   [19] V2 > 61
#> |   |   |   |   |   [20] V3 <= 6
#> |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V2 <= 70 *
#> |   |   |   |   |   |   |   [24] V2 > 70
#> |   |   |   |   |   |   |   |   [25] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [26] V5 > 4 *
#> |   |   |   |   |   [27] V3 > 6 *
#> |   |   |   [28] V5 > 173 *
#> |   |   [29] V4 > 0
#> |   |   |   [30] V3 <= 23
#> |   |   |   |   [31] V2 <= 85
#> |   |   |   |   |   [32] V7 <= 121
#> |   |   |   |   |   |   [33] V5 <= 2 *
#> |   |   |   |   |   |   [34] V5 > 2 *
#> |   |   |   |   |   [35] V7 > 121
#> |   |   |   |   |   |   [36] V2 <= 71
#> |   |   |   |   |   |   |   [37] V2 <= 50
#> |   |   |   |   |   |   |   |   [38] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [39] V2 > 46 *
#> |   |   |   |   |   |   |   [40] V2 > 50
#> |   |   |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 170
#> |   |   |   |   |   |   |   |   |   |   [43] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   [44] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   |   [45] V2 > 65 *
#> |   |   |   |   |   |   |   |   |   |   [46] V5 > 8 *
#> |   |   |   |   |   |   |   |   |   [47] V7 > 170 *
#> |   |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 15
#> |   |   |   |   |   |   |   |   |   |   [50] V5 <= 6
#> |   |   |   |   |   |   |   |   |   |   |   [51] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   |   [52] V2 > 65 *
#> |   |   |   |   |   |   |   |   |   |   [53] V5 > 6 *
#> |   |   |   |   |   |   |   |   |   [54] V3 > 15 *
#> |   |   |   |   |   |   [55] V2 > 71
#> |   |   |   |   |   |   |   [56] V7 <= 160
#> |   |   |   |   |   |   |   |   [57] V2 <= 77 *
#> |   |   |   |   |   |   |   |   [58] V2 > 77 *
#> |   |   |   |   |   |   |   [59] V7 > 160 *
#> |   |   |   |   [60] V2 > 85 *
#> |   |   |   [61] V3 > 23 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 87
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V3 <= 8 *
#> |   |   |   |   |   |   [9] V3 > 8 *
#> |   |   |   |   [10] V2 > 64
#> |   |   |   |   |   [11] V5 <= 2 *
#> |   |   |   |   |   [12] V5 > 2
#> |   |   |   |   |   |   [13] V2 <= 78
#> |   |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   |   [16] V2 > 78
#> |   |   |   |   |   |   |   [17] V2 <= 82 *
#> |   |   |   |   |   |   |   [18] V2 > 82 *
#> |   |   |   [19] V4 > 0
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V2 <= 55
#> |   |   |   |   |   |   [22] V2 <= 48 *
#> |   |   |   |   |   |   [23] V2 > 48 *
#> |   |   |   |   |   [24] V2 > 55
#> |   |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   |   [26] V3 > 4
#> |   |   |   |   |   |   |   [27] V2 <= 73
#> |   |   |   |   |   |   |   |   [28] V2 <= 70
#> |   |   |   |   |   |   |   |   |   [29] V7 <= 160 *
#> |   |   |   |   |   |   |   |   |   [30] V7 > 160 *
#> |   |   |   |   |   |   |   |   [31] V2 > 70 *
#> |   |   |   |   |   |   |   [32] V2 > 73 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V2 <= 54
#> |   |   |   |   |   |   [35] V5 <= 4
#> |   |   |   |   |   |   |   [36] V7 <= 120 *
#> |   |   |   |   |   |   |   [37] V7 > 120 *
#> |   |   |   |   |   |   [38] V5 > 4 *
#> |   |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   |   [42] V2 <= 57 *
#> |   |   |   |   |   |   |   [43] V2 > 57
#> |   |   |   |   |   |   |   |   [44] V2 <= 72
#> |   |   |   |   |   |   |   |   |   [45] V5 <= 9
#> |   |   |   |   |   |   |   |   |   |   [46] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   [47] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   [48] V5 > 9 *
#> |   |   |   |   |   |   |   |   [49] V2 > 72
#> |   |   |   |   |   |   |   |   |   [50] V7 <= 128 *
#> |   |   |   |   |   |   |   |   |   [51] V7 > 128 *
#> |   |   [52] V5 > 173 *
#> |   [53] V2 > 87
#> |   |   [54] V7 <= 116 *
#> |   |   [55] V7 > 116 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V2 <= 64 *
#> |   |   |   [5] V2 > 64
#> |   |   |   |   [6] V7 <= 125 *
#> |   |   |   |   [7] V7 > 125 *
#> |   |   [8] V3 > 1
#> |   |   |   [9] V2 <= 72
#> |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   [11] V3 <= 8
#> |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   [13] V5 <= 7 *
#> |   |   |   |   |   |   |   [14] V5 > 7 *
#> |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   [16] V3 > 8 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V7 <= 149
#> |   |   |   |   |   |   [19] V5 <= 8
#> |   |   |   |   |   |   |   [20] V2 <= 54 *
#> |   |   |   |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   |   |   |   [22] V7 <= 132
#> |   |   |   |   |   |   |   |   |   [23] V7 <= 102 *
#> |   |   |   |   |   |   |   |   |   [24] V7 > 102
#> |   |   |   |   |   |   |   |   |   |   [25] V7 <= 122 *
#> |   |   |   |   |   |   |   |   |   |   [26] V7 > 122 *
#> |   |   |   |   |   |   |   |   [27] V7 > 132 *
#> |   |   |   |   |   |   [28] V5 > 8
#> |   |   |   |   |   |   |   [29] V3 <= 14 *
#> |   |   |   |   |   |   |   [30] V3 > 14 *
#> |   |   |   |   |   [31] V7 > 149
#> |   |   |   |   |   |   [32] V5 <= 11
#> |   |   |   |   |   |   |   [33] V2 <= 65
#> |   |   |   |   |   |   |   |   [34] V7 <= 180
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 154 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 154 *
#> |   |   |   |   |   |   |   |   [37] V7 > 180 *
#> |   |   |   |   |   |   |   [38] V2 > 65 *
#> |   |   |   |   |   |   [39] V5 > 11 *
#> |   |   |   [40] V2 > 72
#> |   |   |   |   [41] V5 <= 12
#> |   |   |   |   |   [42] V4 <= 0 *
#> |   |   |   |   |   [43] V4 > 0
#> |   |   |   |   |   |   [44] V7 <= 167
#> |   |   |   |   |   |   |   [45] V3 <= 6 *
#> |   |   |   |   |   |   |   [46] V3 > 6
#> |   |   |   |   |   |   |   |   [47] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [48] V5 > 2 *
#> |   |   |   |   |   |   [49] V7 > 167 *
#> |   |   |   |   [50] V5 > 12
#> |   |   |   |   |   [51] V7 <= 128 *
#> |   |   |   |   |   [52] V7 > 128 *
#> |   [53] V5 > 173 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V3 <= 8 *
#> |   |   |   |   [6] V3 > 8 *
#> |   |   |   [7] V2 > 64
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 129 *
#> |   |   |   |   |   [10] V7 > 129 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V3 <= 2 *
#> |   |   |   |   |   [13] V3 > 2
#> |   |   |   |   |   |   [14] V2 <= 73 *
#> |   |   |   |   |   |   [15] V2 > 73
#> |   |   |   |   |   |   |   [16] V7 <= 137 *
#> |   |   |   |   |   |   |   [17] V7 > 137 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V6 <= 0
#> |   |   |   |   [20] V3 <= 19
#> |   |   |   |   |   [21] V2 <= 63
#> |   |   |   |   |   |   [22] V5 <= 7
#> |   |   |   |   |   |   |   [23] V2 <= 48 *
#> |   |   |   |   |   |   |   [24] V2 > 48 *
#> |   |   |   |   |   |   [25] V5 > 7 *
#> |   |   |   |   |   [26] V2 > 63
#> |   |   |   |   |   |   [27] V7 <= 151
#> |   |   |   |   |   |   |   [28] V7 <= 127 *
#> |   |   |   |   |   |   |   [29] V7 > 127 *
#> |   |   |   |   |   |   [30] V7 > 151 *
#> |   |   |   |   [31] V3 > 19 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V3 <= 3
#> |   |   |   |   |   [34] V3 <= 1 *
#> |   |   |   |   |   [35] V3 > 1 *
#> |   |   |   |   [36] V3 > 3
#> |   |   |   |   |   [37] V5 <= 1
#> |   |   |   |   |   |   [38] V3 <= 8
#> |   |   |   |   |   |   |   [39] V2 <= 74
#> |   |   |   |   |   |   |   |   [40] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [41] V2 <= 56 *
#> |   |   |   |   |   |   |   |   |   [42] V2 > 56 *
#> |   |   |   |   |   |   |   |   [43] V3 > 7 *
#> |   |   |   |   |   |   |   [44] V2 > 74 *
#> |   |   |   |   |   |   [45] V3 > 8 *
#> |   |   |   |   |   [46] V5 > 1
#> |   |   |   |   |   |   [47] V2 <= 72
#> |   |   |   |   |   |   |   [48] V7 <= 153
#> |   |   |   |   |   |   |   |   [49] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [50] V7 > 133 *
#> |   |   |   |   |   |   |   [51] V7 > 153 *
#> |   |   |   |   |   |   [52] V2 > 72 *
#> |   [53] V5 > 173 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V5 <= 7 *
#> |   |   |   |   |   [8] V5 > 7 *
#> |   |   |   [9] V3 > 3
#> |   |   |   |   [10] V2 <= 60 *
#> |   |   |   |   [11] V2 > 60
#> |   |   |   |   |   [12] V5 <= 15
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   |   [15] V5 > 15
#> |   |   |   |   |   |   [16] V3 <= 6 *
#> |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 85
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V7 <= 142
#> |   |   |   |   |   |   [22] V7 <= 132
#> |   |   |   |   |   |   |   [23] V2 <= 66
#> |   |   |   |   |   |   |   |   [24] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [25] V2 > 56 *
#> |   |   |   |   |   |   |   [26] V2 > 66 *
#> |   |   |   |   |   |   [27] V7 > 132 *
#> |   |   |   |   |   [28] V7 > 142
#> |   |   |   |   |   |   [29] V2 <= 65
#> |   |   |   |   |   |   |   [30] V2 <= 58 *
#> |   |   |   |   |   |   |   [31] V2 > 58 *
#> |   |   |   |   |   |   [32] V2 > 65
#> |   |   |   |   |   |   |   [33] V2 <= 75 *
#> |   |   |   |   |   |   |   [34] V2 > 75 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V5 <= 1
#> |   |   |   |   |   |   [37] V2 <= 61
#> |   |   |   |   |   |   |   [38] V5 <= 0 *
#> |   |   |   |   |   |   |   [39] V5 > 0 *
#> |   |   |   |   |   |   [40] V2 > 61
#> |   |   |   |   |   |   |   [41] V2 <= 76
#> |   |   |   |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V5 > 0 *
#> |   |   |   |   |   |   |   [44] V2 > 76 *
#> |   |   |   |   |   [45] V5 > 1
#> |   |   |   |   |   |   [46] V2 <= 70
#> |   |   |   |   |   |   |   [47] V3 <= 14
#> |   |   |   |   |   |   |   |   [48] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 147 *
#> |   |   |   |   |   |   |   |   [51] V5 > 9 *
#> |   |   |   |   |   |   |   [52] V3 > 14 *
#> |   |   |   |   |   |   [53] V2 > 70
#> |   |   |   |   |   |   |   [54] V7 <= 150 *
#> |   |   |   |   |   |   |   [55] V7 > 150 *
#> |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V3 <= 7
#> |   |   |   |   |   |   [10] V5 <= 5 *
#> |   |   |   |   |   |   [11] V5 > 5 *
#> |   |   |   |   |   [12] V3 > 7 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V2 <= 54
#> |   |   |   |   |   [15] V2 <= 43 *
#> |   |   |   |   |   [16] V2 > 43
#> |   |   |   |   |   |   [17] V7 <= 166
#> |   |   |   |   |   |   |   [18] V7 <= 150
#> |   |   |   |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   |   |   |   [21] V7 > 150 *
#> |   |   |   |   |   |   [22] V7 > 166 *
#> |   |   |   |   [23] V2 > 54
#> |   |   |   |   |   [24] V7 <= 106 *
#> |   |   |   |   |   [25] V7 > 106
#> |   |   |   |   |   |   [26] V5 <= 3
#> |   |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   |   [28] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [29] V5 > 2 *
#> |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   [31] V7 <= 162
#> |   |   |   |   |   |   |   |   |   [32] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [33] V3 > 6 *
#> |   |   |   |   |   |   |   |   [34] V7 > 162 *
#> |   |   |   |   |   |   [35] V5 > 3
#> |   |   |   |   |   |   |   [36] V5 <= 7 *
#> |   |   |   |   |   |   |   [37] V5 > 7
#> |   |   |   |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [39] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [40] V2 > 65 *
#> |   |   |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   |   |   [42] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   [43] V5 > 9 *
#> |   |   [44] V5 > 171
#> |   |   |   [45] V7 <= 183
#> |   |   |   |   [46] V3 <= 8 *
#> |   |   |   |   [47] V3 > 8 *
#> |   |   |   [48] V7 > 183 *
#> |   [49] V2 > 72
#> |   |   [50] V5 <= 173
#> |   |   |   [51] V4 <= 0
#> |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   [54] V2 <= 84
#> |   |   |   |   |   |   [55] V5 <= 6 *
#> |   |   |   |   |   |   [56] V5 > 6 *
#> |   |   |   |   |   [57] V2 > 84 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V6 <= 0
#> |   |   |   |   |   [60] V5 <= 7 *
#> |   |   |   |   |   [61] V5 > 7 *
#> |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   [63] V5 <= 8
#> |   |   |   |   |   |   [64] V3 <= 4 *
#> |   |   |   |   |   |   [65] V3 > 4
#> |   |   |   |   |   |   |   [66] V2 <= 82 *
#> |   |   |   |   |   |   |   [67] V2 > 82 *
#> |   |   |   |   |   [68] V5 > 8 *
#> |   |   [69] V5 > 173 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V7 <= 170
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V2 <= 63
#> |   |   |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   |   |   |   [11] V2 > 63
#> |   |   |   |   |   |   |   [12] V7 <= 155
#> |   |   |   |   |   |   |   |   [13] V3 <= 18
#> |   |   |   |   |   |   |   |   |   [14] V2 <= 73 *
#> |   |   |   |   |   |   |   |   |   [15] V2 > 73 *
#> |   |   |   |   |   |   |   |   [16] V3 > 18 *
#> |   |   |   |   |   |   |   [17] V7 > 155 *
#> |   |   |   |   [18] V7 > 170
#> |   |   |   |   |   [19] V7 <= 190 *
#> |   |   |   |   |   [20] V7 > 190 *
#> |   |   |   [21] V5 > 16 *
#> |   |   [22] V5 > 171 *
#> |   [23] V6 > 0
#> |   |   [24] V5 <= 173
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V7 <= 139
#> |   |   |   |   |   [27] V7 <= 110 *
#> |   |   |   |   |   [28] V7 > 110
#> |   |   |   |   |   |   [29] V7 <= 118 *
#> |   |   |   |   |   |   [30] V7 > 118 *
#> |   |   |   |   [31] V7 > 139
#> |   |   |   |   |   [32] V2 <= 64 *
#> |   |   |   |   |   [33] V2 > 64
#> |   |   |   |   |   |   [34] V7 <= 147 *
#> |   |   |   |   |   |   [35] V7 > 147 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V2 <= 54
#> |   |   |   |   |   [38] V2 <= 43 *
#> |   |   |   |   |   [39] V2 > 43 *
#> |   |   |   |   [40] V2 > 54
#> |   |   |   |   |   [41] V5 <= 3
#> |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   [44] V5 <= 1
#> |   |   |   |   |   |   |   |   [45] V7 <= 146
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   |   |   |   |   |   [48] V7 > 146 *
#> |   |   |   |   |   |   |   [49] V5 > 1 *
#> |   |   |   |   |   [50] V5 > 3
#> |   |   |   |   |   |   [51] V5 <= 9
#> |   |   |   |   |   |   |   [52] V3 <= 11 *
#> |   |   |   |   |   |   |   [53] V3 > 11 *
#> |   |   |   |   |   |   [54] V5 > 9
#> |   |   |   |   |   |   |   [55] V5 <= 11 *
#> |   |   |   |   |   |   |   [56] V5 > 11 *
#> |   |   [57] V5 > 173 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V2 <= 60 *
#> |   |   |   |   [6] V2 > 60
#> |   |   |   |   |   [7] V5 <= 26
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   |   [10] V5 > 26 *
#> |   |   |   [11] V3 > 3
#> |   |   |   |   [12] V2 <= 67
#> |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   [15] V2 > 67
#> |   |   |   |   |   [16] V5 <= 8
#> |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   |   [19] V5 > 8
#> |   |   |   |   |   |   [20] V5 <= 80
#> |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   |   [23] V5 > 80 *
#> |   |   [24] V5 > 173 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V2 <= 66
#> |   |   |   |   [28] V3 <= 14
#> |   |   |   |   |   [29] V7 <= 127 *
#> |   |   |   |   |   [30] V7 > 127
#> |   |   |   |   |   |   [31] V5 <= 3 *
#> |   |   |   |   |   |   [32] V5 > 3 *
#> |   |   |   |   [33] V3 > 14 *
#> |   |   |   [34] V2 > 66
#> |   |   |   |   [35] V7 <= 159
#> |   |   |   |   |   [36] V5 <= 8 *
#> |   |   |   |   |   [37] V5 > 8 *
#> |   |   |   |   [38] V7 > 159 *
#> |   |   [39] V6 > 0
#> |   |   |   [40] V2 <= 84
#> |   |   |   |   [41] V2 <= 54
#> |   |   |   |   |   [42] V5 <= 3
#> |   |   |   |   |   |   [43] V2 <= 43 *
#> |   |   |   |   |   |   [44] V2 > 43 *
#> |   |   |   |   |   [45] V5 > 3 *
#> |   |   |   |   [46] V2 > 54
#> |   |   |   |   |   [47] V7 <= 185
#> |   |   |   |   |   |   [48] V2 <= 57 *
#> |   |   |   |   |   |   [49] V2 > 57
#> |   |   |   |   |   |   |   [50] V5 <= 1
#> |   |   |   |   |   |   |   |   [51] V7 <= 90 *
#> |   |   |   |   |   |   |   |   [52] V7 > 90
#> |   |   |   |   |   |   |   |   |   [53] V7 <= 136 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 136
#> |   |   |   |   |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   |   |   |   [57] V5 > 1
#> |   |   |   |   |   |   |   |   [58] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [59] V5 > 5
#> |   |   |   |   |   |   |   |   |   [60] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [61] V2 > 65
#> |   |   |   |   |   |   |   |   |   |   [62] V7 <= 127 *
#> |   |   |   |   |   |   |   |   |   |   [63] V7 > 127 *
#> |   |   |   |   |   [64] V7 > 185 *
#> |   |   |   [65] V2 > 84 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 123
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V7 <= 120 *
#> |   |   |   |   |   [7] V7 > 120
#> |   |   |   |   |   |   [8] V5 <= 4 *
#> |   |   |   |   |   |   [9] V5 > 4 *
#> |   |   |   |   [10] V3 > 6 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V2 <= 63
#> |   |   |   |   |   |   [14] V7 <= 154
#> |   |   |   |   |   |   |   [15] V2 <= 55 *
#> |   |   |   |   |   |   |   [16] V2 > 55 *
#> |   |   |   |   |   |   [17] V7 > 154 *
#> |   |   |   |   |   [18] V2 > 63
#> |   |   |   |   |   |   [19] V3 <= 5 *
#> |   |   |   |   |   |   [20] V3 > 5 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V2 <= 50 *
#> |   |   |   |   |   [23] V2 > 50
#> |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   [26] V5 <= 1
#> |   |   |   |   |   |   |   |   [27] V7 <= 145 *
#> |   |   |   |   |   |   |   |   [28] V7 > 145 *
#> |   |   |   |   |   |   |   [29] V5 > 1
#> |   |   |   |   |   |   |   |   [30] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [31] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [32] V7 > 150 *
#> |   |   |   |   |   |   |   |   [33] V5 > 10 *
#> |   |   [34] V5 > 123
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V3 <= 10
#> |   |   |   |   |   [38] V7 <= 144 *
#> |   |   |   |   |   [39] V7 > 144 *
#> |   |   |   |   [40] V3 > 10 *
#> |   [41] V2 > 72
#> |   |   [42] V5 <= 169
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V3 <= 3
#> |   |   |   |   |   [45] V7 <= 118 *
#> |   |   |   |   |   [46] V7 > 118 *
#> |   |   |   |   [47] V3 > 3
#> |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   [50] V2 <= 85 *
#> |   |   |   |   |   |   [51] V2 > 85 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V6 <= 0
#> |   |   |   |   |   [54] V3 <= 9 *
#> |   |   |   |   |   [55] V3 > 9 *
#> |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   [57] V3 <= 14
#> |   |   |   |   |   |   [58] V2 <= 81
#> |   |   |   |   |   |   |   [59] V5 <= 0 *
#> |   |   |   |   |   |   |   [60] V5 > 0 *
#> |   |   |   |   |   |   [61] V2 > 81 *
#> |   |   |   |   |   [62] V3 > 14 *
#> |   |   [63] V5 > 169 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 121
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V5 <= 2 *
#> |   |   |   |   |   [8] V5 > 2 *
#> |   |   |   [9] V7 > 121
#> |   |   |   |   [10] V3 <= 12
#> |   |   |   |   |   [11] V7 <= 148
#> |   |   |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   |   |   [14] V7 <= 138 *
#> |   |   |   |   |   |   |   [15] V7 > 138 *
#> |   |   |   |   |   [16] V7 > 148
#> |   |   |   |   |   |   [17] V2 <= 71 *
#> |   |   |   |   |   |   [18] V2 > 71
#> |   |   |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   [21] V3 > 12 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V7 <= 142
#> |   |   |   |   [24] V3 <= 3
#> |   |   |   |   |   [25] V5 <= 0 *
#> |   |   |   |   |   [26] V5 > 0 *
#> |   |   |   |   [27] V3 > 3
#> |   |   |   |   |   [28] V7 <= 132
#> |   |   |   |   |   |   [29] V7 <= 106 *
#> |   |   |   |   |   |   [30] V7 > 106
#> |   |   |   |   |   |   |   [31] V5 <= 8
#> |   |   |   |   |   |   |   |   [32] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 3 *
#> |   |   |   |   |   |   |   |   [35] V2 > 71 *
#> |   |   |   |   |   |   |   [36] V5 > 8 *
#> |   |   |   |   |   [37] V7 > 132 *
#> |   |   |   [38] V7 > 142
#> |   |   |   |   [39] V5 <= 11
#> |   |   |   |   |   [40] V2 <= 70
#> |   |   |   |   |   |   [41] V5 <= 1
#> |   |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   |   [43] V3 > 3 *
#> |   |   |   |   |   |   [44] V5 > 1
#> |   |   |   |   |   |   |   [45] V7 <= 160
#> |   |   |   |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [47] V6 > 0 *
#> |   |   |   |   |   |   |   [48] V7 > 160 *
#> |   |   |   |   |   [49] V2 > 70
#> |   |   |   |   |   |   [50] V5 <= 7
#> |   |   |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   |   |   [52] V3 > 4 *
#> |   |   |   |   |   |   [53] V5 > 7 *
#> |   |   |   |   [54] V5 > 11 *
#> |   [55] V5 > 173 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V5 <= 3 *
#> |   |   |   [5] V5 > 3 *
#> |   |   [6] V7 > 112
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V2 <= 59
#> |   |   |   |   |   [9] V7 <= 135 *
#> |   |   |   |   |   [10] V7 > 135
#> |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   [13] V2 > 59
#> |   |   |   |   |   [14] V5 <= 171
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   |   [17] V5 > 171 *
#> |   |   |   [18] V4 > 0
#> |   |   |   |   [19] V3 <= 19
#> |   |   |   |   |   [20] V7 <= 165
#> |   |   |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   |   |   [22] V3 <= 13
#> |   |   |   |   |   |   |   |   [23] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [24] V3 > 7 *
#> |   |   |   |   |   |   |   [25] V3 > 13 *
#> |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   [27] V3 <= 13
#> |   |   |   |   |   |   |   |   [28] V5 <= 4
#> |   |   |   |   |   |   |   |   |   [29] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   [30] V2 > 54
#> |   |   |   |   |   |   |   |   |   |   [31] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   |   [32] V2 > 59
#> |   |   |   |   |   |   |   |   |   |   |   [33] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   |   [34] V3 > 7 *
#> |   |   |   |   |   |   |   |   [35] V5 > 4 *
#> |   |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   |   [37] V7 > 165
#> |   |   |   |   |   |   [38] V2 <= 62 *
#> |   |   |   |   |   |   [39] V2 > 62 *
#> |   |   |   |   [40] V3 > 19 *
#> |   [41] V2 > 72
#> |   |   [42] V5 <= 173
#> |   |   |   [43] V3 <= 11
#> |   |   |   |   [44] V2 <= 85
#> |   |   |   |   |   [45] V4 <= 0
#> |   |   |   |   |   |   [46] V7 <= 128 *
#> |   |   |   |   |   |   [47] V7 > 128 *
#> |   |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   |   [49] V7 <= 126 *
#> |   |   |   |   |   |   [50] V7 > 126 *
#> |   |   |   |   [51] V2 > 85
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   [54] V3 > 11
#> |   |   |   |   [55] V5 <= 8 *
#> |   |   |   |   [56] V5 > 8 *
#> |   |   [57] V5 > 173 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1 *
#> |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   [9] V3 <= 8
#> |   |   |   |   |   |   [10] V5 <= 8 *
#> |   |   |   |   |   |   [11] V5 > 8 *
#> |   |   |   |   |   [12] V3 > 8 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V2 <= 54
#> |   |   |   |   |   [15] V7 <= 121 *
#> |   |   |   |   |   [16] V7 > 121
#> |   |   |   |   |   |   [17] V3 <= 5 *
#> |   |   |   |   |   |   [18] V3 > 5
#> |   |   |   |   |   |   |   [19] V2 <= 51 *
#> |   |   |   |   |   |   |   [20] V2 > 51 *
#> |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   [22] V3 <= 19
#> |   |   |   |   |   |   [23] V3 <= 13
#> |   |   |   |   |   |   |   [24] V7 <= 150
#> |   |   |   |   |   |   |   |   [25] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [26] V2 > 60
#> |   |   |   |   |   |   |   |   |   [27] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [28] V2 > 66
#> |   |   |   |   |   |   |   |   |   |   [29] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   |   [30] V2 > 67 *
#> |   |   |   |   |   |   |   [31] V7 > 150
#> |   |   |   |   |   |   |   |   [32] V5 <= 4
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 0 *
#> |   |   |   |   |   |   |   |   [35] V5 > 4 *
#> |   |   |   |   |   |   [36] V3 > 13
#> |   |   |   |   |   |   |   [37] V7 <= 130 *
#> |   |   |   |   |   |   |   [38] V7 > 130 *
#> |   |   |   |   |   [39] V3 > 19 *
#> |   |   [40] V2 > 72
#> |   |   |   [41] V6 <= 0
#> |   |   |   |   [42] V7 <= 124 *
#> |   |   |   |   [43] V7 > 124
#> |   |   |   |   |   [44] V5 <= 15
#> |   |   |   |   |   |   [45] V5 <= 7 *
#> |   |   |   |   |   |   [46] V5 > 7 *
#> |   |   |   |   |   [47] V5 > 15 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V2 <= 85
#> |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   [51] V2 <= 78 *
#> |   |   |   |   |   |   [52] V2 > 78 *
#> |   |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   |   [54] V7 <= 167
#> |   |   |   |   |   |   |   [55] V7 <= 126 *
#> |   |   |   |   |   |   |   [56] V7 > 126 *
#> |   |   |   |   |   |   [57] V7 > 167 *
#> |   |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 173 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 77 *
#> |   |   |   |   [6] V5 > 77 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V5 <= 1
#> |   |   |   |   |   [9] V3 <= 5 *
#> |   |   |   |   |   [10] V3 > 5 *
#> |   |   |   |   [11] V5 > 1 *
#> |   |   [12] V2 > 54
#> |   |   |   [13] V7 <= 166
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V5 <= 123
#> |   |   |   |   |   |   [16] V3 <= 2 *
#> |   |   |   |   |   |   [17] V3 > 2
#> |   |   |   |   |   |   |   [18] V5 <= 10 *
#> |   |   |   |   |   |   |   [19] V5 > 10 *
#> |   |   |   |   |   [20] V5 > 123
#> |   |   |   |   |   |   [21] V7 <= 145 *
#> |   |   |   |   |   |   [22] V7 > 145 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V3 <= 5 *
#> |   |   |   |   |   |   [26] V3 > 5
#> |   |   |   |   |   |   |   [27] V7 <= 132 *
#> |   |   |   |   |   |   |   [28] V7 > 132 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V5 <= 0 *
#> |   |   |   |   |   |   [31] V5 > 0
#> |   |   |   |   |   |   |   [32] V7 <= 150
#> |   |   |   |   |   |   |   |   [33] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [34] V3 > 13 *
#> |   |   |   |   |   |   |   [35] V7 > 150 *
#> |   |   |   [36] V7 > 166
#> |   |   |   |   [37] V4 <= 0 *
#> |   |   |   |   [38] V4 > 0 *
#> |   [39] V2 > 70
#> |   |   [40] V4 <= 0
#> |   |   |   [41] V5 <= 169
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V2 <= 79 *
#> |   |   |   |   |   [44] V2 > 79 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V5 <= 6 *
#> |   |   |   |   |   [47] V5 > 6
#> |   |   |   |   |   |   [48] V2 <= 78 *
#> |   |   |   |   |   |   [49] V2 > 78 *
#> |   |   |   [50] V5 > 169
#> |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V3 <= 4 *
#> |   |   |   |   |   [54] V3 > 4 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V5 <= 10
#> |   |   |   |   [57] V5 <= 1
#> |   |   |   |   |   [58] V7 <= 122 *
#> |   |   |   |   |   [59] V7 > 122 *
#> |   |   |   |   [60] V5 > 1
#> |   |   |   |   |   [61] V2 <= 75 *
#> |   |   |   |   |   [62] V2 > 75 *
#> |   |   |   [63] V5 > 10 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V7 <= 114
#> |   |   |   [4] V5 <= 59
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 7 *
#> |   |   |   |   |   [8] V5 > 7 *
#> |   |   |   [9] V5 > 59 *
#> |   |   [10] V7 > 114
#> |   |   |   [11] V5 <= 171
#> |   |   |   |   [12] V5 <= 14
#> |   |   |   |   |   [13] V5 <= 1
#> |   |   |   |   |   |   [14] V2 <= 74
#> |   |   |   |   |   |   |   [15] V3 <= 6
#> |   |   |   |   |   |   |   |   [16] V3 <= 3
#> |   |   |   |   |   |   |   |   |   [17] V3 <= 2 *
#> |   |   |   |   |   |   |   |   |   [18] V3 > 2 *
#> |   |   |   |   |   |   |   |   [19] V3 > 3 *
#> |   |   |   |   |   |   |   [20] V3 > 6
#> |   |   |   |   |   |   |   |   [21] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [22] V2 > 67 *
#> |   |   |   |   |   |   [23] V2 > 74 *
#> |   |   |   |   |   [24] V5 > 1
#> |   |   |   |   |   |   [25] V4 <= 0
#> |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   [28] V4 > 0
#> |   |   |   |   |   |   |   [29] V2 <= 69
#> |   |   |   |   |   |   |   |   [30] V2 <= 63
#> |   |   |   |   |   |   |   |   |   [31] V3 <= 14
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [33] V5 > 2
#> |   |   |   |   |   |   |   |   |   |   |   [34] V7 <= 145 *
#> |   |   |   |   |   |   |   |   |   |   |   [35] V7 > 145 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 14 *
#> |   |   |   |   |   |   |   |   [37] V2 > 63
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 150 *
#> |   |   |   |   |   |   |   [40] V2 > 69
#> |   |   |   |   |   |   |   |   [41] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [42] V3 > 10 *
#> |   |   |   |   [43] V5 > 14
#> |   |   |   |   |   [44] V3 <= 7 *
#> |   |   |   |   |   [45] V3 > 7 *
#> |   |   |   [46] V5 > 171
#> |   |   |   |   [47] V3 <= 1 *
#> |   |   |   |   [48] V3 > 1 *
#> |   [49] V2 > 78
#> |   |   [50] V4 <= 0
#> |   |   |   [51] V5 <= 173
#> |   |   |   |   [52] V5 <= 4 *
#> |   |   |   |   [53] V5 > 4
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V2 <= 85 *
#> |   |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   [58] V5 > 173 *
#> |   |   [59] V4 > 0
#> |   |   |   [60] V7 <= 126 *
#> |   |   |   [61] V7 > 126 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V3 <= 8 *
#> |   |   |   |   |   [8] V3 > 8 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 54
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120 *
#> |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   [16] V3 <= 2 *
#> |   |   |   |   |   [17] V3 > 2
#> |   |   |   |   |   |   [18] V2 <= 70
#> |   |   |   |   |   |   |   [19] V2 <= 68
#> |   |   |   |   |   |   |   |   [20] V5 <= 11
#> |   |   |   |   |   |   |   |   |   [21] V7 <= 146
#> |   |   |   |   |   |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   |   [23] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   |   [24] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [26] V7 > 146
#> |   |   |   |   |   |   |   |   |   |   [27] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [28] V5 > 1
#> |   |   |   |   |   |   |   |   |   |   |   [29] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   |   |   [30] V2 > 63 *
#> |   |   |   |   |   |   |   |   [31] V5 > 11 *
#> |   |   |   |   |   |   |   [32] V2 > 68 *
#> |   |   |   |   |   |   [33] V2 > 70 *
#> |   |   [34] V2 > 71
#> |   |   |   [35] V4 <= 0
#> |   |   |   |   [36] V3 <= 3
#> |   |   |   |   |   [37] V7 <= 116 *
#> |   |   |   |   |   [38] V7 > 116 *
#> |   |   |   |   [39] V3 > 3
#> |   |   |   |   |   [40] V3 <= 8
#> |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   |   [43] V5 <= 6 *
#> |   |   |   |   |   |   |   [44] V5 > 6 *
#> |   |   |   |   |   [45] V3 > 8 *
#> |   |   |   [46] V4 > 0
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V5 <= 2 *
#> |   |   |   |   |   [49] V5 > 2 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V2 <= 82
#> |   |   |   |   |   |   [52] V7 <= 170
#> |   |   |   |   |   |   |   [53] V2 <= 78
#> |   |   |   |   |   |   |   |   [54] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [55] V2 > 73 *
#> |   |   |   |   |   |   |   [56] V2 > 78 *
#> |   |   |   |   |   |   [57] V7 > 170 *
#> |   |   |   |   |   [58] V2 > 82 *
#> |   [59] V5 > 173 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V5 <= 99
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V5 > 99
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V2 > 64
#> |   |   |   |   [12] V5 <= 171
#> |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   [15] V5 > 171 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V7 <= 114 *
#> |   |   |   [18] V7 > 114
#> |   |   |   |   [19] V5 <= 1
#> |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   [22] V5 <= 0
#> |   |   |   |   |   |   |   [23] V7 <= 138 *
#> |   |   |   |   |   |   |   [24] V7 > 138 *
#> |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   [26] V5 > 1
#> |   |   |   |   |   [27] V7 <= 160
#> |   |   |   |   |   |   [28] V7 <= 132
#> |   |   |   |   |   |   |   [29] V7 <= 125 *
#> |   |   |   |   |   |   |   [30] V7 > 125 *
#> |   |   |   |   |   |   [31] V7 > 132
#> |   |   |   |   |   |   |   [32] V5 <= 10
#> |   |   |   |   |   |   |   |   [33] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [34] V7 > 147 *
#> |   |   |   |   |   |   |   [35] V5 > 10 *
#> |   |   |   |   |   [36] V7 > 160 *
#> |   [37] V2 > 70
#> |   |   [38] V2 <= 87
#> |   |   |   [39] V5 <= 173
#> |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   [43] V2 <= 82
#> |   |   |   |   |   |   |   [44] V5 <= 6 *
#> |   |   |   |   |   |   |   [45] V5 > 6 *
#> |   |   |   |   |   |   [46] V2 > 82 *
#> |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   [49] V2 <= 72 *
#> |   |   |   |   |   |   [50] V2 > 72 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V7 <= 180
#> |   |   |   |   |   |   |   [53] V3 <= 9
#> |   |   |   |   |   |   |   |   [54] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [55] V5 > 0 *
#> |   |   |   |   |   |   |   [56] V3 > 9 *
#> |   |   |   |   |   |   [57] V7 > 180 *
#> |   |   |   [58] V5 > 173 *
#> |   |   [59] V2 > 87
#> |   |   |   [60] V6 <= 0 *
#> |   |   |   [61] V6 > 0
#> |   |   |   |   [62] V2 <= 89 *
#> |   |   |   |   [63] V2 > 89 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V5 <= 13
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V2 <= 55 *
#> |   |   |   |   |   |   |   [10] V2 > 55 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V5 <= 1
#> |   |   |   |   |   |   |   |   [13] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [14] V2 > 54 *
#> |   |   |   |   |   |   |   [15] V5 > 1
#> |   |   |   |   |   |   |   |   [16] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [17] V2 > 54 *
#> |   |   |   |   [18] V5 > 13 *
#> |   |   |   [19] V2 > 60
#> |   |   |   |   [20] V5 <= 1
#> |   |   |   |   |   [21] V7 <= 130 *
#> |   |   |   |   |   [22] V7 > 130 *
#> |   |   |   |   [23] V5 > 1
#> |   |   |   |   |   [24] V3 <= 8 *
#> |   |   |   |   |   [25] V3 > 8
#> |   |   |   |   |   |   [26] V3 <= 12 *
#> |   |   |   |   |   |   [27] V3 > 12 *
#> |   |   [28] V2 > 66
#> |   |   |   [29] V3 <= 2
#> |   |   |   |   [30] V3 <= 1
#> |   |   |   |   |   [31] V7 <= 110 *
#> |   |   |   |   |   [32] V7 > 110 *
#> |   |   |   |   [33] V3 > 1 *
#> |   |   |   [34] V3 > 2
#> |   |   |   |   [35] V5 <= 14
#> |   |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V7 <= 117 *
#> |   |   |   |   |   |   |   [40] V7 > 117 *
#> |   |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   |   |   [43] V7 <= 142 *
#> |   |   |   |   |   |   |   [44] V7 > 142
#> |   |   |   |   |   |   |   |   [45] V2 <= 76 *
#> |   |   |   |   |   |   |   |   [46] V2 > 76 *
#> |   |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   |   [48] V2 <= 72
#> |   |   |   |   |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   |   [51] V2 > 72
#> |   |   |   |   |   |   |   |   [52] V7 <= 167
#> |   |   |   |   |   |   |   |   |   [53] V2 <= 84
#> |   |   |   |   |   |   |   |   |   |   [54] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   |   |   |   |   |   [56] V2 > 84 *
#> |   |   |   |   |   |   |   |   [57] V7 > 167 *
#> |   |   |   |   [58] V5 > 14
#> |   |   |   |   |   [59] V3 <= 7 *
#> |   |   |   |   |   [60] V3 > 7 *
#> |   [61] V5 > 173 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V3 <= 8
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V7 <= 131 *
#> |   |   |   |   |   |   [8] V7 > 131 *
#> |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V3 > 8 *
#> |   |   |   [11] V5 > 171
#> |   |   |   |   [12] V7 <= 166 *
#> |   |   |   |   [13] V7 > 166 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V5 <= 1
#> |   |   |   |   [16] V7 <= 110 *
#> |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   [18] V3 <= 8
#> |   |   |   |   |   |   [19] V2 <= 58
#> |   |   |   |   |   |   |   [20] V2 <= 43 *
#> |   |   |   |   |   |   |   [21] V2 > 43 *
#> |   |   |   |   |   |   [22] V2 > 58
#> |   |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   |   [25] V3 > 8 *
#> |   |   |   [26] V5 > 1
#> |   |   |   |   [27] V2 <= 69
#> |   |   |   |   |   [28] V7 <= 147
#> |   |   |   |   |   |   [29] V3 <= 7 *
#> |   |   |   |   |   |   [30] V3 > 7
#> |   |   |   |   |   |   |   [31] V3 <= 15
#> |   |   |   |   |   |   |   |   [32] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   |   |   |   |   [34] V3 > 15 *
#> |   |   |   |   |   [35] V7 > 147
#> |   |   |   |   |   |   [36] V5 <= 10
#> |   |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   |   [39] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [40] V2 > 58 *
#> |   |   |   |   |   |   [41] V5 > 10 *
#> |   |   |   |   [42] V2 > 69 *
#> |   [43] V2 > 72
#> |   |   [44] V7 <= 104 *
#> |   |   [45] V7 > 104
#> |   |   |   [46] V5 <= 168
#> |   |   |   |   [47] V3 <= 8
#> |   |   |   |   |   [48] V2 <= 78
#> |   |   |   |   |   |   [49] V5 <= 1 *
#> |   |   |   |   |   |   [50] V5 > 1 *
#> |   |   |   |   |   [51] V2 > 78
#> |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   |   [54] V4 <= 0
#> |   |   |   |   |   |   |   |   [55] V2 <= 84 *
#> |   |   |   |   |   |   |   |   [56] V2 > 84 *
#> |   |   |   |   |   |   |   [57] V4 > 0 *
#> |   |   |   |   [58] V3 > 8
#> |   |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   |   [60] V6 > 0
#> |   |   |   |   |   |   [61] V2 <= 77 *
#> |   |   |   |   |   |   [62] V2 > 77 *
#> |   |   |   [63] V5 > 168 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V3 <= 8
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V7 <= 145 *
#> |   |   |   |   |   |   [8] V7 > 145 *
#> |   |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   |   [10] V2 <= 68 *
#> |   |   |   |   |   |   [11] V2 > 68 *
#> |   |   |   |   [12] V3 > 8 *
#> |   |   |   [13] V2 > 71
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 4
#> |   |   |   |   |   |   [17] V7 <= 128 *
#> |   |   |   |   |   |   [18] V7 > 128 *
#> |   |   |   |   |   [19] V3 > 4 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 85
#> |   |   |   |   [22] V2 <= 54
#> |   |   |   |   |   [23] V2 <= 52
#> |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   [25] V7 <= 150 *
#> |   |   |   |   |   |   |   [26] V7 > 150 *
#> |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   [28] V2 > 52 *
#> |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V5 <= 6
#> |   |   |   |   |   |   |   [32] V2 <= 65 *
#> |   |   |   |   |   |   |   [33] V2 > 65
#> |   |   |   |   |   |   |   |   [34] V2 <= 68 *
#> |   |   |   |   |   |   |   |   [35] V2 > 68 *
#> |   |   |   |   |   |   [36] V5 > 6
#> |   |   |   |   |   |   |   [37] V2 <= 70 *
#> |   |   |   |   |   |   |   [38] V2 > 70 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V2 <= 79
#> |   |   |   |   |   |   |   [41] V2 <= 72
#> |   |   |   |   |   |   |   |   [42] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [43] V2 > 57
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [46] V2 <= 66
#> |   |   |   |   |   |   |   |   |   |   |   [47] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   |   [48] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   |   [49] V2 > 66 *
#> |   |   |   |   |   |   |   [50] V2 > 72
#> |   |   |   |   |   |   |   |   [51] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [52] V3 > 12 *
#> |   |   |   |   |   |   [53] V2 > 79 *
#> |   |   |   [54] V2 > 85 *
#> |   [55] V5 > 173 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 123
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 13 *
#> |   |   |   |   |   [8] V5 > 13 *
#> |   |   |   [9] V5 > 123
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V7 <= 158 *
#> |   |   |   |   |   [12] V7 > 158 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 55 *
#> |   |   |   |   |   [15] V2 > 55 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V5 <= 6
#> |   |   |   |   [18] V2 <= 59
#> |   |   |   |   |   [19] V5 <= 0
#> |   |   |   |   |   |   [20] V7 <= 140 *
#> |   |   |   |   |   |   [21] V7 > 140 *
#> |   |   |   |   |   [22] V5 > 0
#> |   |   |   |   |   |   [23] V7 <= 130 *
#> |   |   |   |   |   |   [24] V7 > 130
#> |   |   |   |   |   |   |   [25] V2 <= 52 *
#> |   |   |   |   |   |   |   [26] V2 > 52 *
#> |   |   |   |   [27] V2 > 59
#> |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V2 <= 65 *
#> |   |   |   |   |   |   [31] V2 > 65
#> |   |   |   |   |   |   |   [32] V2 <= 68 *
#> |   |   |   |   |   |   |   [33] V2 > 68 *
#> |   |   |   [34] V5 > 6
#> |   |   |   |   [35] V3 <= 10 *
#> |   |   |   |   [36] V3 > 10
#> |   |   |   |   |   [37] V7 <= 132
#> |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   [39] V6 > 0 *
#> |   |   |   |   |   [40] V7 > 132
#> |   |   |   |   |   |   [41] V7 <= 170 *
#> |   |   |   |   |   |   [42] V7 > 170 *
#> |   [43] V2 > 71
#> |   |   [44] V2 <= 87
#> |   |   |   [45] V5 <= 173
#> |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   [47] V5 <= 10
#> |   |   |   |   |   |   [48] V5 <= 7 *
#> |   |   |   |   |   |   [49] V5 > 7 *
#> |   |   |   |   |   [50] V5 > 10 *
#> |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   [52] V4 <= 0
#> |   |   |   |   |   |   [53] V5 <= 32 *
#> |   |   |   |   |   |   [54] V5 > 32 *
#> |   |   |   |   |   [55] V4 > 0
#> |   |   |   |   |   |   [56] V3 <= 9
#> |   |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   |   [59] V3 > 9
#> |   |   |   |   |   |   |   [60] V7 <= 127 *
#> |   |   |   |   |   |   |   [61] V7 > 127 *
#> |   |   |   [62] V5 > 173 *
#> |   |   [63] V2 > 87
#> |   |   |   [64] V3 <= 3 *
#> |   |   |   [65] V3 > 3 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V7 <= 121
#> |   |   |   [4] V2 <= 81
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V2 <= 70 *
#> |   |   |   |   |   [7] V2 > 70 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V5 <= 8
#> |   |   |   |   |   |   [10] V5 <= 2
#> |   |   |   |   |   |   |   [11] V3 <= 4 *
#> |   |   |   |   |   |   |   [12] V3 > 4 *
#> |   |   |   |   |   |   [13] V5 > 2 *
#> |   |   |   |   |   [14] V5 > 8 *
#> |   |   |   [15] V2 > 81
#> |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   [17] V6 > 0 *
#> |   |   [18] V7 > 121
#> |   |   |   [19] V2 <= 85
#> |   |   |   |   [20] V4 <= 0
#> |   |   |   |   |   [21] V2 <= 64
#> |   |   |   |   |   |   [22] V7 <= 140 *
#> |   |   |   |   |   |   [23] V7 > 140 *
#> |   |   |   |   |   [24] V2 > 64
#> |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   [27] V5 <= 57 *
#> |   |   |   |   |   |   |   [28] V5 > 57 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   |   [32] V3 > 3
#> |   |   |   |   |   |   |   [33] V5 <= 10
#> |   |   |   |   |   |   |   |   [34] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 149 *
#> |   |   |   |   |   |   |   |   [37] V3 > 8 *
#> |   |   |   |   |   |   |   [38] V5 > 10 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V3 <= 7
#> |   |   |   |   |   |   |   [41] V7 <= 160
#> |   |   |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [43] V3 > 3 *
#> |   |   |   |   |   |   |   [44] V7 > 160 *
#> |   |   |   |   |   |   [45] V3 > 7
#> |   |   |   |   |   |   |   [46] V3 <= 9 *
#> |   |   |   |   |   |   |   [47] V3 > 9
#> |   |   |   |   |   |   |   |   [48] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [49] V3 > 11
#> |   |   |   |   |   |   |   |   |   [50] V2 <= 70 *
#> |   |   |   |   |   |   |   |   |   [51] V2 > 70 *
#> |   |   |   [52] V2 > 85
#> |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   [54] V3 > 6 *
#> |   [55] V5 > 173 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V7 <= 110
#> |   |   |   [4] V2 <= 55 *
#> |   |   |   [5] V2 > 55
#> |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   [7] V3 > 3 *
#> |   |   [8] V7 > 110
#> |   |   |   [9] V5 <= 169
#> |   |   |   |   [10] V2 <= 63
#> |   |   |   |   |   [11] V5 <= 13
#> |   |   |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   |   |   [13] V2 <= 40 *
#> |   |   |   |   |   |   |   [14] V2 > 40
#> |   |   |   |   |   |   |   |   [15] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [16] V5 > 1 *
#> |   |   |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   |   |   [18] V3 <= 3 *
#> |   |   |   |   |   |   |   [19] V3 > 3
#> |   |   |   |   |   |   |   |   [20] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [21] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [22] V3 > 4 *
#> |   |   |   |   |   |   |   |   [23] V3 > 7
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 154 *
#> |   |   |   |   |   |   |   |   |   [25] V7 > 154 *
#> |   |   |   |   |   [26] V5 > 13 *
#> |   |   |   |   [27] V2 > 63
#> |   |   |   |   |   [28] V5 <= 13
#> |   |   |   |   |   |   [29] V4 <= 0 *
#> |   |   |   |   |   |   [30] V4 > 0
#> |   |   |   |   |   |   |   [31] V2 <= 68
#> |   |   |   |   |   |   |   |   [32] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [33] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [34] V3 > 7 *
#> |   |   |   |   |   |   |   |   [35] V3 > 13 *
#> |   |   |   |   |   |   |   [36] V2 > 68 *
#> |   |   |   |   |   [37] V5 > 13 *
#> |   |   |   [38] V5 > 169 *
#> |   [39] V2 > 70
#> |   |   [40] V5 <= 168
#> |   |   |   [41] V3 <= 13
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V4 <= 0
#> |   |   |   |   |   |   [44] V2 <= 79 *
#> |   |   |   |   |   |   [45] V2 > 79 *
#> |   |   |   |   |   [46] V4 > 0
#> |   |   |   |   |   |   [47] V5 <= 4 *
#> |   |   |   |   |   |   [48] V5 > 4 *
#> |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   [51] V5 <= 4 *
#> |   |   |   |   |   |   [52] V5 > 4
#> |   |   |   |   |   |   |   [53] V5 <= 8 *
#> |   |   |   |   |   |   |   [54] V5 > 8
#> |   |   |   |   |   |   |   |   [55] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [56] V3 > 6 *
#> |   |   |   |   |   [57] V4 > 0
#> |   |   |   |   |   |   [58] V3 <= 5
#> |   |   |   |   |   |   |   [59] V3 <= 3 *
#> |   |   |   |   |   |   |   [60] V3 > 3 *
#> |   |   |   |   |   |   [61] V3 > 5 *
#> |   |   |   [62] V3 > 13 *
#> |   |   [63] V5 > 168
#> |   |   |   [64] V2 <= 73 *
#> |   |   |   [65] V2 > 73 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 59 *
#> |   |   |   |   |   [8] V2 > 59 *
#> |   |   |   [9] V2 > 64
#> |   |   |   |   [10] V7 <= 162
#> |   |   |   |   |   [11] V2 <= 82
#> |   |   |   |   |   |   [12] V7 <= 128 *
#> |   |   |   |   |   |   [13] V7 > 128
#> |   |   |   |   |   |   |   [14] V2 <= 71 *
#> |   |   |   |   |   |   |   [15] V2 > 71 *
#> |   |   |   |   |   [16] V2 > 82
#> |   |   |   |   |   |   [17] V7 <= 135 *
#> |   |   |   |   |   |   [18] V7 > 135 *
#> |   |   |   |   [19] V7 > 162 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 112
#> |   |   |   |   [22] V2 <= 78
#> |   |   |   |   |   [23] V3 <= 7 *
#> |   |   |   |   |   [24] V3 > 7 *
#> |   |   |   |   [25] V2 > 78 *
#> |   |   |   [26] V7 > 112
#> |   |   |   |   [27] V2 <= 70
#> |   |   |   |   |   [28] V2 <= 51
#> |   |   |   |   |   |   [29] V7 <= 141 *
#> |   |   |   |   |   |   [30] V7 > 141 *
#> |   |   |   |   |   [31] V2 > 51
#> |   |   |   |   |   |   [32] V7 <= 172
#> |   |   |   |   |   |   |   [33] V5 <= 12
#> |   |   |   |   |   |   |   |   [34] V2 <= 66
#> |   |   |   |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [36] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   |   [37] V2 > 55 *
#> |   |   |   |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [39] V5 <= 5
#> |   |   |   |   |   |   |   |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   |   [41] V7 > 130 *
#> |   |   |   |   |   |   |   |   |   |   [42] V5 > 5 *
#> |   |   |   |   |   |   |   |   [43] V2 > 66 *
#> |   |   |   |   |   |   |   [44] V5 > 12 *
#> |   |   |   |   |   |   [45] V7 > 172 *
#> |   |   |   |   [46] V2 > 70
#> |   |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   |   [48] V2 <= 76 *
#> |   |   |   |   |   |   [49] V2 > 76 *
#> |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   [51] V5 <= 1
#> |   |   |   |   |   |   |   [52] V2 <= 76 *
#> |   |   |   |   |   |   |   [53] V2 > 76 *
#> |   |   |   |   |   |   [54] V5 > 1
#> |   |   |   |   |   |   |   [55] V3 <= 12 *
#> |   |   |   |   |   |   |   [56] V3 > 12 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V2 <= 64 *
#> |   |   |   |   [6] V2 > 64
#> |   |   |   |   |   [7] V5 <= 2 *
#> |   |   |   |   |   [8] V5 > 2 *
#> |   |   |   [9] V3 > 3
#> |   |   |   |   [10] V3 <= 12
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V7 <= 147 *
#> |   |   |   |   |   |   [13] V7 > 147 *
#> |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   [15] V7 <= 128 *
#> |   |   |   |   |   |   [16] V7 > 128
#> |   |   |   |   |   |   |   [17] V2 <= 61 *
#> |   |   |   |   |   |   |   [18] V2 > 61
#> |   |   |   |   |   |   |   |   [19] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [20] V7 > 147 *
#> |   |   |   |   [21] V3 > 12 *
#> |   |   [22] V5 > 169
#> |   |   |   [23] V2 <= 79
#> |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V3 <= 10
#> |   |   |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   |   |   [28] V3 > 3 *
#> |   |   |   |   |   [29] V3 > 10 *
#> |   |   |   [30] V2 > 79 *
#> |   [31] V4 > 0
#> |   |   [32] V6 <= 0
#> |   |   |   [33] V2 <= 79
#> |   |   |   |   [34] V5 <= 6
#> |   |   |   |   |   [35] V7 <= 135 *
#> |   |   |   |   |   [36] V7 > 135
#> |   |   |   |   |   |   [37] V5 <= 2 *
#> |   |   |   |   |   |   [38] V5 > 2 *
#> |   |   |   |   [39] V5 > 6
#> |   |   |   |   |   [40] V2 <= 60 *
#> |   |   |   |   |   [41] V2 > 60
#> |   |   |   |   |   |   [42] V2 <= 67 *
#> |   |   |   |   |   |   [43] V2 > 67 *
#> |   |   |   [44] V2 > 79 *
#> |   |   [45] V6 > 0
#> |   |   |   [46] V7 <= 112 *
#> |   |   |   [47] V7 > 112
#> |   |   |   |   [48] V2 <= 72
#> |   |   |   |   |   [49] V3 <= 15
#> |   |   |   |   |   |   [50] V3 <= 7
#> |   |   |   |   |   |   |   [51] V3 <= 2 *
#> |   |   |   |   |   |   |   [52] V3 > 2
#> |   |   |   |   |   |   |   |   [53] V7 <= 150
#> |   |   |   |   |   |   |   |   |   [54] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [55] V7 > 130 *
#> |   |   |   |   |   |   |   |   [56] V7 > 150 *
#> |   |   |   |   |   |   [57] V3 > 7
#> |   |   |   |   |   |   |   [58] V5 <= 9
#> |   |   |   |   |   |   |   |   [59] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [60] V3 > 9 *
#> |   |   |   |   |   |   |   [61] V5 > 9 *
#> |   |   |   |   |   [62] V3 > 15 *
#> |   |   |   |   [63] V2 > 72
#> |   |   |   |   |   [64] V2 <= 79 *
#> |   |   |   |   |   [65] V2 > 79 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 110 *
#> |   |   |   [5] V7 > 110
#> |   |   |   |   [6] V2 <= 59
#> |   |   |   |   |   [7] V5 <= 169 *
#> |   |   |   |   |   [8] V5 > 169
#> |   |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   |   [11] V2 > 59
#> |   |   |   |   |   [12] V7 <= 150
#> |   |   |   |   |   |   [13] V5 <= 123 *
#> |   |   |   |   |   |   [14] V5 > 123 *
#> |   |   |   |   |   [15] V7 > 150 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V6 <= 0
#> |   |   |   |   [18] V3 <= 4
#> |   |   |   |   |   [19] V2 <= 61 *
#> |   |   |   |   |   [20] V2 > 61 *
#> |   |   |   |   [21] V3 > 4
#> |   |   |   |   |   [22] V7 <= 160
#> |   |   |   |   |   |   [23] V7 <= 121 *
#> |   |   |   |   |   |   [24] V7 > 121 *
#> |   |   |   |   |   [25] V7 > 160 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V7 <= 114 *
#> |   |   |   |   [28] V7 > 114
#> |   |   |   |   |   [29] V2 <= 54
#> |   |   |   |   |   |   [30] V2 <= 43 *
#> |   |   |   |   |   |   [31] V2 > 43 *
#> |   |   |   |   |   [32] V2 > 54
#> |   |   |   |   |   |   [33] V3 <= 6 *
#> |   |   |   |   |   |   [34] V3 > 6
#> |   |   |   |   |   |   |   [35] V2 <= 61 *
#> |   |   |   |   |   |   |   [36] V2 > 61
#> |   |   |   |   |   |   |   |   [37] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [38] V7 > 140 *
#> |   [39] V2 > 70
#> |   |   [40] V5 <= 173
#> |   |   |   [41] V2 <= 85
#> |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   [43] V6 <= 0 *
#> |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   [45] V2 <= 73 *
#> |   |   |   |   |   |   [46] V2 > 73
#> |   |   |   |   |   |   |   [47] V7 <= 145 *
#> |   |   |   |   |   |   |   [48] V7 > 145 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V2 <= 79
#> |   |   |   |   |   |   [51] V2 <= 72 *
#> |   |   |   |   |   |   [52] V2 > 72
#> |   |   |   |   |   |   |   [53] V7 <= 130 *
#> |   |   |   |   |   |   |   [54] V7 > 130
#> |   |   |   |   |   |   |   |   [55] V7 <= 152 *
#> |   |   |   |   |   |   |   |   [56] V7 > 152 *
#> |   |   |   |   |   [57] V2 > 79 *
#> |   |   |   [58] V2 > 85
#> |   |   |   |   [59] V4 <= 0
#> |   |   |   |   |   [60] V5 <= 29 *
#> |   |   |   |   |   [61] V5 > 29 *
#> |   |   |   |   [62] V4 > 0 *
#> |   |   [63] V5 > 173 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V7 <= 160 *
#> |   |   |   |   |   |   [9] V7 > 160 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V5 <= 2
#> |   |   |   |   |   |   [12] V2 <= 43 *
#> |   |   |   |   |   |   [13] V2 > 43 *
#> |   |   |   |   |   [14] V5 > 2 *
#> |   |   |   [15] V5 > 115
#> |   |   |   |   [16] V2 <= 49 *
#> |   |   |   |   [17] V2 > 49 *
#> |   |   [18] V2 > 54
#> |   |   |   [19] V7 <= 90 *
#> |   |   |   [20] V7 > 90
#> |   |   |   |   [21] V5 <= 171
#> |   |   |   |   |   [22] V4 <= 0
#> |   |   |   |   |   |   [23] V3 <= 8
#> |   |   |   |   |   |   |   [24] V3 <= 2 *
#> |   |   |   |   |   |   |   [25] V3 > 2
#> |   |   |   |   |   |   |   |   [26] V7 <= 149 *
#> |   |   |   |   |   |   |   |   [27] V7 > 149 *
#> |   |   |   |   |   |   [28] V3 > 8 *
#> |   |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   |   [30] V2 <= 66
#> |   |   |   |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   |   |   |   [32] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [33] V3 > 9 *
#> |   |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   |   [35] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [36] V7 > 133
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 60 *
#> |   |   |   |   |   |   [39] V2 > 66
#> |   |   |   |   |   |   |   [40] V5 <= 9
#> |   |   |   |   |   |   |   |   [41] V5 <= 2
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 145 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 145 *
#> |   |   |   |   |   |   |   |   [44] V5 > 2 *
#> |   |   |   |   |   |   |   [45] V5 > 9 *
#> |   |   |   |   [46] V5 > 171
#> |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   [49] V3 <= 9 *
#> |   |   |   |   |   |   [50] V3 > 9 *
#> |   [51] V2 > 74
#> |   |   [52] V5 <= 173
#> |   |   |   [53] V6 <= 0
#> |   |   |   |   [54] V5 <= 15
#> |   |   |   |   |   [55] V2 <= 79 *
#> |   |   |   |   |   [56] V2 > 79 *
#> |   |   |   |   [57] V5 > 15 *
#> |   |   |   [58] V6 > 0
#> |   |   |   |   [59] V3 <= 4
#> |   |   |   |   |   [60] V4 <= 0
#> |   |   |   |   |   |   [61] V2 <= 84 *
#> |   |   |   |   |   |   [62] V2 > 84 *
#> |   |   |   |   |   [63] V4 > 0 *
#> |   |   |   |   [64] V3 > 4
#> |   |   |   |   |   [65] V2 <= 87
#> |   |   |   |   |   |   [66] V5 <= 6 *
#> |   |   |   |   |   |   [67] V5 > 6
#> |   |   |   |   |   |   |   [68] V3 <= 9 *
#> |   |   |   |   |   |   |   [69] V3 > 9 *
#> |   |   |   |   |   [70] V2 > 87 *
#> |   |   [71] V5 > 173 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 168
#> |   |   |   |   [5] V5 <= 16 *
#> |   |   |   |   [6] V5 > 16
#> |   |   |   |   |   [7] V7 <= 130 *
#> |   |   |   |   |   [8] V7 > 130 *
#> |   |   |   [9] V5 > 168 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V3 <= 19
#> |   |   |   |   [12] V5 <= 1 *
#> |   |   |   |   [13] V5 > 1
#> |   |   |   |   |   [14] V3 <= 12
#> |   |   |   |   |   |   [15] V3 <= 5 *
#> |   |   |   |   |   |   [16] V3 > 5
#> |   |   |   |   |   |   |   [17] V7 <= 142 *
#> |   |   |   |   |   |   |   [18] V7 > 142 *
#> |   |   |   |   |   [19] V3 > 12
#> |   |   |   |   |   |   [20] V2 <= 59 *
#> |   |   |   |   |   |   [21] V2 > 59 *
#> |   |   |   [22] V3 > 19 *
#> |   [23] V6 > 0
#> |   |   [24] V5 <= 128
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V3 <= 4
#> |   |   |   |   |   [27] V5 <= 12
#> |   |   |   |   |   |   [28] V7 <= 116 *
#> |   |   |   |   |   |   [29] V7 > 116 *
#> |   |   |   |   |   [30] V5 > 12 *
#> |   |   |   |   [31] V3 > 4
#> |   |   |   |   |   [32] V2 <= 67 *
#> |   |   |   |   |   [33] V2 > 67
#> |   |   |   |   |   |   [34] V3 <= 8 *
#> |   |   |   |   |   |   [35] V3 > 8 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V7 <= 112
#> |   |   |   |   |   [38] V3 <= 3 *
#> |   |   |   |   |   [39] V3 > 3
#> |   |   |   |   |   |   [40] V3 <= 7 *
#> |   |   |   |   |   |   [41] V3 > 7 *
#> |   |   |   |   [42] V7 > 112
#> |   |   |   |   |   [43] V3 <= 20
#> |   |   |   |   |   |   [44] V2 <= 72
#> |   |   |   |   |   |   |   [45] V7 <= 133
#> |   |   |   |   |   |   |   |   [46] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [47] V3 > 9 *
#> |   |   |   |   |   |   |   [48] V7 > 133
#> |   |   |   |   |   |   |   |   [49] V7 <= 141 *
#> |   |   |   |   |   |   |   |   [50] V7 > 141
#> |   |   |   |   |   |   |   |   |   [51] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [52] V5 > 1
#> |   |   |   |   |   |   |   |   |   |   [53] V7 <= 169 *
#> |   |   |   |   |   |   |   |   |   |   [54] V7 > 169 *
#> |   |   |   |   |   |   [55] V2 > 72
#> |   |   |   |   |   |   |   [56] V3 <= 9 *
#> |   |   |   |   |   |   |   [57] V3 > 9 *
#> |   |   |   |   |   [58] V3 > 20 *
#> |   |   [59] V5 > 128
#> |   |   |   [60] V7 <= 155 *
#> |   |   |   [61] V7 > 155 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   [7] V2 <= 67 *
#> |   |   |   |   |   [8] V2 > 67
#> |   |   |   |   |   |   [9] V5 <= 15 *
#> |   |   |   |   |   |   [10] V5 > 15 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   |   [14] V3 <= 6
#> |   |   |   |   |   |   |   [15] V5 <= 5 *
#> |   |   |   |   |   |   |   [16] V5 > 5 *
#> |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V7 <= 92 *
#> |   |   |   [20] V7 > 92
#> |   |   |   |   [21] V2 <= 72
#> |   |   |   |   |   [22] V5 <= 3
#> |   |   |   |   |   |   [23] V3 <= 8
#> |   |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   |   [25] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [26] V7 > 140 *
#> |   |   |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   |   |   [28] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [29] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [30] V7 > 140 *
#> |   |   |   |   |   |   |   |   [31] V5 > 0 *
#> |   |   |   |   |   |   [32] V3 > 8 *
#> |   |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   |   [34] V2 <= 54 *
#> |   |   |   |   |   |   [35] V2 > 54
#> |   |   |   |   |   |   |   [36] V2 <= 58 *
#> |   |   |   |   |   |   |   [37] V2 > 58
#> |   |   |   |   |   |   |   |   [38] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [39] V2 > 63
#> |   |   |   |   |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [41] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   |   [42] V3 > 13 *
#> |   |   |   |   |   |   |   |   |   [43] V6 > 0 *
#> |   |   |   |   [44] V2 > 72
#> |   |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   |   [46] V2 <= 78 *
#> |   |   |   |   |   |   [47] V2 > 78 *
#> |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   [49] V5 <= 8
#> |   |   |   |   |   |   |   [50] V5 <= 2
#> |   |   |   |   |   |   |   |   [51] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [52] V7 > 130 *
#> |   |   |   |   |   |   |   [53] V5 > 2 *
#> |   |   |   |   |   |   [54] V5 > 8 *
#> |   [55] V5 > 169
#> |   |   [56] V6 <= 0 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V3 <= 10
#> |   |   |   |   [59] V3 <= 1 *
#> |   |   |   |   [60] V3 > 1 *
#> |   |   |   [61] V3 > 10 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 11
#> |   |   |   |   |   [6] V7 <= 162
#> |   |   |   |   |   |   [7] V4 <= 0 *
#> |   |   |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   |   |   [9] V5 <= 7
#> |   |   |   |   |   |   |   |   [10] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [11] V3 > 5 *
#> |   |   |   |   |   |   |   [12] V5 > 7 *
#> |   |   |   |   |   [13] V7 > 162 *
#> |   |   |   |   [14] V5 > 11 *
#> |   |   |   [15] V6 > 0
#> |   |   |   |   [16] V7 <= 110 *
#> |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   |   [20] V3 <= 14
#> |   |   |   |   |   |   |   [21] V7 <= 130 *
#> |   |   |   |   |   |   |   [22] V7 > 130
#> |   |   |   |   |   |   |   |   [23] V3 <= 9
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 141 *
#> |   |   |   |   |   |   |   |   |   [25] V7 > 141 *
#> |   |   |   |   |   |   |   |   [26] V3 > 9 *
#> |   |   |   |   |   |   [27] V3 > 14 *
#> |   |   [28] V2 > 66
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V3 <= 2
#> |   |   |   |   |   [31] V5 <= 5 *
#> |   |   |   |   |   [32] V5 > 5 *
#> |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V7 <= 117 *
#> |   |   |   |   |   |   [37] V7 > 117
#> |   |   |   |   |   |   |   [38] V3 <= 5 *
#> |   |   |   |   |   |   |   [39] V3 > 5 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V2 <= 73
#> |   |   |   |   |   |   [43] V5 <= 3 *
#> |   |   |   |   |   |   [44] V5 > 3 *
#> |   |   |   |   |   [45] V2 > 73 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V7 <= 170
#> |   |   |   |   |   |   [48] V2 <= 85
#> |   |   |   |   |   |   |   [49] V7 <= 130
#> |   |   |   |   |   |   |   |   [50] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [51] V5 > 2 *
#> |   |   |   |   |   |   |   [52] V7 > 130
#> |   |   |   |   |   |   |   |   [53] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [54] V7 > 140
#> |   |   |   |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   |   |   [58] V7 > 170 *
#> |   [59] V5 > 173 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 16 *
#> |   |   |   [5] V5 > 16 *
#> |   |   [6] V6 > 0
#> |   |   |   [7] V5 <= 99
#> |   |   |   |   [8] V5 <= 7
#> |   |   |   |   |   [9] V5 <= 0 *
#> |   |   |   |   |   [10] V5 > 0 *
#> |   |   |   |   [11] V5 > 7 *
#> |   |   |   [12] V5 > 99 *
#> |   [13] V2 > 54
#> |   |   [14] V5 <= 173
#> |   |   |   [15] V4 <= 0
#> |   |   |   |   [16] V3 <= 6
#> |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   [18] V3 <= 3 *
#> |   |   |   |   |   |   [19] V3 > 3 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V3 <= 2 *
#> |   |   |   |   |   |   [22] V3 > 2
#> |   |   |   |   |   |   |   [23] V3 <= 3 *
#> |   |   |   |   |   |   |   [24] V3 > 3
#> |   |   |   |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [26] V3 > 4 *
#> |   |   |   |   [27] V3 > 6
#> |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V7 <= 147 *
#> |   |   |   |   |   |   [31] V7 > 147 *
#> |   |   |   [32] V4 > 0
#> |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   [34] V7 <= 170
#> |   |   |   |   |   |   [35] V7 <= 110 *
#> |   |   |   |   |   |   [36] V7 > 110
#> |   |   |   |   |   |   |   [37] V3 <= 5 *
#> |   |   |   |   |   |   |   [38] V3 > 5
#> |   |   |   |   |   |   |   |   [39] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [40] V7 > 125
#> |   |   |   |   |   |   |   |   |   [41] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [42] V7 > 130 *
#> |   |   |   |   |   [43] V7 > 170 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V5 <= 1
#> |   |   |   |   |   |   [46] V5 <= 0
#> |   |   |   |   |   |   |   [47] V3 <= 3 *
#> |   |   |   |   |   |   |   [48] V3 > 3
#> |   |   |   |   |   |   |   |   [49] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [50] V2 > 65 *
#> |   |   |   |   |   |   [51] V5 > 0 *
#> |   |   |   |   |   [52] V5 > 1
#> |   |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   |   [54] V5 > 2
#> |   |   |   |   |   |   |   [55] V5 <= 11
#> |   |   |   |   |   |   |   |   [56] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [57] V3 > 9 *
#> |   |   |   |   |   |   |   [58] V5 > 11 *
#> |   |   [59] V5 > 173 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 97 *
#> |   |   [4] V7 > 97
#> |   |   |   [5] V2 <= 87
#> |   |   |   |   [6] V5 <= 173
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3
#> |   |   |   |   |   |   |   [10] V2 <= 67 *
#> |   |   |   |   |   |   |   [11] V2 > 67 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V2 <= 58 *
#> |   |   |   |   |   |   [14] V2 > 58
#> |   |   |   |   |   |   |   [15] V2 <= 71 *
#> |   |   |   |   |   |   |   [16] V2 > 71
#> |   |   |   |   |   |   |   |   [17] V2 <= 83 *
#> |   |   |   |   |   |   |   |   [18] V2 > 83 *
#> |   |   |   |   [19] V5 > 173 *
#> |   |   |   [20] V2 > 87 *
#> |   [21] V4 > 0
#> |   |   [22] V7 <= 96 *
#> |   |   [23] V7 > 96
#> |   |   |   [24] V3 <= 25
#> |   |   |   |   [25] V2 <= 85
#> |   |   |   |   |   [26] V3 <= 13
#> |   |   |   |   |   |   [27] V2 <= 54
#> |   |   |   |   |   |   |   [28] V5 <= 3
#> |   |   |   |   |   |   |   |   [29] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [30] V2 > 43
#> |   |   |   |   |   |   |   |   |   [31] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [32] V3 > 4 *
#> |   |   |   |   |   |   |   [33] V5 > 3 *
#> |   |   |   |   |   |   [34] V2 > 54
#> |   |   |   |   |   |   |   [35] V5 <= 9
#> |   |   |   |   |   |   |   |   [36] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [37] V3 > 2
#> |   |   |   |   |   |   |   |   |   [38] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   [41] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   |   [42] V7 > 140 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 6
#> |   |   |   |   |   |   |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   |   [45] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   |   [46] V3 > 9 *
#> |   |   |   |   |   |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   [48] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   |   [49] V7 > 125
#> |   |   |   |   |   |   |   |   |   |   |   |   [50] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [51] V5 > 2 *
#> |   |   |   |   |   |   |   [52] V5 > 9 *
#> |   |   |   |   |   [53] V3 > 13
#> |   |   |   |   |   |   [54] V5 <= 6 *
#> |   |   |   |   |   |   [55] V5 > 6
#> |   |   |   |   |   |   |   [56] V7 <= 165
#> |   |   |   |   |   |   |   |   [57] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [58] V7 > 133 *
#> |   |   |   |   |   |   |   [59] V7 > 165 *
#> |   |   |   |   [60] V2 > 85 *
#> |   |   |   [61] V3 > 25 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V5 <= 11
#> |   |   |   |   |   [6] V7 <= 116 *
#> |   |   |   |   |   [7] V7 > 116
#> |   |   |   |   |   |   [8] V3 <= 5
#> |   |   |   |   |   |   |   [9] V5 <= 1 *
#> |   |   |   |   |   |   |   [10] V5 > 1 *
#> |   |   |   |   |   |   [11] V3 > 5
#> |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   [14] V5 > 11 *
#> |   |   |   [15] V5 > 115 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 171
#> |   |   |   |   [18] V5 <= 13
#> |   |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   |   |   |   [23] V3 > 2 *
#> |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   |   [27] V3 > 3
#> |   |   |   |   |   |   |   |   [28] V5 <= 2
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 0 *
#> |   |   |   |   |   |   |   |   [31] V5 > 2 *
#> |   |   |   |   |   |   [32] V5 > 3
#> |   |   |   |   |   |   |   [33] V5 <= 10
#> |   |   |   |   |   |   |   |   [34] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [35] V5 > 6
#> |   |   |   |   |   |   |   |   |   [36] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [37] V3 > 10 *
#> |   |   |   |   |   |   |   [38] V5 > 10 *
#> |   |   |   |   [39] V5 > 13 *
#> |   |   |   [40] V5 > 171
#> |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   [42] V6 > 0 *
#> |   [43] V2 > 72
#> |   |   [44] V5 <= 168
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V2 <= 84
#> |   |   |   |   |   |   [49] V5 <= 6 *
#> |   |   |   |   |   |   [50] V5 > 6 *
#> |   |   |   |   |   [51] V2 > 84 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V2 <= 85
#> |   |   |   |   |   |   [56] V2 <= 75 *
#> |   |   |   |   |   |   [57] V2 > 75
#> |   |   |   |   |   |   |   [58] V3 <= 12 *
#> |   |   |   |   |   |   |   [59] V3 > 12 *
#> |   |   |   |   |   [60] V2 > 85 *
#> |   |   [61] V5 > 168 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V5 <= 38
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   |   [8] V7 <= 110 *
#> |   |   |   |   |   |   [9] V7 > 110 *
#> |   |   |   |   [10] V5 > 38 *
#> |   |   |   [11] V3 > 3
#> |   |   |   |   [12] V2 <= 71
#> |   |   |   |   |   [13] V2 <= 60 *
#> |   |   |   |   |   [14] V2 > 60 *
#> |   |   |   |   [15] V2 > 71
#> |   |   |   |   |   [16] V2 <= 83
#> |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   |   [19] V2 > 83 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V5 <= 7
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V7 <= 134 *
#> |   |   |   |   |   [24] V7 > 134
#> |   |   |   |   |   |   [25] V7 <= 159 *
#> |   |   |   |   |   |   [26] V7 > 159 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V5 <= 1
#> |   |   |   |   |   |   [29] V7 <= 143
#> |   |   |   |   |   |   |   [30] V3 <= 2 *
#> |   |   |   |   |   |   |   [31] V3 > 2
#> |   |   |   |   |   |   |   |   [32] V7 <= 135
#> |   |   |   |   |   |   |   |   |   [33] V2 <= 70 *
#> |   |   |   |   |   |   |   |   |   [34] V2 > 70 *
#> |   |   |   |   |   |   |   |   [35] V7 > 135 *
#> |   |   |   |   |   |   [36] V7 > 143 *
#> |   |   |   |   |   [37] V5 > 1
#> |   |   |   |   |   |   [38] V2 <= 69 *
#> |   |   |   |   |   |   [39] V2 > 69 *
#> |   |   |   [40] V5 > 7
#> |   |   |   |   [41] V5 <= 9
#> |   |   |   |   |   [42] V2 <= 73
#> |   |   |   |   |   |   [43] V7 <= 130 *
#> |   |   |   |   |   |   [44] V7 > 130 *
#> |   |   |   |   |   [45] V2 > 73 *
#> |   |   |   |   [46] V5 > 9
#> |   |   |   |   |   [47] V7 <= 132 *
#> |   |   |   |   |   [48] V7 > 132
#> |   |   |   |   |   |   [49] V7 <= 160 *
#> |   |   |   |   |   |   [50] V7 > 160 *
#> |   [51] V5 > 173 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                                 5.0+  32   5      1          0        1   121
#> 2                                 2.0+  33   2      0          2        0   150
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                                 5.0+  34   5      0          5        0   120
#> 5                               180.0+  35   2      0        180        0   121
#> 6                               180.0+  38  13      1          0        1   161
#> 7                                115.0  38   2      0        115        0   150
#> 8                               180.0+  36   1      0        180        1   155
#> 9                                 5.0+  36   5      1          0        1   115
#> 10                              180.0+  38  16      1         10        0   160
#> 11                              180.0+  38  12      1         11        1    92
#> 12                              180.0+  42   3      1          1        1   130
#> 13                              180.0+  37   1      1          0        1   146
#> 14                              180.0+  42   2      0        180        1   100
#> 15                                5.0+  38   5      1          3        0   125
#> 16                                2.0+  42   2      0          2        0   140
#> 17                              180.0+  40   6      0        180        1   138
#> 18                              180.0+  42   2      0        180        0   100
#> 19                                 3.0  43   3      1          0        1   100
#> 20                              180.0+  41   2      1          1        0   166
#> 21                              180.0+  40   1      1          0        1   145
#> 22                              180.0+  43   4      1          0        1   130
#> 23                              180.0+  42   4      0        180        0   162
#> 24                                2.0+  43   2      1          1        1   116
#> 25                              180.0+  42   2      0        180        1   124
#> 26                              180.0+  45   3      0        180        1   154
#> 27                              180.0+  41  10      1          8        0   150
#> 28                              180.0+  45   6      0        180        1   170
#> 29                                5.0+  41   5      1          4        1   141
#> 30                              180.0+  44   2      1          1        1   150
#> 31                              180.0+  43   2      0        180        1   140
#> 32                              180.0+  45   2      0        180        1   140
#> 33                              180.0+  46  15      0        180        0   120
#> 34                              180.0+  47   4      1          3        0   118
#> 35                              180.0+  46   7      1          2        0   166
#> 36                              180.0+  46  13      1         10        0   100
#> 37                              180.0+  47   4      1          3        1   160
#> 38                                5.0+  45   5      0          5        0   141
#> 39                              161.0+  46   2      1          1        1   122
#> 40                              180.0+  46   6      1          0        1   100
#> 41                              180.0+  47   2      0        180        0   108
#> 42                              180.0+  44   9      1          8        1   135
#> 43                              180.0+  45   5      0        180        1   190
#> 44                                5.0+  46   5      1          3        0   130
#> 45                              180.0+  44   2      0        180        0   142
#> 46                              180.0+  46  15      0        180        1   120
#> 47                              177.0+  45   9      1          0        1   145
#> 48                              180.0+  47   3      1          1        1   120
#> 49                              180.0+  48   3      0        180        0   154
#> 50                              180.0+  48  12      1         11        0   200
#> 51                              180.0+  47   5      1          3        1   130
#> 52                              180.0+  46   3      1          0        1   119
#> 53                               10.0+  47  10      0         10        1   140
#> 54                              172.0+  50   1      1          0        1   129
#> 55                              180.0+  48   2      1          0        0   184
#> 56                              180.0+  47   7      0        180        0   145
#> 57                              180.0+  50   6      1          2        1   140
#> 58                                 7.0  49   7      1          7        1   110
#> 59                              180.0+  46   3      1          1        1   140
#> 60                              180.0+  46   9      1          9        1   122
#> 61                              179.0+  49  15      1         11        1   160
#> 62                              180.0+  52   2      0        180        1   170
#> 63                              180.0+  50   7      1          0        1    92
#> 64                              180.0+  51   3      1          2        0   113
#> 65                              180.0+  50   9      0        180        0   130
#> 66                              180.0+  49   7      1          4        1    90
#> 67                              180.0+  47   6      0        180        1   162
#> 68                              180.0+  51   8      0        180        1   140
#> 69                              180.0+  46   1      1          1        0   145
#> 70                                36.0  53   8      0         36        1   160
#> 71                              180.0+  47   2      1          1        0   110
#> 72                                4.0+  52   4      1          4        0   152
#> 73                              180.0+  49   9      1          3        0   102
#> 74                              180.0+  49  15      0        180        1   160
#> 75                              180.0+  54  17      1         12        1   102
#> 76                                77.0  53   5      0         77        0   159
#> 77                              180.0+  53   7      1          0        0   199
#> 78                              180.0+  50  10      1          6        0   122
#> 79                              180.0+  50  14      1         13        0   170
#> 80                              180.0+  53   8      1          7        0   160
#> 81                              180.0+  48   3      1          2        0   150
#> 82                              180.0+  51  25      1          1        0   202
#> 83                              180.0+  49   5      1          2        1   150
#> 84                                4.0+  53   4      0          4        0   140
#> 85                                85.0  52  14      1          7        1   200
#> 86                              180.0+  48   6      0        180        0   160
#> 87                              180.0+  48  11      1         10        0   120
#> 88                                99.0  51  13      0         99        1   160
#> 89                              180.0+  54   9      1          0        1   138
#> 90                               16.0+  49  16      0         16        0   125
#> 91                                7.0+  52   7      1          2        0   154
#> 92                                6.0+  55   6      1          2        1   114
#> 93                              180.0+  54   9      1          1        0   130
#> 94                              180.0+  55   4      1          2        0   150
#> 95                              180.0+  52   4      0        180        1   180
#> 96                               13.0+  51  13      1         11        0   145
#> 97                              171.0+  50   5      1          4        1   150
#> 98                              180.0+  54   4      1          0        1   121
#> 99                              180.0+  52   4      0        180        0   183
#> 100                               28.0  55  28      1         13        1   160
#> 101                                1.0  49   1      0          1        1   110
#> 102                             180.0+  50   7      1          1        0   156
#> 103                               9.0+  53   9      0          9        1    95
#> 104                             180.0+  50   7      1          0        1   127
#> 105                             180.0+  56   4      1          1        1   130
#> 106                             180.0+  55   1      0        180        0   127
#> 107                                2.0  55   2      0          2        0   145
#> 108                             180.0+  56   3      0        180        1   193
#> 109                             180.0+  56   2      0        180        0   132
#> 110                             180.0+  53  18      1          9        1   150
#> 111                              16.0+  52  16      0         16        0   152
#> 112                               16.0  52  16      1         14        0   170
#> 113                             180.0+  53   4      0        180        1   150
#> 114                             180.0+  55   6      0        180        1   100
#> 115                              12.0+  54  12      1          0        1   190
#> 116                             134.0+  55   2      0        134        1   140
#> 117                             180.0+  54   3      0        180        0   128
#> 118                                8.0  56   3      0          8        1   139
#> 119                                2.0  55   1      0          2        0   130
#> 120                             180.0+  54   2      1          1        0   135
#> 121                             180.0+  52   9      1          3        0   170
#> 122                             180.0+  54   2      1          1        1   176
#> 123                              140.0  57   5      1          3        1   138
#> 124                              165.0  56   4      1          0        1   140
#> 125                             180.0+  52   2      0        180        0   140
#> 126                             180.0+  55  11      1          7        0   104
#> 127                             180.0+  56  14      1         11        0   130
#> 128                             180.0+  53   3      1          0        1   200
#> 129                             180.0+  57  10      0        180        1   170
#> 130                               8.0+  58   8      0          8        1   130
#> 131                             180.0+  54   5      0        180        1   108
#> 132                             180.0+  53  21      1         13        1   130
#> 133                             180.0+  59   3      1          1        0   172
#> 134                             180.0+  57   4      0        180        1   119
#> 135                             171.0+  54  17      1          8        1   227
#> 136                               15.0  55   9      1          2        1   147
#> 137                             166.0+  55  13      0        166        1   140
#> 138                             180.0+  54  23      1          8        0   120
#> 139                               4.0+  57   4      1          2        1   185
#> 140                             147.0+  53   4      0        147        1   145
#> 141                             180.0+  53   7      1          0        1   120
#> 142                             180.0+  55   3      1          2        0   140
#> 143                               5.0+  55   5      0          5        1   131
#> 144                             180.0+  54   7      1          0        1   141
#> 145                               4.0+  56   4      0          4        0   164
#> 146                               2.0+  55   2      0          2        0   106
#> 147                             180.0+  59   9      1          1        1   125
#> 148                             180.0+  57   1      0        180        0   148
#> 149                             180.0+  60  11      1          9        0   106
#> 150                             180.0+  59   3      0        180        0   120
#> 151                             180.0+  57   5      0        180        1   130
#> 152                             180.0+  58  11      1          9        1   124
#> 153                             180.0+  55   5      1          0        1   160
#> 154                               64.0  59   6      1          0        1   140
#> 155                             180.0+  59   4      1          0        1   152
#> 156                               9.0+  61   9      0          9        1   160
#> 157                             180.0+  58   4      1          3        0   120
#> 158                                0.5  60   0      1          0        1    80
#> 159                             171.0+  58  14      1          6        0   190
#> 160                             180.0+  61   4      1          3        0   151
#> 161                             180.0+  61   9      1          8        0   150
#> 162                                3.0  61   3      1          2        1   102
#> 163                                1.0  58   1      0          1        1   100
#> 164                             180.0+  57  13      1         10        0   110
#> 165                             180.0+  57   2      1          0        1   116
#> 166                              10.0+  58  10      0         10        1   150
#> 167                             180.0+  57   4      1          3        0   138
#> 168                             180.0+  57  11      0        180        1   150
#> 169                               17.0  61   3      0         17        0   143
#> 170                               45.0  56  14      0         45        0   130
#> 171                               3.0+  57   3      1          2        0   120
#> 172                             180.0+  56  13      1          6        1   158
#> 173                             180.0+  56  18      1         11        1   165
#> 174                               9.0+  59   9      1          0        1    80
#> 175                             180.0+  55   4      1          3        1   160
#> 176                             172.0+  58  11      0        172        1   135
#> 177                               24.0  55   9      1          7        1   135
#> 178                             180.0+  61   4      1          0        1   115
#> 179                                8.0  56   8      1          8        0   120
#> 180                             180.0+  59  11      1          8        1   190
#> 181                             180.0+  58   5      1          1        1   135
#> 182                               77.0  61   8      0         77        0   120
#> 183                              13.0+  61  13      0         13        0   210
#> 184                               8.0+  58   8      1          5        0   152
#> 185                             180.0+  62  10      1          0        1   153
#> 186                             180.0+  62   7      1          2        1   180
#> 187                               94.0  61  28      1          7        0   133
#> 188                             180.0+  58   8      1          3        1   150
#> 189                              169.0  57   7      0        169        0   180
#> 190                                7.0  61   7      0          7        1   150
#> 191                               7.0+  60   7      0          7        0   147
#> 192                             180.0+  59  13      1          2        0   198
#> 193                             180.0+  60  17      1          8        1   140
#> 194                               3.0+  58   3      1          0        1   146
#> 195                             180.0+  59   1      0        180        0   155
#> 196                             180.0+  59  16      1          9        1   133
#> 197                               28.0  63   6      0         28        1   120
#> 198                                5.0  61   5      0          5        1   110
#> 199                               18.0  57  18      1          9        1    93
#> 200                               5.0+  61   5      0          5        1   160
#> 201                             180.0+  58  11      1          9        0   179
#> 202                             180.0+  57   2      1          1        0   159
#> 203                             180.0+  62  17      1         10        1   180
#> 204                                1.0  62   1      1          0        1   172
#> 205                             180.0+  63   3      1          1        0   180
#> 206                             180.0+  61   7      0        180        0   135
#> 207                             180.0+  62   3      0        180        1   105
#> 208                             180.0+  63   4      0        180        1   190
#> 209                             180.0+  63  15      1         10        1   126
#> 210                             180.0+  64   4      0        180        0   130
#> 211                             180.0+  60  18      1         13        0   132
#> 212                             180.0+  59   8      0        180        1   140
#> 213                             180.0+  61   9      1          9        1   150
#> 214                                9.0  58   9      1          9        0   110
#> 215                               7.0+  62   7      0          7        0   150
#> 216                             180.0+  59   4      0        180        0   196
#> 217                               84.0  60   7      1          5        1   141
#> 218                             180.0+  59   5      1          1        0   148
#> 219                             180.0+  60   7      1          1        1    90
#> 220                             180.0+  65  13      0        180        1   100
#> 221                                1.0  63   1      0          1        0   162
#> 222                             180.0+  62   6      0        180        0   170
#> 223                               4.0+  59   4      0          4        0   149
#> 224                               3.0+  60   3      0          3        0   168
#> 225                              167.0  64  10      1          9        0   160
#> 226                             180.0+  63  12      1         10        0   200
#> 227                             180.0+  59  10      0        180        1   130
#> 228                               17.0  60   8      0         17        1   130
#> 229                             180.0+  61   6      1          1        1   117
#> 230                             180.0+  66   1      1          0        1   120
#> 231                             180.0+  64   6      1          0        1   140
#> 232                             180.0+  63  10      1          0        1   148
#> 233                              14.0+  63  14      1          9        0   123
#> 234                               36.0  65  36      1         11        0   140
#> 235                             180.0+  63   4      1          3        0   162
#> 236                               3.0+  66   3      1          1        0   127
#> 237                               88.0  61  10      1          2        1   194
#> 238                             180.0+  64  32      1          9        1   160
#> 239                             180.0+  63   7      0        180        0   120
#> 240                             180.0+  66   5      1          0        1   110
#> 241                             180.0+  65   8      1          0        0   168
#> 242                                0.5  64   0      0          0        1    90
#> 243                             180.0+  60   6      0        180        0   130
#> 244                             180.0+  64  21      1         10        0   190
#> 245                              12.0+  61  12      1         11        0   154
#> 246                             180.0+  61   4      0        180        1   113
#> 247                             180.0+  65   3      0        180        1   190
#> 248                             180.0+  66   6      1          1        1   130
#> 249                               12.0  63  12      0         12        1   150
#> 250                                3.0  65   3      1          0        1    80
#> 251                             180.0+  63   5      1          4        0   170
#> 252                             180.0+  63   2      1          1        0   180
#> 253                             180.0+  62  13      1         11        0   180
#> 254                              11.0+  67  11      0         11        1   100
#> 255                               2.0+  64   2      0          2        0   201
#> 256                              18.0+  66  18      1          5        0   142
#> 257                             180.0+  66  16      1         11        1   169
#> 258                             180.0+  62   9      0        180        0   145
#> 259                             180.0+  61  14      1          5        0   140
#> 260                             180.0+  61  15      1         10        0   130
#> 261                             180.0+  63   9      1          8        1   160
#> 262                               3.0+  63   3      1          2        0   120
#> 263                               2.0+  63   2      1          0        0   140
#> 264                               15.0  65   8      1          0        1   140
#> 265                             180.0+  67   6      0        180        1   170
#> 266                             180.0+  65  15      1         11        1   160
#> 267                               5.0+  68   5      1          4        1   150
#> 268                               13.0  64  13      1         12        1   150
#> 269                             180.0+  64   6      1          0        1   125
#> 270                             179.0+  66   7      1          0        1   115
#> 271                              14.0+  64  14      1         13        1   150
#> 272                                3.0  65   3      0          3        0   105
#> 273                               0.5+  64   0      0          0        1   148
#> 274                             180.0+  67   4      1          3        0   130
#> 275                             180.0+  66   6      1          0        1   140
#> 276                             175.0+  65   2      1          1        1   170
#> 277                             180.0+  68   1      0        180        1   166
#> 278                             180.0+  64  10      1          9        1   110
#> 279                                8.0  67   8      1          1        1   130
#> 280                             180.0+  68  18      0        180        1   260
#> 281                             180.0+  63   8      1          1        1   162
#> 282                             123.0+  65  18      1          3        0   120
#> 283                             180.0+  68  11      0        180        0   160
#> 284                               79.0  68  14      0         79        0   172
#> 285                               80.0  66  12      1         10        1   150
#> 286                              15.0+  65  15      1         12        1   150
#> 287                             180.0+  66  11      1          0        0   100
#> 288                               4.0+  65   4      1          2        1   145
#> 289                               15.0  69  12      0         15        1   140
#> 290                             180.0+  63   2      0        180        0   150
#> 291                             174.0+  69  21      1         10        0   180
#> 292                             180.0+  66   9      1          8        0   130
#> 293                             180.0+  63   8      0        180        1   120
#> 294                             180.0+  68  14      1         13        1   140
#> 295                               8.0+  65   8      1          0        1    90
#> 296                                3.0  66   3      0          3        1   138
#> 297                               10.0  68  10      1         10        1   150
#> 298                             180.0+  67   7      1          4        1   130
#> 299                             180.0+  63   2      1          0        0    99
#> 300                             180.0+  67   2      0        180        0   184
#> 301                             180.0+  65  10      1          1        1   148
#> 302                              19.0+  66  19      1         12        1   150
#> 303                               12.0  67  12      1         12        0   160
#> 304                             180.0+  65   4      1          1        0   130
#> 305                             179.0+  64   4      0        179        0   160
#> 306                             180.0+  66   4      0        180        1   130
#> 307                             180.0+  70  15      1         12        1   132
#> 308                              11.0+  64  11      0         11        0   125
#> 309                             180.0+  64   4      0        180        1   140
#> 310                               18.0  67   2      0         18        0   131
#> 311                             180.0+  66   4      0        180        0   177
#> 312                             180.0+  68   4      1          0        1   160
#> 313                             180.0+  65  13      1         12        1   130
#> 314                             180.0+  69  17      1         10        0   140
#> 315                               93.0  69   8      0         93        0   140
#> 316                              21.0+  64  21      0         21        1   155
#> 317                             180.0+  66   6      0        180        0   140
#> 318                                1.0  65   1      0          1        1   120
#> 319                              18.0+  68  18      1          0        1   160
#> 320                              101.0  65   6      0        101        1   115
#> 321                                4.0  68   4      0          4        1   190
#> 322                             180.0+  71  20      1          0        1   160
#> 323                             180.0+  67   2      0        180        0   128
#> 324                             180.0+  66   9      1          3        1   151
#> 325                                1.0  66   1      1          1        1   165
#> 326                             180.0+  70   4      1          0        1   180
#> 327                              171.0  70  14      0        171        0   166
#> 328                             180.0+  66   4      0        180        0   130
#> 329                             174.0+  67  10      1          9        0   200
#> 330                             180.0+  68  18      1         14        1   170
#> 331                                0.5  69   0      0          0        1   148
#> 332                             180.0+  68   7      1          0        1   150
#> 333                             180.0+  69   3      1          2        0   151
#> 334                             180.0+  67  14      1         13        0   130
#> 335                              14.0+  65  14      1         13        1   150
#> 336                               7.0+  71   7      0          7        0   230
#> 337                                2.0  66   2      0          2        1   228
#> 338                               45.0  71   6      0         45        1   158
#> 339                               3.0+  69   3      0          3        1   130
#> 340                             180.0+  70  22      1         13        0   103
#> 341                               36.0  67   1      0         36        1   104
#> 342                               5.0+  67   5      0          5        0   130
#> 343                             180.0+  68   6      0        180        0   145
#> 344                             180.0+  69   8      1          5        1   195
#> 345                             180.0+  72   3      1          0        1   132
#> 346                               8.0+  69   8      1          7        1   108
#> 347                             180.0+  69  19      0        180        0   130
#> 348                             180.0+  69  11      1          0        1   120
#> 349                             180.0+  66   2      0        180        0   130
#> 350                                7.0  67   7      1          4        0   122
#> 351                             180.0+  69   4      1          3        0   132
#> 352                                7.0  68   2      0          7        1   130
#> 353                               8.0+  69   8      1          2        0   121
#> 354                              13.0+  67  13      1          9        0   130
#> 355                              123.0  70   3      0        123        0   130
#> 356                             180.0+  70   9      0        180        1   142
#> 357                             180.0+  72   5      1          4        0   170
#> 358                               19.0  68   3      0         19        0   135
#> 359                                1.0  69   1      0          1        1   110
#> 360                                1.0  67   1      0          1        1    60
#> 361                               60.0  67   4      0         60        1   136
#> 362                               76.0  69   5      0         76        0   120
#> 363                             180.0+  67   8      1          0        1   130
#> 364                              10.0+  68  10      1          8        1   160
#> 365                             180.0+  66  24      1         13        0   130
#> 366                             180.0+  70  35      1          0        1   105
#> 367                              162.0  72  30      1          0        1   145
#> 368                               7.0+  70   7      0          7        0   102
#> 369                               7.0+  68   7      1          2        0   135
#> 370                                9.0  71   6      0          9        0   120
#> 371                             180.0+  69  10      1          6        1   120
#> 372                             180.0+  70  11      0        180        1   210
#> 373                             180.0+  72  19      1          8        0   120
#> 374                               12.0  72  12      1         10        0   170
#> 375                             180.0+  67   8      0        180        1   170
#> 376                             180.0+  67   5      1          0        1   147
#> 377                             180.0+  67   9      0        180        0   158
#> 378                              152.0  73  13      0        152        1   130
#> 379                                2.0  72   2      0          2        1   100
#> 380                               76.0  67   4      1          1        0   134
#> 381                             173.0+  71   1      0        173        1   188
#> 382                             180.0+  68  23      0        180        1   220
#> 383                             180.0+  71   3      1          2        0   150
#> 384                             180.0+  68   4      1          3        0   210
#> 385                             180.0+  73   6      0        180        1   117
#> 386                              16.0+  69  16      1         10        1   140
#> 387                             180.0+  69   8      1          1        0   164
#> 388                             180.0+  68   7      0        180        1   130
#> 389                              16.0+  72  16      1          1        1   130
#> 390                             180.0+  70   4      0        180        0   180
#> 391                             180.0+  72   8      1          1        1   150
#> 392                             180.0+  71   2      1          0        1   180
#> 393                               7.0+  73   7      0          7        1   140
#> 394                               15.0  68  15      1         13        1   130
#> 395                               3.0+  70   3      0          3        1   159
#> 396                             180.0+  72   6      0        180        1   130
#> 397                             180.0+  73   0      0        180        1   161
#> 398                             180.0+  74   8      1          0        1    85
#> 399                             180.0+  73   4      0        180        1   154
#> 400                                2.0  69   2      1          0        1   110
#> 401                             180.0+  71  15      1         11        0   165
#> 402                             180.0+  68   9      0        180        1   120
#> 403                               20.0  71  20      1         10        0   140
#> 404                             180.0+  73   3      1          0        1   136
#> 405                             180.0+  70   5      1          0        1   190
#> 406                             180.0+  71  17      1         11        0   160
#> 407                                8.0  71   8      1          7        0   149
#> 408                                3.0  71   3      1          2        1   190
#> 409                               58.0  73   4      0         58        1   160
#> 410                             180.0+  70   3      0        180        1   154
#> 411                             180.0+  73   6      0        180        0   110
#> 412                             180.0+  71   7      1          2        0   143
#> 413                             180.0+  72   8      1          0        1   140
#> 414                                3.0  74   3      0          3        1   150
#> 415                             180.0+  73  17      1         11        0   140
#> 416                              175.0  71  13      1          8        0   121
#> 417                                2.0  69   2      1          1        1    80
#> 418                             180.0+  74   7      1          0        1   117
#> 419                              10.0+  72  10      1          8        1   153
#> 420                             180.0+  69   7      0        180        1   144
#> 421                             179.0+  71  10      1          9        1   120
#> 422                                1.0  75   1      0          1        0   133
#> 423                             180.0+  75   2      1          1        0   145
#> 424                             180.0+  73  10      1          9        1   146
#> 425                               15.0  73  10      1         10        1   120
#> 426                             180.0+  74  15      1          9        1   179
#> 427                               10.0  71   2      0         10        1   112
#> 428                               13.0  75  13      1          1        1   130
#> 429                             180.0+  71  11      1          8        0   110
#> 430                               4.0+  71   4      0          4        0   134
#> 431                             180.0+  72  15      1         12        1   120
#> 432                               10.0  73  10      1          8        0   120
#> 433                               57.0  72   7      0         57        1   145
#> 434                             180.0+  73  10      0        180        0   162
#> 435                               11.0  72  11      0         11        1   140
#> 436                               3.0+  70   3      0          3        0   150
#> 437                                5.0  73   5      1          3        1   112
#> 438                             180.0+  76  25      1         12        1   170
#> 439                               12.0  73  12      1         12        1   140
#> 440                             180.0+  72   2      0        180        0   120
#> 441                             180.0+  75   1      0        180        1   140
#> 442                             180.0+  71   3      1          0        0   144
#> 443                             180.0+  73   4      0        180        0   124
#> 444                               34.0  74  34      1          8        1   233
#> 445                             180.0+  72   5      0        180        0   154
#> 446                             180.0+  75   3      1          1        0   180
#> 447                                7.0  72   7      1          2        0   142
#> 448                             180.0+  71  16      0        180        0   140
#> 449                               10.0  73  10      1         10        0   124
#> 450                             180.0+  74   7      0        180        1   150
#> 451                                3.0  74   3      0          3        1   128
#> 452                                6.0  73   6      0          6        1   114
#> 453                             180.0+  72   4      1          3        0   160
#> 454                             180.0+  73   4      1          3        1   125
#> 455                             174.0+  76  13      1         10        0   110
#> 456                               12.0  75  12      0         12        1   160
#> 457                             180.0+  74   8      1          0        1   105
#> 458                               46.0  75   4      1          2        1   188
#> 459                                1.0  75   1      0          1        1   125
#> 460                             180.0+  74   2      0        180        0   111
#> 461                             180.0+  73   0      0        180        0   156
#> 462                             180.0+  72   5      0        180        0   120
#> 463                               12.0  78  12      1         11        1   160
#> 464                             180.0+  76  44      1         10        0   105
#> 465                             180.0+  76   5      0        180        0   185
#> 466                             180.0+  76   5      1          0        1   167
#> 467                                8.0  74   8      1          8        1   170
#> 468                             180.0+  75   9      0        180        1   140
#> 469                               33.0  73  33      1         12        1   175
#> 470                             180.0+  77  12      1          9        1   100
#> 471                             180.0+  73  10      1          9        0   146
#> 472                             180.0+  77  12      0        180        0   130
#> 473                             180.0+  78   5      1          0        1   170
#> 474                                3.0  75   3      1          1        1   171
#> 475                             168.0+  74   9      1          8        0   200
#> 476                             180.0+  75   6      0        180        0   150
#> 477                             180.0+  79  10      1          8        0   190
#> 478                               18.0  78  18      0         18        1   144
#> 479                             180.0+  77   3      0        180        0   110
#> 480                               47.0  76  29      0         47        0    90
#> 481                               11.0  73  11      1          2        1   110
#> 482                             180.0+  74  15      0        180        1   172
#> 483                                7.0  74   7      0          7        0   161
#> 484                             180.0+  76  13      1          1        1   170
#> 485                               32.0  78  32      1          9        1   198
#> 486                              119.0  75   5      0        119        1   150
#> 487                             180.0+  78  15      0        180        1   270
#> 488                                8.0  80   8      0          8        1   120
#> 489                                1.0  76   1      0          1        1    83
#> 490                               80.0  79   4      0         80        0   145
#> 491                             180.0+  78   2      1          1        0   130
#> 492                               4.0+  75   4      1          0        0   212
#> 493                                2.0  77   2      1          0        1   143
#> 494                             180.0+  78  10      0        180        1   130
#> 495                               11.0  76  11      1          0        0   120
#> 496                               29.0  76   7      0         29        1   150
#> 497                               32.0  79   8      0         32        1   120
#> 498                               23.0  80   9      0         23        1   128
#> 499                                6.0  80   6      0          6        1   150
#> 500                               3.0+  76   3      1          0        1   140
#> 501                             180.0+  78  11      1          1        1   140
#> 502                             180.0+  79  11      0        180        0   160
#> 503                             180.0+  78  14      1          0        1   140
#> 504                                4.0  76   4      0          4        1   160
#> 505                              10.0+  76  10      1          8        0   180
#> 506                             180.0+  76  12      1         10        1   127
#> 507                               3.0+  80   3      1          0        1   120
#> 508                               2.0+  75   2      1          1        1   204
#> 509                                1.0  76   1      0          1        1   140
#> 510                                1.0  76   1      0          1        1    90
#> 511                               43.0  78   7      1          0        1   110
#> 512                                3.0  79   3      0          3        0   120
#> 513                             180.0+  77   7      0        180        1   170
#> 514                              138.0  79   4      1          0        1   120
#> 515                             180.0+  81   1      0        180        0   120
#> 516                             180.0+  80  15      1         12        1   150
#> 517                                8.0  82   5      0          8        1   120
#> 518                               59.0  78   4      0         59        1   112
#> 519                             180.0+  80  15      1          0        1    90
#> 520                               93.0  81   4      1          2        1   126
#> 521                              173.0  80   6      0        173        1   160
#> 522                             180.0+  78  32      0        180        1   130
#> 523                               37.0  79   1      0         37        1   140
#> 524                             180.0+  81   3      0        180        0   184
#> 525                             175.0+  81   2      0        175        0   172
#> 526                               7.0+  78   7      0          7        1   147
#> 527                               22.0  77  13      1          0        1   190
#> 528                              15.0+  78  15      0         15        0   165
#> 529                               5.0+  80   5      1          1        1   108
#> 530                             180.0+  78   4      0        180        0   175
#> 531                                3.0  79   3      0          3        1   101
#> 532                             171.0+  78  26      1          5        0   194
#> 533                             166.0+  76   1      0        166        0   131
#> 534                              20.0+  78  20      1          0        1   109
#> 535                                1.0  80   1      0          1        0   100
#> 536                               3.0+  78   3      1          1        1   152
#> 537                               10.0  77  10      1          8        1   130
#> 538                             180.0+  82   3      1          1        1   144
#> 539                               85.0  77   5      0         85        0   188
#> 540                               6.0+  79   6      0          6        0   152
#> 541                                1.0  82   1      1          0        1    82
#> 542                             180.0+  77   4      0        180        1    98
#> 543                              108.0  81   1      0        108        0   129
#> 544                             180.0+  78  12      0        180        0   134
#> 545                              125.0  79   1      0        125        0   193
#> 546                             180.0+  82  21      1          2        0   155
#> 547                                4.0  79   4      0          4        1   121
#> 548                               9.0+  83   9      1          5        1   170
#> 549                             180.0+  83   5      0        180        0   148
#> 550                             180.0+  79   7      1          6        0   130
#> 551                              103.0  83   4      0        103        0    97
#> 552                             180.0+  81  11      1          8        0   160
#> 553                              169.0  80  11      1          8        0   170
#> 554                               70.0  78  23      1         10        1   145
#> 555                                4.0  79   4      0          4        1   183
#> 556                             180.0+  79   1      0        180        1   170
#> 557                             180.0+  81  15      0        180        1   140
#> 558                             180.0+  84   5      1          1        1    85
#> 559                               20.0  81  20      1          9        0   170
#> 560                               8.0+  83   8      0          8        0   115
#> 561                             180.0+  80   6      1          0        1   150
#> 562                             180.0+  81   8      0        180        0   146
#> 563                             180.0+  80   8      1          7        0   160
#> 564                             177.0+  79   7      0        177        0   197
#> 565                                0.5  79   0      1          0        1    96
#> 566                              128.0  82   6      0        128        1   100
#> 567                              167.0  84   4      0        167        0   198
#> 568                               62.0  82  23      1          0        0   110
#> 569                                4.0  84   4      0          4        1    85
#> 570                                1.0  81   1      0          1        1   150
#> 571                               38.0  84   1      0         38        1   205
#> 572                             180.0+  83   3      0        180        0   174
#> 573                               90.0  81   4      0         90        1   138
#> 574                             180.0+  79   9      1          8        0   150
#> 575                             180.0+  85   3      1          2        1   160
#> 576                             180.0+  80  13      1          8        1   140
#> 577                               89.0  84   4      0         89        1   129
#> 578                               71.0  80   6      0         71        1   189
#> 579                                1.0  83   1      0          1        1   100
#> 580                               19.0  82  19      0         19        0   120
#> 581                             180.0+  83   9      0        180        0   198
#> 582                             180.0+  79  14      1          0        0   110
#> 583                             180.0+  81  14      1         12        1   128
#> 584                                2.0  82   0      0          2        1   100
#> 585                             180.0+  85   9      1          6        1   160
#> 586                               4.0+  81   4      0          4        0   175
#> 587                             180.0+  84  15      1         13        1   110
#> 588                                1.0  81   1      0          1        1   145
#> 589                               5.0+  82   5      1          0        1   146
#> 590                               4.0+  81   4      0          4        0   160
#> 591                             180.0+  86  12      0        180        1   120
#> 592                               77.0  83  12      1          2        1   170
#> 593                             180.0+  81  19      1         14        0   120
#> 594                              126.0  83   7      0        126        0   135
#> 595                                8.0  86   8      0          8        1   132
#> 596                             180.0+  81  16      1          9        0   180
#> 597                             180.0+  82   9      0        180        1   134
#> 598                             180.0+  81   2      1          0        1   118
#> 599                             180.0+  81   4      0        180        0   160
#> 600                             180.0+  83   9      0        180        1   149
#> 601                             180.0+  82   1      0        180        1   193
#> 602                                5.0  87   2      0          5        1   137
#> 603                              174.0  82  14      1         11        1   103
#> 604                                6.0  86   6      1          0        1   140
#> 605                               70.0  84  16      0         70        1   150
#> 606                             180.0+  84   3      1          2        0   125
#> 607                             180.0+  83  10      1          0        1   190
#> 608                             180.0+  86   2      0        180        1   169
#> 609                               14.0  88  14      1          3        1   130
#> 610                                3.0  84   3      0          3        1   121
#> 611                             180.0+  84   7      1          2        0   148
#> 612                             180.0+  87   2      0        180        0   113
#> 613                             180.0+  84   3      0        180        1   170
#> 614                               3.0+  85   3      0          3        1   113
#> 615                               6.0+  86   6      0          6        1   117
#> 616                               4.0+  88   4      0          4        0   100
#> 617                                4.0  88   4      0          4        1   115
#> 618                               65.0  83   9      0         65        1   150
#> 619                               11.0  86   9      1          7        1   142
#> 620                             180.0+  87   2      0        180        1   130
#> 621                               46.0  86   6      0         46        0   173
#> 622                             180.0+  88   2      0        180        1    68
#> 623                                4.0  89   4      0          4        1   153
#> 624                              119.0  89   5      0        119        1   140
#> 625                             180.0+  84   8      0        180        1   119
#> 626                                8.0  85   8      0          8        1   136
#> 627                               29.0  87  29      0         29        1    97
#> 628                             180.0+  87  15      1          9        1   138
#> 629                             180.0+  84   0      0        180        1   136
#> 630                               46.0  89  10      0         46        1   170
#> 631                               1.0+  88   1      0          1        0   135
#> 632                             180.0+  86   4      0        180        1   145
#> 633                                8.0  91   8      0          8        0   100
#> 634                             180.0+  87   2      0        180        0   160
#> 635                               25.0  87   6      1          0        0   125
#> 636                              145.0  91  10      0        145        0   135
#> 637                                3.0  86   3      1          0        1    80
#> 638                               24.0  88   7      0         24        0   119
#> 639                               50.0  88   8      0         50        1   154
#> 640                              126.0  87   6      0        126        1   168
#> 641                             180.0+  86  10      0        180        1   137
#> 642                             180.0+  86   9      1          7        0   130
#> 643                                1.0  91   1      0          1        1    74
#> 644                             178.0+  87  43      0        178        1   130
#> 645                               89.0  90   5      1          0        1   125
#> 646                               75.0  88   3      1          2        0   159
#> 647                                1.0  92   1      0          1        1   167
#> 648                               33.0  91   3      0         33        1   137
#> 649                              158.0  88   5      0        158        0   100
#> 650                              168.0  89   2      0        168        0   118
#> 651                              169.0  91   5      0        169        1   176
#> 652                                7.0  92   7      0          7        1   110
#> 653                                4.0  89   4      0          4        1   159
#> 654                                0.5  91   0      0          0        0     0
#> 655                             180.0+  90  18      0        180        0   188
#> 656                             180.0+  90  19      1         11        1   129
#> 657                               50.0  94   6      0         50        0    78
#> 658                               1.0+  90   1      0          1        1   118
#> 659                                2.0  91   2      0          2        1   116
#> 660                               8.0+  94   8      0          8        1   142
#> 661                             180.0+  91   1      0        180        0   158
#> 662                               67.0  90   3      0         67        0   162
#> 663                               12.0  96   3      0         12        1    97
#> 664                                8.0  95   8      1          5        1   150
#> 665                               26.0  94   3      0         26        1   144
#> 666                               53.0  91  12      0         53        1   212
#> 667                                0.5  93   0      1          0        1   122
#> 668                             180.0+  93   4      0        180        1   135
#> 669                                3.0  96   3      1          0        1   104
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 0 0
#>  [38] 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 1 1 1 0 1
#>  [75] 0 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0
#> [112] 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0
#> [149] 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0
#> [186] 1 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1
#> [223] 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1
#> [260] 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1
#> [297] 0 1 1 1 0 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0
#> [334] 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 1
#> [371] 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0
#> [408] 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 0
#> [445] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 1 0 0 0 0 0
#> [482] 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0
#> [519] 0 0 0 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1
#> [556] 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0
#> [593] 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0
#> [630] 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[2]]
#>   [1] 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1
#>  [38] 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1
#>  [75] 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1
#> [112] 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1
#> [149] 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 0 1 0 1 1 0 0 0 0 0 1
#> [186] 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0
#> [223] 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1
#> [260] 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1
#> [297] 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1
#> [334] 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1
#> [371] 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 0
#> [408] 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [445] 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1
#> [482] 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0
#> [519] 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 0 1
#> [556] 1 0 1 0 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 0 1 0 1 1
#> [593] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [630] 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0
#> [667] 0 1 0 0
#> 
#> $weights[[3]]
#>   [1] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1
#>  [38] 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1
#>  [75] 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [112] 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1
#> [149] 0 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 0 0 0 0 0 1
#> [186] 1 0 0 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1
#> [223] 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0
#> [260] 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 0
#> [297] 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1
#> [334] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1
#> [371] 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1
#> [408] 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 0 1
#> [445] 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1
#> [482] 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1
#> [519] 0 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [556] 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 1
#> [593] 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [630] 0 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0
#> [667] 0 1 0 0
#> 
#> $weights[[4]]
#>   [1] 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1
#>  [38] 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1
#>  [75] 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 0 0
#> [112] 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1
#> [149] 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1
#> [186] 1 0 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0
#> [223] 1 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1
#> [260] 1 0 0 1 0 0 1 0 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1
#> [297] 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0
#> [334] 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1
#> [371] 0 0 0 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0
#> [408] 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [445] 1 1 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1
#> [482] 1 0 0 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0
#> [519] 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1
#> [556] 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1
#> [593] 0 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1
#> [630] 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[5]]
#>   [1] 0 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0
#>  [38] 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1
#> [112] 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1
#> [149] 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1
#> [186] 0 1 0 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1
#> [223] 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [260] 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1
#> [297] 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0
#> [334] 0 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1
#> [371] 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [408] 1 1 0 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#> [445] 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 0 1 0 0 1 1 1 0 1 0 1 0
#> [482] 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1
#> [519] 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1
#> [556] 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [593] 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0
#> [630] 1 0 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[6]]
#>   [1] 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 1
#>  [38] 0 1 1 0 1 1 0 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1
#>  [75] 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [112] 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1
#> [149] 1 0 0 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [186] 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0
#> [223] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [260] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [297] 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0
#> [334] 0 0 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [371] 1 1 0 1 1 0 0 1 0 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [408] 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1
#> [445] 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1
#> [482] 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0
#> [519] 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 0
#> [556] 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1
#> [593] 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1
#> [630] 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[7]]
#>   [1] 0 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0
#>  [38] 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 0 0
#>  [75] 0 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1
#> [112] 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0
#> [149] 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1
#> [186] 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [223] 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 0 0
#> [260] 1 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1
#> [297] 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 1 1 0 0
#> [334] 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0
#> [371] 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [408] 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0
#> [445] 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0 1 1 1
#> [482] 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1
#> [519] 1 1 1 0 1 1 0 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1
#> [556] 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [593] 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0
#> [630] 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[8]]
#>   [1] 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1
#>  [38] 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1
#>  [75] 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [112] 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 0 0 1 0 1 1 0
#> [149] 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 0 1
#> [186] 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1
#> [223] 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1
#> [260] 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [297] 0 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 0 0 0 1 0 1 0 0 1 1 0 0 0 1 0 0 1 1
#> [334] 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1
#> [371] 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1
#> [408] 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0
#> [445] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1
#> [482] 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [519] 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [556] 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [593] 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 0 1
#> [630] 0 1 1 0 0 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[9]]
#>   [1] 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1
#>  [38] 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1
#>  [75] 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1
#> [112] 0 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0
#> [149] 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1
#> [186] 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 0 0 1 1 1 0
#> [223] 1 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1
#> [260] 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 0 0
#> [297] 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0
#> [334] 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1
#> [371] 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1
#> [408] 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1
#> [445] 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1
#> [482] 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0 0
#> [519] 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1
#> [556] 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [593] 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0
#> [630] 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[10]]
#>   [1] 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1
#>  [38] 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1
#>  [75] 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [112] 1 1 0 0 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0
#> [149] 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1
#> [186] 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [223] 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0
#> [260] 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0
#> [297] 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1
#> [334] 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1
#> [371] 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1
#> [408] 0 0 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1
#> [445] 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1
#> [482] 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1
#> [519] 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [556] 1 0 0 0 1 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1
#> [593] 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1
#> [630] 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1
#> [667] 1 1 0 0
#> 
#> $weights[[11]]
#>   [1] 1 1 0 0 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1
#>  [38] 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0
#>  [75] 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0 0 1
#> [112] 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1
#> [149] 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1
#> [186] 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1
#> [223] 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 0
#> [260] 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1
#> [297] 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 0 0 1
#> [334] 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1
#> [371] 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0
#> [408] 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0
#> [445] 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1
#> [482] 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1
#> [519] 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0
#> [556] 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1
#> [593] 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1
#> [630] 1 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[12]]
#>   [1] 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1
#>  [38] 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0
#>  [75] 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 0 1 1 0
#> [112] 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [149] 1 0 0 1 0 0 1 0 1 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1
#> [186] 1 0 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [223] 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0
#> [260] 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0
#> [297] 1 1 1 0 0 0 1 0 1 0 0 0 0 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [334] 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0
#> [371] 1 1 0 0 1 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0
#> [408] 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0
#> [445] 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [482] 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1
#> [519] 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1
#> [556] 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1
#> [593] 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0
#> [630] 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[13]]
#>   [1] 0 1 1 0 1 1 1 0 1 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1
#>  [38] 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0
#>  [75] 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1
#> [112] 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1
#> [149] 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0
#> [186] 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1
#> [223] 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 0 1 1 0
#> [260] 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0
#> [297] 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [334] 1 1 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [371] 0 0 1 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#> [408] 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1
#> [445] 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [482] 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1
#> [519] 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [556] 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [593] 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0
#> [630] 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[14]]
#>   [1] 0 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1
#>  [38] 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1
#>  [75] 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 1 0
#> [112] 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1
#> [149] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 0 0 0 1 0 1
#> [186] 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 0
#> [223] 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1
#> [260] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1
#> [297] 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1
#> [334] 1 1 0 0 0 0 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 0 0 1 0 0 1 0 0 1 1 1 1 1 0 1 1
#> [371] 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 0 1 0
#> [408] 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0
#> [445] 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1
#> [482] 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0
#> [519] 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 0
#> [556] 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 0 1
#> [593] 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 0 1 0 1 1
#> [630] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[15]]
#>   [1] 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1
#>  [38] 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1
#>  [75] 1 0 0 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1
#> [112] 1 1 0 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
#> [149] 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1
#> [186] 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 0 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 1 1 1 1
#> [223] 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1
#> [260] 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 1
#> [297] 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1
#> [334] 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0
#> [371] 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1
#> [408] 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1
#> [445] 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1
#> [482] 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [519] 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1
#> [556] 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0
#> [593] 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 0 1
#> [630] 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[16]]
#>   [1] 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0
#>  [38] 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1
#>  [75] 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0
#> [112] 1 0 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1
#> [149] 0 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0
#> [186] 1 0 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [223] 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [260] 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1
#> [297] 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0
#> [334] 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0
#> [371] 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1
#> [408] 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0
#> [445] 1 0 0 0 1 1 0 0 0 1 0 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0
#> [482] 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0
#> [519] 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 0 1 0 1
#> [556] 1 0 0 1 0 1 1 0 0 0 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [593] 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1
#> [630] 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[17]]
#>   [1] 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 0 0
#>  [38] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1
#>  [75] 1 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0
#> [112] 1 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [149] 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1
#> [186] 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [223] 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0
#> [260] 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 0 0
#> [297] 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1
#> [334] 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1
#> [371] 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [408] 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0
#> [445] 0 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 0
#> [482] 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1
#> [519] 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1
#> [556] 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0
#> [593] 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [630] 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[18]]
#>   [1] 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1
#>  [38] 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#>  [75] 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 1 0 1
#> [112] 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1
#> [149] 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 0 0 1 1 0 0
#> [186] 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 1
#> [223] 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [260] 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 0
#> [297] 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1
#> [334] 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [371] 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0
#> [408] 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1
#> [445] 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0
#> [482] 1 0 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1
#> [519] 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1
#> [556] 0 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0
#> [593] 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1
#> [630] 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[19]]
#>   [1] 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 0 1
#>  [38] 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1
#>  [75] 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [112] 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [149] 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0
#> [186] 0 1 0 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1
#> [223] 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0
#> [260] 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 1 0 0 1
#> [297] 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1
#> [334] 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 0 1 0 0
#> [371] 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1
#> [408] 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 0
#> [445] 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1
#> [482] 1 1 1 0 0 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0
#> [519] 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0
#> [556] 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1
#> [593] 1 0 1 1 0 1 1 0 0 1 0 1 0 0 0 0 1 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0 0 0
#> [630] 1 0 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1
#> [667] 1 0 0 0
#> 
#> $weights[[20]]
#>   [1] 1 1 0 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1
#>  [38] 1 1 1 1 0 1 0 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0
#>  [75] 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0
#> [112] 1 0 0 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 0
#> [149] 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [186] 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [223] 1 0 0 1 1 0 0 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [260] 1 0 0 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [297] 0 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [334] 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0
#> [371] 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1
#> [408] 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1
#> [445] 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 0 0
#> [482] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 0 1 0 1 0 1 0 1 0 1
#> [519] 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1
#> [556] 0 0 0 1 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1
#> [593] 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0
#> [630] 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 0 1
#> [667] 1 0 1 0
#> 
#> $weights[[21]]
#>   [1] 1 0 1 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1
#>  [38] 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1
#>  [75] 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [112] 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1
#> [149] 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [186] 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1
#> [223] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1
#> [260] 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 0
#> [297] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1
#> [334] 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [371] 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0
#> [408] 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [445] 1 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1
#> [482] 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1
#> [519] 1 0 1 1 1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [556] 0 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 0 0 0 0 1 1 0 1
#> [630] 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[22]]
#>   [1] 0 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1
#>  [38] 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1
#>  [75] 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1
#> [112] 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0
#> [149] 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1
#> [186] 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [223] 0 1 0 0 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1
#> [260] 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0
#> [297] 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0
#> [334] 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0
#> [371] 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0
#> [408] 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1
#> [445] 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [482] 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0
#> [519] 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0
#> [556] 1 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1
#> [593] 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0
#> [630] 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[23]]
#>   [1] 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#>  [38] 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 1
#>  [75] 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0
#> [112] 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0
#> [149] 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1
#> [186] 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1
#> [223] 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1
#> [260] 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1
#> [297] 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0
#> [334] 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1
#> [371] 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0
#> [408] 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1
#> [445] 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 0
#> [482] 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1
#> [519] 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [556] 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1
#> [593] 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1
#> [630] 1 0 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1
#> [667] 0 1 0 1
#> 
#> $weights[[24]]
#>   [1] 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1
#>  [38] 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0 0 0 1 0 1 1 0 0 1 0
#>  [75] 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0
#> [112] 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [149] 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0
#> [186] 1 0 0 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0
#> [223] 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 0 1 0 1 0 1 0 0
#> [260] 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 1
#> [297] 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0
#> [334] 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0
#> [371] 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0
#> [408] 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1
#> [445] 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [482] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0
#> [519] 1 0 1 0 1 1 1 1 0 0 0 0 1 0 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 0 0 1 0
#> [556] 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1
#> [593] 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1
#> [630] 1 0 1 0 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[25]]
#>   [1] 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0
#>  [38] 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 1 0 1
#>  [75] 0 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1
#> [112] 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 0
#> [149] 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0
#> [186] 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0
#> [223] 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1
#> [260] 0 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1
#> [297] 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 0 0 0 0 0
#> [334] 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1
#> [371] 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1
#> [408] 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [445] 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [482] 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1
#> [519] 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1
#> [556] 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0
#> [593] 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0
#> [630] 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1
#> [667] 0 1 0 1
#> 
#> $weights[[26]]
#>   [1] 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0 1 1 1 0 0 1 1
#>  [38] 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#>  [75] 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1
#> [112] 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 0 1 1
#> [149] 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [186] 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1
#> [223] 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1
#> [260] 0 1 1 1 0 0 0 0 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1
#> [297] 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 0 0 1 0 1 0
#> [334] 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [371] 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 1 0 0 0
#> [408] 1 0 0 0 1 0 0 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1
#> [445] 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1 0
#> [482] 1 0 1 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [519] 0 0 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1
#> [556] 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1
#> [593] 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0
#> [630] 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[27]]
#>   [1] 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1
#>  [38] 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1
#>  [75] 0 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [112] 0 0 0 0 1 0 0 0 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 0 1 1 0 1
#> [149] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1
#> [186] 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1
#> [223] 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0
#> [260] 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [297] 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0
#> [334] 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1
#> [371] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0
#> [408] 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 0
#> [445] 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [482] 0 1 1 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0
#> [519] 0 0 1 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0
#> [556] 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0
#> [593] 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1
#> [630] 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[28]]
#>   [1] 0 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0
#>  [38] 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0
#>  [75] 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0
#> [112] 0 1 0 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1
#> [149] 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1
#> [186] 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1
#> [223] 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1
#> [260] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 1
#> [297] 1 1 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1
#> [334] 1 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0
#> [371] 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1 0 0
#> [408] 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [445] 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1
#> [482] 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0
#> [519] 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0
#> [556] 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 0
#> [593] 1 1 1 0 0 1 1 1 0 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1
#> [630] 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[29]]
#>   [1] 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0
#>  [38] 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 0 1
#>  [75] 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [112] 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 0 1 0 1
#> [149] 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1
#> [186] 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1
#> [223] 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0
#> [260] 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [297] 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [334] 1 0 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1
#> [371] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1
#> [408] 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0
#> [445] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1
#> [482] 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 1
#> [519] 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [556] 1 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1
#> [593] 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1
#> [630] 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1
#> [667] 0 0 1 0
#> 
#> $weights[[30]]
#>   [1] 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0
#>  [38] 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 0 0 0 0 0 0
#>  [75] 0 1 0 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0
#> [112] 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 0 0 1 0 1 0 0
#> [149] 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0
#> [186] 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0 0 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1
#> [223] 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1
#> [260] 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0
#> [297] 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0
#> [334] 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1
#> [371] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [408] 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1
#> [445] 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [482] 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0
#> [519] 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 0 0
#> [556] 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1
#> [593] 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 1 1 0 0 1 1
#> [630] 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 0 0 0 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[31]]
#>   [1] 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1
#>  [38] 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0
#>  [75] 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [112] 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1
#> [149] 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0
#> [186] 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1
#> [223] 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0
#> [260] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1
#> [297] 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0
#> [334] 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1
#> [371] 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0
#> [408] 1 0 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [445] 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#> [482] 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1
#> [519] 0 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 0 1 1
#> [556] 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 1
#> [593] 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1
#> [630] 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[32]]
#>   [1] 1 0 1 0 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0
#>  [38] 1 0 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1
#>  [75] 0 1 1 1 0 1 1 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0
#> [112] 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1
#> [149] 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 0
#> [186] 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0
#> [223] 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1
#> [260] 1 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0
#> [297] 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0
#> [334] 1 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0
#> [371] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1
#> [408] 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [445] 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1
#> [482] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1
#> [519] 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1
#> [556] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 0
#> [593] 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0
#> [630] 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1
#> [667] 0 0 0 0
#> 
#> $weights[[33]]
#>   [1] 1 0 0 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 0 1
#>  [38] 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1
#>  [75] 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1
#> [112] 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1
#> [149] 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1
#> [186] 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [223] 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1
#> [260] 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 1
#> [297] 0 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [371] 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 1 0 1 0 1 0 1
#> [408] 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1
#> [445] 0 1 0 1 0 0 0 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 0 1 0 1
#> [482] 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0
#> [519] 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [556] 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0
#> [593] 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 0
#> [630] 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[34]]
#>   [1] 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 0 1 1 0 0 0 1 1
#>  [38] 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1
#>  [75] 1 1 1 0 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0
#> [112] 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0
#> [149] 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1
#> [186] 0 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [223] 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1
#> [260] 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0
#> [297] 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1
#> [334] 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0
#> [371] 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1
#> [408] 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1
#> [445] 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0
#> [482] 1 0 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 0
#> [519] 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [556] 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1
#> [593] 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0
#> [630] 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1
#> [667] 1 0 1 0
#> 
#> $weights[[35]]
#>   [1] 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1 0 1
#>  [38] 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0
#>  [75] 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0
#> [112] 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0
#> [149] 1 0 1 0 0 1 0 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0
#> [186] 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0
#> [223] 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0
#> [260] 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1
#> [297] 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1
#> [334] 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0
#> [371] 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1
#> [408] 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 0
#> [445] 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0
#> [482] 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [519] 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1
#> [556] 0 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0
#> [593] 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0 0
#> [630] 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[36]]
#>   [1] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0
#>  [38] 0 1 0 1 1 1 0 0 0 1 1 0 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1
#>  [75] 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0
#> [112] 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0
#> [149] 1 0 0 1 0 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0
#> [186] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [223] 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [260] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0
#> [297] 1 0 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0
#> [334] 0 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [371] 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1
#> [408] 1 1 0 1 0 0 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1
#> [445] 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0
#> [482] 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0
#> [519] 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0
#> [556] 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1
#> [593] 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0
#> [630] 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[37]]
#>   [1] 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0
#>  [38] 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [112] 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1
#> [149] 1 1 1 1 1 0 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0
#> [186] 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1
#> [223] 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [260] 1 0 1 1 1 0 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0
#> [297] 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 0
#> [334] 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1 0 0
#> [371] 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [408] 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0
#> [445] 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1
#> [482] 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1
#> [519] 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1
#> [556] 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0
#> [593] 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1
#> [630] 1 0 1 0 1 0 0 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[38]]
#>   [1] 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0
#>  [38] 0 1 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1
#>  [75] 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1
#> [112] 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0
#> [149] 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 1
#> [186] 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [223] 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0
#> [260] 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1
#> [297] 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1
#> [334] 0 0 1 1 0 1 0 1 1 0 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#> [371] 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1
#> [408] 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1
#> [445] 0 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [482] 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [519] 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 0 0 0
#> [556] 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0
#> [593] 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0
#> [630] 1 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 0
#> [667] 0 0 1 1
#> 
#> $weights[[39]]
#>   [1] 1 1 1 1 0 0 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0
#>  [38] 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1
#>  [75] 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [112] 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0
#> [149] 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 1
#> [186] 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [223] 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1
#> [260] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 0 0 1 0
#> [297] 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1
#> [334] 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 0 0
#> [371] 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1
#> [408] 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1
#> [445] 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1
#> [482] 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 1 0 1 0 0 0
#> [519] 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 0 0 0 1 1 0 1 1
#> [556] 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 1
#> [593] 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [630] 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1
#> [667] 0 1 0 0
#> 
#> $weights[[40]]
#>   [1] 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 1 0
#>  [38] 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1
#>  [75] 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1
#> [112] 1 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 0 1 0 1 1 0 0
#> [149] 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1
#> [186] 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 0
#> [223] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1
#> [260] 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0
#> [297] 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 0
#> [334] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1
#> [371] 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 0
#> [408] 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1
#> [445] 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 0 0 0 1 1 0 0
#> [482] 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1
#> [519] 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 0 1
#> [556] 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1
#> [593] 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 0 0 0 1 0 1 0 1 0
#> [630] 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[41]]
#>   [1] 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1
#>  [38] 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1
#>  [75] 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1
#> [112] 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [149] 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1
#> [186] 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0
#> [223] 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0
#> [260] 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 0
#> [297] 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1
#> [334] 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1
#> [371] 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0
#> [408] 0 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [445] 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1
#> [482] 0 0 0 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0
#> [519] 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 1 0 1
#> [556] 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [593] 1 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 0
#> [630] 1 0 1 0 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0
#> [667] 1 0 0 0
#> 
#> $weights[[42]]
#>   [1] 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0
#>  [38] 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1
#>  [75] 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [112] 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1
#> [149] 0 0 1 0 0 0 0 0 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1
#> [186] 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0
#> [223] 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 1
#> [260] 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [297] 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1
#> [334] 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1
#> [371] 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1
#> [408] 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 1 0 0 1 0 1 1
#> [445] 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1
#> [482] 0 1 0 1 0 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1
#> [519] 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1
#> [556] 1 1 0 0 0 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [593] 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [630] 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[43]]
#>   [1] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#>  [38] 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#>  [75] 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [112] 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [149] 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 0
#> [186] 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1
#> [223] 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [260] 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0
#> [297] 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1
#> [334] 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0
#> [371] 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0
#> [408] 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 0
#> [445] 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1
#> [482] 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 0 1 1 0
#> [519] 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 0 1 1 0 0 0 0 0 1 0 1 1 0 0
#> [556] 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0
#> [593] 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1
#> [630] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[44]]
#>   [1] 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0
#>  [38] 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1
#>  [75] 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0
#> [112] 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1
#> [149] 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1
#> [186] 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0
#> [223] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1
#> [260] 1 1 0 0 1 0 1 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [297] 0 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1
#> [334] 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [371] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0
#> [408] 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1
#> [445] 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0
#> [482] 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1
#> [519] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1
#> [556] 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0
#> [593] 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0
#> [630] 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[45]]
#>   [1] 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0
#>  [38] 1 0 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0
#>  [75] 0 1 0 1 0 1 1 0 0 0 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [112] 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [149] 1 1 0 0 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0
#> [186] 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 0 0 0 0 0
#> [223] 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0
#> [260] 0 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [297] 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0
#> [334] 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1
#> [371] 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [408] 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1
#> [445] 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0
#> [482] 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0
#> [519] 0 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0
#> [556] 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1
#> [593] 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1
#> [630] 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 0 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[46]]
#>   [1] 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0
#>  [38] 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 1
#>  [75] 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 0 0
#> [112] 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [149] 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1
#> [186] 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0
#> [223] 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [260] 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [297] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1
#> [334] 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0
#> [371] 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1
#> [408] 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1
#> [445] 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1
#> [482] 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1
#> [519] 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1
#> [556] 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [593] 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0
#> [630] 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[47]]
#>   [1] 1 0 0 0 1 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1
#>  [38] 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 0 0 0 0 0
#>  [75] 1 0 0 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1
#> [112] 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [149] 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0
#> [186] 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 1 0 1 1 1 0
#> [223] 0 0 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1
#> [260] 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0
#> [297] 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0
#> [334] 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1
#> [371] 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0
#> [408] 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0
#> [445] 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 0 0 1
#> [482] 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1
#> [519] 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [556] 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 1 0 1 0 0 1
#> [593] 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1
#> [630] 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[48]]
#>   [1] 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1
#>  [38] 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0
#>  [75] 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0
#> [112] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [149] 0 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1
#> [186] 0 1 1 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1
#> [223] 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1
#> [260] 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1
#> [297] 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1
#> [334] 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0
#> [371] 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0
#> [408] 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0
#> [445] 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [482] 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [519] 0 0 1 1 0 1 0 0 0 0 1 0 0 0 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0
#> [556] 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0
#> [630] 0 1 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[49]]
#>   [1] 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1
#>  [38] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1
#>  [75] 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1
#> [112] 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0 1 1 0 1
#> [149] 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [186] 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [223] 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0
#> [260] 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1
#> [297] 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1
#> [334] 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 0 1
#> [371] 0 0 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [408] 1 0 0 0 0 1 1 0 0 0 1 0 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1
#> [445] 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1
#> [482] 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0
#> [519] 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1
#> [556] 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1
#> [593] 1 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0
#> [630] 1 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[50]]
#>   [1] 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0
#>  [38] 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 0 0 0 0 0 0 0 0 1 1 0 0 1 1
#>  [75] 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1
#> [112] 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 0 0 0 1 1
#> [149] 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1
#> [186] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 0 0 0 0 0 0 1 1 1
#> [223] 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 0 1 0 0 1 0 0 1 1 1
#> [260] 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0 0
#> [297] 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1
#> [334] 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0
#> [371] 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1
#> [408] 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 0 1
#> [445] 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 0 1
#> [482] 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0
#> [519] 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0 0
#> [556] 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1
#> [593] 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0
#> [630] 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1       5.0+
#> 2     2       2.0+
#> 3     3       5.0+
#> 4     4       5.0+
#> 5     5     180.0+
#> 6     6     180.0+
#> 7     7      115.0
#> 8     8     180.0+
#> 9     9       5.0+
#> 10   10     180.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15       5.0+
#> 16   16       2.0+
#> 17   17     180.0+
#> 18   18     180.0+
#> 19   19        3.0
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24       2.0+
#> 25   25     180.0+
#> 26   26     180.0+
#> 27   27     180.0+
#> 28   28     180.0+
#> 29   29       5.0+
#> 30   30     180.0+
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33     180.0+
#> 34   34     180.0+
#> 35   35     180.0+
#> 36   36     180.0+
#> 37   37     180.0+
#> 38   38       5.0+
#> 39   39     161.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44       5.0+
#> 45   45     180.0+
#> 46   46     180.0+
#> 47   47     177.0+
#> 48   48     180.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     180.0+
#> 53   53      10.0+
#> 54   54     172.0+
#> 55   55     180.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58        7.0
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61     179.0+
#> 62   62     180.0+
#> 63   63     180.0+
#> 64   64     180.0+
#> 65   65     180.0+
#> 66   66     180.0+
#> 67   67     180.0+
#> 68   68     180.0+
#> 69   69     180.0+
#> 70   70       36.0
#> 71   71     180.0+
#> 72   72       4.0+
#> 73   73     180.0+
#> 74   74     180.0+
#> 75   75     180.0+
#> 76   76       77.0
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80     180.0+
#> 81   81     180.0+
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84       4.0+
#> 85   85       85.0
#> 86   86     180.0+
#> 87   87     180.0+
#> 88   88       99.0
#> 89   89     180.0+
#> 90   90      16.0+
#> 91   91       7.0+
#> 92   92       6.0+
#> 93   93     180.0+
#> 94   94     180.0+
#> 95   95     180.0+
#> 96   96      13.0+
#> 97   97     171.0+
#> 98   98     180.0+
#> 99   99     180.0+
#> 100 100       28.0
#> 101 101        1.0
#> 102 102     180.0+
#> 103 103       9.0+
#> 104 104     180.0+
#> 105 105     180.0+
#> 106 106     180.0+
#> 107 107        2.0
#> 108 108     180.0+
#> 109 109     180.0+
#> 110 110     180.0+
#> 111 111      16.0+
#> 112 112       16.0
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115      12.0+
#> 116 116     134.0+
#> 117 117     180.0+
#> 118 118        8.0
#> 119 119        2.0
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123      140.0
#> 124 124      165.0
#> 125 125     180.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128     180.0+
#> 129 129     180.0+
#> 130 130       8.0+
#> 131 131     180.0+
#> 132 132     180.0+
#> 133 133     180.0+
#> 134 134     180.0+
#> 135 135     171.0+
#> 136 136       15.0
#> 137 137     166.0+
#> 138 138     180.0+
#> 139 139       4.0+
#> 140 140     147.0+
#> 141 141     180.0+
#> 142 142     180.0+
#> 143 143       5.0+
#> 144 144     180.0+
#> 145 145       4.0+
#> 146 146       2.0+
#> 147 147     180.0+
#> 148 148     180.0+
#> 149 149     180.0+
#> 150 150     180.0+
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153     180.0+
#> 154 154       64.0
#> 155 155     180.0+
#> 156 156       9.0+
#> 157 157     180.0+
#> 158 158        0.5
#> 159 159     171.0+
#> 160 160     180.0+
#> 161 161     180.0+
#> 162 162        3.0
#> 163 163        1.0
#> 164 164     180.0+
#> 165 165     180.0+
#> 166 166      10.0+
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169       17.0
#> 170 170       45.0
#> 171 171       3.0+
#> 172 172     180.0+
#> 173 173     180.0+
#> 174 174       9.0+
#> 175 175     180.0+
#> 176 176     172.0+
#> 177 177       24.0
#> 178 178     180.0+
#> 179 179        8.0
#> 180 180     180.0+
#> 181 181     180.0+
#> 182 182       77.0
#> 183 183      13.0+
#> 184 184       8.0+
#> 185 185     180.0+
#> 186 186     180.0+
#> 187 187       94.0
#> 188 188     180.0+
#> 189 189      169.0
#> 190 190        7.0
#> 191 191       7.0+
#> 192 192     180.0+
#> 193 193     180.0+
#> 194 194       3.0+
#> 195 195     180.0+
#> 196 196     180.0+
#> 197 197       28.0
#> 198 198        5.0
#> 199 199       18.0
#> 200 200       5.0+
#> 201 201     180.0+
#> 202 202     180.0+
#> 203 203     180.0+
#> 204 204        1.0
#> 205 205     180.0+
#> 206 206     180.0+
#> 207 207     180.0+
#> 208 208     180.0+
#> 209 209     180.0+
#> 210 210     180.0+
#> 211 211     180.0+
#> 212 212     180.0+
#> 213 213     180.0+
#> 214 214        9.0
#> 215 215       7.0+
#> 216 216     180.0+
#> 217 217       84.0
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221        1.0
#> 222 222     180.0+
#> 223 223       4.0+
#> 224 224       3.0+
#> 225 225      167.0
#> 226 226     180.0+
#> 227 227     180.0+
#> 228 228       17.0
#> 229 229     180.0+
#> 230 230     180.0+
#> 231 231     180.0+
#> 232 232     180.0+
#> 233 233      14.0+
#> 234 234       36.0
#> 235 235     180.0+
#> 236 236       3.0+
#> 237 237       88.0
#> 238 238     180.0+
#> 239 239     180.0+
#> 240 240     180.0+
#> 241 241     180.0+
#> 242 242        0.5
#> 243 243     180.0+
#> 244 244     180.0+
#> 245 245      12.0+
#> 246 246     180.0+
#> 247 247     180.0+
#> 248 248     180.0+
#> 249 249       12.0
#> 250 250        3.0
#> 251 251     180.0+
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254      11.0+
#> 255 255       2.0+
#> 256 256      18.0+
#> 257 257     180.0+
#> 258 258     180.0+
#> 259 259     180.0+
#> 260 260     180.0+
#> 261 261     180.0+
#> 262 262       3.0+
#> 263 263       2.0+
#> 264 264       15.0
#> 265 265     180.0+
#> 266 266     180.0+
#> 267 267       5.0+
#> 268 268       13.0
#> 269 269     180.0+
#> 270 270     179.0+
#> 271 271      14.0+
#> 272 272        3.0
#> 273 273       0.5+
#> 274 274     180.0+
#> 275 275     180.0+
#> 276 276     175.0+
#> 277 277     180.0+
#> 278 278     180.0+
#> 279 279        8.0
#> 280 280     180.0+
#> 281 281     180.0+
#> 282 282     123.0+
#> 283 283     180.0+
#> 284 284       79.0
#> 285 285       80.0
#> 286 286      15.0+
#> 287 287     180.0+
#> 288 288       4.0+
#> 289 289       15.0
#> 290 290     180.0+
#> 291 291     174.0+
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294     180.0+
#> 295 295       8.0+
#> 296 296        3.0
#> 297 297       10.0
#> 298 298     180.0+
#> 299 299     180.0+
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302      19.0+
#> 303 303       12.0
#> 304 304     180.0+
#> 305 305     179.0+
#> 306 306     180.0+
#> 307 307     180.0+
#> 308 308      11.0+
#> 309 309     180.0+
#> 310 310       18.0
#> 311 311     180.0+
#> 312 312     180.0+
#> 313 313     180.0+
#> 314 314     180.0+
#> 315 315       93.0
#> 316 316      21.0+
#> 317 317     180.0+
#> 318 318        1.0
#> 319 319      18.0+
#> 320 320      101.0
#> 321 321        4.0
#> 322 322     180.0+
#> 323 323     180.0+
#> 324 324     180.0+
#> 325 325        1.0
#> 326 326     180.0+
#> 327 327      171.0
#> 328 328     180.0+
#> 329 329     174.0+
#> 330 330     180.0+
#> 331 331        0.5
#> 332 332     180.0+
#> 333 333     180.0+
#> 334 334     180.0+
#> 335 335      14.0+
#> 336 336       7.0+
#> 337 337        2.0
#> 338 338       45.0
#> 339 339       3.0+
#> 340 340     180.0+
#> 341 341       36.0
#> 342 342       5.0+
#> 343 343     180.0+
#> 344 344     180.0+
#> 345 345     180.0+
#> 346 346       8.0+
#> 347 347     180.0+
#> 348 348     180.0+
#> 349 349     180.0+
#> 350 350        7.0
#> 351 351     180.0+
#> 352 352        7.0
#> 353 353       8.0+
#> 354 354      13.0+
#> 355 355      123.0
#> 356 356     180.0+
#> 357 357     180.0+
#> 358 358       19.0
#> 359 359        1.0
#> 360 360        1.0
#> 361 361       60.0
#> 362 362       76.0
#> 363 363     180.0+
#> 364 364      10.0+
#> 365 365     180.0+
#> 366 366     180.0+
#> 367 367      162.0
#> 368 368       7.0+
#> 369 369       7.0+
#> 370 370        9.0
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373     180.0+
#> 374 374       12.0
#> 375 375     180.0+
#> 376 376     180.0+
#> 377 377     180.0+
#> 378 378      152.0
#> 379 379        2.0
#> 380 380       76.0
#> 381 381     173.0+
#> 382 382     180.0+
#> 383 383     180.0+
#> 384 384     180.0+
#> 385 385     180.0+
#> 386 386      16.0+
#> 387 387     180.0+
#> 388 388     180.0+
#> 389 389      16.0+
#> 390 390     180.0+
#> 391 391     180.0+
#> 392 392     180.0+
#> 393 393       7.0+
#> 394 394       15.0
#> 395 395       3.0+
#> 396 396     180.0+
#> 397 397     180.0+
#> 398 398     180.0+
#> 399 399     180.0+
#> 400 400        2.0
#> 401 401     180.0+
#> 402 402     180.0+
#> 403 403       20.0
#> 404 404     180.0+
#> 405 405     180.0+
#> 406 406     180.0+
#> 407 407        8.0
#> 408 408        3.0
#> 409 409       58.0
#> 410 410     180.0+
#> 411 411     180.0+
#> 412 412     180.0+
#> 413 413     180.0+
#> 414 414        3.0
#> 415 415     180.0+
#> 416 416      175.0
#> 417 417        2.0
#> 418 418     180.0+
#> 419 419      10.0+
#> 420 420     180.0+
#> 421 421     179.0+
#> 422 422        1.0
#> 423 423     180.0+
#> 424 424     180.0+
#> 425 425       15.0
#> 426 426     180.0+
#> 427 427       10.0
#> 428 428       13.0
#> 429 429     180.0+
#> 430 430       4.0+
#> 431 431     180.0+
#> 432 432       10.0
#> 433 433       57.0
#> 434 434     180.0+
#> 435 435       11.0
#> 436 436       3.0+
#> 437 437        5.0
#> 438 438     180.0+
#> 439 439       12.0
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442     180.0+
#> 443 443     180.0+
#> 444 444       34.0
#> 445 445     180.0+
#> 446 446     180.0+
#> 447 447        7.0
#> 448 448     180.0+
#> 449 449       10.0
#> 450 450     180.0+
#> 451 451        3.0
#> 452 452        6.0
#> 453 453     180.0+
#> 454 454     180.0+
#> 455 455     174.0+
#> 456 456       12.0
#> 457 457     180.0+
#> 458 458       46.0
#> 459 459        1.0
#> 460 460     180.0+
#> 461 461     180.0+
#> 462 462     180.0+
#> 463 463       12.0
#> 464 464     180.0+
#> 465 465     180.0+
#> 466 466     180.0+
#> 467 467        8.0
#> 468 468     180.0+
#> 469 469       33.0
#> 470 470     180.0+
#> 471 471     180.0+
#> 472 472     180.0+
#> 473 473     180.0+
#> 474 474        3.0
#> 475 475     168.0+
#> 476 476     180.0+
#> 477 477     180.0+
#> 478 478       18.0
#> 479 479     180.0+
#> 480 480       47.0
#> 481 481       11.0
#> 482 482     180.0+
#> 483 483        7.0
#> 484 484     180.0+
#> 485 485       32.0
#> 486 486      119.0
#> 487 487     180.0+
#> 488 488        8.0
#> 489 489        1.0
#> 490 490       80.0
#> 491 491     180.0+
#> 492 492       4.0+
#> 493 493        2.0
#> 494 494     180.0+
#> 495 495       11.0
#> 496 496       29.0
#> 497 497       32.0
#> 498 498       23.0
#> 499 499        6.0
#> 500 500       3.0+
#> 501 501     180.0+
#> 502 502     180.0+
#> 503 503     180.0+
#> 504 504        4.0
#> 505 505      10.0+
#> 506 506     180.0+
#> 507 507       3.0+
#> 508 508       2.0+
#> 509 509        1.0
#> 510 510        1.0
#> 511 511       43.0
#> 512 512        3.0
#> 513 513     180.0+
#> 514 514      138.0
#> 515 515     180.0+
#> 516 516     180.0+
#> 517 517        8.0
#> 518 518       59.0
#> 519 519     180.0+
#> 520 520       93.0
#> 521 521      173.0
#> 522 522     180.0+
#> 523 523       37.0
#> 524 524     180.0+
#> 525 525     175.0+
#> 526 526       7.0+
#> 527 527       22.0
#> 528 528      15.0+
#> 529 529       5.0+
#> 530 530     180.0+
#> 531 531        3.0
#> 532 532     171.0+
#> 533 533     166.0+
#> 534 534      20.0+
#> 535 535        1.0
#> 536 536       3.0+
#> 537 537       10.0
#> 538 538     180.0+
#> 539 539       85.0
#> 540 540       6.0+
#> 541 541        1.0
#> 542 542     180.0+
#> 543 543      108.0
#> 544 544     180.0+
#> 545 545      125.0
#> 546 546     180.0+
#> 547 547        4.0
#> 548 548       9.0+
#> 549 549     180.0+
#> 550 550     180.0+
#> 551 551      103.0
#> 552 552     180.0+
#> 553 553      169.0
#> 554 554       70.0
#> 555 555        4.0
#> 556 556     180.0+
#> 557 557     180.0+
#> 558 558     180.0+
#> 559 559       20.0
#> 560 560       8.0+
#> 561 561     180.0+
#> 562 562     180.0+
#> 563 563     180.0+
#> 564 564     177.0+
#> 565 565        0.5
#> 566 566      128.0
#> 567 567      167.0
#> 568 568       62.0
#> 569 569        4.0
#> 570 570        1.0
#> 571 571       38.0
#> 572 572     180.0+
#> 573 573       90.0
#> 574 574     180.0+
#> 575 575     180.0+
#> 576 576     180.0+
#> 577 577       89.0
#> 578 578       71.0
#> 579 579        1.0
#> 580 580       19.0
#> 581 581     180.0+
#> 582 582     180.0+
#> 583 583     180.0+
#> 584 584        2.0
#> 585 585     180.0+
#> 586 586       4.0+
#> 587 587     180.0+
#> 588 588        1.0
#> 589 589       5.0+
#> 590 590       4.0+
#> 591 591     180.0+
#> 592 592       77.0
#> 593 593     180.0+
#> 594 594      126.0
#> 595 595        8.0
#> 596 596     180.0+
#> 597 597     180.0+
#> 598 598     180.0+
#> 599 599     180.0+
#> 600 600     180.0+
#> 601 601     180.0+
#> 602 602        5.0
#> 603 603      174.0
#> 604 604        6.0
#> 605 605       70.0
#> 606 606     180.0+
#> 607 607     180.0+
#> 608 608     180.0+
#> 609 609       14.0
#> 610 610        3.0
#> 611 611     180.0+
#> 612 612     180.0+
#> 613 613     180.0+
#> 614 614       3.0+
#> 615 615       6.0+
#> 616 616       4.0+
#> 617 617        4.0
#> 618 618       65.0
#> 619 619       11.0
#> 620 620     180.0+
#> 621 621       46.0
#> 622 622     180.0+
#> 623 623        4.0
#> 624 624      119.0
#> 625 625     180.0+
#> 626 626        8.0
#> 627 627       29.0
#> 628 628     180.0+
#> 629 629     180.0+
#> 630 630       46.0
#> 631 631       1.0+
#> 632 632     180.0+
#> 633 633        8.0
#> 634 634     180.0+
#> 635 635       25.0
#> 636 636      145.0
#> 637 637        3.0
#> 638 638       24.0
#> 639 639       50.0
#> 640 640      126.0
#> 641 641     180.0+
#> 642 642     180.0+
#> 643 643        1.0
#> 644 644     178.0+
#> 645 645       89.0
#> 646 646       75.0
#> 647 647        1.0
#> 648 648       33.0
#> 649 649      158.0
#> 650 650      168.0
#> 651 651      169.0
#> 652 652        7.0
#> 653 653        4.0
#> 654 654        0.5
#> 655 655     180.0+
#> 656 656     180.0+
#> 657 657       50.0
#> 658 658       1.0+
#> 659 659        2.0
#> 660 660       8.0+
#> 661 661     180.0+
#> 662 662       67.0
#> 663 663       12.0
#> 664 664        8.0
#> 665 665       26.0
#> 666 666       53.0
#> 667 667        0.5
#> 668 668     180.0+
#> 669 669        3.0
#> 670 670      15.0+
#> 
#> $terms
#> Surv(time, status, type = "right") ~ age + los + revasc + revascdays + 
#>     stchange + sysbp
#> attr(,"variables")
#> list(Surv(time, status, type = "right"), age, los, revasc, revascdays, 
#>     stchange, sysbp)
#> attr(,"factors")
#>                                    age los revasc revascdays stchange sysbp
#> Surv(time, status, type = "right")   0   0      0          0        0     0
#> age                                  1   0      0          0        0     0
#> los                                  0   1      0          0        0     0
#> revasc                               0   0      1          0        0     0
#> revascdays                           0   0      0          1        0     0
#> stchange                             0   0      0          0        1     0
#> sysbp                                0   0      0          0        0     1
#> attr(,"term.labels")
#> [1] "age"        "los"        "revasc"     "revascdays" "stchange"  
#> [6] "sysbp"     
#> attr(,"order")
#> [1] 1 1 1 1 1 1
#> attr(,"intercept")
#> [1] 1
#> attr(,"response")
#> [1] 1
#> attr(,".Environment")
#> <environment: namespace:survival>
#> attr(,"Formula_with_dot")
#> Surv(time, status, type = "right") ~ .
#> <environment: namespace:survival>
#> attr(,"Formula_without_dot")
#> Surv(time, status, type = "right") ~ age + los + revasc + revascdays + 
#>     stchange + sysbp
#> <environment: namespace:survival>
#> attr(,"dot")
#> [1] "sequential"
#> 
#> $info
#> $info$call
#> partykit::cforest(formula = task$formula(), data = task$data(), 
#>     weights = self$.__enclos_env__$private$.get_weights(task), 
#>     control = control, ntree = 50L, perturb = perturb, cores = 1L)
#> 
#> $info$control
#> $info$control$criterion
#> [1] "p.value"
#> 
#> $info$control$logmincriterion
#> [1] -Inf
#> 
#> $info$control$minsplit
#> [1] 20
#> 
#> $info$control$minbucket
#> [1] 7
#> 
#> $info$control$minprob
#> [1] 0.01
#> 
#> $info$control$maxvar
#> [1] Inf
#> 
#> $info$control$stump
#> [1] FALSE
#> 
#> $info$control$nmax
#>  yx   z 
#> Inf Inf 
#> 
#> $info$control$lookahead
#> [1] FALSE
#> 
#> $info$control$mtry
#> [1] 3
#> 
#> $info$control$maxdepth
#> [1] Inf
#> 
#> $info$control$multiway
#> [1] FALSE
#> 
#> $info$control$splittry
#> [1] 2
#> 
#> $info$control$maxsurrogate
#> [1] 0
#> 
#> $info$control$numsurrogate
#> [1] FALSE
#> 
#> $info$control$majority
#> [1] FALSE
#> 
#> $info$control$caseweights
#> [1] TRUE
#> 
#> $info$control$applyfun
#> function (X, FUN, ...) 
#> parallel::mclapply(X, FUN, ..., mc.set.seed = TRUE, mc.cores = cores)
#> <bytecode: 0x5589cd8c0b00>
#> <environment: 0x5589db736818>
#> 
#> $info$control$saveinfo
#> [1] FALSE
#> 
#> $info$control$bonferroni
#> [1] FALSE
#> 
#> $info$control$update
#> [1] FALSE
#> 
#> $info$control$selectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5589cd89af50>
#> <environment: 0x5589de441768>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5589cd898d90>
#> <environment: 0x5589de441848>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5589cd89af50>
#> <environment: 0x5589de441928>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5589cd898d90>
#> <environment: 0x5589de441a78>
#> 
#> $info$control$teststat
#> [1] "quadratic"
#> 
#> $info$control$splitstat
#> [1] "quadratic"
#> 
#> $info$control$splittest
#> [1] FALSE
#> 
#> $info$control$pargs
#> $maxpts
#> [1] 25000
#> 
#> $abseps
#> [1] 0.001
#> 
#> $releps
#> [1] 0
#> 
#> attr(,"class")
#> [1] "GenzBretz"
#> 
#> $info$control$testtype
#> [1] "Univariate"
#> 
#> $info$control$nresample
#> [1] 9999
#> 
#> $info$control$tol
#> [1] 1.490116e-08
#> 
#> $info$control$intersplit
#> [1] FALSE
#> 
#> $info$control$MIA
#> [1] FALSE
#> 
#> 
#> 
#> $trafo
#> function (subset, weights, info, estfun, object, ...) 
#> list(estfun = Y, unweighted = TRUE)
#> <bytecode: 0x5589cd910fa8>
#> <environment: 0x5589d82d9f90>
#> 
#> $predictf
#> ~age + los + revasc + revascdays + stchange + sysbp
#> attr(,"variables")
#> list(age, los, revasc, revascdays, stchange, sysbp)
#> attr(,"factors")
#>            age los revasc revascdays stchange sysbp
#> age          1   0      0          0        0     0
#> los          0   1      0          0        0     0
#> revasc       0   0      1          0        0     0
#> revascdays   0   0      0          1        0     0
#> stchange     0   0      0          0        1     0
#> sysbp        0   0      0          0        0     1
#> attr(,"term.labels")
#> [1] "age"        "los"        "revasc"     "revascdays" "stchange"  
#> [6] "sysbp"     
#> attr(,"order")
#> [1] 1 1 1 1 1 1
#> attr(,"intercept")
#> [1] 1
#> attr(,"response")
#> [1] 0
#> attr(,".Environment")
#> <environment: namespace:survival>
#> attr(,"Formula_with_dot")
#> Surv(time, status, type = "right") ~ .
#> <environment: namespace:survival>
#> attr(,"Formula_without_dot")
#> Surv(time, status, type = "right") ~ age + los + revasc + revascdays + 
#>     stchange + sysbp
#> <environment: namespace:survival>
#> attr(,"dot")
#> [1] "sequential"
#> 
#> attr(,"class")
#> [1] "cforest"      "constparties" "parties"     

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8412693 
```
