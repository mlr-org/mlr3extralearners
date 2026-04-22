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
#> |   [2] V2 <= 64
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 59 *
#> |   |   |   |   |   [8] V2 > 59 *
#> |   |   |   [9] V5 > 115
#> |   |   |   |   [10] V2 <= 52 *
#> |   |   |   |   [11] V2 > 52
#> |   |   |   |   |   [12] V7 <= 130 *
#> |   |   |   |   |   [13] V7 > 130 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V2 <= 54
#> |   |   |   |   [16] V7 <= 121 *
#> |   |   |   |   [17] V7 > 121
#> |   |   |   |   |   [18] V7 <= 140 *
#> |   |   |   |   |   [19] V7 > 140
#> |   |   |   |   |   |   [20] V2 <= 50 *
#> |   |   |   |   |   |   [21] V2 > 50 *
#> |   |   |   [22] V2 > 54
#> |   |   |   |   [23] V5 <= 4
#> |   |   |   |   |   [24] V3 <= 5 *
#> |   |   |   |   |   [25] V3 > 5 *
#> |   |   |   |   [26] V5 > 4
#> |   |   |   |   |   [27] V2 <= 57 *
#> |   |   |   |   |   [28] V2 > 57 *
#> |   [29] V2 > 64
#> |   |   [30] V4 <= 0
#> |   |   |   [31] V5 <= 169
#> |   |   |   |   [32] V7 <= 90 *
#> |   |   |   |   [33] V7 > 90
#> |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   [35] V3 <= 3 *
#> |   |   |   |   |   |   [36] V3 > 3 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V7 <= 160
#> |   |   |   |   |   |   |   [39] V7 <= 140
#> |   |   |   |   |   |   |   |   [40] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [42] V5 > 3 *
#> |   |   |   |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   |   |   |   |   [44] V7 > 140 *
#> |   |   |   |   |   |   [45] V7 > 160 *
#> |   |   |   [46] V5 > 169
#> |   |   |   |   [47] V2 <= 84
#> |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   [49] V3 > 3 *
#> |   |   |   |   [50] V2 > 84 *
#> |   |   [51] V4 > 0
#> |   |   |   [52] V5 <= 2
#> |   |   |   |   [53] V5 <= 1
#> |   |   |   |   |   [54] V3 <= 2 *
#> |   |   |   |   |   [55] V3 > 2
#> |   |   |   |   |   |   [56] V2 <= 74 *
#> |   |   |   |   |   |   [57] V2 > 74
#> |   |   |   |   |   |   |   [58] V6 <= 0 *
#> |   |   |   |   |   |   |   [59] V6 > 0
#> |   |   |   |   |   |   |   |   [60] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [61] V2 > 78 *
#> |   |   |   |   [62] V5 > 1 *
#> |   |   |   [63] V5 > 2
#> |   |   |   |   [64] V6 <= 0
#> |   |   |   |   |   [65] V3 <= 12 *
#> |   |   |   |   |   [66] V3 > 12 *
#> |   |   |   |   [67] V6 > 0
#> |   |   |   |   |   [68] V5 <= 11
#> |   |   |   |   |   |   [69] V3 <= 10 *
#> |   |   |   |   |   |   [70] V3 > 10 *
#> |   |   |   |   |   [71] V5 > 11 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V7 <= 150
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120 *
#> |   |   |   |   [10] V7 > 150 *
#> |   |   |   [11] V5 > 171
#> |   |   |   |   [12] V7 <= 119 *
#> |   |   |   |   [13] V7 > 119 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V6 <= 0
#> |   |   |   |   [16] V7 <= 172
#> |   |   |   |   |   [17] V7 <= 132
#> |   |   |   |   |   |   [18] V3 <= 8 *
#> |   |   |   |   |   |   [19] V3 > 8 *
#> |   |   |   |   |   [20] V7 > 132
#> |   |   |   |   |   |   [21] V5 <= 5
#> |   |   |   |   |   |   |   [22] V7 <= 160 *
#> |   |   |   |   |   |   |   [23] V7 > 160 *
#> |   |   |   |   |   |   [24] V5 > 5 *
#> |   |   |   |   [25] V7 > 172 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V7 <= 118
#> |   |   |   |   |   [28] V3 <= 5 *
#> |   |   |   |   |   [29] V3 > 5 *
#> |   |   |   |   [30] V7 > 118
#> |   |   |   |   |   [31] V2 <= 63
#> |   |   |   |   |   |   [32] V2 <= 50 *
#> |   |   |   |   |   |   [33] V2 > 50
#> |   |   |   |   |   |   |   [34] V7 <= 140 *
#> |   |   |   |   |   |   |   [35] V7 > 140 *
#> |   |   |   |   |   [36] V2 > 63
#> |   |   |   |   |   |   [37] V3 <= 11 *
#> |   |   |   |   |   |   [38] V3 > 11 *
#> |   [39] V2 > 70
#> |   |   [40] V5 <= 173
#> |   |   |   [41] V7 <= 106
#> |   |   |   |   [42] V4 <= 0 *
#> |   |   |   |   [43] V4 > 0 *
#> |   |   |   [44] V7 > 106
#> |   |   |   |   [45] V4 <= 0
#> |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V5 <= 65
#> |   |   |   |   |   |   |   [49] V7 <= 117 *
#> |   |   |   |   |   |   |   [50] V7 > 117
#> |   |   |   |   |   |   |   |   [51] V2 <= 82
#> |   |   |   |   |   |   |   |   |   [52] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [53] V5 > 7 *
#> |   |   |   |   |   |   |   |   [54] V2 > 82 *
#> |   |   |   |   |   |   [55] V5 > 65 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V5 <= 9
#> |   |   |   |   |   |   [58] V5 <= 2
#> |   |   |   |   |   |   |   [59] V2 <= 86
#> |   |   |   |   |   |   |   |   [60] V7 <= 136 *
#> |   |   |   |   |   |   |   |   [61] V7 > 136
#> |   |   |   |   |   |   |   |   |   [62] V7 <= 171 *
#> |   |   |   |   |   |   |   |   |   [63] V7 > 171 *
#> |   |   |   |   |   |   |   [64] V2 > 86 *
#> |   |   |   |   |   |   [65] V5 > 2
#> |   |   |   |   |   |   |   [66] V6 <= 0 *
#> |   |   |   |   |   |   |   [67] V6 > 0 *
#> |   |   |   |   |   [68] V5 > 9 *
#> |   |   [69] V5 > 173
#> |   |   |   [70] V2 <= 85
#> |   |   |   |   [71] V6 <= 0 *
#> |   |   |   |   [72] V6 > 0 *
#> |   |   |   [73] V2 > 85 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V7 <= 110
#> |   |   |   [4] V5 <= 9 *
#> |   |   |   [5] V5 > 9 *
#> |   |   [6] V7 > 110
#> |   |   |   [7] V5 <= 170
#> |   |   |   |   [8] V5 <= 16
#> |   |   |   |   |   [9] V4 <= 0
#> |   |   |   |   |   |   [10] V2 <= 60 *
#> |   |   |   |   |   |   [11] V2 > 60 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V7 <= 121 *
#> |   |   |   |   |   |   [14] V7 > 121
#> |   |   |   |   |   |   |   [15] V7 <= 133
#> |   |   |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [17] V6 > 0 *
#> |   |   |   |   |   |   |   [18] V7 > 133
#> |   |   |   |   |   |   |   |   [19] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [20] V7 <= 154 *
#> |   |   |   |   |   |   |   |   |   [21] V7 > 154 *
#> |   |   |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   |   |   [23] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [24] V7 > 150 *
#> |   |   |   |   [25] V5 > 16 *
#> |   |   |   [26] V5 > 170
#> |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   [28] V3 > 3 *
#> |   [29] V2 > 66
#> |   |   [30] V5 <= 173
#> |   |   |   [31] V2 <= 78
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V5 <= 3 *
#> |   |   |   |   |   [34] V5 > 3
#> |   |   |   |   |   |   [35] V7 <= 130 *
#> |   |   |   |   |   |   [36] V7 > 130 *
#> |   |   |   |   [37] V4 > 0
#> |   |   |   |   |   [38] V5 <= 2
#> |   |   |   |   |   |   [39] V5 <= 0
#> |   |   |   |   |   |   |   [40] V3 <= 5 *
#> |   |   |   |   |   |   |   [41] V3 > 5 *
#> |   |   |   |   |   |   [42] V5 > 0 *
#> |   |   |   |   |   [43] V5 > 2
#> |   |   |   |   |   |   [44] V2 <= 76
#> |   |   |   |   |   |   |   [45] V3 <= 9 *
#> |   |   |   |   |   |   |   [46] V3 > 9 *
#> |   |   |   |   |   |   [47] V2 > 76 *
#> |   |   |   [48] V2 > 78
#> |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   [50] V5 <= 14 *
#> |   |   |   |   |   [51] V5 > 14 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   [54] V5 <= 5 *
#> |   |   |   |   |   |   [55] V5 > 5
#> |   |   |   |   |   |   |   [56] V2 <= 85 *
#> |   |   |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   |   |   [58] V4 > 0 *
#> |   |   [59] V5 > 173
#> |   |   |   [60] V6 <= 0
#> |   |   |   |   [61] V7 <= 160 *
#> |   |   |   |   [62] V7 > 160 *
#> |   |   |   [63] V6 > 0 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V7 <= 150
#> |   |   |   |   |   [6] V3 <= 3
#> |   |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   |   |   [9] V3 > 3
#> |   |   |   |   |   |   [10] V5 <= 10 *
#> |   |   |   |   |   |   [11] V5 > 10 *
#> |   |   |   |   [12] V7 > 150 *
#> |   |   |   [13] V5 > 171
#> |   |   |   |   [14] V7 <= 180
#> |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V3 <= 7 *
#> |   |   |   |   |   |   [18] V3 > 7 *
#> |   |   |   |   [19] V7 > 180 *
#> |   |   [20] V2 > 74
#> |   |   |   [21] V5 <= 165
#> |   |   |   |   [22] V7 <= 98 *
#> |   |   |   |   [23] V7 > 98
#> |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   [26] V3 <= 5 *
#> |   |   |   |   |   |   [27] V3 > 5
#> |   |   |   |   |   |   |   [28] V2 <= 85 *
#> |   |   |   |   |   |   |   [29] V2 > 85 *
#> |   |   |   [30] V5 > 165
#> |   |   |   |   [31] V2 <= 83 *
#> |   |   |   |   [32] V2 > 83 *
#> |   [33] V4 > 0
#> |   |   [34] V6 <= 0
#> |   |   |   [35] V3 <= 3 *
#> |   |   |   [36] V3 > 3
#> |   |   |   |   [37] V3 <= 13
#> |   |   |   |   |   [38] V2 <= 61
#> |   |   |   |   |   |   [39] V5 <= 3 *
#> |   |   |   |   |   |   [40] V5 > 3 *
#> |   |   |   |   |   [41] V2 > 61
#> |   |   |   |   |   |   [42] V7 <= 122 *
#> |   |   |   |   |   |   [43] V7 > 122 *
#> |   |   |   |   [44] V3 > 13
#> |   |   |   |   |   [45] V7 <= 132 *
#> |   |   |   |   |   [46] V7 > 132 *
#> |   |   [47] V6 > 0
#> |   |   |   [48] V2 <= 74
#> |   |   |   |   [49] V7 <= 100 *
#> |   |   |   |   [50] V7 > 100
#> |   |   |   |   |   [51] V5 <= 1
#> |   |   |   |   |   |   [52] V2 <= 43 *
#> |   |   |   |   |   |   [53] V2 > 43
#> |   |   |   |   |   |   |   [54] V3 <= 7 *
#> |   |   |   |   |   |   |   [55] V3 > 7 *
#> |   |   |   |   |   [56] V5 > 1
#> |   |   |   |   |   |   [57] V7 <= 150
#> |   |   |   |   |   |   |   [58] V2 <= 54 *
#> |   |   |   |   |   |   |   [59] V2 > 54 *
#> |   |   |   |   |   |   [60] V7 > 150 *
#> |   |   |   [61] V2 > 74
#> |   |   |   |   [62] V5 <= 0
#> |   |   |   |   |   [63] V2 <= 80 *
#> |   |   |   |   |   [64] V2 > 80 *
#> |   |   |   |   [65] V5 > 0
#> |   |   |   |   |   [66] V7 <= 127 *
#> |   |   |   |   |   [67] V7 > 127 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 82
#> |   |   |   |   |   |   [10] V2 <= 70 *
#> |   |   |   |   |   |   [11] V2 > 70 *
#> |   |   |   |   |   [12] V2 > 82 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 69 *
#> |   |   |   |   |   [15] V2 > 69
#> |   |   |   |   |   |   [16] V3 <= 5
#> |   |   |   |   |   |   |   [17] V7 <= 125 *
#> |   |   |   |   |   |   |   [18] V7 > 125 *
#> |   |   |   |   |   |   [19] V3 > 5
#> |   |   |   |   |   |   |   [20] V3 <= 11 *
#> |   |   |   |   |   |   |   [21] V3 > 11 *
#> |   |   [22] V5 > 171
#> |   |   |   [23] V5 <= 178 *
#> |   |   |   [24] V5 > 178 *
#> |   [25] V4 > 0
#> |   |   [26] V2 <= 65
#> |   |   |   [27] V3 <= 6
#> |   |   |   |   [28] V2 <= 44 *
#> |   |   |   |   [29] V2 > 44
#> |   |   |   |   |   [30] V5 <= 0 *
#> |   |   |   |   |   [31] V5 > 0
#> |   |   |   |   |   |   [32] V5 <= 2 *
#> |   |   |   |   |   |   [33] V5 > 2 *
#> |   |   |   [34] V3 > 6
#> |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   [36] V5 <= 6 *
#> |   |   |   |   |   [37] V5 > 6 *
#> |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   [39] V7 <= 138 *
#> |   |   |   |   |   [40] V7 > 138 *
#> |   |   [41] V2 > 65
#> |   |   |   [42] V2 <= 81
#> |   |   |   |   [43] V2 <= 74
#> |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   [45] V3 > 3
#> |   |   |   |   |   |   [46] V3 <= 9
#> |   |   |   |   |   |   |   [47] V7 <= 142 *
#> |   |   |   |   |   |   |   [48] V7 > 142 *
#> |   |   |   |   |   |   [49] V3 > 9 *
#> |   |   |   |   [50] V2 > 74
#> |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   [54] V5 > 0 *
#> |   |   |   [55] V2 > 81 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V7 <= 123
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V5 <= 2 *
#> |   |   |   [5] V5 > 2 *
#> |   |   [6] V2 > 60
#> |   |   |   [7] V5 <= 158
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V3 <= 8
#> |   |   |   |   |   |   [10] V2 <= 82 *
#> |   |   |   |   |   |   [11] V2 > 82 *
#> |   |   |   |   |   [12] V3 > 8 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   |   [18] V5 > 158 *
#> |   [19] V7 > 123
#> |   |   [20] V5 <= 173
#> |   |   |   [21] V4 <= 0
#> |   |   |   |   [22] V2 <= 53 *
#> |   |   |   |   [23] V2 > 53
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V2 <= 68 *
#> |   |   |   |   |   |   [26] V2 > 68 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V7 <= 140 *
#> |   |   |   |   |   |   [29] V7 > 140
#> |   |   |   |   |   |   |   [30] V2 <= 85
#> |   |   |   |   |   |   |   |   [31] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [32] V2 > 71 *
#> |   |   |   |   |   |   |   [33] V2 > 85 *
#> |   |   |   [34] V4 > 0
#> |   |   |   |   [35] V2 <= 68
#> |   |   |   |   |   [36] V2 <= 55
#> |   |   |   |   |   |   [37] V5 <= 1 *
#> |   |   |   |   |   |   [38] V5 > 1
#> |   |   |   |   |   |   |   [39] V7 <= 150 *
#> |   |   |   |   |   |   |   [40] V7 > 150 *
#> |   |   |   |   |   [41] V2 > 55
#> |   |   |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   |   |   [43] V3 <= 5 *
#> |   |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   |   [46] V3 <= 8 *
#> |   |   |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   |   [48] V2 > 68
#> |   |   |   |   |   [49] V5 <= 2
#> |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   [51] V3 > 4 *
#> |   |   |   |   |   [52] V5 > 2
#> |   |   |   |   |   |   [53] V3 <= 19
#> |   |   |   |   |   |   |   [54] V3 <= 10 *
#> |   |   |   |   |   |   |   [55] V3 > 10 *
#> |   |   |   |   |   |   [56] V3 > 19 *
#> |   |   [57] V5 > 173
#> |   |   |   [58] V6 <= 0
#> |   |   |   |   [59] V2 <= 75 *
#> |   |   |   |   [60] V2 > 75 *
#> |   |   |   [61] V6 > 0
#> |   |   |   |   [62] V7 <= 153 *
#> |   |   |   |   [63] V7 > 153 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0 *
#> |   |   [6] V7 > 112
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V5 <= 150
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   |   [11] V5 > 150
#> |   |   |   |   |   [12] V3 <= 7
#> |   |   |   |   |   |   [13] V7 <= 153 *
#> |   |   |   |   |   |   [14] V7 > 153 *
#> |   |   |   |   |   [15] V3 > 7 *
#> |   |   |   [16] V4 > 0
#> |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   [18] V7 <= 130 *
#> |   |   |   |   |   [19] V7 > 130
#> |   |   |   |   |   |   [20] V5 <= 7 *
#> |   |   |   |   |   |   [21] V5 > 7 *
#> |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   [23] V5 <= 1
#> |   |   |   |   |   |   [24] V2 <= 45 *
#> |   |   |   |   |   |   [25] V2 > 45 *
#> |   |   |   |   |   [26] V5 > 1 *
#> |   [27] V2 > 62
#> |   |   [28] V5 <= 173
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   [32] V3 > 3 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V2 <= 66 *
#> |   |   |   |   |   [35] V2 > 66
#> |   |   |   |   |   |   [36] V7 <= 110 *
#> |   |   |   |   |   |   [37] V7 > 110
#> |   |   |   |   |   |   |   [38] V3 <= 2 *
#> |   |   |   |   |   |   |   [39] V3 > 2
#> |   |   |   |   |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [41] V7 > 130 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   [44] V7 <= 174
#> |   |   |   |   |   |   [45] V5 <= 4 *
#> |   |   |   |   |   |   [46] V5 > 4
#> |   |   |   |   |   |   |   [47] V7 <= 130 *
#> |   |   |   |   |   |   |   [48] V7 > 130 *
#> |   |   |   |   |   [49] V7 > 174 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V7 <= 126
#> |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   [54] V7 > 126
#> |   |   |   |   |   |   [55] V5 <= 0
#> |   |   |   |   |   |   |   [56] V2 <= 78 *
#> |   |   |   |   |   |   |   [57] V2 > 78 *
#> |   |   |   |   |   |   [58] V5 > 0
#> |   |   |   |   |   |   |   [59] V5 <= 2 *
#> |   |   |   |   |   |   |   [60] V5 > 2
#> |   |   |   |   |   |   |   |   [61] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [62] V5 > 9 *
#> |   |   [63] V5 > 173
#> |   |   |   [64] V3 <= 2 *
#> |   |   |   [65] V3 > 2 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V7 <= 119 *
#> |   |   |   |   [6] V7 > 119
#> |   |   |   |   |   [7] V2 <= 77 *
#> |   |   |   |   |   [8] V2 > 77 *
#> |   |   |   [9] V5 > 170
#> |   |   |   |   [10] V2 <= 81
#> |   |   |   |   |   [11] V2 <= 77 *
#> |   |   |   |   |   [12] V2 > 77 *
#> |   |   |   |   [13] V2 > 81 *
#> |   |   [14] V6 > 0
#> |   |   |   [15] V5 <= 119
#> |   |   |   |   [16] V7 <= 90 *
#> |   |   |   |   [17] V7 > 90
#> |   |   |   |   |   [18] V2 <= 56 *
#> |   |   |   |   |   [19] V2 > 56
#> |   |   |   |   |   |   [20] V7 <= 110 *
#> |   |   |   |   |   |   [21] V7 > 110
#> |   |   |   |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   |   |   |   [23] V3 > 2
#> |   |   |   |   |   |   |   |   [24] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [25] V5 <= 6 *
#> |   |   |   |   |   |   |   |   |   [26] V5 > 6 *
#> |   |   |   |   |   |   |   |   [27] V5 > 10 *
#> |   |   |   [28] V5 > 119
#> |   |   |   |   [29] V5 <= 179 *
#> |   |   |   |   [30] V5 > 179 *
#> |   [31] V4 > 0
#> |   |   [32] V2 <= 66
#> |   |   |   [33] V7 <= 121
#> |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V5 <= 5 *
#> |   |   |   |   |   [37] V5 > 5 *
#> |   |   |   [38] V7 > 121
#> |   |   |   |   [39] V2 <= 60
#> |   |   |   |   |   [40] V7 <= 180
#> |   |   |   |   |   |   [41] V2 <= 57
#> |   |   |   |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   |   |   |   [43] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   |   |   [45] V6 > 0 *
#> |   |   |   |   |   |   [46] V2 > 57 *
#> |   |   |   |   |   [47] V7 > 180 *
#> |   |   |   |   [48] V2 > 60
#> |   |   |   |   |   [49] V2 <= 63 *
#> |   |   |   |   |   [50] V2 > 63 *
#> |   |   [51] V2 > 66
#> |   |   |   [52] V2 <= 78
#> |   |   |   |   [53] V7 <= 145
#> |   |   |   |   |   [54] V3 <= 9
#> |   |   |   |   |   |   [55] V2 <= 73 *
#> |   |   |   |   |   |   [56] V2 > 73 *
#> |   |   |   |   |   [57] V3 > 9
#> |   |   |   |   |   |   [58] V5 <= 1 *
#> |   |   |   |   |   |   [59] V5 > 1 *
#> |   |   |   |   [60] V7 > 145
#> |   |   |   |   |   [61] V7 <= 156 *
#> |   |   |   |   |   [62] V7 > 156
#> |   |   |   |   |   |   [63] V2 <= 73 *
#> |   |   |   |   |   |   [64] V2 > 73 *
#> |   |   |   [65] V2 > 78
#> |   |   |   |   [66] V6 <= 0 *
#> |   |   |   |   [67] V6 > 0 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 151
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V5 <= 150 *
#> |   |   |   |   [6] V5 > 150 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V5 <= 165
#> |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   [10] V2 <= 74 *
#> |   |   |   |   |   |   [11] V2 > 74 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V2 <= 82
#> |   |   |   |   |   |   |   [14] V5 <= 4 *
#> |   |   |   |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   |   |   |   [16] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [17] V5 > 8 *
#> |   |   |   |   |   |   [18] V2 > 82 *
#> |   |   |   |   [19] V5 > 165
#> |   |   |   |   |   [20] V2 <= 66 *
#> |   |   |   |   |   [21] V2 > 66
#> |   |   |   |   |   |   [22] V2 <= 76 *
#> |   |   |   |   |   |   [23] V2 > 76 *
#> |   |   [24] V7 > 151
#> |   |   |   [25] V5 <= 169
#> |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   [27] V6 > 0 *
#> |   |   |   [28] V5 > 169
#> |   |   |   |   [29] V2 <= 79
#> |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   [31] V3 > 3 *
#> |   |   |   |   [32] V2 > 79 *
#> |   [33] V4 > 0
#> |   |   [34] V6 <= 0
#> |   |   |   [35] V2 <= 66
#> |   |   |   |   [36] V5 <= 3
#> |   |   |   |   |   [37] V7 <= 140 *
#> |   |   |   |   |   [38] V7 > 140 *
#> |   |   |   |   [39] V5 > 3
#> |   |   |   |   |   [40] V3 <= 12 *
#> |   |   |   |   |   [41] V3 > 12 *
#> |   |   |   [42] V2 > 66
#> |   |   |   |   [43] V3 <= 11
#> |   |   |   |   |   [44] V7 <= 124 *
#> |   |   |   |   |   [45] V7 > 124
#> |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   [47] V3 > 4 *
#> |   |   |   |   [48] V3 > 11 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V5 <= 5
#> |   |   |   |   [51] V2 <= 73
#> |   |   |   |   |   [52] V2 <= 55 *
#> |   |   |   |   |   [53] V2 > 55
#> |   |   |   |   |   |   [54] V3 <= 9
#> |   |   |   |   |   |   |   [55] V2 <= 67 *
#> |   |   |   |   |   |   |   [56] V2 > 67 *
#> |   |   |   |   |   |   [57] V3 > 9 *
#> |   |   |   |   [58] V2 > 73
#> |   |   |   |   |   [59] V7 <= 143 *
#> |   |   |   |   |   [60] V7 > 143 *
#> |   |   |   [61] V5 > 5
#> |   |   |   |   [62] V5 <= 8 *
#> |   |   |   |   [63] V5 > 8
#> |   |   |   |   |   [64] V5 <= 10 *
#> |   |   |   |   |   [65] V5 > 10 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 161
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 7
#> |   |   |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   |   |   [11] V3 > 2 *
#> |   |   |   |   |   [12] V5 > 7
#> |   |   |   |   |   |   [13] V7 <= 140 *
#> |   |   |   |   |   |   [14] V7 > 140 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   [17] V3 <= 17
#> |   |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   |   [19] V2 <= 55
#> |   |   |   |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [21] V5 > 2 *
#> |   |   |   |   |   |   |   [22] V2 > 55 *
#> |   |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   |   [24] V7 <= 116 *
#> |   |   |   |   |   |   |   [25] V7 > 116
#> |   |   |   |   |   |   |   |   [26] V5 <= 7
#> |   |   |   |   |   |   |   |   |   [27] V7 <= 141 *
#> |   |   |   |   |   |   |   |   |   [28] V7 > 141 *
#> |   |   |   |   |   |   |   |   [29] V5 > 7 *
#> |   |   |   |   |   [30] V3 > 17 *
#> |   |   |   |   [31] V2 > 63
#> |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   [33] V3 <= 10
#> |   |   |   |   |   |   |   [34] V2 <= 72 *
#> |   |   |   |   |   |   |   [35] V2 > 72 *
#> |   |   |   |   |   |   [36] V3 > 10 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V2 <= 76
#> |   |   |   |   |   |   |   [39] V5 <= 10
#> |   |   |   |   |   |   |   |   [40] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [41] V2 > 67
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [44] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [45] V3 > 8 *
#> |   |   |   |   |   |   |   [46] V5 > 10 *
#> |   |   |   |   |   |   [47] V2 > 76 *
#> |   |   [48] V5 > 161
#> |   |   |   [49] V2 <= 75
#> |   |   |   |   [50] V7 <= 117 *
#> |   |   |   |   [51] V7 > 117 *
#> |   |   |   [52] V2 > 75 *
#> |   [53] V2 > 78
#> |   |   [54] V4 <= 0
#> |   |   |   [55] V6 <= 0
#> |   |   |   |   [56] V7 <= 145 *
#> |   |   |   |   [57] V7 > 145 *
#> |   |   |   [58] V6 > 0
#> |   |   |   |   [59] V5 <= 173
#> |   |   |   |   |   [60] V2 <= 82 *
#> |   |   |   |   |   [61] V2 > 82
#> |   |   |   |   |   |   [62] V5 <= 8 *
#> |   |   |   |   |   |   [63] V5 > 8 *
#> |   |   |   |   [64] V5 > 173 *
#> |   |   [65] V4 > 0
#> |   |   |   [66] V2 <= 86
#> |   |   |   |   [67] V6 <= 0 *
#> |   |   |   |   [68] V6 > 0 *
#> |   |   |   [69] V2 > 86 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 55
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 150
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V7 > 150 *
#> |   |   [8] V4 > 0
#> |   |   |   [9] V3 <= 13
#> |   |   |   |   [10] V2 <= 43 *
#> |   |   |   |   [11] V2 > 43
#> |   |   |   |   |   [12] V7 <= 129 *
#> |   |   |   |   |   [13] V7 > 129
#> |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   [16] V3 > 13 *
#> |   [17] V2 > 55
#> |   |   [18] V5 <= 173
#> |   |   |   [19] V5 <= 14
#> |   |   |   |   [20] V4 <= 0
#> |   |   |   |   |   [21] V7 <= 155
#> |   |   |   |   |   |   [22] V2 <= 80
#> |   |   |   |   |   |   |   [23] V7 <= 101 *
#> |   |   |   |   |   |   |   [24] V7 > 101
#> |   |   |   |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [26] V3 > 4 *
#> |   |   |   |   |   |   [27] V2 > 80 *
#> |   |   |   |   |   [28] V7 > 155 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V3 <= 5 *
#> |   |   |   |   |   |   [32] V3 > 5
#> |   |   |   |   |   |   |   [33] V7 <= 142
#> |   |   |   |   |   |   |   |   [34] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [35] V7 > 120 *
#> |   |   |   |   |   |   |   [36] V7 > 142
#> |   |   |   |   |   |   |   |   [37] V7 <= 170 *
#> |   |   |   |   |   |   |   |   [38] V7 > 170 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   |   [42] V3 <= 17
#> |   |   |   |   |   |   |   |   [43] V7 <= 141
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   [46] V2 <= 74
#> |   |   |   |   |   |   |   |   |   |   |   [47] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [48] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [49] V2 > 74 *
#> |   |   |   |   |   |   |   |   [50] V7 > 141
#> |   |   |   |   |   |   |   |   |   [51] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [52] V3 > 9 *
#> |   |   |   |   |   |   |   [53] V3 > 17 *
#> |   |   |   [54] V5 > 14
#> |   |   |   |   [55] V2 <= 76
#> |   |   |   |   |   [56] V5 <= 150 *
#> |   |   |   |   |   [57] V5 > 150 *
#> |   |   |   |   [58] V2 > 76
#> |   |   |   |   |   [59] V3 <= 9
#> |   |   |   |   |   |   [60] V5 <= 80 *
#> |   |   |   |   |   |   [61] V5 > 80 *
#> |   |   |   |   |   [62] V3 > 9 *
#> |   |   [63] V5 > 173
#> |   |   |   [64] V6 <= 0
#> |   |   |   |   [65] V3 <= 9
#> |   |   |   |   |   [66] V2 <= 79 *
#> |   |   |   |   |   [67] V2 > 79 *
#> |   |   |   |   [68] V3 > 9 *
#> |   |   |   [69] V6 > 0 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 123
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 120
#> |   |   |   |   |   [6] V7 <= 106 *
#> |   |   |   |   |   [7] V7 > 106 *
#> |   |   |   |   [8] V7 > 120
#> |   |   |   |   |   [9] V3 <= 2 *
#> |   |   |   |   |   [10] V3 > 2
#> |   |   |   |   |   |   [11] V5 <= 16
#> |   |   |   |   |   |   |   [12] V2 <= 61 *
#> |   |   |   |   |   |   |   [13] V2 > 61 *
#> |   |   |   |   |   |   [14] V5 > 16 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 66
#> |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   [18] V3 <= 14
#> |   |   |   |   |   |   |   [19] V7 <= 127 *
#> |   |   |   |   |   |   |   [20] V7 > 127
#> |   |   |   |   |   |   |   |   [21] V2 <= 51 *
#> |   |   |   |   |   |   |   |   [22] V2 > 51
#> |   |   |   |   |   |   |   |   |   [23] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [24] V3 > 4 *
#> |   |   |   |   |   |   [25] V3 > 14 *
#> |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   [27] V3 <= 17
#> |   |   |   |   |   |   |   [28] V3 <= 10
#> |   |   |   |   |   |   |   |   [29] V7 <= 112 *
#> |   |   |   |   |   |   |   |   [30] V7 > 112
#> |   |   |   |   |   |   |   |   |   [31] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   [32] V2 > 54 *
#> |   |   |   |   |   |   |   [33] V3 > 10 *
#> |   |   |   |   |   |   [34] V3 > 17 *
#> |   |   |   |   [35] V2 > 66
#> |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   [37] V3 > 3
#> |   |   |   |   |   |   [38] V7 <= 142 *
#> |   |   |   |   |   |   [39] V7 > 142 *
#> |   |   [40] V5 > 123
#> |   |   |   [41] V3 <= 7
#> |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   [43] V6 > 0 *
#> |   |   |   [44] V3 > 7 *
#> |   [45] V2 > 74
#> |   |   [46] V6 <= 0
#> |   |   |   [47] V3 <= 3 *
#> |   |   |   [48] V3 > 3
#> |   |   |   |   [49] V5 <= 167
#> |   |   |   |   |   [50] V4 <= 0 *
#> |   |   |   |   |   [51] V4 > 0 *
#> |   |   |   |   [52] V5 > 167 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V5 <= 173
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V2 <= 82
#> |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   [59] V2 > 82
#> |   |   |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   |   |   [61] V3 > 4 *
#> |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   [63] V7 <= 143
#> |   |   |   |   |   |   [64] V5 <= 0 *
#> |   |   |   |   |   |   [65] V5 > 0 *
#> |   |   |   |   |   [66] V7 > 143 *
#> |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V5 <= 3 *
#> |   |   |   |   [6] V5 > 3
#> |   |   |   |   |   [7] V3 <= 4 *
#> |   |   |   |   |   [8] V3 > 4 *
#> |   |   |   [9] V2 > 64
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 8 *
#> |   |   |   |   |   [12] V5 > 8
#> |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 2 *
#> |   |   |   |   |   [17] V5 > 2
#> |   |   |   |   |   |   [18] V5 <= 3 *
#> |   |   |   |   |   |   [19] V5 > 3
#> |   |   |   |   |   |   |   [20] V7 <= 140
#> |   |   |   |   |   |   |   |   [21] V2 <= 85 *
#> |   |   |   |   |   |   |   |   [22] V2 > 85 *
#> |   |   |   |   |   |   |   [23] V7 > 140 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 63
#> |   |   |   |   [26] V3 <= 6
#> |   |   |   |   |   [27] V3 <= 2 *
#> |   |   |   |   |   [28] V3 > 2
#> |   |   |   |   |   |   [29] V5 <= 0 *
#> |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   [32] V6 > 0 *
#> |   |   |   |   [33] V3 > 6
#> |   |   |   |   |   [34] V5 <= 9
#> |   |   |   |   |   |   [35] V3 <= 11
#> |   |   |   |   |   |   |   [36] V7 <= 120 *
#> |   |   |   |   |   |   |   [37] V7 > 120 *
#> |   |   |   |   |   |   [38] V3 > 11 *
#> |   |   |   |   |   [39] V5 > 9 *
#> |   |   |   [40] V2 > 63
#> |   |   |   |   [41] V7 <= 104 *
#> |   |   |   |   [42] V7 > 104
#> |   |   |   |   |   [43] V2 <= 79
#> |   |   |   |   |   |   [44] V5 <= 2
#> |   |   |   |   |   |   |   [45] V7 <= 170
#> |   |   |   |   |   |   |   |   [46] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [47] V2 <= 72 *
#> |   |   |   |   |   |   |   |   |   [48] V2 > 72 *
#> |   |   |   |   |   |   |   |   [49] V5 > 0 *
#> |   |   |   |   |   |   |   [50] V7 > 170 *
#> |   |   |   |   |   |   [51] V5 > 2
#> |   |   |   |   |   |   |   [52] V7 <= 145
#> |   |   |   |   |   |   |   |   [53] V2 <= 72 *
#> |   |   |   |   |   |   |   |   [54] V2 > 72 *
#> |   |   |   |   |   |   |   [55] V7 > 145 *
#> |   |   |   |   |   [56] V2 > 79
#> |   |   |   |   |   |   [57] V3 <= 6 *
#> |   |   |   |   |   |   [58] V3 > 6 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   |   [8] V2 <= 57 *
#> |   |   |   |   |   |   [9] V2 > 57 *
#> |   |   |   |   [10] V2 > 64
#> |   |   |   |   |   [11] V3 <= 3 *
#> |   |   |   |   |   [12] V3 > 3 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V3 <= 18
#> |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   [16] V2 <= 62
#> |   |   |   |   |   |   |   [17] V5 <= 2 *
#> |   |   |   |   |   |   |   [18] V5 > 2
#> |   |   |   |   |   |   |   |   [19] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [20] V7 > 129 *
#> |   |   |   |   |   |   [21] V2 > 62
#> |   |   |   |   |   |   |   [22] V5 <= 3 *
#> |   |   |   |   |   |   |   [23] V5 > 3 *
#> |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   [25] V7 <= 110 *
#> |   |   |   |   |   |   [26] V7 > 110
#> |   |   |   |   |   |   |   [27] V5 <= 4
#> |   |   |   |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [29] V3 > 3
#> |   |   |   |   |   |   |   |   |   [30] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   [31] V2 > 55
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [33] V5 > 0 *
#> |   |   |   |   |   |   |   [34] V5 > 4
#> |   |   |   |   |   |   |   |   [35] V5 <= 10 *
#> |   |   |   |   |   |   |   |   [36] V5 > 10 *
#> |   |   |   |   [37] V3 > 18 *
#> |   |   [38] V5 > 150
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V7 <= 140 *
#> |   |   |   |   [42] V7 > 140 *
#> |   [43] V2 > 74
#> |   |   [44] V6 <= 0
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V2 <= 85 *
#> |   |   |   |   [47] V2 > 85 *
#> |   |   |   [48] V4 > 0 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V4 <= 0
#> |   |   |   |   [51] V5 <= 169
#> |   |   |   |   |   [52] V2 <= 85
#> |   |   |   |   |   |   [53] V3 <= 3 *
#> |   |   |   |   |   |   [54] V3 > 3
#> |   |   |   |   |   |   |   [55] V5 <= 18 *
#> |   |   |   |   |   |   |   [56] V5 > 18 *
#> |   |   |   |   |   [57] V2 > 85 *
#> |   |   |   |   [58] V5 > 169 *
#> |   |   |   [59] V4 > 0
#> |   |   |   |   [60] V7 <= 120 *
#> |   |   |   |   [61] V7 > 120 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V5 <= 14
#> |   |   |   [4] V2 <= 63
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V3 <= 11
#> |   |   |   |   |   |   |   [9] V2 <= 51 *
#> |   |   |   |   |   |   |   [10] V2 > 51
#> |   |   |   |   |   |   |   |   [11] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [12] V7 > 138 *
#> |   |   |   |   |   |   [13] V3 > 11 *
#> |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   [16] V3 > 3
#> |   |   |   |   |   |   [17] V7 <= 150
#> |   |   |   |   |   |   |   [18] V5 <= 4 *
#> |   |   |   |   |   |   |   [19] V5 > 4 *
#> |   |   |   |   |   |   [20] V7 > 150 *
#> |   |   |   [21] V2 > 63
#> |   |   |   |   [22] V4 <= 0
#> |   |   |   |   |   [23] V5 <= 2 *
#> |   |   |   |   |   [24] V5 > 2
#> |   |   |   |   |   |   [25] V7 <= 140
#> |   |   |   |   |   |   |   [26] V2 <= 74 *
#> |   |   |   |   |   |   |   [27] V2 > 74 *
#> |   |   |   |   |   |   [28] V7 > 140 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V5 <= 2
#> |   |   |   |   |   |   [31] V7 <= 126 *
#> |   |   |   |   |   |   [32] V7 > 126
#> |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   [34] V5 > 0
#> |   |   |   |   |   |   |   |   [35] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [36] V7 > 142 *
#> |   |   |   |   |   [37] V5 > 2
#> |   |   |   |   |   |   [38] V5 <= 7 *
#> |   |   |   |   |   |   [39] V5 > 7
#> |   |   |   |   |   |   |   [40] V2 <= 76
#> |   |   |   |   |   |   |   |   [41] V3 <= 17
#> |   |   |   |   |   |   |   |   |   [42] V5 <= 10 *
#> |   |   |   |   |   |   |   |   |   [43] V5 > 10 *
#> |   |   |   |   |   |   |   |   [44] V3 > 17 *
#> |   |   |   |   |   |   |   [45] V2 > 76 *
#> |   |   [46] V5 > 14
#> |   |   |   [47] V7 <= 130
#> |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   [49] V6 > 0 *
#> |   |   |   [50] V7 > 130
#> |   |   |   |   [51] V5 <= 125
#> |   |   |   |   |   [52] V2 <= 64 *
#> |   |   |   |   |   [53] V2 > 64 *
#> |   |   |   |   [54] V5 > 125 *
#> |   [55] V5 > 173
#> |   |   [56] V2 <= 52
#> |   |   |   [57] V6 <= 0 *
#> |   |   |   [58] V6 > 0 *
#> |   |   [59] V2 > 52 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V7 <= 138
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V7 > 138
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   |   [12] V2 > 60 *
#> |   |   |   [13] V2 > 71
#> |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   [15] V3 > 2
#> |   |   |   |   |   [16] V3 <= 10
#> |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   [19] V2 <= 81 *
#> |   |   |   |   |   |   |   [20] V2 > 81 *
#> |   |   |   |   |   [21] V3 > 10 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V5 <= 2
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V3 <= 7
#> |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   [27] V3 > 3 *
#> |   |   |   |   |   [28] V3 > 7 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V5 <= 1
#> |   |   |   |   |   |   [31] V2 <= 63
#> |   |   |   |   |   |   |   [32] V2 <= 48 *
#> |   |   |   |   |   |   |   [33] V2 > 48 *
#> |   |   |   |   |   |   [34] V2 > 63
#> |   |   |   |   |   |   |   [35] V7 <= 122 *
#> |   |   |   |   |   |   |   [36] V7 > 122
#> |   |   |   |   |   |   |   |   [37] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 136 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 136 *
#> |   |   |   |   |   |   |   |   [40] V5 > 0 *
#> |   |   |   |   |   [41] V5 > 1 *
#> |   |   |   [42] V5 > 2
#> |   |   |   |   [43] V2 <= 76
#> |   |   |   |   |   [44] V5 <= 7
#> |   |   |   |   |   |   [45] V3 <= 8 *
#> |   |   |   |   |   |   [46] V3 > 8 *
#> |   |   |   |   |   [47] V5 > 7
#> |   |   |   |   |   |   [48] V2 <= 54 *
#> |   |   |   |   |   |   [49] V2 > 54
#> |   |   |   |   |   |   |   [50] V3 <= 17
#> |   |   |   |   |   |   |   |   [51] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [52] V3 > 10
#> |   |   |   |   |   |   |   |   |   [53] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 150 *
#> |   |   |   |   |   |   |   [55] V3 > 17 *
#> |   |   |   |   [56] V2 > 76 *
#> |   [57] V5 > 171
#> |   |   [58] V2 <= 83
#> |   |   |   [59] V3 <= 1 *
#> |   |   |   [60] V3 > 1
#> |   |   |   |   [61] V6 <= 0 *
#> |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   [63] V2 <= 52 *
#> |   |   |   |   |   [64] V2 > 52 *
#> |   |   [65] V2 > 83 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 60
#> |   |   |   |   [8] V7 <= 112
#> |   |   |   |   |   [9] V5 <= 7 *
#> |   |   |   |   |   [10] V5 > 7 *
#> |   |   |   |   [11] V7 > 112
#> |   |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   |   |   [15] V3 > 3
#> |   |   |   |   |   |   |   [16] V3 <= 7
#> |   |   |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   |   |   [19] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   [20] V5 > 8 *
#> |   |   |   |   |   |   |   [21] V3 > 7 *
#> |   |   [22] V5 > 173
#> |   |   |   [23] V5 <= 179 *
#> |   |   |   [24] V5 > 179 *
#> |   [25] V4 > 0
#> |   |   [26] V2 <= 63
#> |   |   |   [27] V6 <= 0
#> |   |   |   |   [28] V2 <= 52
#> |   |   |   |   |   [29] V2 <= 49 *
#> |   |   |   |   |   [30] V2 > 49 *
#> |   |   |   |   [31] V2 > 52
#> |   |   |   |   |   [32] V7 <= 140 *
#> |   |   |   |   |   [33] V7 > 140 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 48 *
#> |   |   |   |   [36] V2 > 48
#> |   |   |   |   |   [37] V5 <= 7
#> |   |   |   |   |   |   [38] V7 <= 138 *
#> |   |   |   |   |   |   [39] V7 > 138 *
#> |   |   |   |   |   [40] V5 > 7 *
#> |   |   [41] V2 > 63
#> |   |   |   [42] V6 <= 0
#> |   |   |   |   [43] V7 <= 127 *
#> |   |   |   |   [44] V7 > 127
#> |   |   |   |   |   [45] V5 <= 8
#> |   |   |   |   |   |   [46] V2 <= 75 *
#> |   |   |   |   |   |   [47] V2 > 75 *
#> |   |   |   |   |   [48] V5 > 8 *
#> |   |   |   [49] V6 > 0
#> |   |   |   |   [50] V7 <= 118 *
#> |   |   |   |   [51] V7 > 118
#> |   |   |   |   |   [52] V5 <= 3
#> |   |   |   |   |   |   [53] V5 <= 0
#> |   |   |   |   |   |   |   [54] V7 <= 145 *
#> |   |   |   |   |   |   |   [55] V7 > 145 *
#> |   |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   |   [57] V5 > 3
#> |   |   |   |   |   |   [58] V2 <= 74 *
#> |   |   |   |   |   |   [59] V2 > 74 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 90 *
#> |   |   |   |   [6] V7 > 90
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V5 <= 8
#> |   |   |   |   |   |   |   [10] V5 <= 1 *
#> |   |   |   |   |   |   |   [11] V5 > 1
#> |   |   |   |   |   |   |   |   [12] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [13] V5 > 4 *
#> |   |   |   |   |   |   [14] V5 > 8 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 66
#> |   |   |   |   |   [17] V7 <= 120
#> |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   [20] V7 > 120
#> |   |   |   |   |   |   [21] V2 <= 57
#> |   |   |   |   |   |   |   [22] V7 <= 172
#> |   |   |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [24] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [25] V3 > 5 *
#> |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   |   |   [27] V7 > 172 *
#> |   |   |   |   |   |   [28] V2 > 57
#> |   |   |   |   |   |   |   [29] V5 <= 3
#> |   |   |   |   |   |   |   |   [30] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [31] V7 > 160 *
#> |   |   |   |   |   |   |   [32] V5 > 3
#> |   |   |   |   |   |   |   |   [33] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [34] V3 > 12 *
#> |   |   |   |   [35] V2 > 66
#> |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   [37] V5 <= 1 *
#> |   |   |   |   |   |   [38] V5 > 1
#> |   |   |   |   |   |   |   [39] V5 <= 9
#> |   |   |   |   |   |   |   |   [40] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [41] V5 > 5 *
#> |   |   |   |   |   |   |   [42] V5 > 9 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V2 <= 74
#> |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   [47] V2 > 74
#> |   |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   |   [49] V3 > 4
#> |   |   |   |   |   |   |   |   [50] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [51] V2 > 78 *
#> |   |   [52] V5 > 15
#> |   |   |   [53] V5 <= 154
#> |   |   |   |   [54] V5 <= 80
#> |   |   |   |   |   [55] V7 <= 154
#> |   |   |   |   |   |   [56] V5 <= 38 *
#> |   |   |   |   |   |   [57] V5 > 38 *
#> |   |   |   |   |   [58] V7 > 154 *
#> |   |   |   |   [59] V5 > 80 *
#> |   |   |   [60] V5 > 154 *
#> |   [61] V5 > 173
#> |   |   [62] V5 <= 179 *
#> |   |   [63] V5 > 179 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 150 *
#> |   |   |   |   [6] V7 > 150 *
#> |   |   |   [7] V6 > 0
#> |   |   |   |   [8] V5 <= 36 *
#> |   |   |   |   [9] V5 > 36 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V5 <= 11
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V5 <= 7
#> |   |   |   |   |   |   [14] V7 <= 130 *
#> |   |   |   |   |   |   [15] V7 > 130 *
#> |   |   |   |   |   [16] V5 > 7 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V2 <= 43 *
#> |   |   |   |   |   [19] V2 > 43
#> |   |   |   |   |   |   [20] V7 <= 130 *
#> |   |   |   |   |   |   [21] V7 > 130
#> |   |   |   |   |   |   |   [22] V2 <= 54 *
#> |   |   |   |   |   |   |   [23] V2 > 54 *
#> |   |   |   [24] V5 > 11 *
#> |   [25] V2 > 62
#> |   |   [26] V5 <= 177
#> |   |   |   [27] V2 <= 78
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V7 <= 90 *
#> |   |   |   |   |   [30] V7 > 90
#> |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   [33] V3 <= 10 *
#> |   |   |   |   |   |   |   [34] V3 > 10 *
#> |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   [36] V5 <= 2
#> |   |   |   |   |   |   [37] V7 <= 123 *
#> |   |   |   |   |   |   [38] V7 > 123
#> |   |   |   |   |   |   |   [39] V2 <= 66 *
#> |   |   |   |   |   |   |   [40] V2 > 66
#> |   |   |   |   |   |   |   |   [41] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 4 *
#> |   |   |   |   |   |   |   |   [44] V3 > 8 *
#> |   |   |   |   |   [45] V5 > 2
#> |   |   |   |   |   |   [46] V3 <= 9 *
#> |   |   |   |   |   |   [47] V3 > 9
#> |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   [50] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [51] V5 > 9 *
#> |   |   |   [52] V2 > 78
#> |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   [54] V7 <= 150
#> |   |   |   |   |   |   [55] V5 <= 8 *
#> |   |   |   |   |   |   [56] V5 > 8
#> |   |   |   |   |   |   |   [57] V5 <= 76 *
#> |   |   |   |   |   |   |   [58] V5 > 76 *
#> |   |   |   |   |   [59] V7 > 150 *
#> |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   [61] V3 <= 4 *
#> |   |   |   |   |   [62] V3 > 4 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 129
#> |   |   |   |   [5] V2 <= 74 *
#> |   |   |   |   [6] V2 > 74
#> |   |   |   |   |   [7] V5 <= 8 *
#> |   |   |   |   |   [8] V5 > 8 *
#> |   |   |   [9] V7 > 129
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   [12] V2 > 60
#> |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V2 <= 61 *
#> |   |   |   |   |   [17] V2 > 61
#> |   |   |   |   |   |   [18] V3 <= 7
#> |   |   |   |   |   |   |   [19] V7 <= 144 *
#> |   |   |   |   |   |   |   [20] V7 > 144 *
#> |   |   |   |   |   |   [21] V3 > 7 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 63
#> |   |   |   |   [24] V7 <= 120
#> |   |   |   |   |   [25] V3 <= 6 *
#> |   |   |   |   |   [26] V3 > 6 *
#> |   |   |   |   [27] V7 > 120
#> |   |   |   |   |   [28] V3 <= 17
#> |   |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   |   [30] V2 <= 59
#> |   |   |   |   |   |   |   |   [31] V2 <= 51 *
#> |   |   |   |   |   |   |   |   [32] V2 > 51 *
#> |   |   |   |   |   |   |   [33] V2 > 59 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V7 <= 176 *
#> |   |   |   |   |   |   |   [36] V7 > 176 *
#> |   |   |   |   |   [37] V3 > 17 *
#> |   |   |   [38] V2 > 63
#> |   |   |   |   [39] V7 <= 126
#> |   |   |   |   |   [40] V5 <= 2
#> |   |   |   |   |   |   [41] V2 <= 69 *
#> |   |   |   |   |   |   [42] V2 > 69
#> |   |   |   |   |   |   |   [43] V3 <= 4 *
#> |   |   |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   |   [45] V5 > 2 *
#> |   |   |   |   [46] V7 > 126
#> |   |   |   |   |   [47] V3 <= 19
#> |   |   |   |   |   |   [48] V5 <= 2
#> |   |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   |   [53] V5 > 2
#> |   |   |   |   |   |   |   [54] V3 <= 9 *
#> |   |   |   |   |   |   |   [55] V3 > 9
#> |   |   |   |   |   |   |   |   [56] V5 <= 10 *
#> |   |   |   |   |   |   |   |   [57] V5 > 10 *
#> |   |   |   |   |   [58] V3 > 19 *
#> |   [59] V5 > 171
#> |   |   [60] V2 <= 58
#> |   |   |   [61] V6 <= 0 *
#> |   |   |   [62] V6 > 0 *
#> |   |   [63] V2 > 58 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V7 <= 114
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V5 <= 2 *
#> |   |   |   |   |   |   [9] V5 > 2 *
#> |   |   |   |   [10] V7 > 114
#> |   |   |   |   |   [11] V2 <= 63
#> |   |   |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   |   |   [14] V3 <= 10
#> |   |   |   |   |   |   |   |   [15] V5 <= 4
#> |   |   |   |   |   |   |   |   |   [16] V7 <= 122 *
#> |   |   |   |   |   |   |   |   |   [17] V7 > 122
#> |   |   |   |   |   |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   |   [19] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   |   [20] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   |   [21] V6 > 0 *
#> |   |   |   |   |   |   |   |   [22] V5 > 4 *
#> |   |   |   |   |   |   |   [23] V3 > 10 *
#> |   |   |   |   |   [24] V2 > 63
#> |   |   |   |   |   |   [25] V4 <= 0 *
#> |   |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   |   [27] V2 <= 71
#> |   |   |   |   |   |   |   |   [28] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [29] V7 > 132
#> |   |   |   |   |   |   |   |   |   [30] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [31] V7 > 149 *
#> |   |   |   |   |   |   |   [32] V2 > 71 *
#> |   |   |   [33] V5 > 15 *
#> |   |   [34] V2 > 74
#> |   |   |   [35] V7 <= 176
#> |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   [37] V7 <= 155
#> |   |   |   |   |   |   [38] V5 <= 7
#> |   |   |   |   |   |   |   [39] V2 <= 82 *
#> |   |   |   |   |   |   |   [40] V2 > 82 *
#> |   |   |   |   |   |   [41] V5 > 7
#> |   |   |   |   |   |   |   [42] V7 <= 140
#> |   |   |   |   |   |   |   |   [43] V5 <= 74 *
#> |   |   |   |   |   |   |   |   [44] V5 > 74 *
#> |   |   |   |   |   |   |   [45] V7 > 140 *
#> |   |   |   |   |   [46] V7 > 155 *
#> |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   [48] V5 <= 1
#> |   |   |   |   |   |   [49] V5 <= 0
#> |   |   |   |   |   |   |   [50] V7 <= 125 *
#> |   |   |   |   |   |   |   [51] V7 > 125 *
#> |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   [53] V5 > 1 *
#> |   |   |   [54] V7 > 176 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V2 <= 74
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V3 <= 7
#> |   |   |   |   |   |   |   [9] V5 <= 4 *
#> |   |   |   |   |   |   |   [10] V5 > 4 *
#> |   |   |   |   |   |   [11] V3 > 7 *
#> |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   [13] V2 <= 63
#> |   |   |   |   |   |   [14] V3 <= 17
#> |   |   |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   |   |   [16] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [17] V7 > 129
#> |   |   |   |   |   |   |   |   |   [18] V2 <= 52 *
#> |   |   |   |   |   |   |   |   |   [19] V2 > 52 *
#> |   |   |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   |   |   [21] V7 <= 138
#> |   |   |   |   |   |   |   |   |   [22] V2 <= 48 *
#> |   |   |   |   |   |   |   |   |   [23] V2 > 48 *
#> |   |   |   |   |   |   |   |   [24] V7 > 138
#> |   |   |   |   |   |   |   |   |   [25] V7 <= 148 *
#> |   |   |   |   |   |   |   |   |   [26] V7 > 148 *
#> |   |   |   |   |   |   [27] V3 > 17 *
#> |   |   |   |   |   [28] V2 > 63
#> |   |   |   |   |   |   [29] V2 <= 73
#> |   |   |   |   |   |   |   [30] V3 <= 6 *
#> |   |   |   |   |   |   |   [31] V3 > 6
#> |   |   |   |   |   |   |   |   [32] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [34] V6 > 0 *
#> |   |   |   |   |   |   |   |   [35] V5 > 10 *
#> |   |   |   |   |   |   [36] V2 > 73 *
#> |   |   |   [37] V2 > 74
#> |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   [39] V4 <= 0 *
#> |   |   |   |   |   [40] V4 > 0 *
#> |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   [43] V5 > 0
#> |   |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   |   [45] V3 <= 2 *
#> |   |   |   |   |   |   |   [46] V3 > 2 *
#> |   |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   |   [48] V7 <= 120 *
#> |   |   |   |   |   |   |   [49] V7 > 120 *
#> |   |   [50] V5 > 16
#> |   |   |   [51] V3 <= 8
#> |   |   |   |   [52] V7 <= 145
#> |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   [54] V6 > 0 *
#> |   |   |   |   [55] V7 > 145 *
#> |   |   |   [56] V3 > 8 *
#> |   [57] V5 > 171
#> |   |   [58] V5 <= 178 *
#> |   |   [59] V5 > 178 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   [10] V5 > 2
#> |   |   |   |   |   |   [11] V2 <= 61 *
#> |   |   |   |   |   |   [12] V2 > 61
#> |   |   |   |   |   |   |   [13] V2 <= 82
#> |   |   |   |   |   |   |   |   [14] V2 <= 77 *
#> |   |   |   |   |   |   |   |   [15] V2 > 77 *
#> |   |   |   |   |   |   |   [16] V2 > 82 *
#> |   |   |   [17] V4 > 0
#> |   |   |   |   [18] V2 <= 70
#> |   |   |   |   |   [19] V3 <= 18
#> |   |   |   |   |   |   [20] V2 <= 63
#> |   |   |   |   |   |   |   [21] V5 <= 6
#> |   |   |   |   |   |   |   |   [22] V7 <= 172
#> |   |   |   |   |   |   |   |   |   [23] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   [24] V3 <= 4
#> |   |   |   |   |   |   |   |   |   |   |   [25] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [26] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [30] V3 > 8 *
#> |   |   |   |   |   |   |   |   [31] V7 > 172 *
#> |   |   |   |   |   |   |   [32] V5 > 6 *
#> |   |   |   |   |   |   [33] V2 > 63
#> |   |   |   |   |   |   |   [34] V7 <= 122 *
#> |   |   |   |   |   |   |   [35] V7 > 122
#> |   |   |   |   |   |   |   |   [36] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [37] V7 > 140 *
#> |   |   |   |   |   [38] V3 > 18 *
#> |   |   |   |   [39] V2 > 70
#> |   |   |   |   |   [40] V3 <= 14
#> |   |   |   |   |   |   [41] V2 <= 76
#> |   |   |   |   |   |   |   [42] V2 <= 73 *
#> |   |   |   |   |   |   |   [43] V2 > 73 *
#> |   |   |   |   |   |   [44] V2 > 76
#> |   |   |   |   |   |   |   [45] V2 <= 79 *
#> |   |   |   |   |   |   |   [46] V2 > 79
#> |   |   |   |   |   |   |   |   [47] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [48] V7 > 126 *
#> |   |   |   |   |   [49] V3 > 14 *
#> |   |   [50] V5 > 16
#> |   |   |   [51] V5 <= 154
#> |   |   |   |   [52] V2 <= 65 *
#> |   |   |   |   [53] V2 > 65
#> |   |   |   |   |   [54] V5 <= 58 *
#> |   |   |   |   |   [55] V5 > 58 *
#> |   |   |   [56] V5 > 154 *
#> |   [57] V5 > 173
#> |   |   [58] V5 <= 179 *
#> |   |   [59] V5 > 179 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V5 <= 45 *
#> |   |   |   [5] V5 > 45
#> |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   [8] V2 <= 52 *
#> |   |   |   |   |   [9] V2 > 52 *
#> |   |   [10] V2 > 60
#> |   |   |   [11] V3 <= 1
#> |   |   |   |   [12] V2 <= 75 *
#> |   |   |   |   [13] V2 > 75 *
#> |   |   |   [14] V3 > 1
#> |   |   |   |   [15] V5 <= 173
#> |   |   |   |   |   [16] V2 <= 71 *
#> |   |   |   |   |   [17] V2 > 71
#> |   |   |   |   |   |   [18] V5 <= 7 *
#> |   |   |   |   |   |   [19] V5 > 7
#> |   |   |   |   |   |   |   [20] V7 <= 140
#> |   |   |   |   |   |   |   |   [21] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [22] V3 > 5 *
#> |   |   |   |   |   |   |   [23] V7 > 140
#> |   |   |   |   |   |   |   |   [24] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [25] V7 > 150 *
#> |   |   |   |   [26] V5 > 173
#> |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   [28] V3 <= 9
#> |   |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   |   [30] V3 > 2 *
#> |   |   |   |   |   |   [31] V3 > 9 *
#> |   |   |   |   |   [32] V6 > 0 *
#> |   [33] V4 > 0
#> |   |   [34] V2 <= 70
#> |   |   |   [35] V6 <= 0
#> |   |   |   |   [36] V3 <= 10
#> |   |   |   |   |   [37] V2 <= 63
#> |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   [39] V3 > 4 *
#> |   |   |   |   |   [40] V2 > 63 *
#> |   |   |   |   [41] V3 > 10 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 11
#> |   |   |   |   |   [44] V7 <= 110 *
#> |   |   |   |   |   [45] V7 > 110
#> |   |   |   |   |   |   [46] V2 <= 54 *
#> |   |   |   |   |   |   [47] V2 > 54
#> |   |   |   |   |   |   |   [48] V7 <= 146 *
#> |   |   |   |   |   |   |   [49] V7 > 146 *
#> |   |   |   |   [50] V3 > 11 *
#> |   |   [51] V2 > 70
#> |   |   |   [52] V7 <= 126
#> |   |   |   |   [53] V3 <= 12
#> |   |   |   |   |   [54] V3 <= 8 *
#> |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   [56] V3 > 12 *
#> |   |   |   [57] V7 > 126
#> |   |   |   |   [58] V2 <= 76
#> |   |   |   |   |   [59] V2 <= 72 *
#> |   |   |   |   |   [60] V2 > 72 *
#> |   |   |   |   [61] V2 > 76
#> |   |   |   |   |   [62] V3 <= 12 *
#> |   |   |   |   |   [63] V3 > 12 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 70
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 150 *
#> |   |   |   |   [6] V5 > 150 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 55
#> |   |   |   |   |   [9] V2 <= 48 *
#> |   |   |   |   |   [10] V2 > 48 *
#> |   |   |   |   [11] V2 > 55
#> |   |   |   |   |   [12] V3 <= 12
#> |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   [15] V3 > 12 *
#> |   |   [16] V2 > 70
#> |   |   |   [17] V5 <= 167
#> |   |   |   |   [18] V3 <= 7
#> |   |   |   |   |   [19] V5 <= 5 *
#> |   |   |   |   |   [20] V5 > 5 *
#> |   |   |   |   [21] V3 > 7
#> |   |   |   |   |   [22] V2 <= 75 *
#> |   |   |   |   |   [23] V2 > 75 *
#> |   |   |   [24] V5 > 167
#> |   |   |   |   [25] V2 <= 79 *
#> |   |   |   |   [26] V2 > 79 *
#> |   [27] V6 > 0
#> |   |   [28] V2 <= 71
#> |   |   |   [29] V2 <= 59
#> |   |   |   |   [30] V5 <= 99
#> |   |   |   |   |   [31] V5 <= 5
#> |   |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   |   [34] V2 <= 46 *
#> |   |   |   |   |   |   |   [35] V2 > 46 *
#> |   |   |   |   |   [36] V5 > 5 *
#> |   |   |   |   [37] V5 > 99
#> |   |   |   |   |   [38] V3 <= 7 *
#> |   |   |   |   |   [39] V3 > 7 *
#> |   |   |   [40] V2 > 59
#> |   |   |   |   [41] V4 <= 0
#> |   |   |   |   |   [42] V3 <= 6 *
#> |   |   |   |   |   [43] V3 > 6 *
#> |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   [45] V7 <= 150
#> |   |   |   |   |   |   [46] V2 <= 65 *
#> |   |   |   |   |   |   [47] V2 > 65 *
#> |   |   |   |   |   [48] V7 > 150 *
#> |   |   [49] V2 > 71
#> |   |   |   [50] V5 <= 173
#> |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   [52] V5 <= 2 *
#> |   |   |   |   |   [53] V5 > 2
#> |   |   |   |   |   |   [54] V3 <= 7
#> |   |   |   |   |   |   |   [55] V3 <= 4 *
#> |   |   |   |   |   |   |   [56] V3 > 4 *
#> |   |   |   |   |   |   [57] V3 > 7 *
#> |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   [59] V7 <= 126 *
#> |   |   |   |   |   [60] V7 > 126
#> |   |   |   |   |   |   [61] V3 <= 15
#> |   |   |   |   |   |   |   [62] V5 <= 0 *
#> |   |   |   |   |   |   |   [63] V5 > 0 *
#> |   |   |   |   |   |   [64] V3 > 15 *
#> |   |   |   [65] V5 > 173 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V7 <= 145 *
#> |   |   |   |   |   [7] V7 > 145 *
#> |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   [9] V5 <= 21 *
#> |   |   |   |   |   [10] V5 > 21 *
#> |   |   |   [11] V2 > 71
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V7 <= 130 *
#> |   |   |   |   |   [14] V7 > 130 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 7
#> |   |   |   |   |   |   [17] V5 <= 12 *
#> |   |   |   |   |   |   [18] V5 > 12 *
#> |   |   |   |   |   [19] V3 > 7 *
#> |   |   [20] V5 > 171
#> |   |   |   [21] V5 <= 177 *
#> |   |   |   [22] V5 > 177 *
#> |   [23] V4 > 0
#> |   |   [24] V6 <= 0
#> |   |   |   [25] V7 <= 124
#> |   |   |   |   [26] V3 <= 11 *
#> |   |   |   |   [27] V3 > 11 *
#> |   |   |   [28] V7 > 124
#> |   |   |   |   [29] V7 <= 151
#> |   |   |   |   |   [30] V7 <= 142
#> |   |   |   |   |   |   [31] V5 <= 5
#> |   |   |   |   |   |   |   [32] V2 <= 61 *
#> |   |   |   |   |   |   |   [33] V2 > 61 *
#> |   |   |   |   |   |   [34] V5 > 5 *
#> |   |   |   |   |   [35] V7 > 142 *
#> |   |   |   |   [36] V7 > 151
#> |   |   |   |   |   [37] V2 <= 74
#> |   |   |   |   |   |   [38] V5 <= 1 *
#> |   |   |   |   |   |   [39] V5 > 1 *
#> |   |   |   |   |   [40] V2 > 74 *
#> |   |   [41] V6 > 0
#> |   |   |   [42] V2 <= 76
#> |   |   |   |   [43] V2 <= 54
#> |   |   |   |   |   [44] V2 <= 43 *
#> |   |   |   |   |   [45] V2 > 43
#> |   |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   |   [48] V2 > 54
#> |   |   |   |   |   [49] V2 <= 57 *
#> |   |   |   |   |   [50] V2 > 57
#> |   |   |   |   |   |   [51] V5 <= 5
#> |   |   |   |   |   |   |   [52] V2 <= 63 *
#> |   |   |   |   |   |   |   [53] V2 > 63
#> |   |   |   |   |   |   |   |   [54] V7 <= 149 *
#> |   |   |   |   |   |   |   |   [55] V7 > 149 *
#> |   |   |   |   |   |   [56] V5 > 5 *
#> |   |   |   [57] V2 > 76
#> |   |   |   |   [58] V2 <= 81 *
#> |   |   |   |   [59] V2 > 81 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2
#> |   |   |   |   |   |   [8] V7 <= 140 *
#> |   |   |   |   |   |   [9] V7 > 140 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   [13] V2 <= 52
#> |   |   |   |   |   |   |   |   [14] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [15] V5 > 1 *
#> |   |   |   |   |   |   |   [16] V2 > 52 *
#> |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   [18] V2 <= 43 *
#> |   |   |   |   |   |   |   [19] V2 > 43 *
#> |   |   |   |   |   [20] V2 > 54
#> |   |   |   |   |   |   [21] V7 <= 124
#> |   |   |   |   |   |   |   [22] V3 <= 8 *
#> |   |   |   |   |   |   |   [23] V3 > 8 *
#> |   |   |   |   |   |   [24] V7 > 124
#> |   |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   |   [26] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [27] V5 > 1
#> |   |   |   |   |   |   |   |   |   [28] V3 <= 14 *
#> |   |   |   |   |   |   |   |   |   [29] V3 > 14 *
#> |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   [31] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [32] V2 > 58
#> |   |   |   |   |   |   |   |   |   [33] V2 <= 71
#> |   |   |   |   |   |   |   |   |   |   [34] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   [36] V2 > 71 *
#> |   |   |   [37] V5 > 15
#> |   |   |   |   [38] V5 <= 93 *
#> |   |   |   |   [39] V5 > 93 *
#> |   |   [40] V5 > 170
#> |   |   |   [41] V2 <= 58
#> |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   [43] V6 > 0 *
#> |   |   |   [44] V2 > 58 *
#> |   [45] V2 > 74
#> |   |   [46] V7 <= 125
#> |   |   |   [47] V6 <= 0 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   [50] V4 > 0 *
#> |   |   [51] V7 > 125
#> |   |   |   [52] V6 <= 0
#> |   |   |   |   [53] V2 <= 79 *
#> |   |   |   |   [54] V2 > 79
#> |   |   |   |   |   [55] V5 <= 167 *
#> |   |   |   |   |   [56] V5 > 167 *
#> |   |   |   [57] V6 > 0
#> |   |   |   |   [58] V4 <= 0
#> |   |   |   |   |   [59] V5 <= 169
#> |   |   |   |   |   |   [60] V2 <= 81 *
#> |   |   |   |   |   |   [61] V2 > 81 *
#> |   |   |   |   |   [62] V5 > 169 *
#> |   |   |   |   [63] V4 > 0
#> |   |   |   |   |   [64] V2 <= 80 *
#> |   |   |   |   |   [65] V2 > 80 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 167
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V3 <= 2 *
#> |   |   |   |   |   [10] V3 > 2 *
#> |   |   |   [11] V2 > 71
#> |   |   |   |   [12] V7 <= 155
#> |   |   |   |   |   [13] V3 <= 2 *
#> |   |   |   |   |   [14] V3 > 2
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   |   [17] V7 <= 112 *
#> |   |   |   |   |   |   |   [18] V7 > 112
#> |   |   |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [20] V7 > 130 *
#> |   |   |   |   [21] V7 > 155 *
#> |   |   [22] V5 > 167
#> |   |   |   [23] V2 <= 79
#> |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V2 <= 58 *
#> |   |   |   |   |   [27] V2 > 58 *
#> |   |   |   [28] V2 > 79
#> |   |   |   |   [29] V2 <= 83 *
#> |   |   |   |   [30] V2 > 83 *
#> |   [31] V4 > 0
#> |   |   [32] V7 <= 124
#> |   |   |   [33] V2 <= 61
#> |   |   |   |   [34] V5 <= 5
#> |   |   |   |   |   [35] V5 <= 0 *
#> |   |   |   |   |   [36] V5 > 0 *
#> |   |   |   |   [37] V5 > 5 *
#> |   |   |   [38] V2 > 61
#> |   |   |   |   [39] V3 <= 12
#> |   |   |   |   |   [40] V2 <= 72 *
#> |   |   |   |   |   [41] V2 > 72 *
#> |   |   |   |   [42] V3 > 12 *
#> |   |   [43] V7 > 124
#> |   |   |   [44] V2 <= 73
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V7 <= 168
#> |   |   |   |   |   |   [47] V5 <= 1 *
#> |   |   |   |   |   |   [48] V5 > 1
#> |   |   |   |   |   |   |   [49] V3 <= 13 *
#> |   |   |   |   |   |   |   [50] V3 > 13 *
#> |   |   |   |   |   [51] V7 > 168 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V5 <= 0
#> |   |   |   |   |   |   [54] V3 <= 4 *
#> |   |   |   |   |   |   [55] V3 > 4 *
#> |   |   |   |   |   [56] V5 > 0
#> |   |   |   |   |   |   [57] V5 <= 2 *
#> |   |   |   |   |   |   [58] V5 > 2
#> |   |   |   |   |   |   |   [59] V3 <= 11 *
#> |   |   |   |   |   |   |   [60] V3 > 11 *
#> |   |   |   [61] V2 > 73
#> |   |   |   |   [62] V2 <= 77 *
#> |   |   |   |   [63] V2 > 77
#> |   |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   |   [65] V6 > 0 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 63
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 7
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V3 > 7 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V3 <= 18
#> |   |   |   |   |   [11] V5 <= 4
#> |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   [13] V5 <= 1 *
#> |   |   |   |   |   |   |   [14] V5 > 1 *
#> |   |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   |   [16] V5 <= 0 *
#> |   |   |   |   |   |   |   [17] V5 > 0 *
#> |   |   |   |   |   [18] V5 > 4
#> |   |   |   |   |   |   [19] V2 <= 54 *
#> |   |   |   |   |   |   [20] V2 > 54 *
#> |   |   |   |   [21] V3 > 18 *
#> |   |   [22] V2 > 63
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V7 <= 90 *
#> |   |   |   |   [25] V7 > 90
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V3 <= 6
#> |   |   |   |   |   |   |   [28] V2 <= 82 *
#> |   |   |   |   |   |   |   [29] V2 > 82 *
#> |   |   |   |   |   |   [30] V3 > 6 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V3 <= 4
#> |   |   |   |   |   |   |   [33] V7 <= 125 *
#> |   |   |   |   |   |   |   [34] V7 > 125 *
#> |   |   |   |   |   |   [35] V3 > 4
#> |   |   |   |   |   |   |   [36] V3 <= 9 *
#> |   |   |   |   |   |   |   [37] V3 > 9 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V5 <= 2
#> |   |   |   |   |   [40] V2 <= 84
#> |   |   |   |   |   |   [41] V2 <= 67 *
#> |   |   |   |   |   |   [42] V2 > 67
#> |   |   |   |   |   |   |   [43] V7 <= 123 *
#> |   |   |   |   |   |   |   [44] V7 > 123
#> |   |   |   |   |   |   |   |   [45] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [46] V7 <= 167 *
#> |   |   |   |   |   |   |   |   |   [47] V7 > 167 *
#> |   |   |   |   |   |   |   |   [48] V3 > 8 *
#> |   |   |   |   |   [49] V2 > 84 *
#> |   |   |   |   [50] V5 > 2
#> |   |   |   |   |   [51] V2 <= 72
#> |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   |   |   [54] V2 > 72
#> |   |   |   |   |   |   [55] V3 <= 9 *
#> |   |   |   |   |   |   [56] V3 > 9 *
#> |   [57] V5 > 173
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V2 <= 50 *
#> |   |   |   [61] V2 > 50 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1 *
#> |   |   |   |   [8] V3 > 2
#> |   |   |   |   |   [9] V2 <= 61 *
#> |   |   |   |   |   [10] V2 > 61 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V7 <= 162
#> |   |   |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   |   |   [15] V3 > 3
#> |   |   |   |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   |   |   |   [17] V7 <= 151 *
#> |   |   |   |   |   |   |   |   [18] V7 > 151 *
#> |   |   |   |   |   |   |   [19] V2 > 63 *
#> |   |   |   |   |   [20] V7 > 162 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V7 <= 112 *
#> |   |   |   |   |   [23] V7 > 112
#> |   |   |   |   |   |   [24] V5 <= 8
#> |   |   |   |   |   |   |   [25] V2 <= 63
#> |   |   |   |   |   |   |   |   [26] V7 <= 176
#> |   |   |   |   |   |   |   |   |   [27] V5 <= 2
#> |   |   |   |   |   |   |   |   |   |   [28] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [29] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 2 *
#> |   |   |   |   |   |   |   |   [31] V7 > 176 *
#> |   |   |   |   |   |   |   [32] V2 > 63
#> |   |   |   |   |   |   |   |   [33] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [34] V2 > 67 *
#> |   |   |   |   |   |   [35] V5 > 8 *
#> |   |   [36] V2 > 72
#> |   |   |   [37] V7 <= 173
#> |   |   |   |   [38] V7 <= 106 *
#> |   |   |   |   [39] V7 > 106
#> |   |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   |   [41] V3 <= 2 *
#> |   |   |   |   |   |   [42] V3 > 2
#> |   |   |   |   |   |   |   [43] V7 <= 155
#> |   |   |   |   |   |   |   |   [44] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [45] V3 > 4 *
#> |   |   |   |   |   |   |   [46] V7 > 155 *
#> |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   [48] V5 <= 3
#> |   |   |   |   |   |   |   [49] V3 <= 3 *
#> |   |   |   |   |   |   |   [50] V3 > 3
#> |   |   |   |   |   |   |   |   [51] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [52] V7 > 126 *
#> |   |   |   |   |   |   [53] V5 > 3 *
#> |   |   |   [54] V7 > 173 *
#> |   [55] V5 > 173
#> |   |   [56] V3 <= 5
#> |   |   |   [57] V3 <= 4
#> |   |   |   |   [58] V6 <= 0
#> |   |   |   |   |   [59] V2 <= 69 *
#> |   |   |   |   |   [60] V2 > 69 *
#> |   |   |   |   [61] V6 > 0 *
#> |   |   |   [62] V3 > 4 *
#> |   |   [63] V3 > 5 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V7 <= 106 *
#> |   |   |   [5] V7 > 106
#> |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   [7] V4 <= 0 *
#> |   |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   |   [9] V7 <= 152 *
#> |   |   |   |   |   |   [10] V7 > 152 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V7 <= 145 *
#> |   |   |   |   |   [13] V7 > 145 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V5 <= 171
#> |   |   |   |   [16] V3 <= 1 *
#> |   |   |   |   [17] V3 > 1
#> |   |   |   |   |   [18] V5 <= 15
#> |   |   |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   |   |   [20] V3 <= 6 *
#> |   |   |   |   |   |   |   [21] V3 > 6 *
#> |   |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   |   [23] V5 <= 7
#> |   |   |   |   |   |   |   |   [24] V7 <= 146
#> |   |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [27] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   |   [28] V2 > 64 *
#> |   |   |   |   |   |   |   |   [29] V7 > 146
#> |   |   |   |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   |   |   |   |   |   [32] V5 > 7
#> |   |   |   |   |   |   |   |   [33] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [34] V3 <= 17 *
#> |   |   |   |   |   |   |   |   |   [35] V3 > 17 *
#> |   |   |   |   |   |   |   |   [36] V5 > 10 *
#> |   |   |   |   |   [37] V5 > 15 *
#> |   |   |   [38] V5 > 171
#> |   |   |   |   [39] V7 <= 170 *
#> |   |   |   |   [40] V7 > 170 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 158
#> |   |   |   [43] V7 <= 173
#> |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   [45] V2 <= 84
#> |   |   |   |   |   |   [46] V7 <= 145
#> |   |   |   |   |   |   |   [47] V3 <= 5 *
#> |   |   |   |   |   |   |   [48] V3 > 5 *
#> |   |   |   |   |   |   [49] V7 > 145 *
#> |   |   |   |   |   [50] V2 > 84 *
#> |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   [52] V2 <= 80
#> |   |   |   |   |   |   [53] V3 <= 12 *
#> |   |   |   |   |   |   [54] V3 > 12 *
#> |   |   |   |   |   [55] V2 > 80 *
#> |   |   |   [56] V7 > 173 *
#> |   |   [57] V5 > 158
#> |   |   |   [58] V7 <= 169 *
#> |   |   |   [59] V7 > 169 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60
#> |   |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   |   [10] V7 > 120 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 63
#> |   |   |   |   |   [13] V5 <= 4
#> |   |   |   |   |   |   [14] V2 <= 43 *
#> |   |   |   |   |   |   [15] V2 > 43
#> |   |   |   |   |   |   |   [16] V2 <= 55
#> |   |   |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   |   |   |   [19] V2 > 55
#> |   |   |   |   |   |   |   |   [20] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [21] V2 > 60 *
#> |   |   |   |   |   [22] V5 > 4
#> |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V3 <= 11 *
#> |   |   |   |   |   |   |   [26] V3 > 11 *
#> |   |   |   |   [27] V2 > 63
#> |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   [29] V3 > 3
#> |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   [31] V7 <= 124 *
#> |   |   |   |   |   |   |   [32] V7 > 124 *
#> |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   [34] V5 <= 0 *
#> |   |   |   |   |   |   |   [35] V5 > 0
#> |   |   |   |   |   |   |   |   [36] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [37] V2 > 66 *
#> |   |   [38] V2 > 74
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V2 <= 86
#> |   |   |   |   |   [41] V7 <= 150
#> |   |   |   |   |   |   [42] V7 <= 128 *
#> |   |   |   |   |   |   [43] V7 > 128
#> |   |   |   |   |   |   |   [44] V7 <= 131 *
#> |   |   |   |   |   |   |   [45] V7 > 131 *
#> |   |   |   |   |   [46] V7 > 150 *
#> |   |   |   |   [47] V2 > 86 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V5 <= 3
#> |   |   |   |   |   [50] V3 <= 10
#> |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   [53] V3 > 10 *
#> |   |   |   |   [54] V5 > 3 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 7
#> |   |   |   |   [5] V2 <= 56 *
#> |   |   |   |   [6] V2 > 56
#> |   |   |   |   |   [7] V7 <= 125
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   |   [10] V7 > 125
#> |   |   |   |   |   |   [11] V7 <= 150
#> |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   |   |   [14] V7 > 150 *
#> |   |   |   [15] V3 > 7
#> |   |   |   |   [16] V2 <= 58 *
#> |   |   |   |   [17] V2 > 58
#> |   |   |   |   |   [18] V5 <= 15 *
#> |   |   |   |   |   [19] V5 > 15 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V5 <= 7
#> |   |   |   |   |   [23] V2 <= 59
#> |   |   |   |   |   |   [24] V2 <= 52 *
#> |   |   |   |   |   |   [25] V2 > 52 *
#> |   |   |   |   |   [26] V2 > 59
#> |   |   |   |   |   |   [27] V3 <= 5 *
#> |   |   |   |   |   |   [28] V3 > 5 *
#> |   |   |   |   [29] V5 > 7
#> |   |   |   |   |   [30] V2 <= 67 *
#> |   |   |   |   |   [31] V2 > 67 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V2 <= 74
#> |   |   |   |   |   [34] V3 <= 18
#> |   |   |   |   |   |   [35] V3 <= 2 *
#> |   |   |   |   |   |   [36] V3 > 2
#> |   |   |   |   |   |   |   [37] V2 <= 57
#> |   |   |   |   |   |   |   |   [38] V5 <= 5
#> |   |   |   |   |   |   |   |   |   [39] V7 <= 121 *
#> |   |   |   |   |   |   |   |   |   [40] V7 > 121 *
#> |   |   |   |   |   |   |   |   [41] V5 > 5 *
#> |   |   |   |   |   |   |   [42] V2 > 57
#> |   |   |   |   |   |   |   |   [43] V2 <= 68
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 10
#> |   |   |   |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 10 *
#> |   |   |   |   |   |   |   |   [48] V2 > 68 *
#> |   |   |   |   |   [49] V3 > 18 *
#> |   |   |   |   [50] V2 > 74
#> |   |   |   |   |   [51] V7 <= 118 *
#> |   |   |   |   |   [52] V7 > 118
#> |   |   |   |   |   |   [53] V2 <= 77 *
#> |   |   |   |   |   |   [54] V2 > 77 *
#> |   [55] V5 > 173
#> |   |   [56] V2 <= 79 *
#> |   |   [57] V2 > 79 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   |   [8] V3 <= 1 *
#> |   |   |   |   |   |   [9] V3 > 1 *
#> |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   [12] V2 > 60
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   |   [15] V3 <= 7 *
#> |   |   |   |   |   |   |   [16] V3 > 7 *
#> |   |   |   [17] V4 > 0
#> |   |   |   |   [18] V5 <= 9
#> |   |   |   |   |   [19] V7 <= 123
#> |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   |   [22] V3 <= 4 *
#> |   |   |   |   |   |   |   [23] V3 > 4
#> |   |   |   |   |   |   |   |   [24] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [25] V3 > 9 *
#> |   |   |   |   |   [26] V7 > 123
#> |   |   |   |   |   |   [27] V3 <= 18
#> |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   [29] V7 <= 183
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 2
#> |   |   |   |   |   |   |   |   |   |   [31] V2 <= 71
#> |   |   |   |   |   |   |   |   |   |   |   [32] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   |   |   [33] V2 > 59 *
#> |   |   |   |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   |   |   |   |   |   |   [35] V5 > 2 *
#> |   |   |   |   |   |   |   |   [36] V7 > 183 *
#> |   |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   |   [38] V7 <= 162
#> |   |   |   |   |   |   |   |   |   [39] V7 <= 149
#> |   |   |   |   |   |   |   |   |   |   [40] V3 <= 10
#> |   |   |   |   |   |   |   |   |   |   |   [41] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   |   [42] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   |   [43] V3 > 10 *
#> |   |   |   |   |   |   |   |   |   [44] V7 > 149
#> |   |   |   |   |   |   |   |   |   |   [45] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   |   [46] V2 > 66 *
#> |   |   |   |   |   |   |   |   [47] V7 > 162 *
#> |   |   |   |   |   |   [48] V3 > 18 *
#> |   |   |   |   [49] V5 > 9
#> |   |   |   |   |   [50] V2 <= 70 *
#> |   |   |   |   |   [51] V2 > 70 *
#> |   |   [52] V5 > 16
#> |   |   |   [53] V7 <= 117 *
#> |   |   |   [54] V7 > 117
#> |   |   |   |   [55] V5 <= 126
#> |   |   |   |   |   [56] V5 <= 80
#> |   |   |   |   |   |   [57] V3 <= 8 *
#> |   |   |   |   |   |   [58] V3 > 8 *
#> |   |   |   |   |   [59] V5 > 80 *
#> |   |   |   |   [60] V5 > 126 *
#> |   [61] V5 > 177 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 71
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2
#> |   |   |   |   |   |   [8] V2 <= 60 *
#> |   |   |   |   |   |   [9] V2 > 60 *
#> |   |   |   |   [10] V2 > 71
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V3 <= 7
#> |   |   |   |   |   |   |   [14] V2 <= 80 *
#> |   |   |   |   |   |   |   [15] V2 > 80 *
#> |   |   |   |   |   |   [16] V3 > 7 *
#> |   |   |   [17] V4 > 0
#> |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   [19] V2 <= 70
#> |   |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   |   |   [22] V5 <= 9
#> |   |   |   |   |   |   |   |   [23] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 134 *
#> |   |   |   |   |   |   |   |   |   [25] V7 > 134 *
#> |   |   |   |   |   |   |   |   [26] V5 > 3 *
#> |   |   |   |   |   |   |   [27] V5 > 9 *
#> |   |   |   |   |   [28] V2 > 70
#> |   |   |   |   |   |   [29] V5 <= 0 *
#> |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   [31] V7 <= 140 *
#> |   |   |   |   |   |   |   [32] V7 > 140 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V5 <= 11
#> |   |   |   |   |   |   [35] V2 <= 74
#> |   |   |   |   |   |   |   [36] V7 <= 112 *
#> |   |   |   |   |   |   |   [37] V7 > 112
#> |   |   |   |   |   |   |   |   [38] V2 <= 63
#> |   |   |   |   |   |   |   |   |   [39] V2 <= 56
#> |   |   |   |   |   |   |   |   |   |   [40] V2 <= 49 *
#> |   |   |   |   |   |   |   |   |   |   [41] V2 > 49 *
#> |   |   |   |   |   |   |   |   |   [42] V2 > 56 *
#> |   |   |   |   |   |   |   |   [43] V2 > 63
#> |   |   |   |   |   |   |   |   |   [44] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [45] V2 > 67 *
#> |   |   |   |   |   |   [46] V2 > 74
#> |   |   |   |   |   |   |   [47] V5 <= 1
#> |   |   |   |   |   |   |   |   [48] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [49] V7 > 130 *
#> |   |   |   |   |   |   |   [50] V5 > 1 *
#> |   |   |   |   |   [51] V5 > 11 *
#> |   |   [52] V5 > 16
#> |   |   |   [53] V2 <= 76 *
#> |   |   |   [54] V2 > 76
#> |   |   |   |   [55] V3 <= 7 *
#> |   |   |   |   [56] V3 > 7 *
#> |   [57] V5 > 170
#> |   |   [58] V5 <= 179 *
#> |   |   [59] V5 > 179 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   [10] V5 > 2
#> |   |   |   |   |   |   [11] V2 <= 61 *
#> |   |   |   |   |   |   [12] V2 > 61 *
#> |   |   |   [13] V5 > 171
#> |   |   |   |   [14] V3 <= 9
#> |   |   |   |   |   [15] V2 <= 50 *
#> |   |   |   |   |   [16] V2 > 50 *
#> |   |   |   |   [17] V3 > 9 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 63
#> |   |   |   |   [20] V7 <= 120
#> |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   [23] V7 > 120
#> |   |   |   |   |   [24] V5 <= 3
#> |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   [27] V5 > 3
#> |   |   |   |   |   |   [28] V5 <= 7 *
#> |   |   |   |   |   |   [29] V5 > 7
#> |   |   |   |   |   |   |   [30] V3 <= 16 *
#> |   |   |   |   |   |   |   [31] V3 > 16 *
#> |   |   |   [32] V2 > 63
#> |   |   |   |   [33] V7 <= 160
#> |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V7 <= 149 *
#> |   |   |   |   |   |   [37] V7 > 149 *
#> |   |   |   |   [38] V7 > 160 *
#> |   [39] V2 > 70
#> |   |   [40] V6 <= 0
#> |   |   |   [41] V7 <= 124
#> |   |   |   |   [42] V5 <= 158
#> |   |   |   |   |   [43] V4 <= 0 *
#> |   |   |   |   |   [44] V4 > 0 *
#> |   |   |   |   [45] V5 > 158 *
#> |   |   |   [46] V7 > 124
#> |   |   |   |   [47] V5 <= 177
#> |   |   |   |   |   [48] V4 <= 0 *
#> |   |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   |   [50] V7 <= 156 *
#> |   |   |   |   |   |   [51] V7 > 156 *
#> |   |   |   |   [52] V5 > 177 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V5 <= 169
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V7 <= 116 *
#> |   |   |   |   |   [57] V7 > 116
#> |   |   |   |   |   |   [58] V2 <= 82
#> |   |   |   |   |   |   |   [59] V3 <= 5 *
#> |   |   |   |   |   |   |   [60] V3 > 5 *
#> |   |   |   |   |   |   [61] V2 > 82 *
#> |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   [63] V5 <= 1
#> |   |   |   |   |   |   [64] V5 <= 0
#> |   |   |   |   |   |   |   [65] V2 <= 76 *
#> |   |   |   |   |   |   |   [66] V2 > 76 *
#> |   |   |   |   |   |   [67] V5 > 0 *
#> |   |   |   |   |   [68] V5 > 1
#> |   |   |   |   |   |   [69] V2 <= 80 *
#> |   |   |   |   |   |   [70] V2 > 80 *
#> |   |   |   [71] V5 > 169 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 64
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V7 <= 120
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V7 <= 104 *
#> |   |   |   |   |   [8] V7 > 104 *
#> |   |   |   [9] V7 > 120
#> |   |   |   |   [10] V5 <= 13
#> |   |   |   |   |   [11] V4 <= 0 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V3 <= 12
#> |   |   |   |   |   |   |   [14] V7 <= 152
#> |   |   |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   |   |   |   [17] V7 > 152
#> |   |   |   |   |   |   |   |   [18] V2 <= 53 *
#> |   |   |   |   |   |   |   |   [19] V2 > 53 *
#> |   |   |   |   |   |   [20] V3 > 12 *
#> |   |   |   |   [21] V5 > 13 *
#> |   |   [22] V5 > 170
#> |   |   |   [23] V3 <= 8
#> |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   [25] V6 > 0 *
#> |   |   |   [26] V3 > 8 *
#> |   [27] V2 > 64
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V2 <= 81
#> |   |   |   |   [30] V7 <= 145
#> |   |   |   |   |   [31] V5 <= 123
#> |   |   |   |   |   |   [32] V4 <= 0 *
#> |   |   |   |   |   |   [33] V4 > 0 *
#> |   |   |   |   |   [34] V5 > 123 *
#> |   |   |   |   [35] V7 > 145
#> |   |   |   |   |   [36] V5 <= 161
#> |   |   |   |   |   |   [37] V3 <= 7 *
#> |   |   |   |   |   |   [38] V3 > 7 *
#> |   |   |   |   |   [39] V5 > 161 *
#> |   |   |   [40] V2 > 81
#> |   |   |   |   [41] V2 <= 83 *
#> |   |   |   |   [42] V2 > 83 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V5 <= 173
#> |   |   |   |   [45] V3 <= 7
#> |   |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   |   |   [48] V3 > 2
#> |   |   |   |   |   |   |   [49] V5 <= 36
#> |   |   |   |   |   |   |   |   [50] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [51] V7 > 125 *
#> |   |   |   |   |   |   |   [52] V5 > 36 *
#> |   |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   |   [54] V3 <= 4
#> |   |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   |   |   [57] V3 > 4 *
#> |   |   |   |   [58] V3 > 7
#> |   |   |   |   |   [59] V5 <= 15
#> |   |   |   |   |   |   [60] V5 <= 11
#> |   |   |   |   |   |   |   [61] V5 <= 0 *
#> |   |   |   |   |   |   |   [62] V5 > 0
#> |   |   |   |   |   |   |   |   [63] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [64] V3 > 10
#> |   |   |   |   |   |   |   |   |   [65] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [66] V7 > 130 *
#> |   |   |   |   |   |   [67] V5 > 11 *
#> |   |   |   |   |   [68] V5 > 15 *
#> |   |   |   [69] V5 > 173 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 122
#> |   |   |   |   [5] V2 <= 57 *
#> |   |   |   |   [6] V2 > 57
#> |   |   |   |   |   [7] V3 <= 5 *
#> |   |   |   |   |   [8] V3 > 5 *
#> |   |   |   [9] V7 > 122
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   [12] V2 > 60 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V7 <= 139 *
#> |   |   |   |   |   [15] V7 > 139
#> |   |   |   |   |   |   [16] V3 <= 7 *
#> |   |   |   |   |   |   [17] V3 > 7 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V7 <= 125
#> |   |   |   |   [20] V3 <= 4 *
#> |   |   |   |   [21] V3 > 4
#> |   |   |   |   |   [22] V3 <= 12
#> |   |   |   |   |   |   [23] V7 <= 105 *
#> |   |   |   |   |   |   [24] V7 > 105
#> |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   [27] V3 > 12 *
#> |   |   |   [28] V7 > 125
#> |   |   |   |   [29] V3 <= 18
#> |   |   |   |   |   [30] V2 <= 59
#> |   |   |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   |   |   [32] V7 <= 152 *
#> |   |   |   |   |   |   |   [33] V7 > 152 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V2 <= 50 *
#> |   |   |   |   |   |   |   [36] V2 > 50 *
#> |   |   |   |   |   [37] V2 > 59
#> |   |   |   |   |   |   [38] V3 <= 2 *
#> |   |   |   |   |   |   [39] V3 > 2
#> |   |   |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   |   |   [41] V2 <= 70 *
#> |   |   |   |   |   |   |   |   [42] V2 > 70 *
#> |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   [44] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [45] V5 > 0
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [47] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [48] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   [49] V3 > 13 *
#> |   |   |   |   [50] V3 > 18 *
#> |   [51] V5 > 171
#> |   |   [52] V2 <= 85
#> |   |   |   [53] V6 <= 0
#> |   |   |   |   [54] V7 <= 162 *
#> |   |   |   |   [55] V7 > 162 *
#> |   |   |   [56] V6 > 0
#> |   |   |   |   [57] V2 <= 58 *
#> |   |   |   |   [58] V2 > 58 *
#> |   |   [59] V2 > 85 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 165
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V7 <= 124
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0 *
#> |   |   |   |   [8] V7 > 124
#> |   |   |   |   |   [9] V3 <= 18
#> |   |   |   |   |   |   [10] V2 <= 63
#> |   |   |   |   |   |   |   [11] V2 <= 51 *
#> |   |   |   |   |   |   |   [12] V2 > 51
#> |   |   |   |   |   |   |   |   [13] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [14] V2 > 56 *
#> |   |   |   |   |   |   [15] V2 > 63
#> |   |   |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   |   |   [17] V3 > 3
#> |   |   |   |   |   |   |   |   [18] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [19] V2 > 67 *
#> |   |   |   |   |   [20] V3 > 18 *
#> |   |   |   [21] V5 > 16
#> |   |   |   |   [22] V5 <= 80 *
#> |   |   |   |   [23] V5 > 80 *
#> |   |   [24] V5 > 165 *
#> |   [25] V6 > 0
#> |   |   [26] V4 <= 0
#> |   |   |   [27] V7 <= 116
#> |   |   |   |   [28] V7 <= 100 *
#> |   |   |   |   [29] V7 > 100 *
#> |   |   |   [30] V7 > 116
#> |   |   |   |   [31] V3 <= 6
#> |   |   |   |   |   [32] V5 <= 119
#> |   |   |   |   |   |   [33] V2 <= 70 *
#> |   |   |   |   |   |   [34] V2 > 70
#> |   |   |   |   |   |   |   [35] V2 <= 77 *
#> |   |   |   |   |   |   |   [36] V2 > 77 *
#> |   |   |   |   |   [37] V5 > 119
#> |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   [39] V3 > 4 *
#> |   |   |   |   [40] V3 > 6
#> |   |   |   |   |   [41] V5 <= 99
#> |   |   |   |   |   |   [42] V2 <= 64 *
#> |   |   |   |   |   |   [43] V2 > 64 *
#> |   |   |   |   |   [44] V5 > 99
#> |   |   |   |   |   |   [45] V2 <= 64 *
#> |   |   |   |   |   |   [46] V2 > 64 *
#> |   |   [47] V4 > 0
#> |   |   |   [48] V2 <= 74
#> |   |   |   |   [49] V5 <= 12
#> |   |   |   |   |   [50] V2 <= 63
#> |   |   |   |   |   |   [51] V5 <= 5
#> |   |   |   |   |   |   |   [52] V7 <= 160
#> |   |   |   |   |   |   |   |   [53] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [54] V2 > 46 *
#> |   |   |   |   |   |   |   [55] V7 > 160 *
#> |   |   |   |   |   |   [56] V5 > 5 *
#> |   |   |   |   |   [57] V2 > 63
#> |   |   |   |   |   |   [58] V7 <= 118 *
#> |   |   |   |   |   |   [59] V7 > 118
#> |   |   |   |   |   |   |   [60] V7 <= 136 *
#> |   |   |   |   |   |   |   [61] V7 > 136 *
#> |   |   |   |   [62] V5 > 12 *
#> |   |   |   [63] V2 > 74
#> |   |   |   |   [64] V2 <= 85
#> |   |   |   |   |   [65] V3 <= 4 *
#> |   |   |   |   |   [66] V3 > 4
#> |   |   |   |   |   |   [67] V5 <= 1 *
#> |   |   |   |   |   |   [68] V5 > 1 *
#> |   |   |   |   [69] V2 > 85 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V2 <= 59
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V3 <= 16
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 124 *
#> |   |   |   |   |   |   [9] V7 > 124
#> |   |   |   |   |   |   |   [10] V5 <= 2 *
#> |   |   |   |   |   |   |   [11] V5 > 2 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120
#> |   |   |   |   |   |   |   [15] V2 <= 54 *
#> |   |   |   |   |   |   |   [16] V2 > 54 *
#> |   |   |   |   [17] V3 > 16 *
#> |   |   [18] V5 > 150
#> |   |   |   [19] V6 <= 0 *
#> |   |   |   [20] V6 > 0
#> |   |   |   |   [21] V2 <= 49 *
#> |   |   |   |   [22] V2 > 49 *
#> |   [23] V2 > 59
#> |   |   [24] V4 <= 0
#> |   |   |   [25] V5 <= 167
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V7 <= 100 *
#> |   |   |   |   |   [28] V7 > 100
#> |   |   |   |   |   |   [29] V5 <= 8 *
#> |   |   |   |   |   |   [30] V5 > 8 *
#> |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   [32] V7 <= 140
#> |   |   |   |   |   |   [33] V7 <= 90 *
#> |   |   |   |   |   |   [34] V7 > 90
#> |   |   |   |   |   |   |   [35] V7 <= 117 *
#> |   |   |   |   |   |   |   [36] V7 > 117 *
#> |   |   |   |   |   [37] V7 > 140
#> |   |   |   |   |   |   [38] V7 <= 155 *
#> |   |   |   |   |   |   [39] V7 > 155 *
#> |   |   |   [40] V5 > 167
#> |   |   |   |   [41] V5 <= 179 *
#> |   |   |   |   [42] V5 > 179 *
#> |   |   [43] V4 > 0
#> |   |   |   [44] V2 <= 74
#> |   |   |   |   [45] V3 <= 3 *
#> |   |   |   |   [46] V3 > 3
#> |   |   |   |   |   [47] V3 <= 6 *
#> |   |   |   |   |   [48] V3 > 6
#> |   |   |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   |   |   [50] V3 <= 10 *
#> |   |   |   |   |   |   |   [51] V3 > 10 *
#> |   |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   |   [53] V7 <= 126 *
#> |   |   |   |   |   |   |   [54] V7 > 126
#> |   |   |   |   |   |   |   |   [55] V7 <= 141 *
#> |   |   |   |   |   |   |   |   [56] V7 > 141
#> |   |   |   |   |   |   |   |   |   [57] V7 <= 151 *
#> |   |   |   |   |   |   |   |   |   [58] V7 > 151 *
#> |   |   |   [59] V2 > 74
#> |   |   |   |   [60] V3 <= 3 *
#> |   |   |   |   [61] V3 > 3
#> |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   |   [64] V3 <= 5 *
#> |   |   |   |   |   |   [65] V3 > 5
#> |   |   |   |   |   |   |   [66] V3 <= 11 *
#> |   |   |   |   |   |   |   [67] V3 > 11 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V3 <= 2 *
#> |   |   |   [5] V3 > 2
#> |   |   |   |   [6] V2 <= 52 *
#> |   |   |   |   [7] V2 > 52 *
#> |   |   [8] V2 > 60
#> |   |   |   [9] V6 <= 0
#> |   |   |   |   [10] V5 <= 177
#> |   |   |   |   |   [11] V7 <= 145
#> |   |   |   |   |   |   [12] V2 <= 82 *
#> |   |   |   |   |   |   [13] V2 > 82 *
#> |   |   |   |   |   [14] V7 > 145 *
#> |   |   |   |   [15] V5 > 177 *
#> |   |   |   [16] V6 > 0
#> |   |   |   |   [17] V5 <= 169
#> |   |   |   |   |   [18] V3 <= 7
#> |   |   |   |   |   |   [19] V5 <= 2 *
#> |   |   |   |   |   |   [20] V5 > 2
#> |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   |   [23] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [24] V5 > 5
#> |   |   |   |   |   |   |   |   |   [25] V7 <= 129 *
#> |   |   |   |   |   |   |   |   |   [26] V7 > 129 *
#> |   |   |   |   |   [27] V3 > 7
#> |   |   |   |   |   |   [28] V5 <= 15 *
#> |   |   |   |   |   |   [29] V5 > 15 *
#> |   |   |   |   [30] V5 > 169
#> |   |   |   |   |   [31] V2 <= 79 *
#> |   |   |   |   |   [32] V2 > 79 *
#> |   [33] V4 > 0
#> |   |   [34] V3 <= 18
#> |   |   |   [35] V7 <= 124
#> |   |   |   |   [36] V7 <= 102 *
#> |   |   |   |   [37] V7 > 102
#> |   |   |   |   |   [38] V3 <= 7
#> |   |   |   |   |   |   [39] V7 <= 113 *
#> |   |   |   |   |   |   [40] V7 > 113 *
#> |   |   |   |   |   [41] V3 > 7
#> |   |   |   |   |   |   [42] V5 <= 7 *
#> |   |   |   |   |   |   [43] V5 > 7
#> |   |   |   |   |   |   |   [44] V7 <= 114 *
#> |   |   |   |   |   |   |   [45] V7 > 114 *
#> |   |   |   [46] V7 > 124
#> |   |   |   |   [47] V2 <= 66
#> |   |   |   |   |   [48] V2 <= 59
#> |   |   |   |   |   |   [49] V7 <= 145 *
#> |   |   |   |   |   |   [50] V7 > 145
#> |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   [53] V2 > 59
#> |   |   |   |   |   |   [54] V2 <= 61 *
#> |   |   |   |   |   |   [55] V2 > 61
#> |   |   |   |   |   |   |   [56] V2 <= 63 *
#> |   |   |   |   |   |   |   [57] V2 > 63 *
#> |   |   |   |   [58] V2 > 66
#> |   |   |   |   |   [59] V6 <= 0
#> |   |   |   |   |   |   [60] V7 <= 156 *
#> |   |   |   |   |   |   [61] V7 > 156 *
#> |   |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   |   [63] V7 <= 130 *
#> |   |   |   |   |   |   [64] V7 > 130
#> |   |   |   |   |   |   |   [65] V3 <= 12
#> |   |   |   |   |   |   |   |   [66] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [67] V3 > 9 *
#> |   |   |   |   |   |   |   [68] V3 > 12 *
#> |   |   [69] V3 > 18 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 63
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V2 <= 51 *
#> |   |   |   |   [6] V2 > 51 *
#> |   |   |   [7] V5 > 99
#> |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   [9] V6 > 0 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V7 <= 141
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V3 <= 11 *
#> |   |   |   |   |   [14] V3 > 11 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 8 *
#> |   |   |   |   |   [17] V3 > 8 *
#> |   |   |   [18] V7 > 141
#> |   |   |   |   [19] V3 <= 9
#> |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   [21] V5 > 2 *
#> |   |   |   |   [22] V3 > 9 *
#> |   [23] V2 > 63
#> |   |   [24] V4 <= 0
#> |   |   |   [25] V5 <= 167
#> |   |   |   |   [26] V7 <= 90 *
#> |   |   |   |   [27] V7 > 90
#> |   |   |   |   |   [28] V5 <= 11
#> |   |   |   |   |   |   [29] V3 <= 7
#> |   |   |   |   |   |   |   [30] V5 <= 4
#> |   |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [32] V6 > 0 *
#> |   |   |   |   |   |   |   [33] V5 > 4 *
#> |   |   |   |   |   |   [34] V3 > 7 *
#> |   |   |   |   |   [35] V5 > 11
#> |   |   |   |   |   |   [36] V7 <= 120 *
#> |   |   |   |   |   |   [37] V7 > 120 *
#> |   |   |   [38] V5 > 167
#> |   |   |   |   [39] V7 <= 170 *
#> |   |   |   |   [40] V7 > 170 *
#> |   |   [41] V4 > 0
#> |   |   |   [42] V2 <= 74
#> |   |   |   |   [43] V2 <= 65 *
#> |   |   |   |   [44] V2 > 65
#> |   |   |   |   |   [45] V7 <= 145
#> |   |   |   |   |   |   [46] V7 <= 122 *
#> |   |   |   |   |   |   [47] V7 > 122 *
#> |   |   |   |   |   [48] V7 > 145
#> |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   [51] V2 > 74
#> |   |   |   |   [52] V5 <= 3
#> |   |   |   |   |   [53] V7 <= 126 *
#> |   |   |   |   |   [54] V7 > 126
#> |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   |   |   [57] V5 > 3
#> |   |   |   |   |   [58] V7 <= 138 *
#> |   |   |   |   |   [59] V7 > 138 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 125
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V2 <= 60 *
#> |   |   |   |   |   [7] V2 > 60
#> |   |   |   |   |   |   [8] V5 <= 8 *
#> |   |   |   |   |   |   [9] V5 > 8 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V7 <= 128
#> |   |   |   |   |   |   [12] V7 <= 115
#> |   |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   |   [15] V7 > 115 *
#> |   |   |   |   |   [16] V7 > 128
#> |   |   |   |   |   |   [17] V3 <= 4
#> |   |   |   |   |   |   |   [18] V7 <= 149 *
#> |   |   |   |   |   |   |   [19] V7 > 149 *
#> |   |   |   |   |   |   [20] V3 > 4
#> |   |   |   |   |   |   |   [21] V2 <= 73 *
#> |   |   |   |   |   |   |   [22] V2 > 73 *
#> |   |   |   [23] V5 > 125 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 72
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V2 <= 66
#> |   |   |   |   |   |   [28] V7 <= 162
#> |   |   |   |   |   |   |   [29] V3 <= 6 *
#> |   |   |   |   |   |   |   [30] V3 > 6
#> |   |   |   |   |   |   |   |   [31] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [32] V2 > 55 *
#> |   |   |   |   |   |   [33] V7 > 162 *
#> |   |   |   |   |   [34] V2 > 66 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V3 <= 2 *
#> |   |   |   |   |   [37] V3 > 2
#> |   |   |   |   |   |   [38] V3 <= 11
#> |   |   |   |   |   |   |   [39] V2 <= 67
#> |   |   |   |   |   |   |   |   [40] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [41] V7 > 110
#> |   |   |   |   |   |   |   |   |   [42] V2 <= 53 *
#> |   |   |   |   |   |   |   |   |   [43] V2 > 53
#> |   |   |   |   |   |   |   |   |   |   [44] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   |   [45] V2 > 61 *
#> |   |   |   |   |   |   |   [46] V2 > 67 *
#> |   |   |   |   |   |   [47] V3 > 11
#> |   |   |   |   |   |   |   [48] V2 <= 66 *
#> |   |   |   |   |   |   |   [49] V2 > 66 *
#> |   |   |   [50] V2 > 72
#> |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   [52] V3 <= 9 *
#> |   |   |   |   |   [53] V3 > 9 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V5 <= 3
#> |   |   |   |   |   |   [56] V5 <= 0
#> |   |   |   |   |   |   |   [57] V7 <= 122 *
#> |   |   |   |   |   |   |   [58] V7 > 122 *
#> |   |   |   |   |   |   [59] V5 > 0 *
#> |   |   |   |   |   [60] V5 > 3 *
#> |   [61] V5 > 173
#> |   |   [62] V2 <= 85
#> |   |   |   [63] V2 <= 52 *
#> |   |   |   [64] V2 > 52
#> |   |   |   |   [65] V3 <= 2 *
#> |   |   |   |   [66] V3 > 2 *
#> |   |   [67] V2 > 85 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 120 *
#> |   |   |   |   [6] V7 > 120
#> |   |   |   |   |   [7] V5 <= 21
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   |   [10] V5 > 21 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 59
#> |   |   |   |   |   [13] V3 <= 11
#> |   |   |   |   |   |   [14] V7 <= 152
#> |   |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   |   [16] V3 > 4
#> |   |   |   |   |   |   |   |   [17] V2 <= 53 *
#> |   |   |   |   |   |   |   |   [18] V2 > 53 *
#> |   |   |   |   |   |   [19] V7 > 152 *
#> |   |   |   |   |   [20] V3 > 11
#> |   |   |   |   |   |   [21] V2 <= 50 *
#> |   |   |   |   |   |   [22] V2 > 50 *
#> |   |   |   |   [23] V2 > 59
#> |   |   |   |   |   [24] V3 <= 19
#> |   |   |   |   |   |   [25] V3 <= 12
#> |   |   |   |   |   |   |   [26] V5 <= 8
#> |   |   |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 1 *
#> |   |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   |   [31] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [32] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   [33] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   [34] V7 > 125 *
#> |   |   |   |   |   |   |   [35] V5 > 8 *
#> |   |   |   |   |   |   [36] V3 > 12 *
#> |   |   |   |   |   [37] V3 > 19 *
#> |   |   [38] V5 > 171
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V2 <= 58 *
#> |   |   |   |   [42] V2 > 58 *
#> |   [43] V2 > 74
#> |   |   [44] V4 <= 0
#> |   |   |   [45] V6 <= 0
#> |   |   |   |   [46] V7 <= 145 *
#> |   |   |   |   [47] V7 > 145 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V5 <= 173
#> |   |   |   |   |   [50] V3 <= 5
#> |   |   |   |   |   |   [51] V5 <= 8 *
#> |   |   |   |   |   |   [52] V5 > 8 *
#> |   |   |   |   |   [53] V3 > 5 *
#> |   |   |   |   [54] V5 > 173 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V2 <= 85
#> |   |   |   |   [57] V5 <= 10
#> |   |   |   |   |   [58] V7 <= 167
#> |   |   |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   |   |   [60] V6 > 0 *
#> |   |   |   |   |   [61] V7 > 167 *
#> |   |   |   |   [62] V5 > 10 *
#> |   |   |   [63] V2 > 85 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V5 <= 16
#> |   |   |   |   |   |   [8] V3 <= 7
#> |   |   |   |   |   |   |   [9] V5 <= 4 *
#> |   |   |   |   |   |   |   [10] V5 > 4 *
#> |   |   |   |   |   |   [11] V3 > 7 *
#> |   |   |   |   |   [12] V5 > 16 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   [15] V2 <= 60
#> |   |   |   |   |   |   [16] V2 <= 52
#> |   |   |   |   |   |   |   [17] V2 <= 46 *
#> |   |   |   |   |   |   |   [18] V2 > 46 *
#> |   |   |   |   |   |   [19] V2 > 52 *
#> |   |   |   |   |   [20] V2 > 60
#> |   |   |   |   |   |   [21] V2 <= 66 *
#> |   |   |   |   |   |   [22] V2 > 66
#> |   |   |   |   |   |   |   [23] V7 <= 142 *
#> |   |   |   |   |   |   |   [24] V7 > 142 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V7 <= 112 *
#> |   |   |   |   |   [27] V7 > 112
#> |   |   |   |   |   |   [28] V5 <= 4
#> |   |   |   |   |   |   |   [29] V3 <= 9
#> |   |   |   |   |   |   |   |   [30] V2 <= 64
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 0 *
#> |   |   |   |   |   |   |   |   [33] V2 > 64 *
#> |   |   |   |   |   |   |   [34] V3 > 9 *
#> |   |   |   |   |   |   [35] V5 > 4
#> |   |   |   |   |   |   |   [36] V3 <= 14 *
#> |   |   |   |   |   |   |   [37] V3 > 14 *
#> |   |   [38] V2 > 74
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V7 <= 128
#> |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   [42] V6 > 0 *
#> |   |   |   |   [43] V7 > 128
#> |   |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   [46] V7 <= 155 *
#> |   |   |   |   |   |   [47] V7 > 155 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V5 <= 3
#> |   |   |   |   |   [50] V5 <= 0
#> |   |   |   |   |   |   [51] V3 <= 11 *
#> |   |   |   |   |   |   [52] V3 > 11 *
#> |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   [54] V5 > 3 *
#> |   [55] V5 > 173
#> |   |   [56] V6 <= 0
#> |   |   |   [57] V2 <= 78 *
#> |   |   |   [58] V2 > 78 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V3 <= 5
#> |   |   |   |   [61] V2 <= 52 *
#> |   |   |   |   [62] V2 > 52 *
#> |   |   |   [63] V3 > 5 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139 *
#> |   |   |   |   [6] V7 > 139 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V7 <= 120
#> |   |   |   |   |   [9] V3 <= 4 *
#> |   |   |   |   |   [10] V3 > 4
#> |   |   |   |   |   |   [11] V2 <= 55 *
#> |   |   |   |   |   |   [12] V2 > 55 *
#> |   |   |   |   [13] V7 > 120
#> |   |   |   |   |   [14] V2 <= 63
#> |   |   |   |   |   |   [15] V2 <= 50
#> |   |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   |   [17] V6 > 0 *
#> |   |   |   |   |   |   [18] V2 > 50
#> |   |   |   |   |   |   |   [19] V7 <= 132 *
#> |   |   |   |   |   |   |   [20] V7 > 132
#> |   |   |   |   |   |   |   |   [21] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [22] V5 > 1
#> |   |   |   |   |   |   |   |   |   [23] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [24] V3 > 8 *
#> |   |   |   |   |   [25] V2 > 63 *
#> |   |   [26] V5 > 150
#> |   |   |   [27] V6 <= 0 *
#> |   |   |   [28] V6 > 0 *
#> |   [29] V2 > 66
#> |   |   [30] V5 <= 177
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   [34] V7 > 130 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V3 <= 4
#> |   |   |   |   |   |   [37] V5 <= 1 *
#> |   |   |   |   |   |   [38] V5 > 1 *
#> |   |   |   |   |   [39] V3 > 4
#> |   |   |   |   |   |   [40] V7 <= 140 *
#> |   |   |   |   |   |   [41] V7 > 140 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V5 <= 2
#> |   |   |   |   |   [44] V2 <= 84
#> |   |   |   |   |   |   [45] V2 <= 77
#> |   |   |   |   |   |   |   [46] V7 <= 134 *
#> |   |   |   |   |   |   |   [47] V7 > 134 *
#> |   |   |   |   |   |   [48] V2 > 77 *
#> |   |   |   |   |   [49] V2 > 84 *
#> |   |   |   |   [50] V5 > 2
#> |   |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   |   [52] V2 <= 73 *
#> |   |   |   |   |   |   [53] V2 > 73 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V2 <= 72 *
#> |   |   |   |   |   |   [56] V2 > 72 *
#> |   |   [57] V5 > 177 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V7 <= 120 *
#> |   |   |   |   |   [8] V7 > 120
#> |   |   |   |   |   |   [9] V2 <= 60 *
#> |   |   |   |   |   |   [10] V2 > 60
#> |   |   |   |   |   |   |   [11] V2 <= 69 *
#> |   |   |   |   |   |   |   [12] V2 > 69 *
#> |   |   |   [13] V5 > 171
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   [17] V3 > 5 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 54
#> |   |   |   |   [20] V7 <= 112 *
#> |   |   |   |   [21] V7 > 112
#> |   |   |   |   |   [22] V7 <= 170
#> |   |   |   |   |   |   [23] V2 <= 52
#> |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   [26] V2 > 52 *
#> |   |   |   |   |   [27] V7 > 170 *
#> |   |   |   [28] V2 > 54
#> |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   [30] V2 <= 70
#> |   |   |   |   |   |   [31] V7 <= 122 *
#> |   |   |   |   |   |   [32] V7 > 122
#> |   |   |   |   |   |   |   [33] V7 <= 162 *
#> |   |   |   |   |   |   |   [34] V7 > 162 *
#> |   |   |   |   |   [35] V2 > 70 *
#> |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   [37] V2 <= 69
#> |   |   |   |   |   |   [38] V7 <= 149
#> |   |   |   |   |   |   |   [39] V5 <= 1 *
#> |   |   |   |   |   |   |   [40] V5 > 1 *
#> |   |   |   |   |   |   [41] V7 > 149
#> |   |   |   |   |   |   |   [42] V5 <= 1 *
#> |   |   |   |   |   |   |   [43] V5 > 1 *
#> |   |   |   |   |   [44] V2 > 69
#> |   |   |   |   |   |   [45] V7 <= 145 *
#> |   |   |   |   |   |   [46] V7 > 145 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V5 <= 167
#> |   |   |   |   [50] V4 <= 0 *
#> |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   [52] V7 <= 160 *
#> |   |   |   |   |   [53] V7 > 160 *
#> |   |   |   [54] V5 > 167 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V5 <= 173
#> |   |   |   |   [57] V7 <= 110 *
#> |   |   |   |   [58] V7 > 110
#> |   |   |   |   |   [59] V5 <= 0 *
#> |   |   |   |   |   [60] V5 > 0
#> |   |   |   |   |   |   [61] V4 <= 0
#> |   |   |   |   |   |   |   [62] V2 <= 84
#> |   |   |   |   |   |   |   |   [63] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [64] V5 > 8 *
#> |   |   |   |   |   |   |   [65] V2 > 84 *
#> |   |   |   |   |   |   [66] V4 > 0 *
#> |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 171
#> |   |   |   |   |   [6] V5 <= 16 *
#> |   |   |   |   |   [7] V5 > 16 *
#> |   |   |   |   [8] V5 > 171 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 99
#> |   |   |   |   |   [11] V7 <= 120 *
#> |   |   |   |   |   [12] V7 > 120
#> |   |   |   |   |   |   [13] V3 <= 4 *
#> |   |   |   |   |   |   [14] V3 > 4 *
#> |   |   |   |   [15] V5 > 99
#> |   |   |   |   |   [16] V3 <= 7 *
#> |   |   |   |   |   [17] V3 > 7 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V7 <= 168
#> |   |   |   |   [20] V3 <= 18
#> |   |   |   |   |   [21] V2 <= 55
#> |   |   |   |   |   |   [22] V2 <= 45 *
#> |   |   |   |   |   |   [23] V2 > 45
#> |   |   |   |   |   |   |   [24] V5 <= 2 *
#> |   |   |   |   |   |   |   [25] V5 > 2 *
#> |   |   |   |   |   [26] V2 > 55
#> |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   |   [29] V3 > 4
#> |   |   |   |   |   |   |   |   [30] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [31] V3 > 10 *
#> |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   [33] V7 <= 118 *
#> |   |   |   |   |   |   |   [34] V7 > 118
#> |   |   |   |   |   |   |   |   [35] V2 <= 69
#> |   |   |   |   |   |   |   |   |   [36] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   [37] V7 > 133 *
#> |   |   |   |   |   |   |   |   [38] V2 > 69 *
#> |   |   |   |   [39] V3 > 18 *
#> |   |   |   [40] V7 > 168
#> |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   [42] V6 > 0 *
#> |   [43] V2 > 74
#> |   |   [44] V3 <= 6
#> |   |   |   [45] V5 <= 173
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V5 <= 115
#> |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   [50] V2 <= 82 *
#> |   |   |   |   |   |   |   [51] V2 > 82 *
#> |   |   |   |   |   [52] V5 > 115 *
#> |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   [54] V7 <= 143 *
#> |   |   |   |   |   [55] V7 > 143 *
#> |   |   |   [56] V5 > 173 *
#> |   |   [57] V3 > 6
#> |   |   |   [58] V6 <= 0 *
#> |   |   |   [59] V6 > 0
#> |   |   |   |   [60] V2 <= 77 *
#> |   |   |   |   [61] V2 > 77
#> |   |   |   |   |   [62] V5 <= 118
#> |   |   |   |   |   |   [63] V5 <= 13
#> |   |   |   |   |   |   |   [64] V2 <= 80 *
#> |   |   |   |   |   |   |   [65] V2 > 80 *
#> |   |   |   |   |   |   [66] V5 > 13 *
#> |   |   |   |   |   [67] V5 > 118 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 3
#> |   |   |   |   |   |   [8] V7 <= 170
#> |   |   |   |   |   |   |   [9] V5 <= 1 *
#> |   |   |   |   |   |   |   [10] V5 > 1 *
#> |   |   |   |   |   |   [11] V7 > 170 *
#> |   |   |   |   |   [12] V5 > 3
#> |   |   |   |   |   |   [13] V2 <= 54 *
#> |   |   |   |   |   |   [14] V2 > 54 *
#> |   |   |   [15] V6 > 0
#> |   |   |   |   [16] V4 <= 0 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V2 <= 54
#> |   |   |   |   |   |   [19] V5 <= 0 *
#> |   |   |   |   |   |   [20] V5 > 0 *
#> |   |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   |   [22] V7 <= 130 *
#> |   |   |   |   |   |   [23] V7 > 130
#> |   |   |   |   |   |   |   [24] V5 <= 3 *
#> |   |   |   |   |   |   |   [25] V5 > 3 *
#> |   |   [26] V5 > 150
#> |   |   |   [27] V3 <= 3 *
#> |   |   |   [28] V3 > 3 *
#> |   [29] V2 > 66
#> |   |   [30] V5 <= 169
#> |   |   |   [31] V5 <= 15
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V3 <= 7
#> |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   [36] V3 <= 2 *
#> |   |   |   |   |   |   |   [37] V3 > 2 *
#> |   |   |   |   |   [38] V3 > 7 *
#> |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   [40] V5 <= 8
#> |   |   |   |   |   |   [41] V3 <= 16
#> |   |   |   |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   |   |   |   [43] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [44] V5 > 0
#> |   |   |   |   |   |   |   |   |   [45] V2 <= 73 *
#> |   |   |   |   |   |   |   |   |   [46] V2 > 73 *
#> |   |   |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [49] V3 > 4
#> |   |   |   |   |   |   |   |   |   [50] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [51] V3 > 9 *
#> |   |   |   |   |   |   [52] V3 > 16 *
#> |   |   |   |   |   [53] V5 > 8
#> |   |   |   |   |   |   [54] V3 <= 13 *
#> |   |   |   |   |   |   [55] V3 > 13 *
#> |   |   |   [56] V5 > 15
#> |   |   |   |   [57] V5 <= 74
#> |   |   |   |   |   [58] V5 <= 32 *
#> |   |   |   |   |   [59] V5 > 32 *
#> |   |   |   |   [60] V5 > 74
#> |   |   |   |   |   [61] V6 <= 0 *
#> |   |   |   |   |   [62] V6 > 0 *
#> |   |   [63] V5 > 169
#> |   |   |   [64] V3 <= 12
#> |   |   |   |   [65] V7 <= 169 *
#> |   |   |   |   [66] V7 > 169 *
#> |   |   |   [67] V3 > 12 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 130
#> |   |   |   |   |   [6] V2 <= 70 *
#> |   |   |   |   |   [7] V2 > 70 *
#> |   |   |   |   [8] V7 > 130
#> |   |   |   |   |   [9] V2 <= 60 *
#> |   |   |   |   |   [10] V2 > 60 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   [14] V5 <= 76
#> |   |   |   |   |   |   [15] V5 <= 15
#> |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   |   |   |   |   [18] V5 > 15
#> |   |   |   |   |   |   |   [19] V5 <= 29 *
#> |   |   |   |   |   |   |   [20] V5 > 29 *
#> |   |   |   |   |   [21] V5 > 76 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 74
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V3 <= 6
#> |   |   |   |   |   |   [26] V5 <= 1 *
#> |   |   |   |   |   |   [27] V5 > 1 *
#> |   |   |   |   |   [28] V3 > 6
#> |   |   |   |   |   |   [29] V2 <= 54 *
#> |   |   |   |   |   |   [30] V2 > 54
#> |   |   |   |   |   |   |   [31] V7 <= 140 *
#> |   |   |   |   |   |   |   [32] V7 > 140 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V7 <= 118
#> |   |   |   |   |   |   [35] V2 <= 54 *
#> |   |   |   |   |   |   [36] V2 > 54 *
#> |   |   |   |   |   [37] V7 > 118
#> |   |   |   |   |   |   [38] V3 <= 17
#> |   |   |   |   |   |   |   [39] V3 <= 14
#> |   |   |   |   |   |   |   |   [40] V7 <= 162
#> |   |   |   |   |   |   |   |   |   [41] V2 <= 50 *
#> |   |   |   |   |   |   |   |   |   [42] V2 > 50
#> |   |   |   |   |   |   |   |   |   |   [43] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   [44] V2 > 60
#> |   |   |   |   |   |   |   |   |   |   |   [45] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   |   [46] V2 > 65 *
#> |   |   |   |   |   |   |   |   [47] V7 > 162 *
#> |   |   |   |   |   |   |   [48] V3 > 14 *
#> |   |   |   |   |   |   [49] V3 > 17 *
#> |   |   |   [50] V2 > 74
#> |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   [52] V2 <= 79 *
#> |   |   |   |   |   [53] V2 > 79 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   [56] V3 > 10 *
#> |   [57] V5 > 170
#> |   |   [58] V5 <= 178 *
#> |   |   [59] V5 > 178 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                                 5.0+  32   5      1          0        1   121
#> 2                                 5.0+  35   5      1          2        0   172
#> 3                               180.0+  35   2      0        180        0   121
#> 4                                 2.0+  35   2      1          1        1   112
#> 5                               180.0+  37   9      0        180        1   151
#> 6                               180.0+  38  13      1          0        1   161
#> 7                                115.0  38   2      0        115        0   150
#> 8                                 12.0  38  12      1          8        1   120
#> 9                                 5.0+  36   5      1          0        1   115
#> 10                              180.0+  33   6      1          1        1   115
#> 11                              180.0+  40  12      1          9        0   153
#> 12                              180.0+  42   3      1          1        1   130
#> 13                              180.0+  37   1      1          0        1   146
#> 14                              180.0+  42   2      0        180        1   100
#> 15                                2.0+  42   2      0          2        0   140
#> 16                              180.0+  42   2      0        180        0   100
#> 17                                 3.0  43   3      1          0        1   100
#> 18                              180.0+  41   2      1          1        0   166
#> 19                              180.0+  40   1      1          0        1   145
#> 20                              180.0+  43   4      1          0        1   130
#> 21                              180.0+  42   4      0        180        0   162
#> 22                              180.0+  40   3      1          1        0   170
#> 23                                2.0+  43   2      1          1        1   116
#> 24                              155.0+  44   5      1          1        0   170
#> 25                              180.0+  45   3      0        180        1   154
#> 26                              180.0+  41  13      1          1        0   140
#> 27                              180.0+  43   2      0        180        1   140
#> 28                              180.0+  46   2      1          1        0   126
#> 29                              180.0+  48  15      0        180        1   160
#> 30                               150.0  45   3      0        150        0   130
#> 31                              180.0+  44   3      1          0        1   180
#> 32                              180.0+  46   7      1          2        0   166
#> 33                              180.0+  45   4      1          0        0   124
#> 34                              180.0+  43  10      0        180        0   185
#> 35                              180.0+  46  13      1         10        0   100
#> 36                              180.0+  47   4      1          3        1   160
#> 37                              180.0+  45   8      1          0        1   117
#> 38                                73.0  49   5      0         73        1   136
#> 39                                5.0+  45   5      0          5        0   141
#> 40                              161.0+  46   2      1          1        1   122
#> 41                              180.0+  46   6      1          0        1   100
#> 42                              180.0+  44   4      1          0        1   114
#> 43                              180.0+  44   9      1          8        1   135
#> 44                              180.0+  45   5      0        180        1   190
#> 45                                5.0+  46   5      1          3        0   130
#> 46                              180.0+  46   4      0        180        1   121
#> 47                              180.0+  44   2      0        180        0   142
#> 48                              180.0+  47   3      1          1        1   120
#> 49                              180.0+  48   3      0        180        0   154
#> 50                              180.0+  48  12      1         11        0   200
#> 51                              180.0+  47   5      1          3        1   130
#> 52                              180.0+  47   9      1          6        0   170
#> 53                              180.0+  49   4      0        180        0   117
#> 54                               10.0+  47  10      0         10        1   140
#> 55                              180.0+  50   4      1          1        0   125
#> 56                              180.0+  50   6      1          2        1   140
#> 57                              180.0+  46   3      1          1        1   140
#> 58                              180.0+  46   9      1          9        1   122
#> 59                                 2.0  49   2      0          2        0   105
#> 60                                 1.0  51   1      0          1        1   145
#> 61                              179.0+  49  15      1         11        1   160
#> 62                              180.0+  47   2      0        180        0   150
#> 63                              179.0+  49  23      0        179        1   112
#> 64                              180.0+  46   6      1          0        1   156
#> 65                              180.0+  50   7      1          0        1    92
#> 66                                4.0+  50   4      0          4        1   100
#> 67                              180.0+  51   3      1          2        0   113
#> 68                              180.0+  50   9      0        180        0   130
#> 69                              180.0+  49   7      1          4        1    90
#> 70                              180.0+  47   8      0        180        0   160
#> 71                              180.0+  47   6      0        180        1   162
#> 72                              180.0+  51   8      0        180        1   140
#> 73                              180.0+  52   2      0        180        0   155
#> 74                              180.0+  46   3      0        180        1   120
#> 75                              180.0+  46   1      1          1        0   145
#> 76                              180.0+  50   4      1          1        0   150
#> 77                                 7.0  48   7      1          0        1   110
#> 78                                36.0  53   8      0         36        1   160
#> 79                               88.0+  48  17      1         10        0   111
#> 80                                4.0+  52   4      1          4        0   152
#> 81                              180.0+  49   9      1          3        0   102
#> 82                              180.0+  49  15      0        180        1   160
#> 83                              180.0+  54  17      1         12        1   102
#> 84                              180.0+  53   7      1          0        0   199
#> 85                              180.0+  54   6      1          3        0   129
#> 86                              180.0+  51   3      1          1        0   140
#> 87                                 5.0  50   2      0          5        1   106
#> 88                              180.0+  50  10      1          6        0   122
#> 89                              180.0+  50  14      1         13        0   170
#> 90                              180.0+  53   8      1          7        0   160
#> 91                              180.0+  48   3      1          2        0   150
#> 92                              180.0+  51  25      1          1        0   202
#> 93                              180.0+  49   5      1          2        1   150
#> 94                                4.0+  53   4      0          4        0   140
#> 95                                85.0  52  14      1          7        1   200
#> 96                              180.0+  48   6      0        180        0   160
#> 97                              166.0+  53   4      1          0        1   156
#> 98                                99.0  51  13      0         99        1   160
#> 99                              180.0+  54   9      1          0        1   138
#> 100                              16.0+  49  16      0         16        0   125
#> 101                             152.0+  54  23      1         10        0   131
#> 102                             180.0+  54   9      1          1        0   130
#> 103                             180.0+  52   4      0        180        1   180
#> 104                              13.0+  51  13      1         11        0   145
#> 105                             171.0+  50   5      1          4        1   150
#> 106                             174.0+  50   3      0        174        1   153
#> 107                               28.0  55  28      1         13        1   160
#> 108                                1.0  49   1      0          1        1   110
#> 109                             180.0+  50   7      1          1        0   156
#> 110                               9.0+  53   9      0          9        1    95
#> 111                             180.0+  53   8      1          0        1   130
#> 112                             180.0+  50   7      1          0        1   127
#> 113                             180.0+  56   4      1          1        1   130
#> 114                             175.0+  52   5      0        175        1   117
#> 115                             180.0+  55   1      0        180        0   127
#> 116                                2.0  55   2      0          2        0   145
#> 117                             180.0+  54   1      0        180        0   162
#> 118                               7.0+  54   7      1          0        1   100
#> 119                             180.0+  56   3      0        180        1   193
#> 120                             180.0+  56   2      0        180        0   132
#> 121                             180.0+  55   5      1          4        1   120
#> 122                             180.0+  52   8      0        180        0   119
#> 123                             180.0+  53  18      1          9        1   150
#> 124                             180.0+  54   3      0        180        1   180
#> 125                             180.0+  55   6      0        180        0   170
#> 126                              16.0+  52  16      0         16        0   152
#> 127                             180.0+  53  10      1          9        0   172
#> 128                             180.0+  53   4      0        180        1   150
#> 129                              12.0+  54  12      1          0        1   190
#> 130                             180.0+  54   3      0        180        0   128
#> 131                                8.0  56   3      0          8        1   139
#> 132                                2.0  55   1      0          2        0   130
#> 133                             180.0+  54   7      1          2        0   129
#> 134                             180.0+  54   2      1          1        0   135
#> 135                             180.0+  52   9      1          3        0   170
#> 136                             180.0+  54   2      1          1        1   176
#> 137                             180.0+  57   1      0        180        1   156
#> 138                              165.0  56   4      1          0        1   140
#> 139                             180.0+  55  11      1          7        0   104
#> 140                             180.0+  52  15      1         14        0   130
#> 141                             180.0+  56  14      1         11        0   130
#> 142                             180.0+  57  10      0        180        1   170
#> 143                               8.0+  58   8      0          8        1   130
#> 144                             180.0+  54   5      0        180        1   108
#> 145                             180.0+  55   3      1          1        1   156
#> 146                                0.5  57   0      0          0        1   150
#> 147                             180.0+  53  21      1         13        1   130
#> 148                             180.0+  59   3      1          1        0   172
#> 149                             180.0+  58   6      1          0        1    90
#> 150                             171.0+  54  17      1          8        1   227
#> 151                               5.0+  56   5      0          5        1   150
#> 152                             180.0+  54  23      1          8        0   120
#> 153                             147.0+  53   4      0        147        1   145
#> 154                             180.0+  57  11      1         10        1   129
#> 155                               4.0+  56   4      0          4        0   164
#> 156                             180.0+  59  15      1         10        0   140
#> 157                             180.0+  55   5      1          0        0   140
#> 158                             180.0+  56   7      1          5        1   120
#> 159                               2.0+  55   2      0          2        0   106
#> 160                             180.0+  57   1      0        180        0   148
#> 161                             180.0+  59   3      0        180        0   120
#> 162                             180.0+  58   4      1          0        1   160
#> 163                                2.0  57   2      0          2        1   120
#> 164                             180.0+  57   5      0        180        1   130
#> 165                             180.0+  58  11      1          9        1   124
#> 166                             180.0+  57  10      1          9        0   103
#> 167                             180.0+  59   5      0        180        1   155
#> 168                             180.0+  58  26      1          0        1   189
#> 169                               9.0+  61   9      0          9        1   160
#> 170                             180.0+  58   4      1          3        0   120
#> 171                             180.0+  59   2      1          1        0   140
#> 172                             161.0+  58   8      0        161        1   140
#> 173                             171.0+  58  14      1          6        0   190
#> 174                             180.0+  61   4      1          3        0   151
#> 175                                1.0  58   1      0          1        1   100
#> 176                             180.0+  61  20      1         13        0   130
#> 177                             180.0+  57  13      1         10        0   110
#> 178                              10.0+  58  10      0         10        1   150
#> 179                             180.0+  57   4      1          3        0   138
#> 180                               17.0  61   3      0         17        0   143
#> 181                               45.0  56  14      0         45        0   130
#> 182                               19.0  58  19      1         13        1   140
#> 183                               9.0+  59   9      1          0        1    80
#> 184                             180.0+  55   4      1          3        1   160
#> 185                             172.0+  58  11      0        172        1   135
#> 186                             172.0+  60  12      1          0        1   114
#> 187                               24.0  55   9      1          7        1   135
#> 188                             180.0+  61   4      1          0        1   115
#> 189                                8.0  56   8      1          8        0   120
#> 190                             180.0+  59  11      1          8        1   190
#> 191                               1.0+  57   1      0          1        0   126
#> 192                               15.0  57  15      1         13        1   110
#> 193                             180.0+  59   5      1          2        0   182
#> 194                             180.0+  59  10      0        180        0   160
#> 195                               77.0  61   8      0         77        0   120
#> 196                               8.0+  58   8      1          5        0   152
#> 197                             180.0+  62  10      1          0        1   153
#> 198                             180.0+  62   7      1          2        1   180
#> 199                             180.0+  57   3      1          0        0   100
#> 200                              170.0  61  18      0        170        0   140
#> 201                               94.0  61  28      1          7        0   133
#> 202                                7.0  61   7      0          7        1   150
#> 203                               7.0+  60   7      0          7        0   147
#> 204                             180.0+  59  13      1          2        0   198
#> 205                             180.0+  62   4      1          0        0   160
#> 206                             180.0+  60  17      1          8        1   140
#> 207                               3.0+  58   3      1          0        1   146
#> 208                               30.0  58   2      0         30        0   202
#> 209                             180.0+  59  16      1          9        1   133
#> 210                               28.0  63   6      0         28        1   120
#> 211                                5.0  61   5      0          5        1   110
#> 212                               18.0  57  18      1          9        1    93
#> 213                               5.0+  61   5      0          5        1   160
#> 214                             180.0+  57   2      1          1        0   159
#> 215                             180.0+  62  17      1         10        1   180
#> 216                             180.0+  58   7      0        180        1   150
#> 217                             180.0+  61   7      0        180        0   135
#> 218                             180.0+  63   4      1          3        0   222
#> 219                             180.0+  63  15      1         10        1   126
#> 220                             180.0+  64   4      0        180        0   130
#> 221                             180.0+  60  18      1         13        0   132
#> 222                             180.0+  59   8      0        180        1   140
#> 223                             180.0+  61   9      1          9        1   150
#> 224                               22.0  59   1      0         22        1   162
#> 225                             180.0+  58   2      0        180        0   127
#> 226                               84.0  60   7      1          5        1   141
#> 227                             180.0+  59   5      1          1        0   148
#> 228                             180.0+  60   7      1          1        1    90
#> 229                             180.0+  65  13      0        180        1   100
#> 230                             180.0+  62   6      0        180        0   170
#> 231                             180.0+  61  15      1         13        0   170
#> 232                               4.0+  59   4      0          4        0   149
#> 233                               3.0+  60   3      0          3        0   168
#> 234                              167.0  64  10      1          9        0   160
#> 235                             180.0+  63  10      1          0        1   148
#> 236                             180.0+  63   4      1          3        0   162
#> 237                               3.0+  66   3      1          1        0   127
#> 238                               88.0  61  10      1          2        1   194
#> 239                             180.0+  64  32      1          9        1   160
#> 240                               12.0  63  12      1          9        0   114
#> 241                             180.0+  63   7      0        180        0   120
#> 242                             180.0+  65   8      1          0        0   168
#> 243                             180.0+  65  10      1          8        1   120
#> 244                                0.5  64   0      0          0        1    90
#> 245                             180.0+  60   6      0        180        0   130
#> 246                              12.0+  61  12      1         11        0   154
#> 247                             180.0+  64   9      0        180        0   150
#> 248                             180.0+  64   7      0        180        1   120
#> 249                             180.0+  66   6      1          1        1   130
#> 250                             180.0+  62   3      1          1        1   199
#> 251                                9.0  65   6      0          9        0   112
#> 252                                3.0  65   3      1          0        1    80
#> 253                             180.0+  63   2      1          1        0   180
#> 254                              11.0+  67  11      0         11        1   100
#> 255                              18.0+  66  18      1          5        0   142
#> 256                             180.0+  66  16      1         11        1   169
#> 257                             180.0+  62   9      0        180        0   145
#> 258                             180.0+  61  14      1          5        0   140
#> 259                             180.0+  63   9      1          8        1   160
#> 260                               2.0+  63   2      1          0        0   140
#> 261                              103.0  64  19      1          8        1   160
#> 262                               15.0  65   8      1          0        1   140
#> 263                             180.0+  67   6      0        180        1   170
#> 264                             180.0+  64   6      1          0        1   125
#> 265                             166.0+  66  13      1          0        0   118
#> 266                               0.5+  64   0      0          0        1   148
#> 267                               3.0+  66   3      1          0        1   135
#> 268                             180.0+  66   6      1          0        1   140
#> 269                             180.0+  68   1      0        180        1   166
#> 270                             180.0+  64  10      1          9        1   110
#> 271                               7.0+  63   7      1          0        0   162
#> 272                                8.0  67   8      1          1        1   130
#> 273                                5.0  68   5      0          5        1    90
#> 274                               16.0  63  10      0         16        1   160
#> 275                             180.0+  66  14      0        180        0   130
#> 276                                1.0  64   1      0          1        1   120
#> 277                             180.0+  68  18      0        180        1   260
#> 278                             180.0+  65  17      1         14        1   100
#> 279                             180.0+  63   8      1          1        1   162
#> 280                             180.0+  68  11      0        180        0   160
#> 281                               79.0  68  14      0         79        0   172
#> 282                               80.0  66  12      1         10        1   150
#> 283                             180.0+  66  15      1         13        1   160
#> 284                             180.0+  65  11      1          6        0   130
#> 285                             174.0+  69  21      1         10        0   180
#> 286                             180.0+  69   6      0        180        1   100
#> 287                             180.0+  63   8      0        180        1   120
#> 288                             180.0+  68  14      1         13        1   140
#> 289                               8.0+  65   8      1          0        1    90
#> 290                                3.0  66   3      0          3        1   138
#> 291                              175.0  69   1      1          0        0   170
#> 292                             180.0+  63   2      1          0        0    99
#> 293                             180.0+  67   2      0        180        0   184
#> 294                                6.0  65   6      0          6        0    80
#> 295                             180.0+  65  10      1          1        1   148
#> 296                              19.0+  66  19      1         12        1   150
#> 297                               99.0  69   6      0         99        1   140
#> 298                             180.0+  65   4      1          1        0   130
#> 299                             179.0+  64   4      0        179        0   160
#> 300                             180.0+  70  15      1         12        1   132
#> 301                             180.0+  64   4      0        180        1   140
#> 302                                0.5  64   0      1          0        1   118
#> 303                               18.0  67   2      0         18        0   131
#> 304                               7.0+  66   7      1          5        1   131
#> 305                             180.0+  68   4      1          0        1   160
#> 306                             152.0+  69   4      1          3        1   150
#> 307                             180.0+  65  13      1         12        1   130
#> 308                               93.0  69   8      0         93        0   140
#> 309                              21.0+  64  21      0         21        1   155
#> 310                              101.0  65   6      0        101        1   115
#> 311                                4.0  68   4      0          4        1   190
#> 312                                5.0  71   3      0          5        0   112
#> 313                              150.0  68   7      0        150        0   210
#> 314                             180.0+  67   2      0        180        0   128
#> 315                             180.0+  66   9      1          3        1   151
#> 316                                1.0  66   1      1          1        1   165
#> 317                             180.0+  70   4      1          0        1   180
#> 318                              171.0  70  14      0        171        0   166
#> 319                             180.0+  68  18      1         14        1   170
#> 320                                0.5  69   0      0          0        1   148
#> 321                             180.0+  65   2      0        180        0   130
#> 322                             180.0+  68   7      1          0        1   150
#> 323                             180.0+  69   3      1          2        0   151
#> 324                             180.0+  67  14      1         13        0   130
#> 325                              14.0+  65  14      1         13        1   150
#> 326                               7.0+  71   7      0          7        0   230
#> 327                                2.0  66   2      0          2        1   228
#> 328                               5.0+  69   5      0          5        1   142
#> 329                               3.0+  69   3      0          3        1   130
#> 330                               36.0  67   1      0         36        1   104
#> 331                               5.0+  67   5      0          5        0   130
#> 332                             180.0+  68   6      0        180        0   145
#> 333                             180.0+  72   3      1          0        1   132
#> 334                                7.0  72   7      0          7        1   110
#> 335                               8.0+  69   8      1          7        1   108
#> 336                             180.0+  67   3      0        180        0   110
#> 337                             180.0+  69  19      0        180        0   130
#> 338                               18.0  68  18      0         18        1   100
#> 339                             180.0+  69  11      1          0        1   120
#> 340                             180.0+  66   2      0        180        0   130
#> 341                                7.0  67   7      1          4        0   122
#> 342                             180.0+  69   4      1          3        0   132
#> 343                                7.0  68   2      0          7        1   130
#> 344                               8.0+  69   8      1          2        0   121
#> 345                              123.0  70   3      0        123        0   130
#> 346                             180.0+  72   5      1          4        0   170
#> 347                               51.0  67  22      1          1        1   140
#> 348                             180.0+  67  12      1          8        0   120
#> 349                                1.0  67   1      0          1        1    60
#> 350                             180.0+  67   8      1          0        1   130
#> 351                              10.0+  68  10      1          8        1   160
#> 352                             180.0+  66  24      1         13        0   130
#> 353                              162.0  72  30      1          0        1   145
#> 354                               7.0+  70   7      0          7        0   102
#> 355                               7.0+  68   7      1          2        0   135
#> 356                                9.0  71   6      0          9        0   120
#> 357                             180.0+  69  10      1          6        1   120
#> 358                             180.0+  72  19      1          8        0   120
#> 359                             180.0+  67   8      0        180        1   170
#> 360                             180.0+  70   5      0        180        0   150
#> 361                               76.0  67   4      1          1        0   134
#> 362                             180.0+  72   6      1          5        0   115
#> 363                             173.0+  71   1      0        173        1   188
#> 364                             180.0+  68  23      0        180        1   220
#> 365                             180.0+  69   3      0        180        0   220
#> 366                             180.0+  68   4      1          3        0   210
#> 367                               28.0  72   5      0         28        0   120
#> 368                              16.0+  69  16      1         10        1   140
#> 369                             180.0+  69   8      1          1        0   164
#> 370                              16.0+  72  16      1          1        1   130
#> 371                             180.0+  72   8      1          1        1   150
#> 372                               15.0  68  15      1         13        1   130
#> 373                               3.0+  70   3      0          3        1   159
#> 374                             180.0+  72   6      0        180        1   130
#> 375                             180.0+  73   0      0        180        1   161
#> 376                             180.0+  74   8      1          0        1    85
#> 377                                2.0  69   2      1          0        1   110
#> 378                             180.0+  68   9      0        180        1   120
#> 379                               20.0  71  20      1         10        0   140
#> 380                                0.5  74   0      1          0        1    90
#> 381                             180.0+  73   3      1          0        1   136
#> 382                             180.0+  70   5      1          0        1   190
#> 383                                3.0  71   3      1          2        1   190
#> 384                               12.0  69  12      1          1        1   149
#> 385                               4.0+  74   4      0          4        0   120
#> 386                               58.0  73   4      0         58        1   160
#> 387                             180.0+  72   5      1          3        1   160
#> 388                             180.0+  73   6      0        180        0   110
#> 389                             180.0+  72  15      1          0        1   150
#> 390                             180.0+  71   7      1          2        0   143
#> 391                                3.0  74   3      0          3        1   150
#> 392                              175.0  71  13      1          8        0   121
#> 393                             180.0+  74   7      1          0        1   117
#> 394                             180.0+  69   7      0        180        1   144
#> 395                             180.0+  72  15      1         13        0   156
#> 396                               8.0+  70   8      0          8        0   120
#> 397                             179.0+  71  10      1          9        1   120
#> 398                             180.0+  73  10      1          9        1   146
#> 399                              159.0  72  10      1          9        1   160
#> 400                             180.0+  74  15      1          9        1   179
#> 401                                1.0  73   1      0          1        1    80
#> 402                             180.0+  75   9      1          7        0   140
#> 403                               13.0  75  13      1          1        1   130
#> 404                             180.0+  72  15      1         12        1   120
#> 405                               10.0  73  10      1          8        0   120
#> 406                             104.0+  70   7      1          4        0   184
#> 407                                1.0  72   1      1          1        0   168
#> 408                               57.0  72   7      0         57        1   145
#> 409                             180.0+  73  10      0        180        0   162
#> 410                               11.0  72  11      0         11        1   140
#> 411                               3.0+  70   3      0          3        0   150
#> 412                                5.0  73   5      1          3        1   112
#> 413                             180.0+  72   2      0        180        0   120
#> 414                             180.0+  75   1      0        180        1   140
#> 415                             180.0+  72   4      1          0        1   197
#> 416                             180.0+  73   5      0        180        0   126
#> 417                               34.0  74  34      1          8        1   233
#> 418                             180.0+  76   3      1          0        1   120
#> 419                             180.0+  72   5      0        180        0   154
#> 420                             180.0+  72   3      0        180        0   160
#> 421                                5.0  76   5      0          5        1   130
#> 422                              11.0+  77  11      0         11        1   150
#> 423                               4.0+  77   4      0          4        0   185
#> 424                             180.0+  75   3      1          1        0   180
#> 425                                7.0  72   7      1          2        0   142
#> 426                              15.0+  73  15      0         15        1   160
#> 427                               10.0  73  10      1         10        0   124
#> 428                             180.0+  74   2      1          1        0   140
#> 429                             180.0+  74  19      1          4        1   200
#> 430                             180.0+  74   2      0        180        0   190
#> 431                               85.0  72   4      0         85        1   120
#> 432                             180.0+  72   4      1          3        0   160
#> 433                              17.0+  76  17      1          0        1   200
#> 434                             180.0+  73   4      1          3        1   125
#> 435                             174.0+  76  13      1         10        0   110
#> 436                                4.0  75   4      1          0        1   122
#> 437                                0.5  75   0      0          0        1   130
#> 438                             180.0+  73  13      1         11        0   195
#> 439                               12.0  75  12      0         12        1   160
#> 440                             180.0+  74   8      1          0        1   105
#> 441                             180.0+  76  13      1          8        1   148
#> 442                               46.0  75   4      1          2        1   188
#> 443                             180.0+  74   6      0        180        0   160
#> 444                                4.0  76   4      0          4        1   155
#> 445                                1.0  75   1      0          1        1   125
#> 446                               52.0  73   1      0         52        1   105
#> 447                             180.0+  73   0      0        180        0   156
#> 448                               12.0  78  12      1         11        1   160
#> 449                             180.0+  76  44      1         10        0   105
#> 450                             180.0+  74  10      1          0        1   135
#> 451                             180.0+  76   5      1          0        1   167
#> 452                             180.0+  75   9      0        180        1   140
#> 453                                5.0  77   5      1          0        0   123
#> 454                             180.0+  73  10      1          9        0   146
#> 455                             180.0+  77  12      0        180        0   130
#> 456                               12.0  76  12      1         11        1   120
#> 457                               7.0+  73   7      1          0        0   174
#> 458                                3.0  75   3      1          1        1   171
#> 459                             168.0+  74   9      1          8        0   200
#> 460                             180.0+  75   6      0        180        0   150
#> 461                             180.0+  79  10      1          8        0   190
#> 462                               18.0  78  18      0         18        1   144
#> 463                             180.0+  77   3      0        180        0   110
#> 464                               47.0  76  29      0         47        0    90
#> 465                             180.0+  73   8      1          1        1   162
#> 466                               11.0  73  11      1          2        1   110
#> 467                             180.0+  74   2      0        180        0   100
#> 468                                7.0  78   7      0          7        1   133
#> 469                             180.0+  74  15      0        180        1   172
#> 470                                7.0  74   7      0          7        0   161
#> 471                               10.0  80  10      1          6        1   147
#> 472                              172.0  78  13      1          5        0   130
#> 473                              119.0  75   5      0        119        1   150
#> 474                               12.0  75  12      1          1        1   120
#> 475                             180.0+  78  15      0        180        1   270
#> 476                                8.0  80   8      0          8        1   120
#> 477                             180.0+  75  13      1          6        0   150
#> 478                               80.0  79   4      0         80        0   145
#> 479                             180.0+  78  12      1          9        0   150
#> 480                             180.0+  78   2      1          1        0   130
#> 481                               4.0+  75   4      1          0        0   212
#> 482                                2.0  77   2      1          0        1   143
#> 483                             180.0+  78  10      0        180        1   130
#> 484                               11.0  76  11      1          0        0   120
#> 485                                3.0  75   3      0          3        0     0
#> 486                               24.0  77  24      0         24        1   160
#> 487                               32.0  79   8      0         32        1   120
#> 488                               23.0  80   9      0         23        1   128
#> 489                                6.0  80   6      0          6        1   150
#> 490                             180.0+  78   6      1          0        1   240
#> 491                               3.0+  76   3      1          0        1   140
#> 492                             180.0+  78  11      1          1        1   140
#> 493                             180.0+  79  11      0        180        0   160
#> 494                             180.0+  79   2      1          0        1   121
#> 495                                1.0  81   1      0          1        0   130
#> 496                               11.0  78  11      1          8        1   118
#> 497                                4.0  76   4      0          4        1   160
#> 498                                4.0  79   4      0          4        1   125
#> 499                              10.0+  76  10      1          8        0   180
#> 500                             180.0+  76  12      1         10        1   127
#> 501                               2.0+  75   2      1          1        1   204
#> 502                             180.0+  78  11      0        180        1   135
#> 503                                1.0  76   1      0          1        1   140
#> 504                                1.0  76   1      0          1        1    90
#> 505                               43.0  78   7      1          0        1   110
#> 506                                3.0  79   3      0          3        0   120
#> 507                             180.0+  77   7      0        180        1   170
#> 508                                6.0  77   6      0          6        1   144
#> 509                              138.0  79   4      1          0        1   120
#> 510                             180.0+  81   1      0        180        0   120
#> 511                                8.0  82   5      0          8        1   120
#> 512                               40.0  80  40      1          0        1   138
#> 513                               59.0  78   4      0         59        1   112
#> 514                              161.0  76   7      0        161        0   151
#> 515                              10.0+  79  10      0         10        1   120
#> 516                             180.0+  80  15      1          0        1    90
#> 517                               93.0  81   4      1          2        1   126
#> 518                              118.0  80   9      0        118        1   186
#> 519                              173.0  80   6      0        173        1   160
#> 520                             180.0+  78  32      0        180        1   130
#> 521                               37.0  79   1      0         37        1   140
#> 522                             180.0+  81   3      0        180        0   184
#> 523                             175.0+  81   2      0        175        0   172
#> 524                               22.0  77  13      1          0        1   190
#> 525                               5.0+  80   5      1          1        1   108
#> 526                                3.0  79   3      0          3        1   101
#> 527                             171.0+  78  26      1          5        0   194
#> 528                             166.0+  76   1      0        166        0   131
#> 529                               71.0  81   4      1          1        1   104
#> 530                              20.0+  78  20      1          0        1   109
#> 531                                1.0  80   1      0          1        0   100
#> 532                               3.0+  78   3      1          1        1   152
#> 533                             180.0+  82   3      1          1        1   144
#> 534                               85.0  77   5      0         85        0   188
#> 535                             180.0+  78   2      0        180        0   148
#> 536                                5.0  80   5      0          5        1   130
#> 537                             180.0+  79  10      0        180        1   150
#> 538                              108.0  81   1      0        108        0   129
#> 539                             180.0+  78  12      0        180        0   134
#> 540                              125.0  79   1      0        125        0   193
#> 541                                6.0  80   6      0          6        1   110
#> 542                               9.0+  83   9      1          5        1   170
#> 543                             180.0+  82   5      0        180        0   110
#> 544                             180.0+  83   5      0        180        0   148
#> 545                             180.0+  79   7      1          6        0   130
#> 546                              103.0  83   4      0        103        0    97
#> 547                             177.0+  81   5      0        177        0    41
#> 548                               70.0  78  23      1         10        1   145
#> 549                                4.0  79   4      0          4        1   183
#> 550                             180.0+  78   9      1          4        1   120
#> 551                             180.0+  82   8      1          1        0   128
#> 552                             180.0+  81  15      0        180        1   140
#> 553                               7.0+  80   7      1          0        1   146
#> 554                             180.0+  84   5      1          1        1    85
#> 555                               20.0  81  20      1          9        0   170
#> 556                               16.0  81  16      0         16        1   110
#> 557                             180.0+  80   6      1          0        1   150
#> 558                             180.0+  81   8      0        180        0   146
#> 559                             180.0+  80   8      1          7        0   160
#> 560                             177.0+  79   7      0        177        0   197
#> 561                                0.5  79   0      1          0        1    96
#> 562                             180.0+  85   4      0        180        0    90
#> 563                              167.0  84   4      0        167        0   198
#> 564                             180.0+  84   5      0        180        1   203
#> 565                                1.0  81   1      0          1        1   150
#> 566                               38.0  84   1      0         38        1   205
#> 567                             180.0+  83   3      0        180        0   174
#> 568                               90.0  81   4      0         90        1   138
#> 569                               89.0  84   4      0         89        1   129
#> 570                                4.0  79   4      0          4        1    60
#> 571                               71.0  80   6      0         71        1   189
#> 572                                1.0  83   1      0          1        1   100
#> 573                               19.0  82  19      0         19        0   120
#> 574                               30.0  80  30      1         13        0   220
#> 575                             180.0+  83   9      0        180        0   198
#> 576                             180.0+  79  14      1          0        0   110
#> 577                              114.0  83   3      0        114        0    98
#> 578                             180.0+  81  14      1         12        1   128
#> 579                              154.0  83   2      0        154        0   130
#> 580                                2.0  82   0      0          2        1   100
#> 581                             180.0+  85   9      1          6        1   160
#> 582                             180.0+  84  15      1         13        1   110
#> 583                                1.0  81   1      0          1        1   145
#> 584                              16.0+  82  16      1          8        0   103
#> 585                               4.0+  81   4      0          4        0   160
#> 586                             180.0+  86  12      0        180        1   120
#> 587                               77.0  83  12      1          2        1   170
#> 588                             180.0+  81  19      1         14        0   120
#> 589                               83.0  82  15      1          0        0   183
#> 590                               88.0  80   2      0         88        0   135
#> 591                              126.0  83   7      0        126        0   135
#> 592                                8.0  86   8      0          8        1   132
#> 593                             180.0+  81  16      1          9        0   180
#> 594                              165.0  84   6      0        165        0   145
#> 595                                3.0  86   3      0          3        1   140
#> 596                             180.0+  82   9      0        180        1   134
#> 597                             180.0+  84   3      0        180        1   120
#> 598                             180.0+  81  13      0        180        0   152
#> 599                             180.0+  81   2      1          0        1   118
#> 600                             180.0+  82   1      0        180        1   193
#> 601                                5.0  87   2      0          5        1   137
#> 602                             180.0+  86  12      1          0        1   132
#> 603                              174.0  82  14      1         11        1   103
#> 604                                6.0  86   6      1          0        1   140
#> 605                               70.0  84  16      0         70        1   150
#> 606                             180.0+  84   3      1          2        0   125
#> 607                             180.0+  83  10      1          0        1   190
#> 608                             180.0+  86   2      0        180        1   169
#> 609                                3.0  84   3      0          3        1   121
#> 610                               13.0  83  13      1         12        0   170
#> 611                             180.0+  87   2      0        180        0   113
#> 612                               92.0  84   9      0         92        1   110
#> 613                             180.0+  84   3      0        180        1   170
#> 614                               38.0  86   4      0         38        1   122
#> 615                                4.0  82   4      0          4        0   130
#> 616                              177.0  86  13      0        177        0   163
#> 617                               3.0+  85   3      0          3        1   113
#> 618                               6.0+  86   6      0          6        1   117
#> 619                               6.0+  86   6      1          1        0   112
#> 620                               4.0+  88   4      0          4        0   100
#> 621                               20.0  83  20      1          3        1   150
#> 622                               22.0  85  22      0         22        1   184
#> 623                               65.0  83   9      0         65        1   150
#> 624                               11.0  86   9      1          7        1   142
#> 625                             180.0+  87   2      0        180        1   130
#> 626                               46.0  86   6      0         46        0   173
#> 627                              115.0  88   3      0        115        0   110
#> 628                             180.0+  88   2      0        180        1    68
#> 629                               3.0+  83   3      0          3        1   130
#> 630                               8.0+  87   8      0          8        1   157
#> 631                                4.0  88   4      0          4        0    86
#> 632                               1.0+  87   1      0          1        0   170
#> 633                             180.0+  84   8      0        180        1   119
#> 634                                8.0  85   8      0          8        1   136
#> 635                               29.0  87  29      0         29        1    97
#> 636                             180.0+  87  15      1          9        1   138
#> 637                             180.0+  84   0      0        180        1   136
#> 638                               46.0  89  10      0         46        1   170
#> 639                               14.0  90  14      0         14        1   100
#> 640                               1.0+  88   1      0          1        0   135
#> 641                             180.0+  86   4      0        180        1   145
#> 642                               25.0  87   6      1          0        0   125
#> 643                                3.0  86   3      1          0        1    80
#> 644                               24.0  88   7      0         24        0   119
#> 645                               50.0  88   8      0         50        1   154
#> 646                             180.0+  86   9      1          7        0   130
#> 647                                4.0  90   4      1          0        0   121
#> 648                                1.0  91   1      0          1        1    74
#> 649                             178.0+  87  43      0        178        1   130
#> 650                               36.0  87   5      0         36        1   150
#> 651                               75.0  88   3      1          2        0   159
#> 652                               3.0+  89   3      1          1        1   160
#> 653                                1.0  92   1      0          1        1   167
#> 654                              158.0  88   5      0        158        0   100
#> 655                               74.0  87   7      0         74        1   105
#> 656                             180.0+  89  12      1          0        1   130
#> 657                              169.0  91   5      0        169        1   176
#> 658                                7.0  92   7      0          7        1   110
#> 659                                4.0  91   4      1          0        1   120
#> 660                                2.0  91   2      0          2        1   116
#> 661                             179.0+  93   8      0        179        1   110
#> 662                               8.0+  94   8      0          8        1   142
#> 663                               76.0  92   4      0         76        1   149
#> 664                             180.0+  91   1      0        180        0   158
#> 665                               16.0  90  16      0         16        1   106
#> 666                               12.0  96   3      0         12        1    97
#> 667                               26.0  94   3      0         26        1   144
#> 668                             180.0+  93   4      0        180        1   135
#> 669                                3.0  96   3      1          0        1   104
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1
#>  [38] 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 0 1 1 0
#>  [75] 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0
#> [112] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0
#> [149] 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1
#> [186] 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1
#> [223] 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [260] 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1
#> [297] 0 0 1 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1
#> [334] 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0
#> [371] 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0
#> [408] 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [445] 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1
#> [482] 1 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 1 0
#> [519] 0 1 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0
#> [556] 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1
#> [630] 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[2]]
#>   [1] 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1
#>  [38] 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 0
#>  [75] 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0
#> [112] 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 1 1 1 0 1 0
#> [149] 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 0
#> [186] 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1
#> [223] 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0
#> [260] 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [297] 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 0 1
#> [334] 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0
#> [371] 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1
#> [408] 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 1 0 1 0 0 1
#> [445] 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1
#> [482] 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1
#> [519] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1
#> [556] 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0
#> [593] 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [630] 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[3]]
#>   [1] 1 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1
#>  [38] 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0 1 0
#>  [75] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1
#> [112] 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1
#> [149] 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0
#> [186] 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1
#> [223] 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0
#> [260] 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1
#> [297] 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1
#> [334] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1
#> [371] 0 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1
#> [408] 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0
#> [445] 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1
#> [482] 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0
#> [519] 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [556] 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [593] 0 0 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [630] 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[4]]
#>   [1] 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1
#>  [38] 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#>  [75] 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1
#> [112] 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [149] 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1
#> [186] 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1
#> [223] 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1
#> [260] 1 0 0 1 0 1 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1
#> [297] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 0 0 1 1 0
#> [334] 1 0 0 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1
#> [371] 1 0 0 0 1 0 0 1 0 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0
#> [408] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1
#> [445] 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1
#> [482] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 1 0 0
#> [519] 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1
#> [556] 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 0 1
#> [593] 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1
#> [630] 1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[5]]
#>   [1] 0 1 1 1 0 1 0 1 0 0 0 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0
#>  [38] 1 0 0 1 0 0 1 0 0 0 1 1 0 0 1 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1
#>  [75] 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0
#> [112] 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [149] 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1
#> [186] 1 0 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1
#> [223] 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1
#> [260] 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1
#> [297] 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [334] 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0
#> [371] 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 1 0
#> [408] 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1
#> [445] 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1
#> [482] 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 0 0 1 1
#> [519] 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1
#> [556] 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1
#> [593] 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1
#> [630] 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[6]]
#>   [1] 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1
#>  [38] 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0
#>  [75] 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1
#> [112] 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1
#> [149] 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1 0
#> [186] 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1
#> [223] 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1
#> [260] 1 0 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1 1
#> [297] 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [334] 1 1 0 1 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1
#> [371] 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 0 0 1 1 0 1 0 0 0 1 0 1 1
#> [408] 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [445] 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1 1 0 1
#> [482] 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0
#> [519] 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1
#> [556] 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1
#> [593] 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0
#> [630] 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[7]]
#>   [1] 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1
#>  [38] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1
#>  [75] 1 0 0 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1
#> [112] 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 0
#> [149] 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 1
#> [186] 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 0
#> [223] 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1
#> [260] 0 1 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 0
#> [297] 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1
#> [334] 0 1 0 1 0 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [371] 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [408] 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1
#> [445] 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 1 1 1
#> [482] 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0
#> [519] 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1
#> [556] 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0
#> [593] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [630] 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[8]]
#>   [1] 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0
#>  [38] 0 1 0 1 1 0 1 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0
#>  [75] 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 1 1
#> [112] 1 1 1 0 0 1 1 1 0 0 1 1 0 0 0 1 1 0 0 0 0 0 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1
#> [149] 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1
#> [186] 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [223] 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1
#> [260] 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1
#> [297] 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1
#> [334] 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1
#> [371] 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0
#> [408] 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1
#> [445] 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [482] 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0
#> [519] 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0
#> [556] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1
#> [593] 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1
#> [630] 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[9]]
#>   [1] 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0
#>  [38] 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1
#>  [75] 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 0 0 1
#> [112] 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1
#> [149] 1 0 0 1 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0
#> [186] 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 0 0 0
#> [223] 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1
#> [260] 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0
#> [297] 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 1 0 0 1
#> [334] 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0
#> [371] 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1
#> [408] 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1
#> [445] 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1
#> [482] 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0 0
#> [519] 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [556] 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [630] 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[10]]
#>   [1] 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0
#>  [38] 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1 0 0
#>  [75] 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1
#> [112] 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0
#> [149] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 1 0 1 0
#> [186] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0
#> [223] 1 1 0 1 0 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [260] 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [297] 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1
#> [334] 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [371] 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1
#> [408] 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 1 1
#> [445] 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 0 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0
#> [482] 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1
#> [519] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1
#> [556] 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1
#> [593] 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1
#> [630] 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[11]]
#>   [1] 0 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#>  [75] 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0
#> [112] 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0
#> [149] 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1
#> [186] 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1
#> [223] 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 1 0 1 1 0 0 1 1 0 1 0
#> [260] 0 0 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [297] 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0
#> [334] 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1
#> [371] 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [408] 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1
#> [445] 0 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0
#> [482] 0 1 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0
#> [519] 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0
#> [556] 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1
#> [593] 1 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1
#> [630] 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[12]]
#>   [1] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1
#>  [38] 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1
#>  [75] 0 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0
#> [112] 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [149] 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1
#> [186] 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0
#> [223] 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 1
#> [260] 1 1 0 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [297] 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0
#> [334] 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0
#> [371] 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 0 0 1 0 1
#> [408] 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1
#> [445] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0
#> [482] 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0
#> [519] 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1
#> [556] 0 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1 0 1 0
#> [593] 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 0 1 0 1
#> [630] 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 1
#> [667] 1 0 0 0
#> 
#> $weights[[13]]
#>   [1] 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1
#>  [38] 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1
#>  [75] 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1 0
#> [112] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 0 1
#> [149] 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1
#> [186] 1 0 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1
#> [223] 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1
#> [260] 1 0 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1
#> [297] 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [334] 0 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 0 0
#> [371] 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [408] 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1
#> [445] 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1
#> [482] 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1
#> [519] 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1
#> [556] 1 0 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0
#> [593] 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1
#> [630] 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[14]]
#>   [1] 0 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1
#>  [38] 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1
#>  [75] 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1
#> [112] 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [149] 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1
#> [186] 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1
#> [223] 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1
#> [260] 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1
#> [297] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1
#> [334] 0 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 0
#> [371] 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [408] 0 1 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 1
#> [445] 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0
#> [482] 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1
#> [519] 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 1 1 0 1 0
#> [556] 0 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 0 1
#> [593] 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 0 0 1 0 1 1 1 0
#> [630] 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[15]]
#>   [1] 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1
#>  [38] 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#>  [75] 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 0
#> [112] 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [149] 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [186] 0 0 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0 0
#> [223] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0
#> [260] 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [297] 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [334] 0 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1
#> [371] 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 0 0 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1
#> [408] 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0
#> [445] 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0
#> [482] 0 0 1 0 1 0 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1
#> [519] 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0
#> [556] 1 0 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 0
#> [593] 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 0
#> [630] 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[16]]
#>   [1] 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0
#>  [38] 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1
#>  [75] 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1
#> [112] 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 0 1 0 1 1 0 0 0 1 1 1
#> [149] 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1 0 1 0 0 1 0
#> [186] 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0
#> [223] 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0
#> [260] 1 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1
#> [334] 0 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1
#> [371] 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1
#> [408] 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1
#> [445] 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 1 0
#> [482] 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1
#> [519] 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0
#> [556] 0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1
#> [593] 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1
#> [630] 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[17]]
#>   [1] 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0
#>  [38] 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0
#>  [75] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1
#> [112] 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0
#> [149] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 0 0
#> [186] 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1
#> [223] 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1
#> [260] 0 1 0 0 0 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1
#> [297] 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0
#> [334] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [371] 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0
#> [408] 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0
#> [445] 0 1 1 0 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1
#> [482] 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1
#> [519] 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0
#> [556] 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 0
#> [593] 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0
#> [630] 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[18]]
#>   [1] 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1
#>  [38] 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0
#>  [75] 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1
#> [112] 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 0 0
#> [149] 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1
#> [186] 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#> [223] 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1
#> [260] 0 0 0 0 0 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1
#> [297] 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1
#> [334] 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 0 1
#> [371] 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0
#> [408] 1 1 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0
#> [445] 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0
#> [482] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [519] 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0
#> [556] 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1
#> [593] 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 0 1
#> [630] 1 1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[19]]
#>   [1] 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1
#>  [38] 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1
#>  [75] 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1
#> [112] 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0
#> [149] 0 1 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [186] 0 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 0 1 1
#> [223] 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [260] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 0 1 1 0
#> [297] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0
#> [334] 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0
#> [371] 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1
#> [408] 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0
#> [445] 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1
#> [482] 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0
#> [519] 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 1 1
#> [556] 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 0 0 0 0 1
#> [593] 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1
#> [630] 0 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[20]]
#>   [1] 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0
#>  [38] 0 0 0 0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 0 0 0 1 1 0 0 1 0 1 1 0 1
#>  [75] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0 0 1 0 1 0 0 1 0 1
#> [112] 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1
#> [149] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1
#> [186] 1 0 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0
#> [223] 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [260] 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [297] 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0
#> [334] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 0 1 1
#> [371] 0 0 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0
#> [408] 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1
#> [445] 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [482] 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1
#> [519] 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1
#> [556] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0
#> [593] 0 1 0 1 0 0 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 0 0 1
#> [630] 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[21]]
#>   [1] 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1
#>  [38] 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 0 0 0 1 1 1 0 1 0
#>  [75] 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0
#> [112] 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1
#> [149] 0 0 0 0 1 0 0 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0
#> [186] 0 0 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 0
#> [223] 1 0 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [260] 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1
#> [297] 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [334] 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1
#> [371] 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 0 0 1 0 0 1 0
#> [408] 0 1 0 0 0 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1
#> [445] 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1
#> [482] 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0
#> [519] 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1
#> [556] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [593] 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [630] 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[22]]
#>   [1] 1 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0 1 0 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1
#>  [38] 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 1 0 0 1 0 1 0 1
#>  [75] 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1
#> [112] 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1
#> [149] 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1
#> [186] 0 0 1 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0
#> [223] 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [260] 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 0 0 1 1
#> [297] 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1
#> [334] 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [371] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 0 1
#> [408] 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1
#> [445] 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0
#> [482] 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1
#> [519] 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [556] 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0
#> [593] 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1
#> [630] 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[23]]
#>   [1] 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1
#>  [38] 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1
#>  [75] 0 0 0 1 1 1 1 0 0 0 0 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0
#> [112] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1
#> [149] 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1
#> [186] 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1
#> [223] 1 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 0 0 1 1 0 1
#> [260] 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0
#> [297] 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0
#> [334] 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1
#> [371] 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 0
#> [408] 1 1 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [445] 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [482] 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1
#> [519] 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1
#> [556] 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1
#> [593] 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1
#> [630] 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[24]]
#>   [1] 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1
#>  [38] 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1
#>  [75] 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1
#> [112] 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0
#> [149] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1
#> [186] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0
#> [223] 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 0 0 1 0 1 0 1
#> [260] 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 0 0 0 0
#> [297] 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1
#> [334] 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 0 1
#> [371] 1 0 0 1 1 1 1 0 1 0 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 1
#> [408] 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1
#> [445] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0
#> [482] 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [519] 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1
#> [556] 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1
#> [593] 0 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1
#> [630] 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[25]]
#>   [1] 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1
#>  [38] 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0
#>  [75] 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1
#> [112] 1 0 1 0 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [149] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 1 1
#> [186] 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [223] 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1
#> [260] 1 0 0 0 0 1 0 0 1 0 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0
#> [297] 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1
#> [334] 1 1 1 0 0 0 1 0 0 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1
#> [371] 1 0 1 0 0 0 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1
#> [408] 1 1 0 1 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [445] 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0
#> [482] 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [519] 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1
#> [556] 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1
#> [593] 1 1 1 1 1 0 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1
#> [630] 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[26]]
#>   [1] 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1
#>  [38] 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1
#>  [75] 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [112] 1 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [149] 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [186] 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 0
#> [223] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [260] 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0
#> [297] 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 0
#> [334] 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 0
#> [371] 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1
#> [408] 1 0 1 0 0 0 0 0 0 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1
#> [445] 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1
#> [482] 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1
#> [519] 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [556] 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0
#> [593] 0 1 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0
#> [630] 0 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1
#> [667] 1 1 0 0
#> 
#> $weights[[27]]
#>   [1] 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1
#>  [38] 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 0
#>  [75] 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [112] 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1
#> [149] 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#> [186] 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 0 1 1 1
#> [223] 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1
#> [260] 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1
#> [297] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1
#> [334] 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 0
#> [371] 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [408] 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1
#> [445] 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 0 0 0 1 0 1 1 0 1 0 0 1 0 0 1 1
#> [482] 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 0 0 0 0 0
#> [519] 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1
#> [556] 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0
#> [593] 1 0 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1 0 1 0 0 1 0 1 0 1
#> [630] 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[28]]
#>   [1] 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1
#>  [38] 1 0 1 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1
#>  [75] 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1
#> [112] 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [149] 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1
#> [186] 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1
#> [223] 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1
#> [260] 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 1 0 0 0 1 0 1 0 1 0 1 0 1 1 1
#> [297] 1 0 1 0 0 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [334] 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [371] 0 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 1 0 0 1 1
#> [408] 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1
#> [445] 0 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0
#> [482] 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 0 1
#> [519] 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [556] 0 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1
#> [593] 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 1
#> [630] 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[29]]
#>   [1] 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0
#>  [38] 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 0 1 0 0 1 1 0 0 1 1
#>  [75] 0 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [112] 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1
#> [149] 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1
#> [186] 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#> [223] 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0
#> [260] 1 1 1 0 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1
#> [297] 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1
#> [334] 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1
#> [371] 1 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1 0
#> [408] 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1
#> [445] 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [482] 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 0
#> [519] 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0
#> [556] 1 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0
#> [593] 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1
#> [630] 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 0 1 0 0 0 1 1 0 0
#> [667] 1 0 1 0
#> 
#> $weights[[30]]
#>   [1] 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1
#>  [38] 0 0 0 1 1 1 0 1 0 1 0 0 0 1 0 0 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1
#>  [75] 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 1 0
#> [112] 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0
#> [149] 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 0
#> [186] 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0
#> [223] 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0
#> [260] 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 0
#> [297] 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1
#> [334] 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0
#> [371] 0 0 1 1 1 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 0
#> [408] 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1
#> [445] 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1
#> [482] 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [519] 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0
#> [556] 1 1 0 1 0 1 0 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 0 0 0 0 1
#> [593] 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1
#> [630] 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[31]]
#>   [1] 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1
#>  [38] 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0
#>  [75] 1 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1
#> [112] 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0
#> [149] 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0
#> [186] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0
#> [223] 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0
#> [260] 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [297] 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [371] 0 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1
#> [408] 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0
#> [445] 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0
#> [482] 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0
#> [519] 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1
#> [556] 1 1 1 0 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 0 0 1
#> [593] 1 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0
#> [630] 1 0 0 0 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[32]]
#>   [1] 1 1 0 0 0 0 0 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0
#>  [38] 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1
#>  [75] 0 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1
#> [112] 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 0 1 1
#> [149] 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1
#> [186] 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1
#> [223] 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [260] 1 1 0 0 1 0 1 1 0 0 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0
#> [297] 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0
#> [334] 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1
#> [371] 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1
#> [408] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 0
#> [445] 0 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 0 1 1 0
#> [482] 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 0 1 0 1 0 0 0 1
#> [519] 1 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 0
#> [556] 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1
#> [593] 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1
#> [630] 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[33]]
#>   [1] 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1
#>  [38] 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0
#>  [75] 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0
#> [112] 0 0 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1
#> [149] 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0 1 1 1 0 0 1 0 1
#> [186] 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [223] 1 1 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0
#> [260] 0 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1
#> [297] 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [334] 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 0 0
#> [371] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0
#> [408] 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0
#> [445] 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1
#> [482] 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 0
#> [519] 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1
#> [556] 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [593] 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1
#> [630] 1 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1 1 0 0 0 1 0 0 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[34]]
#>   [1] 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0
#>  [38] 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0
#>  [75] 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0
#> [112] 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1 0 0 0
#> [149] 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 0
#> [186] 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0
#> [223] 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1
#> [260] 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1
#> [297] 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1
#> [334] 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 1
#> [371] 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [408] 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 1 0 1 1 1 0 0
#> [445] 1 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0
#> [482] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 0 1 1
#> [519] 1 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1
#> [556] 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0
#> [593] 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0
#> [630] 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [667] 0 1 0 1
#> 
#> $weights[[35]]
#>   [1] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0
#>  [38] 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1
#>  [75] 0 0 0 0 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0
#> [112] 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1
#> [149] 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1
#> [186] 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 1 1 0
#> [223] 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 1 0
#> [260] 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1
#> [297] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1
#> [334] 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 0 0 0 1 1 0 0 1
#> [371] 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [408] 0 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [445] 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [482] 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [519] 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1
#> [556] 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [593] 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0
#> [630] 0 1 0 0 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[36]]
#>   [1] 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1
#>  [38] 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 0 0 0
#>  [75] 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [112] 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0
#> [149] 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 0 1
#> [186] 1 0 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1
#> [223] 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1
#> [260] 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0
#> [297] 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1
#> [334] 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [371] 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1
#> [408] 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 1 0 0 1
#> [445] 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0
#> [482] 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 1 0 0 1 0 1 1 1
#> [519] 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0
#> [556] 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1
#> [593] 1 1 0 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1
#> [630] 1 0 1 1 0 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[37]]
#>   [1] 0 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0
#>  [38] 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#>  [75] 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1
#> [112] 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0
#> [149] 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1
#> [186] 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1
#> [223] 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [260] 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1
#> [297] 0 1 0 0 1 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 0 1 1 1 0 1 0 0 1
#> [334] 0 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0
#> [371] 1 0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0
#> [408] 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0
#> [445] 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 0
#> [482] 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [519] 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 0 1 0 0 0 0 0 0 1
#> [556] 1 0 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0
#> [593] 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 1
#> [630] 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[38]]
#>   [1] 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1
#>  [38] 1 0 1 1 1 1 0 1 0 0 1 0 0 0 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0
#>  [75] 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 1
#> [112] 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [149] 0 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [186] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1
#> [223] 0 0 0 1 0 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1
#> [260] 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 1 0 1 1
#> [297] 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1
#> [334] 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0
#> [371] 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1
#> [408] 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1
#> [445] 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1
#> [482] 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1
#> [519] 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1
#> [556] 1 1 0 0 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [593] 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1
#> [630] 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[39]]
#>   [1] 1 1 0 0 1 0 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1
#>  [38] 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1
#>  [75] 1 1 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0
#> [112] 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 0
#> [149] 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1
#> [186] 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0
#> [223] 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1
#> [260] 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0
#> [297] 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1
#> [334] 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0
#> [371] 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1
#> [408] 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0
#> [445] 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0
#> [482] 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0
#> [519] 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1
#> [556] 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 0
#> [593] 1 1 0 0 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [630] 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[40]]
#>   [1] 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0
#>  [38] 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1
#>  [75] 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1
#> [112] 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1
#> [149] 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 1 1
#> [186] 0 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1
#> [223] 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 0 0 0 1 0 1 0 1 0 1 0
#> [260] 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1
#> [297] 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [334] 1 1 0 1 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0
#> [371] 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [408] 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 0 1
#> [445] 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1
#> [482] 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [519] 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0
#> [556] 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1
#> [593] 1 1 1 0 0 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1
#> [630] 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[41]]
#>   [1] 0 1 1 1 1 0 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 0
#>  [38] 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1
#>  [75] 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0
#> [112] 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 0
#> [149] 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1
#> [186] 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1
#> [223] 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1
#> [260] 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 0 0 0 1 0
#> [297] 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0
#> [334] 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1
#> [371] 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [408] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0
#> [445] 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 0
#> [482] 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1
#> [519] 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1
#> [556] 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [593] 0 1 0 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1
#> [630] 1 0 1 0 0 0 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[42]]
#>   [1] 0 0 0 1 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1
#>  [38] 0 0 0 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1
#>  [75] 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0
#> [112] 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0
#> [149] 1 1 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0
#> [186] 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0
#> [223] 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1
#> [260] 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0
#> [297] 1 0 0 1 0 1 1 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0
#> [334] 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [371] 0 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0
#> [408] 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [445] 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [482] 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [519] 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1
#> [556] 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0
#> [593] 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [630] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[43]]
#>   [1] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1
#>  [38] 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1
#>  [75] 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1
#> [112] 0 0 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0
#> [149] 1 0 1 0 1 0 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1
#> [186] 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1
#> [223] 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [260] 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1
#> [297] 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1
#> [334] 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0
#> [371] 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0
#> [408] 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1 1 0 0 1 1 0 1 1 1
#> [445] 1 0 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 1
#> [482] 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1
#> [519] 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0
#> [556] 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0
#> [593] 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 1 0
#> [630] 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[44]]
#>   [1] 0 0 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1
#>  [38] 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#>  [75] 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1
#> [112] 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [149] 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 1 1 1
#> [186] 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 1 0 1 0 0
#> [223] 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1
#> [260] 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0
#> [297] 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1
#> [334] 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1
#> [371] 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 1 0 0 0
#> [408] 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1
#> [445] 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1
#> [482] 0 1 0 1 0 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0
#> [519] 1 1 1 0 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [556] 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0
#> [593] 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1
#> [630] 1 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[45]]
#>   [1] 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#>  [38] 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1
#> [112] 0 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1
#> [149] 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0
#> [186] 0 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0
#> [223] 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [260] 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0
#> [297] 1 0 0 1 0 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1
#> [334] 0 1 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1
#> [371] 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0
#> [408] 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [445] 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1
#> [482] 0 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1
#> [519] 1 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 1 0 1 0
#> [556] 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 0 0 1
#> [593] 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1
#> [630] 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[46]]
#>   [1] 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1
#>  [38] 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1
#>  [75] 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1
#> [112] 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0
#> [149] 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1
#> [186] 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0
#> [223] 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 0 1
#> [260] 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1
#> [297] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 0 0
#> [334] 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0
#> [371] 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [408] 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1
#> [445] 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0
#> [482] 0 0 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0
#> [519] 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [556] 1 0 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1
#> [593] 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0
#> [630] 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 0
#> [667] 0 1 1 1
#> 
#> $weights[[47]]
#>   [1] 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 1 1
#>  [38] 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1
#>  [75] 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0
#> [112] 1 0 1 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0
#> [149] 0 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0
#> [186] 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0 1
#> [223] 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 0 1
#> [260] 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [297] 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0
#> [371] 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0
#> [408] 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1
#> [445] 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1
#> [482] 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 1
#> [519] 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1
#> [556] 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 1
#> [593] 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [630] 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[48]]
#>   [1] 1 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0
#>  [38] 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1
#>  [75] 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1 0
#> [112] 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1
#> [149] 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1
#> [186] 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0
#> [223] 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0
#> [260] 0 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [297] 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [334] 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1
#> [371] 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1
#> [408] 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0
#> [445] 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 1 0 1 1 1 0
#> [482] 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1 1
#> [519] 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0
#> [556] 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1
#> [593] 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [630] 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[49]]
#>   [1] 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1
#>  [38] 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0
#>  [75] 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0
#> [112] 1 1 0 1 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1
#> [149] 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0
#> [186] 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1 1 0 0 0 1
#> [223] 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1
#> [260] 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0
#> [297] 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0 0
#> [334] 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 0
#> [371] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0
#> [408] 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1
#> [445] 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1
#> [482] 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1
#> [519] 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1
#> [556] 1 0 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [593] 0 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [630] 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[50]]
#>   [1] 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1
#>  [38] 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0
#>  [75] 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0
#> [112] 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0
#> [149] 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1
#> [186] 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1
#> [223] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [260] 1 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0
#> [297] 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1
#> [334] 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1
#> [371] 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0
#> [408] 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1
#> [445] 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 0 0 0 1 0 1
#> [482] 0 1 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 0
#> [519] 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0
#> [556] 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1
#> [593] 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1
#> [630] 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1
#> [667] 0 1 1 0
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1       5.0+
#> 2     2       5.0+
#> 3     3     180.0+
#> 4     4       2.0+
#> 5     5     180.0+
#> 6     6     180.0+
#> 7     7      115.0
#> 8     8       12.0
#> 9     9       5.0+
#> 10   10     180.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15       2.0+
#> 16   16     180.0+
#> 17   17        3.0
#> 18   18     180.0+
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23       2.0+
#> 24   24     155.0+
#> 25   25     180.0+
#> 26   26     180.0+
#> 27   27     180.0+
#> 28   28     180.0+
#> 29   29     180.0+
#> 30   30      150.0
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33     180.0+
#> 34   34     180.0+
#> 35   35     180.0+
#> 36   36     180.0+
#> 37   37     180.0+
#> 38   38       73.0
#> 39   39       5.0+
#> 40   40     161.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44     180.0+
#> 45   45       5.0+
#> 46   46     180.0+
#> 47   47     180.0+
#> 48   48     180.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54      10.0+
#> 55   55     180.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59        2.0
#> 60   60        1.0
#> 61   61     179.0+
#> 62   62     180.0+
#> 63   63     179.0+
#> 64   64     180.0+
#> 65   65     180.0+
#> 66   66       4.0+
#> 67   67     180.0+
#> 68   68     180.0+
#> 69   69     180.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74     180.0+
#> 75   75     180.0+
#> 76   76     180.0+
#> 77   77        7.0
#> 78   78       36.0
#> 79   79      88.0+
#> 80   80       4.0+
#> 81   81     180.0+
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87        5.0
#> 88   88     180.0+
#> 89   89     180.0+
#> 90   90     180.0+
#> 91   91     180.0+
#> 92   92     180.0+
#> 93   93     180.0+
#> 94   94       4.0+
#> 95   95       85.0
#> 96   96     180.0+
#> 97   97     166.0+
#> 98   98       99.0
#> 99   99     180.0+
#> 100 100      16.0+
#> 101 101     152.0+
#> 102 102     180.0+
#> 103 103     180.0+
#> 104 104      13.0+
#> 105 105     171.0+
#> 106 106     174.0+
#> 107 107       28.0
#> 108 108        1.0
#> 109 109     180.0+
#> 110 110       9.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     175.0+
#> 115 115     180.0+
#> 116 116        2.0
#> 117 117     180.0+
#> 118 118       7.0+
#> 119 119     180.0+
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123     180.0+
#> 124 124     180.0+
#> 125 125     180.0+
#> 126 126      16.0+
#> 127 127     180.0+
#> 128 128     180.0+
#> 129 129      12.0+
#> 130 130     180.0+
#> 131 131        8.0
#> 132 132        2.0
#> 133 133     180.0+
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136     180.0+
#> 137 137     180.0+
#> 138 138      165.0
#> 139 139     180.0+
#> 140 140     180.0+
#> 141 141     180.0+
#> 142 142     180.0+
#> 143 143       8.0+
#> 144 144     180.0+
#> 145 145     180.0+
#> 146 146        0.5
#> 147 147     180.0+
#> 148 148     180.0+
#> 149 149     180.0+
#> 150 150     171.0+
#> 151 151       5.0+
#> 152 152     180.0+
#> 153 153     147.0+
#> 154 154     180.0+
#> 155 155       4.0+
#> 156 156     180.0+
#> 157 157     180.0+
#> 158 158     180.0+
#> 159 159       2.0+
#> 160 160     180.0+
#> 161 161     180.0+
#> 162 162     180.0+
#> 163 163        2.0
#> 164 164     180.0+
#> 165 165     180.0+
#> 166 166     180.0+
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169       9.0+
#> 170 170     180.0+
#> 171 171     180.0+
#> 172 172     161.0+
#> 173 173     171.0+
#> 174 174     180.0+
#> 175 175        1.0
#> 176 176     180.0+
#> 177 177     180.0+
#> 178 178      10.0+
#> 179 179     180.0+
#> 180 180       17.0
#> 181 181       45.0
#> 182 182       19.0
#> 183 183       9.0+
#> 184 184     180.0+
#> 185 185     172.0+
#> 186 186     172.0+
#> 187 187       24.0
#> 188 188     180.0+
#> 189 189        8.0
#> 190 190     180.0+
#> 191 191       1.0+
#> 192 192       15.0
#> 193 193     180.0+
#> 194 194     180.0+
#> 195 195       77.0
#> 196 196       8.0+
#> 197 197     180.0+
#> 198 198     180.0+
#> 199 199     180.0+
#> 200 200      170.0
#> 201 201       94.0
#> 202 202        7.0
#> 203 203       7.0+
#> 204 204     180.0+
#> 205 205     180.0+
#> 206 206     180.0+
#> 207 207       3.0+
#> 208 208       30.0
#> 209 209     180.0+
#> 210 210       28.0
#> 211 211        5.0
#> 212 212       18.0
#> 213 213       5.0+
#> 214 214     180.0+
#> 215 215     180.0+
#> 216 216     180.0+
#> 217 217     180.0+
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221     180.0+
#> 222 222     180.0+
#> 223 223     180.0+
#> 224 224       22.0
#> 225 225     180.0+
#> 226 226       84.0
#> 227 227     180.0+
#> 228 228     180.0+
#> 229 229     180.0+
#> 230 230     180.0+
#> 231 231     180.0+
#> 232 232       4.0+
#> 233 233       3.0+
#> 234 234      167.0
#> 235 235     180.0+
#> 236 236     180.0+
#> 237 237       3.0+
#> 238 238       88.0
#> 239 239     180.0+
#> 240 240       12.0
#> 241 241     180.0+
#> 242 242     180.0+
#> 243 243     180.0+
#> 244 244        0.5
#> 245 245     180.0+
#> 246 246      12.0+
#> 247 247     180.0+
#> 248 248     180.0+
#> 249 249     180.0+
#> 250 250     180.0+
#> 251 251        9.0
#> 252 252        3.0
#> 253 253     180.0+
#> 254 254      11.0+
#> 255 255      18.0+
#> 256 256     180.0+
#> 257 257     180.0+
#> 258 258     180.0+
#> 259 259     180.0+
#> 260 260       2.0+
#> 261 261      103.0
#> 262 262       15.0
#> 263 263     180.0+
#> 264 264     180.0+
#> 265 265     166.0+
#> 266 266       0.5+
#> 267 267       3.0+
#> 268 268     180.0+
#> 269 269     180.0+
#> 270 270     180.0+
#> 271 271       7.0+
#> 272 272        8.0
#> 273 273        5.0
#> 274 274       16.0
#> 275 275     180.0+
#> 276 276        1.0
#> 277 277     180.0+
#> 278 278     180.0+
#> 279 279     180.0+
#> 280 280     180.0+
#> 281 281       79.0
#> 282 282       80.0
#> 283 283     180.0+
#> 284 284     180.0+
#> 285 285     174.0+
#> 286 286     180.0+
#> 287 287     180.0+
#> 288 288     180.0+
#> 289 289       8.0+
#> 290 290        3.0
#> 291 291      175.0
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294        6.0
#> 295 295     180.0+
#> 296 296      19.0+
#> 297 297       99.0
#> 298 298     180.0+
#> 299 299     179.0+
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302        0.5
#> 303 303       18.0
#> 304 304       7.0+
#> 305 305     180.0+
#> 306 306     152.0+
#> 307 307     180.0+
#> 308 308       93.0
#> 309 309      21.0+
#> 310 310      101.0
#> 311 311        4.0
#> 312 312        5.0
#> 313 313      150.0
#> 314 314     180.0+
#> 315 315     180.0+
#> 316 316        1.0
#> 317 317     180.0+
#> 318 318      171.0
#> 319 319     180.0+
#> 320 320        0.5
#> 321 321     180.0+
#> 322 322     180.0+
#> 323 323     180.0+
#> 324 324     180.0+
#> 325 325      14.0+
#> 326 326       7.0+
#> 327 327        2.0
#> 328 328       5.0+
#> 329 329       3.0+
#> 330 330       36.0
#> 331 331       5.0+
#> 332 332     180.0+
#> 333 333     180.0+
#> 334 334        7.0
#> 335 335       8.0+
#> 336 336     180.0+
#> 337 337     180.0+
#> 338 338       18.0
#> 339 339     180.0+
#> 340 340     180.0+
#> 341 341        7.0
#> 342 342     180.0+
#> 343 343        7.0
#> 344 344       8.0+
#> 345 345      123.0
#> 346 346     180.0+
#> 347 347       51.0
#> 348 348     180.0+
#> 349 349        1.0
#> 350 350     180.0+
#> 351 351      10.0+
#> 352 352     180.0+
#> 353 353      162.0
#> 354 354       7.0+
#> 355 355       7.0+
#> 356 356        9.0
#> 357 357     180.0+
#> 358 358     180.0+
#> 359 359     180.0+
#> 360 360     180.0+
#> 361 361       76.0
#> 362 362     180.0+
#> 363 363     173.0+
#> 364 364     180.0+
#> 365 365     180.0+
#> 366 366     180.0+
#> 367 367       28.0
#> 368 368      16.0+
#> 369 369     180.0+
#> 370 370      16.0+
#> 371 371     180.0+
#> 372 372       15.0
#> 373 373       3.0+
#> 374 374     180.0+
#> 375 375     180.0+
#> 376 376     180.0+
#> 377 377        2.0
#> 378 378     180.0+
#> 379 379       20.0
#> 380 380        0.5
#> 381 381     180.0+
#> 382 382     180.0+
#> 383 383        3.0
#> 384 384       12.0
#> 385 385       4.0+
#> 386 386       58.0
#> 387 387     180.0+
#> 388 388     180.0+
#> 389 389     180.0+
#> 390 390     180.0+
#> 391 391        3.0
#> 392 392      175.0
#> 393 393     180.0+
#> 394 394     180.0+
#> 395 395     180.0+
#> 396 396       8.0+
#> 397 397     179.0+
#> 398 398     180.0+
#> 399 399      159.0
#> 400 400     180.0+
#> 401 401        1.0
#> 402 402     180.0+
#> 403 403       13.0
#> 404 404     180.0+
#> 405 405       10.0
#> 406 406     104.0+
#> 407 407        1.0
#> 408 408       57.0
#> 409 409     180.0+
#> 410 410       11.0
#> 411 411       3.0+
#> 412 412        5.0
#> 413 413     180.0+
#> 414 414     180.0+
#> 415 415     180.0+
#> 416 416     180.0+
#> 417 417       34.0
#> 418 418     180.0+
#> 419 419     180.0+
#> 420 420     180.0+
#> 421 421        5.0
#> 422 422      11.0+
#> 423 423       4.0+
#> 424 424     180.0+
#> 425 425        7.0
#> 426 426      15.0+
#> 427 427       10.0
#> 428 428     180.0+
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431       85.0
#> 432 432     180.0+
#> 433 433      17.0+
#> 434 434     180.0+
#> 435 435     174.0+
#> 436 436        4.0
#> 437 437        0.5
#> 438 438     180.0+
#> 439 439       12.0
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442       46.0
#> 443 443     180.0+
#> 444 444        4.0
#> 445 445        1.0
#> 446 446       52.0
#> 447 447     180.0+
#> 448 448       12.0
#> 449 449     180.0+
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452     180.0+
#> 453 453        5.0
#> 454 454     180.0+
#> 455 455     180.0+
#> 456 456       12.0
#> 457 457       7.0+
#> 458 458        3.0
#> 459 459     168.0+
#> 460 460     180.0+
#> 461 461     180.0+
#> 462 462       18.0
#> 463 463     180.0+
#> 464 464       47.0
#> 465 465     180.0+
#> 466 466       11.0
#> 467 467     180.0+
#> 468 468        7.0
#> 469 469     180.0+
#> 470 470        7.0
#> 471 471       10.0
#> 472 472      172.0
#> 473 473      119.0
#> 474 474       12.0
#> 475 475     180.0+
#> 476 476        8.0
#> 477 477     180.0+
#> 478 478       80.0
#> 479 479     180.0+
#> 480 480     180.0+
#> 481 481       4.0+
#> 482 482        2.0
#> 483 483     180.0+
#> 484 484       11.0
#> 485 485        3.0
#> 486 486       24.0
#> 487 487       32.0
#> 488 488       23.0
#> 489 489        6.0
#> 490 490     180.0+
#> 491 491       3.0+
#> 492 492     180.0+
#> 493 493     180.0+
#> 494 494     180.0+
#> 495 495        1.0
#> 496 496       11.0
#> 497 497        4.0
#> 498 498        4.0
#> 499 499      10.0+
#> 500 500     180.0+
#> 501 501       2.0+
#> 502 502     180.0+
#> 503 503        1.0
#> 504 504        1.0
#> 505 505       43.0
#> 506 506        3.0
#> 507 507     180.0+
#> 508 508        6.0
#> 509 509      138.0
#> 510 510     180.0+
#> 511 511        8.0
#> 512 512       40.0
#> 513 513       59.0
#> 514 514      161.0
#> 515 515      10.0+
#> 516 516     180.0+
#> 517 517       93.0
#> 518 518      118.0
#> 519 519      173.0
#> 520 520     180.0+
#> 521 521       37.0
#> 522 522     180.0+
#> 523 523     175.0+
#> 524 524       22.0
#> 525 525       5.0+
#> 526 526        3.0
#> 527 527     171.0+
#> 528 528     166.0+
#> 529 529       71.0
#> 530 530      20.0+
#> 531 531        1.0
#> 532 532       3.0+
#> 533 533     180.0+
#> 534 534       85.0
#> 535 535     180.0+
#> 536 536        5.0
#> 537 537     180.0+
#> 538 538      108.0
#> 539 539     180.0+
#> 540 540      125.0
#> 541 541        6.0
#> 542 542       9.0+
#> 543 543     180.0+
#> 544 544     180.0+
#> 545 545     180.0+
#> 546 546      103.0
#> 547 547     177.0+
#> 548 548       70.0
#> 549 549        4.0
#> 550 550     180.0+
#> 551 551     180.0+
#> 552 552     180.0+
#> 553 553       7.0+
#> 554 554     180.0+
#> 555 555       20.0
#> 556 556       16.0
#> 557 557     180.0+
#> 558 558     180.0+
#> 559 559     180.0+
#> 560 560     177.0+
#> 561 561        0.5
#> 562 562     180.0+
#> 563 563      167.0
#> 564 564     180.0+
#> 565 565        1.0
#> 566 566       38.0
#> 567 567     180.0+
#> 568 568       90.0
#> 569 569       89.0
#> 570 570        4.0
#> 571 571       71.0
#> 572 572        1.0
#> 573 573       19.0
#> 574 574       30.0
#> 575 575     180.0+
#> 576 576     180.0+
#> 577 577      114.0
#> 578 578     180.0+
#> 579 579      154.0
#> 580 580        2.0
#> 581 581     180.0+
#> 582 582     180.0+
#> 583 583        1.0
#> 584 584      16.0+
#> 585 585       4.0+
#> 586 586     180.0+
#> 587 587       77.0
#> 588 588     180.0+
#> 589 589       83.0
#> 590 590       88.0
#> 591 591      126.0
#> 592 592        8.0
#> 593 593     180.0+
#> 594 594      165.0
#> 595 595        3.0
#> 596 596     180.0+
#> 597 597     180.0+
#> 598 598     180.0+
#> 599 599     180.0+
#> 600 600     180.0+
#> 601 601        5.0
#> 602 602     180.0+
#> 603 603      174.0
#> 604 604        6.0
#> 605 605       70.0
#> 606 606     180.0+
#> 607 607     180.0+
#> 608 608     180.0+
#> 609 609        3.0
#> 610 610       13.0
#> 611 611     180.0+
#> 612 612       92.0
#> 613 613     180.0+
#> 614 614       38.0
#> 615 615        4.0
#> 616 616      177.0
#> 617 617       3.0+
#> 618 618       6.0+
#> 619 619       6.0+
#> 620 620       4.0+
#> 621 621       20.0
#> 622 622       22.0
#> 623 623       65.0
#> 624 624       11.0
#> 625 625     180.0+
#> 626 626       46.0
#> 627 627      115.0
#> 628 628     180.0+
#> 629 629       3.0+
#> 630 630       8.0+
#> 631 631        4.0
#> 632 632       1.0+
#> 633 633     180.0+
#> 634 634        8.0
#> 635 635       29.0
#> 636 636     180.0+
#> 637 637     180.0+
#> 638 638       46.0
#> 639 639       14.0
#> 640 640       1.0+
#> 641 641     180.0+
#> 642 642       25.0
#> 643 643        3.0
#> 644 644       24.0
#> 645 645       50.0
#> 646 646     180.0+
#> 647 647        4.0
#> 648 648        1.0
#> 649 649     178.0+
#> 650 650       36.0
#> 651 651       75.0
#> 652 652       3.0+
#> 653 653        1.0
#> 654 654      158.0
#> 655 655       74.0
#> 656 656     180.0+
#> 657 657      169.0
#> 658 658        7.0
#> 659 659        4.0
#> 660 660        2.0
#> 661 661     179.0+
#> 662 662       8.0+
#> 663 663       76.0
#> 664 664     180.0+
#> 665 665       16.0
#> 666 666       12.0
#> 667 667       26.0
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
#> <bytecode: 0x55cae9ac8d30>
#> <environment: 0x55cafb834af0>
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
#> <bytecode: 0x55cae9221898>
#> <environment: 0x55cafb9f9b30>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55cae9223ac8>
#> <environment: 0x55cafb9f9a50>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55cae9221898>
#> <environment: 0x55cafb9f9970>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55cae9223ac8>
#> <environment: 0x55cafb9f9820>
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
#> <bytecode: 0x55cae5843280>
#> <environment: 0x55cafb8322a8>
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
#>   0.8227664 
```
