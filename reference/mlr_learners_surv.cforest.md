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
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 150 *
#> |   |   |   |   [6] V5 > 150
#> |   |   |   |   |   [7] V7 <= 120 *
#> |   |   |   |   |   [8] V7 > 120 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 3 *
#> |   |   |   |   |   [12] V5 > 3 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 2
#> |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   [16] V3 > 4 *
#> |   |   |   |   |   [17] V5 > 2 *
#> |   |   [18] V2 > 54
#> |   |   |   [19] V7 <= 172
#> |   |   |   |   [20] V5 <= 93
#> |   |   |   |   |   [21] V4 <= 0
#> |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   [26] V5 <= 8
#> |   |   |   |   |   |   |   |   [27] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [28] V3 > 7 *
#> |   |   |   |   |   |   |   [29] V5 > 8 *
#> |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   |   |   [32] V3 > 3
#> |   |   |   |   |   |   |   |   [33] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [34] V2 > 59
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 8 *
#> |   |   |   |   [37] V5 > 93
#> |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   [39] V6 > 0 *
#> |   |   |   [40] V7 > 172
#> |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   [42] V6 > 0 *
#> |   [43] V2 > 70
#> |   |   [44] V4 <= 0
#> |   |   |   [45] V7 <= 153
#> |   |   |   |   [46] V5 <= 168
#> |   |   |   |   |   [47] V7 <= 128
#> |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   [49] V6 > 0 *
#> |   |   |   |   |   [50] V7 > 128
#> |   |   |   |   |   |   [51] V2 <= 82 *
#> |   |   |   |   |   |   [52] V2 > 82 *
#> |   |   |   |   [53] V5 > 168 *
#> |   |   |   [54] V7 > 153
#> |   |   |   |   [55] V2 <= 73 *
#> |   |   |   |   [56] V2 > 73
#> |   |   |   |   |   [57] V3 <= 6 *
#> |   |   |   |   |   [58] V3 > 6 *
#> |   |   [59] V4 > 0
#> |   |   |   [60] V3 <= 13
#> |   |   |   |   [61] V7 <= 126
#> |   |   |   |   |   [62] V2 <= 76 *
#> |   |   |   |   |   [63] V2 > 76 *
#> |   |   |   |   [64] V7 > 126
#> |   |   |   |   |   [65] V3 <= 10
#> |   |   |   |   |   |   [66] V5 <= 0 *
#> |   |   |   |   |   |   [67] V5 > 0
#> |   |   |   |   |   |   |   [68] V6 <= 0 *
#> |   |   |   |   |   |   |   [69] V6 > 0 *
#> |   |   |   |   |   [70] V3 > 10 *
#> |   |   |   [71] V3 > 13
#> |   |   |   |   [72] V6 <= 0 *
#> |   |   |   |   [73] V6 > 0 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 1 *
#> |   |   |   |   [6] V5 > 1
#> |   |   |   |   |   [7] V7 <= 150
#> |   |   |   |   |   |   [8] V2 <= 60
#> |   |   |   |   |   |   |   [9] V2 <= 50 *
#> |   |   |   |   |   |   |   [10] V2 > 50 *
#> |   |   |   |   |   |   [11] V2 > 60
#> |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   |   [14] V7 > 150 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   [17] V2 <= 63
#> |   |   |   |   |   |   [18] V5 <= 5
#> |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   [20] V3 > 4 *
#> |   |   |   |   |   |   [21] V5 > 5 *
#> |   |   |   |   |   [22] V2 > 63
#> |   |   |   |   |   |   [23] V5 <= 5 *
#> |   |   |   |   |   |   [24] V5 > 5 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V3 <= 14
#> |   |   |   |   |   |   [27] V5 <= 0
#> |   |   |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   |   |   [29] V3 > 3 *
#> |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   [31] V5 <= 8
#> |   |   |   |   |   |   |   |   [32] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [33] V3 > 7 *
#> |   |   |   |   |   |   |   [34] V5 > 8 *
#> |   |   |   |   |   [35] V3 > 14 *
#> |   |   [36] V5 > 171
#> |   |   |   [37] V6 <= 0 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V3 <= 3 *
#> |   |   |   |   [40] V3 > 3
#> |   |   |   |   |   [41] V7 <= 120 *
#> |   |   |   |   |   [42] V7 > 120 *
#> |   [43] V2 > 74
#> |   |   [44] V4 <= 0
#> |   |   |   [45] V7 <= 125
#> |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V5 <= 8 *
#> |   |   |   |   |   [49] V5 > 8 *
#> |   |   |   [50] V7 > 125
#> |   |   |   |   [51] V5 <= 167
#> |   |   |   |   |   [52] V2 <= 81 *
#> |   |   |   |   |   [53] V2 > 81 *
#> |   |   |   |   [54] V5 > 167 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V7 <= 147
#> |   |   |   |   [57] V7 <= 110 *
#> |   |   |   |   [58] V7 > 110 *
#> |   |   |   [59] V7 > 147 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V3 <= 6 *
#> |   |   |   |   |   [7] V3 > 6 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 7
#> |   |   |   |   |   [11] V5 <= 2 *
#> |   |   |   |   |   [12] V5 > 2 *
#> |   |   |   |   [13] V5 > 7
#> |   |   |   |   |   [14] V2 <= 64 *
#> |   |   |   |   |   [15] V2 > 64
#> |   |   |   |   |   |   [16] V3 <= 10 *
#> |   |   |   |   |   |   [17] V3 > 10 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 72
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V2 <= 62
#> |   |   |   |   |   |   [22] V2 <= 45 *
#> |   |   |   |   |   |   [23] V2 > 45
#> |   |   |   |   |   |   |   [24] V3 <= 11 *
#> |   |   |   |   |   |   |   [25] V3 > 11 *
#> |   |   |   |   |   [26] V2 > 62
#> |   |   |   |   |   |   [27] V3 <= 12
#> |   |   |   |   |   |   |   [28] V5 <= 4 *
#> |   |   |   |   |   |   |   [29] V5 > 4 *
#> |   |   |   |   |   |   [30] V3 > 12 *
#> |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   [32] V7 <= 102 *
#> |   |   |   |   |   [33] V7 > 102
#> |   |   |   |   |   |   [34] V7 <= 180
#> |   |   |   |   |   |   |   [35] V3 <= 3 *
#> |   |   |   |   |   |   |   [36] V3 > 3
#> |   |   |   |   |   |   |   |   [37] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 140 *
#> |   |   |   |   |   |   |   |   [40] V5 > 1
#> |   |   |   |   |   |   |   |   |   [41] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [42] V3 > 10 *
#> |   |   |   |   |   |   [43] V7 > 180 *
#> |   |   |   [44] V2 > 72
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V7 <= 125 *
#> |   |   |   |   |   [47] V7 > 125 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V3 <= 12
#> |   |   |   |   |   |   [50] V2 <= 74 *
#> |   |   |   |   |   |   [51] V2 > 74
#> |   |   |   |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   |   |   |   [54] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [55] V5 > 4 *
#> |   |   |   |   |   [56] V3 > 12 *
#> |   [57] V5 > 171
#> |   |   [58] V7 <= 185
#> |   |   |   [59] V6 <= 0 *
#> |   |   |   [60] V6 > 0
#> |   |   |   |   [61] V2 <= 67
#> |   |   |   |   |   [62] V3 <= 7 *
#> |   |   |   |   |   [63] V3 > 7 *
#> |   |   |   |   [64] V2 > 67 *
#> |   |   [65] V7 > 185 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 61 *
#> |   |   |   |   |   [8] V2 > 61 *
#> |   |   |   [9] V7 > 112
#> |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   [11] V3 <= 4 *
#> |   |   |   |   |   [12] V3 > 4
#> |   |   |   |   |   |   [13] V5 <= 11 *
#> |   |   |   |   |   |   [14] V5 > 11 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V3 <= 6
#> |   |   |   |   |   |   [17] V5 <= 0
#> |   |   |   |   |   |   |   [18] V2 <= 57 *
#> |   |   |   |   |   |   |   [19] V2 > 57 *
#> |   |   |   |   |   |   [20] V5 > 0
#> |   |   |   |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   |   |   |   [22] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [23] V2 > 57 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   |   [25] V3 > 6
#> |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   [27] V2 <= 62 *
#> |   |   |   |   |   |   |   [28] V2 > 62
#> |   |   |   |   |   |   |   |   [29] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [30] V5 > 6 *
#> |   |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   |   [32] V7 <= 170
#> |   |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [34] V5 > 0
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [36] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [37] V5 > 7 *
#> |   |   |   |   |   |   |   |   |   [38] V3 > 13 *
#> |   |   |   |   |   |   |   [39] V7 > 170 *
#> |   |   [40] V2 > 74
#> |   |   |   [41] V7 <= 100 *
#> |   |   |   [42] V7 > 100
#> |   |   |   |   [43] V3 <= 7
#> |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   [45] V3 <= 3 *
#> |   |   |   |   |   |   [46] V3 > 3 *
#> |   |   |   |   |   [47] V4 > 0 *
#> |   |   |   |   [48] V3 > 7
#> |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   [50] V4 > 0
#> |   |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   |   [52] V6 > 0 *
#> |   [53] V5 > 171
#> |   |   [54] V5 <= 179 *
#> |   |   [55] V5 > 179 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V5 <= 14
#> |   |   |   |   |   [7] V3 <= 13
#> |   |   |   |   |   |   [8] V5 <= 1
#> |   |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   |   |   [11] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [12] V3 > 4
#> |   |   |   |   |   |   |   |   |   [13] V2 <= 58 *
#> |   |   |   |   |   |   |   |   |   [14] V2 > 58 *
#> |   |   |   |   |   |   [15] V5 > 1
#> |   |   |   |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   |   |   |   [17] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [20] V3 > 6
#> |   |   |   |   |   |   |   |   |   |   [21] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   |   [22] V2 > 61 *
#> |   |   |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   |   |   [24] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [25] V3 > 7 *
#> |   |   |   |   |   [26] V3 > 13
#> |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   [29] V5 > 14 *
#> |   |   [30] V2 > 72
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V5 <= 3 *
#> |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   [34] V7 <= 112 *
#> |   |   |   |   |   [35] V7 > 112
#> |   |   |   |   |   |   [36] V7 <= 151
#> |   |   |   |   |   |   |   [37] V3 <= 7 *
#> |   |   |   |   |   |   |   [38] V3 > 7 *
#> |   |   |   |   |   |   [39] V7 > 151 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V5 <= 10
#> |   |   |   |   |   [42] V3 <= 2 *
#> |   |   |   |   |   [43] V3 > 2
#> |   |   |   |   |   |   [44] V7 <= 130
#> |   |   |   |   |   |   |   [45] V3 <= 10 *
#> |   |   |   |   |   |   |   [46] V3 > 10 *
#> |   |   |   |   |   |   [47] V7 > 130
#> |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   [49] V6 > 0 *
#> |   |   |   |   [50] V5 > 10 *
#> |   [51] V5 > 170
#> |   |   [52] V5 <= 179 *
#> |   |   [53] V5 > 179 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 139
#> |   |   |   |   [5] V2 <= 58 *
#> |   |   |   |   [6] V2 > 58
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 112 *
#> |   |   |   |   |   |   [9] V7 > 112 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V3 <= 3 *
#> |   |   |   |   |   |   [12] V3 > 3
#> |   |   |   |   |   |   |   [13] V5 <= 14 *
#> |   |   |   |   |   |   |   [14] V5 > 14 *
#> |   |   |   [15] V7 > 139
#> |   |   |   |   [16] V5 <= 11
#> |   |   |   |   |   [17] V5 <= 2 *
#> |   |   |   |   |   [18] V5 > 2 *
#> |   |   |   |   [19] V5 > 11
#> |   |   |   |   |   [20] V2 <= 64 *
#> |   |   |   |   |   [21] V2 > 64 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 72
#> |   |   |   |   [24] V3 <= 14
#> |   |   |   |   |   [25] V5 <= 6
#> |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   |   |   |   [28] V3 > 3
#> |   |   |   |   |   |   |   |   [29] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [30] V5 > 2 *
#> |   |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   |   [32] V5 <= 0
#> |   |   |   |   |   |   |   |   [33] V7 <= 118 *
#> |   |   |   |   |   |   |   |   [34] V7 > 118
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 138 *
#> |   |   |   |   |   |   |   [37] V5 > 0
#> |   |   |   |   |   |   |   |   [38] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [39] V7 > 140 *
#> |   |   |   |   |   [40] V5 > 6
#> |   |   |   |   |   |   [41] V5 <= 8 *
#> |   |   |   |   |   |   [42] V5 > 8
#> |   |   |   |   |   |   |   [43] V5 <= 9 *
#> |   |   |   |   |   |   |   [44] V5 > 9 *
#> |   |   |   |   [45] V3 > 14
#> |   |   |   |   |   [46] V5 <= 9 *
#> |   |   |   |   |   [47] V5 > 9
#> |   |   |   |   |   |   [48] V3 <= 15 *
#> |   |   |   |   |   |   [49] V3 > 15 *
#> |   |   |   [50] V2 > 72
#> |   |   |   |   [51] V5 <= 10
#> |   |   |   |   |   [52] V3 <= 5 *
#> |   |   |   |   |   [53] V3 > 5
#> |   |   |   |   |   |   [54] V2 <= 80
#> |   |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   |   |   |   [57] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [58] V7 > 138 *
#> |   |   |   |   |   |   [59] V2 > 80 *
#> |   |   |   |   [60] V5 > 10 *
#> |   [61] V5 > 171
#> |   |   [62] V2 <= 85
#> |   |   |   [63] V6 <= 0 *
#> |   |   |   [64] V6 > 0
#> |   |   |   |   [65] V2 <= 65
#> |   |   |   |   |   [66] V3 <= 4 *
#> |   |   |   |   |   [67] V3 > 4 *
#> |   |   |   |   [68] V2 > 65 *
#> |   |   [69] V2 > 85 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V7 <= 123
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V3 <= 12
#> |   |   |   |   |   [11] V2 <= 69
#> |   |   |   |   |   |   [12] V7 <= 110 *
#> |   |   |   |   |   |   [13] V7 > 110 *
#> |   |   |   |   |   [14] V2 > 69 *
#> |   |   |   |   [15] V3 > 12 *
#> |   |   [16] V7 > 123
#> |   |   |   [17] V5 <= 15
#> |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   [19] V4 <= 0 *
#> |   |   |   |   |   [20] V4 > 0
#> |   |   |   |   |   |   [21] V5 <= 10
#> |   |   |   |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   |   |   |   [23] V5 > 0
#> |   |   |   |   |   |   |   |   [24] V7 <= 172
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [26] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [27] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   [28] V7 > 140 *
#> |   |   |   |   |   |   |   |   [29] V7 > 172 *
#> |   |   |   |   |   |   [30] V5 > 10 *
#> |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   |   [33] V7 <= 136 *
#> |   |   |   |   |   |   [34] V7 > 136 *
#> |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   [36] V3 <= 14
#> |   |   |   |   |   |   |   [37] V2 <= 54 *
#> |   |   |   |   |   |   |   [38] V2 > 54
#> |   |   |   |   |   |   |   |   [39] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [40] V5 > 0
#> |   |   |   |   |   |   |   |   |   [41] V3 <= 10
#> |   |   |   |   |   |   |   |   |   |   [42] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [43] V3 > 8 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 10 *
#> |   |   |   |   |   |   [45] V3 > 14 *
#> |   |   |   [46] V5 > 15
#> |   |   |   |   [47] V5 <= 154
#> |   |   |   |   |   [48] V5 <= 110
#> |   |   |   |   |   |   [49] V3 <= 10 *
#> |   |   |   |   |   |   [50] V3 > 10 *
#> |   |   |   |   |   [51] V5 > 110 *
#> |   |   |   |   [52] V5 > 154 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V2 <= 68
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 8
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V3 > 8 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 62
#> |   |   |   |   |   |   [12] V5 <= 8
#> |   |   |   |   |   |   |   [13] V2 <= 52 *
#> |   |   |   |   |   |   |   [14] V2 > 52 *
#> |   |   |   |   |   |   [15] V5 > 8 *
#> |   |   |   |   |   [16] V2 > 62 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V5 <= 11
#> |   |   |   |   |   |   [19] V2 <= 59
#> |   |   |   |   |   |   |   [20] V3 <= 6
#> |   |   |   |   |   |   |   |   [21] V7 <= 116 *
#> |   |   |   |   |   |   |   |   [22] V7 > 116 *
#> |   |   |   |   |   |   |   [23] V3 > 6 *
#> |   |   |   |   |   |   [24] V2 > 59
#> |   |   |   |   |   |   |   [25] V5 <= 1 *
#> |   |   |   |   |   |   |   [26] V5 > 1 *
#> |   |   |   |   |   [27] V5 > 11 *
#> |   |   [28] V5 > 150
#> |   |   |   [29] V3 <= 9
#> |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   [32] V7 <= 151 *
#> |   |   |   |   |   [33] V7 > 151 *
#> |   |   |   [34] V3 > 9 *
#> |   [35] V2 > 68
#> |   |   [36] V5 <= 171
#> |   |   |   [37] V2 <= 85
#> |   |   |   |   [38] V4 <= 0
#> |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   [41] V5 <= 4 *
#> |   |   |   |   |   |   [42] V5 > 4
#> |   |   |   |   |   |   |   [43] V2 <= 75 *
#> |   |   |   |   |   |   |   [44] V2 > 75 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V5 <= 1 *
#> |   |   |   |   |   |   [48] V5 > 1
#> |   |   |   |   |   |   |   [49] V2 <= 79
#> |   |   |   |   |   |   |   |   [50] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [51] V5 > 7 *
#> |   |   |   |   |   |   |   [52] V2 > 79 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V2 <= 72 *
#> |   |   |   |   |   |   [55] V2 > 72
#> |   |   |   |   |   |   |   [56] V3 <= 9
#> |   |   |   |   |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [58] V5 > 0 *
#> |   |   |   |   |   |   |   [59] V3 > 9 *
#> |   |   |   [60] V2 > 85
#> |   |   |   |   [61] V2 <= 88 *
#> |   |   |   |   [62] V2 > 88 *
#> |   |   [63] V5 > 171 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V2 <= 59
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 48 *
#> |   |   |   [5] V2 > 48
#> |   |   |   |   [6] V5 <= 77 *
#> |   |   |   |   [7] V5 > 77
#> |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   [9] V6 > 0 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V6 <= 0
#> |   |   |   |   [12] V7 <= 125 *
#> |   |   |   |   [13] V7 > 125 *
#> |   |   |   [14] V6 > 0
#> |   |   |   |   [15] V3 <= 11
#> |   |   |   |   |   [16] V5 <= 0 *
#> |   |   |   |   |   [17] V5 > 0 *
#> |   |   |   |   [18] V3 > 11 *
#> |   [19] V2 > 59
#> |   |   [20] V4 <= 0
#> |   |   |   [21] V5 <= 170
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V3 <= 6
#> |   |   |   |   |   |   [24] V2 <= 71 *
#> |   |   |   |   |   |   [25] V2 > 71 *
#> |   |   |   |   |   [26] V3 > 6 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V3 <= 4
#> |   |   |   |   |   |   [29] V2 <= 72 *
#> |   |   |   |   |   |   [30] V2 > 72
#> |   |   |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   |   |   [32] V3 > 3 *
#> |   |   |   |   |   [33] V3 > 4
#> |   |   |   |   |   |   [34] V2 <= 69 *
#> |   |   |   |   |   |   [35] V2 > 69
#> |   |   |   |   |   |   |   [36] V7 <= 140 *
#> |   |   |   |   |   |   |   [37] V7 > 140 *
#> |   |   |   [38] V5 > 170
#> |   |   |   |   [39] V2 <= 71
#> |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   [41] V6 > 0 *
#> |   |   |   |   [42] V2 > 71 *
#> |   |   [43] V4 > 0
#> |   |   |   [44] V5 <= 2
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V2 <= 79
#> |   |   |   |   |   |   [47] V5 <= 0 *
#> |   |   |   |   |   |   [48] V5 > 0 *
#> |   |   |   |   |   [49] V2 > 79 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V7 <= 120 *
#> |   |   |   |   |   [52] V7 > 120
#> |   |   |   |   |   |   [53] V3 <= 3 *
#> |   |   |   |   |   |   [54] V3 > 3
#> |   |   |   |   |   |   |   [55] V7 <= 140 *
#> |   |   |   |   |   |   |   [56] V7 > 140 *
#> |   |   |   [57] V5 > 2
#> |   |   |   |   [58] V2 <= 70
#> |   |   |   |   |   [59] V5 <= 8 *
#> |   |   |   |   |   [60] V5 > 8
#> |   |   |   |   |   |   [61] V5 <= 11 *
#> |   |   |   |   |   |   [62] V5 > 11 *
#> |   |   |   |   [63] V2 > 70
#> |   |   |   |   |   [64] V5 <= 8
#> |   |   |   |   |   |   [65] V7 <= 149 *
#> |   |   |   |   |   |   [66] V7 > 149 *
#> |   |   |   |   |   [67] V5 > 8
#> |   |   |   |   |   |   [68] V3 <= 14 *
#> |   |   |   |   |   |   [69] V3 > 14 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V2 <= 50 *
#> |   |   |   |   |   |   [9] V2 > 50 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V7 <= 116 *
#> |   |   |   |   |   |   [12] V7 > 116
#> |   |   |   |   |   |   |   [13] V7 <= 146 *
#> |   |   |   |   |   |   |   [14] V7 > 146 *
#> |   |   |   [15] V2 > 54
#> |   |   |   |   [16] V3 <= 2
#> |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   [19] V3 > 2
#> |   |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   |   [21] V4 <= 0 *
#> |   |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   |   [23] V7 <= 160
#> |   |   |   |   |   |   |   |   [24] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [25] V3 > 9 *
#> |   |   |   |   |   |   |   [26] V7 > 160 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V4 <= 0 *
#> |   |   |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   |   |   [30] V3 <= 6 *
#> |   |   |   |   |   |   |   [31] V3 > 6
#> |   |   |   |   |   |   |   |   [32] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 0 *
#> |   |   |   |   |   |   |   |   [35] V3 > 13 *
#> |   |   [36] V5 > 171
#> |   |   |   [37] V2 <= 66
#> |   |   |   |   [38] V2 <= 50 *
#> |   |   |   |   [39] V2 > 50 *
#> |   |   |   [40] V2 > 66 *
#> |   [41] V2 > 71
#> |   |   [42] V4 <= 0
#> |   |   |   [43] V3 <= 15
#> |   |   |   |   [44] V5 <= 169
#> |   |   |   |   |   [45] V7 <= 130
#> |   |   |   |   |   |   [46] V3 <= 5
#> |   |   |   |   |   |   |   [47] V5 <= 8 *
#> |   |   |   |   |   |   |   [48] V5 > 8 *
#> |   |   |   |   |   |   [49] V3 > 5 *
#> |   |   |   |   |   [50] V7 > 130
#> |   |   |   |   |   |   [51] V5 <= 8 *
#> |   |   |   |   |   |   [52] V5 > 8 *
#> |   |   |   |   [53] V5 > 169 *
#> |   |   |   [54] V3 > 15 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V7 <= 126
#> |   |   |   |   [57] V2 <= 76 *
#> |   |   |   |   [58] V2 > 76 *
#> |   |   |   [59] V7 > 126
#> |   |   |   |   [60] V6 <= 0
#> |   |   |   |   |   [61] V3 <= 5 *
#> |   |   |   |   |   [62] V3 > 5 *
#> |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   [64] V3 <= 11 *
#> |   |   |   |   |   [65] V3 > 11 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V3 <= 1
#> |   |   [3] V7 <= 110 *
#> |   |   [4] V7 > 110
#> |   |   |   [5] V7 <= 166
#> |   |   |   |   [6] V3 <= 0 *
#> |   |   |   |   [7] V3 > 0
#> |   |   |   |   |   [8] V7 <= 130 *
#> |   |   |   |   |   [9] V7 > 130 *
#> |   |   |   [10] V7 > 166 *
#> |   [11] V3 > 1
#> |   |   [12] V5 <= 171
#> |   |   |   [13] V4 <= 0
#> |   |   |   |   [14] V3 <= 6
#> |   |   |   |   |   [15] V2 <= 57 *
#> |   |   |   |   |   [16] V2 > 57
#> |   |   |   |   |   |   [17] V7 <= 153
#> |   |   |   |   |   |   |   [18] V5 <= 28 *
#> |   |   |   |   |   |   |   [19] V5 > 28 *
#> |   |   |   |   |   |   [20] V7 > 153 *
#> |   |   |   |   [21] V3 > 6
#> |   |   |   |   |   [22] V2 <= 62 *
#> |   |   |   |   |   [23] V2 > 62
#> |   |   |   |   |   |   [24] V7 <= 140 *
#> |   |   |   |   |   |   [25] V7 > 140 *
#> |   |   |   [26] V4 > 0
#> |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   [28] V7 <= 149
#> |   |   |   |   |   |   [29] V3 <= 4 *
#> |   |   |   |   |   |   [30] V3 > 4
#> |   |   |   |   |   |   |   [31] V5 <= 2 *
#> |   |   |   |   |   |   |   [32] V5 > 2
#> |   |   |   |   |   |   |   |   [33] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [34] V5 > 8 *
#> |   |   |   |   |   [35] V7 > 149
#> |   |   |   |   |   |   [36] V2 <= 63 *
#> |   |   |   |   |   |   [37] V2 > 63 *
#> |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   [39] V2 <= 72
#> |   |   |   |   |   |   [40] V2 <= 43 *
#> |   |   |   |   |   |   [41] V2 > 43
#> |   |   |   |   |   |   |   [42] V5 <= 1
#> |   |   |   |   |   |   |   |   [43] V7 <= 146
#> |   |   |   |   |   |   |   |   |   [44] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   [45] V2 > 59 *
#> |   |   |   |   |   |   |   |   [46] V7 > 146 *
#> |   |   |   |   |   |   |   [47] V5 > 1
#> |   |   |   |   |   |   |   |   [48] V3 <= 16
#> |   |   |   |   |   |   |   |   |   [49] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [50] V5 > 7
#> |   |   |   |   |   |   |   |   |   |   [51] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   [52] V2 > 65 *
#> |   |   |   |   |   |   |   |   [53] V3 > 16 *
#> |   |   |   |   |   [54] V2 > 72
#> |   |   |   |   |   |   [55] V2 <= 85
#> |   |   |   |   |   |   |   [56] V2 <= 74 *
#> |   |   |   |   |   |   |   [57] V2 > 74
#> |   |   |   |   |   |   |   |   [58] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [59] V5 > 0 *
#> |   |   |   |   |   |   [60] V2 > 85 *
#> |   |   [61] V5 > 171
#> |   |   |   [62] V3 <= 12
#> |   |   |   |   [63] V2 <= 52 *
#> |   |   |   |   [64] V2 > 52 *
#> |   |   |   [65] V3 > 12 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 136
#> |   |   |   |   |   [6] V7 <= 125 *
#> |   |   |   |   |   [7] V7 > 125 *
#> |   |   |   |   [8] V7 > 136
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V3 <= 6
#> |   |   |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   |   |   [15] V3 > 3 *
#> |   |   |   |   |   [16] V3 > 6
#> |   |   |   |   |   |   [17] V2 <= 57 *
#> |   |   |   |   |   |   [18] V2 > 57
#> |   |   |   |   |   |   |   [19] V2 <= 65 *
#> |   |   |   |   |   |   |   [20] V2 > 65 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V2 <= 54
#> |   |   |   |   |   |   [23] V7 <= 116 *
#> |   |   |   |   |   |   [24] V7 > 116 *
#> |   |   |   |   |   [25] V2 > 54
#> |   |   |   |   |   |   [26] V5 <= 1
#> |   |   |   |   |   |   |   [27] V2 <= 63 *
#> |   |   |   |   |   |   |   [28] V2 > 63 *
#> |   |   |   |   |   |   [29] V5 > 1
#> |   |   |   |   |   |   |   [30] V3 <= 10 *
#> |   |   |   |   |   |   |   [31] V3 > 10
#> |   |   |   |   |   |   |   |   [32] V5 <= 11 *
#> |   |   |   |   |   |   |   |   [33] V5 > 11 *
#> |   |   [34] V5 > 171
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V7 <= 140 *
#> |   |   |   |   [38] V7 > 140 *
#> |   [39] V2 > 70
#> |   |   [40] V5 <= 177
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V7 <= 128
#> |   |   |   |   |   [43] V2 <= 82 *
#> |   |   |   |   |   [44] V2 > 82 *
#> |   |   |   |   [45] V7 > 128
#> |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V3 <= 6 *
#> |   |   |   |   |   |   [49] V3 > 6 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 77
#> |   |   |   |   |   [52] V3 <= 12
#> |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   [54] V5 > 0
#> |   |   |   |   |   |   |   [55] V3 <= 9 *
#> |   |   |   |   |   |   |   [56] V3 > 9 *
#> |   |   |   |   |   [57] V3 > 12 *
#> |   |   |   |   [58] V2 > 77
#> |   |   |   |   |   [59] V5 <= 5
#> |   |   |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   |   |   [61] V3 > 4 *
#> |   |   |   |   |   [62] V5 > 5 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V3 <= 3
#> |   |   |   [4] V5 <= 12 *
#> |   |   |   [5] V5 > 12 *
#> |   |   [6] V3 > 3
#> |   |   |   [7] V5 <= 158
#> |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   [10] V7 <= 108 *
#> |   |   |   |   |   [11] V7 > 108 *
#> |   |   |   [12] V5 > 158 *
#> |   [13] V7 > 112
#> |   |   [14] V5 <= 177
#> |   |   |   [15] V4 <= 0
#> |   |   |   |   [16] V2 <= 60 *
#> |   |   |   |   [17] V2 > 60
#> |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   [19] V5 <= 11 *
#> |   |   |   |   |   |   [20] V5 > 11 *
#> |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   [22] V7 <= 140
#> |   |   |   |   |   |   |   [23] V7 <= 122 *
#> |   |   |   |   |   |   |   [24] V7 > 122 *
#> |   |   |   |   |   |   [25] V7 > 140 *
#> |   |   |   [26] V4 > 0
#> |   |   |   |   [27] V2 <= 74
#> |   |   |   |   |   [28] V2 <= 63
#> |   |   |   |   |   |   [29] V5 <= 4
#> |   |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   |   [31] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [32] V3 > 4 *
#> |   |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   |   [34] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 138 *
#> |   |   |   |   |   |   |   |   [37] V5 > 0 *
#> |   |   |   |   |   |   [38] V5 > 4
#> |   |   |   |   |   |   |   [39] V7 <= 145 *
#> |   |   |   |   |   |   |   [40] V7 > 145 *
#> |   |   |   |   |   [41] V2 > 63
#> |   |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   |   [43] V5 > 0
#> |   |   |   |   |   |   |   [44] V2 <= 67 *
#> |   |   |   |   |   |   |   [45] V2 > 67
#> |   |   |   |   |   |   |   |   [46] V7 <= 165
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 13 *
#> |   |   |   |   |   |   |   |   [49] V7 > 165 *
#> |   |   |   |   [50] V2 > 74
#> |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   [52] V3 > 4
#> |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   [54] V6 > 0 *
#> |   |   [55] V5 > 177 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V7 <= 128 *
#> |   |   |   |   |   [7] V7 > 128 *
#> |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V3 <= 6
#> |   |   |   |   |   |   [14] V7 <= 151 *
#> |   |   |   |   |   |   [15] V7 > 151 *
#> |   |   |   |   |   [16] V3 > 6
#> |   |   |   |   |   |   [17] V2 <= 62 *
#> |   |   |   |   |   |   [18] V2 > 62
#> |   |   |   |   |   |   |   [19] V7 <= 135 *
#> |   |   |   |   |   |   |   [20] V7 > 135 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V5 <= 1
#> |   |   |   |   |   |   [23] V5 <= 0
#> |   |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   |   [26] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [27] V7 > 138 *
#> |   |   |   |   |   |   [28] V5 > 0 *
#> |   |   |   |   |   [29] V5 > 1
#> |   |   |   |   |   |   [30] V3 <= 14
#> |   |   |   |   |   |   |   [31] V2 <= 50 *
#> |   |   |   |   |   |   |   [32] V2 > 50
#> |   |   |   |   |   |   |   |   [33] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [34] V3 > 10 *
#> |   |   |   |   |   |   [35] V3 > 14 *
#> |   |   [36] V5 > 171
#> |   |   |   [37] V6 <= 0 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V7 <= 170 *
#> |   |   |   |   [40] V7 > 170 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 168
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   [45] V7 <= 120 *
#> |   |   |   |   |   [46] V7 > 120 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V5 <= 7 *
#> |   |   |   |   |   [49] V5 > 7 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 80
#> |   |   |   |   |   [52] V2 <= 79
#> |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   [54] V6 > 0 *
#> |   |   |   |   |   [55] V2 > 79 *
#> |   |   |   |   [56] V2 > 80
#> |   |   |   |   |   [57] V5 <= 2 *
#> |   |   |   |   |   [58] V5 > 2 *
#> |   |   [59] V5 > 168 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 150
#> |   |   |   |   [5] V5 <= 115
#> |   |   |   |   |   [6] V3 <= 6
#> |   |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V5 > 115
#> |   |   |   |   |   [11] V7 <= 138 *
#> |   |   |   |   |   [12] V7 > 138 *
#> |   |   |   [13] V7 > 150
#> |   |   |   |   [14] V3 <= 9
#> |   |   |   |   |   [15] V3 <= 2 *
#> |   |   |   |   |   [16] V3 > 2 *
#> |   |   |   |   [17] V3 > 9 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V5 <= 11
#> |   |   |   |   [20] V2 <= 63
#> |   |   |   |   |   [21] V7 <= 114 *
#> |   |   |   |   |   [22] V7 > 114
#> |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   [24] V7 <= 162 *
#> |   |   |   |   |   |   |   [25] V7 > 162 *
#> |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   [27] V5 <= 8
#> |   |   |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [29] V3 > 4
#> |   |   |   |   |   |   |   |   |   [30] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [31] V7 > 140 *
#> |   |   |   |   |   |   |   [32] V5 > 8 *
#> |   |   |   |   [33] V2 > 63
#> |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   [35] V3 <= 10 *
#> |   |   |   |   |   |   [36] V3 > 10 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V2 <= 69 *
#> |   |   |   |   |   |   [39] V2 > 69 *
#> |   |   |   [40] V5 > 11 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 177
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   [45] V3 <= 5 *
#> |   |   |   |   |   [46] V3 > 5 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V7 <= 140
#> |   |   |   |   |   |   [49] V2 <= 82 *
#> |   |   |   |   |   |   [50] V2 > 82 *
#> |   |   |   |   |   [51] V7 > 140 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V7 <= 168
#> |   |   |   |   |   [54] V5 <= 0 *
#> |   |   |   |   |   [55] V5 > 0
#> |   |   |   |   |   |   [56] V7 <= 140 *
#> |   |   |   |   |   |   [57] V7 > 140 *
#> |   |   |   |   [58] V7 > 168 *
#> |   |   [59] V5 > 177 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 2 *
#> |   |   |   [5] V5 > 2
#> |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   [7] V7 <= 133 *
#> |   |   |   |   |   [8] V7 > 133 *
#> |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   [10] V2 <= 58 *
#> |   |   |   |   |   [11] V2 > 58
#> |   |   |   |   |   |   [12] V7 <= 153
#> |   |   |   |   |   |   |   [13] V5 <= 4 *
#> |   |   |   |   |   |   |   [14] V5 > 4
#> |   |   |   |   |   |   |   |   [15] V2 <= 79 *
#> |   |   |   |   |   |   |   |   [16] V2 > 79 *
#> |   |   |   |   |   |   [17] V7 > 153 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 63
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V7 <= 125 *
#> |   |   |   |   |   [22] V7 > 125
#> |   |   |   |   |   |   [23] V2 <= 58
#> |   |   |   |   |   |   |   [24] V5 <= 1 *
#> |   |   |   |   |   |   |   [25] V5 > 1 *
#> |   |   |   |   |   |   [26] V2 > 58 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V5 <= 1
#> |   |   |   |   |   |   [29] V5 <= 0
#> |   |   |   |   |   |   |   [30] V3 <= 6 *
#> |   |   |   |   |   |   |   [31] V3 > 6 *
#> |   |   |   |   |   |   [32] V5 > 0 *
#> |   |   |   |   |   [33] V5 > 1
#> |   |   |   |   |   |   [34] V5 <= 9 *
#> |   |   |   |   |   |   [35] V5 > 9 *
#> |   |   |   [36] V2 > 63
#> |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   [38] V3 <= 12
#> |   |   |   |   |   |   [39] V7 <= 125 *
#> |   |   |   |   |   |   [40] V7 > 125
#> |   |   |   |   |   |   |   [41] V5 <= 1 *
#> |   |   |   |   |   |   |   [42] V5 > 1
#> |   |   |   |   |   |   |   |   [43] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [44] V5 > 4 *
#> |   |   |   |   |   [45] V3 > 12 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   [48] V3 > 4
#> |   |   |   |   |   |   [49] V5 <= 3
#> |   |   |   |   |   |   |   [50] V5 <= 0 *
#> |   |   |   |   |   |   |   [51] V5 > 0 *
#> |   |   |   |   |   |   [52] V5 > 3
#> |   |   |   |   |   |   |   [53] V3 <= 13
#> |   |   |   |   |   |   |   |   [54] V7 <= 148 *
#> |   |   |   |   |   |   |   |   [55] V7 > 148 *
#> |   |   |   |   |   |   |   [56] V3 > 13 *
#> |   [57] V5 > 170
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 150 *
#> |   |   |   [61] V7 > 150
#> |   |   |   |   [62] V3 <= 3 *
#> |   |   |   |   [63] V3 > 3 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   [10] V7 > 120
#> |   |   |   |   |   |   [11] V7 <= 135 *
#> |   |   |   |   |   |   [12] V7 > 135 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V7 <= 140
#> |   |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   |   [16] V3 > 3
#> |   |   |   |   |   |   |   [17] V2 <= 72 *
#> |   |   |   |   |   |   |   [18] V2 > 72 *
#> |   |   |   |   |   [19] V7 > 140 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   [23] V5 > 0
#> |   |   |   |   |   [24] V3 <= 14
#> |   |   |   |   |   |   [25] V3 <= 11
#> |   |   |   |   |   |   |   [26] V7 <= 168
#> |   |   |   |   |   |   |   |   [27] V2 <= 69
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   [29] V2 > 61 *
#> |   |   |   |   |   |   |   |   [30] V2 > 69 *
#> |   |   |   |   |   |   |   [31] V7 > 168 *
#> |   |   |   |   |   |   [32] V3 > 11 *
#> |   |   |   |   |   [33] V3 > 14 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V7 <= 170
#> |   |   |   |   |   [36] V7 <= 110 *
#> |   |   |   |   |   [37] V7 > 110
#> |   |   |   |   |   |   [38] V2 <= 74
#> |   |   |   |   |   |   |   [39] V7 <= 132
#> |   |   |   |   |   |   |   |   [40] V2 <= 45 *
#> |   |   |   |   |   |   |   |   [41] V2 > 45
#> |   |   |   |   |   |   |   |   |   [42] V5 <= 5
#> |   |   |   |   |   |   |   |   |   |   [43] V7 <= 129 *
#> |   |   |   |   |   |   |   |   |   |   [44] V7 > 129 *
#> |   |   |   |   |   |   |   |   |   [45] V5 > 5 *
#> |   |   |   |   |   |   |   [46] V7 > 132
#> |   |   |   |   |   |   |   |   [47] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [48] V5 > 0
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 150 *
#> |   |   |   |   |   |   [51] V2 > 74
#> |   |   |   |   |   |   |   [52] V7 <= 141 *
#> |   |   |   |   |   |   |   [53] V7 > 141 *
#> |   |   |   |   [54] V7 > 170 *
#> |   [55] V5 > 171
#> |   |   [56] V7 <= 185
#> |   |   |   [57] V2 <= 52 *
#> |   |   |   [58] V2 > 52 *
#> |   |   [59] V7 > 185 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V2 <= 60
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V2 > 60
#> |   |   |   |   |   [9] V3 <= 2 *
#> |   |   |   |   |   [10] V3 > 2
#> |   |   |   |   |   |   [11] V7 <= 140 *
#> |   |   |   |   |   |   [12] V7 > 140 *
#> |   |   |   [13] V5 > 171
#> |   |   |   |   [14] V7 <= 153
#> |   |   |   |   |   [15] V7 <= 135
#> |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   [17] V6 > 0 *
#> |   |   |   |   |   [18] V7 > 135 *
#> |   |   |   |   [19] V7 > 153 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V3 <= 1 *
#> |   |   |   [22] V3 > 1
#> |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   [24] V7 <= 162
#> |   |   |   |   |   |   [25] V2 <= 61
#> |   |   |   |   |   |   |   [26] V5 <= 8 *
#> |   |   |   |   |   |   |   [27] V5 > 8 *
#> |   |   |   |   |   |   [28] V2 > 61
#> |   |   |   |   |   |   |   [29] V7 <= 140 *
#> |   |   |   |   |   |   |   [30] V7 > 140 *
#> |   |   |   |   |   [31] V7 > 162 *
#> |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   [33] V3 <= 14
#> |   |   |   |   |   |   [34] V5 <= 4
#> |   |   |   |   |   |   |   [35] V7 <= 115 *
#> |   |   |   |   |   |   |   [36] V7 > 115
#> |   |   |   |   |   |   |   |   [37] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [38] V7 > 132
#> |   |   |   |   |   |   |   |   |   [39] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   [40] V2 > 55
#> |   |   |   |   |   |   |   |   |   |   [41] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [42] V5 > 0 *
#> |   |   |   |   |   |   [43] V5 > 4 *
#> |   |   |   |   |   [44] V3 > 14 *
#> |   [45] V2 > 72
#> |   |   [46] V6 <= 0
#> |   |   |   [47] V7 <= 100 *
#> |   |   |   [48] V7 > 100
#> |   |   |   |   [49] V5 <= 177
#> |   |   |   |   |   [50] V5 <= 10
#> |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   [52] V5 > 0
#> |   |   |   |   |   |   |   [53] V3 <= 9 *
#> |   |   |   |   |   |   |   [54] V3 > 9 *
#> |   |   |   |   |   [55] V5 > 10 *
#> |   |   |   |   [56] V5 > 177 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V4 <= 0
#> |   |   |   |   [59] V5 <= 152
#> |   |   |   |   |   [60] V3 <= 6
#> |   |   |   |   |   |   [61] V3 <= 3 *
#> |   |   |   |   |   |   [62] V3 > 3 *
#> |   |   |   |   |   [63] V3 > 6 *
#> |   |   |   |   [64] V5 > 152 *
#> |   |   |   [65] V4 > 0
#> |   |   |   |   [66] V3 <= 3 *
#> |   |   |   |   [67] V3 > 3
#> |   |   |   |   |   [68] V7 <= 117 *
#> |   |   |   |   |   [69] V7 > 117
#> |   |   |   |   |   |   [70] V2 <= 77 *
#> |   |   |   |   |   |   [71] V2 > 77 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V3 <= 4
#> |   |   |   |   |   |   [10] V3 <= 3
#> |   |   |   |   |   |   |   [11] V5 <= 0 *
#> |   |   |   |   |   |   |   [12] V5 > 0 *
#> |   |   |   |   |   |   [13] V3 > 3 *
#> |   |   |   |   |   [14] V3 > 4
#> |   |   |   |   |   |   [15] V2 <= 46 *
#> |   |   |   |   |   |   [16] V2 > 46
#> |   |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   |   [18] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [19] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [20] V3 > 8 *
#> |   |   |   |   |   |   |   |   [21] V5 > 9 *
#> |   |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   |   [23] V2 <= 60
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   [25] V7 > 133 *
#> |   |   |   |   |   |   |   |   [26] V2 > 60
#> |   |   |   |   |   |   |   |   |   [27] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [28] V2 > 66 *
#> |   |   |   [29] V5 > 14 *
#> |   |   [30] V5 > 171
#> |   |   |   [31] V3 <= 10
#> |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V3 <= 3 *
#> |   |   |   |   |   [35] V3 > 3 *
#> |   |   |   [36] V3 > 10 *
#> |   [37] V2 > 70
#> |   |   [38] V4 <= 0
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V5 <= 168
#> |   |   |   |   |   [41] V3 <= 3 *
#> |   |   |   |   |   [42] V3 > 3 *
#> |   |   |   |   [43] V5 > 168 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V5 <= 169
#> |   |   |   |   |   [46] V3 <= 4
#> |   |   |   |   |   |   [47] V5 <= 10 *
#> |   |   |   |   |   |   [48] V5 > 10 *
#> |   |   |   |   |   [49] V3 > 4
#> |   |   |   |   |   |   [50] V2 <= 75 *
#> |   |   |   |   |   |   [51] V2 > 75
#> |   |   |   |   |   |   |   [52] V5 <= 11 *
#> |   |   |   |   |   |   |   [53] V5 > 11 *
#> |   |   |   |   [54] V5 > 169 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V3 <= 13
#> |   |   |   |   [57] V5 <= 7
#> |   |   |   |   |   [58] V2 <= 74 *
#> |   |   |   |   |   [59] V2 > 74
#> |   |   |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   |   |   [61] V6 > 0
#> |   |   |   |   |   |   |   [62] V5 <= 0 *
#> |   |   |   |   |   |   |   [63] V5 > 0 *
#> |   |   |   |   [64] V5 > 7 *
#> |   |   |   [65] V3 > 13
#> |   |   |   |   [66] V7 <= 110 *
#> |   |   |   |   [67] V7 > 110 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V2 > 62
#> |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V2 <= 70
#> |   |   |   |   |   |   [14] V7 <= 160
#> |   |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   |   [16] V3 > 4
#> |   |   |   |   |   |   |   |   [17] V2 <= 61
#> |   |   |   |   |   |   |   |   |   [18] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [19] V3 > 9 *
#> |   |   |   |   |   |   |   |   [20] V2 > 61 *
#> |   |   |   |   |   |   [21] V7 > 160 *
#> |   |   |   |   |   [22] V2 > 70 *
#> |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   [26] V7 <= 112 *
#> |   |   |   |   |   |   [27] V7 > 112
#> |   |   |   |   |   |   |   [28] V7 <= 133
#> |   |   |   |   |   |   |   |   [29] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [30] V5 > 4 *
#> |   |   |   |   |   |   |   [31] V7 > 133
#> |   |   |   |   |   |   |   |   [32] V7 <= 150
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 0 *
#> |   |   |   |   |   |   |   |   [35] V7 > 150
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 68 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 68 *
#> |   |   [38] V5 > 170
#> |   |   |   [39] V2 <= 66
#> |   |   |   |   [40] V7 <= 119 *
#> |   |   |   |   [41] V7 > 119 *
#> |   |   |   [42] V2 > 66
#> |   |   |   |   [43] V2 <= 71 *
#> |   |   |   |   [44] V2 > 71 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 177
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   [49] V7 <= 130 *
#> |   |   |   |   |   [50] V7 > 130 *
#> |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   [52] V7 <= 140
#> |   |   |   |   |   |   [53] V3 <= 7
#> |   |   |   |   |   |   |   [54] V5 <= 5 *
#> |   |   |   |   |   |   |   [55] V5 > 5 *
#> |   |   |   |   |   |   [56] V3 > 7 *
#> |   |   |   |   |   [57] V7 > 140 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V6 <= 0
#> |   |   |   |   |   [60] V7 <= 141 *
#> |   |   |   |   |   [61] V7 > 141 *
#> |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   [63] V7 <= 120 *
#> |   |   |   |   |   [64] V7 > 120 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 121
#> |   |   |   |   [5] V2 <= 70 *
#> |   |   |   |   [6] V2 > 70
#> |   |   |   |   |   [7] V5 <= 8 *
#> |   |   |   |   |   [8] V5 > 8 *
#> |   |   |   [9] V7 > 121
#> |   |   |   |   [10] V2 <= 60
#> |   |   |   |   |   [11] V3 <= 5 *
#> |   |   |   |   |   [12] V3 > 5 *
#> |   |   |   |   [13] V2 > 60
#> |   |   |   |   |   [14] V7 <= 130 *
#> |   |   |   |   |   [15] V7 > 130
#> |   |   |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   |   [18] V3 > 4 *
#> |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   [20] V5 <= 4 *
#> |   |   |   |   |   |   |   [21] V5 > 4 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V2 <= 70
#> |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   [26] V3 > 4
#> |   |   |   |   |   |   [27] V3 <= 10 *
#> |   |   |   |   |   |   [28] V3 > 10 *
#> |   |   |   |   [29] V2 > 70
#> |   |   |   |   |   [30] V5 <= 8
#> |   |   |   |   |   |   [31] V7 <= 142 *
#> |   |   |   |   |   |   [32] V7 > 142 *
#> |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V3 <= 3
#> |   |   |   |   |   [36] V2 <= 58 *
#> |   |   |   |   |   [37] V2 > 58 *
#> |   |   |   |   [38] V3 > 3
#> |   |   |   |   |   [39] V5 <= 0
#> |   |   |   |   |   |   [40] V3 <= 5 *
#> |   |   |   |   |   |   [41] V3 > 5
#> |   |   |   |   |   |   |   [42] V2 <= 72
#> |   |   |   |   |   |   |   |   [43] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [44] V7 > 120 *
#> |   |   |   |   |   |   |   [45] V2 > 72 *
#> |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   [47] V7 <= 170
#> |   |   |   |   |   |   |   [48] V2 <= 72
#> |   |   |   |   |   |   |   |   [49] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [50] V2 > 54
#> |   |   |   |   |   |   |   |   |   [51] V7 <= 147
#> |   |   |   |   |   |   |   |   |   |   [52] V2 <= 58 *
#> |   |   |   |   |   |   |   |   |   |   [53] V2 > 58 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 147 *
#> |   |   |   |   |   |   |   [55] V2 > 72 *
#> |   |   |   |   |   |   [56] V7 > 170 *
#> |   [57] V5 > 177 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 160
#> |   |   |   |   [5] V5 <= 77 *
#> |   |   |   |   [6] V5 > 77
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V7 > 160 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V6 <= 0
#> |   |   |   |   [12] V2 <= 52
#> |   |   |   |   |   [13] V7 <= 145 *
#> |   |   |   |   |   [14] V7 > 145 *
#> |   |   |   |   [15] V2 > 52 *
#> |   |   |   [16] V6 > 0
#> |   |   |   |   [17] V7 <= 115 *
#> |   |   |   |   [18] V7 > 115
#> |   |   |   |   |   [19] V5 <= 8
#> |   |   |   |   |   |   [20] V5 <= 0 *
#> |   |   |   |   |   |   [21] V5 > 0 *
#> |   |   |   |   |   [22] V5 > 8 *
#> |   [23] V2 > 60
#> |   |   [24] V5 <= 171
#> |   |   |   [25] V2 <= 78
#> |   |   |   |   [26] V5 <= 15
#> |   |   |   |   |   [27] V4 <= 0
#> |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   [30] V7 <= 140 *
#> |   |   |   |   |   |   |   [31] V7 > 140 *
#> |   |   |   |   |   [32] V4 > 0
#> |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   [34] V2 <= 71
#> |   |   |   |   |   |   |   |   [35] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [36] V3 > 3 *
#> |   |   |   |   |   |   |   [37] V2 > 71
#> |   |   |   |   |   |   |   |   [38] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [39] V5 > 4 *
#> |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   [41] V2 <= 66 *
#> |   |   |   |   |   |   |   [42] V2 > 66
#> |   |   |   |   |   |   |   |   [43] V7 <= 148
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 9 *
#> |   |   |   |   |   |   |   |   [46] V7 > 148
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 12 *
#> |   |   |   |   [49] V5 > 15 *
#> |   |   |   [50] V2 > 78
#> |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V5 <= 16 *
#> |   |   |   |   |   |   [55] V5 > 16 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V5 <= 7
#> |   |   |   |   |   |   [58] V5 <= 0 *
#> |   |   |   |   |   |   [59] V5 > 0 *
#> |   |   |   |   |   [60] V5 > 7 *
#> |   |   [61] V5 > 171
#> |   |   |   [62] V2 <= 71
#> |   |   |   |   [63] V6 <= 0 *
#> |   |   |   |   [64] V6 > 0 *
#> |   |   |   [65] V2 > 71 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V3 <= 2 *
#> |   |   |   [5] V3 > 2
#> |   |   |   |   [6] V7 <= 110 *
#> |   |   |   |   [7] V7 > 110
#> |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   [9] V7 > 120
#> |   |   |   |   |   |   [10] V7 <= 130 *
#> |   |   |   |   |   |   [11] V7 > 130
#> |   |   |   |   |   |   |   [12] V7 <= 145 *
#> |   |   |   |   |   |   |   [13] V7 > 145
#> |   |   |   |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [15] V5 > 2 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V3 <= 1 *
#> |   |   |   [18] V3 > 1
#> |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   [20] V7 <= 160
#> |   |   |   |   |   |   [21] V5 <= 103
#> |   |   |   |   |   |   |   [22] V5 <= 10 *
#> |   |   |   |   |   |   |   [23] V5 > 10 *
#> |   |   |   |   |   |   [24] V5 > 103
#> |   |   |   |   |   |   |   [25] V2 <= 62 *
#> |   |   |   |   |   |   |   [26] V2 > 62 *
#> |   |   |   |   |   [27] V7 > 160 *
#> |   |   |   |   [28] V4 > 0
#> |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   [30] V5 <= 6
#> |   |   |   |   |   |   |   [31] V3 <= 4 *
#> |   |   |   |   |   |   |   [32] V3 > 4 *
#> |   |   |   |   |   |   [33] V5 > 6
#> |   |   |   |   |   |   |   [34] V7 <= 123 *
#> |   |   |   |   |   |   |   [35] V7 > 123 *
#> |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   [37] V7 <= 150
#> |   |   |   |   |   |   |   [38] V7 <= 135
#> |   |   |   |   |   |   |   |   [39] V7 <= 108 *
#> |   |   |   |   |   |   |   |   [40] V7 > 108 *
#> |   |   |   |   |   |   |   [41] V7 > 135
#> |   |   |   |   |   |   |   |   [42] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [43] V2 > 66 *
#> |   |   |   |   |   |   [44] V7 > 150 *
#> |   [45] V2 > 72
#> |   |   [46] V5 <= 168
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V7 <= 130
#> |   |   |   |   |   [49] V5 <= 8 *
#> |   |   |   |   |   [50] V5 > 8 *
#> |   |   |   |   [51] V7 > 130
#> |   |   |   |   |   [52] V7 <= 163
#> |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   [54] V6 > 0 *
#> |   |   |   |   |   [55] V7 > 163 *
#> |   |   |   [56] V4 > 0
#> |   |   |   |   [57] V2 <= 85
#> |   |   |   |   |   [58] V6 <= 0
#> |   |   |   |   |   |   [59] V3 <= 8 *
#> |   |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   |   [61] V6 > 0
#> |   |   |   |   |   |   [62] V7 <= 120 *
#> |   |   |   |   |   |   [63] V7 > 120
#> |   |   |   |   |   |   |   [64] V7 <= 170 *
#> |   |   |   |   |   |   |   [65] V7 > 170 *
#> |   |   |   |   [66] V2 > 85 *
#> |   |   [67] V5 > 168 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 177
#> |   |   |   [4] V2 <= 78
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V2 <= 70
#> |   |   |   |   |   |   [10] V3 <= 4 *
#> |   |   |   |   |   |   [11] V3 > 4
#> |   |   |   |   |   |   |   [12] V5 <= 8 *
#> |   |   |   |   |   |   |   [13] V5 > 8 *
#> |   |   |   |   |   [14] V2 > 70
#> |   |   |   |   |   |   [15] V7 <= 149 *
#> |   |   |   |   |   |   [16] V7 > 149 *
#> |   |   |   [17] V2 > 78
#> |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   [19] V4 > 0 *
#> |   |   [20] V5 > 177 *
#> |   [21] V6 > 0
#> |   |   [22] V5 <= 169
#> |   |   |   [23] V3 <= 1
#> |   |   |   |   [24] V2 <= 64 *
#> |   |   |   |   [25] V2 > 64 *
#> |   |   |   [26] V3 > 1
#> |   |   |   |   [27] V4 <= 0
#> |   |   |   |   |   [28] V2 <= 58 *
#> |   |   |   |   |   [29] V2 > 58
#> |   |   |   |   |   |   [30] V5 <= 10 *
#> |   |   |   |   |   |   [31] V5 > 10
#> |   |   |   |   |   |   |   [32] V7 <= 149 *
#> |   |   |   |   |   |   |   [33] V7 > 149 *
#> |   |   |   |   [34] V4 > 0
#> |   |   |   |   |   [35] V2 <= 72
#> |   |   |   |   |   |   [36] V3 <= 5
#> |   |   |   |   |   |   |   [37] V2 <= 59 *
#> |   |   |   |   |   |   |   [38] V2 > 59 *
#> |   |   |   |   |   |   [39] V3 > 5
#> |   |   |   |   |   |   |   [40] V7 <= 160
#> |   |   |   |   |   |   |   |   [41] V7 <= 133
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 110 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 110
#> |   |   |   |   |   |   |   |   |   |   [44] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   [45] V7 > 125 *
#> |   |   |   |   |   |   |   |   [46] V7 > 133
#> |   |   |   |   |   |   |   |   |   [47] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [48] V7 > 147 *
#> |   |   |   |   |   |   |   [49] V7 > 160 *
#> |   |   |   |   |   [50] V2 > 72
#> |   |   |   |   |   |   [51] V3 <= 6 *
#> |   |   |   |   |   |   [52] V3 > 6 *
#> |   |   [53] V5 > 169
#> |   |   |   [54] V2 <= 71
#> |   |   |   |   [55] V3 <= 3 *
#> |   |   |   |   [56] V3 > 3
#> |   |   |   |   |   [57] V3 <= 7 *
#> |   |   |   |   |   [58] V3 > 7 *
#> |   |   |   [59] V2 > 71 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V7 <= 106
#> |   |   [3] V2 <= 60 *
#> |   |   [4] V2 > 60
#> |   |   |   [5] V3 <= 3 *
#> |   |   |   [6] V3 > 3 *
#> |   [7] V7 > 106
#> |   |   [8] V4 <= 0
#> |   |   |   [9] V5 <= 170
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   [12] V2 > 60
#> |   |   |   |   |   |   [13] V7 <= 143
#> |   |   |   |   |   |   |   [14] V7 <= 120 *
#> |   |   |   |   |   |   |   [15] V7 > 120 *
#> |   |   |   |   |   |   [16] V7 > 143 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V7 <= 136
#> |   |   |   |   |   |   [19] V7 <= 128 *
#> |   |   |   |   |   |   [20] V7 > 128 *
#> |   |   |   |   |   [21] V7 > 136
#> |   |   |   |   |   |   [22] V7 <= 159
#> |   |   |   |   |   |   |   [23] V3 <= 7 *
#> |   |   |   |   |   |   |   [24] V3 > 7 *
#> |   |   |   |   |   |   [25] V7 > 159 *
#> |   |   |   [26] V5 > 170
#> |   |   |   |   [27] V5 <= 179 *
#> |   |   |   |   [28] V5 > 179 *
#> |   |   [29] V4 > 0
#> |   |   |   [30] V5 <= 0
#> |   |   |   |   [31] V2 <= 74
#> |   |   |   |   |   [32] V3 <= 1 *
#> |   |   |   |   |   [33] V3 > 1
#> |   |   |   |   |   |   [34] V7 <= 127 *
#> |   |   |   |   |   |   [35] V7 > 127
#> |   |   |   |   |   |   |   [36] V3 <= 7 *
#> |   |   |   |   |   |   |   [37] V3 > 7 *
#> |   |   |   |   [38] V2 > 74 *
#> |   |   |   [39] V5 > 0
#> |   |   |   |   [40] V7 <= 127
#> |   |   |   |   |   [41] V3 <= 12
#> |   |   |   |   |   |   [42] V2 <= 47 *
#> |   |   |   |   |   |   [43] V2 > 47 *
#> |   |   |   |   |   [44] V3 > 12 *
#> |   |   |   |   [45] V7 > 127
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   |   |   [48] V3 > 2
#> |   |   |   |   |   |   |   [49] V3 <= 11
#> |   |   |   |   |   |   |   |   [50] V2 <= 69
#> |   |   |   |   |   |   |   |   |   [51] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [52] V5 > 2 *
#> |   |   |   |   |   |   |   |   [53] V2 > 69 *
#> |   |   |   |   |   |   |   [54] V3 > 11 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V7 <= 140 *
#> |   |   |   |   |   |   [57] V7 > 140
#> |   |   |   |   |   |   |   [58] V2 <= 65 *
#> |   |   |   |   |   |   |   [59] V2 > 65 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 73
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V2 <= 60
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V2 > 60
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V2 <= 69 *
#> |   |   |   |   |   |   [12] V2 > 69 *
#> |   |   |   [13] V5 > 171
#> |   |   |   |   [14] V3 <= 10
#> |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V2 <= 52 *
#> |   |   |   |   |   |   [18] V2 > 52 *
#> |   |   |   |   [19] V3 > 10 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V3 <= 6
#> |   |   |   |   |   [23] V2 <= 62 *
#> |   |   |   |   |   [24] V2 > 62 *
#> |   |   |   |   [25] V3 > 6
#> |   |   |   |   |   [26] V7 <= 160
#> |   |   |   |   |   |   [27] V7 <= 146
#> |   |   |   |   |   |   |   [28] V2 <= 60 *
#> |   |   |   |   |   |   |   [29] V2 > 60 *
#> |   |   |   |   |   |   [30] V7 > 146 *
#> |   |   |   |   |   [31] V7 > 160 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V3 <= 3 *
#> |   |   |   |   [34] V3 > 3
#> |   |   |   |   |   [35] V3 <= 5 *
#> |   |   |   |   |   [36] V3 > 5
#> |   |   |   |   |   |   [37] V2 <= 61
#> |   |   |   |   |   |   |   [38] V2 <= 52 *
#> |   |   |   |   |   |   |   [39] V2 > 52 *
#> |   |   |   |   |   |   [40] V2 > 61
#> |   |   |   |   |   |   |   [41] V2 <= 67 *
#> |   |   |   |   |   |   |   [42] V2 > 67
#> |   |   |   |   |   |   |   |   [43] V2 <= 70 *
#> |   |   |   |   |   |   |   |   [44] V2 > 70 *
#> |   [45] V2 > 73
#> |   |   [46] V7 <= 171
#> |   |   |   [47] V6 <= 0
#> |   |   |   |   [48] V2 <= 81
#> |   |   |   |   |   [49] V2 <= 78 *
#> |   |   |   |   |   [50] V2 > 78 *
#> |   |   |   |   [51] V2 > 81
#> |   |   |   |   |   [52] V2 <= 87 *
#> |   |   |   |   |   [53] V2 > 87 *
#> |   |   |   [54] V6 > 0
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V2 <= 83
#> |   |   |   |   |   |   [57] V5 <= 32 *
#> |   |   |   |   |   |   [58] V5 > 32 *
#> |   |   |   |   |   [59] V2 > 83
#> |   |   |   |   |   |   [60] V5 <= 126 *
#> |   |   |   |   |   |   [61] V5 > 126 *
#> |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   [63] V5 <= 7
#> |   |   |   |   |   |   [64] V2 <= 79 *
#> |   |   |   |   |   |   [65] V2 > 79 *
#> |   |   |   |   |   [66] V5 > 7 *
#> |   |   [67] V7 > 171 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V3 <= 5 *
#> |   |   |   |   [6] V3 > 5 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V3 <= 8
#> |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   [10] V7 <= 119 *
#> |   |   |   |   |   |   [11] V7 > 119
#> |   |   |   |   |   |   |   [12] V2 <= 75 *
#> |   |   |   |   |   |   |   [13] V2 > 75 *
#> |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   [15] V7 <= 136
#> |   |   |   |   |   |   |   [16] V5 <= 7 *
#> |   |   |   |   |   |   |   [17] V5 > 7 *
#> |   |   |   |   |   |   [18] V7 > 136
#> |   |   |   |   |   |   |   [19] V2 <= 73 *
#> |   |   |   |   |   |   |   [20] V2 > 73 *
#> |   |   |   |   [21] V3 > 8
#> |   |   |   |   |   [22] V5 <= 15 *
#> |   |   |   |   |   [23] V5 > 15 *
#> |   |   [24] V5 > 170
#> |   |   |   [25] V3 <= 12
#> |   |   |   |   [26] V7 <= 151 *
#> |   |   |   |   [27] V7 > 151
#> |   |   |   |   |   [28] V7 <= 156 *
#> |   |   |   |   |   [29] V7 > 156 *
#> |   |   |   [30] V3 > 12 *
#> |   [31] V4 > 0
#> |   |   [32] V5 <= 4
#> |   |   |   [33] V2 <= 56
#> |   |   |   |   [34] V2 <= 43 *
#> |   |   |   |   [35] V2 > 43
#> |   |   |   |   |   [36] V7 <= 150
#> |   |   |   |   |   |   [37] V3 <= 3 *
#> |   |   |   |   |   |   [38] V3 > 3 *
#> |   |   |   |   |   [39] V7 > 150 *
#> |   |   |   [40] V2 > 56
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V3 <= 5
#> |   |   |   |   |   |   [43] V2 <= 63 *
#> |   |   |   |   |   |   [44] V2 > 63 *
#> |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 6
#> |   |   |   |   |   |   [48] V2 <= 78
#> |   |   |   |   |   |   |   [49] V2 <= 65 *
#> |   |   |   |   |   |   |   [50] V2 > 65 *
#> |   |   |   |   |   |   [51] V2 > 78 *
#> |   |   |   |   |   [52] V3 > 6
#> |   |   |   |   |   |   [53] V3 <= 11 *
#> |   |   |   |   |   |   [54] V3 > 11 *
#> |   |   [55] V5 > 4
#> |   |   |   [56] V6 <= 0
#> |   |   |   |   [57] V2 <= 63 *
#> |   |   |   |   [58] V2 > 63
#> |   |   |   |   |   [59] V2 <= 71 *
#> |   |   |   |   |   [60] V2 > 71 *
#> |   |   |   [61] V6 > 0
#> |   |   |   |   [62] V5 <= 7 *
#> |   |   |   |   [63] V5 > 7
#> |   |   |   |   |   [64] V3 <= 12 *
#> |   |   |   |   |   [65] V3 > 12
#> |   |   |   |   |   |   [66] V7 <= 140 *
#> |   |   |   |   |   |   [67] V7 > 140 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V5 <= 37 *
#> |   |   |   [5] V5 > 37 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V5 <= 177
#> |   |   |   |   [8] V2 <= 59 *
#> |   |   |   |   [9] V2 > 59
#> |   |   |   |   |   [10] V2 <= 70 *
#> |   |   |   |   |   [11] V2 > 70
#> |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   |   [14] V5 <= 6 *
#> |   |   |   |   |   |   |   [15] V5 > 6
#> |   |   |   |   |   |   |   |   [16] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [17] V3 > 10 *
#> |   |   |   [18] V5 > 177 *
#> |   [19] V4 > 0
#> |   |   [20] V7 <= 123
#> |   |   |   [21] V2 <= 72
#> |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   [24] V5 <= 5 *
#> |   |   |   |   |   [25] V5 > 5 *
#> |   |   |   [26] V2 > 72
#> |   |   |   |   [27] V3 <= 11 *
#> |   |   |   |   [28] V3 > 11 *
#> |   |   [29] V7 > 123
#> |   |   |   [30] V3 <= 1 *
#> |   |   |   [31] V3 > 1
#> |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   [33] V2 <= 79
#> |   |   |   |   |   |   [34] V3 <= 4
#> |   |   |   |   |   |   |   [35] V5 <= 1 *
#> |   |   |   |   |   |   |   [36] V5 > 1 *
#> |   |   |   |   |   |   [37] V3 > 4
#> |   |   |   |   |   |   |   [38] V3 <= 10
#> |   |   |   |   |   |   |   |   [39] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [40] V7 > 160 *
#> |   |   |   |   |   |   |   [41] V3 > 10 *
#> |   |   |   |   |   [42] V2 > 79 *
#> |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   [44] V2 <= 72
#> |   |   |   |   |   |   [45] V5 <= 0
#> |   |   |   |   |   |   |   [46] V7 <= 140 *
#> |   |   |   |   |   |   |   [47] V7 > 140 *
#> |   |   |   |   |   |   [48] V5 > 0
#> |   |   |   |   |   |   |   [49] V2 <= 66
#> |   |   |   |   |   |   |   |   [50] V2 <= 63
#> |   |   |   |   |   |   |   |   |   [51] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [52] V5 > 3 *
#> |   |   |   |   |   |   |   |   [53] V2 > 63 *
#> |   |   |   |   |   |   |   [54] V2 > 66 *
#> |   |   |   |   |   [55] V2 > 72
#> |   |   |   |   |   |   [56] V7 <= 135 *
#> |   |   |   |   |   |   [57] V7 > 135 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 177
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V2 <= 60 *
#> |   |   |   |   |   [7] V2 > 60 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V5 > 177 *
#> |   |   [10] V6 > 0
#> |   |   |   [11] V5 <= 152
#> |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   [14] V7 <= 140
#> |   |   |   |   |   |   [15] V5 <= 10 *
#> |   |   |   |   |   |   [16] V5 > 10 *
#> |   |   |   |   |   [17] V7 > 140
#> |   |   |   |   |   |   [18] V5 <= 4 *
#> |   |   |   |   |   |   [19] V5 > 4 *
#> |   |   |   [20] V5 > 152
#> |   |   |   |   [21] V2 <= 58
#> |   |   |   |   |   [22] V7 <= 138 *
#> |   |   |   |   |   [23] V7 > 138 *
#> |   |   |   |   [24] V2 > 58
#> |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   [26] V3 > 3 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 54
#> |   |   |   [29] V6 <= 0
#> |   |   |   |   [30] V7 <= 125 *
#> |   |   |   |   [31] V7 > 125 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V7 <= 120 *
#> |   |   |   |   [34] V7 > 120 *
#> |   |   [35] V2 > 54
#> |   |   |   [36] V2 <= 72
#> |   |   |   |   [37] V7 <= 168
#> |   |   |   |   |   [38] V3 <= 2 *
#> |   |   |   |   |   [39] V3 > 2
#> |   |   |   |   |   |   [40] V5 <= 3
#> |   |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   |   |   [43] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [44] V3 > 7 *
#> |   |   |   |   |   |   [45] V5 > 3
#> |   |   |   |   |   |   |   [46] V2 <= 59 *
#> |   |   |   |   |   |   |   [47] V2 > 59
#> |   |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   |   [50] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   |   [52] V7 > 168
#> |   |   |   |   |   [53] V3 <= 5 *
#> |   |   |   |   |   [54] V3 > 5 *
#> |   |   |   [55] V2 > 72
#> |   |   |   |   [56] V2 <= 73 *
#> |   |   |   |   [57] V2 > 73
#> |   |   |   |   |   [58] V5 <= 8
#> |   |   |   |   |   |   [59] V3 <= 10
#> |   |   |   |   |   |   |   [60] V5 <= 1
#> |   |   |   |   |   |   |   |   [61] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [62] V2 > 78 *
#> |   |   |   |   |   |   |   [63] V5 > 1 *
#> |   |   |   |   |   |   [64] V3 > 10 *
#> |   |   |   |   |   [65] V5 > 8 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V7 <= 149
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 170
#> |   |   |   |   |   [6] V7 <= 130 *
#> |   |   |   |   |   [7] V7 > 130 *
#> |   |   |   |   [8] V5 > 170 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 70
#> |   |   |   |   |   [11] V2 <= 61 *
#> |   |   |   |   |   [12] V2 > 61 *
#> |   |   |   |   [13] V2 > 70
#> |   |   |   |   |   [14] V7 <= 125 *
#> |   |   |   |   |   [15] V7 > 125 *
#> |   |   [16] V7 > 149
#> |   |   |   [17] V2 <= 73
#> |   |   |   |   [18] V7 <= 174
#> |   |   |   |   |   [19] V3 <= 9
#> |   |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   |   [21] V3 > 3 *
#> |   |   |   |   |   [22] V3 > 9 *
#> |   |   |   |   [23] V7 > 174 *
#> |   |   |   [24] V2 > 73
#> |   |   |   |   [25] V4 <= 0 *
#> |   |   |   |   [26] V4 > 0 *
#> |   [27] V6 > 0
#> |   |   [28] V5 <= 128
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V3 <= 2
#> |   |   |   |   |   [31] V5 <= 1 *
#> |   |   |   |   |   [32] V5 > 1 *
#> |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   [34] V5 <= 11
#> |   |   |   |   |   |   [35] V5 <= 7 *
#> |   |   |   |   |   |   [36] V5 > 7 *
#> |   |   |   |   |   [37] V5 > 11
#> |   |   |   |   |   |   [38] V5 <= 28 *
#> |   |   |   |   |   |   [39] V5 > 28 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V7 <= 160
#> |   |   |   |   |   [42] V7 <= 112 *
#> |   |   |   |   |   [43] V7 > 112
#> |   |   |   |   |   |   [44] V2 <= 74
#> |   |   |   |   |   |   |   [45] V2 <= 54
#> |   |   |   |   |   |   |   |   [46] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [47] V7 > 120 *
#> |   |   |   |   |   |   |   [48] V2 > 54
#> |   |   |   |   |   |   |   |   [49] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [50] V2 > 59
#> |   |   |   |   |   |   |   |   |   [51] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   [52] V2 > 63
#> |   |   |   |   |   |   |   |   |   |   [53] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   |   [54] V2 > 69 *
#> |   |   |   |   |   |   [55] V2 > 74
#> |   |   |   |   |   |   |   [56] V5 <= 4 *
#> |   |   |   |   |   |   |   [57] V5 > 4 *
#> |   |   |   |   [58] V7 > 160
#> |   |   |   |   |   [59] V2 <= 62 *
#> |   |   |   |   |   [60] V2 > 62 *
#> |   |   [61] V5 > 128
#> |   |   |   [62] V2 <= 52 *
#> |   |   |   [63] V2 > 52 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V7 <= 180
#> |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   [12] V7 <= 120 *
#> |   |   |   |   |   |   [13] V7 > 120
#> |   |   |   |   |   |   |   [14] V3 <= 6 *
#> |   |   |   |   |   |   |   [15] V3 > 6 *
#> |   |   |   |   |   [16] V2 > 54
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V2 <= 70
#> |   |   |   |   |   |   |   |   [19] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [20] V5 > 8 *
#> |   |   |   |   |   |   |   [21] V2 > 70 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V2 <= 69
#> |   |   |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   |   |   [26] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [27] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [28] V3 <= 15
#> |   |   |   |   |   |   |   |   |   |   |   [29] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   |   [30] V5 > 5 *
#> |   |   |   |   |   |   |   |   |   |   [31] V3 > 15 *
#> |   |   |   |   |   |   |   [32] V2 > 69 *
#> |   |   |   |   [33] V7 > 180 *
#> |   |   [34] V5 > 170
#> |   |   |   [35] V7 <= 130 *
#> |   |   |   [36] V7 > 130
#> |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   [38] V6 > 0 *
#> |   [39] V2 > 72
#> |   |   [40] V5 <= 177
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V5 <= 152
#> |   |   |   |   |   [43] V7 <= 140
#> |   |   |   |   |   |   [44] V5 <= 8 *
#> |   |   |   |   |   |   [45] V5 > 8 *
#> |   |   |   |   |   [46] V7 > 140
#> |   |   |   |   |   |   [47] V7 <= 160 *
#> |   |   |   |   |   |   [48] V7 > 160 *
#> |   |   |   |   [49] V5 > 152 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V5 <= 0
#> |   |   |   |   |   [52] V2 <= 80 *
#> |   |   |   |   |   [53] V2 > 80 *
#> |   |   |   |   [54] V5 > 0
#> |   |   |   |   |   [55] V3 <= 14
#> |   |   |   |   |   |   [56] V3 <= 12
#> |   |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   |   [58] V6 > 0 *
#> |   |   |   |   |   |   [59] V3 > 12 *
#> |   |   |   |   |   [60] V3 > 14 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V2 <= 87
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 115 *
#> |   |   |   |   [6] V5 > 115
#> |   |   |   |   |   [7] V2 <= 48 *
#> |   |   |   |   |   [8] V2 > 48 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 43 *
#> |   |   |   |   [11] V2 > 43
#> |   |   |   |   |   [12] V7 <= 129 *
#> |   |   |   |   |   [13] V7 > 129
#> |   |   |   |   |   |   [14] V3 <= 5 *
#> |   |   |   |   |   |   [15] V3 > 5 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V5 <= 154
#> |   |   |   |   |   [19] V2 <= 60 *
#> |   |   |   |   |   [20] V2 > 60
#> |   |   |   |   |   |   [21] V3 <= 9
#> |   |   |   |   |   |   |   [22] V7 <= 122 *
#> |   |   |   |   |   |   |   [23] V7 > 122
#> |   |   |   |   |   |   |   |   [24] V7 <= 159
#> |   |   |   |   |   |   |   |   |   [25] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [26] V5 > 5 *
#> |   |   |   |   |   |   |   |   [27] V7 > 159 *
#> |   |   |   |   |   |   [28] V3 > 9 *
#> |   |   |   |   [29] V5 > 154
#> |   |   |   |   |   [30] V5 <= 178 *
#> |   |   |   |   |   [31] V5 > 178 *
#> |   |   |   [32] V4 > 0
#> |   |   |   |   [33] V7 <= 119
#> |   |   |   |   |   [34] V2 <= 65 *
#> |   |   |   |   |   [35] V2 > 65 *
#> |   |   |   |   [36] V7 > 119
#> |   |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   |   [38] V5 <= 8
#> |   |   |   |   |   |   |   [39] V2 <= 67 *
#> |   |   |   |   |   |   |   [40] V2 > 67
#> |   |   |   |   |   |   |   |   [41] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [42] V2 > 78 *
#> |   |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   |   [47] V7 <= 180
#> |   |   |   |   |   |   |   |   [48] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [50] V3 > 9 *
#> |   |   |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   |   |   |   |   [52] V7 > 180 *
#> |   [53] V2 > 87
#> |   |   [54] V5 <= 5 *
#> |   |   [55] V5 > 5 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 62 *
#> |   |   |   |   [6] V2 > 62
#> |   |   |   |   |   [7] V7 <= 125 *
#> |   |   |   |   |   [8] V7 > 125 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V3 <= 7
#> |   |   |   |   |   [11] V2 <= 70 *
#> |   |   |   |   |   [12] V2 > 70
#> |   |   |   |   |   |   [13] V2 <= 76 *
#> |   |   |   |   |   |   [14] V2 > 76
#> |   |   |   |   |   |   |   [15] V7 <= 133 *
#> |   |   |   |   |   |   |   [16] V7 > 133 *
#> |   |   |   |   [17] V3 > 7
#> |   |   |   |   |   [18] V2 <= 58 *
#> |   |   |   |   |   [19] V2 > 58 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 63
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V2 <= 45 *
#> |   |   |   |   |   [24] V2 > 45
#> |   |   |   |   |   |   [25] V2 <= 51 *
#> |   |   |   |   |   |   [26] V2 > 51
#> |   |   |   |   |   |   |   [27] V2 <= 58 *
#> |   |   |   |   |   |   |   [28] V2 > 58 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V3 <= 13
#> |   |   |   |   |   |   [31] V2 <= 54
#> |   |   |   |   |   |   |   [32] V2 <= 48 *
#> |   |   |   |   |   |   |   [33] V2 > 48 *
#> |   |   |   |   |   |   [34] V2 > 54 *
#> |   |   |   |   |   [35] V3 > 13 *
#> |   |   |   [36] V2 > 63
#> |   |   |   |   [37] V2 <= 75
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V2 <= 71
#> |   |   |   |   |   |   |   [40] V3 <= 11 *
#> |   |   |   |   |   |   |   [41] V3 > 11 *
#> |   |   |   |   |   |   [42] V2 > 71 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V2 <= 72
#> |   |   |   |   |   |   |   [45] V3 <= 4 *
#> |   |   |   |   |   |   |   [46] V3 > 4
#> |   |   |   |   |   |   |   |   [47] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [48] V7 > 125
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   [50] V3 > 13 *
#> |   |   |   |   |   |   [51] V2 > 72 *
#> |   |   |   |   [52] V2 > 75
#> |   |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   |   [54] V3 > 6
#> |   |   |   |   |   |   [55] V3 <= 15
#> |   |   |   |   |   |   |   [56] V7 <= 140 *
#> |   |   |   |   |   |   |   [57] V7 > 140 *
#> |   |   |   |   |   |   [58] V3 > 15 *
#> |   [59] V5 > 170
#> |   |   [60] V5 <= 179 *
#> |   |   [61] V5 > 179 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V4 <= 0
#> |   |   |   |   |   [7] V3 <= 7
#> |   |   |   |   |   |   [8] V2 <= 60 *
#> |   |   |   |   |   |   [9] V2 > 60 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   |   [11] V4 > 0
#> |   |   |   |   |   [12] V2 <= 56
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120
#> |   |   |   |   |   |   |   [15] V7 <= 166
#> |   |   |   |   |   |   |   |   [16] V5 <= 2
#> |   |   |   |   |   |   |   |   |   [17] V2 <= 52 *
#> |   |   |   |   |   |   |   |   |   [18] V2 > 52 *
#> |   |   |   |   |   |   |   |   [19] V5 > 2 *
#> |   |   |   |   |   |   |   [20] V7 > 166 *
#> |   |   |   |   |   [21] V2 > 56
#> |   |   |   |   |   |   [22] V2 <= 67
#> |   |   |   |   |   |   |   [23] V7 <= 114 *
#> |   |   |   |   |   |   |   [24] V7 > 114
#> |   |   |   |   |   |   |   |   [25] V2 <= 61
#> |   |   |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   |   |   [28] V2 > 61
#> |   |   |   |   |   |   |   |   |   [29] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [30] V6 > 0 *
#> |   |   |   |   |   |   [31] V2 > 67
#> |   |   |   |   |   |   |   [32] V7 <= 170
#> |   |   |   |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [34] V7 > 130
#> |   |   |   |   |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [36] V6 > 0 *
#> |   |   |   |   |   |   |   [37] V7 > 170 *
#> |   |   [38] V2 > 74
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V3 <= 1 *
#> |   |   |   |   [41] V3 > 1
#> |   |   |   |   |   [42] V7 <= 139
#> |   |   |   |   |   |   [43] V7 <= 121
#> |   |   |   |   |   |   |   [44] V3 <= 4 *
#> |   |   |   |   |   |   |   [45] V3 > 4 *
#> |   |   |   |   |   |   [46] V7 > 121 *
#> |   |   |   |   |   [47] V7 > 139
#> |   |   |   |   |   |   [48] V2 <= 78 *
#> |   |   |   |   |   |   [49] V2 > 78 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   [52] V5 > 0
#> |   |   |   |   |   [53] V7 <= 147
#> |   |   |   |   |   |   [54] V2 <= 81 *
#> |   |   |   |   |   |   [55] V2 > 81 *
#> |   |   |   |   |   [56] V7 > 147 *
#> |   [57] V5 > 171
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 137
#> |   |   |   |   [61] V2 <= 55 *
#> |   |   |   |   [62] V2 > 55 *
#> |   |   |   [63] V7 > 137
#> |   |   |   |   [64] V7 <= 154 *
#> |   |   |   |   [65] V7 > 154 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V5 <= 13 *
#> |   |   |   |   |   [8] V5 > 13 *
#> |   |   |   [9] V5 > 171
#> |   |   |   |   [10] V3 <= 3
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   [13] V3 > 3
#> |   |   |   |   |   [14] V7 <= 119 *
#> |   |   |   |   |   [15] V7 > 119 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V6 <= 0
#> |   |   |   |   [18] V2 <= 63
#> |   |   |   |   |   [19] V5 <= 1 *
#> |   |   |   |   |   [20] V5 > 1
#> |   |   |   |   |   |   [21] V2 <= 52 *
#> |   |   |   |   |   |   [22] V2 > 52 *
#> |   |   |   |   [23] V2 > 63
#> |   |   |   |   |   [24] V3 <= 12 *
#> |   |   |   |   |   [25] V3 > 12 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V2 <= 54
#> |   |   |   |   |   [28] V3 <= 6 *
#> |   |   |   |   |   [29] V3 > 6 *
#> |   |   |   |   [30] V2 > 54
#> |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   [32] V3 > 3
#> |   |   |   |   |   |   [33] V5 <= 1
#> |   |   |   |   |   |   |   [34] V2 <= 65 *
#> |   |   |   |   |   |   |   [35] V2 > 65 *
#> |   |   |   |   |   |   [36] V5 > 1
#> |   |   |   |   |   |   |   [37] V3 <= 15
#> |   |   |   |   |   |   |   |   [38] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [39] V7 > 132 *
#> |   |   |   |   |   |   |   [40] V3 > 15 *
#> |   [41] V2 > 72
#> |   |   [42] V6 <= 0
#> |   |   |   [43] V2 <= 86
#> |   |   |   |   [44] V5 <= 177
#> |   |   |   |   |   [45] V3 <= 7 *
#> |   |   |   |   |   [46] V3 > 7
#> |   |   |   |   |   |   [47] V5 <= 5 *
#> |   |   |   |   |   |   [48] V5 > 5 *
#> |   |   |   |   [49] V5 > 177 *
#> |   |   |   [50] V2 > 86 *
#> |   |   [51] V6 > 0
#> |   |   |   [52] V5 <= 169
#> |   |   |   |   [53] V5 <= 1
#> |   |   |   |   |   [54] V2 <= 77 *
#> |   |   |   |   |   [55] V2 > 77 *
#> |   |   |   |   [56] V5 > 1
#> |   |   |   |   |   [57] V5 <= 7 *
#> |   |   |   |   |   [58] V5 > 7
#> |   |   |   |   |   |   [59] V4 <= 0 *
#> |   |   |   |   |   |   [60] V4 > 0 *
#> |   |   |   [61] V5 > 169 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V5 <= 3 *
#> |   |   |   |   [6] V5 > 3 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V2 <= 70
#> |   |   |   |   |   [9] V2 <= 63 *
#> |   |   |   |   |   [10] V2 > 63 *
#> |   |   |   |   [11] V2 > 70
#> |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V3 <= 4
#> |   |   |   |   |   |   |   [15] V2 <= 83 *
#> |   |   |   |   |   |   |   [16] V2 > 83 *
#> |   |   |   |   |   |   [17] V3 > 4
#> |   |   |   |   |   |   |   [18] V2 <= 85 *
#> |   |   |   |   |   |   |   [19] V2 > 85 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 72
#> |   |   |   |   [22] V2 <= 56
#> |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   [25] V2 <= 49 *
#> |   |   |   |   |   |   [26] V2 > 49 *
#> |   |   |   |   [27] V2 > 56
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V2 <= 70
#> |   |   |   |   |   |   |   [30] V5 <= 8
#> |   |   |   |   |   |   |   |   [31] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [32] V2 > 62 *
#> |   |   |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   |   |   |   [34] V2 > 70 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V7 <= 132
#> |   |   |   |   |   |   |   [37] V2 <= 65 *
#> |   |   |   |   |   |   |   [38] V2 > 65 *
#> |   |   |   |   |   |   [39] V7 > 132
#> |   |   |   |   |   |   |   [40] V3 <= 12
#> |   |   |   |   |   |   |   |   [41] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [42] V2 > 65 *
#> |   |   |   |   |   |   |   [43] V3 > 12 *
#> |   |   |   [44] V2 > 72
#> |   |   |   |   [45] V2 <= 84
#> |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   [47] V3 > 4
#> |   |   |   |   |   |   [48] V7 <= 141
#> |   |   |   |   |   |   |   [49] V3 <= 12 *
#> |   |   |   |   |   |   |   [50] V3 > 12 *
#> |   |   |   |   |   |   [51] V7 > 141
#> |   |   |   |   |   |   |   [52] V2 <= 76 *
#> |   |   |   |   |   |   |   [53] V2 > 76 *
#> |   |   |   |   [54] V2 > 84 *
#> |   [55] V5 > 171
#> |   |   [56] V2 <= 67
#> |   |   |   [57] V3 <= 9
#> |   |   |   |   [58] V3 <= 5
#> |   |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   |   [60] V6 > 0 *
#> |   |   |   |   [61] V3 > 5 *
#> |   |   |   [62] V3 > 9 *
#> |   |   [63] V2 > 67 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 59 *
#> |   |   |   |   |   [8] V2 > 59 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V5 <= 3
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V7 <= 151
#> |   |   |   |   |   |   |   [13] V7 <= 127 *
#> |   |   |   |   |   |   |   [14] V7 > 127 *
#> |   |   |   |   |   |   [15] V7 > 151 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V5 <= 0
#> |   |   |   |   |   |   |   [18] V2 <= 65
#> |   |   |   |   |   |   |   |   [19] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [20] V7 > 140 *
#> |   |   |   |   |   |   |   [21] V2 > 65 *
#> |   |   |   |   |   |   [22] V5 > 0 *
#> |   |   |   |   [23] V5 > 3
#> |   |   |   |   |   [24] V3 <= 14
#> |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   [26] V5 <= 8 *
#> |   |   |   |   |   |   |   [27] V5 > 8 *
#> |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   |   [29] V3 > 14
#> |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   [32] V2 > 72
#> |   |   |   [33] V4 <= 0
#> |   |   |   |   [34] V7 <= 128
#> |   |   |   |   |   [35] V3 <= 3 *
#> |   |   |   |   |   [36] V3 > 3 *
#> |   |   |   |   [37] V7 > 128
#> |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V2 <= 78 *
#> |   |   |   |   |   |   [41] V2 > 78 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V2 <= 79
#> |   |   |   |   |   [44] V2 <= 77
#> |   |   |   |   |   |   [45] V7 <= 123 *
#> |   |   |   |   |   |   [46] V7 > 123
#> |   |   |   |   |   |   |   [47] V7 <= 174 *
#> |   |   |   |   |   |   |   [48] V7 > 174 *
#> |   |   |   |   |   [49] V2 > 77 *
#> |   |   |   |   [50] V2 > 79
#> |   |   |   |   |   [51] V2 <= 80 *
#> |   |   |   |   |   [52] V2 > 80
#> |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   [54] V5 > 0 *
#> |   [55] V5 > 171
#> |   |   [56] V6 <= 0 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V7 <= 180
#> |   |   |   |   [59] V3 <= 3 *
#> |   |   |   |   [60] V3 > 3 *
#> |   |   |   [61] V7 > 180 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V5 <= 115 *
#> |   |   |   |   [6] V5 > 115 *
#> |   |   |   [7] V3 > 2
#> |   |   |   |   [8] V2 <= 59
#> |   |   |   |   |   [9] V5 <= 150 *
#> |   |   |   |   |   [10] V5 > 150
#> |   |   |   |   |   |   [11] V3 <= 7 *
#> |   |   |   |   |   |   [12] V3 > 7 *
#> |   |   |   |   [13] V2 > 59
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V5 <= 85 *
#> |   |   |   |   |   |   [17] V5 > 85 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 56
#> |   |   |   |   [20] V3 <= 6
#> |   |   |   |   |   [21] V7 <= 125 *
#> |   |   |   |   |   [22] V7 > 125
#> |   |   |   |   |   |   [23] V2 <= 49 *
#> |   |   |   |   |   |   [24] V2 > 49 *
#> |   |   |   |   [25] V3 > 6
#> |   |   |   |   |   [26] V2 <= 46 *
#> |   |   |   |   |   [27] V2 > 46 *
#> |   |   |   [28] V2 > 56
#> |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   [31] V2 <= 66
#> |   |   |   |   |   |   [32] V3 <= 17
#> |   |   |   |   |   |   |   [33] V7 <= 162
#> |   |   |   |   |   |   |   |   [34] V3 <= 14
#> |   |   |   |   |   |   |   |   |   [35] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 1
#> |   |   |   |   |   |   |   |   |   |   [37] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [38] V3 > 7 *
#> |   |   |   |   |   |   |   |   [39] V3 > 14 *
#> |   |   |   |   |   |   |   [40] V7 > 162 *
#> |   |   |   |   |   |   [41] V3 > 17 *
#> |   |   |   |   |   [42] V2 > 66
#> |   |   |   |   |   |   [43] V3 <= 13
#> |   |   |   |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   |   |   |   [45] V6 > 0 *
#> |   |   |   |   |   |   [46] V3 > 13 *
#> |   [47] V2 > 72
#> |   |   [48] V7 <= 107
#> |   |   |   [49] V7 <= 98 *
#> |   |   |   [50] V7 > 98 *
#> |   |   [51] V7 > 107
#> |   |   |   [52] V6 <= 0
#> |   |   |   |   [53] V2 <= 75 *
#> |   |   |   |   [54] V2 > 75
#> |   |   |   |   |   [55] V5 <= 177
#> |   |   |   |   |   |   [56] V4 <= 0 *
#> |   |   |   |   |   |   [57] V4 > 0 *
#> |   |   |   |   |   [58] V5 > 177 *
#> |   |   |   [59] V6 > 0
#> |   |   |   |   [60] V4 <= 0
#> |   |   |   |   |   [61] V3 <= 3 *
#> |   |   |   |   |   [62] V3 > 3
#> |   |   |   |   |   |   [63] V7 <= 119 *
#> |   |   |   |   |   |   [64] V7 > 119
#> |   |   |   |   |   |   |   [65] V7 <= 132 *
#> |   |   |   |   |   |   |   [66] V7 > 132 *
#> |   |   |   |   [67] V4 > 0
#> |   |   |   |   |   [68] V3 <= 13
#> |   |   |   |   |   |   [69] V3 <= 9
#> |   |   |   |   |   |   |   [70] V5 <= 1 *
#> |   |   |   |   |   |   |   [71] V5 > 1 *
#> |   |   |   |   |   |   [72] V3 > 9 *
#> |   |   |   |   |   [73] V3 > 13 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V3 <= 6 *
#> |   |   |   |   |   [8] V3 > 6 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 8
#> |   |   |   |   |   |   [12] V7 <= 124 *
#> |   |   |   |   |   |   [13] V7 > 124
#> |   |   |   |   |   |   |   [14] V7 <= 162 *
#> |   |   |   |   |   |   |   [15] V7 > 162 *
#> |   |   |   |   |   [16] V5 > 8 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V7 <= 110 *
#> |   |   |   |   |   [19] V7 > 110
#> |   |   |   |   |   |   [20] V7 <= 130
#> |   |   |   |   |   |   |   [21] V2 <= 49 *
#> |   |   |   |   |   |   |   [22] V2 > 49 *
#> |   |   |   |   |   |   [23] V7 > 130
#> |   |   |   |   |   |   |   [24] V7 <= 147 *
#> |   |   |   |   |   |   |   [25] V7 > 147
#> |   |   |   |   |   |   |   |   [26] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [27] V5 > 4 *
#> |   |   [28] V2 > 66
#> |   |   |   [29] V7 <= 126
#> |   |   |   |   [30] V3 <= 7
#> |   |   |   |   |   [31] V3 <= 4
#> |   |   |   |   |   |   [32] V3 <= 1 *
#> |   |   |   |   |   |   [33] V3 > 1 *
#> |   |   |   |   |   [34] V3 > 4 *
#> |   |   |   |   [35] V3 > 7
#> |   |   |   |   |   [36] V5 <= 6 *
#> |   |   |   |   |   [37] V5 > 6 *
#> |   |   |   [38] V7 > 126
#> |   |   |   |   [39] V5 <= 15
#> |   |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   |   [41] V5 <= 5 *
#> |   |   |   |   |   |   [42] V5 > 5 *
#> |   |   |   |   |   [43] V4 > 0
#> |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   [45] V3 > 5
#> |   |   |   |   |   |   |   [46] V5 <= 8
#> |   |   |   |   |   |   |   |   [47] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [48] V3 > 7
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [50] V3 > 8
#> |   |   |   |   |   |   |   |   |   |   [51] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [52] V5 > 1 *
#> |   |   |   |   |   |   |   [53] V5 > 8 *
#> |   |   |   |   [54] V5 > 15
#> |   |   |   |   |   [55] V5 <= 119
#> |   |   |   |   |   |   [56] V2 <= 74 *
#> |   |   |   |   |   |   [57] V2 > 74 *
#> |   |   |   |   |   [58] V5 > 119 *
#> |   [59] V5 > 171
#> |   |   [60] V7 <= 137 *
#> |   |   [61] V7 > 137
#> |   |   |   [62] V6 <= 0 *
#> |   |   |   [63] V6 > 0 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V3 <= 7
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V2 <= 60 *
#> |   |   |   |   |   [7] V2 > 60 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 85
#> |   |   |   |   |   |   [10] V7 <= 133
#> |   |   |   |   |   |   |   [11] V5 <= 5 *
#> |   |   |   |   |   |   |   [12] V5 > 5 *
#> |   |   |   |   |   |   [13] V7 > 133 *
#> |   |   |   |   |   [14] V5 > 85 *
#> |   |   |   [15] V3 > 7
#> |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V3 <= 11 *
#> |   |   |   |   |   [19] V3 > 11 *
#> |   |   [20] V5 > 171
#> |   |   |   [21] V6 <= 0 *
#> |   |   |   [22] V6 > 0
#> |   |   |   |   [23] V7 <= 135 *
#> |   |   |   |   [24] V7 > 135
#> |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   [26] V3 > 3 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 75
#> |   |   |   [29] V6 <= 0
#> |   |   |   |   [30] V5 <= 8
#> |   |   |   |   |   [31] V2 <= 69
#> |   |   |   |   |   |   [32] V3 <= 4
#> |   |   |   |   |   |   |   [33] V3 <= 2 *
#> |   |   |   |   |   |   |   [34] V3 > 2 *
#> |   |   |   |   |   |   [35] V3 > 4 *
#> |   |   |   |   |   [36] V2 > 69 *
#> |   |   |   |   [37] V5 > 8
#> |   |   |   |   |   [38] V7 <= 114 *
#> |   |   |   |   |   [39] V7 > 114
#> |   |   |   |   |   |   [40] V5 <= 10 *
#> |   |   |   |   |   |   [41] V5 > 10 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V7 <= 180
#> |   |   |   |   |   [44] V7 <= 120 *
#> |   |   |   |   |   [45] V7 > 120
#> |   |   |   |   |   |   [46] V5 <= 11
#> |   |   |   |   |   |   |   [47] V7 <= 148
#> |   |   |   |   |   |   |   |   [48] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [49] V7 > 129
#> |   |   |   |   |   |   |   |   |   [50] V7 <= 141
#> |   |   |   |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [53] V7 > 141 *
#> |   |   |   |   |   |   |   [54] V7 > 148
#> |   |   |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   |   |   [57] V5 > 11 *
#> |   |   |   |   [58] V7 > 180 *
#> |   |   [59] V2 > 75
#> |   |   |   [60] V6 <= 0
#> |   |   |   |   [61] V7 <= 128 *
#> |   |   |   |   [62] V7 > 128 *
#> |   |   |   [63] V6 > 0
#> |   |   |   |   [64] V2 <= 80
#> |   |   |   |   |   [65] V7 <= 121 *
#> |   |   |   |   |   [66] V7 > 121 *
#> |   |   |   |   [67] V2 > 80 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60
#> |   |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V5 <= 10
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V2 <= 60
#> |   |   |   |   |   |   |   [15] V7 <= 150 *
#> |   |   |   |   |   |   |   [16] V7 > 150 *
#> |   |   |   |   |   |   [17] V2 > 60
#> |   |   |   |   |   |   |   [18] V3 <= 9 *
#> |   |   |   |   |   |   |   [19] V3 > 9 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V2 <= 56
#> |   |   |   |   |   |   |   [22] V7 <= 116 *
#> |   |   |   |   |   |   |   [23] V7 > 116
#> |   |   |   |   |   |   |   |   [24] V5 <= 4
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [26] V3 > 3 *
#> |   |   |   |   |   |   |   |   [27] V5 > 4 *
#> |   |   |   |   |   |   [28] V2 > 56
#> |   |   |   |   |   |   |   [29] V2 <= 71
#> |   |   |   |   |   |   |   |   [30] V7 <= 148
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 5 *
#> |   |   |   |   |   |   |   |   [33] V7 > 148 *
#> |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   |   [35] V5 > 10
#> |   |   |   |   |   [36] V2 <= 61 *
#> |   |   |   |   |   [37] V2 > 61 *
#> |   |   [38] V5 > 171
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V7 <= 151 *
#> |   |   |   |   [42] V7 > 151 *
#> |   [43] V2 > 74
#> |   |   [44] V6 <= 0
#> |   |   |   [45] V2 <= 88
#> |   |   |   |   [46] V2 <= 79 *
#> |   |   |   |   [47] V2 > 79
#> |   |   |   |   |   [48] V5 <= 177
#> |   |   |   |   |   |   [49] V5 <= 10 *
#> |   |   |   |   |   |   [50] V5 > 10 *
#> |   |   |   |   |   [51] V5 > 177 *
#> |   |   |   [52] V2 > 88 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V5 <= 169
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V7 <= 140
#> |   |   |   |   |   |   [57] V5 <= 8 *
#> |   |   |   |   |   |   [58] V5 > 8 *
#> |   |   |   |   |   [59] V7 > 140 *
#> |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   [61] V3 <= 5 *
#> |   |   |   |   |   [62] V3 > 5
#> |   |   |   |   |   |   [63] V2 <= 80 *
#> |   |   |   |   |   |   [64] V2 > 80 *
#> |   |   |   [65] V5 > 169 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V7 <= 120
#> |   |   |   |   [5] V5 <= 8 *
#> |   |   |   |   [6] V5 > 8 *
#> |   |   |   [7] V7 > 120
#> |   |   |   |   [8] V3 <= 1 *
#> |   |   |   |   [9] V3 > 1
#> |   |   |   |   |   [10] V5 <= 170
#> |   |   |   |   |   |   [11] V3 <= 7
#> |   |   |   |   |   |   |   [12] V5 <= 2
#> |   |   |   |   |   |   |   |   [13] V7 <= 143 *
#> |   |   |   |   |   |   |   |   [14] V7 > 143 *
#> |   |   |   |   |   |   |   [15] V5 > 2 *
#> |   |   |   |   |   |   [16] V3 > 7
#> |   |   |   |   |   |   |   [17] V3 <= 14 *
#> |   |   |   |   |   |   |   [18] V3 > 14 *
#> |   |   |   |   |   [19] V5 > 170 *
#> |   |   [20] V6 > 0
#> |   |   |   [21] V5 <= 152
#> |   |   |   |   [22] V5 <= 15
#> |   |   |   |   |   [23] V4 <= 0 *
#> |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   [25] V5 <= 0
#> |   |   |   |   |   |   |   [26] V7 <= 110 *
#> |   |   |   |   |   |   |   [27] V7 > 110
#> |   |   |   |   |   |   |   |   [28] V7 <= 136 *
#> |   |   |   |   |   |   |   |   [29] V7 > 136 *
#> |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   [31] V3 <= 14
#> |   |   |   |   |   |   |   |   [32] V2 <= 65
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   [34] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 8 *
#> |   |   |   |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   |   |   |   |   [38] V3 > 14 *
#> |   |   |   |   [39] V5 > 15 *
#> |   |   |   [40] V5 > 152
#> |   |   |   |   [41] V7 <= 130 *
#> |   |   |   |   [42] V7 > 130 *
#> |   [43] V2 > 74
#> |   |   [44] V4 <= 0
#> |   |   |   [45] V5 <= 169
#> |   |   |   |   [46] V7 <= 140
#> |   |   |   |   |   [47] V5 <= 3 *
#> |   |   |   |   |   [48] V5 > 3
#> |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   |   [51] V7 > 140 *
#> |   |   |   [52] V5 > 169
#> |   |   |   |   [53] V3 <= 8 *
#> |   |   |   |   [54] V3 > 8 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V5 <= 0 *
#> |   |   |   [57] V5 > 0
#> |   |   |   |   [58] V7 <= 129 *
#> |   |   |   |   [59] V7 > 129
#> |   |   |   |   |   [60] V3 <= 12
#> |   |   |   |   |   |   [61] V5 <= 2 *
#> |   |   |   |   |   |   [62] V5 > 2 *
#> |   |   |   |   |   [63] V3 > 12 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2
#> |   |   |   |   |   |   [8] V3 <= 6 *
#> |   |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V2 > 64 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 63
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V7 <= 114 *
#> |   |   |   |   |   |   [15] V7 > 114
#> |   |   |   |   |   |   |   [16] V3 <= 6 *
#> |   |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   [19] V7 <= 110 *
#> |   |   |   |   |   |   [20] V7 > 110
#> |   |   |   |   |   |   |   [21] V3 <= 4 *
#> |   |   |   |   |   |   |   [22] V3 > 4
#> |   |   |   |   |   |   |   |   [23] V2 <= 56
#> |   |   |   |   |   |   |   |   |   [24] V2 <= 45 *
#> |   |   |   |   |   |   |   |   |   [25] V2 > 45 *
#> |   |   |   |   |   |   |   |   [26] V2 > 56 *
#> |   |   |   |   [27] V2 > 63
#> |   |   |   |   |   [28] V2 <= 69
#> |   |   |   |   |   |   [29] V5 <= 1 *
#> |   |   |   |   |   |   [30] V5 > 1
#> |   |   |   |   |   |   |   [31] V5 <= 9 *
#> |   |   |   |   |   |   |   [32] V5 > 9 *
#> |   |   |   |   |   [33] V2 > 69 *
#> |   |   [34] V5 > 170
#> |   |   |   [35] V2 <= 52 *
#> |   |   |   [36] V2 > 52 *
#> |   [37] V2 > 71
#> |   |   [38] V5 <= 169
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V2 <= 87
#> |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   [42] V5 > 3
#> |   |   |   |   |   |   [43] V4 <= 0 *
#> |   |   |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   |   |   [45] V7 <= 160 *
#> |   |   |   |   |   |   |   [46] V7 > 160 *
#> |   |   |   |   [47] V2 > 87 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V2 <= 80
#> |   |   |   |   |   [50] V4 <= 0 *
#> |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   [52] V3 <= 8
#> |   |   |   |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   |   |   |   [54] V3 > 6 *
#> |   |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   [56] V2 > 80
#> |   |   |   |   |   [57] V2 <= 82 *
#> |   |   |   |   |   [58] V2 > 82
#> |   |   |   |   |   |   [59] V7 <= 153 *
#> |   |   |   |   |   |   [60] V7 > 153 *
#> |   |   [61] V5 > 169 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 103
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V5 <= 14
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V3 <= 6 *
#> |   |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   |   [13] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [14] V7 > 142 *
#> |   |   |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   |   |   [16] V7 <= 149
#> |   |   |   |   |   |   |   |   |   [17] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [18] V5 > 0 *
#> |   |   |   |   |   |   |   |   [19] V7 > 149 *
#> |   |   |   |   |   |   [20] V5 > 3
#> |   |   |   |   |   |   |   [21] V5 <= 7 *
#> |   |   |   |   |   |   |   [22] V5 > 7
#> |   |   |   |   |   |   |   |   [23] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [24] V2 <= 69
#> |   |   |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   [27] V5 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   |   [28] V5 > 11 *
#> |   |   |   |   |   |   |   |   |   [29] V2 > 69 *
#> |   |   |   |   |   |   |   |   [30] V7 > 160 *
#> |   |   |   |   [31] V5 > 14 *
#> |   |   [32] V5 > 103
#> |   |   |   [33] V6 <= 0 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 49 *
#> |   |   |   |   [36] V2 > 49
#> |   |   |   |   |   [37] V3 <= 5 *
#> |   |   |   |   |   [38] V3 > 5 *
#> |   [39] V2 > 72
#> |   |   [40] V4 <= 0
#> |   |   |   [41] V5 <= 169
#> |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   [44] V7 <= 140
#> |   |   |   |   |   |   [45] V5 <= 8 *
#> |   |   |   |   |   |   [46] V5 > 8 *
#> |   |   |   |   |   [47] V7 > 140 *
#> |   |   |   [48] V5 > 169
#> |   |   |   |   [49] V2 <= 84 *
#> |   |   |   |   [50] V2 > 84 *
#> |   |   [51] V4 > 0
#> |   |   |   [52] V5 <= 0
#> |   |   |   |   [53] V3 <= 5 *
#> |   |   |   |   [54] V3 > 5 *
#> |   |   |   [55] V5 > 0
#> |   |   |   |   [56] V7 <= 171
#> |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   [58] V6 > 0 *
#> |   |   |   |   [59] V7 > 171 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 134
#> |   |   |   |   |   [6] V5 <= 6 *
#> |   |   |   |   |   [7] V5 > 6 *
#> |   |   |   |   [8] V7 > 134
#> |   |   |   |   |   [9] V5 <= 15 *
#> |   |   |   |   |   [10] V5 > 15 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 4
#> |   |   |   |   |   [13] V7 <= 130 *
#> |   |   |   |   |   [14] V7 > 130 *
#> |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   [16] V5 <= 85
#> |   |   |   |   |   |   [17] V2 <= 58 *
#> |   |   |   |   |   |   [18] V2 > 58
#> |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   [20] V3 > 6
#> |   |   |   |   |   |   |   |   [21] V2 <= 74 *
#> |   |   |   |   |   |   |   |   [22] V2 > 74 *
#> |   |   |   |   |   [23] V5 > 85 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V3 <= 22
#> |   |   |   |   [26] V2 <= 74
#> |   |   |   |   |   [27] V7 <= 114
#> |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   |   [30] V7 > 114
#> |   |   |   |   |   |   [31] V5 <= 11
#> |   |   |   |   |   |   |   [32] V2 <= 65
#> |   |   |   |   |   |   |   |   [33] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [34] V7 > 120
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 10
#> |   |   |   |   |   |   |   |   |   |   [36] V2 <= 56
#> |   |   |   |   |   |   |   |   |   |   |   [37] V2 <= 49 *
#> |   |   |   |   |   |   |   |   |   |   |   [38] V2 > 49 *
#> |   |   |   |   |   |   |   |   |   |   [39] V2 > 56 *
#> |   |   |   |   |   |   |   |   |   [40] V3 > 10
#> |   |   |   |   |   |   |   |   |   |   [41] V7 <= 165 *
#> |   |   |   |   |   |   |   |   |   |   [42] V7 > 165 *
#> |   |   |   |   |   |   |   [43] V2 > 65
#> |   |   |   |   |   |   |   |   [44] V2 <= 69
#> |   |   |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [46] V6 > 0 *
#> |   |   |   |   |   |   |   |   [47] V2 > 69
#> |   |   |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [49] V6 > 0 *
#> |   |   |   |   |   |   [50] V5 > 11 *
#> |   |   |   |   [51] V2 > 74
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V5 <= 0 *
#> |   |   |   |   |   |   [55] V5 > 0
#> |   |   |   |   |   |   |   [56] V2 <= 82 *
#> |   |   |   |   |   |   |   [57] V2 > 82 *
#> |   |   |   [58] V3 > 22 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 4 *
#> |   |   |   |   |   [10] V5 > 4
#> |   |   |   |   |   |   [11] V7 <= 120 *
#> |   |   |   |   |   |   [12] V7 > 120 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 7
#> |   |   |   |   |   |   [15] V5 <= 2 *
#> |   |   |   |   |   |   [16] V5 > 2 *
#> |   |   |   |   |   [17] V5 > 7
#> |   |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   |   [19] V3 > 7
#> |   |   |   |   |   |   |   [20] V3 <= 11 *
#> |   |   |   |   |   |   |   [21] V3 > 11 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 54
#> |   |   |   |   [24] V2 <= 41 *
#> |   |   |   |   [25] V2 > 41
#> |   |   |   |   |   [26] V2 <= 46 *
#> |   |   |   |   |   [27] V2 > 46
#> |   |   |   |   |   |   [28] V2 <= 52 *
#> |   |   |   |   |   |   [29] V2 > 52 *
#> |   |   |   [30] V2 > 54
#> |   |   |   |   [31] V7 <= 104 *
#> |   |   |   |   [32] V7 > 104
#> |   |   |   |   |   [33] V2 <= 74
#> |   |   |   |   |   |   [34] V5 <= 6
#> |   |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [37] V3 > 3 *
#> |   |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   |   [39] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [40] V7 <= 131 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 131 *
#> |   |   |   |   |   |   |   |   [42] V2 > 71 *
#> |   |   |   |   |   |   [43] V5 > 6
#> |   |   |   |   |   |   |   [44] V5 <= 8 *
#> |   |   |   |   |   |   |   [45] V5 > 8
#> |   |   |   |   |   |   |   |   [46] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [47] V2 > 59
#> |   |   |   |   |   |   |   |   |   [48] V7 <= 132 *
#> |   |   |   |   |   |   |   |   |   [49] V7 > 132 *
#> |   |   |   |   |   [50] V2 > 74
#> |   |   |   |   |   |   [51] V5 <= 5
#> |   |   |   |   |   |   |   [52] V2 <= 77 *
#> |   |   |   |   |   |   |   [53] V2 > 77
#> |   |   |   |   |   |   |   |   [54] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [55] V7 > 140 *
#> |   |   |   |   |   |   [56] V5 > 5
#> |   |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   |   [58] V6 > 0 *
#> |   [59] V5 > 171
#> |   |   [60] V7 <= 162
#> |   |   |   [61] V2 <= 52 *
#> |   |   |   [62] V2 > 52 *
#> |   |   [63] V7 > 162
#> |   |   |   [64] V3 <= 5 *
#> |   |   |   [65] V3 > 5 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60
#> |   |   |   |   |   |   [9] V5 <= 15 *
#> |   |   |   |   |   |   [10] V5 > 15 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V2 <= 64 *
#> |   |   |   |   [13] V2 > 64
#> |   |   |   |   |   [14] V5 <= 4
#> |   |   |   |   |   |   [15] V2 <= 74 *
#> |   |   |   |   |   |   [16] V2 > 74 *
#> |   |   |   |   |   [17] V5 > 4
#> |   |   |   |   |   |   [18] V7 <= 112 *
#> |   |   |   |   |   |   [19] V7 > 112
#> |   |   |   |   |   |   |   [20] V7 <= 150
#> |   |   |   |   |   |   |   |   [21] V5 <= 11 *
#> |   |   |   |   |   |   |   |   [22] V5 > 11 *
#> |   |   |   |   |   |   |   [23] V7 > 150 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V6 <= 0
#> |   |   |   |   [26] V3 <= 6
#> |   |   |   |   |   [27] V5 <= 2
#> |   |   |   |   |   |   [28] V2 <= 71 *
#> |   |   |   |   |   |   [29] V2 > 71 *
#> |   |   |   |   |   [30] V5 > 2 *
#> |   |   |   |   [31] V3 > 6
#> |   |   |   |   |   [32] V2 <= 63
#> |   |   |   |   |   |   [33] V2 <= 57 *
#> |   |   |   |   |   |   [34] V2 > 57 *
#> |   |   |   |   |   [35] V2 > 63
#> |   |   |   |   |   |   [36] V7 <= 156
#> |   |   |   |   |   |   |   [37] V5 <= 5 *
#> |   |   |   |   |   |   |   [38] V5 > 5 *
#> |   |   |   |   |   |   [39] V7 > 156 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V5 <= 10
#> |   |   |   |   |   [42] V5 <= 1
#> |   |   |   |   |   |   [43] V3 <= 11
#> |   |   |   |   |   |   |   [44] V2 <= 74
#> |   |   |   |   |   |   |   |   [45] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [48] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [49] V3 > 5 *
#> |   |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   |   [51] V2 > 74 *
#> |   |   |   |   |   |   [52] V3 > 11 *
#> |   |   |   |   |   [53] V5 > 1
#> |   |   |   |   |   |   [54] V2 <= 65
#> |   |   |   |   |   |   |   [55] V7 <= 120 *
#> |   |   |   |   |   |   |   [56] V7 > 120 *
#> |   |   |   |   |   |   [57] V2 > 65 *
#> |   |   |   |   [58] V5 > 10 *
#> |   [59] V5 > 170
#> |   |   [60] V6 <= 0
#> |   |   |   [61] V2 <= 79 *
#> |   |   |   [62] V2 > 79 *
#> |   |   [63] V6 > 0
#> |   |   |   [64] V2 <= 71 *
#> |   |   |   [65] V2 > 71 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V5 <= 16
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V2 <= 60 *
#> |   |   |   |   |   |   [9] V2 > 60 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   |   [13] V2 <= 65
#> |   |   |   |   |   |   |   |   |   [14] V7 <= 151 *
#> |   |   |   |   |   |   |   |   |   [15] V7 > 151 *
#> |   |   |   |   |   |   |   |   [16] V2 > 65 *
#> |   |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   |   [18] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [20] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [21] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [22] V3 > 8 *
#> |   |   |   |   |   |   |   |   [23] V5 > 0 *
#> |   |   |   |   |   |   [24] V5 > 3
#> |   |   |   |   |   |   |   [25] V2 <= 48 *
#> |   |   |   |   |   |   |   [26] V2 > 48
#> |   |   |   |   |   |   |   |   [27] V3 <= 14
#> |   |   |   |   |   |   |   |   |   [28] V7 <= 121 *
#> |   |   |   |   |   |   |   |   |   [29] V7 > 121
#> |   |   |   |   |   |   |   |   |   |   [30] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   [31] V3 > 11 *
#> |   |   |   |   |   |   |   |   [32] V3 > 14 *
#> |   |   |   |   [33] V5 > 16 *
#> |   |   [34] V5 > 171
#> |   |   |   [35] V2 <= 66
#> |   |   |   |   [36] V7 <= 117 *
#> |   |   |   |   [37] V7 > 117 *
#> |   |   |   [38] V2 > 66 *
#> |   [39] V2 > 72
#> |   |   [40] V4 <= 0
#> |   |   |   [41] V5 <= 177
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V3 <= 4 *
#> |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V5 <= 6 *
#> |   |   |   |   |   [47] V5 > 6
#> |   |   |   |   |   |   [48] V7 <= 136 *
#> |   |   |   |   |   |   [49] V7 > 136 *
#> |   |   |   [50] V5 > 177 *
#> |   |   [51] V4 > 0
#> |   |   |   [52] V5 <= 11
#> |   |   |   |   [53] V6 <= 0
#> |   |   |   |   |   [54] V5 <= 5 *
#> |   |   |   |   |   [55] V5 > 5 *
#> |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   [57] V3 <= 10
#> |   |   |   |   |   |   [58] V2 <= 77 *
#> |   |   |   |   |   |   [59] V2 > 77 *
#> |   |   |   |   |   [60] V3 > 10 *
#> |   |   |   [61] V5 > 11 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V7 <= 136 *
#> |   |   |   [5] V7 > 136
#> |   |   |   |   [6] V5 <= 147 *
#> |   |   |   |   [7] V5 > 147 *
#> |   |   [8] V2 > 54
#> |   |   |   [9] V7 <= 168
#> |   |   |   |   [10] V5 <= 177
#> |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   [12] V3 <= 1 *
#> |   |   |   |   |   |   [13] V3 > 1 *
#> |   |   |   |   |   [14] V5 > 3
#> |   |   |   |   |   |   [15] V2 <= 62 *
#> |   |   |   |   |   |   [16] V2 > 62
#> |   |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   |   [18] V5 <= 11 *
#> |   |   |   |   |   |   |   |   [19] V5 > 11 *
#> |   |   |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   |   |   [21] V7 <= 140
#> |   |   |   |   |   |   |   |   |   [22] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [23] V3 > 8 *
#> |   |   |   |   |   |   |   |   [24] V7 > 140 *
#> |   |   |   |   [25] V5 > 177 *
#> |   |   |   [26] V7 > 168
#> |   |   |   |   [27] V7 <= 185 *
#> |   |   |   |   [28] V7 > 185 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 76
#> |   |   |   [31] V6 <= 0
#> |   |   |   |   [32] V3 <= 10
#> |   |   |   |   |   [33] V3 <= 5
#> |   |   |   |   |   |   [34] V5 <= 0 *
#> |   |   |   |   |   |   [35] V5 > 0 *
#> |   |   |   |   |   [36] V3 > 5 *
#> |   |   |   |   [37] V3 > 10
#> |   |   |   |   |   [38] V2 <= 60 *
#> |   |   |   |   |   [39] V2 > 60 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V3 <= 14
#> |   |   |   |   |   [42] V5 <= 0
#> |   |   |   |   |   |   [43] V2 <= 65
#> |   |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   |   [45] V3 > 3
#> |   |   |   |   |   |   |   |   [46] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [47] V3 > 6 *
#> |   |   |   |   |   |   [48] V2 > 65 *
#> |   |   |   |   |   [49] V5 > 0
#> |   |   |   |   |   |   [50] V2 <= 50 *
#> |   |   |   |   |   |   [51] V2 > 50
#> |   |   |   |   |   |   |   [52] V3 <= 6 *
#> |   |   |   |   |   |   |   [53] V3 > 6
#> |   |   |   |   |   |   |   |   [54] V7 <= 150
#> |   |   |   |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   |   |   |   |   |   |   [57] V7 > 150 *
#> |   |   |   |   [58] V3 > 14 *
#> |   |   [59] V2 > 76
#> |   |   |   [60] V3 <= 4 *
#> |   |   |   [61] V3 > 4
#> |   |   |   |   [62] V5 <= 2 *
#> |   |   |   |   [63] V5 > 2
#> |   |   |   |   |   [64] V7 <= 129 *
#> |   |   |   |   |   [65] V7 > 129 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V5 <= 3
#> |   |   |   |   |   |   [8] V7 <= 114 *
#> |   |   |   |   |   |   [9] V7 > 114
#> |   |   |   |   |   |   |   [10] V2 <= 56
#> |   |   |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   |   |   |   [13] V2 > 56 *
#> |   |   |   |   |   [14] V5 > 3
#> |   |   |   |   |   |   [15] V5 <= 7 *
#> |   |   |   |   |   |   [16] V5 > 7
#> |   |   |   |   |   |   |   [17] V2 <= 57 *
#> |   |   |   |   |   |   |   [18] V2 > 57 *
#> |   |   |   [19] V5 > 115
#> |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   [22] V2 <= 52 *
#> |   |   |   |   |   [23] V2 > 52 *
#> |   |   [24] V2 > 60
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V3 <= 2 *
#> |   |   |   |   [27] V3 > 2
#> |   |   |   |   |   [28] V5 <= 171 *
#> |   |   |   |   |   [29] V5 > 171 *
#> |   |   |   [30] V4 > 0
#> |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   [32] V5 <= 8 *
#> |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   [35] V3 <= 8 *
#> |   |   |   |   |   [36] V3 > 8 *
#> |   [37] V2 > 70
#> |   |   [38] V5 <= 169
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V5 <= 14
#> |   |   |   |   |   [41] V7 <= 121 *
#> |   |   |   |   |   [42] V7 > 121
#> |   |   |   |   |   |   [43] V5 <= 7 *
#> |   |   |   |   |   |   [44] V5 > 7 *
#> |   |   |   |   [45] V5 > 14 *
#> |   |   |   [46] V6 > 0
#> |   |   |   |   [47] V4 <= 0
#> |   |   |   |   |   [48] V3 <= 4
#> |   |   |   |   |   |   [49] V7 <= 105 *
#> |   |   |   |   |   |   [50] V7 > 105
#> |   |   |   |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   |   |   |   [52] V3 > 3 *
#> |   |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   |   [54] V5 <= 8 *
#> |   |   |   |   |   |   [55] V5 > 8 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V2 <= 84
#> |   |   |   |   |   |   [58] V7 <= 150
#> |   |   |   |   |   |   |   [59] V7 <= 117 *
#> |   |   |   |   |   |   |   [60] V7 > 117 *
#> |   |   |   |   |   |   [61] V7 > 150 *
#> |   |   |   |   |   [62] V2 > 84 *
#> |   |   [63] V5 > 169
#> |   |   |   [64] V3 <= 9
#> |   |   |   |   [65] V7 <= 156 *
#> |   |   |   |   [66] V7 > 156 *
#> |   |   |   [67] V3 > 9 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 5.0+  35   5      1          2        0   172
#> 3                               180.0+  35  10      1          9        0   106
#> 4                               180.0+  35   2      0        180        0   121
#> 5                                 2.0+  35   2      1          1        1   112
#> 6                               180.0+  37   9      0        180        1   151
#> 7                               180.0+  38  13      1          0        1   161
#> 8                                115.0  38   2      0        115        0   150
#> 9                                 12.0  38  12      1          8        1   120
#> 10                                5.0+  36   5      1          0        1   115
#> 11                              180.0+  33   6      1          1        1   115
#> 12                              180.0+  38  16      1         10        0   160
#> 13                              180.0+  40  12      1          9        0   153
#> 14                              180.0+  37   1      1          0        1   146
#> 15                                2.0+  40   2      1          1        1   148
#> 16                                5.0+  38   5      1          3        0   125
#> 17                                2.0+  42   2      0          2        0   140
#> 18                              180.0+  40   6      0        180        1   138
#> 19                              180.0+  40  11      1         10        1   120
#> 20                              180.0+  42   2      0        180        0   100
#> 21                                 3.0  43   3      1          0        1   100
#> 22                              180.0+  41   2      1          1        0   166
#> 23                              180.0+  42  12      1         10        1   170
#> 24                              180.0+  42   2      0        180        1   124
#> 25                              155.0+  44   5      1          1        0   170
#> 26                              180.0+  45   3      0        180        1   154
#> 27                              180.0+  41  10      1          8        0   150
#> 28                              180.0+  44   3      0        180        0   141
#> 29                              180.0+  41  13      1          1        0   140
#> 30                              180.0+  45   9      1          7        0   110
#> 31                              180.0+  45   6      0        180        1   170
#> 32                              180.0+  44   2      1          1        1   150
#> 33                              180.0+  43   2      0        180        1   140
#> 34                              180.0+  45   2      0        180        1   140
#> 35                              180.0+  46  15      0        180        0   120
#> 36                              180.0+  48  15      0        180        1   160
#> 37                               150.0  45   3      0        150        0   130
#> 38                              180.0+  46   7      1          2        0   166
#> 39                              180.0+  45   4      1          0        0   124
#> 40                              180.0+  43  10      0        180        0   185
#> 41                                6.0+  47   6      1          0        1   116
#> 42                              180.0+  46  13      1         10        0   100
#> 43                              180.0+  44   0      1          0        1    96
#> 44                              180.0+  43   3      1          0        1   124
#> 45                              180.0+  45   8      1          0        1   117
#> 46                                73.0  49   5      0         73        1   136
#> 47                                5.0+  45   5      0          5        0   141
#> 48                              161.0+  46   2      1          1        1   122
#> 49                              180.0+  44   4      1          0        1   114
#> 50                              180.0+  45   5      0        180        1   190
#> 51                              180.0+  46   4      0        180        1   121
#> 52                              177.0+  45   9      1          0        1   145
#> 53                              180.0+  48   3      0        180        0   154
#> 54                              180.0+  48  12      1         11        0   200
#> 55                              180.0+  47   5      1          3        1   130
#> 56                              180.0+  46   3      1          0        1   119
#> 57                              180.0+  49   4      0        180        0   117
#> 58                               10.0+  47  10      0         10        1   140
#> 59                              172.0+  50   1      1          0        1   129
#> 60                              180.0+  48   2      1          0        0   184
#> 61                              180.0+  47   7      0        180        0   145
#> 62                              180.0+  50   6      1          2        1   140
#> 63                                 7.0  49   7      1          7        1   110
#> 64                              180.0+  46   3      1          1        1   140
#> 65                              180.0+  46   9      1          9        1   122
#> 66                              180.0+  50   7      0        180        1   110
#> 67                                 2.0  49   2      0          2        0   105
#> 68                              179.0+  49  15      1         11        1   160
#> 69                              179.0+  49  23      0        179        1   112
#> 70                              180.0+  46   6      1          0        1   156
#> 71                              180.0+  52   2      0        180        1   170
#> 72                              180.0+  50   7      1          0        1    92
#> 73                                4.0+  50   4      0          4        1   100
#> 74                              180.0+  51   3      1          2        0   113
#> 75                              180.0+  50   1      1          0        0   150
#> 76                              180.0+  47   8      0        180        0   160
#> 77                              180.0+  47   6      0        180        1   162
#> 78                              180.0+  51   8      0        180        1   140
#> 79                              180.0+  52   2      0        180        0   155
#> 80                              180.0+  46   3      0        180        1   120
#> 81                              180.0+  50   4      1          1        0   150
#> 82                                 7.0  48   7      1          0        1   110
#> 83                                36.0  53   8      0         36        1   160
#> 84                               88.0+  48  17      1         10        0   111
#> 85                              180.0+  47   2      1          1        0   110
#> 86                              180.0+  49  15      0        180        1   160
#> 87                              180.0+  53   5      0        180        1   140
#> 88                              180.0+  54  17      1         12        1   102
#> 89                                77.0  53   5      0         77        0   159
#> 90                              180.0+  54   6      1          3        0   129
#> 91                              180.0+  51   3      1          1        0   140
#> 92                                 5.0  50   2      0          5        1   106
#> 93                              180.0+  48   3      1          2        0   150
#> 94                              180.0+  49   5      1          2        1   150
#> 95                                4.0+  53   4      0          4        0   140
#> 96                                85.0  52  14      1          7        1   200
#> 97                              180.0+  48   6      0        180        0   160
#> 98                              166.0+  53   4      1          0        1   156
#> 99                              180.0+  54   9      1          0        1   138
#> 100                              16.0+  49  16      0         16        0   125
#> 101                             180.0+  55   3      1          1        0   150
#> 102                               7.0+  52   7      1          2        0   154
#> 103                             180.0+  52   4      0        180        1   180
#> 104                              13.0+  51  13      1         11        0   145
#> 105                             171.0+  50   5      1          4        1   150
#> 106                             180.0+  54   4      1          0        1   121
#> 107                             174.0+  50   3      0        174        1   153
#> 108                               6.0+  49   6      1          0        1   130
#> 109                                1.0  49   1      0          1        1   110
#> 110                             180.0+  50   7      1          1        0   156
#> 111                               9.0+  53   9      0          9        1    95
#> 112                             180.0+  53   8      1          0        1   130
#> 113                             180.0+  50   7      1          0        1   127
#> 114                             180.0+  56   4      1          1        1   130
#> 115                             175.0+  52   5      0        175        1   117
#> 116                                2.0  55   2      0          2        0   145
#> 117                             180.0+  54   1      0        180        0   162
#> 118                             180.0+  56   3      0        180        1   193
#> 119                             180.0+  55   5      1          4        1   120
#> 120                             180.0+  52   8      0        180        0   119
#> 121                             180.0+  55   6      0        180        0   170
#> 122                              15.0+  53  15      0         15        1    90
#> 123                             180.0+  53   4      0        180        1   150
#> 124                             180.0+  55   6      0        180        1   100
#> 125                              12.0+  54  12      1          0        1   190
#> 126                             180.0+  54   3      0        180        0   128
#> 127                                2.0  55   1      0          2        0   130
#> 128                               3.0+  57   3      0          3        0   120
#> 129                             180.0+  54   7      1          2        0   129
#> 130                             180.0+  52   9      1          3        0   170
#> 131                              140.0  57   5      1          3        1   138
#> 132                             180.0+  57   1      0        180        1   156
#> 133                             180.0+  52  15      1         14        0   130
#> 134                             180.0+  53   3      1          0        1   200
#> 135                             180.0+  57  10      0        180        1   170
#> 136                               8.0+  58   8      0          8        1   130
#> 137                             180.0+  54   5      0        180        1   108
#> 138                             180.0+  55   3      1          1        1   156
#> 139                                0.5  57   0      0          0        1   150
#> 140                             180.0+  53  21      1         13        1   130
#> 141                             180.0+  59   3      1          1        0   172
#> 142                             180.0+  58   6      1          0        1    90
#> 143                             180.0+  53  15      1         10        1   130
#> 144                             171.0+  54  17      1          8        1   227
#> 145                               15.0  55   9      1          2        1   147
#> 146                             166.0+  55  13      0        166        1   140
#> 147                               5.0+  56   5      0          5        1   150
#> 148                             180.0+  54  23      1          8        0   120
#> 149                             147.0+  53   4      0        147        1   145
#> 150                             180.0+  53   7      1          0        1   120
#> 151                             180.0+  57  11      1         10        1   129
#> 152                             180.0+  54   7      1          0        1   141
#> 153                             180.0+  59  15      1         10        0   140
#> 154                               9.0+  58   9      1          0        1   180
#> 155                                1.0  58   1      1          1        1   200
#> 156                               2.0+  55   2      0          2        0   106
#> 157                             180.0+  57   1      0        180        0   148
#> 158                             180.0+  60  11      1          9        0   106
#> 159                             180.0+  58   4      1          0        1   160
#> 160                                2.0  57   2      0          2        1   120
#> 161                             180.0+  60   5      1          1        0   138
#> 162                             180.0+  57   5      0        180        1   130
#> 163                             180.0+  58  11      1          9        1   124
#> 164                             180.0+  55   5      1          0        1   160
#> 165                               64.0  59   6      1          0        1   140
#> 166                             180.0+  59   4      1          0        1   152
#> 167                             180.0+  58   4      1          3        0   120
#> 168                             180.0+  59   2      1          1        0   140
#> 169                             161.0+  58   8      0        161        1   140
#> 170                             171.0+  58  14      1          6        0   190
#> 171                             180.0+  61   4      1          3        0   151
#> 172                             180.0+  61   9      1          8        0   150
#> 173                                3.0  61   3      1          2        1   102
#> 174                                1.0  58   1      0          1        1   100
#> 175                             180.0+  61  20      1         13        0   130
#> 176                             180.0+  57  13      1         10        0   110
#> 177                             180.0+  57   2      1          0        1   116
#> 178                              10.0+  58  10      0         10        1   150
#> 179                             180.0+  57   4      1          3        0   138
#> 180                             180.0+  57  11      0        180        1   150
#> 181                               17.0  61   3      0         17        0   143
#> 182                               45.0  56  14      0         45        0   130
#> 183                               19.0  58  19      1         13        1   140
#> 184                             180.0+  56  18      1         11        1   165
#> 185                               9.0+  59   9      1          0        1    80
#> 186                             180.0+  55   4      1          3        1   160
#> 187                             172.0+  60  12      1          0        1   114
#> 188                               24.0  55   9      1          7        1   135
#> 189                             180.0+  61   4      1          0        1   115
#> 190                             180.0+  61  13      1         12        1   130
#> 191                             180.0+  59  11      1          8        1   190
#> 192                               15.0  57  15      1         13        1   110
#> 193                             180.0+  59   5      1          2        0   182
#> 194                             180.0+  59  10      0        180        0   160
#> 195                               77.0  61   8      0         77        0   120
#> 196                               8.0+  58   8      1          5        0   152
#> 197                             180.0+  62   7      1          2        1   180
#> 198                             180.0+  57   3      1          0        0   100
#> 199                              170.0  61  18      0        170        0   140
#> 200                             180.0+  58   8      1          3        1   150
#> 201                                7.0  61   7      0          7        1   150
#> 202                               7.0+  60   7      0          7        0   147
#> 203                                6.0  61   6      0          6        0   134
#> 204                             180.0+  60  17      1          8        1   140
#> 205                               3.0+  58   3      1          0        1   146
#> 206                             180.0+  62   4      1          3        0   173
#> 207                             180.0+  59   1      0        180        0   155
#> 208                             180.0+  59  16      1          9        1   133
#> 209                               28.0  63   6      0         28        1   120
#> 210                              13.0+  61  13      0         13        0   120
#> 211                                5.0  61   5      0          5        1   110
#> 212                               18.0  57  18      1          9        1    93
#> 213                             180.0+  58  11      1          9        0   179
#> 214                             180.0+  62  17      1         10        1   180
#> 215                                1.0  62   1      1          0        1   172
#> 216                             180.0+  58   7      0        180        1   150
#> 217                             180.0+  63   3      1          1        0   180
#> 218                             180.0+  63   1      0        180        1   130
#> 219                             180.0+  61   7      0        180        0   135
#> 220                             180.0+  63   4      1          3        0   222
#> 221                             180.0+  62   3      0        180        1   105
#> 222                             180.0+  63   4      0        180        1   190
#> 223                             180.0+  63  15      1         10        1   126
#> 224                             180.0+  64   4      0        180        0   130
#> 225                               4.0+  63   4      1          1        0   155
#> 226                             180.0+  60  18      1         13        0   132
#> 227                                9.0  58   9      1          9        0   110
#> 228                               7.0+  62   7      0          7        0   150
#> 229                             180.0+  58   2      0        180        0   127
#> 230                             180.0+  59   4      0        180        0   196
#> 231                               84.0  60   7      1          5        1   141
#> 232                               7.0+  60   7      0          7        0   140
#> 233                                1.0  63   1      0          1        0   162
#> 234                                1.0  63   1      0          1        0   130
#> 235                             180.0+  62   6      0        180        0   170
#> 236                               4.0+  59   4      0          4        0   149
#> 237                              167.0  64  10      1          9        0   160
#> 238                             180.0+  63  12      1         10        0   200
#> 239                               17.0  60   8      0         17        1   130
#> 240                               12.0  64  12      1         11        0   160
#> 241                             180.0+  63  10      1          0        1   148
#> 242                              14.0+  63  14      1          9        0   123
#> 243                               36.0  65  36      1         11        0   140
#> 244                               3.0+  66   3      1          1        0   127
#> 245                               88.0  61  10      1          2        1   194
#> 246                               12.0  63  12      1          9        0   114
#> 247                             180.0+  63   7      0        180        0   120
#> 248                             180.0+  65   8      1          0        0   168
#> 249                             180.0+  65  10      1          8        1   120
#> 250                              12.0+  61  12      1         11        0   154
#> 251                             180.0+  64   9      0        180        0   150
#> 252                             180.0+  61   4      0        180        1   113
#> 253                             180.0+  65   3      0        180        1   190
#> 254                             180.0+  63  16      1          7        1   110
#> 255                             180.0+  66   6      1          1        1   130
#> 256                               12.0  63  12      0         12        1   150
#> 257                             180.0+  62   3      1          1        1   199
#> 258                                9.0  65   6      0          9        0   112
#> 259                                3.0  65   3      1          0        1    80
#> 260                             180.0+  63   5      1          4        0   170
#> 261                             180.0+  63   2      1          1        0   180
#> 262                             180.0+  62  13      1         11        0   180
#> 263                             180.0+  63   9      1          8        1   160
#> 264                               15.0  65   8      1          0        1   140
#> 265                             180.0+  67   6      0        180        1   170
#> 266                             180.0+  65  15      1         11        1   160
#> 267                               5.0+  68   5      1          4        1   150
#> 268                               13.0  64  13      1         12        1   150
#> 269                             180.0+  64   6      1          0        1   125
#> 270                             179.0+  66   7      1          0        1   115
#> 271                             166.0+  66  13      1          0        0   118
#> 272                              14.0+  64  14      1         13        1   150
#> 273                               0.5+  64   0      0          0        1   148
#> 274                             180.0+  67   4      1          3        0   130
#> 275                               3.0+  66   3      1          0        1   135
#> 276                             180.0+  66   6      1          0        1   140
#> 277                             180.0+  68   1      0        180        1   166
#> 278                             180.0+  64  10      1          9        1   110
#> 279                               7.0+  63   7      1          0        0   162
#> 280                                8.0  67   8      1          1        1   130
#> 281                               16.0  63  10      0         16        1   160
#> 282                             180.0+  66  14      0        180        0   130
#> 283                             180.0+  68  18      0        180        1   260
#> 284                             180.0+  65  17      1         14        1   100
#> 285                             123.0+  65  18      1          3        0   120
#> 286                               1.0+  63   1      1          0        1   155
#> 287                               18.0  63  10      0         18        1   130
#> 288                              11.0+  67  11      0         11        0   150
#> 289                             180.0+  68  11      0        180        0   160
#> 290                               80.0  66  12      1         10        1   150
#> 291                             180.0+  66  11      1          0        0   100
#> 292                               4.0+  65   4      1          2        1   145
#> 293                               15.0  69  12      0         15        1   140
#> 294                             180.0+  63   2      0        180        0   150
#> 295                             180.0+  65  11      1          6        0   130
#> 296                             180.0+  69   6      0        180        1   100
#> 297                             180.0+  66   9      1          8        0   130
#> 298                             180.0+  63   8      0        180        1   120
#> 299                             180.0+  68  14      1         13        1   140
#> 300                               8.0+  65   8      1          0        1    90
#> 301                              175.0  69   1      1          0        0   170
#> 302                               10.0  68  10      1         10        1   150
#> 303                             180.0+  65   1      1          0        0   133
#> 304                             180.0+  67   2      0        180        0   184
#> 305                             180.0+  65  10      1          1        1   148
#> 306                              19.0+  66  19      1         12        1   150
#> 307                               99.0  69   6      0         99        1   140
#> 308                             180.0+  66   4      0        180        1   130
#> 309                             180.0+  70  15      1         12        1   132
#> 310                              11.0+  64  11      0         11        0   125
#> 311                                0.5  64   0      1          0        1   118
#> 312                               18.0  67   2      0         18        0   131
#> 313                               7.0+  66   7      1          5        1   131
#> 314                             180.0+  68   4      1          0        1   160
#> 315                             180.0+  65  13      1         12        1   130
#> 316                             180.0+  69  17      1         10        0   140
#> 317                               93.0  69   8      0         93        0   140
#> 318                              21.0+  64  21      0         21        1   155
#> 319                             180.0+  66   6      0        180        0   140
#> 320                                1.0  65   1      0          1        1   120
#> 321                                5.0  71   3      0          5        0   112
#> 322                               7.0+  70   7      1          0        1   190
#> 323                             180.0+  71  20      1          0        1   160
#> 324                             180.0+  67   2      0        180        0   128
#> 325                             180.0+  66   9      1          3        1   151
#> 326                                1.0  66   1      1          1        1   165
#> 327                             180.0+  70   4      1          0        1   180
#> 328                             180.0+  69   8      0        180        1   153
#> 329                              171.0  70  14      0        171        0   166
#> 330                             174.0+  67  10      1          9        0   200
#> 331                             180.0+  68  18      1         14        1   170
#> 332                                0.5  69   0      0          0        1   148
#> 333                             180.0+  69   3      1          2        0   151
#> 334                              14.0+  65  14      1         13        1   150
#> 335                             180.0+  69   8      0        180        1   180
#> 336                                2.0  66   2      0          2        1   228
#> 337                               45.0  71   6      0         45        1   158
#> 338                               5.0+  69   5      0          5        1   142
#> 339                              103.0  71   3      0        103        0   133
#> 340                             180.0+  70  22      1         13        0   103
#> 341                               36.0  67   1      0         36        1   104
#> 342                               97.0  69   6      1          4        1   174
#> 343                             180.0+  72   3      1          0        1   132
#> 344                                7.0  72   7      0          7        1   110
#> 345                               8.0+  69   8      1          7        1   108
#> 346                             180.0+  67   3      0        180        0   110
#> 347                               2.0+  66   2      1          1        0   123
#> 348                             180.0+  69  19      0        180        0   130
#> 349                             172.0+  67  14      0        172        1   140
#> 350                             180.0+  69  11      1          0        1   120
#> 351                             180.0+  66   2      0        180        0   130
#> 352                             180.0+  69   4      1          3        0   132
#> 353                               8.0+  69   8      1          2        0   121
#> 354                              13.0+  67  13      1          9        0   130
#> 355                             180.0+  70   9      0        180        1   142
#> 356                             180.0+  72   5      1          4        0   170
#> 357                                1.0  69   1      0          1        1   110
#> 358                                1.0  67   1      0          1        1    60
#> 359                               60.0  67   4      0         60        1   136
#> 360                             180.0+  67   8      1          0        1   130
#> 361                              132.0  72  13      1         11        1   195
#> 362                             180.0+  66  24      1         13        0   130
#> 363                               7.0+  68   7      1          2        0   135
#> 364                             180.0+  72  19      1          8        0   120
#> 365                             180.0+  67   5      1          0        1   147
#> 366                             180.0+  67   9      0        180        0   158
#> 367                              152.0  73  13      0        152        1   130
#> 368                             180.0+  70   5      0        180        0   150
#> 369                             180.0+  72   6      1          5        0   115
#> 370                             173.0+  71   1      0        173        1   188
#> 371                             180.0+  70   3      0        180        0   121
#> 372                             180.0+  69   3      0        180        0   220
#> 373                             180.0+  71   3      1          2        0   150
#> 374                             180.0+  68   4      1          3        0   210
#> 375                               28.0  72   5      0         28        0   120
#> 376                             180.0+  71   5      0        180        0   191
#> 377                             180.0+  73   6      0        180        1   117
#> 378                              16.0+  69  16      1         10        1   140
#> 379                             180.0+  68   7      0        180        1   130
#> 380                              16.0+  72  16      1          1        1   130
#> 381                             180.0+  69   1      1          0        0   155
#> 382                                6.0  73   6      1          0        1   270
#> 383                             180.0+  72   8      1          1        1   150
#> 384                             180.0+  71   2      1          0        1   180
#> 385                               15.0  68  15      1         13        1   130
#> 386                               3.0+  70   3      0          3        1   159
#> 387                             180.0+  72   6      0        180        1   130
#> 388                             180.0+  73   0      0        180        1   161
#> 389                             180.0+  73   4      0        180        1   154
#> 390                               3.0+  71   3      1          1        0   150
#> 391                             180.0+  71  15      1         11        0   165
#> 392                               20.0  74  20      0         20        1   180
#> 393                             180.0+  68   9      0        180        1   120
#> 394                             180.0+  73   3      1          0        1   136
#> 395                             180.0+  71  17      1         11        0   160
#> 396                                8.0  71   8      1          7        0   149
#> 397                                3.0  71   3      1          2        1   190
#> 398                               87.0  73  10      1          8        0   106
#> 399                               12.0  69  12      1          1        1   149
#> 400                             180.0+  70  26      1         11        1   120
#> 401                               58.0  73   4      0         58        1   160
#> 402                             180.0+  72   5      1          3        1   160
#> 403                             180.0+  72  15      1          0        1   150
#> 404                             180.0+  71   7      1          2        0   143
#> 405                             180.0+  72   8      1          0        1   140
#> 406                                3.0  74   3      0          3        1   150
#> 407                             180.0+  73  17      1         11        0   140
#> 408                              175.0  71  13      1          8        0   121
#> 409                              14.0+  71  14      1         13        1   170
#> 410                             180.0+  74   7      1          0        1   117
#> 411                             180.0+  72  15      1         13        0   156
#> 412                               8.0+  70   8      0          8        0   120
#> 413                             180.0+  73  10      1          9        1   146
#> 414                               15.0  73  10      1         10        1   120
#> 415                             180.0+  74  15      1          9        1   179
#> 416                               10.0  71   2      0         10        1   112
#> 417                                1.0  73   1      0          1        1    80
#> 418                             180.0+  72  15      1         12        1   120
#> 419                               10.0  73  10      1          8        0   120
#> 420                                1.0  72   1      1          1        0   168
#> 421                               57.0  72   7      0         57        1   145
#> 422                             180.0+  73  10      0        180        0   162
#> 423                               11.0  72  11      0         11        1   140
#> 424                               3.0+  70   3      0          3        0   150
#> 425                                5.0  73   5      1          3        1   112
#> 426                             180.0+  76  25      1         12        1   170
#> 427                               12.0  73  12      1         12        1   140
#> 428                             180.0+  72   2      0        180        0   120
#> 429                             180.0+  75   1      0        180        1   140
#> 430                             180.0+  72   4      1          0        1   197
#> 431                             180.0+  73   5      0        180        0   126
#> 432                             180.0+  73   4      0        180        0   124
#> 433                             177.0+  71  32      1         12        1   107
#> 434                             180.0+  72   5      0        180        0   154
#> 435                             180.0+  72   3      0        180        0   160
#> 436                              11.0+  77  11      0         11        1   150
#> 437                               4.0+  77   4      0          4        0   185
#> 438                             180.0+  75   3      1          1        0   180
#> 439                                7.0  72   7      1          2        0   142
#> 440                             180.0+  71  16      0        180        0   140
#> 441                             180.0+  74   7      0        180        1   150
#> 442                                3.0  74   3      0          3        1   128
#> 443                             180.0+  76   1      0        180        0   114
#> 444                             180.0+  74   2      1          1        0   140
#> 445                             180.0+  76   8      1          0        1   141
#> 446                               85.0  72   4      0         85        1   120
#> 447                             174.0+  76  13      1         10        0   110
#> 448                                7.0  75   7      0          7        0   190
#> 449                                0.5  75   0      0          0        1   130
#> 450                             180.0+  73  13      1         11        0   195
#> 451                             180.0+  74   8      1          0        1   105
#> 452                             180.0+  76  13      1          8        1   148
#> 453                                4.0  76   4      0          4        1   155
#> 454                                1.0  75   1      0          1        1   125
#> 455                               52.0  73   1      0         52        1   105
#> 456                             180.0+  73   0      0        180        0   156
#> 457                               12.0  78  12      1         11        1   160
#> 458                             180.0+  76   5      0        180        0   185
#> 459                             180.0+  74  10      1          0        1   135
#> 460                                8.0  74   8      1          8        1   170
#> 461                               33.0  73  33      1         12        1   175
#> 462                                5.0  77   5      1          0        0   123
#> 463                             180.0+  77  12      1          9        1   100
#> 464                             180.0+  73  10      1          9        0   146
#> 465                             180.0+  77  12      0        180        0   130
#> 466                               12.0  76  12      1         11        1   120
#> 467                             180.0+  78   5      1          0        1   170
#> 468                               7.0+  73   7      1          0        0   174
#> 469                               79.0  74   6      0         79        1   140
#> 470                                3.0  75   3      1          1        1   171
#> 471                             180.0+  79  10      1          8        0   190
#> 472                             176.0+  74   2      1          0        1   130
#> 473                             180.0+  77   3      0        180        0   110
#> 474                             180.0+  73   8      1          1        1   162
#> 475                                7.0  78   7      0          7        1   133
#> 476                             180.0+  74  15      0        180        1   172
#> 477                               8.0+  78   8      1          6        1   110
#> 478                                7.0  74   7      0          7        0   161
#> 479                             180.0+  79   6      0        180        0   170
#> 480                               10.0  80  10      1          6        1   147
#> 481                              172.0  78  13      1          5        0   130
#> 482                              119.0  75   5      0        119        1   150
#> 483                               12.0  75  12      1          1        1   120
#> 484                             180.0+  78  15      0        180        1   270
#> 485                                8.0  80   8      0          8        1   120
#> 486                             180.0+  75  13      1          6        0   150
#> 487                             180.0+  74  10      1          8        0   135
#> 488                             180.0+  78  12      1          9        0   150
#> 489                             180.0+  78   2      1          1        0   130
#> 490                               4.0+  75   4      1          0        0   212
#> 491                                2.0  77   2      1          0        1   143
#> 492                               11.0  76  11      1          0        0   120
#> 493                             152.0+  75  11      1          4        0   162
#> 494                                3.0  75   3      0          3        0     0
#> 495                               24.0  77  24      0         24        1   160
#> 496                               32.0  79   8      0         32        1   120
#> 497                             180.0+  78   6      1          0        1   240
#> 498                               3.0+  76   3      1          0        1   140
#> 499                             180.0+  78  11      1          1        1   140
#> 500                             180.0+  79  11      0        180        0   160
#> 501                             180.0+  79   2      1          0        1   121
#> 502                                4.0  76   4      0          4        1   160
#> 503                                4.0  79   4      0          4        1   125
#> 504                              10.0+  76  10      1          8        0   180
#> 505                                6.0  77   6      0          6        1   107
#> 506                               3.0+  80   3      1          0        1   120
#> 507                               2.0+  75   2      1          1        1   204
#> 508                             180.0+  78  11      0        180        1   135
#> 509                                1.0  76   1      0          1        1   140
#> 510                              171.0  77  31      1          3        1   161
#> 511                                1.0  76   1      0          1        1    90
#> 512                               43.0  78   7      1          0        1   110
#> 513                                3.0  79   3      0          3        0   120
#> 514                              138.0  79   4      1          0        1   120
#> 515                             180.0+  81   1      0        180        0   120
#> 516                               71.0  77   9      1          4        0   141
#> 517                                8.0  82   5      0          8        1   120
#> 518                               40.0  80  40      1          0        1   138
#> 519                               59.0  78   4      0         59        1   112
#> 520                               17.0  80  17      1         12        0   100
#> 521                              161.0  76   7      0        161        0   151
#> 522                              10.0+  79  10      0         10        1   120
#> 523                               93.0  81   4      1          2        1   126
#> 524                               37.0  79   1      0         37        1   140
#> 525                             180.0+  81   3      0        180        0   184
#> 526                               7.0+  78   7      0          7        1   147
#> 527                               22.0  77  13      1          0        1   190
#> 528                              15.0+  78  15      0         15        0   165
#> 529                               5.0+  80   5      1          1        1   108
#> 530                             166.0+  76   1      0        166        0   131
#> 531                              20.0+  78  20      1          0        1   109
#> 532                                1.0  80   1      0          1        0   100
#> 533                               10.0  77  10      1          8        1   130
#> 534                             180.0+  82   3      1          1        1   144
#> 535                               10.0  80   2      1          1        0   168
#> 536                                6.0  80   6      1          0        1   119
#> 537                                5.0  80   5      0          5        1   130
#> 538                             180.0+  77   4      0        180        1    98
#> 539                             180.0+  82  21      1          2        0   155
#> 540                             180.0+  84  22      1         10        0   180
#> 541                                4.0  79   4      0          4        1   121
#> 542                               9.0+  83   9      1          5        1   170
#> 543                             180.0+  83   5      0        180        0   148
#> 544                             177.0+  81   5      0        177        0    41
#> 545                              169.0  80  11      1          8        0   170
#> 546                             180.0+  78   9      1          4        1   120
#> 547                             180.0+  82   8      1          1        0   128
#> 548                             180.0+  79   1      0        180        1   170
#> 549                             180.0+  84   5      1          1        1    85
#> 550                               16.0  81  16      0         16        1   110
#> 551                             180.0+  80   6      1          0        1   150
#> 552                             180.0+  80  11      1          8        0   110
#> 553                             180.0+  80   8      1          7        0   160
#> 554                             180.0+  85   4      0        180        0    90
#> 555                             180.0+  81   2      1          1        0   198
#> 556                              128.0  82   6      0        128        1   100
#> 557                              167.0  84   4      0        167        0   198
#> 558                               62.0  82  23      1          0        0   110
#> 559                             180.0+  84   5      0        180        1   203
#> 560                                4.0  84   4      0          4        1    85
#> 561                                1.0  81   1      0          1        1   150
#> 562                               38.0  84   1      0         38        1   205
#> 563                             180.0+  83   3      0        180        0   174
#> 564                               90.0  81   4      0         90        1   138
#> 565                               89.0  84   4      0         89        1   129
#> 566                                4.0  79   4      0          4        1    60
#> 567                                1.0  83   1      0          1        1   100
#> 568                               19.0  82  19      0         19        0   120
#> 569                               30.0  80  30      1         13        0   220
#> 570                             180.0+  83   9      0        180        0   198
#> 571                             180.0+  79  14      1          0        0   110
#> 572                              114.0  83   3      0        114        0    98
#> 573                             180.0+  81  14      1         12        1   128
#> 574                              154.0  83   2      0        154        0   130
#> 575                                2.0  82   0      0          2        1   100
#> 576                             180.0+  85   9      1          6        1   160
#> 577                             180.0+  84  15      1         13        1   110
#> 578                               12.0  81  12      0         12        1   163
#> 579                              16.0+  82  16      1          8        0   103
#> 580                               4.0+  81   4      0          4        0   160
#> 581                             180.0+  86  12      0        180        1   120
#> 582                             180.0+  81  19      1         14        0   120
#> 583                                3.0  82   3      1          2        0   130
#> 584                               83.0  82  15      1          0        0   183
#> 585                               88.0  80   2      0         88        0   135
#> 586                                8.0  86   8      0          8        1   132
#> 587                                3.0  86   3      0          3        1   140
#> 588                             180.0+  82   9      0        180        1   134
#> 589                             180.0+  84   3      0        180        1   120
#> 590                             180.0+  81  13      0        180        0   152
#> 591                             180.0+  81   4      0        180        0   160
#> 592                               4.0+  83   4      0          4        0   130
#> 593                             180.0+  86  12      1          0        1   132
#> 594                              174.0  82  14      1         11        1   103
#> 595                                6.0  86   6      1          0        1   140
#> 596                               70.0  84  16      0         70        1   150
#> 597                               43.0  83  19      0         43        0   150
#> 598                             180.0+  84   3      1          2        0   125
#> 599                             180.0+  83  10      1          0        1   190
#> 600                             180.0+  86   2      0        180        1   169
#> 601                                3.0  84   3      0          3        1   121
#> 602                               13.0  83  13      1         12        0   170
#> 603                             180.0+  84   7      1          2        0   148
#> 604                             180.0+  87   2      0        180        0   113
#> 605                               92.0  84   9      0         92        1   110
#> 606                             180.0+  84   3      0        180        1   170
#> 607                               38.0  86   4      0         38        1   122
#> 608                                4.0  82   4      0          4        0   130
#> 609                              177.0  86  13      0        177        0   163
#> 610                               62.0  84  13      0         62        1   100
#> 611                               4.0+  88   4      0          4        0   100
#> 612                                4.0  88   4      0          4        1   115
#> 613                               11.0  86   9      1          7        1   142
#> 614                             180.0+  87   2      0        180        1   130
#> 615                              115.0  88   3      0        115        0   110
#> 616                               8.0+  87   8      0          8        1   157
#> 617                             180.0+  86  15      1          8        1   109
#> 618                                4.0  89   4      0          4        1   153
#> 619                              119.0  89   5      0        119        1   140
#> 620                             180.0+  87   6      0        180        1   110
#> 621                               1.0+  87   1      0          1        0   170
#> 622                             180.0+  84   8      0        180        1   119
#> 623                                8.0  85   8      0          8        1   136
#> 624                              110.0  84   2      0        110        1   174
#> 625                               29.0  87  29      0         29        1    97
#> 626                             180.0+  87  15      1          9        1   138
#> 627                             180.0+  84   0      0        180        1   136
#> 628                               46.0  89  10      0         46        1   170
#> 629                               14.0  90  14      0         14        1   100
#> 630                               1.0+  88   1      0          1        0   135
#> 631                             180.0+  86   4      0        180        1   145
#> 632                                8.0  91   8      0          8        0   100
#> 633                             180.0+  87   2      0        180        0   160
#> 634                               25.0  87   6      1          0        0   125
#> 635                              145.0  91  10      0        145        0   135
#> 636                                3.0  86   3      1          0        1    80
#> 637                               24.0  88   7      0         24        0   119
#> 638                               50.0  88   8      0         50        1   154
#> 639                              126.0  87   6      0        126        1   168
#> 640                             180.0+  86  10      0        180        1   137
#> 641                             180.0+  86   9      1          7        0   130
#> 642                             178.0+  87  43      0        178        1   130
#> 643                               3.0+  89   3      1          1        1   160
#> 644                                1.0  92   1      0          1        1   167
#> 645                              158.0  88   5      0        158        0   100
#> 646                               74.0  87   7      0         74        1   105
#> 647                              168.0  89   2      0        168        0   118
#> 648                              169.0  91   5      0        169        1   176
#> 649                               52.0  89  52      0         52        1   130
#> 650                                7.0  92   7      0          7        1   110
#> 651                                4.0  89   4      0          4        1   159
#> 652                                0.5  91   0      0          0        0     0
#> 653                             180.0+  89  14      0        180        1    84
#> 654                             180.0+  90  18      0        180        0   188
#> 655                                4.0  91   4      1          0        1   120
#> 656                             180.0+  90  19      1         11        1   129
#> 657                                2.0  91   2      0          2        1   116
#> 658                             179.0+  93   8      0        179        1   110
#> 659                               8.0+  94   8      0          8        1   142
#> 660                               76.0  92   4      0         76        1   149
#> 661                               67.0  90   3      0         67        0   162
#> 662                               12.0  96   3      0         12        1    97
#> 663                                8.0  95   8      1          5        1   150
#> 664                               53.0  91  12      0         53        1   212
#> 665                               7.0+  91   7      0          7        0   135
#> 666                               69.0  92   5      0         69        0   139
#> 667                                2.0  92   2      0          2        0   112
#> 668                             180.0+  93   4      0        180        1   135
#> 669                                3.0  96   3      1          0        1   104
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1
#>  [38] 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1
#>  [75] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1
#> [112] 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1
#> [149] 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0
#> [186] 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1
#> [223] 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1
#> [260] 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0 1
#> [297] 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0
#> [334] 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [371] 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1
#> [408] 1 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0
#> [445] 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [482] 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1
#> [519] 0 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1
#> [556] 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 0 1 1
#> [593] 0 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0
#> [630] 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[2]]
#>   [1] 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1
#>  [38] 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1
#>  [75] 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1
#> [112] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [149] 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [186] 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0
#> [223] 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1
#> [260] 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0
#> [297] 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 0
#> [334] 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [371] 0 0 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 0
#> [408] 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0
#> [445] 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [482] 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0
#> [519] 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1
#> [556] 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [593] 1 0 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [630] 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[3]]
#>   [1] 1 0 1 1 0 1 0 0 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0
#>  [38] 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1
#>  [75] 1 0 1 0 0 0 0 0 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0
#> [112] 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1
#> [149] 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [186] 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1
#> [223] 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1
#> [260] 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 0 1 0 1 1
#> [297] 1 0 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [334] 0 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1
#> [371] 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 0
#> [408] 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 0 0 1 1 0 1
#> [445] 1 0 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1
#> [482] 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1
#> [519] 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [556] 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1
#> [593] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1
#> [630] 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[4]]
#>   [1] 0 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1
#>  [38] 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1
#>  [75] 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0
#> [112] 0 0 0 1 0 0 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0
#> [149] 0 0 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1
#> [186] 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1
#> [223] 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1
#> [260] 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [297] 1 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1
#> [334] 1 0 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [371] 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1
#> [408] 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0
#> [445] 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0
#> [482] 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1
#> [519] 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 0 1 1 0
#> [556] 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [593] 0 0 1 0 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1
#> [630] 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 0 0 1 0 1 0 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[5]]
#>   [1] 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0
#>  [38] 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1
#>  [75] 0 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1
#> [112] 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 0 1 0 1
#> [149] 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 0 1 0 0
#> [186] 0 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [223] 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1
#> [260] 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0
#> [297] 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [334] 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 1
#> [371] 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0
#> [408] 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [445] 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [482] 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [519] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1
#> [556] 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1
#> [593] 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1
#> [630] 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0
#> [667] 0 0 0 0
#> 
#> $weights[[6]]
#>   [1] 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1
#>  [38] 1 0 1 1 1 0 0 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1
#>  [75] 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1
#> [112] 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1
#> [149] 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 0 1
#> [186] 0 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 0 0 1 1
#> [223] 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0
#> [260] 0 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1
#> [297] 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1
#> [334] 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1
#> [371] 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0
#> [408] 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [445] 0 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1
#> [482] 0 1 1 0 0 0 0 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1
#> [519] 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1
#> [556] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1
#> [593] 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 0 1
#> [630] 0 0 0 1 0 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[7]]
#>   [1] 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1
#>  [38] 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0
#>  [75] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1
#> [112] 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [149] 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0
#> [186] 0 0 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 0
#> [223] 0 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1
#> [260] 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1
#> [297] 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1
#> [334] 1 1 0 1 1 0 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0
#> [371] 0 1 0 1 0 0 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0
#> [408] 0 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0
#> [445] 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0
#> [482] 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0
#> [519] 0 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1
#> [556] 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0
#> [593] 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [630] 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[8]]
#>   [1] 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1
#>  [38] 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1
#>  [75] 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 0
#> [112] 0 0 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0
#> [149] 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0
#> [186] 1 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0
#> [223] 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0
#> [260] 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1
#> [297] 1 0 0 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0
#> [334] 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0
#> [371] 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [408] 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 1
#> [445] 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [482] 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0
#> [519] 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1
#> [556] 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0
#> [593] 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [630] 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1
#> [667] 1 0 1 0
#> 
#> $weights[[9]]
#>   [1] 0 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0
#>  [38] 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1
#>  [75] 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0
#> [112] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1
#> [149] 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 1 0 1 1 1 1 0 1
#> [186] 1 0 0 0 1 1 0 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [223] 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1
#> [260] 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#> [334] 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 0 1 0 1 1
#> [371] 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [408] 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [445] 1 1 1 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 0 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1
#> [482] 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 0 0 0 0 1 0 1 0 1
#> [519] 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 0
#> [556] 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0
#> [593] 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1
#> [630] 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [667] 0 1 0 1
#> 
#> $weights[[10]]
#>   [1] 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 0
#>  [38] 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 0 0 1
#>  [75] 1 0 1 1 0 0 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0
#> [112] 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1
#> [149] 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1
#> [186] 1 1 0 1 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1
#> [223] 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0
#> [260] 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0
#> [297] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1
#> [334] 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1
#> [371] 1 0 1 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0
#> [408] 0 0 0 1 0 1 1 1 0 0 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 1
#> [445] 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0
#> [482] 1 0 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [519] 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1
#> [556] 0 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0
#> [593] 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1
#> [630] 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[11]]
#>   [1] 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1
#>  [38] 0 1 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1
#>  [75] 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 1 0 1 0 0
#> [112] 0 1 0 1 0 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1
#> [149] 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0 1
#> [186] 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [223] 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0
#> [260] 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1
#> [297] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0
#> [334] 1 0 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1
#> [371] 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1
#> [408] 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [445] 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0
#> [482] 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 0 0 1
#> [519] 0 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1
#> [556] 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0
#> [593] 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [630] 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 1 0 0 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[12]]
#>   [1] 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1
#>  [38] 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1
#>  [75] 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 0 0 1 1
#> [112] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1
#> [149] 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1
#> [186] 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1
#> [223] 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1
#> [260] 1 0 1 0 0 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1
#> [297] 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1
#> [334] 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1
#> [371] 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1
#> [408] 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0
#> [445] 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [482] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 0 0 1 1 1 1 0
#> [519] 1 0 1 0 1 1 1 1 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 0 0 1 1 0 0 1 0 1 1 0 1
#> [556] 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#> [593] 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 1
#> [630] 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[13]]
#>   [1] 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0
#>  [38] 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0
#>  [75] 0 0 0 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [112] 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0
#> [149] 0 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0
#> [186] 0 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1
#> [223] 0 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [260] 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1
#> [297] 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1
#> [334] 0 0 0 1 1 0 0 1 1 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 0 1
#> [371] 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [408] 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0 0 1
#> [445] 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [482] 0 0 0 0 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [519] 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0
#> [556] 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0
#> [593] 1 1 0 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0
#> [630] 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0
#> [667] 1 1 0 0
#> 
#> $weights[[14]]
#>   [1] 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1
#>  [38] 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1
#>  [75] 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0
#> [112] 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0
#> [149] 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1
#> [186] 0 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 1
#> [223] 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1
#> [260] 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0
#> [297] 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 0 0 1 0 1 0 1
#> [334] 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [371] 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1
#> [408] 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1
#> [445] 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0
#> [482] 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [519] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1
#> [556] 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1
#> [593] 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0
#> [630] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[15]]
#>   [1] 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0
#>  [38] 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0
#>  [75] 1 1 1 1 1 0 1 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1
#> [112] 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 0 0 0 0 1 0 1 0 1 0 0
#> [149] 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0
#> [186] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1
#> [223] 1 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1
#> [260] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1
#> [297] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0
#> [334] 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1
#> [371] 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1
#> [408] 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0
#> [445] 1 0 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0
#> [482] 0 0 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0
#> [519] 0 0 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1
#> [556] 0 0 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1
#> [593] 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1
#> [630] 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[16]]
#>   [1] 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#>  [38] 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1
#>  [75] 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [112] 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1
#> [149] 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1
#> [186] 1 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1
#> [223] 1 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [260] 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [297] 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1
#> [334] 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1
#> [371] 1 0 0 1 0 1 0 0 1 1 0 0 0 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1
#> [408] 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0
#> [445] 0 1 0 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 0
#> [482] 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1
#> [519] 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [556] 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 1 1 0 1 0
#> [593] 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1
#> [630] 0 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[17]]
#>   [1] 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0
#>  [38] 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1
#>  [75] 0 1 1 0 1 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 0 1
#> [112] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0
#> [149] 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [186] 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1
#> [223] 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1
#> [260] 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0
#> [297] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0
#> [334] 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1
#> [371] 1 0 0 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1
#> [408] 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 0 0 0 0 1 0 1 1 1 0
#> [445] 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1
#> [482] 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1
#> [519] 0 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1
#> [556] 1 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1
#> [593] 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [630] 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[18]]
#>   [1] 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0
#>  [38] 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1
#>  [75] 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1
#> [112] 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0
#> [149] 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0
#> [186] 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [223] 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [260] 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0
#> [297] 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1
#> [334] 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0
#> [371] 0 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0
#> [408] 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [445] 0 1 0 0 0 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 1 0 0
#> [482] 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1
#> [519] 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0
#> [556] 1 0 1 0 0 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [593] 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1
#> [630] 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[19]]
#>   [1] 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1
#>  [38] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 1 1 1
#>  [75] 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1
#> [112] 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1
#> [149] 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 0
#> [186] 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1
#> [223] 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0
#> [260] 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [297] 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1
#> [334] 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0
#> [371] 0 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1
#> [408] 1 1 0 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0
#> [445] 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1
#> [482] 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0
#> [519] 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1
#> [556] 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1
#> [593] 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1
#> [630] 1 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0
#> [667] 0 0 0 0
#> 
#> $weights[[20]]
#>   [1] 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1
#>  [38] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0
#>  [75] 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 1 0 0 0 0 0 0
#> [112] 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1
#> [149] 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1
#> [186] 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0
#> [223] 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1
#> [260] 0 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0
#> [297] 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1
#> [334] 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1
#> [371] 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1
#> [408] 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0
#> [445] 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1
#> [482] 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [519] 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 1
#> [556] 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0
#> [593] 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1
#> [630] 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[21]]
#>   [1] 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1
#>  [38] 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#>  [75] 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0
#> [112] 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 0
#> [149] 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [186] 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1
#> [223] 1 1 0 1 0 0 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 0 0 1 0 1
#> [260] 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0
#> [297] 0 0 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0
#> [334] 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0
#> [371] 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1
#> [408] 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1
#> [445] 1 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1
#> [482] 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [519] 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0
#> [556] 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1
#> [593] 0 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0
#> [630] 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[22]]
#>   [1] 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0
#>  [38] 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1
#>  [75] 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0
#> [112] 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0
#> [149] 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 0
#> [186] 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1
#> [223] 0 0 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1
#> [260] 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 0
#> [297] 0 1 0 1 1 1 0 0 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1
#> [334] 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1
#> [371] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1
#> [408] 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [445] 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0
#> [482] 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1
#> [519] 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0
#> [556] 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1
#> [593] 0 1 0 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1
#> [630] 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[23]]
#>   [1] 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0
#>  [38] 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#>  [75] 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 0 1 1 0 0 1 1
#> [112] 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [149] 1 1 0 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [186] 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 0 0 1 0 1 1
#> [223] 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1
#> [260] 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1
#> [297] 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0
#> [334] 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [371] 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [408] 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0
#> [445] 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1
#> [482] 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 0
#> [519] 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1
#> [556] 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0
#> [593] 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 0
#> [630] 1 1 1 0 0 0 0 1 0 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[24]]
#>   [1] 0 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1
#>  [38] 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1
#>  [75] 0 0 0 1 0 1 0 0 0 0 0 0 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [112] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [149] 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0
#> [186] 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [223] 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1
#> [260] 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1
#> [297] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0
#> [334] 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1
#> [371] 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1
#> [408] 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [445] 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 0
#> [482] 0 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0
#> [519] 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1
#> [556] 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1
#> [593] 1 1 1 0 0 0 0 0 0 0 0 1 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 1 0 1
#> [630] 0 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[25]]
#>   [1] 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1
#>  [75] 1 0 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1
#> [112] 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 0 0 0 0 0 1 0 1 1 0
#> [149] 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [186] 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1
#> [223] 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0
#> [260] 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0
#> [297] 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1
#> [334] 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 0
#> [371] 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 0
#> [408] 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1
#> [445] 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 0 1 1 1 0
#> [482] 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 0 1 0 1 0
#> [519] 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0
#> [556] 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 1 0 1 0 1 1 0 1 1
#> [593] 0 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1
#> [630] 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[26]]
#>   [1] 1 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0
#>  [38] 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1
#>  [75] 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1 0 1 0 1
#> [112] 0 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [149] 1 0 1 0 0 0 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1
#> [186] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1
#> [223] 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1
#> [260] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0
#> [297] 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1
#> [334] 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0
#> [371] 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1
#> [408] 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0
#> [445] 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1
#> [482] 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1
#> [519] 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1
#> [556] 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0
#> [593] 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1
#> [630] 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 0 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[27]]
#>   [1] 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1
#>  [38] 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1
#>  [75] 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1
#> [112] 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0
#> [149] 0 0 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 0 0
#> [186] 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0
#> [223] 0 1 0 0 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1
#> [260] 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1
#> [297] 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0
#> [334] 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0
#> [371] 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [408] 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [445] 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0
#> [482] 0 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0
#> [519] 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1
#> [556] 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1
#> [593] 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [630] 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1
#> [667] 0 1 0 1
#> 
#> $weights[[28]]
#>   [1] 1 1 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 1 0 0 0 0
#>  [38] 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0
#>  [75] 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0
#> [112] 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0
#> [149] 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1
#> [186] 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0
#> [223] 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1
#> [260] 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [297] 0 0 1 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0
#> [334] 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [371] 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1
#> [408] 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 1
#> [445] 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1
#> [482] 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1
#> [519] 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 0
#> [556] 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0
#> [593] 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1
#> [630] 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[29]]
#>   [1] 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1
#>  [75] 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0
#> [112] 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [149] 0 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 0 1 1 0 0
#> [186] 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [223] 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1
#> [260] 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0
#> [297] 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [334] 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1
#> [371] 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0
#> [408] 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1
#> [445] 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1
#> [482] 0 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 0 1 0
#> [519] 1 0 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0
#> [556] 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0
#> [593] 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0
#> [630] 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1
#> [667] 0 0 0 0
#> 
#> $weights[[30]]
#>   [1] 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 0 1 0 0 1 1 0 1 0 1 1 1 0
#>  [38] 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1 0
#>  [75] 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1
#> [112] 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 0
#> [149] 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1
#> [186] 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0
#> [223] 0 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 0
#> [260] 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 1 0 1 1
#> [297] 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1
#> [334] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [371] 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0
#> [408] 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0
#> [445] 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [482] 1 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [519] 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [556] 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0
#> [593] 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1
#> [630] 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[31]]
#>   [1] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 0
#>  [38] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0
#>  [75] 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 0 1 0 1 0 1 1
#> [112] 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1
#> [149] 0 0 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [186] 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0
#> [223] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 0 1
#> [260] 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 0 0 1 0 0
#> [297] 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 0
#> [334] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [371] 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [408] 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1
#> [445] 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 0 1
#> [482] 0 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1
#> [519] 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0
#> [556] 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0
#> [593] 0 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0 1 0
#> [630] 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 0
#> [667] 0 1 1 1
#> 
#> $weights[[32]]
#>   [1] 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0
#>  [38] 1 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1
#>  [75] 0 1 1 0 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0
#> [112] 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1
#> [149] 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [186] 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1
#> [223] 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1
#> [260] 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1
#> [297] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 0
#> [334] 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0
#> [371] 0 0 0 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1
#> [408] 1 1 0 1 0 0 1 1 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0
#> [445] 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1
#> [482] 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1
#> [519] 0 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [556] 0 0 1 1 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 0 1 1 0 0 0 0 0 0 0 1 0 0 1 1 1 0 1
#> [593] 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0
#> [630] 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1
#> [667] 0 0 1 0
#> 
#> $weights[[33]]
#>   [1] 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1
#>  [38] 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1
#>  [75] 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 0 1
#> [112] 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1
#> [149] 1 1 1 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0
#> [186] 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1
#> [223] 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 1 0 0 0 1 1 0 0 1 0 1 1 0 1 0 1 1
#> [260] 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0
#> [297] 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0
#> [334] 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1
#> [371] 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 0 1 0
#> [408] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1
#> [445] 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0
#> [482] 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 0 0
#> [519] 1 1 1 0 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1
#> [556] 1 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [593] 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 1 0 1 0 0
#> [630] 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[34]]
#>   [1] 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1
#>  [38] 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1
#>  [75] 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [112] 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1
#> [149] 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [186] 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1
#> [223] 0 0 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1
#> [260] 0 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [297] 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 0 0 1 1 1 0 1
#> [334] 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1
#> [371] 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0
#> [408] 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1
#> [445] 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1
#> [482] 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0
#> [519] 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0
#> [556] 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0
#> [593] 0 1 1 1 0 0 0 0 1 1 0 0 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0
#> [630] 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[35]]
#>   [1] 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0
#>  [38] 0 1 1 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1
#>  [75] 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0
#> [112] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1
#> [149] 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1
#> [186] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0
#> [223] 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0
#> [260] 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [297] 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1
#> [334] 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1
#> [371] 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1
#> [408] 0 0 0 1 1 0 0 0 1 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 0 0
#> [445] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1
#> [482] 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1
#> [519] 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1
#> [556] 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 0 1 1 0
#> [593] 1 0 1 0 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 0 1
#> [630] 1 0 1 0 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[36]]
#>   [1] 0 0 0 0 1 0 1 0 1 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#>  [38] 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0
#>  [75] 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 0
#> [112] 1 0 1 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 1 0 1
#> [149] 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0
#> [186] 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0
#> [223] 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1
#> [260] 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1
#> [297] 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1
#> [334] 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0
#> [371] 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0
#> [408] 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0
#> [445] 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1
#> [482] 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1
#> [519] 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0
#> [556] 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1
#> [593] 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [630] 1 1 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 0 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[37]]
#>   [1] 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0
#>  [38] 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1
#>  [75] 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [112] 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1
#> [149] 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0
#> [186] 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 0 1 1
#> [223] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0
#> [260] 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 0 1
#> [297] 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0
#> [334] 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1
#> [371] 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1
#> [408] 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1
#> [445] 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1
#> [482] 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1
#> [519] 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0
#> [556] 1 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1
#> [593] 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [630] 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 0 1
#> [667] 1 0 0 1
#> 
#> $weights[[38]]
#>   [1] 0 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1
#>  [38] 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0
#>  [75] 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1
#> [112] 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1
#> [149] 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1
#> [186] 1 1 0 1 1 1 0 0 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1
#> [223] 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [260] 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 1 0
#> [297] 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1
#> [334] 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1
#> [371] 0 1 0 0 1 1 0 1 0 1 0 0 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 0 1
#> [408] 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1
#> [445] 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1
#> [482] 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0
#> [519] 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [556] 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 0
#> [593] 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [630] 1 0 0 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[39]]
#>   [1] 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#>  [38] 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1
#>  [75] 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1
#> [112] 0 0 1 0 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0
#> [149] 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0
#> [186] 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 0 0 1
#> [223] 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 0 1 0 0 0 1 0 0 0 0 0 0 1 1 1 0 0
#> [260] 1 0 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [297] 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 0 0
#> [334] 1 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [371] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1
#> [408] 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [445] 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [482] 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1
#> [519] 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1
#> [556] 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0 0 0
#> [593] 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0
#> [630] 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[40]]
#>   [1] 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#>  [38] 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0
#>  [75] 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [112] 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1
#> [149] 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0
#> [186] 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1
#> [223] 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 0 1
#> [260] 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 1
#> [297] 1 0 1 0 0 0 0 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0
#> [334] 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1
#> [371] 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1
#> [408] 0 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1
#> [445] 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1
#> [482] 0 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1
#> [519] 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1
#> [556] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 0 0 0
#> [593] 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1
#> [630] 0 1 0 0 0 0 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 0 1 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[41]]
#>   [1] 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1
#>  [38] 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1
#>  [75] 1 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1
#> [112] 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1
#> [149] 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0
#> [186] 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0
#> [223] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1
#> [260] 0 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> [297] 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1
#> [334] 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 1 0 0 1 0 1 0 1
#> [371] 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0
#> [408] 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0
#> [445] 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [482] 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1
#> [519] 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0
#> [556] 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1
#> [593] 1 0 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 0 1 0
#> [630] 1 1 1 1 0 1 0 0 0 0 0 1 0 1 0 0 0 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0
#> [667] 1 0 0 0
#> 
#> $weights[[42]]
#>   [1] 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0
#>  [38] 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1
#>  [75] 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0
#> [112] 0 0 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1
#> [149] 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0
#> [186] 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1
#> [223] 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1
#> [260] 0 1 0 1 1 0 0 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0
#> [297] 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1
#> [334] 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1
#> [371] 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [408] 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1
#> [445] 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 0
#> [482] 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1
#> [519] 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 0
#> [556] 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1
#> [593] 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1
#> [630] 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[43]]
#>   [1] 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 0 0 0 1 1
#>  [38] 0 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 0 1 0 1 0 1
#>  [75] 1 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0
#> [112] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [149] 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1
#> [186] 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 0 0
#> [223] 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1
#> [260] 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> [297] 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1
#> [334] 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 1 0
#> [371] 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1
#> [408] 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0
#> [445] 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1
#> [482] 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [519] 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 0
#> [556] 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1
#> [593] 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0 0 1 1 0 1 0
#> [630] 0 0 0 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[44]]
#>   [1] 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0
#>  [38] 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1
#>  [75] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1
#> [112] 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1
#> [149] 0 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0
#> [186] 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0
#> [223] 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 1 1
#> [260] 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1
#> [297] 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1
#> [334] 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [371] 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1
#> [408] 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 0
#> [445] 1 0 1 0 1 1 0 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0
#> [482] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1
#> [519] 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 0
#> [556] 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0
#> [593] 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1
#> [630] 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[45]]
#>   [1] 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 0 0 0 0
#>  [38] 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1
#>  [75] 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0
#> [112] 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 1 0
#> [149] 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 0
#> [186] 0 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 0 0
#> [223] 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0
#> [260] 0 1 0 1 0 1 1 0 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0
#> [297] 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0
#> [334] 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 0 0 0 0 1 0
#> [371] 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1
#> [408] 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1
#> [445] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1
#> [482] 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [519] 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1
#> [556] 1 0 0 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 1 1
#> [593] 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1
#> [630] 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[46]]
#>   [1] 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0
#>  [38] 0 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1
#>  [75] 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0
#> [112] 1 0 0 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1
#> [149] 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1
#> [186] 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1
#> [223] 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1
#> [260] 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0
#> [297] 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1 0
#> [334] 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1
#> [371] 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0
#> [408] 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1
#> [445] 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0
#> [482] 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1
#> [519] 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1
#> [556] 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [593] 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1
#> [630] 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[47]]
#>   [1] 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1
#>  [38] 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0
#>  [75] 0 1 1 0 0 1 0 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1
#> [112] 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1
#> [149] 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1
#> [186] 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1
#> [223] 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 0 0 0 0 0 1 1 1
#> [260] 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0
#> [297] 0 0 0 1 0 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 0
#> [334] 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [371] 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1
#> [408] 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1
#> [445] 0 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 1 1
#> [482] 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1
#> [519] 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1
#> [556] 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 0
#> [593] 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1
#> [630] 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[48]]
#>   [1] 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1
#>  [38] 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1
#>  [75] 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0
#> [112] 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1
#> [149] 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0
#> [186] 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1
#> [223] 0 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0
#> [260] 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1
#> [297] 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1
#> [334] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1
#> [371] 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 0 1 1
#> [408] 1 0 1 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 0 0 1 1 0 0 1 1 1 0
#> [445] 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1
#> [482] 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0
#> [519] 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [556] 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1
#> [593] 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1
#> [630] 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[49]]
#>   [1] 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1
#>  [38] 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1
#>  [75] 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0
#> [112] 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1
#> [149] 1 0 1 0 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 1
#> [186] 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 0 1 0
#> [223] 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1
#> [260] 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1
#> [297] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0
#> [334] 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0
#> [371] 1 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0
#> [408] 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1
#> [445] 0 1 0 1 0 0 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1
#> [482] 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [519] 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [556] 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [593] 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1
#> [630] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[50]]
#>   [1] 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0
#>  [38] 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0
#>  [75] 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0
#> [112] 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1
#> [149] 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1
#> [186] 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1
#> [223] 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [260] 1 0 0 1 1 0 1 0 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0
#> [297] 0 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0
#> [334] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1
#> [371] 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0
#> [408] 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 0 1
#> [445] 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0
#> [482] 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1
#> [519] 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1
#> [556] 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1
#> [593] 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 0
#> [630] 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [667] 1 0 1 1
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       5.0+
#> 3     3     180.0+
#> 4     4     180.0+
#> 5     5       2.0+
#> 6     6     180.0+
#> 7     7     180.0+
#> 8     8      115.0
#> 9     9       12.0
#> 10   10       5.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15       2.0+
#> 16   16       5.0+
#> 17   17       2.0+
#> 18   18     180.0+
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21        3.0
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     180.0+
#> 25   25     155.0+
#> 26   26     180.0+
#> 27   27     180.0+
#> 28   28     180.0+
#> 29   29     180.0+
#> 30   30     180.0+
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33     180.0+
#> 34   34     180.0+
#> 35   35     180.0+
#> 36   36     180.0+
#> 37   37      150.0
#> 38   38     180.0+
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41       6.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44     180.0+
#> 45   45     180.0+
#> 46   46       73.0
#> 47   47       5.0+
#> 48   48     161.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     177.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     180.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58      10.0+
#> 59   59     172.0+
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62     180.0+
#> 63   63        7.0
#> 64   64     180.0+
#> 65   65     180.0+
#> 66   66     180.0+
#> 67   67        2.0
#> 68   68     179.0+
#> 69   69     179.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73       4.0+
#> 74   74     180.0+
#> 75   75     180.0+
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80     180.0+
#> 81   81     180.0+
#> 82   82        7.0
#> 83   83       36.0
#> 84   84      88.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87     180.0+
#> 88   88     180.0+
#> 89   89       77.0
#> 90   90     180.0+
#> 91   91     180.0+
#> 92   92        5.0
#> 93   93     180.0+
#> 94   94     180.0+
#> 95   95       4.0+
#> 96   96       85.0
#> 97   97     180.0+
#> 98   98     166.0+
#> 99   99     180.0+
#> 100 100      16.0+
#> 101 101     180.0+
#> 102 102       7.0+
#> 103 103     180.0+
#> 104 104      13.0+
#> 105 105     171.0+
#> 106 106     180.0+
#> 107 107     174.0+
#> 108 108       6.0+
#> 109 109        1.0
#> 110 110     180.0+
#> 111 111       9.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115     175.0+
#> 116 116        2.0
#> 117 117     180.0+
#> 118 118     180.0+
#> 119 119     180.0+
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122      15.0+
#> 123 123     180.0+
#> 124 124     180.0+
#> 125 125      12.0+
#> 126 126     180.0+
#> 127 127        2.0
#> 128 128       3.0+
#> 129 129     180.0+
#> 130 130     180.0+
#> 131 131      140.0
#> 132 132     180.0+
#> 133 133     180.0+
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136       8.0+
#> 137 137     180.0+
#> 138 138     180.0+
#> 139 139        0.5
#> 140 140     180.0+
#> 141 141     180.0+
#> 142 142     180.0+
#> 143 143     180.0+
#> 144 144     171.0+
#> 145 145       15.0
#> 146 146     166.0+
#> 147 147       5.0+
#> 148 148     180.0+
#> 149 149     147.0+
#> 150 150     180.0+
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153     180.0+
#> 154 154       9.0+
#> 155 155        1.0
#> 156 156       2.0+
#> 157 157     180.0+
#> 158 158     180.0+
#> 159 159     180.0+
#> 160 160        2.0
#> 161 161     180.0+
#> 162 162     180.0+
#> 163 163     180.0+
#> 164 164     180.0+
#> 165 165       64.0
#> 166 166     180.0+
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169     161.0+
#> 170 170     171.0+
#> 171 171     180.0+
#> 172 172     180.0+
#> 173 173        3.0
#> 174 174        1.0
#> 175 175     180.0+
#> 176 176     180.0+
#> 177 177     180.0+
#> 178 178      10.0+
#> 179 179     180.0+
#> 180 180     180.0+
#> 181 181       17.0
#> 182 182       45.0
#> 183 183       19.0
#> 184 184     180.0+
#> 185 185       9.0+
#> 186 186     180.0+
#> 187 187     172.0+
#> 188 188       24.0
#> 189 189     180.0+
#> 190 190     180.0+
#> 191 191     180.0+
#> 192 192       15.0
#> 193 193     180.0+
#> 194 194     180.0+
#> 195 195       77.0
#> 196 196       8.0+
#> 197 197     180.0+
#> 198 198     180.0+
#> 199 199      170.0
#> 200 200     180.0+
#> 201 201        7.0
#> 202 202       7.0+
#> 203 203        6.0
#> 204 204     180.0+
#> 205 205       3.0+
#> 206 206     180.0+
#> 207 207     180.0+
#> 208 208     180.0+
#> 209 209       28.0
#> 210 210      13.0+
#> 211 211        5.0
#> 212 212       18.0
#> 213 213     180.0+
#> 214 214     180.0+
#> 215 215        1.0
#> 216 216     180.0+
#> 217 217     180.0+
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221     180.0+
#> 222 222     180.0+
#> 223 223     180.0+
#> 224 224     180.0+
#> 225 225       4.0+
#> 226 226     180.0+
#> 227 227        9.0
#> 228 228       7.0+
#> 229 229     180.0+
#> 230 230     180.0+
#> 231 231       84.0
#> 232 232       7.0+
#> 233 233        1.0
#> 234 234        1.0
#> 235 235     180.0+
#> 236 236       4.0+
#> 237 237      167.0
#> 238 238     180.0+
#> 239 239       17.0
#> 240 240       12.0
#> 241 241     180.0+
#> 242 242      14.0+
#> 243 243       36.0
#> 244 244       3.0+
#> 245 245       88.0
#> 246 246       12.0
#> 247 247     180.0+
#> 248 248     180.0+
#> 249 249     180.0+
#> 250 250      12.0+
#> 251 251     180.0+
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254     180.0+
#> 255 255     180.0+
#> 256 256       12.0
#> 257 257     180.0+
#> 258 258        9.0
#> 259 259        3.0
#> 260 260     180.0+
#> 261 261     180.0+
#> 262 262     180.0+
#> 263 263     180.0+
#> 264 264       15.0
#> 265 265     180.0+
#> 266 266     180.0+
#> 267 267       5.0+
#> 268 268       13.0
#> 269 269     180.0+
#> 270 270     179.0+
#> 271 271     166.0+
#> 272 272      14.0+
#> 273 273       0.5+
#> 274 274     180.0+
#> 275 275       3.0+
#> 276 276     180.0+
#> 277 277     180.0+
#> 278 278     180.0+
#> 279 279       7.0+
#> 280 280        8.0
#> 281 281       16.0
#> 282 282     180.0+
#> 283 283     180.0+
#> 284 284     180.0+
#> 285 285     123.0+
#> 286 286       1.0+
#> 287 287       18.0
#> 288 288      11.0+
#> 289 289     180.0+
#> 290 290       80.0
#> 291 291     180.0+
#> 292 292       4.0+
#> 293 293       15.0
#> 294 294     180.0+
#> 295 295     180.0+
#> 296 296     180.0+
#> 297 297     180.0+
#> 298 298     180.0+
#> 299 299     180.0+
#> 300 300       8.0+
#> 301 301      175.0
#> 302 302       10.0
#> 303 303     180.0+
#> 304 304     180.0+
#> 305 305     180.0+
#> 306 306      19.0+
#> 307 307       99.0
#> 308 308     180.0+
#> 309 309     180.0+
#> 310 310      11.0+
#> 311 311        0.5
#> 312 312       18.0
#> 313 313       7.0+
#> 314 314     180.0+
#> 315 315     180.0+
#> 316 316     180.0+
#> 317 317       93.0
#> 318 318      21.0+
#> 319 319     180.0+
#> 320 320        1.0
#> 321 321        5.0
#> 322 322       7.0+
#> 323 323     180.0+
#> 324 324     180.0+
#> 325 325     180.0+
#> 326 326        1.0
#> 327 327     180.0+
#> 328 328     180.0+
#> 329 329      171.0
#> 330 330     174.0+
#> 331 331     180.0+
#> 332 332        0.5
#> 333 333     180.0+
#> 334 334      14.0+
#> 335 335     180.0+
#> 336 336        2.0
#> 337 337       45.0
#> 338 338       5.0+
#> 339 339      103.0
#> 340 340     180.0+
#> 341 341       36.0
#> 342 342       97.0
#> 343 343     180.0+
#> 344 344        7.0
#> 345 345       8.0+
#> 346 346     180.0+
#> 347 347       2.0+
#> 348 348     180.0+
#> 349 349     172.0+
#> 350 350     180.0+
#> 351 351     180.0+
#> 352 352     180.0+
#> 353 353       8.0+
#> 354 354      13.0+
#> 355 355     180.0+
#> 356 356     180.0+
#> 357 357        1.0
#> 358 358        1.0
#> 359 359       60.0
#> 360 360     180.0+
#> 361 361      132.0
#> 362 362     180.0+
#> 363 363       7.0+
#> 364 364     180.0+
#> 365 365     180.0+
#> 366 366     180.0+
#> 367 367      152.0
#> 368 368     180.0+
#> 369 369     180.0+
#> 370 370     173.0+
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373     180.0+
#> 374 374     180.0+
#> 375 375       28.0
#> 376 376     180.0+
#> 377 377     180.0+
#> 378 378      16.0+
#> 379 379     180.0+
#> 380 380      16.0+
#> 381 381     180.0+
#> 382 382        6.0
#> 383 383     180.0+
#> 384 384     180.0+
#> 385 385       15.0
#> 386 386       3.0+
#> 387 387     180.0+
#> 388 388     180.0+
#> 389 389     180.0+
#> 390 390       3.0+
#> 391 391     180.0+
#> 392 392       20.0
#> 393 393     180.0+
#> 394 394     180.0+
#> 395 395     180.0+
#> 396 396        8.0
#> 397 397        3.0
#> 398 398       87.0
#> 399 399       12.0
#> 400 400     180.0+
#> 401 401       58.0
#> 402 402     180.0+
#> 403 403     180.0+
#> 404 404     180.0+
#> 405 405     180.0+
#> 406 406        3.0
#> 407 407     180.0+
#> 408 408      175.0
#> 409 409      14.0+
#> 410 410     180.0+
#> 411 411     180.0+
#> 412 412       8.0+
#> 413 413     180.0+
#> 414 414       15.0
#> 415 415     180.0+
#> 416 416       10.0
#> 417 417        1.0
#> 418 418     180.0+
#> 419 419       10.0
#> 420 420        1.0
#> 421 421       57.0
#> 422 422     180.0+
#> 423 423       11.0
#> 424 424       3.0+
#> 425 425        5.0
#> 426 426     180.0+
#> 427 427       12.0
#> 428 428     180.0+
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431     180.0+
#> 432 432     180.0+
#> 433 433     177.0+
#> 434 434     180.0+
#> 435 435     180.0+
#> 436 436      11.0+
#> 437 437       4.0+
#> 438 438     180.0+
#> 439 439        7.0
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442        3.0
#> 443 443     180.0+
#> 444 444     180.0+
#> 445 445     180.0+
#> 446 446       85.0
#> 447 447     174.0+
#> 448 448        7.0
#> 449 449        0.5
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452     180.0+
#> 453 453        4.0
#> 454 454        1.0
#> 455 455       52.0
#> 456 456     180.0+
#> 457 457       12.0
#> 458 458     180.0+
#> 459 459     180.0+
#> 460 460        8.0
#> 461 461       33.0
#> 462 462        5.0
#> 463 463     180.0+
#> 464 464     180.0+
#> 465 465     180.0+
#> 466 466       12.0
#> 467 467     180.0+
#> 468 468       7.0+
#> 469 469       79.0
#> 470 470        3.0
#> 471 471     180.0+
#> 472 472     176.0+
#> 473 473     180.0+
#> 474 474     180.0+
#> 475 475        7.0
#> 476 476     180.0+
#> 477 477       8.0+
#> 478 478        7.0
#> 479 479     180.0+
#> 480 480       10.0
#> 481 481      172.0
#> 482 482      119.0
#> 483 483       12.0
#> 484 484     180.0+
#> 485 485        8.0
#> 486 486     180.0+
#> 487 487     180.0+
#> 488 488     180.0+
#> 489 489     180.0+
#> 490 490       4.0+
#> 491 491        2.0
#> 492 492       11.0
#> 493 493     152.0+
#> 494 494        3.0
#> 495 495       24.0
#> 496 496       32.0
#> 497 497     180.0+
#> 498 498       3.0+
#> 499 499     180.0+
#> 500 500     180.0+
#> 501 501     180.0+
#> 502 502        4.0
#> 503 503        4.0
#> 504 504      10.0+
#> 505 505        6.0
#> 506 506       3.0+
#> 507 507       2.0+
#> 508 508     180.0+
#> 509 509        1.0
#> 510 510      171.0
#> 511 511        1.0
#> 512 512       43.0
#> 513 513        3.0
#> 514 514      138.0
#> 515 515     180.0+
#> 516 516       71.0
#> 517 517        8.0
#> 518 518       40.0
#> 519 519       59.0
#> 520 520       17.0
#> 521 521      161.0
#> 522 522      10.0+
#> 523 523       93.0
#> 524 524       37.0
#> 525 525     180.0+
#> 526 526       7.0+
#> 527 527       22.0
#> 528 528      15.0+
#> 529 529       5.0+
#> 530 530     166.0+
#> 531 531      20.0+
#> 532 532        1.0
#> 533 533       10.0
#> 534 534     180.0+
#> 535 535       10.0
#> 536 536        6.0
#> 537 537        5.0
#> 538 538     180.0+
#> 539 539     180.0+
#> 540 540     180.0+
#> 541 541        4.0
#> 542 542       9.0+
#> 543 543     180.0+
#> 544 544     177.0+
#> 545 545      169.0
#> 546 546     180.0+
#> 547 547     180.0+
#> 548 548     180.0+
#> 549 549     180.0+
#> 550 550       16.0
#> 551 551     180.0+
#> 552 552     180.0+
#> 553 553     180.0+
#> 554 554     180.0+
#> 555 555     180.0+
#> 556 556      128.0
#> 557 557      167.0
#> 558 558       62.0
#> 559 559     180.0+
#> 560 560        4.0
#> 561 561        1.0
#> 562 562       38.0
#> 563 563     180.0+
#> 564 564       90.0
#> 565 565       89.0
#> 566 566        4.0
#> 567 567        1.0
#> 568 568       19.0
#> 569 569       30.0
#> 570 570     180.0+
#> 571 571     180.0+
#> 572 572      114.0
#> 573 573     180.0+
#> 574 574      154.0
#> 575 575        2.0
#> 576 576     180.0+
#> 577 577     180.0+
#> 578 578       12.0
#> 579 579      16.0+
#> 580 580       4.0+
#> 581 581     180.0+
#> 582 582     180.0+
#> 583 583        3.0
#> 584 584       83.0
#> 585 585       88.0
#> 586 586        8.0
#> 587 587        3.0
#> 588 588     180.0+
#> 589 589     180.0+
#> 590 590     180.0+
#> 591 591     180.0+
#> 592 592       4.0+
#> 593 593     180.0+
#> 594 594      174.0
#> 595 595        6.0
#> 596 596       70.0
#> 597 597       43.0
#> 598 598     180.0+
#> 599 599     180.0+
#> 600 600     180.0+
#> 601 601        3.0
#> 602 602       13.0
#> 603 603     180.0+
#> 604 604     180.0+
#> 605 605       92.0
#> 606 606     180.0+
#> 607 607       38.0
#> 608 608        4.0
#> 609 609      177.0
#> 610 610       62.0
#> 611 611       4.0+
#> 612 612        4.0
#> 613 613       11.0
#> 614 614     180.0+
#> 615 615      115.0
#> 616 616       8.0+
#> 617 617     180.0+
#> 618 618        4.0
#> 619 619      119.0
#> 620 620     180.0+
#> 621 621       1.0+
#> 622 622     180.0+
#> 623 623        8.0
#> 624 624      110.0
#> 625 625       29.0
#> 626 626     180.0+
#> 627 627     180.0+
#> 628 628       46.0
#> 629 629       14.0
#> 630 630       1.0+
#> 631 631     180.0+
#> 632 632        8.0
#> 633 633     180.0+
#> 634 634       25.0
#> 635 635      145.0
#> 636 636        3.0
#> 637 637       24.0
#> 638 638       50.0
#> 639 639      126.0
#> 640 640     180.0+
#> 641 641     180.0+
#> 642 642     178.0+
#> 643 643       3.0+
#> 644 644        1.0
#> 645 645      158.0
#> 646 646       74.0
#> 647 647      168.0
#> 648 648      169.0
#> 649 649       52.0
#> 650 650        7.0
#> 651 651        4.0
#> 652 652        0.5
#> 653 653     180.0+
#> 654 654     180.0+
#> 655 655        4.0
#> 656 656     180.0+
#> 657 657        2.0
#> 658 658     179.0+
#> 659 659       8.0+
#> 660 660       76.0
#> 661 661       67.0
#> 662 662       12.0
#> 663 663        8.0
#> 664 664       53.0
#> 665 665       7.0+
#> 666 666       69.0
#> 667 667        2.0
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
#> <bytecode: 0x55f84ba5b108>
#> <environment: 0x55f871ba6188>
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
#> <bytecode: 0x55f851ebb968>
#> <environment: 0x55f8749a4f48>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f851eb9738>
#> <environment: 0x55f8749a4e68>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f851ebb968>
#> <environment: 0x55f8749a4d88>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f851eb9738>
#> <environment: 0x55f8749a4c38>
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
#> <bytecode: 0x55f84ba42298>
#> <environment: 0x55f871ba9708>
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
#>    0.850102 
```
