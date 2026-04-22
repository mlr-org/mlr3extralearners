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
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 59
#> |   |   |   |   [5] V7 <= 141 *
#> |   |   |   |   [6] V7 > 141 *
#> |   |   |   [7] V2 > 59
#> |   |   |   |   [8] V2 <= 65 *
#> |   |   |   |   [9] V2 > 65
#> |   |   |   |   |   [10] V5 <= 6
#> |   |   |   |   |   |   [11] V2 <= 82 *
#> |   |   |   |   |   |   [12] V2 > 82 *
#> |   |   |   |   |   [13] V5 > 6
#> |   |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   |   [15] V5 <= 18 *
#> |   |   |   |   |   |   |   [16] V5 > 18 *
#> |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   [18] V2 <= 77 *
#> |   |   |   |   |   |   |   [19] V2 > 77 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V2 <= 79
#> |   |   |   |   |   [23] V2 <= 63
#> |   |   |   |   |   |   [24] V3 <= 7
#> |   |   |   |   |   |   |   [25] V5 <= 1 *
#> |   |   |   |   |   |   |   [26] V5 > 1 *
#> |   |   |   |   |   |   [27] V3 > 7
#> |   |   |   |   |   |   |   [28] V2 <= 56 *
#> |   |   |   |   |   |   |   [29] V2 > 56 *
#> |   |   |   |   |   [30] V2 > 63
#> |   |   |   |   |   |   [31] V3 <= 12
#> |   |   |   |   |   |   |   [32] V3 <= 10
#> |   |   |   |   |   |   |   |   [33] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [34] V7 > 132 *
#> |   |   |   |   |   |   |   [35] V3 > 10 *
#> |   |   |   |   |   |   [36] V3 > 12 *
#> |   |   |   |   [37] V2 > 79 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V2 <= 73
#> |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   [42] V3 <= 11
#> |   |   |   |   |   |   |   [43] V3 <= 7
#> |   |   |   |   |   |   |   |   [44] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [45] V2 > 59 *
#> |   |   |   |   |   |   |   [46] V3 > 7 *
#> |   |   |   |   |   |   [47] V3 > 11
#> |   |   |   |   |   |   |   [48] V5 <= 12
#> |   |   |   |   |   |   |   |   [49] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [50] V3 > 13 *
#> |   |   |   |   |   |   |   [51] V5 > 12 *
#> |   |   |   |   [52] V2 > 73
#> |   |   |   |   |   [53] V7 <= 167
#> |   |   |   |   |   |   [54] V2 <= 78 *
#> |   |   |   |   |   |   [55] V2 > 78 *
#> |   |   |   |   |   [56] V7 > 167 *
#> |   [57] V5 > 173
#> |   |   [58] V3 <= 3
#> |   |   |   [59] V7 <= 150 *
#> |   |   |   [60] V7 > 150 *
#> |   |   [61] V3 > 3 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 73
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V7 <= 106 *
#> |   |   |   |   [6] V7 > 106
#> |   |   |   |   |   [7] V5 <= 11
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   |   [10] V5 > 11 *
#> |   |   |   [11] V2 > 55
#> |   |   |   |   [12] V4 <= 0
#> |   |   |   |   |   [13] V7 <= 145
#> |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   [16] V7 > 145 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V7 <= 100 *
#> |   |   |   |   |   [19] V7 > 100
#> |   |   |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   |   |   [21] V5 <= 5
#> |   |   |   |   |   |   |   |   [22] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [23] V5 > 1 *
#> |   |   |   |   |   |   |   [24] V5 > 5 *
#> |   |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   |   [26] V5 <= 11
#> |   |   |   |   |   |   |   |   [27] V3 <= 12
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [30] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   [31] V3 > 9 *
#> |   |   |   |   |   |   |   |   [32] V3 > 12 *
#> |   |   |   |   |   |   |   [33] V5 > 11 *
#> |   |   [34] V2 > 73
#> |   |   |   [35] V4 <= 0
#> |   |   |   |   [36] V5 <= 128
#> |   |   |   |   |   [37] V2 <= 82
#> |   |   |   |   |   |   [38] V3 <= 5 *
#> |   |   |   |   |   |   [39] V3 > 5 *
#> |   |   |   |   |   [40] V2 > 82
#> |   |   |   |   |   |   [41] V5 <= 8 *
#> |   |   |   |   |   |   [42] V5 > 8
#> |   |   |   |   |   |   |   [43] V3 <= 6 *
#> |   |   |   |   |   |   |   [44] V3 > 6 *
#> |   |   |   |   [45] V5 > 128 *
#> |   |   |   [46] V4 > 0
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V2 <= 81 *
#> |   |   |   |   |   [49] V2 > 81 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V5 <= 8
#> |   |   |   |   |   |   [52] V7 <= 126 *
#> |   |   |   |   |   |   [53] V7 > 126 *
#> |   |   |   |   |   [54] V5 > 8 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V2 <= 61 *
#> |   |   |   |   |   [7] V2 > 61 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V5 <= 8
#> |   |   |   |   |   |   [10] V7 <= 127 *
#> |   |   |   |   |   |   [11] V7 > 127
#> |   |   |   |   |   |   |   [12] V2 <= 62 *
#> |   |   |   |   |   |   |   [13] V2 > 62 *
#> |   |   |   |   |   [14] V5 > 8
#> |   |   |   |   |   |   [15] V7 <= 160 *
#> |   |   |   |   |   |   [16] V7 > 160 *
#> |   |   |   [17] V5 > 170 *
#> |   |   [18] V6 > 0
#> |   |   |   [19] V7 <= 93 *
#> |   |   |   [20] V7 > 93
#> |   |   |   |   [21] V5 <= 99
#> |   |   |   |   |   [22] V4 <= 0 *
#> |   |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   |   [24] V7 <= 132
#> |   |   |   |   |   |   |   [25] V7 <= 112 *
#> |   |   |   |   |   |   |   [26] V7 > 112
#> |   |   |   |   |   |   |   |   [27] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [28] V7 > 129 *
#> |   |   |   |   |   |   [29] V7 > 132
#> |   |   |   |   |   |   |   [30] V7 <= 149 *
#> |   |   |   |   |   |   |   [31] V7 > 149
#> |   |   |   |   |   |   |   |   [32] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [33] V3 > 9 *
#> |   |   |   |   [34] V5 > 99
#> |   |   |   |   |   [35] V2 <= 55 *
#> |   |   |   |   |   [36] V2 > 55 *
#> |   [37] V2 > 72
#> |   |   [38] V6 <= 0
#> |   |   |   [39] V2 <= 81
#> |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   [41] V7 > 130
#> |   |   |   |   |   [42] V5 <= 9 *
#> |   |   |   |   |   [43] V5 > 9 *
#> |   |   |   [44] V2 > 81
#> |   |   |   |   [45] V7 <= 125 *
#> |   |   |   |   [46] V7 > 125 *
#> |   |   [47] V6 > 0
#> |   |   |   [48] V3 <= 6
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V7 <= 114 *
#> |   |   |   |   |   [51] V7 > 114
#> |   |   |   |   |   |   [52] V5 <= 89
#> |   |   |   |   |   |   |   [53] V7 <= 137 *
#> |   |   |   |   |   |   |   [54] V7 > 137 *
#> |   |   |   |   |   |   [55] V5 > 89 *
#> |   |   |   |   [56] V4 > 0 *
#> |   |   |   [57] V3 > 6
#> |   |   |   |   [58] V2 <= 82
#> |   |   |   |   |   [59] V5 <= 29
#> |   |   |   |   |   |   [60] V7 <= 146 *
#> |   |   |   |   |   |   [61] V7 > 146 *
#> |   |   |   |   |   [62] V5 > 29 *
#> |   |   |   |   [63] V2 > 82 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V2 <= 74
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V5 <= 2
#> |   |   |   |   |   |   |   [9] V2 <= 43 *
#> |   |   |   |   |   |   |   [10] V2 > 43
#> |   |   |   |   |   |   |   |   [11] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [12] V5 > 0 *
#> |   |   |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   |   |   [14] V2 <= 42 *
#> |   |   |   |   |   |   |   [15] V2 > 42 *
#> |   |   |   |   [16] V2 > 54
#> |   |   |   |   |   [17] V4 <= 0
#> |   |   |   |   |   |   [18] V5 <= 2 *
#> |   |   |   |   |   |   [19] V5 > 2
#> |   |   |   |   |   |   |   [20] V2 <= 64 *
#> |   |   |   |   |   |   |   [21] V2 > 64 *
#> |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   [23] V5 <= 1
#> |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   |   |   [26] V7 <= 149 *
#> |   |   |   |   |   |   |   |   [27] V7 > 149 *
#> |   |   |   |   |   |   [28] V5 > 1
#> |   |   |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   |   |   [30] V7 <= 124 *
#> |   |   |   |   |   |   |   |   [31] V7 > 124
#> |   |   |   |   |   |   |   |   |   [32] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   [33] V2 > 64 *
#> |   |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   |   [35] V3 <= 17
#> |   |   |   |   |   |   |   |   |   [36] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 5 *
#> |   |   |   |   |   |   |   |   [38] V3 > 17 *
#> |   |   |   [39] V2 > 74
#> |   |   |   |   [40] V3 <= 4
#> |   |   |   |   |   [41] V7 <= 104 *
#> |   |   |   |   |   [42] V7 > 104
#> |   |   |   |   |   |   [43] V2 <= 78 *
#> |   |   |   |   |   |   [44] V2 > 78 *
#> |   |   |   |   [45] V3 > 4
#> |   |   |   |   |   [46] V4 <= 0 *
#> |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   [48] V7 <= 112 *
#> |   |   |   |   |   |   [49] V7 > 112
#> |   |   |   |   |   |   |   [50] V5 <= 3 *
#> |   |   |   |   |   |   |   [51] V5 > 3 *
#> |   |   [52] V5 > 16
#> |   |   |   [53] V3 <= 13
#> |   |   |   |   [54] V5 <= 128
#> |   |   |   |   |   [55] V7 <= 137 *
#> |   |   |   |   |   [56] V7 > 137 *
#> |   |   |   |   [57] V5 > 128 *
#> |   |   |   [58] V3 > 13 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V5 <= 3
#> |   |   |   |   |   |   |   |   [10] V2 <= 52 *
#> |   |   |   |   |   |   |   |   [11] V2 > 52 *
#> |   |   |   |   |   |   |   [12] V5 > 3
#> |   |   |   |   |   |   |   |   [13] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [14] V3 > 10 *
#> |   |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   |   [16] V5 <= 5
#> |   |   |   |   |   |   |   |   [17] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [18] V7 <= 115 *
#> |   |   |   |   |   |   |   |   |   [19] V7 > 115 *
#> |   |   |   |   |   |   |   |   [20] V5 > 1 *
#> |   |   |   |   |   |   |   [21] V5 > 5 *
#> |   |   |   |   [22] V2 > 62
#> |   |   |   |   |   [23] V4 <= 0 *
#> |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   [26] V2 <= 67 *
#> |   |   |   |   |   |   |   [27] V2 > 67 *
#> |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   [29] V2 <= 71
#> |   |   |   |   |   |   |   |   [30] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [31] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [32] V3 > 7 *
#> |   |   |   |   |   |   |   |   [33] V3 > 13 *
#> |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   [35] V5 > 16 *
#> |   |   [36] V2 > 74
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   [39] V2 <= 82 *
#> |   |   |   |   |   [40] V2 > 82 *
#> |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   [42] V7 <= 140 *
#> |   |   |   |   |   [43] V7 > 140 *
#> |   |   |   [44] V4 > 0
#> |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V7 <= 161
#> |   |   |   |   |   |   [48] V3 <= 11 *
#> |   |   |   |   |   |   [49] V3 > 11 *
#> |   |   |   |   |   [50] V7 > 161 *
#> |   [51] V5 > 173
#> |   |   [52] V6 <= 0
#> |   |   |   [53] V2 <= 79 *
#> |   |   |   [54] V2 > 79 *
#> |   |   [55] V6 > 0 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 64
#> |   |   |   |   [8] V2 <= 70
#> |   |   |   |   |   [9] V2 <= 68 *
#> |   |   |   |   |   [10] V2 > 68 *
#> |   |   |   |   [11] V2 > 70
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V3 <= 4 *
#> |   |   |   |   |   |   [14] V3 > 4 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V7 <= 114 *
#> |   |   |   |   |   |   [17] V7 > 114
#> |   |   |   |   |   |   |   [18] V3 <= 6
#> |   |   |   |   |   |   |   |   [19] V2 <= 81 *
#> |   |   |   |   |   |   |   |   [20] V2 > 81 *
#> |   |   |   |   |   |   |   [21] V3 > 6 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V3 <= 1 *
#> |   |   |   [24] V3 > 1
#> |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   [26] V2 <= 62
#> |   |   |   |   |   |   [27] V7 <= 166
#> |   |   |   |   |   |   |   [28] V3 <= 7 *
#> |   |   |   |   |   |   |   [29] V3 > 7 *
#> |   |   |   |   |   |   [30] V7 > 166 *
#> |   |   |   |   |   [31] V2 > 62
#> |   |   |   |   |   |   [32] V2 <= 80
#> |   |   |   |   |   |   |   [33] V5 <= 9
#> |   |   |   |   |   |   |   |   [34] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [35] V7 > 142 *
#> |   |   |   |   |   |   |   [36] V5 > 9 *
#> |   |   |   |   |   |   [37] V2 > 80 *
#> |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   [39] V5 <= 8
#> |   |   |   |   |   |   [40] V2 <= 74
#> |   |   |   |   |   |   |   [41] V3 <= 10
#> |   |   |   |   |   |   |   |   [42] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [43] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 6 *
#> |   |   |   |   |   |   |   |   [45] V5 > 0
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [47] V5 > 3 *
#> |   |   |   |   |   |   |   [48] V3 > 10 *
#> |   |   |   |   |   |   [49] V2 > 74
#> |   |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   |   [51] V3 > 4 *
#> |   |   |   |   |   [52] V5 > 8
#> |   |   |   |   |   |   [53] V2 <= 68
#> |   |   |   |   |   |   |   [54] V3 <= 15 *
#> |   |   |   |   |   |   |   [55] V3 > 15 *
#> |   |   |   |   |   |   [56] V2 > 68 *
#> |   [57] V5 > 173
#> |   |   [58] V3 <= 3
#> |   |   |   [59] V6 <= 0 *
#> |   |   |   [60] V6 > 0 *
#> |   |   [61] V3 > 3 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 67
#> |   |   |   |   [5] V2 <= 59 *
#> |   |   |   |   [6] V2 > 59 *
#> |   |   |   [7] V2 > 67
#> |   |   |   |   [8] V7 <= 107 *
#> |   |   |   |   [9] V7 > 107
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V7 <= 135 *
#> |   |   |   |   |   |   [12] V7 > 135 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V3 <= 4 *
#> |   |   |   |   |   |   [15] V3 > 4
#> |   |   |   |   |   |   |   [16] V3 <= 8 *
#> |   |   |   |   |   |   |   [17] V3 > 8 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 71
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V5 <= 7
#> |   |   |   |   |   |   [22] V2 <= 62
#> |   |   |   |   |   |   |   [23] V5 <= 1 *
#> |   |   |   |   |   |   |   [24] V5 > 1 *
#> |   |   |   |   |   |   [25] V2 > 62 *
#> |   |   |   |   |   [26] V5 > 7
#> |   |   |   |   |   |   [27] V2 <= 62 *
#> |   |   |   |   |   |   [28] V2 > 62 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V3 <= 17
#> |   |   |   |   |   |   [31] V3 <= 13
#> |   |   |   |   |   |   |   [32] V5 <= 1
#> |   |   |   |   |   |   |   |   [33] V2 <= 58
#> |   |   |   |   |   |   |   |   |   [34] V3 <= 2 *
#> |   |   |   |   |   |   |   |   |   [35] V3 > 2 *
#> |   |   |   |   |   |   |   |   [36] V2 > 58 *
#> |   |   |   |   |   |   |   [37] V5 > 1
#> |   |   |   |   |   |   |   |   [38] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [39] V5 > 7 *
#> |   |   |   |   |   |   [40] V3 > 13 *
#> |   |   |   |   |   [41] V3 > 17 *
#> |   |   |   [42] V2 > 71
#> |   |   |   |   [43] V2 <= 84
#> |   |   |   |   |   [44] V3 <= 17
#> |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   [47] V2 <= 74 *
#> |   |   |   |   |   |   |   [48] V2 > 74
#> |   |   |   |   |   |   |   |   [49] V2 <= 80 *
#> |   |   |   |   |   |   |   |   [50] V2 > 80 *
#> |   |   |   |   |   [51] V3 > 17 *
#> |   |   |   |   [52] V2 > 84 *
#> |   [53] V5 > 173
#> |   |   [54] V3 <= 3
#> |   |   |   [55] V3 <= 2
#> |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   [57] V6 > 0 *
#> |   |   |   [58] V3 > 2 *
#> |   |   [59] V3 > 3 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 48 *
#> |   |   |   [5] V2 > 48 *
#> |   |   [6] V4 > 0
#> |   |   |   [7] V2 <= 52
#> |   |   |   |   [8] V5 <= 6
#> |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   |   [11] V5 > 6 *
#> |   |   |   [12] V2 > 52 *
#> |   [13] V2 > 54
#> |   |   [14] V5 <= 173
#> |   |   |   [15] V2 <= 76
#> |   |   |   |   [16] V3 <= 1 *
#> |   |   |   |   [17] V3 > 1
#> |   |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   |   [19] V7 <= 139 *
#> |   |   |   |   |   |   [20] V7 > 139
#> |   |   |   |   |   |   |   [21] V2 <= 67 *
#> |   |   |   |   |   |   |   [22] V2 > 67 *
#> |   |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   |   [24] V5 <= 0
#> |   |   |   |   |   |   |   [25] V2 <= 66 *
#> |   |   |   |   |   |   |   [26] V2 > 66 *
#> |   |   |   |   |   |   [27] V5 > 0
#> |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   [29] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [30] V2 <= 62 *
#> |   |   |   |   |   |   |   |   |   [31] V2 > 62 *
#> |   |   |   |   |   |   |   |   [32] V5 > 8
#> |   |   |   |   |   |   |   |   |   [33] V2 <= 62 *
#> |   |   |   |   |   |   |   |   |   [34] V2 > 62 *
#> |   |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   |   [36] V7 <= 170
#> |   |   |   |   |   |   |   |   |   [37] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [38] V5 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [39] V5 > 6 *
#> |   |   |   |   |   |   |   |   |   [40] V3 > 13 *
#> |   |   |   |   |   |   |   |   [41] V7 > 170 *
#> |   |   |   [42] V2 > 76
#> |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   [44] V5 <= 10
#> |   |   |   |   |   |   [45] V4 <= 0 *
#> |   |   |   |   |   |   [46] V4 > 0 *
#> |   |   |   |   |   [47] V5 > 10 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   |   [50] V3 <= 7
#> |   |   |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   |   |   [52] V3 > 4 *
#> |   |   |   |   |   |   [53] V3 > 7 *
#> |   |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   |   [55] V2 <= 78 *
#> |   |   |   |   |   |   [56] V2 > 78
#> |   |   |   |   |   |   |   [57] V7 <= 126 *
#> |   |   |   |   |   |   |   [58] V7 > 126 *
#> |   |   [59] V5 > 173
#> |   |   |   [60] V6 <= 0
#> |   |   |   |   [61] V3 <= 7
#> |   |   |   |   |   [62] V2 <= 78 *
#> |   |   |   |   |   [63] V2 > 78 *
#> |   |   |   |   [64] V3 > 7 *
#> |   |   |   [65] V6 > 0 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 73
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V2 <= 49
#> |   |   |   |   |   |   [7] V7 <= 120 *
#> |   |   |   |   |   |   [8] V7 > 120 *
#> |   |   |   |   |   [9] V2 > 49
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   [12] V2 > 54
#> |   |   |   |   |   [13] V3 <= 1 *
#> |   |   |   |   |   [14] V3 > 1
#> |   |   |   |   |   |   [15] V4 <= 0
#> |   |   |   |   |   |   |   [16] V3 <= 6 *
#> |   |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   |   [19] V5 <= 1
#> |   |   |   |   |   |   |   |   [20] V3 <= 5
#> |   |   |   |   |   |   |   |   |   [21] V7 <= 146 *
#> |   |   |   |   |   |   |   |   |   [22] V7 > 146 *
#> |   |   |   |   |   |   |   |   [23] V3 > 5
#> |   |   |   |   |   |   |   |   |   [24] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   |   |   [26] V5 > 1
#> |   |   |   |   |   |   |   |   [27] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [29] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [30] V3 > 12 *
#> |   |   |   |   |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [33] V5 > 7 *
#> |   |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   [35] V5 > 16 *
#> |   |   [36] V2 > 73
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V5 <= 80
#> |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   [41] V5 <= 8 *
#> |   |   |   |   |   |   [42] V5 > 8 *
#> |   |   |   |   [43] V5 > 80 *
#> |   |   |   [44] V4 > 0
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V7 <= 155 *
#> |   |   |   |   |   [47] V7 > 155 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V7 <= 104 *
#> |   |   |   |   |   [50] V7 > 104
#> |   |   |   |   |   |   [51] V2 <= 76 *
#> |   |   |   |   |   |   [52] V2 > 76
#> |   |   |   |   |   |   |   [53] V5 <= 5 *
#> |   |   |   |   |   |   |   [54] V5 > 5 *
#> |   [55] V5 > 170
#> |   |   [56] V3 <= 11
#> |   |   |   [57] V2 <= 50 *
#> |   |   |   [58] V2 > 50
#> |   |   |   |   [59] V3 <= 2 *
#> |   |   |   |   [60] V3 > 2 *
#> |   |   [61] V3 > 11 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V2 <= 55 *
#> |   |   |   [5] V2 > 55
#> |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   [9] V3 > 3 *
#> |   |   [10] V7 > 112
#> |   |   |   [11] V5 <= 173
#> |   |   |   |   [12] V7 <= 140
#> |   |   |   |   |   [13] V2 <= 62 *
#> |   |   |   |   |   [14] V2 > 62
#> |   |   |   |   |   |   [15] V3 <= 6 *
#> |   |   |   |   |   |   [16] V3 > 6 *
#> |   |   |   |   [17] V7 > 140
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V3 <= 4 *
#> |   |   |   |   |   |   [21] V3 > 4 *
#> |   |   |   [22] V5 > 173
#> |   |   |   |   [23] V3 <= 11
#> |   |   |   |   |   [24] V3 <= 3
#> |   |   |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   |   |   [26] V3 > 2 *
#> |   |   |   |   |   [27] V3 > 3 *
#> |   |   |   |   [28] V3 > 11 *
#> |   [29] V4 > 0
#> |   |   [30] V6 <= 0
#> |   |   |   [31] V2 <= 71
#> |   |   |   |   [32] V7 <= 127 *
#> |   |   |   |   [33] V7 > 127
#> |   |   |   |   |   [34] V7 <= 151
#> |   |   |   |   |   |   [35] V7 <= 130 *
#> |   |   |   |   |   |   [36] V7 > 130 *
#> |   |   |   |   |   [37] V7 > 151
#> |   |   |   |   |   |   [38] V3 <= 9 *
#> |   |   |   |   |   |   [39] V3 > 9 *
#> |   |   |   [40] V2 > 71
#> |   |   |   |   [41] V5 <= 2 *
#> |   |   |   |   [42] V5 > 2
#> |   |   |   |   |   [43] V3 <= 12 *
#> |   |   |   |   |   [44] V3 > 12 *
#> |   |   [45] V6 > 0
#> |   |   |   [46] V2 <= 73
#> |   |   |   |   [47] V7 <= 185
#> |   |   |   |   |   [48] V5 <= 4
#> |   |   |   |   |   |   [49] V3 <= 5
#> |   |   |   |   |   |   |   [50] V7 <= 146 *
#> |   |   |   |   |   |   |   [51] V7 > 146 *
#> |   |   |   |   |   |   [52] V3 > 5
#> |   |   |   |   |   |   |   [53] V3 <= 7 *
#> |   |   |   |   |   |   |   [54] V3 > 7 *
#> |   |   |   |   |   [55] V5 > 4
#> |   |   |   |   |   |   [56] V5 <= 9 *
#> |   |   |   |   |   |   [57] V5 > 9
#> |   |   |   |   |   |   |   [58] V2 <= 56 *
#> |   |   |   |   |   |   |   [59] V2 > 56 *
#> |   |   |   |   [60] V7 > 185 *
#> |   |   |   [61] V2 > 73
#> |   |   |   |   [62] V3 <= 13 *
#> |   |   |   |   [63] V3 > 13 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 73
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V2 <= 59 *
#> |   |   |   |   |   [7] V2 > 59
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120 *
#> |   |   |   |   [10] V3 > 6 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V5 <= 1 *
#> |   |   |   |   |   |   [15] V5 > 1 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V3 <= 6 *
#> |   |   |   |   |   |   [18] V3 > 6 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V3 <= 17
#> |   |   |   |   |   |   [21] V3 <= 13
#> |   |   |   |   |   |   |   [22] V3 <= 7
#> |   |   |   |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [24] V3 > 2
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 4
#> |   |   |   |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [28] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [29] V7 <= 131 *
#> |   |   |   |   |   |   |   |   |   |   [30] V7 > 131 *
#> |   |   |   |   |   |   |   [31] V3 > 7
#> |   |   |   |   |   |   |   |   [32] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [33] V3 > 10 *
#> |   |   |   |   |   |   [34] V3 > 13
#> |   |   |   |   |   |   |   [35] V2 <= 63 *
#> |   |   |   |   |   |   |   [36] V2 > 63 *
#> |   |   |   |   |   [37] V3 > 17 *
#> |   |   [38] V5 > 170
#> |   |   |   [39] V3 <= 3
#> |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   [41] V6 > 0 *
#> |   |   |   [42] V3 > 3 *
#> |   [43] V2 > 73
#> |   |   [44] V5 <= 173
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V2 <= 82
#> |   |   |   |   |   [47] V3 <= 5 *
#> |   |   |   |   |   [48] V3 > 5 *
#> |   |   |   |   [49] V2 > 82
#> |   |   |   |   |   [50] V3 <= 8
#> |   |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   |   [52] V6 > 0 *
#> |   |   |   |   |   [53] V3 > 8 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V6 <= 0
#> |   |   |   |   |   [56] V5 <= 2 *
#> |   |   |   |   |   [57] V5 > 2 *
#> |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   [59] V2 <= 75 *
#> |   |   |   |   |   [60] V2 > 75
#> |   |   |   |   |   |   [61] V2 <= 78 *
#> |   |   |   |   |   |   [62] V2 > 78 *
#> |   |   [63] V5 > 173
#> |   |   |   [64] V7 <= 160 *
#> |   |   |   [65] V7 > 160 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 142 *
#> |   |   |   |   [6] V7 > 142 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   [9] V7 > 120
#> |   |   |   |   |   [10] V7 <= 131 *
#> |   |   |   |   |   [11] V7 > 131 *
#> |   |   [12] V6 > 0
#> |   |   |   [13] V5 <= 99
#> |   |   |   |   [14] V7 <= 110 *
#> |   |   |   |   [15] V7 > 110
#> |   |   |   |   |   [16] V5 <= 1 *
#> |   |   |   |   |   [17] V5 > 1
#> |   |   |   |   |   |   [18] V5 <= 8 *
#> |   |   |   |   |   |   [19] V5 > 8 *
#> |   |   |   [20] V5 > 99 *
#> |   [21] V2 > 62
#> |   |   [22] V4 <= 0
#> |   |   |   [23] V2 <= 87
#> |   |   |   |   [24] V5 <= 173
#> |   |   |   |   |   [25] V3 <= 6
#> |   |   |   |   |   |   [26] V2 <= 82
#> |   |   |   |   |   |   |   [27] V7 <= 125 *
#> |   |   |   |   |   |   |   [28] V7 > 125
#> |   |   |   |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [30] V3 > 3 *
#> |   |   |   |   |   |   [31] V2 > 82 *
#> |   |   |   |   |   [32] V3 > 6
#> |   |   |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V5 <= 15 *
#> |   |   |   |   |   |   |   [36] V5 > 15 *
#> |   |   |   |   [37] V5 > 173 *
#> |   |   |   [38] V2 > 87
#> |   |   |   |   [39] V2 <= 89 *
#> |   |   |   |   [40] V2 > 89 *
#> |   |   [41] V4 > 0
#> |   |   |   [42] V7 <= 96 *
#> |   |   |   [43] V7 > 96
#> |   |   |   |   [44] V3 <= 18
#> |   |   |   |   |   [45] V2 <= 86
#> |   |   |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   |   |   [47] V5 <= 0
#> |   |   |   |   |   |   |   |   [48] V7 <= 136 *
#> |   |   |   |   |   |   |   |   [49] V7 > 136 *
#> |   |   |   |   |   |   |   [50] V5 > 0
#> |   |   |   |   |   |   |   |   [51] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [52] V2 <= 70 *
#> |   |   |   |   |   |   |   |   |   [53] V2 > 70
#> |   |   |   |   |   |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   |   |   |   |   [57] V3 > 13 *
#> |   |   |   |   |   [58] V2 > 86 *
#> |   |   |   |   [59] V3 > 18 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112 *
#> |   |   |   [5] V7 > 112
#> |   |   |   |   [6] V5 <= 170
#> |   |   |   |   |   [7] V5 <= 16 *
#> |   |   |   |   |   [8] V5 > 16 *
#> |   |   |   |   [9] V5 > 170 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V6 <= 0
#> |   |   |   |   [12] V3 <= 8
#> |   |   |   |   |   [13] V7 <= 125 *
#> |   |   |   |   |   [14] V7 > 125
#> |   |   |   |   |   |   [15] V2 <= 62 *
#> |   |   |   |   |   |   [16] V2 > 62 *
#> |   |   |   |   [17] V3 > 8
#> |   |   |   |   |   [18] V2 <= 61
#> |   |   |   |   |   |   [19] V3 <= 13 *
#> |   |   |   |   |   |   [20] V3 > 13 *
#> |   |   |   |   |   [21] V2 > 61 *
#> |   |   |   [22] V6 > 0
#> |   |   |   |   [23] V7 <= 110 *
#> |   |   |   |   [24] V7 > 110
#> |   |   |   |   |   [25] V2 <= 55
#> |   |   |   |   |   |   [26] V2 <= 40 *
#> |   |   |   |   |   |   [27] V2 > 40 *
#> |   |   |   |   |   [28] V2 > 55
#> |   |   |   |   |   |   [29] V7 <= 150
#> |   |   |   |   |   |   |   [30] V7 <= 135 *
#> |   |   |   |   |   |   |   [31] V7 > 135 *
#> |   |   |   |   |   |   [32] V7 > 150 *
#> |   [33] V2 > 70
#> |   |   [34] V2 <= 87
#> |   |   |   [35] V7 <= 101 *
#> |   |   |   [36] V7 > 101
#> |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V7 <= 145 *
#> |   |   |   |   |   |   [40] V7 > 145 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V3 <= 8
#> |   |   |   |   |   |   |   [43] V7 <= 129 *
#> |   |   |   |   |   |   |   [44] V7 > 129
#> |   |   |   |   |   |   |   |   [45] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [46] V2 > 75
#> |   |   |   |   |   |   |   |   |   [47] V2 <= 83 *
#> |   |   |   |   |   |   |   |   |   [48] V2 > 83 *
#> |   |   |   |   |   |   [49] V3 > 8 *
#> |   |   |   |   [50] V4 > 0
#> |   |   |   |   |   [51] V5 <= 3
#> |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   [54] V5 > 3
#> |   |   |   |   |   |   [55] V7 <= 165
#> |   |   |   |   |   |   |   [56] V5 <= 10 *
#> |   |   |   |   |   |   |   [57] V5 > 10 *
#> |   |   |   |   |   |   [58] V7 > 165 *
#> |   |   [59] V2 > 87
#> |   |   |   [60] V2 <= 89 *
#> |   |   |   [61] V2 > 89 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V5 <= 167
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 6
#> |   |   |   |   [5] V2 <= 64 *
#> |   |   |   |   [6] V2 > 64
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V7 <= 140 *
#> |   |   |   |   |   |   [12] V7 > 140 *
#> |   |   |   [13] V3 > 6
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V2 <= 67 *
#> |   |   |   |   |   [17] V2 > 67
#> |   |   |   |   |   |   [18] V5 <= 15 *
#> |   |   |   |   |   |   [19] V5 > 15 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   [23] V5 > 0
#> |   |   |   |   |   [24] V5 <= 8
#> |   |   |   |   |   |   [25] V3 <= 8
#> |   |   |   |   |   |   |   [26] V7 <= 142 *
#> |   |   |   |   |   |   |   [27] V7 > 142 *
#> |   |   |   |   |   |   [28] V3 > 8
#> |   |   |   |   |   |   |   [29] V2 <= 59 *
#> |   |   |   |   |   |   |   [30] V2 > 59 *
#> |   |   |   |   |   [31] V5 > 8
#> |   |   |   |   |   |   [32] V5 <= 12
#> |   |   |   |   |   |   |   [33] V5 <= 9 *
#> |   |   |   |   |   |   |   [34] V5 > 9 *
#> |   |   |   |   |   |   [35] V5 > 12 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V5 <= 0
#> |   |   |   |   |   [38] V7 <= 125 *
#> |   |   |   |   |   [39] V7 > 125
#> |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   [41] V3 > 4 *
#> |   |   |   |   [42] V5 > 0
#> |   |   |   |   |   [43] V2 <= 73
#> |   |   |   |   |   |   [44] V7 <= 170
#> |   |   |   |   |   |   |   [45] V2 <= 54 *
#> |   |   |   |   |   |   |   [46] V2 > 54
#> |   |   |   |   |   |   |   |   [47] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [48] V5 > 7
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 59 *
#> |   |   |   |   |   |   [51] V7 > 170 *
#> |   |   |   |   |   [52] V2 > 73 *
#> |   [53] V5 > 167
#> |   |   [54] V2 <= 83
#> |   |   |   [55] V7 <= 151 *
#> |   |   |   [56] V7 > 151
#> |   |   |   |   [57] V7 <= 156 *
#> |   |   |   |   [58] V7 > 156
#> |   |   |   |   |   [59] V3 <= 4 *
#> |   |   |   |   |   [60] V3 > 4 *
#> |   |   [61] V2 > 83 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V5 <= 4 *
#> |   |   |   |   |   [7] V5 > 4 *
#> |   |   |   |   [8] V5 > 16
#> |   |   |   |   |   [9] V5 <= 126 *
#> |   |   |   |   |   [10] V5 > 126 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V2 <= 64 *
#> |   |   |   |   [13] V2 > 64
#> |   |   |   |   |   [14] V7 <= 125 *
#> |   |   |   |   |   [15] V7 > 125
#> |   |   |   |   |   |   [16] V2 <= 74 *
#> |   |   |   |   |   |   [17] V2 > 74
#> |   |   |   |   |   |   |   [18] V3 <= 4 *
#> |   |   |   |   |   |   |   [19] V3 > 4 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 166
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V3 <= 12
#> |   |   |   |   |   |   [24] V5 <= 8
#> |   |   |   |   |   |   |   [25] V7 <= 125 *
#> |   |   |   |   |   |   |   [26] V7 > 125
#> |   |   |   |   |   |   |   |   [27] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [29] V3 > 3 *
#> |   |   |   |   |   |   |   |   [30] V3 > 7 *
#> |   |   |   |   |   |   [31] V5 > 8 *
#> |   |   |   |   |   [32] V3 > 12
#> |   |   |   |   |   |   [33] V2 <= 61 *
#> |   |   |   |   |   |   [34] V2 > 61 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V7 <= 104 *
#> |   |   |   |   |   [37] V7 > 104
#> |   |   |   |   |   |   [38] V3 <= 17
#> |   |   |   |   |   |   |   [39] V2 <= 76
#> |   |   |   |   |   |   |   |   [40] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [41] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   [42] V7 <= 148 *
#> |   |   |   |   |   |   |   |   |   |   [43] V7 > 148 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 6
#> |   |   |   |   |   |   |   |   |   |   [45] V2 <= 69
#> |   |   |   |   |   |   |   |   |   |   |   [46] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   |   |   |   |   |   |   |   [48] V2 > 69 *
#> |   |   |   |   |   |   |   |   [49] V5 > 9 *
#> |   |   |   |   |   |   |   [50] V2 > 76 *
#> |   |   |   |   |   |   [51] V3 > 17 *
#> |   |   |   [52] V7 > 166
#> |   |   |   |   [53] V3 <= 11
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V3 > 11 *
#> |   [57] V5 > 173
#> |   |   [58] V7 <= 150 *
#> |   |   [59] V7 > 150
#> |   |   |   [60] V2 <= 52 *
#> |   |   |   [61] V2 > 52
#> |   |   |   |   [62] V3 <= 2 *
#> |   |   |   |   [63] V3 > 2 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V2 <= 73
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V5 <= 14
#> |   |   |   |   |   [7] V5 <= 1
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V7 <= 149
#> |   |   |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   |   |   [15] V7 > 149 *
#> |   |   |   |   |   [16] V5 > 1
#> |   |   |   |   |   |   [17] V2 <= 54
#> |   |   |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   |   |   [19] V3 > 7 *
#> |   |   |   |   |   |   [20] V2 > 54
#> |   |   |   |   |   |   |   [21] V2 <= 71
#> |   |   |   |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [23] V4 <= 0 *
#> |   |   |   |   |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   |   |   |   |   [25] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [26] V5 > 3
#> |   |   |   |   |   |   |   |   |   |   |   [27] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   |   [28] V3 > 12 *
#> |   |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [31] V5 > 7
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   [33] V5 > 9 *
#> |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   |   [35] V5 > 14
#> |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   [37] V6 > 0 *
#> |   |   [38] V5 > 170
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V2 <= 50 *
#> |   |   |   |   [42] V2 > 50 *
#> |   [43] V2 > 73
#> |   |   [44] V2 <= 89
#> |   |   |   [45] V5 <= 167
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V5 <= 7
#> |   |   |   |   |   |   [48] V5 <= 3 *
#> |   |   |   |   |   |   [49] V5 > 3 *
#> |   |   |   |   |   [50] V5 > 7
#> |   |   |   |   |   |   [51] V3 <= 6 *
#> |   |   |   |   |   |   [52] V3 > 6 *
#> |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   [54] V6 <= 0
#> |   |   |   |   |   |   [55] V2 <= 80 *
#> |   |   |   |   |   |   [56] V2 > 80 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V2 <= 79
#> |   |   |   |   |   |   |   [59] V5 <= 0 *
#> |   |   |   |   |   |   |   [60] V5 > 0 *
#> |   |   |   |   |   |   [61] V2 > 79 *
#> |   |   |   [62] V5 > 167
#> |   |   |   |   [63] V3 <= 2 *
#> |   |   |   |   [64] V3 > 2 *
#> |   |   [65] V2 > 89 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 55
#> |   |   [3] V5 <= 99
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V3 <= 13
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V7 <= 148 *
#> |   |   |   |   |   |   [10] V7 > 148 *
#> |   |   |   |   [11] V3 > 13 *
#> |   |   [12] V5 > 99
#> |   |   |   [13] V6 <= 0 *
#> |   |   |   [14] V6 > 0 *
#> |   [15] V2 > 55
#> |   |   [16] V5 <= 177
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V7 <= 112
#> |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   [21] V7 > 112
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V7 <= 140
#> |   |   |   |   |   |   |   [24] V7 <= 131 *
#> |   |   |   |   |   |   |   [25] V7 > 131 *
#> |   |   |   |   |   |   [26] V7 > 140 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V2 <= 61 *
#> |   |   |   |   |   |   [29] V2 > 61
#> |   |   |   |   |   |   |   [30] V3 <= 7
#> |   |   |   |   |   |   |   |   [31] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [32] V7 > 130
#> |   |   |   |   |   |   |   |   |   [33] V2 <= 75 *
#> |   |   |   |   |   |   |   |   |   [34] V2 > 75 *
#> |   |   |   |   |   |   |   [35] V3 > 7 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V3 <= 1 *
#> |   |   |   |   [38] V3 > 1
#> |   |   |   |   |   [39] V2 <= 76
#> |   |   |   |   |   |   [40] V2 <= 68
#> |   |   |   |   |   |   |   [41] V5 <= 3
#> |   |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   |   [44] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [45] V7 > 140 *
#> |   |   |   |   |   |   |   [46] V5 > 3
#> |   |   |   |   |   |   |   |   [47] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [48] V3 > 12 *
#> |   |   |   |   |   |   [49] V2 > 68
#> |   |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   [54] V2 > 76
#> |   |   |   |   |   |   [55] V3 <= 6 *
#> |   |   |   |   |   |   [56] V3 > 6
#> |   |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   |   [58] V6 > 0 *
#> |   |   [59] V5 > 177 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 150
#> |   |   |   |   [5] V5 <= 1
#> |   |   |   |   |   [6] V5 <= 0 *
#> |   |   |   |   |   [7] V5 > 0 *
#> |   |   |   |   [8] V5 > 1
#> |   |   |   |   |   [9] V3 <= 14
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   |   [12] V3 > 14 *
#> |   |   |   [13] V5 > 150
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V6 <= 0
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V5 <= 170
#> |   |   |   |   |   |   [20] V3 <= 7 *
#> |   |   |   |   |   |   [21] V3 > 7 *
#> |   |   |   |   |   [22] V5 > 170 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V3 <= 5
#> |   |   |   |   |   |   [25] V7 <= 140 *
#> |   |   |   |   |   |   [26] V7 > 140 *
#> |   |   |   |   |   [27] V3 > 5
#> |   |   |   |   |   |   [28] V3 <= 12 *
#> |   |   |   |   |   |   [29] V3 > 12 *
#> |   |   |   [30] V6 > 0
#> |   |   |   |   [31] V5 <= 58
#> |   |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   |   [33] V3 <= 6 *
#> |   |   |   |   |   |   [34] V3 > 6 *
#> |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   |   [37] V3 > 3
#> |   |   |   |   |   |   |   [38] V3 <= 7 *
#> |   |   |   |   |   |   |   [39] V3 > 7
#> |   |   |   |   |   |   |   |   [40] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [41] V7 > 129
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 15 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 15 *
#> |   |   |   |   [44] V5 > 58
#> |   |   |   |   |   [45] V2 <= 62 *
#> |   |   |   |   |   [46] V2 > 62 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V7 <= 145
#> |   |   |   |   [50] V7 <= 114 *
#> |   |   |   |   [51] V7 > 114 *
#> |   |   |   [52] V7 > 145
#> |   |   |   |   [53] V5 <= 43 *
#> |   |   |   |   [54] V5 > 43 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V5 <= 173
#> |   |   |   |   [57] V4 <= 0
#> |   |   |   |   |   [58] V7 <= 107 *
#> |   |   |   |   |   [59] V7 > 107
#> |   |   |   |   |   |   [60] V3 <= 2 *
#> |   |   |   |   |   |   [61] V3 > 2 *
#> |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   [63] V5 <= 7
#> |   |   |   |   |   |   [64] V7 <= 150 *
#> |   |   |   |   |   |   [65] V7 > 150 *
#> |   |   |   |   |   [66] V5 > 7 *
#> |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V2 <= 38 *
#> |   |   |   |   [6] V2 > 38
#> |   |   |   |   |   [7] V4 <= 0 *
#> |   |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   |   [9] V3 <= 15
#> |   |   |   |   |   |   |   [10] V3 <= 7
#> |   |   |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   |   |   |   [13] V3 > 7 *
#> |   |   |   |   |   |   [14] V3 > 15 *
#> |   |   |   [15] V2 > 55
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V2 <= 62 *
#> |   |   |   |   |   [18] V2 > 62
#> |   |   |   |   |   |   [19] V3 <= 6
#> |   |   |   |   |   |   |   [20] V5 <= 9 *
#> |   |   |   |   |   |   |   [21] V5 > 9 *
#> |   |   |   |   |   |   [22] V3 > 6 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V7 <= 127 *
#> |   |   |   |   |   |   [26] V7 > 127
#> |   |   |   |   |   |   |   [27] V2 <= 71
#> |   |   |   |   |   |   |   |   [28] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 3 *
#> |   |   |   |   |   |   |   |   [31] V3 > 13 *
#> |   |   |   |   |   |   |   [32] V2 > 71 *
#> |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   [34] V2 <= 61
#> |   |   |   |   |   |   |   [35] V7 <= 116 *
#> |   |   |   |   |   |   |   [36] V7 > 116 *
#> |   |   |   |   |   |   [37] V2 > 61
#> |   |   |   |   |   |   |   [38] V3 <= 7 *
#> |   |   |   |   |   |   |   [39] V3 > 7
#> |   |   |   |   |   |   |   |   [40] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [41] V3 > 13 *
#> |   |   [42] V5 > 170 *
#> |   [43] V2 > 74
#> |   |   [44] V7 <= 126
#> |   |   |   [45] V5 <= 7
#> |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   [47] V3 > 4 *
#> |   |   |   [48] V5 > 7 *
#> |   |   [49] V7 > 126
#> |   |   |   [50] V2 <= 79
#> |   |   |   |   [51] V3 <= 9
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   |   [54] V3 > 9 *
#> |   |   |   [55] V2 > 79
#> |   |   |   |   [56] V4 <= 0
#> |   |   |   |   |   [57] V7 <= 132 *
#> |   |   |   |   |   [58] V7 > 132
#> |   |   |   |   |   |   [59] V5 <= 165
#> |   |   |   |   |   |   |   [60] V5 <= 8 *
#> |   |   |   |   |   |   |   [61] V5 > 8 *
#> |   |   |   |   |   |   [62] V5 > 165 *
#> |   |   |   |   [63] V4 > 0 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 70
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 50 *
#> |   |   |   |   [6] V2 > 50
#> |   |   |   |   |   [7] V7 <= 100 *
#> |   |   |   |   |   [8] V7 > 100
#> |   |   |   |   |   |   [9] V5 <= 13 *
#> |   |   |   |   |   |   [10] V5 > 13 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V5 <= 2 *
#> |   |   |   |   |   [14] V5 > 2
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   [18] V3 <= 3 *
#> |   |   |   |   |   [19] V3 > 3
#> |   |   |   |   |   |   [20] V5 <= 3
#> |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   |   [23] V5 > 3
#> |   |   |   |   |   |   |   [24] V3 <= 12
#> |   |   |   |   |   |   |   |   [25] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [26] V2 > 61 *
#> |   |   |   |   |   |   |   [27] V3 > 12
#> |   |   |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   [30] V2 > 70
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V2 <= 80
#> |   |   |   |   |   [33] V7 <= 128 *
#> |   |   |   |   |   [34] V7 > 128 *
#> |   |   |   |   [35] V2 > 80
#> |   |   |   |   |   [36] V5 <= 115
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0 *
#> |   |   |   |   |   [39] V5 > 115 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   [43] V5 > 0
#> |   |   |   |   |   |   [44] V7 <= 150 *
#> |   |   |   |   |   |   [45] V7 > 150 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   [48] V3 > 4
#> |   |   |   |   |   |   [49] V3 <= 13
#> |   |   |   |   |   |   |   [50] V2 <= 77 *
#> |   |   |   |   |   |   |   [51] V2 > 77 *
#> |   |   |   |   |   |   [52] V3 > 13 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1
#> |   |   |   |   |   |   [8] V3 <= 6 *
#> |   |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V7 <= 166
#> |   |   |   |   |   |   [12] V7 <= 124
#> |   |   |   |   |   |   |   [13] V3 <= 3 *
#> |   |   |   |   |   |   |   [14] V3 > 3
#> |   |   |   |   |   |   |   |   [15] V7 <= 106 *
#> |   |   |   |   |   |   |   |   [16] V7 > 106
#> |   |   |   |   |   |   |   |   |   [17] V5 <= 6 *
#> |   |   |   |   |   |   |   |   |   [18] V5 > 6 *
#> |   |   |   |   |   |   [19] V7 > 124
#> |   |   |   |   |   |   |   [20] V2 <= 54
#> |   |   |   |   |   |   |   |   [21] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [22] V2 > 46 *
#> |   |   |   |   |   |   |   [23] V2 > 54
#> |   |   |   |   |   |   |   |   [24] V2 <= 64
#> |   |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   |   |   |   [27] V2 > 64
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 69
#> |   |   |   |   |   |   |   |   |   |   [29] V7 <= 142 *
#> |   |   |   |   |   |   |   |   |   |   [30] V7 > 142 *
#> |   |   |   |   |   |   |   |   |   [31] V2 > 69 *
#> |   |   |   |   |   [32] V7 > 166
#> |   |   |   |   |   |   [33] V2 <= 71
#> |   |   |   |   |   |   |   [34] V5 <= 2 *
#> |   |   |   |   |   |   |   [35] V5 > 2 *
#> |   |   |   |   |   |   [36] V2 > 71 *
#> |   |   |   [37] V5 > 16
#> |   |   |   |   [38] V2 <= 64 *
#> |   |   |   |   [39] V2 > 64 *
#> |   |   [40] V5 > 170
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   [44] V3 > 3 *
#> |   [45] V2 > 74
#> |   |   [46] V2 <= 89
#> |   |   |   [47] V6 <= 0
#> |   |   |   |   [48] V5 <= 168
#> |   |   |   |   |   [49] V7 <= 130
#> |   |   |   |   |   |   [50] V5 <= 8 *
#> |   |   |   |   |   |   [51] V5 > 8 *
#> |   |   |   |   |   [52] V7 > 130
#> |   |   |   |   |   |   [53] V4 <= 0 *
#> |   |   |   |   |   |   [54] V4 > 0 *
#> |   |   |   |   [55] V5 > 168 *
#> |   |   |   [56] V6 > 0
#> |   |   |   |   [57] V2 <= 83
#> |   |   |   |   |   [58] V5 <= 9
#> |   |   |   |   |   |   [59] V4 <= 0 *
#> |   |   |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   |   |   [61] V7 <= 150 *
#> |   |   |   |   |   |   |   [62] V7 > 150 *
#> |   |   |   |   |   [63] V5 > 9 *
#> |   |   |   |   [64] V2 > 83
#> |   |   |   |   |   [65] V5 <= 74 *
#> |   |   |   |   |   [66] V5 > 74 *
#> |   |   [67] V2 > 89 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V7 <= 110 *
#> |   |   |   |   |   [7] V7 > 110
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V7 <= 152 *
#> |   |   |   |   |   |   |   [10] V7 > 152 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V7 <= 135 *
#> |   |   |   |   |   |   |   [13] V7 > 135 *
#> |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   [15] V4 <= 0
#> |   |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   |   [17] V3 > 3 *
#> |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   [19] V6 <= 0
#> |   |   |   |   |   |   |   [20] V2 <= 63
#> |   |   |   |   |   |   |   |   [21] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [22] V2 > 58 *
#> |   |   |   |   |   |   |   [23] V2 > 63
#> |   |   |   |   |   |   |   |   [24] V3 <= 12
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [26] V3 > 5 *
#> |   |   |   |   |   |   |   |   [27] V3 > 12 *
#> |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   [29] V7 <= 133
#> |   |   |   |   |   |   |   |   [30] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [31] V5 > 1 *
#> |   |   |   |   |   |   |   [32] V7 > 133
#> |   |   |   |   |   |   |   |   [33] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [34] V5 <= 5
#> |   |   |   |   |   |   |   |   |   |   [35] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   |   [36] V7 > 149 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 5 *
#> |   |   |   |   |   |   |   |   [38] V3 > 13 *
#> |   |   |   [39] V5 > 16 *
#> |   |   [40] V5 > 169 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 168
#> |   |   |   [43] V6 <= 0
#> |   |   |   |   [44] V4 <= 0 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V5 <= 2 *
#> |   |   |   |   |   [47] V5 > 2 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V3 <= 4
#> |   |   |   |   |   [50] V7 <= 125 *
#> |   |   |   |   |   [51] V7 > 125 *
#> |   |   |   |   [52] V3 > 4
#> |   |   |   |   |   [53] V5 <= 13
#> |   |   |   |   |   |   [54] V3 <= 8 *
#> |   |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   |   [56] V5 > 13 *
#> |   |   [57] V5 > 168
#> |   |   |   [58] V7 <= 150 *
#> |   |   |   [59] V7 > 150 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V3 <= 6
#> |   |   |   |   |   |   [10] V7 <= 130 *
#> |   |   |   |   |   |   [11] V7 > 130 *
#> |   |   |   |   |   [12] V3 > 6 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   [15] V5 > 2
#> |   |   |   |   |   |   [16] V3 <= 9
#> |   |   |   |   |   |   |   [17] V2 <= 80
#> |   |   |   |   |   |   |   |   [18] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [19] V2 > 75 *
#> |   |   |   |   |   |   |   [20] V2 > 80 *
#> |   |   |   |   |   |   [21] V3 > 9 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 71
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   [26] V7 <= 127 *
#> |   |   |   |   |   |   [27] V7 > 127
#> |   |   |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   |   |   [29] V3 > 3 *
#> |   |   |   |   |   [30] V5 > 3
#> |   |   |   |   |   |   [31] V3 <= 12 *
#> |   |   |   |   |   |   [32] V3 > 12 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V3 <= 2 *
#> |   |   |   |   |   [35] V3 > 2
#> |   |   |   |   |   |   [36] V7 <= 150
#> |   |   |   |   |   |   |   [37] V7 <= 138
#> |   |   |   |   |   |   |   |   [38] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [39] V3 > 9 *
#> |   |   |   |   |   |   |   [40] V7 > 138
#> |   |   |   |   |   |   |   |   [41] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [42] V3 > 9 *
#> |   |   |   |   |   |   [43] V7 > 150
#> |   |   |   |   |   |   |   [44] V7 <= 170 *
#> |   |   |   |   |   |   |   [45] V7 > 170 *
#> |   |   |   [46] V2 > 71
#> |   |   |   |   [47] V7 <= 126
#> |   |   |   |   |   [48] V3 <= 6 *
#> |   |   |   |   |   [49] V3 > 6 *
#> |   |   |   |   [50] V7 > 126
#> |   |   |   |   |   [51] V5 <= 7
#> |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   [54] V5 > 7 *
#> |   [55] V5 > 173
#> |   |   [56] V3 <= 3
#> |   |   |   [57] V7 <= 150 *
#> |   |   |   [58] V7 > 150 *
#> |   |   [59] V3 > 3 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 61
#> |   |   |   |   [5] V5 <= 8 *
#> |   |   |   |   [6] V5 > 8 *
#> |   |   |   [7] V2 > 61
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 8 *
#> |   |   |   |   |   [10] V5 > 8 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V2 <= 84
#> |   |   |   |   |   |   [13] V3 <= 6
#> |   |   |   |   |   |   |   [14] V2 <= 71 *
#> |   |   |   |   |   |   |   [15] V2 > 71 *
#> |   |   |   |   |   |   [16] V3 > 6 *
#> |   |   |   |   |   [17] V2 > 84 *
#> |   |   [18] V5 > 170
#> |   |   |   [19] V2 <= 50 *
#> |   |   |   [20] V2 > 50 *
#> |   [21] V4 > 0
#> |   |   [22] V2 <= 76
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V3 <= 4
#> |   |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   |   [26] V3 > 2 *
#> |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   [28] V2 <= 61
#> |   |   |   |   |   |   [29] V7 <= 166
#> |   |   |   |   |   |   |   [30] V3 <= 8 *
#> |   |   |   |   |   |   |   [31] V3 > 8 *
#> |   |   |   |   |   |   [32] V7 > 166 *
#> |   |   |   |   |   [33] V2 > 61
#> |   |   |   |   |   |   [34] V2 <= 72 *
#> |   |   |   |   |   |   [35] V2 > 72 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V5 <= 0
#> |   |   |   |   |   [38] V2 <= 58 *
#> |   |   |   |   |   [39] V2 > 58
#> |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   [41] V3 > 4 *
#> |   |   |   |   [42] V5 > 0
#> |   |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   |   [44] V3 > 3
#> |   |   |   |   |   |   [45] V7 <= 132
#> |   |   |   |   |   |   |   [46] V7 <= 114 *
#> |   |   |   |   |   |   |   [47] V7 > 114 *
#> |   |   |   |   |   |   [48] V7 > 132
#> |   |   |   |   |   |   |   [49] V2 <= 63 *
#> |   |   |   |   |   |   |   [50] V2 > 63 *
#> |   |   [51] V2 > 76
#> |   |   |   [52] V5 <= 7
#> |   |   |   |   [53] V7 <= 150
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V7 > 150 *
#> |   |   |   [57] V5 > 7 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 70
#> |   |   |   [4] V2 <= 48
#> |   |   |   |   [5] V2 <= 45 *
#> |   |   |   |   [6] V2 > 45 *
#> |   |   |   [7] V2 > 48
#> |   |   |   |   [8] V3 <= 1 *
#> |   |   |   |   [9] V3 > 1
#> |   |   |   |   |   [10] V3 <= 7
#> |   |   |   |   |   |   [11] V5 <= 169 *
#> |   |   |   |   |   |   [12] V5 > 169 *
#> |   |   |   |   |   [13] V3 > 7
#> |   |   |   |   |   |   [14] V7 <= 140 *
#> |   |   |   |   |   |   [15] V7 > 140 *
#> |   |   [16] V2 > 70
#> |   |   |   [17] V3 <= 7
#> |   |   |   |   [18] V5 <= 173
#> |   |   |   |   |   [19] V5 <= 5 *
#> |   |   |   |   |   [20] V5 > 5
#> |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   [23] V5 > 173
#> |   |   |   |   |   [24] V3 <= 2 *
#> |   |   |   |   |   [25] V3 > 2 *
#> |   |   |   [26] V3 > 7
#> |   |   |   |   [27] V5 <= 177 *
#> |   |   |   |   [28] V5 > 177 *
#> |   [29] V4 > 0
#> |   |   [30] V5 <= 9
#> |   |   |   [31] V2 <= 73
#> |   |   |   |   [32] V2 <= 54
#> |   |   |   |   |   [33] V5 <= 4
#> |   |   |   |   |   |   [34] V2 <= 41 *
#> |   |   |   |   |   |   [35] V2 > 41
#> |   |   |   |   |   |   |   [36] V7 <= 150 *
#> |   |   |   |   |   |   |   [37] V7 > 150 *
#> |   |   |   |   |   [38] V5 > 4 *
#> |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   [41] V5 <= 7
#> |   |   |   |   |   |   |   [42] V2 <= 68
#> |   |   |   |   |   |   |   |   [43] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [44] V2 > 61 *
#> |   |   |   |   |   |   |   [45] V2 > 68 *
#> |   |   |   |   |   |   [46] V5 > 7 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V2 <= 71
#> |   |   |   |   |   |   |   [49] V5 <= 2
#> |   |   |   |   |   |   |   |   [50] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [51] V5 > 0 *
#> |   |   |   |   |   |   |   [52] V5 > 2 *
#> |   |   |   |   |   |   [53] V2 > 71 *
#> |   |   |   [54] V2 > 73
#> |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   [58] V3 > 4
#> |   |   |   |   |   |   [59] V3 <= 8 *
#> |   |   |   |   |   |   [60] V3 > 8 *
#> |   |   [61] V5 > 9
#> |   |   |   [62] V3 <= 13 *
#> |   |   |   [63] V3 > 13
#> |   |   |   |   [64] V5 <= 12 *
#> |   |   |   |   [65] V5 > 12 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 78
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 106 *
#> |   |   |   |   [6] V7 > 106
#> |   |   |   |   |   [7] V7 <= 158
#> |   |   |   |   |   |   [8] V5 <= 123 *
#> |   |   |   |   |   |   [9] V5 > 123
#> |   |   |   |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   |   |   |   [11] V3 > 2 *
#> |   |   |   |   |   [12] V7 > 158 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V5 <= 8
#> |   |   |   |   |   [15] V2 <= 66
#> |   |   |   |   |   |   [16] V5 <= 1 *
#> |   |   |   |   |   |   [17] V5 > 1 *
#> |   |   |   |   |   [18] V2 > 66 *
#> |   |   |   |   [19] V5 > 8
#> |   |   |   |   |   [20] V7 <= 131 *
#> |   |   |   |   |   [21] V7 > 131 *
#> |   |   [22] V2 > 78
#> |   |   |   [23] V5 <= 177
#> |   |   |   |   [24] V5 <= 14
#> |   |   |   |   |   [25] V5 <= 4 *
#> |   |   |   |   |   [26] V5 > 4 *
#> |   |   |   |   [27] V5 > 14 *
#> |   |   |   [28] V5 > 177 *
#> |   [29] V6 > 0
#> |   |   [30] V2 <= 73
#> |   |   |   [31] V7 <= 93 *
#> |   |   |   [32] V7 > 93
#> |   |   |   |   [33] V2 <= 59
#> |   |   |   |   |   [34] V4 <= 0
#> |   |   |   |   |   |   [35] V2 <= 48 *
#> |   |   |   |   |   |   [36] V2 > 48 *
#> |   |   |   |   |   [37] V4 > 0
#> |   |   |   |   |   |   [38] V7 <= 120 *
#> |   |   |   |   |   |   [39] V7 > 120
#> |   |   |   |   |   |   |   [40] V2 <= 55 *
#> |   |   |   |   |   |   |   [41] V2 > 55 *
#> |   |   |   |   [42] V2 > 59
#> |   |   |   |   |   [43] V5 <= 152
#> |   |   |   |   |   |   [44] V5 <= 14
#> |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   |   |   [47] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 64
#> |   |   |   |   |   |   |   |   |   |   [51] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [52] V3 > 12 *
#> |   |   |   |   |   |   [53] V5 > 14 *
#> |   |   |   |   |   [54] V5 > 152 *
#> |   |   [55] V2 > 73
#> |   |   |   [56] V5 <= 169
#> |   |   |   |   [57] V3 <= 4
#> |   |   |   |   |   [58] V4 <= 0 *
#> |   |   |   |   |   [59] V4 > 0 *
#> |   |   |   |   [60] V3 > 4
#> |   |   |   |   |   [61] V5 <= 0 *
#> |   |   |   |   |   [62] V5 > 0
#> |   |   |   |   |   |   [63] V7 <= 128 *
#> |   |   |   |   |   |   [64] V7 > 128
#> |   |   |   |   |   |   |   [65] V5 <= 12 *
#> |   |   |   |   |   |   |   [66] V5 > 12 *
#> |   |   |   [67] V5 > 169 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V7 <= 173
#> |   |   |   |   |   |   [7] V5 <= 11
#> |   |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   |   [9] V7 > 120
#> |   |   |   |   |   |   |   |   [10] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [11] V2 > 46
#> |   |   |   |   |   |   |   |   |   [12] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   [13] V2 > 55 *
#> |   |   |   |   |   |   [14] V5 > 11 *
#> |   |   |   |   |   [15] V7 > 173 *
#> |   |   |   |   [16] V2 > 62
#> |   |   |   |   |   [17] V5 <= 8 *
#> |   |   |   |   |   [18] V5 > 8 *
#> |   |   |   [19] V6 > 0
#> |   |   |   |   [20] V4 <= 0 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V3 <= 11
#> |   |   |   |   |   |   [23] V2 <= 55 *
#> |   |   |   |   |   |   [24] V2 > 55
#> |   |   |   |   |   |   |   [25] V3 <= 5 *
#> |   |   |   |   |   |   |   [26] V3 > 5 *
#> |   |   |   |   |   [27] V3 > 11 *
#> |   |   [28] V5 > 170
#> |   |   |   [29] V6 <= 0 *
#> |   |   |   [30] V6 > 0 *
#> |   [31] V2 > 67
#> |   |   [32] V5 <= 177
#> |   |   |   [33] V3 <= 6
#> |   |   |   |   [34] V2 <= 81
#> |   |   |   |   |   [35] V4 <= 0
#> |   |   |   |   |   |   [36] V5 <= 85
#> |   |   |   |   |   |   |   [37] V7 <= 125 *
#> |   |   |   |   |   |   |   [38] V7 > 125 *
#> |   |   |   |   |   |   [39] V5 > 85 *
#> |   |   |   |   |   [40] V4 > 0
#> |   |   |   |   |   |   [41] V5 <= 0 *
#> |   |   |   |   |   |   [42] V5 > 0 *
#> |   |   |   |   [43] V2 > 81
#> |   |   |   |   |   [44] V3 <= 4
#> |   |   |   |   |   |   [45] V7 <= 155 *
#> |   |   |   |   |   |   [46] V7 > 155 *
#> |   |   |   |   |   [47] V3 > 4 *
#> |   |   |   [48] V3 > 6
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   [51] V6 > 0 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V7 <= 141
#> |   |   |   |   |   |   [54] V5 <= 11
#> |   |   |   |   |   |   |   [55] V3 <= 9 *
#> |   |   |   |   |   |   |   [56] V3 > 9
#> |   |   |   |   |   |   |   |   [57] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [58] V5 > 8 *
#> |   |   |   |   |   |   [59] V5 > 11 *
#> |   |   |   |   |   [60] V7 > 141
#> |   |   |   |   |   |   [61] V6 <= 0 *
#> |   |   |   |   |   |   [62] V6 > 0 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 5 *
#> |   |   |   |   |   [7] V3 > 5 *
#> |   |   |   |   [8] V2 > 62
#> |   |   |   |   |   [9] V3 <= 6 *
#> |   |   |   |   |   [10] V3 > 6 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V7 <= 156 *
#> |   |   |   |   |   |   [15] V7 > 156 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V7 <= 122 *
#> |   |   |   |   |   |   [18] V7 > 122 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V5 <= 0
#> |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V3 <= 4 *
#> |   |   |   |   |   |   |   [24] V3 > 4 *
#> |   |   |   |   |   [25] V5 > 0
#> |   |   |   |   |   |   [26] V2 <= 58 *
#> |   |   |   |   |   |   [27] V2 > 58
#> |   |   |   |   |   |   |   [28] V3 <= 13
#> |   |   |   |   |   |   |   |   [29] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   [31] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   |   [32] V2 > 63 *
#> |   |   |   |   |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   |   |   |   |   |   [34] V7 > 160 *
#> |   |   |   |   |   |   |   [35] V3 > 13
#> |   |   |   |   |   |   |   |   [36] V3 <= 15 *
#> |   |   |   |   |   |   |   |   [37] V3 > 15 *
#> |   |   [38] V5 > 170 *
#> |   [39] V2 > 72
#> |   |   [40] V7 <= 97 *
#> |   |   [41] V7 > 97
#> |   |   |   [42] V2 <= 87
#> |   |   |   |   [43] V5 <= 173
#> |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   [47] V3 <= 7
#> |   |   |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [49] V3 > 3 *
#> |   |   |   |   |   |   |   [50] V3 > 7 *
#> |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   [52] V5 <= 3
#> |   |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   |   [54] V5 > 0 *
#> |   |   |   |   |   |   [55] V5 > 3
#> |   |   |   |   |   |   |   [56] V3 <= 13 *
#> |   |   |   |   |   |   |   [57] V3 > 13 *
#> |   |   |   |   [58] V5 > 173
#> |   |   |   |   |   [59] V3 <= 6
#> |   |   |   |   |   |   [60] V7 <= 170 *
#> |   |   |   |   |   |   [61] V7 > 170 *
#> |   |   |   |   |   [62] V3 > 6 *
#> |   |   |   [63] V2 > 87 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V7 <= 139
#> |   |   |   |   [5] V2 <= 62 *
#> |   |   |   |   [6] V2 > 62
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V5 <= 6 *
#> |   |   |   |   |   |   [9] V5 > 6 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V7 <= 118 *
#> |   |   |   |   |   |   [12] V7 > 118 *
#> |   |   |   [13] V7 > 139
#> |   |   |   |   [14] V2 <= 64 *
#> |   |   |   |   [15] V2 > 64
#> |   |   |   |   |   [16] V3 <= 7
#> |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   [18] V3 > 4 *
#> |   |   |   |   |   [19] V3 > 7 *
#> |   |   [20] V5 > 170
#> |   |   |   [21] V3 <= 3
#> |   |   |   |   [22] V3 <= 2
#> |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   [25] V3 > 2 *
#> |   |   |   [26] V3 > 3 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 76
#> |   |   |   [29] V5 <= 3
#> |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   [31] V2 <= 68
#> |   |   |   |   |   |   [32] V2 <= 47 *
#> |   |   |   |   |   |   [33] V2 > 47 *
#> |   |   |   |   |   [34] V2 > 68 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   [37] V3 > 3
#> |   |   |   |   |   |   [38] V2 <= 53 *
#> |   |   |   |   |   |   [39] V2 > 53
#> |   |   |   |   |   |   |   [40] V3 <= 5 *
#> |   |   |   |   |   |   |   [41] V3 > 5
#> |   |   |   |   |   |   |   |   [42] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [43] V7 > 120 *
#> |   |   |   [44] V5 > 3
#> |   |   |   |   [45] V7 <= 140
#> |   |   |   |   |   [46] V5 <= 9
#> |   |   |   |   |   |   [47] V7 <= 122 *
#> |   |   |   |   |   |   [48] V7 > 122 *
#> |   |   |   |   |   [49] V5 > 9 *
#> |   |   |   |   [50] V7 > 140
#> |   |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   |   [52] V5 <= 10 *
#> |   |   |   |   |   |   [53] V5 > 10 *
#> |   |   |   |   |   [54] V6 > 0 *
#> |   |   [55] V2 > 76
#> |   |   |   [56] V3 <= 8
#> |   |   |   |   [57] V7 <= 112 *
#> |   |   |   |   [58] V7 > 112 *
#> |   |   |   [59] V3 > 8
#> |   |   |   |   [60] V7 <= 138 *
#> |   |   |   |   [61] V7 > 138 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V2 > 62 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 99 *
#> |   |   |   |   [11] V5 > 99
#> |   |   |   |   |   [12] V3 <= 7 *
#> |   |   |   |   |   [13] V3 > 7 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V2 <= 55
#> |   |   |   |   [16] V7 <= 148
#> |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   [19] V3 <= 5 *
#> |   |   |   |   |   |   [20] V3 > 5 *
#> |   |   |   |   [21] V7 > 148
#> |   |   |   |   |   [22] V2 <= 51 *
#> |   |   |   |   |   [23] V2 > 51 *
#> |   |   |   [24] V2 > 55
#> |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   [26] V5 <= 5 *
#> |   |   |   |   |   [27] V5 > 5 *
#> |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   [29] V3 <= 5 *
#> |   |   |   |   |   [30] V3 > 5
#> |   |   |   |   |   |   [31] V7 <= 141 *
#> |   |   |   |   |   |   [32] V7 > 141 *
#> |   [33] V2 > 66
#> |   |   [34] V6 <= 0
#> |   |   |   [35] V5 <= 177
#> |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   [37] V5 <= 126
#> |   |   |   |   |   |   [38] V5 <= 8 *
#> |   |   |   |   |   |   [39] V5 > 8 *
#> |   |   |   |   |   [40] V5 > 126 *
#> |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   [42] V5 <= 2 *
#> |   |   |   |   |   [43] V5 > 2
#> |   |   |   |   |   |   [44] V2 <= 73 *
#> |   |   |   |   |   |   [45] V2 > 73 *
#> |   |   |   [46] V5 > 177 *
#> |   |   [47] V6 > 0
#> |   |   |   [48] V4 <= 0
#> |   |   |   |   [49] V7 <= 106 *
#> |   |   |   |   [50] V7 > 106
#> |   |   |   |   |   [51] V2 <= 80
#> |   |   |   |   |   |   [52] V5 <= 173
#> |   |   |   |   |   |   |   [53] V3 <= 7
#> |   |   |   |   |   |   |   |   [54] V2 <= 72 *
#> |   |   |   |   |   |   |   |   [55] V2 > 72 *
#> |   |   |   |   |   |   |   [56] V3 > 7 *
#> |   |   |   |   |   |   [57] V5 > 173 *
#> |   |   |   |   |   [58] V2 > 80 *
#> |   |   |   [59] V4 > 0
#> |   |   |   |   [60] V7 <= 160
#> |   |   |   |   |   [61] V3 <= 14
#> |   |   |   |   |   |   [62] V2 <= 74 *
#> |   |   |   |   |   |   [63] V2 > 74
#> |   |   |   |   |   |   |   [64] V3 <= 4 *
#> |   |   |   |   |   |   |   [65] V3 > 4 *
#> |   |   |   |   |   [66] V3 > 14 *
#> |   |   |   |   [67] V7 > 160 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1
#> |   |   |   |   |   |   [8] V3 <= 6 *
#> |   |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V3 <= 11
#> |   |   |   |   |   |   |   [13] V5 <= 7
#> |   |   |   |   |   |   |   |   [14] V5 <= 2
#> |   |   |   |   |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [16] V3 > 3 *
#> |   |   |   |   |   |   |   |   [17] V5 > 2 *
#> |   |   |   |   |   |   |   [18] V5 > 7 *
#> |   |   |   |   |   |   [19] V3 > 11 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V5 <= 0
#> |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   [23] V3 > 3 *
#> |   |   |   |   |   |   [24] V5 > 0
#> |   |   |   |   |   |   |   [25] V7 <= 110 *
#> |   |   |   |   |   |   |   [26] V7 > 110
#> |   |   |   |   |   |   |   |   [27] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [28] V7 > 130
#> |   |   |   |   |   |   |   |   |   [29] V2 <= 58 *
#> |   |   |   |   |   |   |   |   |   [30] V2 > 58 *
#> |   |   |   [31] V5 > 13 *
#> |   |   [32] V2 > 71
#> |   |   |   [33] V4 <= 0
#> |   |   |   |   [34] V7 <= 114 *
#> |   |   |   |   [35] V7 > 114
#> |   |   |   |   |   [36] V7 <= 170
#> |   |   |   |   |   |   [37] V2 <= 82
#> |   |   |   |   |   |   |   [38] V5 <= 8 *
#> |   |   |   |   |   |   |   [39] V5 > 8 *
#> |   |   |   |   |   |   [40] V2 > 82 *
#> |   |   |   |   |   [41] V7 > 170 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V5 <= 8
#> |   |   |   |   |   [44] V7 <= 130
#> |   |   |   |   |   |   [45] V2 <= 80 *
#> |   |   |   |   |   |   [46] V2 > 80 *
#> |   |   |   |   |   [47] V7 > 130
#> |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   [49] V3 > 4 *
#> |   |   |   |   [50] V5 > 8 *
#> |   [51] V5 > 173
#> |   |   [52] V3 <= 3
#> |   |   |   [53] V3 <= 2
#> |   |   |   |   [54] V3 <= 1 *
#> |   |   |   |   [55] V3 > 1 *
#> |   |   |   [56] V3 > 2 *
#> |   |   [57] V3 > 3 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 120
#> |   |   |   |   |   [6] V2 <= 61 *
#> |   |   |   |   |   [7] V2 > 61 *
#> |   |   |   |   [8] V7 > 120
#> |   |   |   |   |   [9] V3 <= 8
#> |   |   |   |   |   |   [10] V2 <= 60 *
#> |   |   |   |   |   |   [11] V2 > 60 *
#> |   |   |   |   |   [12] V3 > 8 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   [15] V2 <= 62
#> |   |   |   |   |   |   [16] V7 <= 125 *
#> |   |   |   |   |   |   [17] V7 > 125
#> |   |   |   |   |   |   |   [18] V2 <= 52 *
#> |   |   |   |   |   |   |   [19] V2 > 52 *
#> |   |   |   |   |   [20] V2 > 62
#> |   |   |   |   |   |   [21] V7 <= 160
#> |   |   |   |   |   |   |   [22] V2 <= 67 *
#> |   |   |   |   |   |   |   [23] V2 > 67 *
#> |   |   |   |   |   |   [24] V7 > 160 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V2 <= 54
#> |   |   |   |   |   |   [27] V5 <= 0 *
#> |   |   |   |   |   |   [28] V5 > 0 *
#> |   |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   |   [31] V3 > 3
#> |   |   |   |   |   |   |   [32] V7 <= 133
#> |   |   |   |   |   |   |   |   [33] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [34] V2 > 58 *
#> |   |   |   |   |   |   |   [35] V7 > 133
#> |   |   |   |   |   |   |   |   [36] V2 <= 68
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 57 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 57 *
#> |   |   |   |   |   |   |   |   [39] V2 > 68 *
#> |   |   [40] V2 > 74
#> |   |   |   [41] V6 <= 0
#> |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   [43] V3 <= 4 *
#> |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V7 <= 110 *
#> |   |   |   |   |   [51] V7 > 110
#> |   |   |   |   |   |   [52] V3 <= 7 *
#> |   |   |   |   |   |   [53] V3 > 7 *
#> |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   [55] V2 <= 76 *
#> |   |   |   |   |   [56] V2 > 76
#> |   |   |   |   |   |   [57] V5 <= 7
#> |   |   |   |   |   |   |   [58] V2 <= 84 *
#> |   |   |   |   |   |   |   [59] V2 > 84 *
#> |   |   |   |   |   |   [60] V5 > 7 *
#> |   [61] V5 > 173 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V2 <= 62
#> |   |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   |   [8] V5 > 1
#> |   |   |   |   |   |   |   [9] V3 <= 5 *
#> |   |   |   |   |   |   |   [10] V3 > 5
#> |   |   |   |   |   |   |   |   [11] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [12] V7 > 140 *
#> |   |   |   |   |   [13] V2 > 62
#> |   |   |   |   |   |   [14] V5 <= 3 *
#> |   |   |   |   |   |   [15] V5 > 3 *
#> |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   [17] V4 <= 0 *
#> |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   [19] V3 <= 2 *
#> |   |   |   |   |   |   [20] V3 > 2
#> |   |   |   |   |   |   |   [21] V3 <= 9
#> |   |   |   |   |   |   |   |   [22] V7 <= 115 *
#> |   |   |   |   |   |   |   |   [23] V7 > 115
#> |   |   |   |   |   |   |   |   |   [24] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   [25] V2 > 55 *
#> |   |   |   |   |   |   |   [26] V3 > 9
#> |   |   |   |   |   |   |   |   [27] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [28] V3 > 13 *
#> |   |   |   [29] V5 > 16 *
#> |   |   [30] V5 > 170
#> |   |   |   [31] V6 <= 0 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V3 <= 4 *
#> |   |   |   |   [34] V3 > 4 *
#> |   [35] V2 > 70
#> |   |   [36] V5 <= 173
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V5 <= 128
#> |   |   |   |   |   [39] V7 <= 114
#> |   |   |   |   |   |   [40] V5 <= 16 *
#> |   |   |   |   |   |   [41] V5 > 16 *
#> |   |   |   |   |   [42] V7 > 114
#> |   |   |   |   |   |   [43] V2 <= 82
#> |   |   |   |   |   |   |   [44] V5 <= 9 *
#> |   |   |   |   |   |   |   [45] V5 > 9 *
#> |   |   |   |   |   |   [46] V2 > 82 *
#> |   |   |   |   [47] V5 > 128 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V3 <= 4 *
#> |   |   |   |   [50] V3 > 4
#> |   |   |   |   |   [51] V3 <= 19
#> |   |   |   |   |   |   [52] V2 <= 77
#> |   |   |   |   |   |   |   [53] V2 <= 74 *
#> |   |   |   |   |   |   |   [54] V2 > 74 *
#> |   |   |   |   |   |   [55] V2 > 77
#> |   |   |   |   |   |   |   [56] V3 <= 6 *
#> |   |   |   |   |   |   |   [57] V3 > 6 *
#> |   |   |   |   |   [58] V3 > 19 *
#> |   |   [59] V5 > 173 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V2 <= 73
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 52
#> |   |   |   |   [5] V5 <= 174 *
#> |   |   |   |   [6] V5 > 174 *
#> |   |   |   [7] V2 > 52
#> |   |   |   |   [8] V5 <= 150
#> |   |   |   |   |   [9] V2 <= 62 *
#> |   |   |   |   |   [10] V2 > 62
#> |   |   |   |   |   |   [11] V7 <= 145
#> |   |   |   |   |   |   |   [12] V3 <= 6 *
#> |   |   |   |   |   |   |   [13] V3 > 6 *
#> |   |   |   |   |   |   [14] V7 > 145 *
#> |   |   |   |   [15] V5 > 150
#> |   |   |   |   |   [16] V3 <= 8
#> |   |   |   |   |   |   [17] V3 <= 5 *
#> |   |   |   |   |   |   [18] V3 > 5 *
#> |   |   |   |   |   [19] V3 > 8 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 93 *
#> |   |   |   [22] V7 > 93
#> |   |   |   |   [23] V3 <= 1 *
#> |   |   |   |   [24] V3 > 1
#> |   |   |   |   |   [25] V5 <= 1
#> |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   [27] V3 <= 4 *
#> |   |   |   |   |   |   |   [28] V3 > 4 *
#> |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   [30] V2 <= 59 *
#> |   |   |   |   |   |   |   [31] V2 > 59 *
#> |   |   |   |   |   [32] V5 > 1
#> |   |   |   |   |   |   [33] V7 <= 160
#> |   |   |   |   |   |   |   [34] V2 <= 54 *
#> |   |   |   |   |   |   |   [35] V2 > 54
#> |   |   |   |   |   |   |   |   [36] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [38] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [39] V3 > 12 *
#> |   |   |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [41] V3 <= 14
#> |   |   |   |   |   |   |   |   |   |   |   [42] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   |   [43] V5 > 7 *
#> |   |   |   |   |   |   |   |   |   |   [44] V3 > 14 *
#> |   |   |   |   |   |   |   |   [45] V2 > 71 *
#> |   |   |   |   |   |   [46] V7 > 160
#> |   |   |   |   |   |   |   [47] V5 <= 4 *
#> |   |   |   |   |   |   |   [48] V5 > 4 *
#> |   [49] V2 > 73
#> |   |   [50] V6 <= 0
#> |   |   |   [51] V2 <= 81
#> |   |   |   |   [52] V7 <= 160 *
#> |   |   |   |   [53] V7 > 160 *
#> |   |   |   [54] V2 > 81
#> |   |   |   |   [55] V2 <= 87 *
#> |   |   |   |   [56] V2 > 87 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V2 <= 89
#> |   |   |   |   [59] V5 <= 173
#> |   |   |   |   |   [60] V5 <= 0 *
#> |   |   |   |   |   [61] V5 > 0
#> |   |   |   |   |   |   [62] V5 <= 12
#> |   |   |   |   |   |   |   [63] V5 <= 8
#> |   |   |   |   |   |   |   |   [64] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [65] V4 > 0 *
#> |   |   |   |   |   |   |   [66] V5 > 8 *
#> |   |   |   |   |   |   [67] V5 > 12 *
#> |   |   |   |   [68] V5 > 173 *
#> |   |   |   [69] V2 > 89 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 70
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V5 <= 16 *
#> |   |   |   |   |   |   [9] V5 > 16 *
#> |   |   |   |   [10] V2 > 62 *
#> |   |   |   [11] V5 > 170 *
#> |   |   [12] V2 > 70
#> |   |   |   [13] V5 <= 173
#> |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   [15] V2 <= 76 *
#> |   |   |   |   |   [16] V2 > 76
#> |   |   |   |   |   |   [17] V2 <= 83 *
#> |   |   |   |   |   |   [18] V2 > 83 *
#> |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   [20] V3 <= 7
#> |   |   |   |   |   |   [21] V3 <= 4 *
#> |   |   |   |   |   |   [22] V3 > 4 *
#> |   |   |   |   |   [23] V3 > 7 *
#> |   |   |   [24] V5 > 173
#> |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   [26] V6 > 0 *
#> |   [27] V4 > 0
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V5 <= 8
#> |   |   |   |   [30] V2 <= 71
#> |   |   |   |   |   [31] V7 <= 162
#> |   |   |   |   |   |   [32] V7 <= 151
#> |   |   |   |   |   |   |   [33] V2 <= 61 *
#> |   |   |   |   |   |   |   [34] V2 > 61 *
#> |   |   |   |   |   |   [35] V7 > 151 *
#> |   |   |   |   |   [36] V7 > 162 *
#> |   |   |   |   [37] V2 > 71 *
#> |   |   |   [38] V5 > 8
#> |   |   |   |   [39] V3 <= 12 *
#> |   |   |   |   [40] V3 > 12
#> |   |   |   |   |   [41] V3 <= 15 *
#> |   |   |   |   |   [42] V3 > 15 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V5 <= 0
#> |   |   |   |   [45] V7 <= 143
#> |   |   |   |   |   [46] V2 <= 76 *
#> |   |   |   |   |   [47] V2 > 76 *
#> |   |   |   |   [48] V7 > 143 *
#> |   |   |   [49] V5 > 0
#> |   |   |   |   [50] V2 <= 72
#> |   |   |   |   |   [51] V2 <= 54 *
#> |   |   |   |   |   [52] V2 > 54
#> |   |   |   |   |   |   [53] V2 <= 61 *
#> |   |   |   |   |   |   [54] V2 > 61
#> |   |   |   |   |   |   |   [55] V3 <= 13
#> |   |   |   |   |   |   |   |   [56] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [57] V5 > 7 *
#> |   |   |   |   |   |   |   [58] V3 > 13 *
#> |   |   |   |   [59] V2 > 72
#> |   |   |   |   |   [60] V7 <= 130 *
#> |   |   |   |   |   [61] V7 > 130 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V2 <= 55 *
#> |   |   |   |   |   [7] V2 > 55 *
#> |   |   |   |   [8] V2 > 64
#> |   |   |   |   |   [9] V5 <= 11 *
#> |   |   |   |   |   [10] V5 > 11 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V5 <= 1
#> |   |   |   |   |   |   [14] V5 <= 0 *
#> |   |   |   |   |   |   [15] V5 > 0 *
#> |   |   |   |   |   [16] V5 > 1
#> |   |   |   |   |   |   [17] V5 <= 8 *
#> |   |   |   |   |   |   [18] V5 > 8 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V3 <= 18
#> |   |   |   |   |   |   [21] V3 <= 13
#> |   |   |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   |   |   [23] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [24] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [25] V2 > 67 *
#> |   |   |   |   |   |   |   |   [26] V5 > 3 *
#> |   |   |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   |   |   [28] V2 <= 69
#> |   |   |   |   |   |   |   |   |   [29] V7 <= 162
#> |   |   |   |   |   |   |   |   |   |   [30] V2 <= 64
#> |   |   |   |   |   |   |   |   |   |   |   [31] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   |   [32] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   |   [33] V2 > 64 *
#> |   |   |   |   |   |   |   |   |   [34] V7 > 162 *
#> |   |   |   |   |   |   |   |   [35] V2 > 69 *
#> |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   |   [37] V3 > 18 *
#> |   |   [38] V2 > 74
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V5 <= 115
#> |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   [43] V2 <= 84
#> |   |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   |   |   [46] V2 > 84 *
#> |   |   |   |   [47] V5 > 115 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V5 <= 6
#> |   |   |   |   |   |   [52] V7 <= 130 *
#> |   |   |   |   |   |   [53] V7 > 130 *
#> |   |   |   |   |   [54] V5 > 6 *
#> |   [55] V5 > 173
#> |   |   [56] V2 <= 79 *
#> |   |   [57] V2 > 79 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 165
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64 *
#> |   |   |   |   [6] V2 > 64
#> |   |   |   |   |   [7] V2 <= 82 *
#> |   |   |   |   |   [8] V2 > 82 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 70
#> |   |   |   |   |   [11] V5 <= 10
#> |   |   |   |   |   |   [12] V3 <= 3 *
#> |   |   |   |   |   |   [13] V3 > 3
#> |   |   |   |   |   |   |   [14] V7 <= 153
#> |   |   |   |   |   |   |   |   [15] V2 <= 61
#> |   |   |   |   |   |   |   |   |   [16] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [17] V5 > 7 *
#> |   |   |   |   |   |   |   |   [18] V2 > 61 *
#> |   |   |   |   |   |   |   [19] V7 > 153 *
#> |   |   |   |   |   [20] V5 > 10 *
#> |   |   |   |   [21] V2 > 70
#> |   |   |   |   |   [22] V2 <= 80
#> |   |   |   |   |   |   [23] V2 <= 73 *
#> |   |   |   |   |   |   [24] V2 > 73 *
#> |   |   |   |   |   [25] V2 > 80 *
#> |   |   [26] V5 > 165
#> |   |   |   [27] V2 <= 74 *
#> |   |   |   [28] V2 > 74 *
#> |   [29] V6 > 0
#> |   |   [30] V5 <= 169
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V3 <= 7
#> |   |   |   |   |   [33] V3 <= 1 *
#> |   |   |   |   |   [34] V3 > 1
#> |   |   |   |   |   |   [35] V2 <= 73 *
#> |   |   |   |   |   |   [36] V2 > 73
#> |   |   |   |   |   |   |   [37] V7 <= 125 *
#> |   |   |   |   |   |   |   [38] V7 > 125 *
#> |   |   |   |   [39] V3 > 7 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V2 <= 72
#> |   |   |   |   |   [42] V7 <= 110 *
#> |   |   |   |   |   [43] V7 > 110
#> |   |   |   |   |   |   [44] V7 <= 132
#> |   |   |   |   |   |   |   [45] V5 <= 8 *
#> |   |   |   |   |   |   |   [46] V5 > 8 *
#> |   |   |   |   |   |   [47] V7 > 132
#> |   |   |   |   |   |   |   [48] V3 <= 13
#> |   |   |   |   |   |   |   |   [49] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [50] V2 > 55
#> |   |   |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   |   |   [53] V3 > 13 *
#> |   |   |   |   [54] V2 > 72
#> |   |   |   |   |   [55] V7 <= 120 *
#> |   |   |   |   |   [56] V7 > 120
#> |   |   |   |   |   |   [57] V2 <= 77 *
#> |   |   |   |   |   |   [58] V2 > 77 *
#> |   |   [59] V5 > 169
#> |   |   |   [60] V2 <= 50 *
#> |   |   |   [61] V2 > 50 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V2 > 64
#> |   |   |   |   |   [9] V7 <= 130 *
#> |   |   |   |   |   [10] V7 > 130 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V7 <= 128
#> |   |   |   |   |   [13] V5 <= 8 *
#> |   |   |   |   |   [14] V5 > 8 *
#> |   |   |   |   [15] V7 > 128
#> |   |   |   |   |   [16] V2 <= 61 *
#> |   |   |   |   |   [17] V2 > 61
#> |   |   |   |   |   |   [18] V7 <= 140 *
#> |   |   |   |   |   |   [19] V7 > 140
#> |   |   |   |   |   |   |   [20] V5 <= 6 *
#> |   |   |   |   |   |   |   [21] V5 > 6 *
#> |   |   [22] V5 > 173
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V7 <= 160 *
#> |   |   |   |   [25] V7 > 160 *
#> |   |   |   [26] V6 > 0 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 72
#> |   |   |   [29] V2 <= 55
#> |   |   |   |   [30] V3 <= 13
#> |   |   |   |   |   [31] V7 <= 154
#> |   |   |   |   |   |   [32] V2 <= 41 *
#> |   |   |   |   |   |   [33] V2 > 41
#> |   |   |   |   |   |   |   [34] V5 <= 1 *
#> |   |   |   |   |   |   |   [35] V5 > 1 *
#> |   |   |   |   |   [36] V7 > 154 *
#> |   |   |   |   [37] V3 > 13 *
#> |   |   |   [38] V2 > 55
#> |   |   |   |   [39] V6 <= 0
#> |   |   |   |   |   [40] V5 <= 5
#> |   |   |   |   |   |   [41] V5 <= 2 *
#> |   |   |   |   |   |   [42] V5 > 2 *
#> |   |   |   |   |   [43] V5 > 5 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V3 <= 3 *
#> |   |   |   |   |   [46] V3 > 3
#> |   |   |   |   |   |   [47] V3 <= 6 *
#> |   |   |   |   |   |   [48] V3 > 6
#> |   |   |   |   |   |   |   [49] V5 <= 9
#> |   |   |   |   |   |   |   |   [50] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [51] V2 > 61 *
#> |   |   |   |   |   |   |   [52] V5 > 9 *
#> |   |   [53] V2 > 72
#> |   |   |   [54] V2 <= 76
#> |   |   |   |   [55] V3 <= 4 *
#> |   |   |   |   [56] V3 > 4 *
#> |   |   |   [57] V2 > 76
#> |   |   |   |   [58] V5 <= 0 *
#> |   |   |   |   [59] V5 > 0
#> |   |   |   |   |   [60] V7 <= 120 *
#> |   |   |   |   |   [61] V7 > 120
#> |   |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   |   [63] V6 > 0 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V2 <= 73
#> |   |   [3] V7 <= 114
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V3 <= 8 *
#> |   |   |   |   [7] V3 > 8 *
#> |   |   [8] V7 > 114
#> |   |   |   [9] V4 <= 0
#> |   |   |   |   [10] V3 <= 1 *
#> |   |   |   |   [11] V3 > 1
#> |   |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   |   [13] V5 <= 150 *
#> |   |   |   |   |   |   [14] V5 > 150 *
#> |   |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   |   [16] V2 <= 56 *
#> |   |   |   |   |   |   [17] V2 > 56
#> |   |   |   |   |   |   |   [18] V5 <= 170
#> |   |   |   |   |   |   |   |   [19] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [20] V3 > 7 *
#> |   |   |   |   |   |   |   [21] V5 > 170 *
#> |   |   |   [22] V4 > 0
#> |   |   |   |   [23] V5 <= 3
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V2 <= 62
#> |   |   |   |   |   |   |   [26] V2 <= 52 *
#> |   |   |   |   |   |   |   [27] V2 > 52 *
#> |   |   |   |   |   |   [28] V2 > 62 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V3 <= 6
#> |   |   |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   |   |   [32] V3 > 3 *
#> |   |   |   |   |   |   [33] V3 > 6 *
#> |   |   |   |   [34] V5 > 3
#> |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   [36] V2 <= 63 *
#> |   |   |   |   |   |   [37] V2 > 63 *
#> |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   [39] V3 <= 16
#> |   |   |   |   |   |   |   [40] V7 <= 135 *
#> |   |   |   |   |   |   |   [41] V7 > 135 *
#> |   |   |   |   |   |   [42] V3 > 16 *
#> |   [43] V2 > 73
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   [47] V5 <= 126 *
#> |   |   |   |   |   [48] V5 > 126 *
#> |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   [50] V2 <= 82
#> |   |   |   |   |   |   [51] V5 <= 8 *
#> |   |   |   |   |   |   [52] V5 > 8 *
#> |   |   |   |   |   [53] V2 > 82 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V5 <= 5
#> |   |   |   |   |   [56] V5 <= 1
#> |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   |   [59] V2 <= 79 *
#> |   |   |   |   |   |   |   [60] V2 > 79 *
#> |   |   |   |   |   [61] V5 > 1 *
#> |   |   |   |   [62] V5 > 5
#> |   |   |   |   |   [63] V6 <= 0 *
#> |   |   |   |   |   [64] V6 > 0 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 118 *
#> |   |   |   |   [6] V7 > 118
#> |   |   |   |   |   [7] V5 <= 16
#> |   |   |   |   |   |   [8] V2 <= 70 *
#> |   |   |   |   |   |   [9] V2 > 70 *
#> |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 6
#> |   |   |   |   |   [13] V5 <= 1 *
#> |   |   |   |   |   [14] V5 > 1 *
#> |   |   |   |   [15] V5 > 6
#> |   |   |   |   |   [16] V2 <= 69 *
#> |   |   |   |   |   [17] V2 > 69
#> |   |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   |   [19] V3 > 7 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 72
#> |   |   |   |   [22] V2 <= 55
#> |   |   |   |   |   [23] V3 <= 15
#> |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   [25] V2 <= 48 *
#> |   |   |   |   |   |   |   [26] V2 > 48 *
#> |   |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   |   [28] V3 <= 7 *
#> |   |   |   |   |   |   |   [29] V3 > 7 *
#> |   |   |   |   |   [30] V3 > 15 *
#> |   |   |   |   [31] V2 > 55
#> |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   [33] V5 <= 3 *
#> |   |   |   |   |   |   [34] V5 > 3
#> |   |   |   |   |   |   |   [35] V5 <= 10 *
#> |   |   |   |   |   |   |   [36] V5 > 10 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V2 <= 59 *
#> |   |   |   |   |   |   [39] V2 > 59
#> |   |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   |   [41] V3 > 4
#> |   |   |   |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V5 > 0
#> |   |   |   |   |   |   |   |   |   [44] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   [45] V7 > 120 *
#> |   |   |   [46] V2 > 72
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V5 <= 7 *
#> |   |   |   |   |   [49] V5 > 7 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   [52] V3 > 4
#> |   |   |   |   |   |   [53] V3 <= 12
#> |   |   |   |   |   |   |   [54] V3 <= 8 *
#> |   |   |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   |   |   [56] V3 > 12 *
#> |   [57] V5 > 173
#> |   |   [58] V2 <= 83
#> |   |   |   [59] V3 <= 3
#> |   |   |   |   [60] V3 <= 2 *
#> |   |   |   |   [61] V3 > 2 *
#> |   |   |   [62] V3 > 3 *
#> |   |   [63] V2 > 83 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 128
#> |   |   |   |   [5] V3 <= 9
#> |   |   |   |   |   [6] V2 <= 70
#> |   |   |   |   |   |   [7] V7 <= 105 *
#> |   |   |   |   |   |   [8] V7 > 105 *
#> |   |   |   |   |   [9] V2 > 70
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V5 <= 10
#> |   |   |   |   |   |   |   |   [13] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [14] V5 > 4 *
#> |   |   |   |   |   |   |   [15] V5 > 10 *
#> |   |   |   |   [16] V3 > 9 *
#> |   |   |   [17] V5 > 128 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 71
#> |   |   |   |   [20] V2 <= 54
#> |   |   |   |   |   [21] V2 <= 43 *
#> |   |   |   |   |   [22] V2 > 43
#> |   |   |   |   |   |   [23] V5 <= 8
#> |   |   |   |   |   |   |   [24] V3 <= 4 *
#> |   |   |   |   |   |   |   [25] V3 > 4 *
#> |   |   |   |   |   |   [26] V5 > 8 *
#> |   |   |   |   [27] V2 > 54
#> |   |   |   |   |   [28] V7 <= 102 *
#> |   |   |   |   |   [29] V7 > 102
#> |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   [31] V5 <= 8
#> |   |   |   |   |   |   |   |   [32] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [33] V2 > 62
#> |   |   |   |   |   |   |   |   |   [34] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [35] V7 > 130 *
#> |   |   |   |   |   |   |   [36] V5 > 8 *
#> |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   [38] V3 <= 9
#> |   |   |   |   |   |   |   |   [39] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [40] V2 > 60 *
#> |   |   |   |   |   |   |   [41] V3 > 9
#> |   |   |   |   |   |   |   |   [42] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [43] V2 > 59 *
#> |   |   |   [44] V2 > 71
#> |   |   |   |   [45] V3 <= 2 *
#> |   |   |   |   [46] V3 > 2
#> |   |   |   |   |   [47] V5 <= 11
#> |   |   |   |   |   |   [48] V2 <= 79
#> |   |   |   |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   |   |   |   [50] V5 > 0
#> |   |   |   |   |   |   |   |   [51] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [52] V2 > 75 *
#> |   |   |   |   |   |   [53] V2 > 79
#> |   |   |   |   |   |   |   [54] V3 <= 5 *
#> |   |   |   |   |   |   |   [55] V3 > 5 *
#> |   |   |   |   |   [56] V5 > 11 *
#> |   [57] V5 > 177 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 118 *
#> |   |   |   |   [6] V7 > 118
#> |   |   |   |   |   [7] V5 <= 16
#> |   |   |   |   |   |   [8] V5 <= 3 *
#> |   |   |   |   |   |   [9] V5 > 3 *
#> |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 71
#> |   |   |   |   |   [13] V5 <= 3
#> |   |   |   |   |   |   [14] V7 <= 159
#> |   |   |   |   |   |   |   [15] V5 <= 1 *
#> |   |   |   |   |   |   |   [16] V5 > 1 *
#> |   |   |   |   |   |   [17] V7 > 159 *
#> |   |   |   |   |   [18] V5 > 3
#> |   |   |   |   |   |   [19] V2 <= 63
#> |   |   |   |   |   |   |   [20] V7 <= 123 *
#> |   |   |   |   |   |   |   [21] V7 > 123 *
#> |   |   |   |   |   |   [22] V2 > 63 *
#> |   |   |   |   [23] V2 > 71
#> |   |   |   |   |   [24] V7 <= 125 *
#> |   |   |   |   |   [25] V7 > 125 *
#> |   |   [26] V6 > 0
#> |   |   |   [27] V4 <= 0
#> |   |   |   |   [28] V5 <= 7
#> |   |   |   |   |   [29] V2 <= 69 *
#> |   |   |   |   |   [30] V2 > 69 *
#> |   |   |   |   [31] V5 > 7
#> |   |   |   |   |   [32] V7 <= 160
#> |   |   |   |   |   |   [33] V2 <= 64 *
#> |   |   |   |   |   |   [34] V2 > 64
#> |   |   |   |   |   |   |   [35] V7 <= 140 *
#> |   |   |   |   |   |   |   [36] V7 > 140 *
#> |   |   |   |   |   [37] V7 > 160 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 74
#> |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   [42] V5 <= 4
#> |   |   |   |   |   |   |   [43] V2 <= 58 *
#> |   |   |   |   |   |   |   [44] V2 > 58
#> |   |   |   |   |   |   |   |   [45] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [46] V3 > 7 *
#> |   |   |   |   |   |   [47] V5 > 4
#> |   |   |   |   |   |   |   [48] V3 <= 9 *
#> |   |   |   |   |   |   |   [49] V3 > 9
#> |   |   |   |   |   |   |   |   [50] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [51] V3 > 12
#> |   |   |   |   |   |   |   |   |   [52] V2 <= 56 *
#> |   |   |   |   |   |   |   |   |   [53] V2 > 56 *
#> |   |   |   |   [54] V2 > 74
#> |   |   |   |   |   [55] V7 <= 126 *
#> |   |   |   |   |   [56] V7 > 126
#> |   |   |   |   |   |   [57] V3 <= 13 *
#> |   |   |   |   |   |   [58] V3 > 13 *
#> |   [59] V5 > 173
#> |   |   [60] V2 <= 79 *
#> |   |   [61] V2 > 79 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 7
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V2 <= 73 *
#> |   |   |   |   |   |   [9] V2 > 73 *
#> |   |   |   |   [10] V5 > 7 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V7 <= 124
#> |   |   |   |   |   |   [14] V7 <= 112 *
#> |   |   |   |   |   |   [15] V7 > 112 *
#> |   |   |   |   |   [16] V7 > 124
#> |   |   |   |   |   |   [17] V2 <= 71
#> |   |   |   |   |   |   |   [18] V5 <= 10
#> |   |   |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [20] V7 > 130
#> |   |   |   |   |   |   |   |   |   [21] V2 <= 52 *
#> |   |   |   |   |   |   |   |   |   [22] V2 > 52
#> |   |   |   |   |   |   |   |   |   |   [23] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [24] V3 > 5 *
#> |   |   |   |   |   |   |   [25] V5 > 10 *
#> |   |   |   |   |   |   [26] V2 > 71 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V3 <= 3
#> |   |   |   |   |   |   [29] V2 <= 73 *
#> |   |   |   |   |   |   [30] V2 > 73 *
#> |   |   |   |   |   [31] V3 > 3
#> |   |   |   |   |   |   [32] V5 <= 0
#> |   |   |   |   |   |   |   [33] V7 <= 140 *
#> |   |   |   |   |   |   |   [34] V7 > 140 *
#> |   |   |   |   |   |   [35] V5 > 0
#> |   |   |   |   |   |   |   [36] V5 <= 8
#> |   |   |   |   |   |   |   |   [37] V2 <= 73
#> |   |   |   |   |   |   |   |   |   [38] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [39] V5 > 2 *
#> |   |   |   |   |   |   |   |   [40] V2 > 73 *
#> |   |   |   |   |   |   |   [41] V5 > 8
#> |   |   |   |   |   |   |   |   [42] V3 <= 15
#> |   |   |   |   |   |   |   |   |   [43] V7 <= 146 *
#> |   |   |   |   |   |   |   |   |   [44] V7 > 146 *
#> |   |   |   |   |   |   |   |   [45] V3 > 15 *
#> |   |   [46] V5 > 16
#> |   |   |   [47] V5 <= 152
#> |   |   |   |   [48] V7 <= 150
#> |   |   |   |   |   [49] V5 <= 76 *
#> |   |   |   |   |   [50] V5 > 76 *
#> |   |   |   |   [51] V7 > 150 *
#> |   |   |   [52] V5 > 152 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V2 <= 56
#> |   |   |   |   [5] V5 <= 1
#> |   |   |   |   |   [6] V5 <= 0 *
#> |   |   |   |   |   [7] V5 > 0 *
#> |   |   |   |   [8] V5 > 1
#> |   |   |   |   |   [9] V3 <= 16
#> |   |   |   |   |   |   [10] V3 <= 11
#> |   |   |   |   |   |   |   [11] V4 <= 0 *
#> |   |   |   |   |   |   |   [12] V4 > 0 *
#> |   |   |   |   |   |   [13] V3 > 11 *
#> |   |   |   |   |   [14] V3 > 16 *
#> |   |   |   [15] V2 > 56
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V7 <= 112 *
#> |   |   |   |   |   [18] V7 > 112
#> |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   [20] V7 > 130 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   [25] V2 <= 66
#> |   |   |   |   |   |   |   |   [26] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [27] V3 > 4 *
#> |   |   |   |   |   |   |   [28] V2 > 66 *
#> |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   [30] V2 <= 59 *
#> |   |   |   |   |   |   |   [31] V2 > 59
#> |   |   |   |   |   |   |   |   [32] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [33] V5 > 4
#> |   |   |   |   |   |   |   |   |   [34] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [35] V7 > 140 *
#> |   |   [36] V2 > 72
#> |   |   |   [37] V3 <= 7
#> |   |   |   |   [38] V4 <= 0
#> |   |   |   |   |   [39] V5 <= 125
#> |   |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   [42] V3 <= 2 *
#> |   |   |   |   |   |   |   [43] V3 > 2 *
#> |   |   |   |   |   [44] V5 > 125 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V7 <= 130 *
#> |   |   |   |   |   [47] V7 > 130 *
#> |   |   |   [48] V3 > 7
#> |   |   |   |   [49] V5 <= 14
#> |   |   |   |   |   [50] V3 <= 19
#> |   |   |   |   |   |   [51] V3 <= 12
#> |   |   |   |   |   |   |   [52] V5 <= 1 *
#> |   |   |   |   |   |   |   [53] V5 > 1
#> |   |   |   |   |   |   |   |   [54] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [55] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [56] V7 > 147 *
#> |   |   |   |   |   |   |   |   [57] V5 > 8 *
#> |   |   |   |   |   |   [58] V3 > 12 *
#> |   |   |   |   |   [59] V3 > 19 *
#> |   |   |   |   [60] V5 > 14 *
#> |   [61] V5 > 173
#> |   |   [62] V2 <= 50 *
#> |   |   [63] V2 > 50 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 80
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 170
#> |   |   |   |   |   [6] V2 <= 67
#> |   |   |   |   |   |   [7] V5 <= 13 *
#> |   |   |   |   |   |   [8] V5 > 13 *
#> |   |   |   |   |   [9] V2 > 67 *
#> |   |   |   |   [10] V5 > 170 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 63
#> |   |   |   |   |   [13] V3 <= 8
#> |   |   |   |   |   |   [14] V7 <= 135 *
#> |   |   |   |   |   |   [15] V7 > 135 *
#> |   |   |   |   |   [16] V3 > 8
#> |   |   |   |   |   |   [17] V3 <= 14 *
#> |   |   |   |   |   |   [18] V3 > 14 *
#> |   |   |   |   [19] V2 > 63
#> |   |   |   |   |   [20] V2 <= 73
#> |   |   |   |   |   |   [21] V2 <= 70 *
#> |   |   |   |   |   |   [22] V2 > 70 *
#> |   |   |   |   |   [23] V2 > 73 *
#> |   |   [24] V2 > 80
#> |   |   |   [25] V2 <= 87
#> |   |   |   |   [26] V5 <= 165 *
#> |   |   |   |   [27] V5 > 165 *
#> |   |   |   [28] V2 > 87 *
#> |   [29] V6 > 0
#> |   |   [30] V5 <= 173
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V2 <= 67 *
#> |   |   |   |   [33] V2 > 67
#> |   |   |   |   |   [34] V2 <= 82
#> |   |   |   |   |   |   [35] V5 <= 6 *
#> |   |   |   |   |   |   [36] V5 > 6 *
#> |   |   |   |   |   [37] V2 > 82 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 73
#> |   |   |   |   |   [40] V7 <= 110 *
#> |   |   |   |   |   [41] V7 > 110
#> |   |   |   |   |   |   [42] V7 <= 138
#> |   |   |   |   |   |   |   [43] V7 <= 117 *
#> |   |   |   |   |   |   |   [44] V7 > 117 *
#> |   |   |   |   |   |   [45] V7 > 138
#> |   |   |   |   |   |   |   [46] V2 <= 54 *
#> |   |   |   |   |   |   |   [47] V2 > 54
#> |   |   |   |   |   |   |   |   [48] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [49] V5 > 0
#> |   |   |   |   |   |   |   |   |   [50] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   [51] V3 > 12 *
#> |   |   |   |   [52] V2 > 73
#> |   |   |   |   |   [53] V3 <= 4 *
#> |   |   |   |   |   [54] V3 > 4
#> |   |   |   |   |   |   [55] V3 <= 11 *
#> |   |   |   |   |   |   [56] V3 > 11 *
#> |   |   [57] V5 > 173
#> |   |   |   [58] V2 <= 50 *
#> |   |   |   [59] V2 > 50 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62 *
#> |   |   |   |   [6] V2 > 62
#> |   |   |   |   |   [7] V7 <= 112 *
#> |   |   |   |   |   [8] V7 > 112 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 62
#> |   |   |   |   |   [11] V2 <= 52
#> |   |   |   |   |   |   [12] V5 <= 1 *
#> |   |   |   |   |   |   [13] V5 > 1 *
#> |   |   |   |   |   [14] V2 > 52
#> |   |   |   |   |   |   [15] V2 <= 58 *
#> |   |   |   |   |   |   [16] V2 > 58 *
#> |   |   |   |   [17] V2 > 62
#> |   |   |   |   |   [18] V3 <= 19
#> |   |   |   |   |   |   [19] V3 <= 12
#> |   |   |   |   |   |   |   [20] V3 <= 9
#> |   |   |   |   |   |   |   |   [21] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [22] V3 > 6 *
#> |   |   |   |   |   |   |   [23] V3 > 9 *
#> |   |   |   |   |   |   [24] V3 > 12 *
#> |   |   |   |   |   [25] V3 > 19 *
#> |   |   [26] V6 > 0
#> |   |   |   [27] V2 <= 73
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V2 <= 61 *
#> |   |   |   |   |   [30] V2 > 61
#> |   |   |   |   |   |   [31] V3 <= 6 *
#> |   |   |   |   |   |   [32] V3 > 6 *
#> |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   [34] V2 <= 55
#> |   |   |   |   |   |   [35] V5 <= 4 *
#> |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   [37] V2 > 55
#> |   |   |   |   |   |   [38] V3 <= 3 *
#> |   |   |   |   |   |   [39] V3 > 3
#> |   |   |   |   |   |   |   [40] V3 <= 11
#> |   |   |   |   |   |   |   |   [41] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [42] V2 > 65 *
#> |   |   |   |   |   |   |   [43] V3 > 11 *
#> |   |   |   [44] V2 > 73
#> |   |   |   |   [45] V3 <= 7
#> |   |   |   |   |   [46] V3 <= 1 *
#> |   |   |   |   |   [47] V3 > 1
#> |   |   |   |   |   |   [48] V7 <= 171
#> |   |   |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   |   |   [50] V4 > 0 *
#> |   |   |   |   |   |   [51] V7 > 171 *
#> |   |   |   |   [52] V3 > 7
#> |   |   |   |   |   [53] V5 <= 3 *
#> |   |   |   |   |   [54] V5 > 3
#> |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   [56] V3 > 10 *
#> |   [57] V5 > 173
#> |   |   [58] V6 <= 0
#> |   |   |   [59] V2 <= 79 *
#> |   |   |   [60] V2 > 79 *
#> |   |   [61] V6 > 0 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 63
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 52
#> |   |   |   |   |   |   [10] V5 <= 1 *
#> |   |   |   |   |   |   [11] V5 > 1 *
#> |   |   |   |   |   [12] V2 > 52
#> |   |   |   |   |   |   [13] V5 <= 2 *
#> |   |   |   |   |   |   [14] V5 > 2 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 1
#> |   |   |   |   |   |   [17] V3 <= 2 *
#> |   |   |   |   |   |   [18] V3 > 2 *
#> |   |   |   |   |   [19] V5 > 1
#> |   |   |   |   |   |   [20] V2 <= 54 *
#> |   |   |   |   |   |   [21] V2 > 54 *
#> |   |   [22] V2 > 63
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V7 <= 114
#> |   |   |   |   |   [25] V3 <= 6 *
#> |   |   |   |   |   [26] V3 > 6 *
#> |   |   |   |   [27] V7 > 114
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   |   [30] V3 > 3 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V3 <= 7
#> |   |   |   |   |   |   |   [33] V7 <= 133 *
#> |   |   |   |   |   |   |   [34] V7 > 133
#> |   |   |   |   |   |   |   |   [35] V2 <= 86 *
#> |   |   |   |   |   |   |   |   [36] V2 > 86 *
#> |   |   |   |   |   |   [37] V3 > 7 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 76
#> |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   [41] V5 <= 1 *
#> |   |   |   |   |   |   [42] V5 > 1
#> |   |   |   |   |   |   |   [43] V5 <= 9 *
#> |   |   |   |   |   |   |   [44] V5 > 9 *
#> |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   |   |   [47] V7 <= 150 *
#> |   |   |   |   |   |   |   [48] V7 > 150 *
#> |   |   |   |   |   |   [49] V3 > 13 *
#> |   |   |   |   [50] V2 > 76
#> |   |   |   |   |   [51] V5 <= 3
#> |   |   |   |   |   |   [52] V2 <= 82 *
#> |   |   |   |   |   |   [53] V2 > 82 *
#> |   |   |   |   |   [54] V5 > 3
#> |   |   |   |   |   |   [55] V2 <= 79 *
#> |   |   |   |   |   |   [56] V2 > 79 *
#> |   [57] V5 > 173
#> |   |   [58] V7 <= 150 *
#> |   |   [59] V7 > 150
#> |   |   |   [60] V7 <= 155 *
#> |   |   |   [61] V7 > 155
#> |   |   |   |   [62] V2 <= 77 *
#> |   |   |   |   [63] V2 > 77 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 83
#> |   |   |   |   [5] V5 <= 150
#> |   |   |   |   |   [6] V2 <= 62 *
#> |   |   |   |   |   [7] V2 > 62
#> |   |   |   |   |   |   [8] V5 <= 11 *
#> |   |   |   |   |   |   [9] V5 > 11 *
#> |   |   |   |   [10] V5 > 150
#> |   |   |   |   |   [11] V2 <= 79 *
#> |   |   |   |   |   [12] V2 > 79 *
#> |   |   |   [13] V2 > 83 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V2 <= 62
#> |   |   |   |   [16] V3 <= 8 *
#> |   |   |   |   [17] V3 > 8
#> |   |   |   |   |   [18] V7 <= 131 *
#> |   |   |   |   |   [19] V7 > 131 *
#> |   |   |   [20] V2 > 62
#> |   |   |   |   [21] V2 <= 81
#> |   |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   |   [23] V5 > 0
#> |   |   |   |   |   |   [24] V5 <= 3 *
#> |   |   |   |   |   |   [25] V5 > 3
#> |   |   |   |   |   |   |   [26] V2 <= 67 *
#> |   |   |   |   |   |   |   [27] V2 > 67 *
#> |   |   |   |   [28] V2 > 81 *
#> |   [29] V6 > 0
#> |   |   [30] V2 <= 70
#> |   |   |   [31] V5 <= 99
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V7 <= 139 *
#> |   |   |   |   |   [34] V7 > 139 *
#> |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   [36] V7 <= 110 *
#> |   |   |   |   |   [37] V7 > 110
#> |   |   |   |   |   |   [38] V2 <= 54 *
#> |   |   |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   |   |   [40] V3 <= 13
#> |   |   |   |   |   |   |   |   [41] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 138 *
#> |   |   |   |   |   |   |   |   [44] V3 > 7 *
#> |   |   |   |   |   |   |   [45] V3 > 13 *
#> |   |   |   [46] V5 > 99
#> |   |   |   |   [47] V7 <= 140 *
#> |   |   |   |   [48] V7 > 140 *
#> |   |   [49] V2 > 70
#> |   |   |   [50] V4 <= 0
#> |   |   |   |   [51] V2 <= 76 *
#> |   |   |   |   [52] V2 > 76
#> |   |   |   |   |   [53] V3 <= 7
#> |   |   |   |   |   |   [54] V5 <= 173
#> |   |   |   |   |   |   |   [55] V2 <= 81 *
#> |   |   |   |   |   |   |   [56] V2 > 81 *
#> |   |   |   |   |   |   [57] V5 > 173 *
#> |   |   |   |   |   [58] V3 > 7 *
#> |   |   |   [59] V4 > 0
#> |   |   |   |   [60] V2 <= 76
#> |   |   |   |   |   [61] V7 <= 150 *
#> |   |   |   |   |   [62] V7 > 150 *
#> |   |   |   |   [63] V2 > 76
#> |   |   |   |   |   [64] V5 <= 7
#> |   |   |   |   |   |   [65] V5 <= 1 *
#> |   |   |   |   |   |   [66] V5 > 1 *
#> |   |   |   |   |   [67] V5 > 7 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 1 *
#> |   |   |   |   [6] V3 > 1
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V5 <= 11 *
#> |   |   |   |   |   |   [9] V5 > 11 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 55
#> |   |   |   |   |   [13] V5 <= 6
#> |   |   |   |   |   |   [14] V3 <= 5
#> |   |   |   |   |   |   |   [15] V7 <= 148 *
#> |   |   |   |   |   |   |   [16] V7 > 148 *
#> |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   |   |   |   [18] V5 > 6 *
#> |   |   |   |   [19] V2 > 55
#> |   |   |   |   |   [20] V5 <= 9
#> |   |   |   |   |   |   [21] V5 <= 1
#> |   |   |   |   |   |   |   [22] V5 <= 0
#> |   |   |   |   |   |   |   |   [23] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [24] V7 > 132 *
#> |   |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   |   [26] V5 > 1
#> |   |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   |   [28] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [29] V7 > 142 *
#> |   |   |   |   |   |   |   [30] V6 > 0 *
#> |   |   |   |   |   [31] V5 > 9
#> |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   [34] V2 > 72
#> |   |   |   [35] V6 <= 0
#> |   |   |   |   [36] V7 <= 124 *
#> |   |   |   |   [37] V7 > 124
#> |   |   |   |   |   [38] V4 <= 0 *
#> |   |   |   |   |   [39] V4 > 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V4 <= 0
#> |   |   |   |   |   [42] V7 <= 125 *
#> |   |   |   |   |   [43] V7 > 125
#> |   |   |   |   |   |   [44] V2 <= 76 *
#> |   |   |   |   |   |   [45] V2 > 76 *
#> |   |   |   |   [46] V4 > 0
#> |   |   |   |   |   [47] V7 <= 130
#> |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   [49] V3 > 4 *
#> |   |   |   |   |   [50] V7 > 130
#> |   |   |   |   |   |   [51] V3 <= 10 *
#> |   |   |   |   |   |   [52] V3 > 10 *
#> |   [53] V5 > 173
#> |   |   [54] V3 <= 3
#> |   |   |   [55] V3 <= 2
#> |   |   |   |   [56] V2 <= 68 *
#> |   |   |   |   [57] V2 > 68 *
#> |   |   |   [58] V3 > 2 *
#> |   |   [59] V3 > 3 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V7 <= 114
#> |   |   |   |   |   [9] V3 <= 4 *
#> |   |   |   |   |   [10] V3 > 4 *
#> |   |   |   |   [11] V7 > 114
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V2 <= 75 *
#> |   |   |   |   |   |   [14] V2 > 75 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V2 <= 82
#> |   |   |   |   |   |   |   [17] V2 <= 77 *
#> |   |   |   |   |   |   |   [18] V2 > 77 *
#> |   |   |   |   |   |   [19] V2 > 82 *
#> |   |   [20] V5 > 170
#> |   |   |   [21] V2 <= 83
#> |   |   |   |   [22] V2 <= 79 *
#> |   |   |   |   [23] V2 > 79 *
#> |   |   |   [24] V2 > 83 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V2 <= 79
#> |   |   |   |   [28] V7 <= 111 *
#> |   |   |   |   [29] V7 > 111
#> |   |   |   |   |   [30] V7 <= 123 *
#> |   |   |   |   |   [31] V7 > 123
#> |   |   |   |   |   |   [32] V5 <= 9
#> |   |   |   |   |   |   |   [33] V3 <= 7
#> |   |   |   |   |   |   |   |   [34] V2 <= 65
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 4 *
#> |   |   |   |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   |   |   |   |   [38] V3 > 7 *
#> |   |   |   |   |   |   [39] V5 > 9 *
#> |   |   |   [40] V2 > 79 *
#> |   |   [41] V6 > 0
#> |   |   |   [42] V5 <= 0
#> |   |   |   |   [43] V2 <= 76
#> |   |   |   |   |   [44] V2 <= 55 *
#> |   |   |   |   |   [45] V2 > 55
#> |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   [47] V3 > 4 *
#> |   |   |   |   [48] V2 > 76 *
#> |   |   |   [49] V5 > 0
#> |   |   |   |   [50] V2 <= 73
#> |   |   |   |   |   [51] V7 <= 170
#> |   |   |   |   |   |   [52] V3 <= 11
#> |   |   |   |   |   |   |   [53] V5 <= 4 *
#> |   |   |   |   |   |   |   [54] V5 > 4 *
#> |   |   |   |   |   |   [55] V3 > 11
#> |   |   |   |   |   |   |   [56] V3 <= 14 *
#> |   |   |   |   |   |   |   [57] V3 > 14 *
#> |   |   |   |   |   [58] V7 > 170 *
#> |   |   |   |   [59] V2 > 73
#> |   |   |   |   |   [60] V7 <= 138 *
#> |   |   |   |   |   [61] V7 > 138 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 2.0+  33   2      0          2        0   150
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                                 5.0+  34   5      0          5        0   120
#> 5                               180.0+  35   2      0        180        0   121
#> 6                                 2.0+  35   2      1          1        1   112
#> 7                               180.0+  37   9      0        180        1   151
#> 8                               180.0+  38  13      1          0        1   161
#> 9                               180.0+  36   1      0        180        1   155
#> 10                              180.0+  35   0      0        180        1   119
#> 11                                12.0  38  12      1          8        1   120
#> 12                                5.0+  36   5      1          0        1   115
#> 13                              180.0+  33   6      1          1        1   115
#> 14                              180.0+  38  16      1         10        0   160
#> 15                              180.0+  40  12      1          9        0   153
#> 16                                2.0+  40   2      1          1        1   148
#> 17                              180.0+  42   2      0        180        1   100
#> 18                                5.0+  38   5      1          3        0   125
#> 19                                2.0+  42   2      0          2        0   140
#> 20                              180.0+  40  11      1         10        1   120
#> 21                              180.0+  42   2      0        180        0   100
#> 22                              180.0+  43   4      1          0        1   130
#> 23                              180.0+  42  15      1         13        1   125
#> 24                              180.0+  40   3      1          1        0   170
#> 25                              180.0+  42  12      1         10        1   170
#> 26                                2.0+  43   2      1          1        1   116
#> 27                              180.0+  42   2      0        180        1   124
#> 28                              180.0+  41  10      1          8        0   150
#> 29                              180.0+  44   3      0        180        0   141
#> 30                              180.0+  41  13      1          1        0   140
#> 31                              180.0+  45   9      1          7        0   110
#> 32                              180.0+  45   6      0        180        1   170
#> 33                                5.0+  41   5      1          4        1   141
#> 34                              180.0+  46  15      0        180        0   120
#> 35                              180.0+  46   2      1          1        0   126
#> 36                              180.0+  48  15      0        180        1   160
#> 37                               150.0  45   3      0        150        0   130
#> 38                              180.0+  44   3      1          0        1   180
#> 39                              180.0+  46   7      1          2        0   166
#> 40                              180.0+  43  29      0        180        1   180
#> 41                              180.0+  45   4      1          0        0   124
#> 42                              180.0+  44   0      1          0        1    96
#> 43                              180.0+  45   8      1          0        1   117
#> 44                                5.0+  45   5      0          5        0   141
#> 45                              161.0+  46   2      1          1        1   122
#> 46                              180.0+  46   6      1          0        1   100
#> 47                              180.0+  47   2      0        180        0   108
#> 48                              180.0+  44   9      1          8        1   135
#> 49                                5.0+  46   5      1          3        0   130
#> 50                              180.0+  44   2      0        180        0   142
#> 51                              180.0+  46  15      0        180        1   120
#> 52                              177.0+  45   9      1          0        1   145
#> 53                              180.0+  48   3      0        180        0   154
#> 54                              180.0+  48  12      1         11        0   200
#> 55                              180.0+  47   9      1          6        0   170
#> 56                              180.0+  49   4      0        180        0   117
#> 57                               10.0+  47  10      0         10        1   140
#> 58                              172.0+  50   1      1          0        1   129
#> 59                              180.0+  48   2      1          0        0   184
#> 60                              180.0+  47   7      0        180        0   145
#> 61                              180.0+  50   4      1          1        0   125
#> 62                                 7.0  49   7      1          7        1   110
#> 63                              180.0+  46   3      1          1        1   140
#> 64                              180.0+  46   9      1          9        1   122
#> 65                              180.0+  50   7      0        180        1   110
#> 66                                 2.0  49   2      0          2        0   105
#> 67                              180.0+  52   2      0        180        1   170
#> 68                                4.0+  50   4      0          4        1   100
#> 69                              180.0+  50   1      1          0        0   150
#> 70                              180.0+  49   7      1          4        1    90
#> 71                              180.0+  52   2      0        180        0   155
#> 72                              180.0+  46   3      0        180        1   120
#> 73                              180.0+  50   4      1          1        0   150
#> 74                               88.0+  48  17      1         10        0   111
#> 75                              180.0+  47   2      1          1        0   110
#> 76                              180.0+  49   9      1          3        0   102
#> 77                              180.0+  49  15      0        180        1   160
#> 78                              180.0+  53   5      0        180        1   140
#> 79                              180.0+  54  17      1         12        1   102
#> 80                                77.0  53   5      0         77        0   159
#> 81                              180.0+  54   6      1          3        0   129
#> 82                              180.0+  51   3      1          1        0   140
#> 83                              180.0+  50  10      1          6        0   122
#> 84                              180.0+  50  14      1         13        0   170
#> 85                              180.0+  53   8      1          7        0   160
#> 86                              180.0+  51  25      1          1        0   202
#> 87                              180.0+  49   5      1          2        1   150
#> 88                                85.0  52  14      1          7        1   200
#> 89                              180.0+  48   6      0        180        0   160
#> 90                              166.0+  53   4      1          0        1   156
#> 91                                99.0  51  13      0         99        1   160
#> 92                               16.0+  49  16      0         16        0   125
#> 93                              180.0+  55   3      1          1        0   150
#> 94                              152.0+  54  23      1         10        0   131
#> 95                                7.0+  52   7      1          2        0   154
#> 96                                6.0+  55   6      1          2        1   114
#> 97                              180.0+  54   9      1          1        0   130
#> 98                              180.0+  52   4      0        180        1   180
#> 99                              171.0+  50   5      1          4        1   150
#> 100                             180.0+  54   4      1          0        1   121
#> 101                             180.0+  52   4      0        180        0   183
#> 102                             174.0+  50   3      0        174        1   153
#> 103                               28.0  55  28      1         13        1   160
#> 104                                1.0  49   1      0          1        1   110
#> 105                             180.0+  50   7      1          1        0   156
#> 106                               9.0+  53   9      0          9        1    95
#> 107                             180.0+  53   8      1          0        1   130
#> 108                             180.0+  55   1      0        180        0   127
#> 109                                2.0  55   2      0          2        0   145
#> 110                             180.0+  54   1      0        180        0   162
#> 111                             180.0+  56   3      0        180        1   193
#> 112                             180.0+  56   2      0        180        0   132
#> 113                             180.0+  55   5      1          4        1   120
#> 114                             180.0+  52   8      0        180        0   119
#> 115                             180.0+  54   3      0        180        1   180
#> 116                              16.0+  52  16      0         16        0   152
#> 117                             180.0+  53  10      1          9        0   172
#> 118                               16.0  52  16      1         14        0   170
#> 119                              15.0+  53  15      0         15        1    90
#> 120                             180.0+  53   4      0        180        1   150
#> 121                             180.0+  55   6      0        180        1   100
#> 122                             180.0+  55   6      1          5        1   138
#> 123                              12.0+  54  12      1          0        1   190
#> 124                             134.0+  55   2      0        134        1   140
#> 125                             180.0+  54   3      0        180        0   128
#> 126                                8.0  56   3      0          8        1   139
#> 127                               3.0+  57   3      0          3        0   120
#> 128                             180.0+  54   7      1          2        0   129
#> 129                             180.0+  54   2      1          1        0   135
#> 130                             180.0+  52   9      1          3        0   170
#> 131                              140.0  57   5      1          3        1   138
#> 132                             180.0+  57   1      0        180        1   156
#> 133                              165.0  56   4      1          0        1   140
#> 134                             180.0+  52   2      0        180        0   140
#> 135                             180.0+  55  11      1          7        0   104
#> 136                             180.0+  52  15      1         14        0   130
#> 137                             180.0+  56  14      1         11        0   130
#> 138                             180.0+  53   3      1          0        1   200
#> 139                             180.0+  57  10      0        180        1   170
#> 140                               8.0+  58   8      0          8        1   130
#> 141                             180.0+  54   5      0        180        1   108
#> 142                                0.5  57   0      0          0        1   150
#> 143                             180.0+  53  21      1         13        1   130
#> 144                             180.0+  59   3      1          1        0   172
#> 145                             180.0+  58   6      1          0        1    90
#> 146                             180.0+  53  15      1         10        1   130
#> 147                             171.0+  54  17      1          8        1   227
#> 148                             166.0+  55  13      0        166        1   140
#> 149                               5.0+  56   5      0          5        1   150
#> 150                             180.0+  54  23      1          8        0   120
#> 151                               4.0+  57   4      1          2        1   185
#> 152                             180.0+  57  11      1         10        1   129
#> 153                             180.0+  55   3      1          2        0   140
#> 154                             180.0+  54   7      1          0        1   141
#> 155                               4.0+  56   4      0          4        0   164
#> 156                             180.0+  59  15      1         10        0   140
#> 157                                1.0  58   1      1          1        1   200
#> 158                             180.0+  55   5      1          0        0   140
#> 159                               2.0+  55   2      0          2        0   106
#> 160                             180.0+  57   1      0        180        0   148
#> 161                             180.0+  60  11      1          9        0   106
#> 162                             180.0+  59   3      0        180        0   120
#> 163                             180.0+  58   4      1          0        1   160
#> 164                             180.0+  60   5      1          1        0   138
#> 165                             180.0+  57   5      0        180        1   130
#> 166                             180.0+  58  11      1          9        1   124
#> 167                             180.0+  55   5      1          0        1   160
#> 168                             180.0+  57  10      1          9        0   103
#> 169                               64.0  59   6      1          0        1   140
#> 170                             180.0+  59   5      0        180        1   155
#> 171                             180.0+  59   4      1          0        1   152
#> 172                             180.0+  58  26      1          0        1   189
#> 173                               9.0+  61   9      0          9        1   160
#> 174                             180.0+  58   4      1          3        0   120
#> 175                                0.5  60   0      1          0        1    80
#> 176                             180.0+  59   2      1          1        0   140
#> 177                             161.0+  58   8      0        161        1   140
#> 178                             180.0+  61   4      1          3        0   151
#> 179                             180.0+  61   9      1          8        0   150
#> 180                                3.0  61   3      1          2        1   102
#> 181                                1.0  58   1      0          1        1   100
#> 182                             180.0+  61  20      1         13        0   130
#> 183                             180.0+  57  13      1         10        0   110
#> 184                             180.0+  57   2      1          0        1   116
#> 185                               45.0  56  14      0         45        0   130
#> 186                               19.0  58  19      1         13        1   140
#> 187                             180.0+  56  13      1          6        1   158
#> 188                             180.0+  56  18      1         11        1   165
#> 189                               9.0+  59   9      1          0        1    80
#> 190                             180.0+  55   4      1          3        1   160
#> 191                             172.0+  60  12      1          0        1   114
#> 192                               24.0  55   9      1          7        1   135
#> 193                                8.0  56   8      1          8        0   120
#> 194                               1.0+  57   1      0          1        0   126
#> 195                               15.0  57  15      1         13        1   110
#> 196                             180.0+  59  10      0        180        0   160
#> 197                              13.0+  61  13      0         13        0   210
#> 198                               8.0+  58   8      1          5        0   152
#> 199                             180.0+  62  10      1          0        1   153
#> 200                             180.0+  62   7      1          2        1   180
#> 201                              170.0  61  18      0        170        0   140
#> 202                              169.0  57   7      0        169        0   180
#> 203                               7.0+  60   7      0          7        0   147
#> 204                             180.0+  59  13      1          2        0   198
#> 205                             180.0+  57  12      1          9        1   120
#> 206                             180.0+  62   4      1          0        0   160
#> 207                             180.0+  60  17      1          8        1   140
#> 208                               3.0+  58   3      1          0        1   146
#> 209                             180.0+  62   4      1          3        0   173
#> 210                               30.0  58   2      0         30        0   202
#> 211                             180.0+  59  16      1          9        1   133
#> 212                               28.0  63   6      0         28        1   120
#> 213                              13.0+  61  13      0         13        0   120
#> 214                                5.0  61   5      0          5        1   110
#> 215                               18.0  57  18      1          9        1    93
#> 216                             180.0+  58  11      1          9        0   179
#> 217                             180.0+  57   2      1          1        0   159
#> 218                             180.0+  62  17      1         10        1   180
#> 219                                1.0  62   1      1          0        1   172
#> 220                             180.0+  61   7      0        180        0   135
#> 221                             180.0+  63   4      1          3        0   222
#> 222                             180.0+  62   3      0        180        1   105
#> 223                             180.0+  64   4      0        180        0   130
#> 224                               4.0+  63   4      1          1        0   155
#> 225                             180.0+  60  18      1         13        0   132
#> 226                             180.0+  59   8      0        180        1   140
#> 227                             180.0+  61   9      1          9        1   150
#> 228                             180.0+  58   2      0        180        0   127
#> 229                               84.0  60   7      1          5        1   141
#> 230                             180.0+  59   5      1          1        0   148
#> 231                             180.0+  60   7      1          1        1    90
#> 232                             180.0+  65  13      0        180        1   100
#> 233                                1.0  63   1      0          1        0   162
#> 234                                1.0  63   1      0          1        0   130
#> 235                             180.0+  61  15      1         13        0   170
#> 236                               4.0+  59   4      0          4        0   149
#> 237                              167.0  64  10      1          9        0   160
#> 238                               6.0+  62   6      0          6        0   120
#> 239                               17.0  60   8      0         17        1   130
#> 240                             180.0+  61   6      1          1        1   117
#> 241                               12.0  64  12      1         11        0   160
#> 242                             180.0+  64   6      1          0        1   140
#> 243                              14.0+  63  14      1          9        0   123
#> 244                             180.0+  63   4      1          3        0   162
#> 245                               3.0+  66   3      1          1        0   127
#> 246                               88.0  61  10      1          2        1   194
#> 247                               12.0  63  12      1          9        0   114
#> 248                             180.0+  63   7      0        180        0   120
#> 249                             180.0+  65   8      1          0        0   168
#> 250                             180.0+  65  10      1          8        1   120
#> 251                                0.5  64   0      0          0        1    90
#> 252                             180.0+  60   6      0        180        0   130
#> 253                             180.0+  64  21      1         10        0   190
#> 254                             180.0+  64   9      0        180        0   150
#> 255                             180.0+  61   4      0        180        1   113
#> 256                             180.0+  64   7      0        180        1   120
#> 257                             180.0+  66   6      1          1        1   130
#> 258                                9.0  65   6      0          9        0   112
#> 259                                3.0  65   3      1          0        1    80
#> 260                             180.0+  63   5      1          4        0   170
#> 261                             180.0+  62  13      1         11        0   180
#> 262                              11.0+  67  11      0         11        1   100
#> 263                               2.0+  64   2      0          2        0   201
#> 264                              18.0+  66  18      1          5        0   142
#> 265                             180.0+  62   9      0        180        0   145
#> 266                             180.0+  61  14      1          5        0   140
#> 267                             180.0+  61  15      1         10        0   130
#> 268                               3.0+  63   3      1          2        0   120
#> 269                               15.0  65   8      1          0        1   140
#> 270                             180.0+  65  15      1         11        1   160
#> 271                               5.0+  68   5      1          4        1   150
#> 272                               13.0  64  13      1         12        1   150
#> 273                             179.0+  66   7      1          0        1   115
#> 274                             166.0+  66  13      1          0        0   118
#> 275                              14.0+  64  14      1         13        1   150
#> 276                                3.0  65   3      0          3        0   105
#> 277                               0.5+  64   0      0          0        1   148
#> 278                             180.0+  67   4      1          3        0   130
#> 279                               3.0+  66   3      1          0        1   135
#> 280                             175.0+  65   2      1          1        1   170
#> 281                             180.0+  68   1      0        180        1   166
#> 282                             180.0+  64  10      1          9        1   110
#> 283                               7.0+  63   7      1          0        0   162
#> 284                                8.0  67   8      1          1        1   130
#> 285                                5.0  68   5      0          5        1    90
#> 286                                1.0  64   1      0          1        1   120
#> 287                             180.0+  68  18      0        180        1   260
#> 288                             180.0+  63   8      1          1        1   162
#> 289                               1.0+  63   1      1          0        1   155
#> 290                              11.0+  67  11      0         11        0   150
#> 291                             180.0+  68  11      0        180        0   160
#> 292                               79.0  68  14      0         79        0   172
#> 293                               80.0  66  12      1         10        1   150
#> 294                             180.0+  66  11      1          0        0   100
#> 295                               4.0+  65   4      1          2        1   145
#> 296                               15.0  69  12      0         15        1   140
#> 297                             180.0+  66  15      1         13        1   160
#> 298                             180.0+  63   2      0        180        0   150
#> 299                             180.0+  69   6      0        180        1   100
#> 300                             180.0+  63   8      0        180        1   120
#> 301                             180.0+  68  14      1         13        1   140
#> 302                              175.0  69   1      1          0        0   170
#> 303                               10.0  68  10      1         10        1   150
#> 304                             180.0+  65   1      1          0        0   133
#> 305                             180.0+  67   7      1          4        1   130
#> 306                             180.0+  63   2      1          0        0    99
#> 307                             180.0+  67   2      0        180        0   184
#> 308                                6.0  65   6      0          6        0    80
#> 309                               12.0  67  12      1         12        0   160
#> 310                               99.0  69   6      0         99        1   140
#> 311                             180.0+  65   4      1          1        0   130
#> 312                             180.0+  66   4      0        180        1   130
#> 313                             180.0+  70  15      1         12        1   132
#> 314                              11.0+  64  11      0         11        0   125
#> 315                             180.0+  64   4      0        180        1   140
#> 316                               18.0  67   2      0         18        0   131
#> 317                               7.0+  66   7      1          5        1   131
#> 318                             180.0+  66   4      0        180        0   177
#> 319                             180.0+  68   4      1          0        1   160
#> 320                             180.0+  69  17      1         10        0   140
#> 321                               93.0  69   8      0         93        0   140
#> 322                              21.0+  64  21      0         21        1   155
#> 323                             180.0+  66   6      0        180        0   140
#> 324                                4.0  68   4      0          4        1   190
#> 325                                5.0  71   3      0          5        0   112
#> 326                              150.0  68   7      0        150        0   210
#> 327                             180.0+  71  20      1          0        1   160
#> 328                             180.0+  67   2      0        180        0   128
#> 329                             180.0+  66   9      1          3        1   151
#> 330                             180.0+  70   4      1          0        1   180
#> 331                             180.0+  69   8      0        180        1   153
#> 332                             180.0+  66   4      0        180        0   130
#> 333                             180.0+  68  18      1         14        1   170
#> 334                                0.5  69   0      0          0        1   148
#> 335                             180.0+  68   7      1          0        1   150
#> 336                             180.0+  69   3      1          2        0   151
#> 337                             180.0+  67  14      1         13        0   130
#> 338                              14.0+  65  14      1         13        1   150
#> 339                             180.0+  69   8      0        180        1   180
#> 340                               45.0  71   6      0         45        1   158
#> 341                               3.0+  69   3      0          3        1   130
#> 342                             180.0+  70  22      1         13        0   103
#> 343                             180.0+  68   6      0        180        0   145
#> 344                             180.0+  69   8      1          5        1   195
#> 345                               97.0  69   6      1          4        1   174
#> 346                             180.0+  72   3      1          0        1   132
#> 347                               8.0+  69   8      1          7        1   108
#> 348                               2.0+  66   2      1          1        0   123
#> 349                             180.0+  69  19      0        180        0   130
#> 350                               18.0  68  18      0         18        1   100
#> 351                             180.0+  69  11      1          0        1   120
#> 352                             180.0+  66   2      0        180        0   130
#> 353                                7.0  67   7      1          4        0   122
#> 354                             180.0+  69   4      1          3        0   132
#> 355                              13.0+  67  13      1          9        0   130
#> 356                              123.0  70   3      0        123        0   130
#> 357                             180.0+  72   5      1          4        0   170
#> 358                               19.0  68   3      0         19        0   135
#> 359                             180.0+  67  12      1          8        0   120
#> 360                                1.0  67   1      0          1        1    60
#> 361                               60.0  67   4      0         60        1   136
#> 362                             180.0+  67   8      1          0        1   130
#> 363                              132.0  72  13      1         11        1   195
#> 364                               7.0+  70   7      0          7        0   102
#> 365                                9.0  71   6      0          9        0   120
#> 366                             180.0+  70  11      0        180        1   210
#> 367                               12.0  72  12      1         10        0   170
#> 368                             180.0+  67   8      0        180        1   170
#> 369                             180.0+  67   9      0        180        0   158
#> 370                              152.0  73  13      0        152        1   130
#> 371                             180.0+  70   5      0        180        0   150
#> 372                             180.0+  68  23      0        180        1   220
#> 373                             180.0+  70   3      0        180        0   121
#> 374                             180.0+  71   3      1          2        0   150
#> 375                             180.0+  68   4      1          3        0   210
#> 376                              16.0+  69  16      1         10        1   140
#> 377                             180.0+  69   8      1          1        0   164
#> 378                             180.0+  68   7      0        180        1   130
#> 379                              16.0+  72  16      1          1        1   130
#> 380                             180.0+  70   4      0        180        0   180
#> 381                             180.0+  69   1      1          0        0   155
#> 382                             180.0+  72   8      1          1        1   150
#> 383                             180.0+  71   2      1          0        1   180
#> 384                               7.0+  73   7      0          7        1   140
#> 385                              13.0+  70  13      1          9        0   100
#> 386                             180.0+  72   6      0        180        1   130
#> 387                             180.0+  73   0      0        180        1   161
#> 388                             180.0+  74   8      1          0        1    85
#> 389                             180.0+  73   4      0        180        1   154
#> 390                             180.0+  71  15      1         11        0   165
#> 391                               20.0  74  20      0         20        1   180
#> 392                             180.0+  68   9      0        180        1   120
#> 393                               20.0  71  20      1         10        0   140
#> 394                                0.5  74   0      1          0        1    90
#> 395                             180.0+  73   3      1          0        1   136
#> 396                             180.0+  71  17      1         11        0   160
#> 397                                3.0  71   3      1          2        1   190
#> 398                               12.0  69  12      1          1        1   149
#> 399                             180.0+  70  26      1         11        1   120
#> 400                               58.0  73   4      0         58        1   160
#> 401                             180.0+  72   5      1          3        1   160
#> 402                             180.0+  70   3      0        180        1   154
#> 403                             180.0+  73   6      0        180        0   110
#> 404                             180.0+  72  15      1          0        1   150
#> 405                             180.0+  71   7      1          2        0   143
#> 406                             180.0+  72   8      1          0        1   140
#> 407                                2.0  69   2      1          1        1    80
#> 408                              14.0+  71  14      1         13        1   170
#> 409                             180.0+  74   7      1          0        1   117
#> 410                             180.0+  72  15      1         13        0   156
#> 411                               8.0+  70   8      0          8        0   120
#> 412                             179.0+  71  10      1          9        1   120
#> 413                             180.0+  73  10      1          9        1   146
#> 414                              159.0  72  10      1          9        1   160
#> 415                               10.0  71   2      0         10        1   112
#> 416                                1.0  73   1      0          1        1    80
#> 417                             180.0+  75   9      1          7        0   140
#> 418                               13.0  75  13      1          1        1   130
#> 419                             180.0+  71  11      1          8        0   110
#> 420                             180.0+  72  15      1         12        1   120
#> 421                               10.0  73  10      1          8        0   120
#> 422                             104.0+  70   7      1          4        0   184
#> 423                                1.0  72   1      1          1        0   168
#> 424                               57.0  72   7      0         57        1   145
#> 425                               11.0  72  11      0         11        1   140
#> 426                               3.0+  70   3      0          3        0   150
#> 427                             180.0+  72   2      0        180        0   120
#> 428                             180.0+  75   1      0        180        1   140
#> 429                             180.0+  71   3      1          0        0   144
#> 430                             180.0+  73   5      0        180        0   126
#> 431                               34.0  74  34      1          8        1   233
#> 432                             180.0+  76   3      1          0        1   120
#> 433                             177.0+  71  32      1         12        1   107
#> 434                             180.0+  72   5      0        180        0   154
#> 435                              11.0+  77  11      0         11        1   150
#> 436                             180.0+  75   3      1          1        0   180
#> 437                                7.0  72   7      1          2        0   142
#> 438                              15.0+  73  15      0         15        1   160
#> 439                               10.0  73  10      1         10        0   124
#> 440                             180.0+  76   1      0        180        0   114
#> 441                             180.0+  74   2      1          1        0   140
#> 442                             180.0+  76   8      1          0        1   141
#> 443                                6.0  73   6      0          6        1   114
#> 444                             180.0+  74   2      0        180        0   190
#> 445                               85.0  72   4      0         85        1   120
#> 446                              17.0+  76  17      1          0        1   200
#> 447                             174.0+  76  13      1         10        0   110
#> 448                                4.0  75   4      1          0        1   122
#> 449                                7.0  75   7      0          7        0   190
#> 450                             180.0+  73  13      1         11        0   195
#> 451                             180.0+  74   8      1          0        1   105
#> 452                               46.0  75   4      1          2        1   188
#> 453                             180.0+  74   6      0        180        0   160
#> 454                                4.0  76   4      0          4        1   155
#> 455                                1.0  75   1      0          1        1   125
#> 456                               52.0  73   1      0         52        1   105
#> 457                             180.0+  73   0      0        180        0   156
#> 458                             180.0+  72   5      0        180        0   120
#> 459                               12.0  78  12      1         11        1   160
#> 460                             180.0+  76   5      0        180        0   185
#> 461                             180.0+  76   5      1          0        1   167
#> 462                                8.0  74   8      1          8        1   170
#> 463                             180.0+  75   9      0        180        1   140
#> 464                               33.0  73  33      1         12        1   175
#> 465                                5.0  77   5      1          0        0   123
#> 466                             180.0+  77  12      1          9        1   100
#> 467                             180.0+  73  10      1          9        0   146
#> 468                                1.0  77   1      1          0        1    90
#> 469                               7.0+  73   7      1          0        0   174
#> 470                               79.0  74   6      0         79        1   140
#> 471                                3.0  75   3      1          1        1   171
#> 472                             180.0+  75   6      0        180        0   150
#> 473                             180.0+  79  10      1          8        0   190
#> 474                               18.0  78  18      0         18        1   144
#> 475                             180.0+  77   3      0        180        0   110
#> 476                               47.0  76  29      0         47        0    90
#> 477                             180.0+  73   8      1          1        1   162
#> 478                                7.0  78   7      0          7        1   133
#> 479                             180.0+  74  15      0        180        1   172
#> 480                                7.0  74   7      0          7        0   161
#> 481                               32.0  78  32      1          9        1   198
#> 482                             180.0+  79   6      0        180        0   170
#> 483                               10.0  80  10      1          6        1   147
#> 484                             180.0+  78   0      0        180        1   212
#> 485                              119.0  75   5      0        119        1   150
#> 486                               12.0  75  12      1          1        1   120
#> 487                                8.0  80   8      0          8        1   120
#> 488                             180.0+  75  13      1          6        0   150
#> 489                             180.0+  74  10      1          8        0   135
#> 490                                1.0  76   1      0          1        1    83
#> 491                               80.0  79   4      0         80        0   145
#> 492                             180.0+  78  12      1          9        0   150
#> 493                             180.0+  78   2      1          1        0   130
#> 494                               4.0+  75   4      1          0        0   212
#> 495                                2.0  77   2      1          0        1   143
#> 496                             180.0+  78  10      0        180        1   130
#> 497                               11.0  76  11      1          0        0   120
#> 498                                3.0  75   3      0          3        0     0
#> 499                               29.0  76   7      0         29        1   150
#> 500                               32.0  79   8      0         32        1   120
#> 501                               23.0  80   9      0         23        1   128
#> 502                             180.0+  78   6      1          0        1   240
#> 503                             180.0+  79  11      0        180        0   160
#> 504                             180.0+  78  14      1          0        1   140
#> 505                                1.0  81   1      0          1        0   130
#> 506                               11.0  78  11      1          8        1   118
#> 507                                4.0  76   4      0          4        1   160
#> 508                                4.0  79   4      0          4        1   125
#> 509                              10.0+  76  10      1          8        0   180
#> 510                             180.0+  76  12      1         10        1   127
#> 511                                6.0  77   6      0          6        1   107
#> 512                               2.0+  75   2      1          1        1   204
#> 513                             180.0+  78  11      0        180        1   135
#> 514                              171.0  77  31      1          3        1   161
#> 515                                1.0  76   1      0          1        1    90
#> 516                               43.0  78   7      1          0        1   110
#> 517                                3.0  79   3      0          3        0   120
#> 518                             180.0+  77   7      0        180        1   170
#> 519                                6.0  77   6      0          6        1   144
#> 520                              138.0  79   4      1          0        1   120
#> 521                             180.0+  81   1      0        180        0   120
#> 522                             180.0+  80  15      1         12        1   150
#> 523                                8.0  82   5      0          8        1   120
#> 524                               40.0  80  40      1          0        1   138
#> 525                              10.0+  79  10      0         10        1   120
#> 526                               93.0  81   4      1          2        1   126
#> 527                              173.0  80   6      0        173        1   160
#> 528                               37.0  79   1      0         37        1   140
#> 529                             175.0+  81   2      0        175        0   172
#> 530                               22.0  77  13      1          0        1   190
#> 531                               5.0+  80   5      1          1        1   108
#> 532                             180.0+  78   4      0        180        0   175
#> 533                                3.0  79   3      0          3        1   101
#> 534                             171.0+  78  26      1          5        0   194
#> 535                             166.0+  76   1      0        166        0   131
#> 536                               71.0  81   4      1          1        1   104
#> 537                               3.0+  78   3      1          1        1   152
#> 538                               10.0  77  10      1          8        1   130
#> 539                               10.0  80   2      1          1        0   168
#> 540                               6.0+  79   6      0          6        0   152
#> 541                                6.0  80   6      1          0        1   119
#> 542                             180.0+  78   2      0        180        0   148
#> 543                                5.0  80   5      0          5        1   130
#> 544                             180.0+  79  10      0        180        1   150
#> 545                             180.0+  77   4      0        180        1    98
#> 546                              108.0  81   1      0        108        0   129
#> 547                              125.0  79   1      0        125        0   193
#> 548                             180.0+  82  21      1          2        0   155
#> 549                             180.0+  84  22      1         10        0   180
#> 550                               9.0+  83   9      1          5        1   170
#> 551                             180.0+  82   5      0        180        0   110
#> 552                             180.0+  83   5      0        180        0   148
#> 553                             180.0+  79   7      1          6        0   130
#> 554                              103.0  83   4      0        103        0    97
#> 555                             177.0+  81   5      0        177        0    41
#> 556                              169.0  80  11      1          8        0   170
#> 557                                4.0  79   4      0          4        1   183
#> 558                             180.0+  78   9      1          4        1   120
#> 559                             180.0+  82   8      1          1        0   128
#> 560                             180.0+  81  15      0        180        1   140
#> 561                               7.0+  80   7      1          0        1   146
#> 562                             180.0+  84   5      1          1        1    85
#> 563                               20.0  81  20      1          9        0   170
#> 564                               8.0+  83   8      0          8        0   115
#> 565                             180.0+  80  11      1          8        0   110
#> 566                             180.0+  81   8      0        180        0   146
#> 567                             177.0+  79   7      0        177        0   197
#> 568                                0.5  79   0      1          0        1    96
#> 569                                2.0  83   2      0          2        1   155
#> 570                              128.0  82   6      0        128        1   100
#> 571                              167.0  84   4      0        167        0   198
#> 572                               3.0+  80   3      1          1        1   230
#> 573                               62.0  82  23      1          0        0   110
#> 574                             180.0+  84   5      0        180        1   203
#> 575                                4.0  84   4      0          4        1    85
#> 576                                1.0  81   1      0          1        1   150
#> 577                               38.0  84   1      0         38        1   205
#> 578                             180.0+  83   3      0        180        0   174
#> 579                             180.0+  79   9      1          8        0   150
#> 580                               89.0  84   4      0         89        1   129
#> 581                               71.0  80   6      0         71        1   189
#> 582                                1.0  83   1      0          1        1   100
#> 583                               19.0  82  19      0         19        0   120
#> 584                             180.0+  83   9      0        180        0   198
#> 585                             180.0+  79  14      1          0        0   110
#> 586                              114.0  83   3      0        114        0    98
#> 587                             180.0+  81  14      1         12        1   128
#> 588                             180.0+  84  15      1         13        1   110
#> 589                                1.0  81   1      0          1        1   145
#> 590                              16.0+  82  16      1          8        0   103
#> 591                               4.0+  81   4      0          4        0   160
#> 592                               77.0  83  12      1          2        1   170
#> 593                             180.0+  81  19      1         14        0   120
#> 594                                3.0  82   3      1          2        0   130
#> 595                               83.0  82  15      1          0        0   183
#> 596                              126.0  83   7      0        126        0   135
#> 597                                8.0  86   8      0          8        1   132
#> 598                              165.0  84   6      0        165        0   145
#> 599                                3.0  86   3      0          3        1   140
#> 600                             180.0+  82   9      0        180        1   134
#> 601                             180.0+  84   3      0        180        1   120
#> 602                               3.0+  85   3      0          3        1   118
#> 603                             180.0+  82   1      0        180        1   193
#> 604                               4.0+  83   4      0          4        0   130
#> 605                             180.0+  86  12      1          0        1   132
#> 606                              174.0  82  14      1         11        1   103
#> 607                               43.0  83  19      0         43        0   150
#> 608                             180.0+  83  10      1          0        1   190
#> 609                               14.0  88  14      1          3        1   130
#> 610                               13.0  83  13      1         12        0   170
#> 611                             180.0+  84   7      1          2        0   148
#> 612                             180.0+  84   3      0        180        1   170
#> 613                                4.0  82   4      0          4        0   130
#> 614                              177.0  86  13      0        177        0   163
#> 615                               62.0  84  13      0         62        1   100
#> 616                               6.0+  86   6      1          1        0   112
#> 617                               20.0  83  20      1          3        1   150
#> 618                               65.0  83   9      0         65        1   150
#> 619                               11.0  86   9      1          7        1   142
#> 620                             180.0+  87   2      0        180        1   130
#> 621                               46.0  86   6      0         46        0   173
#> 622                              115.0  88   3      0        115        0   110
#> 623                               3.0+  83   3      0          3        1   130
#> 624                               8.0+  87   8      0          8        1   157
#> 625                             180.0+  86  15      1          8        1   109
#> 626                                4.0  88   4      0          4        0    86
#> 627                              119.0  89   5      0        119        1   140
#> 628                             180.0+  87   6      0        180        1   110
#> 629                               1.0+  87   1      0          1        0   170
#> 630                                8.0  85   8      0          8        1   136
#> 631                              110.0  84   2      0        110        1   174
#> 632                               29.0  87  29      0         29        1    97
#> 633                             180.0+  87  15      1          9        1   138
#> 634                             180.0+  84   0      0        180        1   136
#> 635                               14.0  90  14      0         14        1   100
#> 636                               1.0+  88   1      0          1        0   135
#> 637                             180.0+  86   4      0        180        1   145
#> 638                             180.0+  87   2      0        180        0   160
#> 639                               25.0  87   6      1          0        0   125
#> 640                              145.0  91  10      0        145        0   135
#> 641                                3.0  86   3      1          0        1    80
#> 642                              126.0  87   6      0        126        1   168
#> 643                             180.0+  86   9      1          7        0   130
#> 644                                4.0  90   4      1          0        0   121
#> 645                               36.0  87   5      0         36        1   150
#> 646                               89.0  90   5      1          0        1   125
#> 647                               75.0  88   3      1          2        0   159
#> 648                               33.0  91   3      0         33        1   137
#> 649                              158.0  88   5      0        158        0   100
#> 650                               74.0  87   7      0         74        1   105
#> 651                             180.0+  89  12      1          0        1   130
#> 652                              168.0  89   2      0        168        0   118
#> 653                              169.0  91   5      0        169        1   176
#> 654                                7.0  92   7      0          7        1   110
#> 655                                4.0  89   4      0          4        1   159
#> 656                             180.0+  89  14      0        180        1    84
#> 657                             180.0+  90  18      0        180        0   188
#> 658                               50.0  94   6      0         50        0    78
#> 659                             179.0+  93   8      0        179        1   110
#> 660                               8.0+  94   8      0          8        1   142
#> 661                               76.0  92   4      0         76        1   149
#> 662                               16.0  90  16      0         16        1   106
#> 663                               67.0  90   3      0         67        0   162
#> 664                                8.0  95   8      1          5        1   150
#> 665                               53.0  91  12      0         53        1   212
#> 666                               7.0+  91   7      0          7        0   135
#> 667                                0.5  93   0      1          0        1   122
#> 668                               69.0  92   5      0         69        0   139
#> 669                                2.0  92   2      0          2        0   112
#> 670                                3.0  96   3      1          0        1   104
#> 
#> $weights
#> $weights[[1]]
#>   [1] 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 1 1
#>  [38] 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1
#>  [75] 1 0 1 0 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1
#> [112] 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0
#> [149] 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 0 1 1 0 1
#> [186] 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [223] 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1
#> [260] 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0
#> [297] 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1
#> [334] 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0
#> [371] 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1
#> [408] 1 0 1 1 1 1 0 0 0 0 1 0 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 1
#> [445] 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1
#> [482] 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1
#> [519] 1 1 0 0 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1
#> [556] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1
#> [593] 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0
#> [630] 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[2]]
#>   [1] 1 1 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0
#>  [38] 0 0 0 1 1 0 1 0 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1
#>  [75] 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [112] 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0
#> [149] 0 0 0 1 0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1
#> [186] 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 0 0 1
#> [223] 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1
#> [260] 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [297] 0 1 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [334] 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1
#> [371] 0 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1
#> [408] 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1
#> [445] 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1
#> [482] 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0
#> [519] 1 1 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1 0 1 0
#> [556] 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1
#> [593] 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [630] 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[3]]
#>   [1] 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0
#>  [38] 0 0 0 0 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0
#>  [75] 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 0 1 0 0 1 1
#> [112] 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0
#> [149] 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 1
#> [186] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1
#> [223] 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [260] 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0
#> [297] 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1
#> [334] 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 0 0
#> [371] 1 0 1 0 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [408] 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1
#> [445] 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0
#> [482] 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1
#> [519] 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 0
#> [556] 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 1 1
#> [593] 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1
#> [630] 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [667] 0 1 0 0
#> 
#> $weights[[4]]
#>   [1] 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 0 1
#>  [38] 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1
#>  [75] 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 0
#> [112] 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1
#> [149] 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 0
#> [186] 1 0 1 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 0
#> [223] 1 0 1 1 1 1 0 0 0 1 0 0 0 1 0 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1
#> [260] 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 1
#> [297] 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 1 0 1 1
#> [334] 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0
#> [371] 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 0
#> [408] 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [445] 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1
#> [482] 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0
#> [519] 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1
#> [556] 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1
#> [593] 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 0
#> [630] 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[5]]
#>   [1] 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1
#>  [38] 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#>  [75] 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1
#> [112] 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [149] 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [186] 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 0
#> [223] 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0
#> [260] 0 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1
#> [297] 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1 1 0 0 0 0 1 0
#> [334] 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0
#> [371] 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1
#> [408] 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1
#> [445] 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1
#> [482] 1 0 1 1 0 0 1 1 1 0 0 0 0 0 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1
#> [519] 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [556] 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0
#> [593] 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0
#> [630] 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[6]]
#>   [1] 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1
#>  [38] 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 0
#>  [75] 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1
#> [112] 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0
#> [149] 0 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [186] 1 1 0 0 1 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1
#> [223] 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 1
#> [260] 0 0 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1
#> [297] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1
#> [334] 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [371] 0 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0
#> [408] 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [445] 1 0 1 1 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0
#> [482] 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1
#> [519] 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 0 1 1 1 0 0 0 0 1
#> [556] 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1
#> [593] 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [630] 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[7]]
#>   [1] 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0
#>  [38] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1
#>  [75] 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1
#> [112] 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [149] 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1
#> [186] 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1
#> [223] 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0
#> [260] 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1
#> [297] 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [334] 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1
#> [371] 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 0 0 1 0
#> [408] 1 0 0 1 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0
#> [445] 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 1
#> [482] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [519] 1 0 1 1 0 0 0 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1
#> [556] 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1
#> [593] 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 1 0 0 1 0 0 0 1 0 0 1 0
#> [630] 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[8]]
#>   [1] 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0
#>  [38] 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0
#>  [75] 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1
#> [112] 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1
#> [149] 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [186] 1 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1
#> [223] 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 0
#> [260] 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0
#> [297] 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1
#> [334] 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 0 0
#> [371] 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1
#> [408] 0 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1
#> [445] 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0
#> [482] 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0
#> [519] 0 1 0 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1
#> [556] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1
#> [593] 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [630] 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[9]]
#>   [1] 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0
#>  [38] 0 0 0 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 0 0 1 0 1
#>  [75] 0 0 1 0 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0
#> [112] 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0
#> [149] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [186] 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1
#> [223] 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [260] 0 1 1 0 1 1 1 0 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1
#> [297] 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [334] 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0
#> [371] 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0
#> [408] 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 0 0 0 1 0 0 0
#> [445] 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [482] 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 1
#> [519] 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1
#> [556] 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0
#> [593] 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0
#> [630] 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [667] 0 0 0 1
#> 
#> $weights[[10]]
#>   [1] 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0
#>  [38] 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0
#>  [75] 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 1
#> [112] 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [149] 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1
#> [186] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0
#> [223] 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 0 0
#> [260] 0 1 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 0 0
#> [297] 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0
#> [334] 0 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1 0
#> [371] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1
#> [408] 1 0 1 0 1 0 1 1 1 0 0 0 0 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [445] 0 1 0 0 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1
#> [482] 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1
#> [519] 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#> [556] 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0
#> [593] 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1
#> [630] 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[11]]
#>   [1] 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0
#>  [38] 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#>  [75] 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [112] 1 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1
#> [149] 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 0
#> [186] 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1
#> [223] 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [260] 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0
#> [297] 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0
#> [334] 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 1 1 1 0 1 0 1
#> [371] 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0
#> [408] 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [445] 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0
#> [482] 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0
#> [519] 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0
#> [556] 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1
#> [593] 0 1 0 1 1 0 1 0 0 0 1 1 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1
#> [630] 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[12]]
#>   [1] 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0
#>  [38] 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0
#>  [75] 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [112] 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1
#> [149] 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 0 0
#> [186] 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 1
#> [223] 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1
#> [260] 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1
#> [297] 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1
#> [334] 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1
#> [371] 0 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1
#> [408] 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0
#> [445] 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1
#> [482] 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 0
#> [519] 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0
#> [556] 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 0
#> [593] 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1
#> [630] 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[13]]
#>   [1] 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1
#>  [38] 0 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1
#>  [75] 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 1
#> [112] 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1
#> [149] 1 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [186] 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 1
#> [223] 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 0 0 1 0
#> [260] 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0
#> [297] 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [334] 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [371] 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1
#> [408] 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1
#> [445] 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1
#> [482] 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1
#> [519] 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [556] 1 1 0 0 0 1 0 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0
#> [593] 1 1 0 0 0 0 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 0
#> [630] 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[14]]
#>   [1] 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1
#>  [38] 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1
#>  [75] 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0
#> [112] 0 0 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1
#> [149] 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0
#> [186] 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1
#> [223] 1 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1
#> [260] 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1
#> [297] 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0
#> [334] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0
#> [371] 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0
#> [408] 0 1 0 0 1 1 0 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1
#> [445] 1 0 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1
#> [482] 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [519] 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [556] 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1
#> [593] 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 0 0
#> [630] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[15]]
#>   [1] 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1
#>  [38] 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0
#>  [75] 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0
#> [112] 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0
#> [149] 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 0 1 0 0
#> [186] 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0
#> [223] 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [260] 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0
#> [297] 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 0 0 1 1 0 1
#> [334] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0
#> [371] 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0
#> [408] 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [445] 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1 1
#> [482] 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1
#> [519] 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [556] 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0
#> [593] 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1
#> [630] 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 0 1 0 1 0 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[16]]
#>   [1] 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1
#>  [38] 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 1 1 1 1
#>  [75] 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1
#> [112] 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [149] 1 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [186] 1 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [223] 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1
#> [260] 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1
#> [297] 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 0 0 1 0 1
#> [334] 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0
#> [371] 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0
#> [408] 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0
#> [445] 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1
#> [482] 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 1
#> [519] 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 1 0
#> [556] 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0
#> [593] 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 1 0 0 1 1 1
#> [630] 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[17]]
#>   [1] 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0
#>  [38] 1 0 0 1 0 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0
#>  [75] 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1
#> [112] 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1
#> [149] 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [186] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0
#> [223] 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1
#> [260] 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 0 0 0 1 1 1
#> [297] 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 0 1 1
#> [334] 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 0 0 1 1 1
#> [371] 1 1 1 1 1 0 0 1 0 1 0 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [408] 0 0 0 0 0 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 1 0 1
#> [445] 1 0 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [482] 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [519] 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0
#> [556] 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0
#> [593] 1 1 0 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0
#> [630] 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[18]]
#>   [1] 1 1 0 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1
#>  [38] 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1
#>  [75] 1 0 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0
#> [112] 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0
#> [149] 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1
#> [186] 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1
#> [223] 0 1 0 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0
#> [260] 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0
#> [297] 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1
#> [334] 1 0 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0
#> [371] 0 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#> [408] 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0
#> [445] 0 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1
#> [482] 1 0 1 0 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1
#> [519] 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [556] 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0
#> [593] 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0
#> [630] 1 1 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 0 0 1 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[19]]
#>   [1] 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1
#>  [38] 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0
#>  [75] 0 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 0
#> [112] 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1
#> [149] 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1
#> [186] 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1
#> [223] 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0
#> [260] 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0
#> [297] 0 0 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0
#> [334] 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1
#> [371] 0 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [408] 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0
#> [445] 0 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1
#> [482] 1 1 0 1 1 0 0 1 0 0 0 0 1 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0
#> [519] 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 1 0 0
#> [556] 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1
#> [593] 1 1 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1
#> [630] 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[20]]
#>   [1] 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0
#>  [38] 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1
#>  [75] 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0
#> [112] 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0
#> [149] 1 0 0 0 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [186] 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0
#> [223] 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1
#> [260] 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1
#> [297] 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1
#> [334] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1
#> [371] 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1
#> [408] 0 0 0 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [445] 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1
#> [482] 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [519] 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1
#> [556] 1 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1 1
#> [593] 1 1 1 1 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 1
#> [630] 1 0 1 0 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[21]]
#>   [1] 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1
#>  [38] 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1
#>  [75] 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0
#> [112] 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [149] 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1
#> [186] 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0
#> [223] 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0
#> [260] 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [297] 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0
#> [334] 1 0 1 1 0 0 1 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0
#> [371] 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1
#> [408] 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1
#> [445] 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1
#> [482] 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 0 1
#> [519] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1
#> [556] 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [593] 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1
#> [630] 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[22]]
#>   [1] 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1
#>  [38] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1
#> [112] 0 1 1 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 0
#> [149] 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1
#> [186] 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [223] 0 1 0 1 0 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1
#> [260] 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 1 0 0 0
#> [297] 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1 1 0
#> [371] 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0
#> [408] 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1
#> [445] 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1
#> [482] 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0
#> [519] 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0 0 0 1 0 1
#> [556] 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 0 1 0
#> [593] 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0
#> [630] 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 0 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[23]]
#>   [1] 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0
#>  [38] 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1
#>  [75] 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1
#> [112] 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0
#> [149] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1 1 0 0 0
#> [186] 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0
#> [223] 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1
#> [260] 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0
#> [297] 1 1 1 0 1 0 1 1 0 0 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0
#> [371] 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1
#> [408] 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1
#> [445] 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#> [482] 1 0 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0
#> [519] 1 0 0 0 0 1 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [556] 0 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0
#> [593] 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 1 0
#> [630] 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[24]]
#>   [1] 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1
#>  [38] 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0
#>  [75] 1 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0
#> [112] 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [149] 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0
#> [186] 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1
#> [223] 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 0
#> [260] 1 0 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1
#> [297] 0 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1
#> [334] 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 1 1 0 0 1 1 1
#> [371] 0 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0
#> [408] 1 0 0 1 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#> [445] 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0
#> [482] 0 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [519] 0 1 1 1 0 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0
#> [556] 0 1 0 0 0 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [593] 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 0
#> [630] 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1
#> [667] 0 1 0 1
#> 
#> $weights[[25]]
#>   [1] 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1
#>  [38] 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 0 1 1 1 1 0 0
#>  [75] 1 0 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0
#> [112] 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1
#> [149] 0 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0
#> [186] 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0
#> [223] 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0
#> [260] 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1
#> [297] 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 0 0 0 0 0
#> [334] 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0
#> [371] 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [408] 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1
#> [445] 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1
#> [482] 0 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0
#> [519] 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0
#> [556] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1
#> [593] 0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0
#> [630] 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[26]]
#>   [1] 1 0 0 1 0 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0
#>  [38] 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1
#>  [75] 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0
#> [112] 1 1 1 0 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1
#> [149] 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1
#> [186] 0 0 1 1 0 1 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1
#> [223] 0 0 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1
#> [260] 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [297] 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#> [334] 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [371] 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1
#> [408] 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1
#> [445] 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0
#> [482] 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#> [519] 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1
#> [556] 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [593] 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1
#> [630] 1 0 1 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[27]]
#>   [1] 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1
#>  [38] 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1
#>  [75] 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 0 1 1 1 0 1 0
#> [112] 1 1 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1
#> [149] 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0
#> [186] 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [223] 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 0
#> [260] 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1
#> [297] 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0
#> [334] 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 0
#> [371] 0 0 0 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1
#> [408] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 0 1
#> [445] 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1
#> [482] 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1
#> [519] 0 0 1 0 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [556] 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 0
#> [593] 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [630] 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[28]]
#>   [1] 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 1
#>  [38] 0 0 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 0 1 1
#>  [75] 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [112] 1 0 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1
#> [149] 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0
#> [186] 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0
#> [223] 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0
#> [260] 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0
#> [297] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1
#> [334] 0 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 1
#> [371] 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1
#> [408] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1
#> [445] 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0
#> [482] 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1
#> [519] 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1
#> [556] 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1
#> [593] 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [630] 0 0 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[29]]
#>   [1] 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0
#>  [38] 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 1 1 1 1
#>  [75] 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 0
#> [112] 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1
#> [149] 1 0 1 0 1 0 0 1 0 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1
#> [186] 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1
#> [223] 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1
#> [260] 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1
#> [297] 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [334] 0 1 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0
#> [371] 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 0
#> [408] 1 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1
#> [445] 0 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 0 0
#> [482] 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 0
#> [519] 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 0 0 0 1
#> [556] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [593] 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 0
#> [630] 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[30]]
#>   [1] 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0
#>  [38] 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1
#>  [75] 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [112] 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [149] 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0
#> [186] 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1
#> [223] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 0
#> [260] 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1
#> [297] 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0
#> [334] 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0
#> [371] 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [408] 0 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1
#> [445] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1
#> [482] 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1
#> [519] 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [556] 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0
#> [593] 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 0 1
#> [630] 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[31]]
#>   [1] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1
#>  [38] 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1
#>  [75] 1 1 1 0 1 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0
#> [112] 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1
#> [149] 1 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0
#> [186] 0 0 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1
#> [223] 1 1 0 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0
#> [260] 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [297] 1 1 1 0 0 0 0 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1
#> [334] 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0
#> [371] 1 0 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [408] 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0
#> [445] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [482] 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1
#> [519] 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1
#> [556] 0 1 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0
#> [593] 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1
#> [630] 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0
#> [667] 0 1 0 1
#> 
#> $weights[[32]]
#>   [1] 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1
#>  [38] 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1
#>  [75] 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1
#> [112] 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 0 0 1 1 0
#> [149] 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0
#> [186] 0 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0
#> [223] 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1
#> [260] 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0
#> [297] 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1
#> [334] 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0
#> [371] 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [408] 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0
#> [445] 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1
#> [482] 0 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 0
#> [519] 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0
#> [556] 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [593] 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1
#> [630] 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[33]]
#>   [1] 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0
#>  [38] 1 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#>  [75] 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0
#> [112] 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1
#> [149] 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1
#> [186] 0 1 1 0 1 0 0 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [223] 0 1 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1
#> [260] 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1
#> [297] 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [334] 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [371] 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 0 0 0 1
#> [408] 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 1 1 0 1 0 0 0 1 0
#> [445] 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0
#> [482] 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 0 1 0 0 0 0 0 1 1
#> [519] 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0
#> [556] 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0
#> [593] 1 0 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0 0
#> [630] 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[34]]
#>   [1] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0
#>  [38] 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
#>  [75] 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 0
#> [112] 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1
#> [149] 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0
#> [186] 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1
#> [223] 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1
#> [260] 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1
#> [297] 1 0 1 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [334] 0 0 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0
#> [371] 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 0 0 1
#> [408] 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0
#> [445] 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [482] 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0
#> [519] 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0
#> [556] 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1
#> [593] 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1
#> [630] 0 1 0 0 0 0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0
#> [667] 1 0 0 0
#> 
#> $weights[[35]]
#>   [1] 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1
#>  [38] 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1
#>  [75] 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 1 1
#> [112] 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1
#> [149] 1 0 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [186] 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0
#> [223] 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0
#> [260] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0
#> [297] 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0
#> [334] 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1
#> [371] 1 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0
#> [408] 0 0 1 0 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [445] 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 0 0 1 1 1
#> [482] 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1
#> [519] 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0
#> [556] 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0
#> [593] 1 0 0 1 0 1 0 1 0 0 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0
#> [630] 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[36]]
#>   [1] 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 1 1 0 0
#>  [38] 1 0 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1
#>  [75] 1 0 1 1 0 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1
#> [112] 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1
#> [149] 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 1
#> [186] 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [223] 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1
#> [260] 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1
#> [297] 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0
#> [334] 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1
#> [371] 1 1 1 1 0 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 1 0
#> [408] 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1
#> [445] 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0
#> [482] 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 0 1
#> [519] 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0
#> [556] 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1
#> [593] 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1
#> [630] 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[37]]
#>   [1] 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0
#>  [38] 1 0 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1
#>  [75] 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [112] 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1
#> [149] 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [186] 1 0 0 0 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 0 0 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 0
#> [223] 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1
#> [260] 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1
#> [297] 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 0 0 1 1 1 0 0 0 1
#> [334] 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1
#> [371] 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [408] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1
#> [445] 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1
#> [482] 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [519] 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0
#> [556] 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1
#> [593] 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1
#> [630] 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1
#> [667] 1 0 1 0
#> 
#> $weights[[38]]
#>   [1] 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1
#>  [38] 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1
#>  [75] 0 0 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1
#> [112] 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1
#> [149] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1
#> [186] 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [223] 1 0 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1
#> [260] 0 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 0 1 1
#> [297] 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1
#> [334] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0
#> [371] 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 0
#> [408] 1 1 0 0 0 1 0 0 0 1 0 0 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1
#> [445] 1 1 1 1 1 0 0 1 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1
#> [482] 0 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1
#> [519] 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [556] 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0
#> [593] 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1
#> [630] 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[39]]
#>   [1] 1 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1
#>  [38] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1 0
#>  [75] 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1
#> [112] 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0
#> [149] 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1
#> [186] 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0
#> [223] 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1
#> [260] 1 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1
#> [297] 1 0 0 0 0 0 1 1 0 1 0 0 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0
#> [334] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0
#> [371] 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 1 0
#> [408] 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [445] 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 0
#> [482] 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1
#> [519] 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1
#> [556] 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0
#> [593] 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1
#> [630] 0 1 1 0 0 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[40]]
#>   [1] 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0
#>  [38] 0 1 0 0 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1
#>  [75] 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1
#> [112] 0 0 1 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [149] 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [186] 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 0 0 1 1
#> [223] 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 0 0 0 1
#> [260] 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [297] 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 0 1 0
#> [334] 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1
#> [371] 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [408] 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [445] 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1
#> [482] 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1
#> [519] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1
#> [556] 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0
#> [593] 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 1
#> [630] 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 1 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[41]]
#>   [1] 1 1 0 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1
#>  [38] 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 0 0 1 1 1 1 0
#>  [75] 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0
#> [112] 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1
#> [149] 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0
#> [186] 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0
#> [223] 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1
#> [260] 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1
#> [297] 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1
#> [334] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1
#> [371] 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 1
#> [408] 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#> [445] 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 0
#> [482] 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0
#> [519] 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1
#> [556] 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 0 0
#> [593] 1 0 0 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1
#> [630] 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 0 1 0 0 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[42]]
#>   [1] 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0
#>  [38] 0 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1
#>  [75] 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1
#> [112] 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0
#> [149] 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1
#> [186] 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0
#> [223] 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 0 1 0
#> [260] 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0
#> [297] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1
#> [334] 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 1
#> [371] 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [408] 0 1 0 1 0 0 0 0 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0 0
#> [445] 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1
#> [482] 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1
#> [519] 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1
#> [556] 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1
#> [593] 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 0 1 1 1 0
#> [630] 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[43]]
#>   [1] 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1
#>  [38] 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 0
#>  [75] 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1
#> [112] 0 1 1 0 1 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1
#> [149] 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1
#> [186] 0 0 1 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1
#> [223] 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1
#> [260] 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [297] 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [334] 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1
#> [371] 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1
#> [408] 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0
#> [445] 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1
#> [482] 0 1 0 1 1 0 0 0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1
#> [519] 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1
#> [556] 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [593] 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1
#> [630] 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[44]]
#>   [1] 0 1 1 1 0 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0
#>  [38] 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1
#>  [75] 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0
#> [112] 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0
#> [149] 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0
#> [186] 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1
#> [223] 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 0 0 1 1 1 1
#> [260] 0 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1
#> [297] 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0
#> [334] 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 0 0 0 1 0 1 1 0
#> [371] 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1
#> [408] 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [445] 0 1 0 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1
#> [482] 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0
#> [519] 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1 0
#> [556] 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 1 0 0 0 1
#> [593] 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0
#> [630] 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[45]]
#>   [1] 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 0 1 0 0 0 0 1 1
#>  [38] 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0
#>  [75] 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1
#> [112] 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0
#> [149] 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1
#> [186] 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1
#> [223] 1 1 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1
#> [260] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [297] 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [334] 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1
#> [371] 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1
#> [408] 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 0 1 0 0 0
#> [445] 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0
#> [482] 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [519] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1
#> [556] 0 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1
#> [593] 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [630] 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 1 0 1 0 1 0 1 0 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[46]]
#>   [1] 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#>  [38] 1 0 1 0 0 1 0 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1
#>  [75] 1 1 1 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 0 1
#> [112] 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 1
#> [149] 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1
#> [186] 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0
#> [223] 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [260] 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1
#> [297] 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1
#> [334] 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [371] 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0
#> [408] 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1
#> [445] 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1
#> [482] 1 1 1 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1
#> [519] 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1
#> [556] 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0
#> [593] 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 0 1
#> [630] 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0
#> [667] 0 0 1 0
#> 
#> $weights[[47]]
#>   [1] 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0
#>  [38] 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0
#>  [75] 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 0 1
#> [112] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0
#> [149] 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0
#> [186] 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0
#> [223] 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1
#> [260] 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [297] 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0
#> [334] 1 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1
#> [371] 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 0
#> [408] 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1
#> [445] 0 1 0 0 0 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0
#> [482] 0 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [519] 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [556] 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1
#> [593] 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0
#> [630] 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[48]]
#>   [1] 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#>  [38] 1 0 1 0 1 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0
#>  [75] 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0
#> [112] 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1
#> [149] 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1 0 1 1
#> [186] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1 0
#> [223] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1
#> [260] 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 0 0 0 0
#> [297] 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1
#> [334] 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 0 1
#> [371] 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1
#> [408] 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1
#> [445] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1
#> [482] 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [519] 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1
#> [556] 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1
#> [593] 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0
#> [630] 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0
#> [667] 0 0 0 0
#> 
#> $weights[[49]]
#>   [1] 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1
#>  [38] 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0
#>  [75] 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 0 0 0 1 1 0
#> [112] 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1
#> [149] 0 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [186] 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0
#> [223] 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1
#> [260] 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 0 0 0 1
#> [297] 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1
#> [334] 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0
#> [371] 0 0 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0
#> [408] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0
#> [445] 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0
#> [482] 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [519] 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [556] 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1
#> [593] 0 1 0 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0
#> [630] 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[50]]
#>   [1] 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0
#>  [38] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1
#>  [75] 1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [112] 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0
#> [149] 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 0 0 1 1
#> [186] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [223] 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0
#> [260] 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 1
#> [297] 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 1 0 0
#> [334] 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1
#> [371] 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [408] 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0
#> [445] 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [482] 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1
#> [519] 0 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1
#> [556] 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1
#> [593] 1 0 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0
#> [630] 0 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0
#> [667] 1 1 1 0
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       2.0+
#> 3     3       5.0+
#> 4     4       5.0+
#> 5     5     180.0+
#> 6     6       2.0+
#> 7     7     180.0+
#> 8     8     180.0+
#> 9     9     180.0+
#> 10   10     180.0+
#> 11   11       12.0
#> 12   12       5.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15     180.0+
#> 16   16       2.0+
#> 17   17     180.0+
#> 18   18       5.0+
#> 19   19       2.0+
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     180.0+
#> 25   25     180.0+
#> 26   26       2.0+
#> 27   27     180.0+
#> 28   28     180.0+
#> 29   29     180.0+
#> 30   30     180.0+
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33       5.0+
#> 34   34     180.0+
#> 35   35     180.0+
#> 36   36     180.0+
#> 37   37      150.0
#> 38   38     180.0+
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44       5.0+
#> 45   45     161.0+
#> 46   46     180.0+
#> 47   47     180.0+
#> 48   48     180.0+
#> 49   49       5.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     177.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     180.0+
#> 56   56     180.0+
#> 57   57      10.0+
#> 58   58     172.0+
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62        7.0
#> 63   63     180.0+
#> 64   64     180.0+
#> 65   65     180.0+
#> 66   66        2.0
#> 67   67     180.0+
#> 68   68       4.0+
#> 69   69     180.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74      88.0+
#> 75   75     180.0+
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80       77.0
#> 81   81     180.0+
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87     180.0+
#> 88   88       85.0
#> 89   89     180.0+
#> 90   90     166.0+
#> 91   91       99.0
#> 92   92      16.0+
#> 93   93     180.0+
#> 94   94     152.0+
#> 95   95       7.0+
#> 96   96       6.0+
#> 97   97     180.0+
#> 98   98     180.0+
#> 99   99     171.0+
#> 100 100     180.0+
#> 101 101     180.0+
#> 102 102     174.0+
#> 103 103       28.0
#> 104 104        1.0
#> 105 105     180.0+
#> 106 106       9.0+
#> 107 107     180.0+
#> 108 108     180.0+
#> 109 109        2.0
#> 110 110     180.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115     180.0+
#> 116 116      16.0+
#> 117 117     180.0+
#> 118 118       16.0
#> 119 119      15.0+
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123      12.0+
#> 124 124     134.0+
#> 125 125     180.0+
#> 126 126        8.0
#> 127 127       3.0+
#> 128 128     180.0+
#> 129 129     180.0+
#> 130 130     180.0+
#> 131 131      140.0
#> 132 132     180.0+
#> 133 133      165.0
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136     180.0+
#> 137 137     180.0+
#> 138 138     180.0+
#> 139 139     180.0+
#> 140 140       8.0+
#> 141 141     180.0+
#> 142 142        0.5
#> 143 143     180.0+
#> 144 144     180.0+
#> 145 145     180.0+
#> 146 146     180.0+
#> 147 147     171.0+
#> 148 148     166.0+
#> 149 149       5.0+
#> 150 150     180.0+
#> 151 151       4.0+
#> 152 152     180.0+
#> 153 153     180.0+
#> 154 154     180.0+
#> 155 155       4.0+
#> 156 156     180.0+
#> 157 157        1.0
#> 158 158     180.0+
#> 159 159       2.0+
#> 160 160     180.0+
#> 161 161     180.0+
#> 162 162     180.0+
#> 163 163     180.0+
#> 164 164     180.0+
#> 165 165     180.0+
#> 166 166     180.0+
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169       64.0
#> 170 170     180.0+
#> 171 171     180.0+
#> 172 172     180.0+
#> 173 173       9.0+
#> 174 174     180.0+
#> 175 175        0.5
#> 176 176     180.0+
#> 177 177     161.0+
#> 178 178     180.0+
#> 179 179     180.0+
#> 180 180        3.0
#> 181 181        1.0
#> 182 182     180.0+
#> 183 183     180.0+
#> 184 184     180.0+
#> 185 185       45.0
#> 186 186       19.0
#> 187 187     180.0+
#> 188 188     180.0+
#> 189 189       9.0+
#> 190 190     180.0+
#> 191 191     172.0+
#> 192 192       24.0
#> 193 193        8.0
#> 194 194       1.0+
#> 195 195       15.0
#> 196 196     180.0+
#> 197 197      13.0+
#> 198 198       8.0+
#> 199 199     180.0+
#> 200 200     180.0+
#> 201 201      170.0
#> 202 202      169.0
#> 203 203       7.0+
#> 204 204     180.0+
#> 205 205     180.0+
#> 206 206     180.0+
#> 207 207     180.0+
#> 208 208       3.0+
#> 209 209     180.0+
#> 210 210       30.0
#> 211 211     180.0+
#> 212 212       28.0
#> 213 213      13.0+
#> 214 214        5.0
#> 215 215       18.0
#> 216 216     180.0+
#> 217 217     180.0+
#> 218 218     180.0+
#> 219 219        1.0
#> 220 220     180.0+
#> 221 221     180.0+
#> 222 222     180.0+
#> 223 223     180.0+
#> 224 224       4.0+
#> 225 225     180.0+
#> 226 226     180.0+
#> 227 227     180.0+
#> 228 228     180.0+
#> 229 229       84.0
#> 230 230     180.0+
#> 231 231     180.0+
#> 232 232     180.0+
#> 233 233        1.0
#> 234 234        1.0
#> 235 235     180.0+
#> 236 236       4.0+
#> 237 237      167.0
#> 238 238       6.0+
#> 239 239       17.0
#> 240 240     180.0+
#> 241 241       12.0
#> 242 242     180.0+
#> 243 243      14.0+
#> 244 244     180.0+
#> 245 245       3.0+
#> 246 246       88.0
#> 247 247       12.0
#> 248 248     180.0+
#> 249 249     180.0+
#> 250 250     180.0+
#> 251 251        0.5
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254     180.0+
#> 255 255     180.0+
#> 256 256     180.0+
#> 257 257     180.0+
#> 258 258        9.0
#> 259 259        3.0
#> 260 260     180.0+
#> 261 261     180.0+
#> 262 262      11.0+
#> 263 263       2.0+
#> 264 264      18.0+
#> 265 265     180.0+
#> 266 266     180.0+
#> 267 267     180.0+
#> 268 268       3.0+
#> 269 269       15.0
#> 270 270     180.0+
#> 271 271       5.0+
#> 272 272       13.0
#> 273 273     179.0+
#> 274 274     166.0+
#> 275 275      14.0+
#> 276 276        3.0
#> 277 277       0.5+
#> 278 278     180.0+
#> 279 279       3.0+
#> 280 280     175.0+
#> 281 281     180.0+
#> 282 282     180.0+
#> 283 283       7.0+
#> 284 284        8.0
#> 285 285        5.0
#> 286 286        1.0
#> 287 287     180.0+
#> 288 288     180.0+
#> 289 289       1.0+
#> 290 290      11.0+
#> 291 291     180.0+
#> 292 292       79.0
#> 293 293       80.0
#> 294 294     180.0+
#> 295 295       4.0+
#> 296 296       15.0
#> 297 297     180.0+
#> 298 298     180.0+
#> 299 299     180.0+
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302      175.0
#> 303 303       10.0
#> 304 304     180.0+
#> 305 305     180.0+
#> 306 306     180.0+
#> 307 307     180.0+
#> 308 308        6.0
#> 309 309       12.0
#> 310 310       99.0
#> 311 311     180.0+
#> 312 312     180.0+
#> 313 313     180.0+
#> 314 314      11.0+
#> 315 315     180.0+
#> 316 316       18.0
#> 317 317       7.0+
#> 318 318     180.0+
#> 319 319     180.0+
#> 320 320     180.0+
#> 321 321       93.0
#> 322 322      21.0+
#> 323 323     180.0+
#> 324 324        4.0
#> 325 325        5.0
#> 326 326      150.0
#> 327 327     180.0+
#> 328 328     180.0+
#> 329 329     180.0+
#> 330 330     180.0+
#> 331 331     180.0+
#> 332 332     180.0+
#> 333 333     180.0+
#> 334 334        0.5
#> 335 335     180.0+
#> 336 336     180.0+
#> 337 337     180.0+
#> 338 338      14.0+
#> 339 339     180.0+
#> 340 340       45.0
#> 341 341       3.0+
#> 342 342     180.0+
#> 343 343     180.0+
#> 344 344     180.0+
#> 345 345       97.0
#> 346 346     180.0+
#> 347 347       8.0+
#> 348 348       2.0+
#> 349 349     180.0+
#> 350 350       18.0
#> 351 351     180.0+
#> 352 352     180.0+
#> 353 353        7.0
#> 354 354     180.0+
#> 355 355      13.0+
#> 356 356      123.0
#> 357 357     180.0+
#> 358 358       19.0
#> 359 359     180.0+
#> 360 360        1.0
#> 361 361       60.0
#> 362 362     180.0+
#> 363 363      132.0
#> 364 364       7.0+
#> 365 365        9.0
#> 366 366     180.0+
#> 367 367       12.0
#> 368 368     180.0+
#> 369 369     180.0+
#> 370 370      152.0
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373     180.0+
#> 374 374     180.0+
#> 375 375     180.0+
#> 376 376      16.0+
#> 377 377     180.0+
#> 378 378     180.0+
#> 379 379      16.0+
#> 380 380     180.0+
#> 381 381     180.0+
#> 382 382     180.0+
#> 383 383     180.0+
#> 384 384       7.0+
#> 385 385      13.0+
#> 386 386     180.0+
#> 387 387     180.0+
#> 388 388     180.0+
#> 389 389     180.0+
#> 390 390     180.0+
#> 391 391       20.0
#> 392 392     180.0+
#> 393 393       20.0
#> 394 394        0.5
#> 395 395     180.0+
#> 396 396     180.0+
#> 397 397        3.0
#> 398 398       12.0
#> 399 399     180.0+
#> 400 400       58.0
#> 401 401     180.0+
#> 402 402     180.0+
#> 403 403     180.0+
#> 404 404     180.0+
#> 405 405     180.0+
#> 406 406     180.0+
#> 407 407        2.0
#> 408 408      14.0+
#> 409 409     180.0+
#> 410 410     180.0+
#> 411 411       8.0+
#> 412 412     179.0+
#> 413 413     180.0+
#> 414 414      159.0
#> 415 415       10.0
#> 416 416        1.0
#> 417 417     180.0+
#> 418 418       13.0
#> 419 419     180.0+
#> 420 420     180.0+
#> 421 421       10.0
#> 422 422     104.0+
#> 423 423        1.0
#> 424 424       57.0
#> 425 425       11.0
#> 426 426       3.0+
#> 427 427     180.0+
#> 428 428     180.0+
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431       34.0
#> 432 432     180.0+
#> 433 433     177.0+
#> 434 434     180.0+
#> 435 435      11.0+
#> 436 436     180.0+
#> 437 437        7.0
#> 438 438      15.0+
#> 439 439       10.0
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442     180.0+
#> 443 443        6.0
#> 444 444     180.0+
#> 445 445       85.0
#> 446 446      17.0+
#> 447 447     174.0+
#> 448 448        4.0
#> 449 449        7.0
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452       46.0
#> 453 453     180.0+
#> 454 454        4.0
#> 455 455        1.0
#> 456 456       52.0
#> 457 457     180.0+
#> 458 458     180.0+
#> 459 459       12.0
#> 460 460     180.0+
#> 461 461     180.0+
#> 462 462        8.0
#> 463 463     180.0+
#> 464 464       33.0
#> 465 465        5.0
#> 466 466     180.0+
#> 467 467     180.0+
#> 468 468        1.0
#> 469 469       7.0+
#> 470 470       79.0
#> 471 471        3.0
#> 472 472     180.0+
#> 473 473     180.0+
#> 474 474       18.0
#> 475 475     180.0+
#> 476 476       47.0
#> 477 477     180.0+
#> 478 478        7.0
#> 479 479     180.0+
#> 480 480        7.0
#> 481 481       32.0
#> 482 482     180.0+
#> 483 483       10.0
#> 484 484     180.0+
#> 485 485      119.0
#> 486 486       12.0
#> 487 487        8.0
#> 488 488     180.0+
#> 489 489     180.0+
#> 490 490        1.0
#> 491 491       80.0
#> 492 492     180.0+
#> 493 493     180.0+
#> 494 494       4.0+
#> 495 495        2.0
#> 496 496     180.0+
#> 497 497       11.0
#> 498 498        3.0
#> 499 499       29.0
#> 500 500       32.0
#> 501 501       23.0
#> 502 502     180.0+
#> 503 503     180.0+
#> 504 504     180.0+
#> 505 505        1.0
#> 506 506       11.0
#> 507 507        4.0
#> 508 508        4.0
#> 509 509      10.0+
#> 510 510     180.0+
#> 511 511        6.0
#> 512 512       2.0+
#> 513 513     180.0+
#> 514 514      171.0
#> 515 515        1.0
#> 516 516       43.0
#> 517 517        3.0
#> 518 518     180.0+
#> 519 519        6.0
#> 520 520      138.0
#> 521 521     180.0+
#> 522 522     180.0+
#> 523 523        8.0
#> 524 524       40.0
#> 525 525      10.0+
#> 526 526       93.0
#> 527 527      173.0
#> 528 528       37.0
#> 529 529     175.0+
#> 530 530       22.0
#> 531 531       5.0+
#> 532 532     180.0+
#> 533 533        3.0
#> 534 534     171.0+
#> 535 535     166.0+
#> 536 536       71.0
#> 537 537       3.0+
#> 538 538       10.0
#> 539 539       10.0
#> 540 540       6.0+
#> 541 541        6.0
#> 542 542     180.0+
#> 543 543        5.0
#> 544 544     180.0+
#> 545 545     180.0+
#> 546 546      108.0
#> 547 547      125.0
#> 548 548     180.0+
#> 549 549     180.0+
#> 550 550       9.0+
#> 551 551     180.0+
#> 552 552     180.0+
#> 553 553     180.0+
#> 554 554      103.0
#> 555 555     177.0+
#> 556 556      169.0
#> 557 557        4.0
#> 558 558     180.0+
#> 559 559     180.0+
#> 560 560     180.0+
#> 561 561       7.0+
#> 562 562     180.0+
#> 563 563       20.0
#> 564 564       8.0+
#> 565 565     180.0+
#> 566 566     180.0+
#> 567 567     177.0+
#> 568 568        0.5
#> 569 569        2.0
#> 570 570      128.0
#> 571 571      167.0
#> 572 572       3.0+
#> 573 573       62.0
#> 574 574     180.0+
#> 575 575        4.0
#> 576 576        1.0
#> 577 577       38.0
#> 578 578     180.0+
#> 579 579     180.0+
#> 580 580       89.0
#> 581 581       71.0
#> 582 582        1.0
#> 583 583       19.0
#> 584 584     180.0+
#> 585 585     180.0+
#> 586 586      114.0
#> 587 587     180.0+
#> 588 588     180.0+
#> 589 589        1.0
#> 590 590      16.0+
#> 591 591       4.0+
#> 592 592       77.0
#> 593 593     180.0+
#> 594 594        3.0
#> 595 595       83.0
#> 596 596      126.0
#> 597 597        8.0
#> 598 598      165.0
#> 599 599        3.0
#> 600 600     180.0+
#> 601 601     180.0+
#> 602 602       3.0+
#> 603 603     180.0+
#> 604 604       4.0+
#> 605 605     180.0+
#> 606 606      174.0
#> 607 607       43.0
#> 608 608     180.0+
#> 609 609       14.0
#> 610 610       13.0
#> 611 611     180.0+
#> 612 612     180.0+
#> 613 613        4.0
#> 614 614      177.0
#> 615 615       62.0
#> 616 616       6.0+
#> 617 617       20.0
#> 618 618       65.0
#> 619 619       11.0
#> 620 620     180.0+
#> 621 621       46.0
#> 622 622      115.0
#> 623 623       3.0+
#> 624 624       8.0+
#> 625 625     180.0+
#> 626 626        4.0
#> 627 627      119.0
#> 628 628     180.0+
#> 629 629       1.0+
#> 630 630        8.0
#> 631 631      110.0
#> 632 632       29.0
#> 633 633     180.0+
#> 634 634     180.0+
#> 635 635       14.0
#> 636 636       1.0+
#> 637 637     180.0+
#> 638 638     180.0+
#> 639 639       25.0
#> 640 640      145.0
#> 641 641        3.0
#> 642 642      126.0
#> 643 643     180.0+
#> 644 644        4.0
#> 645 645       36.0
#> 646 646       89.0
#> 647 647       75.0
#> 648 648       33.0
#> 649 649      158.0
#> 650 650       74.0
#> 651 651     180.0+
#> 652 652      168.0
#> 653 653      169.0
#> 654 654        7.0
#> 655 655        4.0
#> 656 656     180.0+
#> 657 657     180.0+
#> 658 658       50.0
#> 659 659     179.0+
#> 660 660       8.0+
#> 661 661       76.0
#> 662 662       16.0
#> 663 663       67.0
#> 664 664        8.0
#> 665 665       53.0
#> 666 666       7.0+
#> 667 667        0.5
#> 668 668       69.0
#> 669 669        2.0
#> 670 670        3.0
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
#> <bytecode: 0x55f89f7180a8>
#> <environment: 0x55f8c7ff6800>
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
#> <bytecode: 0x55f8a11c79d8>
#> <environment: 0x55f8c7a8bed0>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f8a11c5cb0>
#> <environment: 0x55f8c7a8bfb0>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f8a11c79d8>
#> <environment: 0x55f8c7a8c090>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f8a11c5cb0>
#> <environment: 0x55f8c7a8c1e0>
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
#> <bytecode: 0x55f89f705360>
#> <environment: 0x55f8c7444298>
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
#>   0.8515067 
```
