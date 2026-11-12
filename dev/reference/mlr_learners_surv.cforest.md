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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| ntree | integer | 500 |  | \\\[1, \infty)\\ |
| replace | logical | FALSE | TRUE, FALSE | \- |
| fraction | numeric | 0.632 |  | \\\[0, 1\]\\ |
| mtry | integer | \- |  | \\\[0, \infty)\\ |
| mtryratio | numeric | \- |  | \\\[0, 1\]\\ |
| applyfun | untyped | \- |  | \- |
| cores | integer | NULL |  | \\(-\infty, \infty)\\ |
| trace | logical | FALSE | TRUE, FALSE | \- |
| cluster | untyped | \- |  | \- |
| na.action | untyped | "stats::na.pass" |  | \- |
| scores | untyped | \- |  | \- |
| teststat | character | quadratic | quadratic, maximum | \- |
| splitstat | character | quadratic | quadratic, maximum | \- |
| splittest | logical | FALSE | TRUE, FALSE | \- |
| testtype | character | Univariate | Bonferroni, MonteCarlo, Univariate, Teststatistic | \- |
| nmax | untyped | \- |  | \- |
| alpha | numeric | 0.05 |  | \\\[0, 1\]\\ |
| mincriterion | numeric | 0.95 |  | \\\[0, 1\]\\ |
| logmincriterion | numeric | -0.05129329 |  | \\(-\infty, \infty)\\ |
| minsplit | integer | 20 |  | \\\[1, \infty)\\ |
| minbucket | integer | 7 |  | \\\[1, \infty)\\ |
| minprob | numeric | 0.01 |  | \\\[0, 1\]\\ |
| stump | logical | FALSE | TRUE, FALSE | \- |
| lookahead | logical | FALSE | TRUE, FALSE | \- |
| MIA | logical | FALSE | TRUE, FALSE | \- |
| nresample | integer | 9999 |  | \\\[1, \infty)\\ |
| tol | numeric | 1.490116e-08 |  | \\\[0, \infty)\\ |
| maxsurrogate | integer | 0 |  | \\\[0, \infty)\\ |
| numsurrogate | logical | FALSE | TRUE, FALSE | \- |
| maxdepth | integer | Inf |  | \\\[0, \infty)\\ |
| multiway | logical | FALSE | TRUE, FALSE | \- |
| splittry | integer | 2 |  | \\\[0, \infty)\\ |
| intersplit | logical | FALSE | TRUE, FALSE | \- |
| majority | logical | FALSE | TRUE, FALSE | \- |
| caseweights | logical | TRUE | TRUE, FALSE | \- |
| saveinfo | logical | FALSE | TRUE, FALSE | \- |
| update | logical | FALSE | TRUE, FALSE | \- |
| splitflavour | character | ctree | ctree, exhaustive | \- |
| maxvar | integer | \- |  | \\\[1, \infty)\\ |
| OOB | logical | FALSE | TRUE, FALSE | \- |
| simplify | logical | TRUE | TRUE, FALSE | \- |
| scale | logical | TRUE | TRUE, FALSE | \- |
| maxpts | integer | 25000 |  | \\(-\infty, \infty)\\ |
| abseps | numeric | 0.001 |  | \\\[0, \infty)\\ |
| releps | numeric | 0 |  | \\\[0, \infty)\\ |

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
. <https://doi.org/10.1198/106186006x133933>.

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

- [`LearnerSurvCForest$new()`](#method-LearnerSurvCForest-initialize)

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

### `LearnerSurvCForest$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCForest$new()

------------------------------------------------------------------------

### `LearnerSurvCForest$clone()`

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
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V2 <= 76
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V2 > 76 *
#> |   |   |   [9] V5 > 171 *
#> |   |   [10] V6 > 0
#> |   |   |   [11] V5 <= 128
#> |   |   |   |   [12] V3 <= 4
#> |   |   |   |   |   [13] V2 <= 70 *
#> |   |   |   |   |   [14] V2 > 70 *
#> |   |   |   |   [15] V3 > 4
#> |   |   |   |   |   [16] V2 <= 63 *
#> |   |   |   |   |   [17] V2 > 63
#> |   |   |   |   |   |   [18] V2 <= 85
#> |   |   |   |   |   |   |   [19] V7 <= 140 *
#> |   |   |   |   |   |   |   [20] V7 > 140 *
#> |   |   |   |   |   |   [21] V2 > 85 *
#> |   |   |   [22] V5 > 128
#> |   |   |   |   [23] V3 <= 8
#> |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   [26] V2 <= 59 *
#> |   |   |   |   |   |   [27] V2 > 59 *
#> |   |   |   |   [28] V3 > 8 *
#> |   [29] V4 > 0
#> |   |   [30] V7 <= 126
#> |   |   |   [31] V2 <= 72
#> |   |   |   |   [32] V7 <= 96 *
#> |   |   |   |   [33] V7 > 96
#> |   |   |   |   |   [34] V2 <= 47 *
#> |   |   |   |   |   [35] V2 > 47
#> |   |   |   |   |   |   [36] V3 <= 9 *
#> |   |   |   |   |   |   [37] V3 > 9 *
#> |   |   |   [38] V2 > 72
#> |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   [41] V3 <= 4 *
#> |   |   |   |   |   [42] V3 > 4 *
#> |   |   [43] V7 > 126
#> |   |   |   [44] V3 <= 6
#> |   |   |   |   [45] V2 <= 61
#> |   |   |   |   |   [46] V7 <= 151 *
#> |   |   |   |   |   [47] V7 > 151 *
#> |   |   |   |   [48] V2 > 61
#> |   |   |   |   |   [49] V3 <= 3 *
#> |   |   |   |   |   [50] V3 > 3 *
#> |   |   |   [51] V3 > 6
#> |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   [53] V3 <= 8 *
#> |   |   |   |   |   [54] V3 > 8
#> |   |   |   |   |   |   [55] V3 <= 11 *
#> |   |   |   |   |   |   [56] V3 > 11
#> |   |   |   |   |   |   |   [57] V5 <= 7 *
#> |   |   |   |   |   |   |   [58] V5 > 7 *
#> |   |   |   |   [59] V6 > 0
#> |   |   |   |   |   [60] V2 <= 63 *
#> |   |   |   |   |   [61] V2 > 63
#> |   |   |   |   |   |   [62] V3 <= 12 *
#> |   |   |   |   |   |   [63] V3 > 12
#> |   |   |   |   |   |   |   [64] V5 <= 3 *
#> |   |   |   |   |   |   |   [65] V5 > 3 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 14
#> |   |   |   |   [5] V5 <= 169
#> |   |   |   |   |   [6] V2 <= 56 *
#> |   |   |   |   |   [7] V2 > 56
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V5 > 169
#> |   |   |   |   |   [11] V3 <= 8 *
#> |   |   |   |   |   [12] V3 > 8 *
#> |   |   |   [13] V3 > 14 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V2 <= 47
#> |   |   |   |   [16] V2 <= 41 *
#> |   |   |   |   [17] V2 > 41 *
#> |   |   |   [18] V2 > 47
#> |   |   |   |   [19] V5 <= 12
#> |   |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   [23] V2 <= 59 *
#> |   |   |   |   |   |   |   [24] V2 > 59
#> |   |   |   |   |   |   |   |   [25] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [26] V3 > 9 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   [29] V3 > 4
#> |   |   |   |   |   |   |   [30] V2 <= 57 *
#> |   |   |   |   |   |   |   [31] V2 > 57
#> |   |   |   |   |   |   |   |   [32] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [33] V7 > 135 *
#> |   |   |   |   [34] V5 > 12 *
#> |   [35] V2 > 70
#> |   |   [36] V4 <= 0
#> |   |   |   [37] V5 <= 165
#> |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   [39] V7 <= 130 *
#> |   |   |   |   |   [40] V7 > 130 *
#> |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   [42] V3 <= 2 *
#> |   |   |   |   |   [43] V3 > 2
#> |   |   |   |   |   |   [44] V2 <= 81 *
#> |   |   |   |   |   |   [45] V2 > 81 *
#> |   |   |   [46] V5 > 165
#> |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   [48] V3 > 2 *
#> |   |   [49] V4 > 0
#> |   |   |   [50] V6 <= 0
#> |   |   |   |   [51] V7 <= 140 *
#> |   |   |   |   [52] V7 > 140 *
#> |   |   |   [53] V6 > 0
#> |   |   |   |   [54] V5 <= 2
#> |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   [57] V5 > 2
#> |   |   |   |   |   [58] V3 <= 13 *
#> |   |   |   |   |   [59] V3 > 13 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V2 <= 48
#> |   |   |   [4] V2 <= 38 *
#> |   |   |   [5] V2 > 38
#> |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   [7] V6 > 0 *
#> |   |   [8] V2 > 48
#> |   |   |   [9] V4 <= 0
#> |   |   |   |   [10] V5 <= 170
#> |   |   |   |   |   [11] V7 <= 149
#> |   |   |   |   |   |   [12] V7 <= 126 *
#> |   |   |   |   |   |   [13] V7 > 126 *
#> |   |   |   |   |   [14] V7 > 149 *
#> |   |   |   |   [15] V5 > 170 *
#> |   |   |   [16] V4 > 0
#> |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   [18] V5 <= 6
#> |   |   |   |   |   |   [19] V2 <= 57 *
#> |   |   |   |   |   |   [20] V2 > 57 *
#> |   |   |   |   |   [21] V5 > 6 *
#> |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   [23] V5 <= 1 *
#> |   |   |   |   |   [24] V5 > 1
#> |   |   |   |   |   |   [25] V7 <= 141 *
#> |   |   |   |   |   |   [26] V7 > 141 *
#> |   [27] V2 > 66
#> |   |   [28] V5 <= 171
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V2 <= 70 *
#> |   |   |   |   [31] V2 > 70
#> |   |   |   |   |   [32] V2 <= 88
#> |   |   |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V5 <= 8
#> |   |   |   |   |   |   |   |   [36] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [37] V5 > 3 *
#> |   |   |   |   |   |   |   [38] V5 > 8 *
#> |   |   |   |   |   [39] V2 > 88 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V3 <= 15
#> |   |   |   |   |   |   [43] V5 <= 4
#> |   |   |   |   |   |   |   [44] V2 <= 72 *
#> |   |   |   |   |   |   |   [45] V2 > 72 *
#> |   |   |   |   |   |   [46] V5 > 4 *
#> |   |   |   |   |   [47] V3 > 15 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V5 <= 0
#> |   |   |   |   |   |   [50] V7 <= 120 *
#> |   |   |   |   |   |   [51] V7 > 120 *
#> |   |   |   |   |   [52] V5 > 0
#> |   |   |   |   |   |   [53] V7 <= 129 *
#> |   |   |   |   |   |   [54] V7 > 129
#> |   |   |   |   |   |   |   [55] V5 <= 4 *
#> |   |   |   |   |   |   |   [56] V5 > 4 *
#> |   |   [57] V5 > 171 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V7 <= 110 *
#> |   |   |   [5] V7 > 110
#> |   |   |   |   [6] V5 <= 169 *
#> |   |   |   |   [7] V5 > 169
#> |   |   |   |   |   [8] V7 <= 135 *
#> |   |   |   |   |   [9] V7 > 135 *
#> |   |   [10] V2 > 60
#> |   |   |   [11] V5 <= 165
#> |   |   |   |   [12] V7 <= 112
#> |   |   |   |   |   [13] V5 <= 6 *
#> |   |   |   |   |   [14] V5 > 6 *
#> |   |   |   |   [15] V7 > 112
#> |   |   |   |   |   [16] V2 <= 84
#> |   |   |   |   |   |   [17] V3 <= 3
#> |   |   |   |   |   |   |   [18] V5 <= 2 *
#> |   |   |   |   |   |   |   [19] V5 > 2 *
#> |   |   |   |   |   |   [20] V3 > 3
#> |   |   |   |   |   |   |   [21] V2 <= 74 *
#> |   |   |   |   |   |   |   [22] V2 > 74 *
#> |   |   |   |   |   [23] V2 > 84 *
#> |   |   |   [24] V5 > 165
#> |   |   |   |   [25] V3 <= 12
#> |   |   |   |   |   [26] V2 <= 76
#> |   |   |   |   |   |   [27] V2 <= 73
#> |   |   |   |   |   |   |   [28] V7 <= 161 *
#> |   |   |   |   |   |   |   [29] V7 > 161 *
#> |   |   |   |   |   |   [30] V2 > 73 *
#> |   |   |   |   |   [31] V2 > 76 *
#> |   |   |   |   [32] V3 > 12 *
#> |   [33] V4 > 0
#> |   |   [34] V5 <= 6
#> |   |   |   [35] V2 <= 59
#> |   |   |   |   [36] V5 <= 1
#> |   |   |   |   |   [37] V5 <= 0 *
#> |   |   |   |   |   [38] V5 > 0 *
#> |   |   |   |   [39] V5 > 1 *
#> |   |   |   [40] V2 > 59
#> |   |   |   |   [41] V2 <= 85
#> |   |   |   |   |   [42] V2 <= 65 *
#> |   |   |   |   |   [43] V2 > 65
#> |   |   |   |   |   |   [44] V7 <= 105 *
#> |   |   |   |   |   |   [45] V7 > 105
#> |   |   |   |   |   |   |   [46] V7 <= 167
#> |   |   |   |   |   |   |   |   [47] V3 <= 11
#> |   |   |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   [51] V3 > 4 *
#> |   |   |   |   |   |   |   |   [52] V3 > 11 *
#> |   |   |   |   |   |   |   [53] V7 > 167 *
#> |   |   |   |   [54] V2 > 85 *
#> |   |   [55] V5 > 6
#> |   |   |   [56] V5 <= 8
#> |   |   |   |   [57] V3 <= 13 *
#> |   |   |   |   [58] V3 > 13 *
#> |   |   |   [59] V5 > 8
#> |   |   |   |   [60] V2 <= 53 *
#> |   |   |   |   [61] V2 > 53
#> |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   |   [64] V3 <= 16
#> |   |   |   |   |   |   |   [65] V3 <= 14 *
#> |   |   |   |   |   |   |   [66] V3 > 14 *
#> |   |   |   |   |   |   [67] V3 > 16 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V7 <= 90 *
#> |   |   |   |   [6] V7 > 90 *
#> |   |   |   [7] V7 > 112
#> |   |   |   |   [8] V2 <= 60 *
#> |   |   |   |   [9] V2 > 60
#> |   |   |   |   |   [10] V7 <= 150
#> |   |   |   |   |   |   [11] V7 <= 120 *
#> |   |   |   |   |   |   [12] V7 > 120
#> |   |   |   |   |   |   |   [13] V3 <= 6
#> |   |   |   |   |   |   |   |   [14] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [15] V7 > 138 *
#> |   |   |   |   |   |   |   [16] V3 > 6 *
#> |   |   |   |   |   [17] V7 > 150
#> |   |   |   |   |   |   [18] V2 <= 71 *
#> |   |   |   |   |   |   [19] V2 > 71 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 93 *
#> |   |   |   [22] V7 > 93
#> |   |   |   |   [23] V2 <= 71
#> |   |   |   |   |   [24] V5 <= 3
#> |   |   |   |   |   |   [25] V5 <= 2
#> |   |   |   |   |   |   |   [26] V2 <= 60
#> |   |   |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 0 *
#> |   |   |   |   |   |   |   [31] V2 > 60
#> |   |   |   |   |   |   |   |   [32] V2 <= 67
#> |   |   |   |   |   |   |   |   |   [33] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [34] V3 > 4 *
#> |   |   |   |   |   |   |   |   [35] V2 > 67 *
#> |   |   |   |   |   |   [36] V5 > 2 *
#> |   |   |   |   |   [37] V5 > 3
#> |   |   |   |   |   |   [38] V5 <= 5 *
#> |   |   |   |   |   |   [39] V5 > 5
#> |   |   |   |   |   |   |   [40] V3 <= 10 *
#> |   |   |   |   |   |   |   [41] V3 > 10
#> |   |   |   |   |   |   |   |   [42] V3 <= 18
#> |   |   |   |   |   |   |   |   |   [43] V3 <= 14 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 14 *
#> |   |   |   |   |   |   |   |   [45] V3 > 18 *
#> |   |   |   |   [46] V2 > 71
#> |   |   |   |   |   [47] V5 <= 9
#> |   |   |   |   |   |   [48] V7 <= 123 *
#> |   |   |   |   |   |   [49] V7 > 123
#> |   |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   |   [52] V2 <= 80
#> |   |   |   |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [54] V5 > 0 *
#> |   |   |   |   |   |   |   |   [55] V2 > 80 *
#> |   |   |   |   |   [56] V5 > 9 *
#> |   [57] V5 > 171
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 170
#> |   |   |   |   [61] V2 <= 58 *
#> |   |   |   |   [62] V2 > 58 *
#> |   |   |   [63] V7 > 170 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V3 <= 1
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0 *
#> |   |   |   [7] V3 > 1
#> |   |   |   |   [8] V2 <= 66
#> |   |   |   |   |   [9] V4 <= 0
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   [14] V5 <= 8
#> |   |   |   |   |   |   |   |   [15] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [16] V7 <= 127 *
#> |   |   |   |   |   |   |   |   |   [17] V7 > 127 *
#> |   |   |   |   |   |   |   |   [18] V3 > 7 *
#> |   |   |   |   |   |   |   [19] V5 > 8 *
#> |   |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   |   [21] V7 <= 135
#> |   |   |   |   |   |   |   |   [22] V7 <= 112 *
#> |   |   |   |   |   |   |   |   [23] V7 > 112 *
#> |   |   |   |   |   |   |   [24] V7 > 135
#> |   |   |   |   |   |   |   |   [25] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [26] V3 > 6
#> |   |   |   |   |   |   |   |   |   [27] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   [28] V2 > 63 *
#> |   |   |   |   [29] V2 > 66
#> |   |   |   |   |   [30] V4 <= 0
#> |   |   |   |   |   |   [31] V2 <= 71 *
#> |   |   |   |   |   |   [32] V2 > 71
#> |   |   |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   |   |   [34] V7 > 130 *
#> |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   [36] V7 <= 125
#> |   |   |   |   |   |   |   [37] V7 <= 117 *
#> |   |   |   |   |   |   |   [38] V7 > 117 *
#> |   |   |   |   |   |   [39] V7 > 125
#> |   |   |   |   |   |   |   [40] V3 <= 19
#> |   |   |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [42] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [43] V5 > 5 *
#> |   |   |   |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   |   |   |   [45] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 13 *
#> |   |   |   |   |   |   |   [49] V3 > 19 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V5 <= 128
#> |   |   |   |   [52] V5 <= 73
#> |   |   |   |   |   [53] V5 <= 29 *
#> |   |   |   |   |   [54] V5 > 29 *
#> |   |   |   |   [55] V5 > 73 *
#> |   |   |   [56] V5 > 128 *
#> |   [57] V5 > 170 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 79
#> |   |   |   |   [5] V5 <= 171
#> |   |   |   |   |   [6] V5 <= 16
#> |   |   |   |   |   |   [7] V5 <= 3 *
#> |   |   |   |   |   |   [8] V5 > 3 *
#> |   |   |   |   |   [9] V5 > 16 *
#> |   |   |   |   [10] V5 > 171 *
#> |   |   |   [11] V2 > 79 *
#> |   |   [12] V6 > 0
#> |   |   |   [13] V5 <= 126
#> |   |   |   |   [14] V3 <= 4
#> |   |   |   |   |   [15] V2 <= 84
#> |   |   |   |   |   |   [16] V5 <= 2 *
#> |   |   |   |   |   |   [17] V5 > 2 *
#> |   |   |   |   |   [18] V2 > 84 *
#> |   |   |   |   [19] V3 > 4
#> |   |   |   |   |   [20] V5 <= 11 *
#> |   |   |   |   |   [21] V5 > 11
#> |   |   |   |   |   |   [22] V3 <= 8 *
#> |   |   |   |   |   |   [23] V3 > 8 *
#> |   |   |   [24] V5 > 126
#> |   |   |   |   [25] V7 <= 134 *
#> |   |   |   |   [26] V7 > 134
#> |   |   |   |   |   [27] V2 <= 58 *
#> |   |   |   |   |   [28] V2 > 58 *
#> |   [29] V4 > 0
#> |   |   [30] V7 <= 110
#> |   |   |   [31] V3 <= 4 *
#> |   |   |   [32] V3 > 4
#> |   |   |   |   [33] V7 <= 105 *
#> |   |   |   |   [34] V7 > 105 *
#> |   |   [35] V7 > 110
#> |   |   |   [36] V2 <= 66
#> |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   [38] V2 <= 62
#> |   |   |   |   |   |   [39] V5 <= 9
#> |   |   |   |   |   |   |   [40] V3 <= 7 *
#> |   |   |   |   |   |   |   [41] V3 > 7 *
#> |   |   |   |   |   |   [42] V5 > 9 *
#> |   |   |   |   |   [43] V2 > 62 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V2 <= 47 *
#> |   |   |   |   |   [46] V2 > 47
#> |   |   |   |   |   |   [47] V7 <= 133 *
#> |   |   |   |   |   |   [48] V7 > 133
#> |   |   |   |   |   |   |   [49] V7 <= 150 *
#> |   |   |   |   |   |   |   [50] V7 > 150 *
#> |   |   |   [51] V2 > 66
#> |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   [53] V5 <= 3 *
#> |   |   |   |   |   [54] V5 > 3 *
#> |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   [56] V2 <= 82
#> |   |   |   |   |   |   [57] V3 <= 3 *
#> |   |   |   |   |   |   [58] V3 > 3
#> |   |   |   |   |   |   |   [59] V7 <= 146
#> |   |   |   |   |   |   |   |   [60] V2 <= 76 *
#> |   |   |   |   |   |   |   |   [61] V2 > 76 *
#> |   |   |   |   |   |   |   [62] V7 > 146 *
#> |   |   |   |   |   [63] V2 > 82 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 10 *
#> |   |   |   |   |   [8] V5 > 10 *
#> |   |   |   [9] V2 > 62
#> |   |   |   |   [10] V5 <= 2 *
#> |   |   |   |   [11] V5 > 2
#> |   |   |   |   |   [12] V2 <= 68 *
#> |   |   |   |   |   [13] V2 > 68
#> |   |   |   |   |   |   [14] V3 <= 14
#> |   |   |   |   |   |   |   [15] V7 <= 101 *
#> |   |   |   |   |   |   |   [16] V7 > 101
#> |   |   |   |   |   |   |   |   [17] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [18] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [19] V3 > 5 *
#> |   |   |   |   |   |   |   |   [20] V5 > 8
#> |   |   |   |   |   |   |   |   |   [21] V5 <= 80 *
#> |   |   |   |   |   |   |   |   |   [22] V5 > 80 *
#> |   |   |   |   |   |   [23] V3 > 14 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V6 <= 0
#> |   |   |   |   [26] V2 <= 63
#> |   |   |   |   |   [27] V7 <= 133 *
#> |   |   |   |   |   [28] V7 > 133
#> |   |   |   |   |   |   [29] V5 <= 2 *
#> |   |   |   |   |   |   [30] V5 > 2 *
#> |   |   |   |   [31] V2 > 63
#> |   |   |   |   |   [32] V3 <= 4 *
#> |   |   |   |   |   [33] V3 > 4
#> |   |   |   |   |   |   [34] V7 <= 120 *
#> |   |   |   |   |   |   [35] V7 > 120
#> |   |   |   |   |   |   |   [36] V2 <= 72 *
#> |   |   |   |   |   |   |   [37] V2 > 72 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V3 <= 18
#> |   |   |   |   |   [40] V2 <= 67
#> |   |   |   |   |   |   [41] V7 <= 169
#> |   |   |   |   |   |   |   [42] V7 <= 145
#> |   |   |   |   |   |   |   |   [43] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   [45] V7 <= 118 *
#> |   |   |   |   |   |   |   |   |   |   [46] V7 > 118 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 6 *
#> |   |   |   |   |   |   |   |   [48] V3 > 8 *
#> |   |   |   |   |   |   |   [49] V7 > 145 *
#> |   |   |   |   |   |   [50] V7 > 169 *
#> |   |   |   |   |   [51] V2 > 67
#> |   |   |   |   |   |   [52] V2 <= 81
#> |   |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   |   [54] V5 > 0
#> |   |   |   |   |   |   |   |   [55] V7 <= 153
#> |   |   |   |   |   |   |   |   |   [56] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   [57] V3 > 11 *
#> |   |   |   |   |   |   |   |   [58] V7 > 153 *
#> |   |   |   |   |   |   [59] V2 > 81 *
#> |   |   |   |   [60] V3 > 18 *
#> |   [61] V5 > 171
#> |   |   [62] V6 <= 0 *
#> |   |   [63] V6 > 0
#> |   |   |   [64] V2 <= 57 *
#> |   |   |   [65] V2 > 57
#> |   |   |   |   [66] V2 <= 71 *
#> |   |   |   |   [67] V2 > 71 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1
#> |   |   |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   |   |   [10] V3 <= 13 *
#> |   |   |   |   |   |   |   [11] V3 > 13 *
#> |   |   |   |   [12] V2 > 62
#> |   |   |   |   |   [13] V4 <= 0 *
#> |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   [15] V3 <= 5 *
#> |   |   |   |   |   |   [16] V3 > 5
#> |   |   |   |   |   |   |   [17] V5 <= 2 *
#> |   |   |   |   |   |   |   [18] V5 > 2
#> |   |   |   |   |   |   |   |   [19] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [20] V3 > 13 *
#> |   |   |   [21] V5 > 14
#> |   |   |   |   [22] V5 <= 145 *
#> |   |   |   |   [23] V5 > 145 *
#> |   |   [24] V6 > 0
#> |   |   |   [25] V2 <= 72
#> |   |   |   |   [26] V2 <= 47 *
#> |   |   |   |   [27] V2 > 47
#> |   |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   |   [29] V5 <= 18 *
#> |   |   |   |   |   |   [30] V5 > 18 *
#> |   |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   |   [32] V2 <= 57 *
#> |   |   |   |   |   |   [33] V2 > 57
#> |   |   |   |   |   |   |   [34] V5 <= 1
#> |   |   |   |   |   |   |   |   [35] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [36] V7 > 135 *
#> |   |   |   |   |   |   |   [37] V5 > 1
#> |   |   |   |   |   |   |   |   [38] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [39] V5 > 9 *
#> |   |   |   [40] V2 > 72
#> |   |   |   |   [41] V7 <= 116
#> |   |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   |   [43] V5 <= 6 *
#> |   |   |   |   |   |   [44] V5 > 6 *
#> |   |   |   |   |   [45] V4 > 0 *
#> |   |   |   |   [46] V7 > 116
#> |   |   |   |   |   [47] V5 <= 1
#> |   |   |   |   |   |   [48] V2 <= 81 *
#> |   |   |   |   |   |   [49] V2 > 81 *
#> |   |   |   |   |   [50] V5 > 1
#> |   |   |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   |   |   [52] V3 <= 5 *
#> |   |   |   |   |   |   |   [53] V3 > 5 *
#> |   |   |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   |   |   [55] V7 <= 129 *
#> |   |   |   |   |   |   |   [56] V7 > 129 *
#> |   [57] V5 > 170
#> |   |   [58] V7 <= 185 *
#> |   |   [59] V7 > 185 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 125
#> |   |   |   [4] V2 <= 61
#> |   |   |   |   [5] V3 <= 6 *
#> |   |   |   |   [6] V3 > 6 *
#> |   |   |   [7] V2 > 61
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   [10] V7 > 120
#> |   |   |   |   |   |   [11] V2 <= 71 *
#> |   |   |   |   |   |   [12] V2 > 71 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V3 <= 5
#> |   |   |   |   |   |   [15] V5 <= 2 *
#> |   |   |   |   |   |   [16] V5 > 2
#> |   |   |   |   |   |   |   [17] V3 <= 3 *
#> |   |   |   |   |   |   |   [18] V3 > 3 *
#> |   |   |   |   |   [19] V3 > 5
#> |   |   |   |   |   |   [20] V2 <= 74 *
#> |   |   |   |   |   |   [21] V2 > 74
#> |   |   |   |   |   |   |   [22] V3 <= 11 *
#> |   |   |   |   |   |   |   [23] V3 > 11 *
#> |   |   [24] V5 > 125
#> |   |   |   [25] V5 <= 172 *
#> |   |   |   [26] V5 > 172
#> |   |   |   |   [27] V3 <= 1 *
#> |   |   |   |   [28] V3 > 1 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 71
#> |   |   |   [31] V6 <= 0
#> |   |   |   |   [32] V2 <= 63
#> |   |   |   |   |   [33] V5 <= 8
#> |   |   |   |   |   |   [34] V7 <= 125 *
#> |   |   |   |   |   |   [35] V7 > 125
#> |   |   |   |   |   |   |   [36] V3 <= 5 *
#> |   |   |   |   |   |   |   [37] V3 > 5 *
#> |   |   |   |   |   [38] V5 > 8 *
#> |   |   |   |   [39] V2 > 63 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V5 <= 7
#> |   |   |   |   |   [42] V3 <= 8
#> |   |   |   |   |   |   [43] V5 <= 2
#> |   |   |   |   |   |   |   [44] V2 <= 60 *
#> |   |   |   |   |   |   |   [45] V2 > 60 *
#> |   |   |   |   |   |   [46] V5 > 2 *
#> |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   |   [48] V5 > 7
#> |   |   |   |   |   [49] V7 <= 150 *
#> |   |   |   |   |   [50] V7 > 150 *
#> |   |   [51] V2 > 71
#> |   |   |   [52] V7 <= 126
#> |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   [54] V5 > 0 *
#> |   |   |   [55] V7 > 126
#> |   |   |   |   [56] V3 <= 19
#> |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   [59] V3 <= 8 *
#> |   |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   [61] V3 > 19 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V2 <= 47
#> |   |   |   [4] V5 <= 5 *
#> |   |   |   [5] V5 > 5 *
#> |   |   [6] V2 > 47
#> |   |   |   [7] V5 <= 169
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V2 <= 62
#> |   |   |   |   |   |   [10] V3 <= 3 *
#> |   |   |   |   |   |   [11] V3 > 3 *
#> |   |   |   |   |   [12] V2 > 62 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V3 <= 17
#> |   |   |   |   |   |   [15] V5 <= 6
#> |   |   |   |   |   |   |   [16] V5 <= 0
#> |   |   |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [18] V3 > 4 *
#> |   |   |   |   |   |   |   [19] V5 > 0
#> |   |   |   |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [21] V5 > 2 *
#> |   |   |   |   |   |   [22] V5 > 6
#> |   |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   |   [25] V3 > 17 *
#> |   |   |   [26] V5 > 169
#> |   |   |   |   [27] V7 <= 130 *
#> |   |   |   |   [28] V7 > 130 *
#> |   [29] V2 > 67
#> |   |   [30] V4 <= 0
#> |   |   |   [31] V2 <= 90
#> |   |   |   |   [32] V7 <= 145
#> |   |   |   |   |   [33] V2 <= 81
#> |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   [36] V2 <= 78
#> |   |   |   |   |   |   |   |   [37] V5 <= 18 *
#> |   |   |   |   |   |   |   |   [38] V5 > 18 *
#> |   |   |   |   |   |   |   [39] V2 > 78 *
#> |   |   |   |   |   [40] V2 > 81
#> |   |   |   |   |   |   [41] V5 <= 165 *
#> |   |   |   |   |   |   [42] V5 > 165 *
#> |   |   |   |   [43] V7 > 145
#> |   |   |   |   |   [44] V2 <= 84
#> |   |   |   |   |   |   [45] V5 <= 150 *
#> |   |   |   |   |   |   [46] V5 > 150
#> |   |   |   |   |   |   |   [47] V2 <= 73 *
#> |   |   |   |   |   |   |   [48] V2 > 73 *
#> |   |   |   |   |   [49] V2 > 84 *
#> |   |   |   [50] V2 > 90 *
#> |   |   [51] V4 > 0
#> |   |   |   [52] V2 <= 85
#> |   |   |   |   [53] V2 <= 70 *
#> |   |   |   |   [54] V2 > 70
#> |   |   |   |   |   [55] V5 <= 1
#> |   |   |   |   |   |   [56] V7 <= 123 *
#> |   |   |   |   |   |   [57] V7 > 123
#> |   |   |   |   |   |   |   [58] V3 <= 10 *
#> |   |   |   |   |   |   |   [59] V3 > 10 *
#> |   |   |   |   |   [60] V5 > 1
#> |   |   |   |   |   |   [61] V5 <= 2 *
#> |   |   |   |   |   |   [62] V5 > 2
#> |   |   |   |   |   |   |   [63] V5 <= 5 *
#> |   |   |   |   |   |   |   [64] V5 > 5
#> |   |   |   |   |   |   |   |   [65] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [66] V6 > 0 *
#> |   |   |   [67] V2 > 85 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 7
#> |   |   |   |   |   [6] V7 <= 140 *
#> |   |   |   |   |   [7] V7 > 140 *
#> |   |   |   |   [8] V5 > 7
#> |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   [10] V7 > 120 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   [14] V2 <= 58 *
#> |   |   |   |   |   [15] V2 > 58
#> |   |   |   |   |   |   [16] V5 <= 65
#> |   |   |   |   |   |   |   [17] V2 <= 82
#> |   |   |   |   |   |   |   |   [18] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [19] V5 > 8 *
#> |   |   |   |   |   |   |   [20] V2 > 82 *
#> |   |   |   |   |   |   [21] V5 > 65 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V7 <= 159
#> |   |   |   |   |   [25] V7 <= 127
#> |   |   |   |   |   |   [26] V2 <= 57 *
#> |   |   |   |   |   |   [27] V2 > 57 *
#> |   |   |   |   |   [28] V7 > 127
#> |   |   |   |   |   |   [29] V2 <= 65 *
#> |   |   |   |   |   |   [30] V2 > 65 *
#> |   |   |   |   [31] V7 > 159
#> |   |   |   |   |   [32] V2 <= 71 *
#> |   |   |   |   |   [33] V2 > 71 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V5 <= 1
#> |   |   |   |   |   [36] V3 <= 2 *
#> |   |   |   |   |   [37] V3 > 2
#> |   |   |   |   |   |   [38] V3 <= 10
#> |   |   |   |   |   |   |   [39] V5 <= 0
#> |   |   |   |   |   |   |   |   [40] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [41] V7 > 120
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 140 *
#> |   |   |   |   |   |   |   [44] V5 > 0 *
#> |   |   |   |   |   |   [45] V3 > 10 *
#> |   |   |   |   [46] V5 > 1
#> |   |   |   |   |   [47] V5 <= 2 *
#> |   |   |   |   |   [48] V5 > 2
#> |   |   |   |   |   |   [49] V2 <= 72
#> |   |   |   |   |   |   |   [50] V2 <= 60 *
#> |   |   |   |   |   |   |   [51] V2 > 60
#> |   |   |   |   |   |   |   |   [52] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [53] V5 > 9 *
#> |   |   |   |   |   |   [54] V2 > 72
#> |   |   |   |   |   |   |   [55] V2 <= 81 *
#> |   |   |   |   |   |   |   [56] V2 > 81 *
#> |   [57] V5 > 170 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V5 <= 8
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V7 <= 149
#> |   |   |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   |   |   [10] V5 > 2 *
#> |   |   |   |   |   |   [11] V7 > 149 *
#> |   |   |   |   [12] V5 > 8 *
#> |   |   |   [13] V5 > 115 *
#> |   |   [14] V6 > 0
#> |   |   |   [15] V2 <= 47
#> |   |   |   |   [16] V7 <= 140 *
#> |   |   |   |   [17] V7 > 140 *
#> |   |   |   [18] V2 > 47
#> |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   [20] V5 <= 73 *
#> |   |   |   |   |   [21] V5 > 73 *
#> |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   [23] V7 <= 152
#> |   |   |   |   |   |   [24] V3 <= 4 *
#> |   |   |   |   |   |   [25] V3 > 4
#> |   |   |   |   |   |   |   [26] V5 <= 1 *
#> |   |   |   |   |   |   |   [27] V5 > 1 *
#> |   |   |   |   |   [28] V7 > 152 *
#> |   [29] V2 > 66
#> |   |   [30] V5 <= 165
#> |   |   |   [31] V5 <= 14
#> |   |   |   |   [32] V7 <= 97 *
#> |   |   |   |   [33] V7 > 97
#> |   |   |   |   |   [34] V3 <= 1 *
#> |   |   |   |   |   [35] V3 > 1
#> |   |   |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   |   [38] V6 > 0 *
#> |   |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   |   [40] V2 <= 86
#> |   |   |   |   |   |   |   |   [41] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 126 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 126
#> |   |   |   |   |   |   |   |   |   |   [44] V5 <= 1
#> |   |   |   |   |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [47] V5 > 1 *
#> |   |   |   |   |   |   |   |   [48] V5 > 3
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 14
#> |   |   |   |   |   |   |   |   |   |   [50] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [51] V7 > 130 *
#> |   |   |   |   |   |   |   |   |   [52] V3 > 14 *
#> |   |   |   |   |   |   |   [53] V2 > 86 *
#> |   |   |   [54] V5 > 14
#> |   |   |   |   [55] V3 <= 14
#> |   |   |   |   |   [56] V2 <= 80 *
#> |   |   |   |   |   [57] V2 > 80 *
#> |   |   |   |   [58] V3 > 14 *
#> |   |   [59] V5 > 165 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V2 <= 72
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V2 <= 59
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   |   [12] V2 > 59
#> |   |   |   |   |   |   [13] V5 <= 13 *
#> |   |   |   |   |   |   [14] V5 > 13 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V7 <= 162
#> |   |   |   |   |   |   |   |   [19] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [20] V3 > 7 *
#> |   |   |   |   |   |   |   [21] V7 > 162 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V3 <= 13
#> |   |   |   |   |   |   |   |   [24] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [25] V2 > 46
#> |   |   |   |   |   |   |   |   |   [26] V2 <= 56 *
#> |   |   |   |   |   |   |   |   |   [27] V2 > 56 *
#> |   |   |   |   |   |   |   [28] V3 > 13 *
#> |   |   |   |   |   [29] V2 > 63
#> |   |   |   |   |   |   [30] V3 <= 13
#> |   |   |   |   |   |   |   [31] V5 <= 0 *
#> |   |   |   |   |   |   |   [32] V5 > 0
#> |   |   |   |   |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [34] V6 > 0 *
#> |   |   |   |   |   |   [35] V3 > 13
#> |   |   |   |   |   |   |   [36] V5 <= 10 *
#> |   |   |   |   |   |   |   [37] V5 > 10 *
#> |   |   |   [38] V2 > 72
#> |   |   |   |   [39] V4 <= 0
#> |   |   |   |   |   [40] V7 <= 140
#> |   |   |   |   |   |   [41] V5 <= 4 *
#> |   |   |   |   |   |   [42] V5 > 4
#> |   |   |   |   |   |   |   [43] V5 <= 24 *
#> |   |   |   |   |   |   |   [44] V5 > 24 *
#> |   |   |   |   |   [45] V7 > 140
#> |   |   |   |   |   |   [46] V7 <= 152 *
#> |   |   |   |   |   |   [47] V7 > 152 *
#> |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   [51] V7 <= 126 *
#> |   |   |   |   |   |   [52] V7 > 126
#> |   |   |   |   |   |   |   [53] V5 <= 0 *
#> |   |   |   |   |   |   |   [54] V5 > 0 *
#> |   [55] V5 > 171 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V3 <= 6 *
#> |   |   |   |   |   |   [8] V3 > 6 *
#> |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V5 <= 12
#> |   |   |   |   |   |   [12] V3 <= 3
#> |   |   |   |   |   |   |   [13] V2 <= 57 *
#> |   |   |   |   |   |   |   [14] V2 > 57 *
#> |   |   |   |   |   |   [15] V3 > 3
#> |   |   |   |   |   |   |   [16] V7 <= 110 *
#> |   |   |   |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   |   |   |   [18] V2 <= 70
#> |   |   |   |   |   |   |   |   |   [19] V3 <= 14
#> |   |   |   |   |   |   |   |   |   |   [20] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   |   [23] V2 <= 56 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [24] V2 > 56 *
#> |   |   |   |   |   |   |   |   |   |   [25] V5 > 3
#> |   |   |   |   |   |   |   |   |   |   |   [26] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   |   [27] V5 > 7 *
#> |   |   |   |   |   |   |   |   |   [28] V3 > 14 *
#> |   |   |   |   |   |   |   |   [29] V2 > 70 *
#> |   |   |   |   |   [30] V5 > 12 *
#> |   |   |   [31] V5 > 14 *
#> |   |   [32] V5 > 171
#> |   |   |   [33] V2 <= 68 *
#> |   |   |   [34] V2 > 68 *
#> |   [35] V2 > 72
#> |   |   [36] V7 <= 107
#> |   |   |   [37] V4 <= 0 *
#> |   |   |   [38] V4 > 0 *
#> |   |   [39] V7 > 107
#> |   |   |   [40] V5 <= 165
#> |   |   |   |   [41] V2 <= 86
#> |   |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   |   [43] V7 <= 145
#> |   |   |   |   |   |   |   [44] V5 <= 37 *
#> |   |   |   |   |   |   |   [45] V5 > 37 *
#> |   |   |   |   |   |   [46] V7 > 145 *
#> |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   [49] V3 > 3
#> |   |   |   |   |   |   |   [50] V7 <= 167
#> |   |   |   |   |   |   |   |   [51] V2 <= 79 *
#> |   |   |   |   |   |   |   |   [52] V2 > 79 *
#> |   |   |   |   |   |   |   [53] V7 > 167 *
#> |   |   |   |   [54] V2 > 86
#> |   |   |   |   |   [55] V4 <= 0 *
#> |   |   |   |   |   [56] V4 > 0 *
#> |   |   |   [57] V5 > 165 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 170 *
#> |   |   |   |   [6] V5 > 170 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V7 <= 151
#> |   |   |   |   |   [9] V2 <= 47 *
#> |   |   |   |   |   [10] V2 > 47 *
#> |   |   |   |   [11] V7 > 151 *
#> |   |   [12] V6 > 0
#> |   |   |   [13] V5 <= 73
#> |   |   |   |   [14] V4 <= 0 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V2 <= 47 *
#> |   |   |   |   |   [17] V2 > 47
#> |   |   |   |   |   |   [18] V3 <= 8 *
#> |   |   |   |   |   |   [19] V3 > 8 *
#> |   |   |   [20] V5 > 73
#> |   |   |   |   [21] V2 <= 56 *
#> |   |   |   |   [22] V2 > 56 *
#> |   [23] V2 > 62
#> |   |   [24] V7 <= 106
#> |   |   |   [25] V3 <= 3 *
#> |   |   |   [26] V3 > 3
#> |   |   |   |   [27] V2 <= 80 *
#> |   |   |   |   [28] V2 > 80 *
#> |   |   [29] V7 > 106
#> |   |   |   [30] V5 <= 171
#> |   |   |   |   [31] V4 <= 0
#> |   |   |   |   |   [32] V2 <= 69 *
#> |   |   |   |   |   [33] V2 > 69
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V5 <= 4 *
#> |   |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   [38] V7 <= 117 *
#> |   |   |   |   |   |   |   [39] V7 > 117
#> |   |   |   |   |   |   |   |   [40] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [41] V5 > 5 *
#> |   |   |   |   [42] V4 > 0
#> |   |   |   |   |   [43] V2 <= 89
#> |   |   |   |   |   |   [44] V5 <= 11
#> |   |   |   |   |   |   |   [45] V3 <= 9
#> |   |   |   |   |   |   |   |   [46] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [47] V7 <= 170
#> |   |   |   |   |   |   |   |   |   |   [48] V7 <= 146
#> |   |   |   |   |   |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [51] V7 > 146 *
#> |   |   |   |   |   |   |   |   |   [52] V7 > 170 *
#> |   |   |   |   |   |   |   |   [53] V3 > 7 *
#> |   |   |   |   |   |   |   [54] V3 > 9
#> |   |   |   |   |   |   |   |   [55] V7 <= 183
#> |   |   |   |   |   |   |   |   |   [56] V5 <= 9
#> |   |   |   |   |   |   |   |   |   |   [57] V3 <= 14
#> |   |   |   |   |   |   |   |   |   |   |   [58] V2 <= 76 *
#> |   |   |   |   |   |   |   |   |   |   |   [59] V2 > 76 *
#> |   |   |   |   |   |   |   |   |   |   [60] V3 > 14 *
#> |   |   |   |   |   |   |   |   |   [61] V5 > 9 *
#> |   |   |   |   |   |   |   |   [62] V7 > 183 *
#> |   |   |   |   |   |   [63] V5 > 11 *
#> |   |   |   |   |   [64] V2 > 89 *
#> |   |   |   [65] V5 > 171 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 6
#> |   |   |   |   |   |   [10] V7 <= 127 *
#> |   |   |   |   |   |   [11] V7 > 127 *
#> |   |   |   |   |   [12] V5 > 6 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V3 <= 16
#> |   |   |   |   |   |   [15] V5 <= 2
#> |   |   |   |   |   |   |   [16] V7 <= 130
#> |   |   |   |   |   |   |   |   [17] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [18] V2 > 59 *
#> |   |   |   |   |   |   |   [19] V7 > 130 *
#> |   |   |   |   |   |   [20] V5 > 2 *
#> |   |   |   |   |   [21] V3 > 16 *
#> |   |   [22] V5 > 170
#> |   |   |   [23] V3 <= 9 *
#> |   |   |   [24] V3 > 9 *
#> |   [25] V2 > 66
#> |   |   [26] V5 <= 171
#> |   |   |   [27] V4 <= 0
#> |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   [29] V2 <= 74 *
#> |   |   |   |   |   [30] V2 > 74
#> |   |   |   |   |   |   [31] V3 <= 2 *
#> |   |   |   |   |   |   [32] V3 > 2 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V7 <= 115 *
#> |   |   |   |   |   [35] V7 > 115
#> |   |   |   |   |   |   [36] V5 <= 8 *
#> |   |   |   |   |   |   [37] V5 > 8 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V3 <= 21
#> |   |   |   |   |   [40] V7 <= 106 *
#> |   |   |   |   |   [41] V7 > 106
#> |   |   |   |   |   |   [42] V2 <= 85
#> |   |   |   |   |   |   |   [43] V2 <= 68 *
#> |   |   |   |   |   |   |   [44] V2 > 68
#> |   |   |   |   |   |   |   |   [45] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 7
#> |   |   |   |   |   |   |   |   |   |   [47] V5 <= 2
#> |   |   |   |   |   |   |   |   |   |   |   [48] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [49] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [50] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   [51] V5 > 7 *
#> |   |   |   |   |   |   |   |   [52] V3 > 10
#> |   |   |   |   |   |   |   |   |   [53] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   [54] V3 > 13 *
#> |   |   |   |   |   |   [55] V2 > 85 *
#> |   |   |   |   [56] V3 > 21 *
#> |   |   [57] V5 > 171
#> |   |   |   [58] V3 <= 2 *
#> |   |   |   [59] V3 > 2 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V4 <= 0 *
#> |   |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   |   [10] V7 <= 120 *
#> |   |   |   |   |   |   |   [11] V7 > 120
#> |   |   |   |   |   |   |   |   [12] V2 <= 52 *
#> |   |   |   |   |   |   |   |   [13] V2 > 52 *
#> |   |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   |   [15] V2 <= 47 *
#> |   |   |   |   |   |   |   [16] V2 > 47 *
#> |   |   |   [17] V2 > 60
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V6 <= 0
#> |   |   |   |   |   |   [20] V2 <= 68 *
#> |   |   |   |   |   |   [21] V2 > 68 *
#> |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   [23] V5 <= 2 *
#> |   |   |   |   |   |   [24] V5 > 2
#> |   |   |   |   |   |   |   [25] V7 <= 138 *
#> |   |   |   |   |   |   |   [26] V7 > 138 *
#> |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V2 <= 70
#> |   |   |   |   |   |   |   [30] V3 <= 9 *
#> |   |   |   |   |   |   |   [31] V3 > 9 *
#> |   |   |   |   |   |   [32] V2 > 70 *
#> |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   [34] V7 <= 170
#> |   |   |   |   |   |   |   [35] V5 <= 11
#> |   |   |   |   |   |   |   |   [36] V2 <= 76
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 66 *
#> |   |   |   |   |   |   |   |   [39] V2 > 76 *
#> |   |   |   |   |   |   |   [40] V5 > 11 *
#> |   |   |   |   |   |   [41] V7 > 170 *
#> |   |   [42] V5 > 170
#> |   |   |   [43] V6 <= 0 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V7 <= 130 *
#> |   |   |   |   [46] V7 > 130 *
#> |   [47] V2 > 78
#> |   |   [48] V3 <= 6
#> |   |   |   [49] V5 <= 165
#> |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   [51] V3 <= 5
#> |   |   |   |   |   |   [52] V5 <= 8 *
#> |   |   |   |   |   |   [53] V5 > 8 *
#> |   |   |   |   |   [54] V3 > 5 *
#> |   |   |   |   [55] V4 > 0 *
#> |   |   |   [56] V5 > 165 *
#> |   |   [57] V3 > 6
#> |   |   |   [58] V5 <= 145
#> |   |   |   |   [59] V4 <= 0 *
#> |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   [61] V3 <= 12 *
#> |   |   |   |   |   [62] V3 > 12 *
#> |   |   |   [63] V5 > 145 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V3 <= 17
#> |   |   |   |   |   |   [10] V5 <= 6
#> |   |   |   |   |   |   |   [11] V7 <= 170
#> |   |   |   |   |   |   |   |   [12] V3 <= 6
#> |   |   |   |   |   |   |   |   |   [13] V2 <= 52 *
#> |   |   |   |   |   |   |   |   |   [14] V2 > 52
#> |   |   |   |   |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   |   |   |   |   [17] V3 > 6
#> |   |   |   |   |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [19] V3 > 7 *
#> |   |   |   |   |   |   |   [20] V7 > 170 *
#> |   |   |   |   |   |   [21] V5 > 6
#> |   |   |   |   |   |   |   [22] V7 <= 140 *
#> |   |   |   |   |   |   |   [23] V7 > 140
#> |   |   |   |   |   |   |   |   [24] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [25] V2 > 63 *
#> |   |   |   |   |   [26] V3 > 17 *
#> |   |   |   [27] V5 > 16 *
#> |   |   [28] V5 > 169 *
#> |   [29] V2 > 66
#> |   |   [30] V2 <= 86
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V5 <= 171
#> |   |   |   |   |   [33] V7 <= 114 *
#> |   |   |   |   |   [34] V7 > 114
#> |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   [36] V5 <= 6 *
#> |   |   |   |   |   |   |   [37] V5 > 6 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V7 <= 147 *
#> |   |   |   |   |   |   |   [40] V7 > 147 *
#> |   |   |   |   [41] V5 > 171 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V2 <= 75
#> |   |   |   |   |   [44] V7 <= 160
#> |   |   |   |   |   |   [45] V3 <= 10
#> |   |   |   |   |   |   |   [46] V7 <= 124 *
#> |   |   |   |   |   |   |   [47] V7 > 124
#> |   |   |   |   |   |   |   |   [48] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [49] V2 > 71 *
#> |   |   |   |   |   |   [50] V3 > 10 *
#> |   |   |   |   |   [51] V7 > 160 *
#> |   |   |   |   [52] V2 > 75
#> |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   [57] V2 > 86
#> |   |   |   [58] V5 <= 52
#> |   |   |   |   [59] V7 <= 130 *
#> |   |   |   |   [60] V7 > 130 *
#> |   |   |   [61] V5 > 52 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 11
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2 *
#> |   |   |   |   [8] V5 > 11
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V3 <= 1 *
#> |   |   |   |   [13] V3 > 1
#> |   |   |   |   |   [14] V7 <= 139
#> |   |   |   |   |   |   [15] V2 <= 63 *
#> |   |   |   |   |   |   [16] V2 > 63
#> |   |   |   |   |   |   |   [17] V2 <= 80 *
#> |   |   |   |   |   |   |   [18] V2 > 80 *
#> |   |   |   |   |   [19] V7 > 139
#> |   |   |   |   |   |   [20] V7 <= 149 *
#> |   |   |   |   |   |   [21] V7 > 149 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 63
#> |   |   |   |   [24] V3 <= 15
#> |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   [26] V2 <= 51 *
#> |   |   |   |   |   |   [27] V2 > 51
#> |   |   |   |   |   |   |   [28] V3 <= 7 *
#> |   |   |   |   |   |   |   [29] V3 > 7 *
#> |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   [31] V2 <= 59
#> |   |   |   |   |   |   |   [32] V2 <= 44 *
#> |   |   |   |   |   |   |   [33] V2 > 44 *
#> |   |   |   |   |   |   [34] V2 > 59 *
#> |   |   |   |   [35] V3 > 15 *
#> |   |   |   [36] V2 > 63
#> |   |   |   |   [37] V3 <= 4
#> |   |   |   |   |   [38] V7 <= 120 *
#> |   |   |   |   |   [39] V7 > 120
#> |   |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   |   [41] V6 > 0 *
#> |   |   |   |   [42] V3 > 4
#> |   |   |   |   |   [43] V2 <= 85
#> |   |   |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   |   |   [45] V2 <= 75
#> |   |   |   |   |   |   |   |   [46] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [47] V5 > 7 *
#> |   |   |   |   |   |   |   [48] V2 > 75 *
#> |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   [50] V3 <= 10
#> |   |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   |   |   [53] V3 > 10
#> |   |   |   |   |   |   |   |   [54] V3 <= 15
#> |   |   |   |   |   |   |   |   |   [55] V2 <= 75 *
#> |   |   |   |   |   |   |   |   |   [56] V2 > 75 *
#> |   |   |   |   |   |   |   |   [57] V3 > 15 *
#> |   |   |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 171
#> |   |   [60] V2 <= 71
#> |   |   |   [61] V6 <= 0 *
#> |   |   |   [62] V6 > 0
#> |   |   |   |   [63] V7 <= 130 *
#> |   |   |   |   [64] V7 > 130 *
#> |   |   [65] V2 > 71 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 170
#> |   |   |   |   |   [6] V2 <= 55 *
#> |   |   |   |   |   [7] V2 > 55 *
#> |   |   |   |   [8] V5 > 170 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 9
#> |   |   |   |   |   |   [12] V2 <= 62
#> |   |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   |   [15] V2 > 62 *
#> |   |   |   |   |   [16] V5 > 9 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V7 <= 110 *
#> |   |   |   |   |   [19] V7 > 110
#> |   |   |   |   |   |   [20] V5 <= 1
#> |   |   |   |   |   |   |   [21] V3 <= 6 *
#> |   |   |   |   |   |   |   [22] V3 > 6 *
#> |   |   |   |   |   |   [23] V5 > 1
#> |   |   |   |   |   |   |   [24] V2 <= 56 *
#> |   |   |   |   |   |   |   [25] V2 > 56 *
#> |   |   [26] V2 > 66
#> |   |   |   [27] V7 <= 150
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V5 <= 123
#> |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   |   |   |   [32] V5 > 123 *
#> |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V3 <= 9 *
#> |   |   |   |   |   |   [37] V3 > 9 *
#> |   |   |   [38] V7 > 150
#> |   |   |   |   [39] V5 <= 171
#> |   |   |   |   |   [40] V5 <= 5
#> |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   [42] V6 > 0 *
#> |   |   |   |   |   [43] V5 > 5 *
#> |   |   |   |   [44] V5 > 171 *
#> |   [45] V2 > 78
#> |   |   [46] V4 <= 0
#> |   |   |   [47] V7 <= 130
#> |   |   |   |   [48] V5 <= 74
#> |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   |   [51] V5 > 74 *
#> |   |   |   [52] V7 > 130
#> |   |   |   |   [53] V5 <= 165
#> |   |   |   |   |   [54] V5 <= 70 *
#> |   |   |   |   |   [55] V5 > 70 *
#> |   |   |   |   [56] V5 > 165 *
#> |   |   [57] V4 > 0
#> |   |   |   [58] V3 <= 6 *
#> |   |   |   [59] V3 > 6
#> |   |   |   |   [60] V2 <= 80 *
#> |   |   |   |   [61] V2 > 80 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 4
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2 *
#> |   |   |   |   [8] V3 > 4
#> |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 101
#> |   |   |   |   |   [13] V2 <= 58 *
#> |   |   |   |   |   [14] V2 > 58
#> |   |   |   |   |   |   [15] V7 <= 110
#> |   |   |   |   |   |   |   [16] V3 <= 6 *
#> |   |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   |   |   |   |   [18] V7 > 110
#> |   |   |   |   |   |   |   [19] V2 <= 81
#> |   |   |   |   |   |   |   |   [20] V5 <= 16 *
#> |   |   |   |   |   |   |   |   [21] V5 > 16 *
#> |   |   |   |   |   |   |   [22] V2 > 81 *
#> |   |   |   |   [23] V5 > 101 *
#> |   |   [24] V5 > 171
#> |   |   |   [25] V3 <= 10 *
#> |   |   |   [26] V3 > 10 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 70
#> |   |   |   [29] V6 <= 0
#> |   |   |   |   [30] V2 <= 60
#> |   |   |   |   |   [31] V7 <= 150
#> |   |   |   |   |   |   [32] V3 <= 5 *
#> |   |   |   |   |   |   [33] V3 > 5 *
#> |   |   |   |   |   [34] V7 > 150 *
#> |   |   |   |   [35] V2 > 60
#> |   |   |   |   |   [36] V3 <= 5 *
#> |   |   |   |   |   [37] V3 > 5 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V3 <= 17
#> |   |   |   |   |   [40] V2 <= 47 *
#> |   |   |   |   |   [41] V2 > 47
#> |   |   |   |   |   |   [42] V3 <= 4 *
#> |   |   |   |   |   |   [43] V3 > 4
#> |   |   |   |   |   |   |   [44] V7 <= 140
#> |   |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   |   [47] V7 > 140 *
#> |   |   |   |   [48] V3 > 17 *
#> |   |   [49] V2 > 70
#> |   |   |   [50] V3 <= 7
#> |   |   |   |   [51] V2 <= 78 *
#> |   |   |   |   [52] V2 > 78 *
#> |   |   |   [53] V3 > 7
#> |   |   |   |   [54] V3 <= 10 *
#> |   |   |   |   [55] V3 > 10
#> |   |   |   |   |   [56] V7 <= 162
#> |   |   |   |   |   |   [57] V2 <= 75 *
#> |   |   |   |   |   |   [58] V2 > 75 *
#> |   |   |   |   |   [59] V7 > 162 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 76
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V5 <= 15 *
#> |   |   |   |   |   |   [9] V5 > 15 *
#> |   |   |   |   [10] V2 > 62
#> |   |   |   |   |   [11] V7 <= 114 *
#> |   |   |   |   |   [12] V7 > 114
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   [18] V3 <= 13
#> |   |   |   |   |   |   |   [19] V7 <= 122 *
#> |   |   |   |   |   |   |   [20] V7 > 122
#> |   |   |   |   |   |   |   |   [21] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [22] V3 > 7 *
#> |   |   |   |   |   |   [23] V3 > 13 *
#> |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   [25] V7 <= 170
#> |   |   |   |   |   |   |   [26] V5 <= 1
#> |   |   |   |   |   |   |   |   [27] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [28] V2 > 54 *
#> |   |   |   |   |   |   |   [29] V5 > 1 *
#> |   |   |   |   |   |   [30] V7 > 170 *
#> |   |   |   |   [31] V2 > 63
#> |   |   |   |   |   [32] V2 <= 65 *
#> |   |   |   |   |   [33] V2 > 65
#> |   |   |   |   |   |   [34] V5 <= 0 *
#> |   |   |   |   |   |   [35] V5 > 0
#> |   |   |   |   |   |   |   [36] V7 <= 134 *
#> |   |   |   |   |   |   |   [37] V7 > 134
#> |   |   |   |   |   |   |   |   [38] V7 <= 164
#> |   |   |   |   |   |   |   |   |   [39] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [40] V3 > 5 *
#> |   |   |   |   |   |   |   |   [41] V7 > 164 *
#> |   |   [42] V2 > 76
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   |   [47] V3 > 5 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V2 <= 84
#> |   |   |   |   |   [50] V7 <= 119 *
#> |   |   |   |   |   [51] V7 > 119
#> |   |   |   |   |   |   [52] V5 <= 2 *
#> |   |   |   |   |   |   [53] V5 > 2 *
#> |   |   |   |   [54] V2 > 84 *
#> |   [55] V5 > 170 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 73
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 171
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V7 <= 125 *
#> |   |   |   |   |   |   [9] V7 > 125 *
#> |   |   |   |   [10] V5 > 171 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 99
#> |   |   |   |   |   [13] V5 <= 4 *
#> |   |   |   |   |   [14] V5 > 4 *
#> |   |   |   |   [15] V5 > 99
#> |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   [17] V3 > 4 *
#> |   |   [18] V2 > 73
#> |   |   |   [19] V7 <= 107 *
#> |   |   |   [20] V7 > 107
#> |   |   |   |   [21] V7 <= 167
#> |   |   |   |   |   [22] V2 <= 79 *
#> |   |   |   |   |   [23] V2 > 79
#> |   |   |   |   |   |   [24] V7 <= 135 *
#> |   |   |   |   |   |   [25] V7 > 135 *
#> |   |   |   |   [26] V7 > 167 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 85
#> |   |   |   [29] V3 <= 11
#> |   |   |   |   [30] V7 <= 124
#> |   |   |   |   |   [31] V2 <= 71
#> |   |   |   |   |   |   [32] V2 <= 57 *
#> |   |   |   |   |   |   [33] V2 > 57 *
#> |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   |   [35] V7 > 124
#> |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   [37] V7 <= 149 *
#> |   |   |   |   |   |   [38] V7 > 149
#> |   |   |   |   |   |   |   [39] V5 <= 1 *
#> |   |   |   |   |   |   |   [40] V5 > 1 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V7 <= 167
#> |   |   |   |   |   |   |   [43] V3 <= 6
#> |   |   |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [45] V3 > 3 *
#> |   |   |   |   |   |   |   [46] V3 > 6 *
#> |   |   |   |   |   |   [47] V7 > 167 *
#> |   |   |   [48] V3 > 11
#> |   |   |   |   [49] V2 <= 71
#> |   |   |   |   |   [50] V6 <= 0
#> |   |   |   |   |   |   [51] V3 <= 16 *
#> |   |   |   |   |   |   [52] V3 > 16 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V3 <= 15 *
#> |   |   |   |   |   |   [55] V3 > 15 *
#> |   |   |   |   [56] V2 > 71
#> |   |   |   |   |   [57] V5 <= 3 *
#> |   |   |   |   |   [58] V5 > 3 *
#> |   |   [59] V2 > 85 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 115 *
#> |   |   |   [5] V7 > 115
#> |   |   |   |   [6] V5 <= 170
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   |   [9] V5 > 170
#> |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   [12] V3 <= 5 *
#> |   |   |   |   |   |   [13] V3 > 5 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V6 <= 0
#> |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   [17] V3 <= 14
#> |   |   |   |   |   |   [18] V2 <= 52 *
#> |   |   |   |   |   |   [19] V2 > 52
#> |   |   |   |   |   |   |   [20] V2 <= 62 *
#> |   |   |   |   |   |   |   [21] V2 > 62 *
#> |   |   |   |   |   [22] V3 > 14 *
#> |   |   |   |   [23] V2 > 63 *
#> |   |   |   [24] V6 > 0
#> |   |   |   |   [25] V5 <= 11
#> |   |   |   |   |   [26] V2 <= 46 *
#> |   |   |   |   |   [27] V2 > 46
#> |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   [29] V3 > 4
#> |   |   |   |   |   |   |   [30] V3 <= 7 *
#> |   |   |   |   |   |   |   [31] V3 > 7
#> |   |   |   |   |   |   |   |   [32] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [33] V2 > 61 *
#> |   |   |   |   [34] V5 > 11 *
#> |   [35] V2 > 67
#> |   |   [36] V5 <= 165
#> |   |   |   [37] V4 <= 0
#> |   |   |   |   [38] V7 <= 110 *
#> |   |   |   |   [39] V7 > 110
#> |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   [41] V7 <= 145 *
#> |   |   |   |   |   |   [42] V7 > 145 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V7 <= 159
#> |   |   |   |   |   |   |   [45] V2 <= 84 *
#> |   |   |   |   |   |   |   [46] V2 > 84 *
#> |   |   |   |   |   |   [47] V7 > 159 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   [50] V7 <= 130 *
#> |   |   |   |   |   [51] V7 > 130
#> |   |   |   |   |   |   [52] V5 <= 5 *
#> |   |   |   |   |   |   [53] V5 > 5 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V3 <= 2 *
#> |   |   |   |   |   [56] V3 > 2
#> |   |   |   |   |   |   [57] V3 <= 14
#> |   |   |   |   |   |   |   [58] V3 <= 5
#> |   |   |   |   |   |   |   |   [59] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [60] V2 > 78 *
#> |   |   |   |   |   |   |   [61] V3 > 5
#> |   |   |   |   |   |   |   |   [62] V2 <= 85
#> |   |   |   |   |   |   |   |   |   [63] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [64] V5 > 2 *
#> |   |   |   |   |   |   |   |   [65] V2 > 85 *
#> |   |   |   |   |   |   [66] V3 > 14 *
#> |   |   [67] V5 > 165
#> |   |   |   [68] V7 <= 175 *
#> |   |   |   [69] V7 > 175 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 64
#> |   |   [3] V2 <= 47
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V7 <= 140 *
#> |   |   |   |   [7] V7 > 140 *
#> |   |   [8] V2 > 47
#> |   |   |   [9] V5 <= 170
#> |   |   |   |   [10] V5 <= 16
#> |   |   |   |   |   [11] V7 <= 110 *
#> |   |   |   |   |   [12] V7 > 110
#> |   |   |   |   |   |   [13] V4 <= 0 *
#> |   |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   |   [15] V3 <= 15
#> |   |   |   |   |   |   |   |   [16] V3 <= 12
#> |   |   |   |   |   |   |   |   |   [17] V5 <= 2
#> |   |   |   |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [20] V5 > 2 *
#> |   |   |   |   |   |   |   |   [21] V3 > 12 *
#> |   |   |   |   |   |   |   [22] V3 > 15 *
#> |   |   |   |   [23] V5 > 16 *
#> |   |   |   [24] V5 > 170
#> |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   [26] V3 > 4 *
#> |   [27] V2 > 64
#> |   |   [28] V5 <= 171
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V7 <= 101 *
#> |   |   |   |   [31] V7 > 101
#> |   |   |   |   |   [32] V3 <= 2 *
#> |   |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V5 <= 7 *
#> |   |   |   |   |   |   |   [36] V5 > 7 *
#> |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   [38] V7 <= 142 *
#> |   |   |   |   |   |   |   [39] V7 > 142 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V7 <= 120 *
#> |   |   |   |   |   [43] V7 > 120
#> |   |   |   |   |   |   [44] V7 <= 125 *
#> |   |   |   |   |   |   [45] V7 > 125
#> |   |   |   |   |   |   |   [46] V7 <= 170
#> |   |   |   |   |   |   |   |   [47] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [48] V7 > 132 *
#> |   |   |   |   |   |   |   [49] V7 > 170 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   [52] V3 > 4
#> |   |   |   |   |   |   [53] V2 <= 81
#> |   |   |   |   |   |   |   [54] V3 <= 9 *
#> |   |   |   |   |   |   |   [55] V3 > 9
#> |   |   |   |   |   |   |   |   [56] V2 <= 68 *
#> |   |   |   |   |   |   |   |   [57] V2 > 68
#> |   |   |   |   |   |   |   |   |   [58] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [59] V5 > 1 *
#> |   |   |   |   |   |   [60] V2 > 81 *
#> |   |   [61] V5 > 171 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V2 <= 38 *
#> |   |   |   |   [6] V2 > 38
#> |   |   |   |   |   [7] V3 <= 6 *
#> |   |   |   |   |   [8] V3 > 6 *
#> |   |   |   [9] V2 > 55
#> |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   [11] V3 <= 6
#> |   |   |   |   |   |   [12] V5 <= 123 *
#> |   |   |   |   |   |   [13] V5 > 123 *
#> |   |   |   |   |   [14] V3 > 6 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   [17] V3 > 5
#> |   |   |   |   |   |   [18] V7 <= 160 *
#> |   |   |   |   |   |   [19] V7 > 160 *
#> |   |   [20] V6 > 0
#> |   |   |   [21] V2 <= 59
#> |   |   |   |   [22] V3 <= 11
#> |   |   |   |   |   [23] V7 <= 112 *
#> |   |   |   |   |   [24] V7 > 112
#> |   |   |   |   |   |   [25] V3 <= 4
#> |   |   |   |   |   |   |   [26] V4 <= 0 *
#> |   |   |   |   |   |   |   [27] V4 > 0 *
#> |   |   |   |   |   |   [28] V3 > 4 *
#> |   |   |   |   [29] V3 > 11 *
#> |   |   |   [30] V2 > 59
#> |   |   |   |   [31] V5 <= 99
#> |   |   |   |   |   [32] V4 <= 0 *
#> |   |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   |   [34] V7 <= 169
#> |   |   |   |   |   |   |   [35] V3 <= 4 *
#> |   |   |   |   |   |   |   [36] V3 > 4
#> |   |   |   |   |   |   |   |   [37] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [38] V2 > 66 *
#> |   |   |   |   |   |   [39] V7 > 169 *
#> |   |   |   |   [40] V5 > 99 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 165
#> |   |   |   [43] V7 <= 137
#> |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   [45] V5 <= 29
#> |   |   |   |   |   |   [46] V2 <= 85 *
#> |   |   |   |   |   |   [47] V2 > 85 *
#> |   |   |   |   |   [48] V5 > 29 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V7 <= 104 *
#> |   |   |   |   |   [51] V7 > 104 *
#> |   |   |   [52] V7 > 137
#> |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V4 <= 0 *
#> |   |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   |   [57] V2 <= 82 *
#> |   |   |   |   |   |   [58] V2 > 82 *
#> |   |   [59] V5 > 165 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 61
#> |   |   |   |   [5] V7 <= 136 *
#> |   |   |   |   [6] V7 > 136 *
#> |   |   |   [7] V2 > 61
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 100 *
#> |   |   |   |   |   [10] V7 > 100
#> |   |   |   |   |   |   [11] V7 <= 145 *
#> |   |   |   |   |   |   [12] V7 > 145 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 76
#> |   |   |   |   |   |   [15] V5 <= 7 *
#> |   |   |   |   |   |   [16] V5 > 7 *
#> |   |   |   |   |   [17] V2 > 76
#> |   |   |   |   |   |   [18] V7 <= 107 *
#> |   |   |   |   |   |   [19] V7 > 107
#> |   |   |   |   |   |   |   [20] V5 <= 8 *
#> |   |   |   |   |   |   |   [21] V5 > 8 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 70
#> |   |   |   |   [24] V2 <= 48
#> |   |   |   |   |   [25] V2 <= 40 *
#> |   |   |   |   |   [26] V2 > 40 *
#> |   |   |   |   [27] V2 > 48
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V7 <= 170
#> |   |   |   |   |   |   |   [30] V2 <= 68
#> |   |   |   |   |   |   |   |   [31] V7 <= 154 *
#> |   |   |   |   |   |   |   |   [32] V7 > 154 *
#> |   |   |   |   |   |   |   [33] V2 > 68 *
#> |   |   |   |   |   |   [34] V7 > 170 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V3 <= 4 *
#> |   |   |   |   |   |   [37] V3 > 4
#> |   |   |   |   |   |   |   [38] V2 <= 57 *
#> |   |   |   |   |   |   |   [39] V2 > 57
#> |   |   |   |   |   |   |   |   [40] V2 <= 64 *
#> |   |   |   |   |   |   |   |   [41] V2 > 64 *
#> |   |   |   [42] V2 > 70
#> |   |   |   |   [43] V7 <= 104 *
#> |   |   |   |   [44] V7 > 104
#> |   |   |   |   |   [45] V5 <= 4
#> |   |   |   |   |   |   [46] V5 <= 0
#> |   |   |   |   |   |   |   [47] V2 <= 81 *
#> |   |   |   |   |   |   |   [48] V2 > 81 *
#> |   |   |   |   |   |   [49] V5 > 0
#> |   |   |   |   |   |   |   [50] V7 <= 162
#> |   |   |   |   |   |   |   |   [51] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [52] V2 > 75 *
#> |   |   |   |   |   |   |   [53] V7 > 162 *
#> |   |   |   |   |   [54] V5 > 4
#> |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   |   |   [57] V7 <= 138 *
#> |   |   |   |   |   |   |   [58] V7 > 138 *
#> |   [59] V5 > 171
#> |   |   [60] V6 <= 0 *
#> |   |   [61] V6 > 0
#> |   |   |   [62] V7 <= 180
#> |   |   |   |   [63] V7 <= 134 *
#> |   |   |   |   [64] V7 > 134
#> |   |   |   |   |   [65] V2 <= 58 *
#> |   |   |   |   |   [66] V2 > 58 *
#> |   |   |   [67] V7 > 180 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V2 <= 47
#> |   |   |   [4] V5 <= 5 *
#> |   |   |   [5] V5 > 5 *
#> |   |   [6] V2 > 47
#> |   |   |   [7] V7 <= 110 *
#> |   |   |   [8] V7 > 110
#> |   |   |   |   [9] V3 <= 2 *
#> |   |   |   |   [10] V3 > 2
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   |   |   [13] V5 > 2 *
#> |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   [16] V3 > 4
#> |   |   |   |   |   |   |   [17] V7 <= 135 *
#> |   |   |   |   |   |   |   [18] V7 > 135 *
#> |   [19] V2 > 60
#> |   |   [20] V7 <= 104
#> |   |   |   [21] V5 <= 5
#> |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   [23] V3 > 3 *
#> |   |   |   [24] V5 > 5 *
#> |   |   [25] V7 > 104
#> |   |   |   [26] V5 <= 171
#> |   |   |   |   [27] V2 <= 78
#> |   |   |   |   |   [28] V5 <= 14
#> |   |   |   |   |   |   [29] V7 <= 114 *
#> |   |   |   |   |   |   [30] V7 > 114
#> |   |   |   |   |   |   |   [31] V4 <= 0
#> |   |   |   |   |   |   |   |   [32] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [33] V5 > 3 *
#> |   |   |   |   |   |   |   [34] V4 > 0
#> |   |   |   |   |   |   |   |   [35] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [37] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [38] V7 > 130 *
#> |   |   |   |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [40] V7 <= 167
#> |   |   |   |   |   |   |   |   |   |   |   [41] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   |   [42] V3 > 7 *
#> |   |   |   |   |   |   |   |   |   |   [43] V7 > 167 *
#> |   |   |   |   |   |   |   |   [44] V3 > 10
#> |   |   |   |   |   |   |   |   |   [45] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [46] V7 > 149
#> |   |   |   |   |   |   |   |   |   |   [47] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   |   [48] V3 > 13 *
#> |   |   |   |   |   [49] V5 > 14 *
#> |   |   |   |   [50] V2 > 78
#> |   |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   |   [52] V5 <= 2 *
#> |   |   |   |   |   |   [53] V5 > 2 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   [56] V5 > 0
#> |   |   |   |   |   |   |   [57] V7 <= 138 *
#> |   |   |   |   |   |   |   [58] V7 > 138
#> |   |   |   |   |   |   |   |   [59] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [60] V4 > 0 *
#> |   |   |   [61] V5 > 171 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 62
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V3 <= 17
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V2 <= 52 *
#> |   |   |   |   |   |   |   [10] V2 > 52 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V5 <= 2
#> |   |   |   |   |   |   |   |   [13] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [14] V5 > 0 *
#> |   |   |   |   |   |   |   [15] V5 > 2 *
#> |   |   |   |   |   [16] V3 > 17 *
#> |   |   |   [17] V5 > 13 *
#> |   |   [18] V2 > 62
#> |   |   |   [19] V5 <= 14
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V4 <= 0 *
#> |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   [23] V5 <= 9
#> |   |   |   |   |   |   |   [24] V7 <= 134 *
#> |   |   |   |   |   |   |   [25] V7 > 134
#> |   |   |   |   |   |   |   |   [26] V7 <= 162 *
#> |   |   |   |   |   |   |   |   [27] V7 > 162 *
#> |   |   |   |   |   |   [28] V5 > 9 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V2 <= 87
#> |   |   |   |   |   |   [31] V4 <= 0
#> |   |   |   |   |   |   |   [32] V5 <= 5
#> |   |   |   |   |   |   |   |   [33] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [34] V5 > 2 *
#> |   |   |   |   |   |   |   [35] V5 > 5 *
#> |   |   |   |   |   |   [36] V4 > 0
#> |   |   |   |   |   |   |   [37] V3 <= 19
#> |   |   |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [39] V3 > 4
#> |   |   |   |   |   |   |   |   |   [40] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [41] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [42] V5 <= 11
#> |   |   |   |   |   |   |   |   |   |   |   [43] V7 <= 148
#> |   |   |   |   |   |   |   |   |   |   |   |   [44] V2 <= 76 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [45] V2 > 76 *
#> |   |   |   |   |   |   |   |   |   |   |   [46] V7 > 148 *
#> |   |   |   |   |   |   |   |   |   |   [47] V5 > 11 *
#> |   |   |   |   |   |   |   [48] V3 > 19 *
#> |   |   |   |   |   [49] V2 > 87 *
#> |   |   |   [50] V5 > 14
#> |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   [52] V3 > 3
#> |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V2 <= 78 *
#> |   |   |   |   |   |   [56] V2 > 78 *
#> |   [57] V5 > 171
#> |   |   [58] V7 <= 180 *
#> |   |   [59] V7 > 180 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 61
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 61
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 74 *
#> |   |   |   |   |   [10] V2 > 74 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V2 <= 77
#> |   |   |   |   |   |   [13] V2 <= 71 *
#> |   |   |   |   |   |   [14] V2 > 71 *
#> |   |   |   |   |   [15] V2 > 77
#> |   |   |   |   |   |   [16] V7 <= 140
#> |   |   |   |   |   |   |   [17] V5 <= 4 *
#> |   |   |   |   |   |   |   [18] V5 > 4 *
#> |   |   |   |   |   |   [19] V7 > 140 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 66
#> |   |   |   |   [22] V2 <= 51
#> |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   [25] V2 > 51
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V3 <= 8 *
#> |   |   |   |   |   |   [28] V3 > 8 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V2 <= 57 *
#> |   |   |   |   |   |   [31] V2 > 57
#> |   |   |   |   |   |   |   [32] V3 <= 7 *
#> |   |   |   |   |   |   |   [33] V3 > 7
#> |   |   |   |   |   |   |   |   [34] V7 <= 153 *
#> |   |   |   |   |   |   |   |   [35] V7 > 153 *
#> |   |   |   [36] V2 > 66
#> |   |   |   |   [37] V7 <= 125
#> |   |   |   |   |   [38] V3 <= 11
#> |   |   |   |   |   |   [39] V7 <= 110 *
#> |   |   |   |   |   |   [40] V7 > 110 *
#> |   |   |   |   |   [41] V3 > 11 *
#> |   |   |   |   [42] V7 > 125
#> |   |   |   |   |   [43] V2 <= 85
#> |   |   |   |   |   |   [44] V7 <= 164
#> |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   |   [47] V2 <= 76 *
#> |   |   |   |   |   |   |   |   [48] V2 > 76 *
#> |   |   |   |   |   |   [49] V7 > 164
#> |   |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   |   [51] V6 > 0 *
#> |   |   |   |   |   [52] V2 > 85 *
#> |   [53] V5 > 170
#> |   |   [54] V2 <= 58
#> |   |   |   [55] V6 <= 0 *
#> |   |   |   [56] V6 > 0
#> |   |   |   |   [57] V3 <= 7 *
#> |   |   |   |   [58] V3 > 7 *
#> |   |   [59] V2 > 58 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V7 <= 134 *
#> |   |   |   |   |   [7] V7 > 134 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V5 <= 10
#> |   |   |   |   |   |   [10] V2 <= 70
#> |   |   |   |   |   |   |   [11] V3 <= 5
#> |   |   |   |   |   |   |   |   [12] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [13] V5 > 1 *
#> |   |   |   |   |   |   |   [14] V3 > 5
#> |   |   |   |   |   |   |   |   [15] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [16] V3 > 10 *
#> |   |   |   |   |   |   [17] V2 > 70
#> |   |   |   |   |   |   |   [18] V2 <= 73 *
#> |   |   |   |   |   |   |   [19] V2 > 73 *
#> |   |   |   |   |   [20] V5 > 10 *
#> |   |   |   [21] V6 > 0
#> |   |   |   |   [22] V4 <= 0
#> |   |   |   |   |   [23] V2 <= 56 *
#> |   |   |   |   |   [24] V2 > 56
#> |   |   |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   |   |   [26] V3 > 2
#> |   |   |   |   |   |   |   [27] V2 <= 70 *
#> |   |   |   |   |   |   |   [28] V2 > 70
#> |   |   |   |   |   |   |   |   [29] V2 <= 82 *
#> |   |   |   |   |   |   |   |   [30] V2 > 82 *
#> |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   [32] V2 <= 82
#> |   |   |   |   |   |   [33] V5 <= 1
#> |   |   |   |   |   |   |   [34] V7 <= 132
#> |   |   |   |   |   |   |   |   [35] V7 <= 112 *
#> |   |   |   |   |   |   |   |   [36] V7 > 112
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 66 *
#> |   |   |   |   |   |   |   [39] V7 > 132
#> |   |   |   |   |   |   |   |   [40] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [41] V3 > 5 *
#> |   |   |   |   |   |   [42] V5 > 1
#> |   |   |   |   |   |   |   [43] V7 <= 185
#> |   |   |   |   |   |   |   |   [44] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [45] V7 > 120
#> |   |   |   |   |   |   |   |   |   [46] V2 <= 67
#> |   |   |   |   |   |   |   |   |   |   [47] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [48] V5 > 8 *
#> |   |   |   |   |   |   |   |   |   [49] V2 > 67 *
#> |   |   |   |   |   |   |   [50] V7 > 185 *
#> |   |   |   |   |   [51] V2 > 82 *
#> |   |   [52] V5 > 16
#> |   |   |   [53] V5 <= 128
#> |   |   |   |   [54] V7 <= 115 *
#> |   |   |   |   [55] V7 > 115
#> |   |   |   |   |   [56] V5 <= 45 *
#> |   |   |   |   |   [57] V5 > 45 *
#> |   |   |   [58] V5 > 128 *
#> |   [59] V5 > 171
#> |   |   [60] V2 <= 70 *
#> |   |   [61] V2 > 70
#> |   |   |   [62] V7 <= 185 *
#> |   |   |   [63] V7 > 185 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V7 <= 139 *
#> |   |   |   |   |   [7] V7 > 139 *
#> |   |   |   |   [8] V2 > 62 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V7 <= 110 *
#> |   |   |   |   [11] V7 > 110
#> |   |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   [14] V7 <= 140 *
#> |   |   |   |   |   |   |   [15] V7 > 140 *
#> |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   |   [18] V3 <= 16
#> |   |   |   |   |   |   |   [19] V2 <= 63
#> |   |   |   |   |   |   |   |   [20] V3 <= 9
#> |   |   |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   |   |   |   [23] V3 > 9 *
#> |   |   |   |   |   |   |   [24] V2 > 63
#> |   |   |   |   |   |   |   |   [25] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [26] V2 > 65 *
#> |   |   |   |   |   |   [27] V3 > 16 *
#> |   |   [28] V2 > 66
#> |   |   |   [29] V7 <= 98 *
#> |   |   |   [30] V7 > 98
#> |   |   |   |   [31] V3 <= 1 *
#> |   |   |   |   [32] V3 > 1
#> |   |   |   |   |   [33] V4 <= 0
#> |   |   |   |   |   |   [34] V3 <= 11
#> |   |   |   |   |   |   |   [35] V3 <= 6
#> |   |   |   |   |   |   |   |   [36] V7 <= 117 *
#> |   |   |   |   |   |   |   |   [37] V7 > 117
#> |   |   |   |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [39] V3 > 4 *
#> |   |   |   |   |   |   |   [40] V3 > 6 *
#> |   |   |   |   |   |   [41] V3 > 11 *
#> |   |   |   |   |   [42] V4 > 0
#> |   |   |   |   |   |   [43] V2 <= 87
#> |   |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   |   [45] V3 > 3
#> |   |   |   |   |   |   |   |   [46] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [47] V2 > 69
#> |   |   |   |   |   |   |   |   |   [48] V2 <= 78
#> |   |   |   |   |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   [51] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   |   [52] V3 > 8
#> |   |   |   |   |   |   |   |   |   |   |   |   [53] V2 <= 72 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [54] V2 > 72 *
#> |   |   |   |   |   |   |   |   |   [55] V2 > 78
#> |   |   |   |   |   |   |   |   |   |   [56] V2 <= 80 *
#> |   |   |   |   |   |   |   |   |   |   [57] V2 > 80 *
#> |   |   |   |   |   |   [58] V2 > 87 *
#> |   [59] V5 > 170 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 169
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V5 > 169 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 101 *
#> |   |   |   |   [11] V5 > 101
#> |   |   |   |   |   [12] V2 <= 52 *
#> |   |   |   |   |   [13] V2 > 52 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V3 <= 16
#> |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   [17] V3 <= 11
#> |   |   |   |   |   |   [18] V5 <= 4
#> |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   [20] V3 > 4 *
#> |   |   |   |   |   |   [21] V5 > 4 *
#> |   |   |   |   |   [22] V3 > 11 *
#> |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   [24] V3 <= 12
#> |   |   |   |   |   |   [25] V2 <= 47 *
#> |   |   |   |   |   |   [26] V2 > 47
#> |   |   |   |   |   |   |   [27] V5 <= 1
#> |   |   |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [29] V3 > 4 *
#> |   |   |   |   |   |   |   [30] V5 > 1 *
#> |   |   |   |   |   [31] V3 > 12 *
#> |   |   |   [32] V3 > 16 *
#> |   [33] V2 > 66
#> |   |   [34] V5 <= 171
#> |   |   |   [35] V4 <= 0
#> |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   [37] V7 <= 131 *
#> |   |   |   |   |   [38] V7 > 131 *
#> |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   [40] V7 <= 140
#> |   |   |   |   |   |   [41] V5 <= 16
#> |   |   |   |   |   |   |   [42] V7 <= 101 *
#> |   |   |   |   |   |   |   [43] V7 > 101 *
#> |   |   |   |   |   |   [44] V5 > 16 *
#> |   |   |   |   |   [45] V7 > 140
#> |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   [47] V3 > 4 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V2 <= 87
#> |   |   |   |   |   [50] V7 <= 164
#> |   |   |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   |   |   [52] V7 <= 149
#> |   |   |   |   |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [54] V3 > 6 *
#> |   |   |   |   |   |   |   [55] V7 > 149 *
#> |   |   |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   |   |   |   [58] V5 > 0
#> |   |   |   |   |   |   |   |   [59] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [60] V2 > 73 *
#> |   |   |   |   |   [61] V7 > 164
#> |   |   |   |   |   |   [62] V3 <= 13 *
#> |   |   |   |   |   |   [63] V3 > 13 *
#> |   |   |   |   [64] V2 > 87 *
#> |   |   [65] V5 > 171
#> |   |   |   [66] V6 <= 0 *
#> |   |   |   [67] V6 > 0 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V3 <= 3
#> |   |   |   |   |   |   [7] V2 <= 57 *
#> |   |   |   |   |   |   [8] V2 > 57 *
#> |   |   |   |   |   [9] V3 > 3 *
#> |   |   |   |   [10] V3 > 6 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 70
#> |   |   |   |   |   [13] V5 <= 12
#> |   |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   |   [15] V5 <= 8
#> |   |   |   |   |   |   |   |   [16] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [17] V2 <= 63
#> |   |   |   |   |   |   |   |   |   |   [18] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [19] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   [20] V2 > 63 *
#> |   |   |   |   |   |   |   |   [21] V3 > 7 *
#> |   |   |   |   |   |   |   [22] V5 > 8 *
#> |   |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   |   [24] V3 <= 6
#> |   |   |   |   |   |   |   |   [25] V3 <= 4
#> |   |   |   |   |   |   |   |   |   [26] V3 <= 2 *
#> |   |   |   |   |   |   |   |   |   [27] V3 > 2 *
#> |   |   |   |   |   |   |   |   [28] V3 > 4 *
#> |   |   |   |   |   |   |   [29] V3 > 6
#> |   |   |   |   |   |   |   |   [30] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [31] V3 > 7
#> |   |   |   |   |   |   |   |   |   [32] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [33] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [34] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 7
#> |   |   |   |   |   |   |   |   |   |   |   [36] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   |   |   [37] V7 > 133 *
#> |   |   |   |   |   [38] V5 > 12 *
#> |   |   |   |   [39] V2 > 70 *
#> |   |   [40] V2 > 71
#> |   |   |   [41] V3 <= 6
#> |   |   |   |   [42] V7 <= 119
#> |   |   |   |   |   [43] V3 <= 4 *
#> |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   [45] V7 > 119
#> |   |   |   |   |   [46] V2 <= 79
#> |   |   |   |   |   |   [47] V4 <= 0 *
#> |   |   |   |   |   |   [48] V4 > 0 *
#> |   |   |   |   |   [49] V2 > 79
#> |   |   |   |   |   |   [50] V3 <= 3 *
#> |   |   |   |   |   |   [51] V3 > 3 *
#> |   |   |   [52] V3 > 6
#> |   |   |   |   [53] V5 <= 14
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V5 <= 0 *
#> |   |   |   |   |   |   [57] V5 > 0
#> |   |   |   |   |   |   |   [58] V2 <= 82
#> |   |   |   |   |   |   |   |   [59] V2 <= 76 *
#> |   |   |   |   |   |   |   |   [60] V2 > 76 *
#> |   |   |   |   |   |   |   [61] V2 > 82 *
#> |   |   |   |   [62] V5 > 14 *
#> |   [63] V5 > 170
#> |   |   [64] V2 <= 71
#> |   |   |   [65] V6 <= 0 *
#> |   |   |   [66] V6 > 0
#> |   |   |   |   [67] V2 <= 57 *
#> |   |   |   |   [68] V2 > 57 *
#> |   |   [69] V2 > 71 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 116
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V2 <= 67 *
#> |   |   |   |   |   [8] V2 > 67 *
#> |   |   |   [9] V7 > 116
#> |   |   |   |   [10] V3 <= 1 *
#> |   |   |   |   [11] V3 > 1
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V3 <= 3 *
#> |   |   |   |   |   |   [14] V3 > 3
#> |   |   |   |   |   |   |   [15] V2 <= 70 *
#> |   |   |   |   |   |   |   [16] V2 > 70 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V2 <= 61 *
#> |   |   |   |   |   |   [19] V2 > 61
#> |   |   |   |   |   |   |   [20] V5 <= 11 *
#> |   |   |   |   |   |   |   [21] V5 > 11 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 70
#> |   |   |   |   [24] V2 <= 47
#> |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   [26] V3 > 3 *
#> |   |   |   |   [27] V2 > 47
#> |   |   |   |   |   [28] V3 <= 18
#> |   |   |   |   |   |   [29] V3 <= 12
#> |   |   |   |   |   |   |   [30] V5 <= 3
#> |   |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   |   |   [33] V2 <= 56 *
#> |   |   |   |   |   |   |   |   |   [34] V2 > 56 *
#> |   |   |   |   |   |   |   [35] V5 > 3
#> |   |   |   |   |   |   |   |   [36] V7 <= 152 *
#> |   |   |   |   |   |   |   |   [37] V7 > 152 *
#> |   |   |   |   |   |   [38] V3 > 12
#> |   |   |   |   |   |   |   [39] V2 <= 58 *
#> |   |   |   |   |   |   |   [40] V2 > 58 *
#> |   |   |   |   |   [41] V3 > 18 *
#> |   |   |   [42] V2 > 70
#> |   |   |   |   [43] V3 <= 16
#> |   |   |   |   |   [44] V7 <= 126
#> |   |   |   |   |   |   [45] V2 <= 74 *
#> |   |   |   |   |   |   [46] V2 > 74
#> |   |   |   |   |   |   |   [47] V7 <= 104 *
#> |   |   |   |   |   |   |   [48] V7 > 104 *
#> |   |   |   |   |   [49] V7 > 126
#> |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   |   [53] V5 > 0
#> |   |   |   |   |   |   |   |   [54] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [55] V7 > 160 *
#> |   |   |   |   [56] V3 > 16 *
#> |   [57] V5 > 170
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 180
#> |   |   |   |   [61] V3 <= 9 *
#> |   |   |   |   [62] V3 > 9 *
#> |   |   |   [63] V7 > 180 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V5 <= 13
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120
#> |   |   |   |   |   |   |   [10] V3 <= 6 *
#> |   |   |   |   |   |   |   [11] V3 > 6 *
#> |   |   |   |   [12] V5 > 13 *
#> |   |   |   [13] V2 > 54
#> |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   [15] V3 > 2
#> |   |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   |   [17] V2 <= 60 *
#> |   |   |   |   |   |   [18] V2 > 60
#> |   |   |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   |   [22] V3 <= 17
#> |   |   |   |   |   |   |   [23] V5 <= 11
#> |   |   |   |   |   |   |   |   [24] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [25] V7 > 110
#> |   |   |   |   |   |   |   |   |   [26] V7 <= 182
#> |   |   |   |   |   |   |   |   |   |   [27] V2 <= 63
#> |   |   |   |   |   |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   |   [30] V2 > 63
#> |   |   |   |   |   |   |   |   |   |   |   [31] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [32] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   |   |   [33] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [34] V2 > 67 *
#> |   |   |   |   |   |   |   |   |   [35] V7 > 182 *
#> |   |   |   |   |   |   |   [36] V5 > 11 *
#> |   |   |   |   |   |   [37] V3 > 17 *
#> |   |   [38] V5 > 170 *
#> |   [39] V2 > 74
#> |   |   [40] V5 <= 165
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V7 <= 140
#> |   |   |   |   |   [43] V2 <= 80 *
#> |   |   |   |   |   [44] V2 > 80
#> |   |   |   |   |   |   [45] V7 <= 98 *
#> |   |   |   |   |   |   [46] V7 > 98 *
#> |   |   |   |   [47] V7 > 140
#> |   |   |   |   |   [48] V7 <= 152 *
#> |   |   |   |   |   [49] V7 > 152 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 87
#> |   |   |   |   |   [52] V3 <= 13
#> |   |   |   |   |   |   [53] V5 <= 1
#> |   |   |   |   |   |   |   [54] V7 <= 140 *
#> |   |   |   |   |   |   |   [55] V7 > 140 *
#> |   |   |   |   |   |   [56] V5 > 1 *
#> |   |   |   |   |   [57] V3 > 13 *
#> |   |   |   |   [58] V2 > 87 *
#> |   |   [59] V5 > 165
#> |   |   |   [60] V2 <= 78 *
#> |   |   |   [61] V2 > 78 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V5 <= 150
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V2 <= 47
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 47
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   |   [11] V4 > 0
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V3 <= 5
#> |   |   |   |   |   |   |   [14] V5 <= 1 *
#> |   |   |   |   |   |   |   [15] V5 > 1 *
#> |   |   |   |   |   |   [16] V3 > 5
#> |   |   |   |   |   |   |   [17] V2 <= 56 *
#> |   |   |   |   |   |   |   [18] V2 > 56 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V2 <= 57 *
#> |   |   |   |   |   |   [21] V2 > 57
#> |   |   |   |   |   |   |   [22] V7 <= 148 *
#> |   |   |   |   |   |   |   [23] V7 > 148 *
#> |   |   [24] V2 > 66
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V7 <= 100 *
#> |   |   |   |   [27] V7 > 100
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V5 <= 7 *
#> |   |   |   |   |   |   [30] V5 > 7 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V5 <= 46
#> |   |   |   |   |   |   |   [33] V5 <= 3 *
#> |   |   |   |   |   |   |   [34] V5 > 3
#> |   |   |   |   |   |   |   |   [35] V5 <= 15 *
#> |   |   |   |   |   |   |   |   [36] V5 > 15 *
#> |   |   |   |   |   |   [37] V5 > 46 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 85
#> |   |   |   |   |   [40] V3 <= 13
#> |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   |   [44] V7 <= 149 *
#> |   |   |   |   |   |   |   |   [45] V7 > 149 *
#> |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   [47] V5 <= 0 *
#> |   |   |   |   |   |   |   [48] V5 > 0
#> |   |   |   |   |   |   |   |   [49] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [50] V2 > 75 *
#> |   |   |   |   |   [51] V3 > 13
#> |   |   |   |   |   |   [52] V7 <= 128 *
#> |   |   |   |   |   |   [53] V7 > 128 *
#> |   |   |   |   [54] V2 > 85 *
#> |   [55] V5 > 150
#> |   |   [56] V6 <= 0 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V2 <= 58
#> |   |   |   |   [59] V7 <= 140 *
#> |   |   |   |   [60] V7 > 140 *
#> |   |   |   [61] V2 > 58 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V7 <= 166
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V2 <= 47
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V2 > 47
#> |   |   |   |   |   [9] V2 <= 54
#> |   |   |   |   |   |   [10] V5 <= 6 *
#> |   |   |   |   |   |   [11] V5 > 6 *
#> |   |   |   |   |   [12] V2 > 54
#> |   |   |   |   |   |   [13] V4 <= 0
#> |   |   |   |   |   |   |   [14] V7 <= 145
#> |   |   |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   |   |   |   [17] V7 > 145 *
#> |   |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   |   [19] V5 <= 3
#> |   |   |   |   |   |   |   |   [20] V7 <= 147
#> |   |   |   |   |   |   |   |   |   [21] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [23] V3 > 3 *
#> |   |   |   |   |   |   |   |   |   [24] V3 > 6 *
#> |   |   |   |   |   |   |   |   [25] V7 > 147 *
#> |   |   |   |   |   |   |   [26] V5 > 3
#> |   |   |   |   |   |   |   |   [27] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [28] V5 > 7
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 9 *
#> |   |   |   [31] V5 > 171
#> |   |   |   |   [32] V3 <= 8 *
#> |   |   |   |   [33] V3 > 8 *
#> |   |   [34] V7 > 166
#> |   |   |   [35] V2 <= 61 *
#> |   |   |   [36] V2 > 61 *
#> |   [37] V2 > 70
#> |   |   [38] V2 <= 87
#> |   |   |   [39] V5 <= 154
#> |   |   |   |   [40] V7 <= 100 *
#> |   |   |   |   [41] V7 > 100
#> |   |   |   |   |   [42] V2 <= 82
#> |   |   |   |   |   |   [43] V3 <= 8
#> |   |   |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   |   |   [45] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [46] V7 > 140 *
#> |   |   |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   |   |   [48] V2 <= 77
#> |   |   |   |   |   |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   |   |   [51] V2 > 77 *
#> |   |   |   |   |   |   [52] V3 > 8
#> |   |   |   |   |   |   |   [53] V2 <= 76
#> |   |   |   |   |   |   |   |   [54] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [55] V5 > 4 *
#> |   |   |   |   |   |   |   [56] V2 > 76 *
#> |   |   |   |   |   [57] V2 > 82 *
#> |   |   |   [58] V5 > 154
#> |   |   |   |   [59] V2 <= 73 *
#> |   |   |   |   [60] V2 > 73 *
#> |   |   [61] V2 > 87
#> |   |   |   [62] V7 <= 125 *
#> |   |   |   [63] V7 > 125 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V7 <= 124 *
#> |   |   |   |   |   [10] V7 > 124
#> |   |   |   |   |   |   [11] V3 <= 11
#> |   |   |   |   |   |   |   [12] V3 <= 5
#> |   |   |   |   |   |   |   |   [13] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [14] V3 > 2
#> |   |   |   |   |   |   |   |   |   [15] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [16] V2 > 65 *
#> |   |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   |   |   |   |   [18] V3 > 11
#> |   |   |   |   |   |   |   [19] V3 <= 16 *
#> |   |   |   |   |   |   |   [20] V3 > 16 *
#> |   |   |   [21] V5 > 16
#> |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   [23] V3 > 2 *
#> |   |   [24] V5 > 171 *
#> |   [25] V6 > 0
#> |   |   [26] V2 <= 71
#> |   |   |   [27] V5 <= 101
#> |   |   |   |   [28] V4 <= 0 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V2 <= 47 *
#> |   |   |   |   |   [31] V2 > 47
#> |   |   |   |   |   |   [32] V5 <= 10
#> |   |   |   |   |   |   |   [33] V5 <= 0
#> |   |   |   |   |   |   |   |   [34] V7 <= 118 *
#> |   |   |   |   |   |   |   |   [35] V7 > 118 *
#> |   |   |   |   |   |   |   [36] V5 > 0
#> |   |   |   |   |   |   |   |   [37] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [38] V2 > 65 *
#> |   |   |   |   |   |   [39] V5 > 10 *
#> |   |   |   [40] V5 > 101
#> |   |   |   |   [41] V3 <= 4 *
#> |   |   |   |   [42] V3 > 4 *
#> |   |   [43] V2 > 71
#> |   |   |   [44] V5 <= 126
#> |   |   |   |   [45] V4 <= 0
#> |   |   |   |   |   [46] V3 <= 5
#> |   |   |   |   |   |   [47] V7 <= 128 *
#> |   |   |   |   |   |   [48] V7 > 128 *
#> |   |   |   |   |   [49] V3 > 5
#> |   |   |   |   |   |   [50] V3 <= 7 *
#> |   |   |   |   |   |   [51] V3 > 7 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V3 <= 14
#> |   |   |   |   |   |   [54] V5 <= 1
#> |   |   |   |   |   |   |   [55] V7 <= 122 *
#> |   |   |   |   |   |   |   [56] V7 > 122 *
#> |   |   |   |   |   |   [57] V5 > 1
#> |   |   |   |   |   |   |   [58] V7 <= 140 *
#> |   |   |   |   |   |   |   [59] V7 > 140 *
#> |   |   |   |   |   [60] V3 > 14 *
#> |   |   |   [61] V5 > 126 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 2 *
#> |   |   |   |   [6] V5 > 2 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V3 <= 5
#> |   |   |   |   |   [9] V5 <= 1
#> |   |   |   |   |   |   [10] V2 <= 44 *
#> |   |   |   |   |   |   [11] V2 > 44 *
#> |   |   |   |   |   [12] V5 > 1 *
#> |   |   |   |   [13] V3 > 5
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V3 <= 7 *
#> |   |   |   |   |   |   [17] V3 > 7 *
#> |   |   [18] V2 > 60
#> |   |   |   [19] V2 <= 71
#> |   |   |   |   [20] V3 <= 12
#> |   |   |   |   |   [21] V3 <= 2 *
#> |   |   |   |   |   [22] V3 > 2
#> |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   [24] V5 <= 3 *
#> |   |   |   |   |   |   |   [25] V5 > 3 *
#> |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   [27] V5 <= 9
#> |   |   |   |   |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [29] V5 > 0 *
#> |   |   |   |   |   |   |   [30] V5 > 9 *
#> |   |   |   |   [31] V3 > 12
#> |   |   |   |   |   [32] V5 <= 9 *
#> |   |   |   |   |   [33] V5 > 9 *
#> |   |   |   [34] V2 > 71
#> |   |   |   |   [35] V5 <= 12
#> |   |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V3 <= 2 *
#> |   |   |   |   |   |   |   [40] V3 > 2 *
#> |   |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   |   |   [43] V5 <= 4 *
#> |   |   |   |   |   |   |   [44] V5 > 4 *
#> |   |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   |   [46] V5 <= 8
#> |   |   |   |   |   |   |   |   [47] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [48] V2 > 75
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 78 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 78
#> |   |   |   |   |   |   |   |   |   |   [51] V2 <= 84 *
#> |   |   |   |   |   |   |   |   |   |   [52] V2 > 84 *
#> |   |   |   |   |   |   |   [53] V5 > 8 *
#> |   |   |   |   [54] V5 > 12
#> |   |   |   |   |   [55] V3 <= 4 *
#> |   |   |   |   |   [56] V3 > 4
#> |   |   |   |   |   |   [57] V5 <= 74 *
#> |   |   |   |   |   |   [58] V5 > 74 *
#> |   [59] V5 > 171
#> |   |   [60] V7 <= 185 *
#> |   |   [61] V7 > 185 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0 *
#> |   |   |   [7] V7 > 112
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   [11] V4 > 0
#> |   |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   |   [16] V2 <= 57 *
#> |   |   |   |   |   |   [17] V2 > 57
#> |   |   |   |   |   |   |   [18] V2 <= 59 *
#> |   |   |   |   |   |   |   [19] V2 > 59
#> |   |   |   |   |   |   |   |   [20] V5 <= 7
#> |   |   |   |   |   |   |   |   |   [21] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [22] V5 > 1 *
#> |   |   |   |   |   |   |   |   [23] V5 > 7 *
#> |   |   [24] V5 > 170
#> |   |   |   [25] V6 <= 0 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V3 <= 7 *
#> |   |   |   |   [28] V3 > 7 *
#> |   [29] V2 > 67
#> |   |   [30] V5 <= 171
#> |   |   |   [31] V3 <= 12
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V5 <= 2 *
#> |   |   |   |   |   [34] V5 > 2
#> |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   [36] V3 <= 4 *
#> |   |   |   |   |   |   |   [37] V3 > 4 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V5 <= 8
#> |   |   |   |   |   |   |   |   [40] V7 <= 128 *
#> |   |   |   |   |   |   |   |   [41] V7 > 128 *
#> |   |   |   |   |   |   |   [42] V5 > 8 *
#> |   |   |   |   [43] V4 > 0
#> |   |   |   |   |   [44] V3 <= 9
#> |   |   |   |   |   |   [45] V2 <= 84
#> |   |   |   |   |   |   |   [46] V7 <= 167
#> |   |   |   |   |   |   |   |   [47] V7 <= 123 *
#> |   |   |   |   |   |   |   |   [48] V7 > 123 *
#> |   |   |   |   |   |   |   [49] V7 > 167 *
#> |   |   |   |   |   |   [50] V2 > 84 *
#> |   |   |   |   |   [51] V3 > 9 *
#> |   |   |   [52] V3 > 12
#> |   |   |   |   [53] V4 <= 0 *
#> |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   [55] V5 <= 9 *
#> |   |   |   |   |   [56] V5 > 9 *
#> |   |   [57] V5 > 171
#> |   |   |   [58] V7 <= 180 *
#> |   |   |   [59] V7 > 180 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V7 <= 83 *
#> |   [3] V7 > 83
#> |   |   [4] V5 <= 171
#> |   |   |   [5] V2 <= 78
#> |   |   |   |   [6] V4 <= 0
#> |   |   |   |   |   [7] V2 <= 60
#> |   |   |   |   |   |   [8] V3 <= 2 *
#> |   |   |   |   |   |   [9] V3 > 2 *
#> |   |   |   |   |   [10] V2 > 60
#> |   |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   |   [12] V5 <= 13 *
#> |   |   |   |   |   |   |   [13] V5 > 13 *
#> |   |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   |   [15] V7 <= 140 *
#> |   |   |   |   |   |   |   [16] V7 > 140 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V2 <= 70
#> |   |   |   |   |   |   [19] V3 <= 5
#> |   |   |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   |   |   [21] V3 > 3 *
#> |   |   |   |   |   |   [22] V3 > 5
#> |   |   |   |   |   |   |   [23] V5 <= 5
#> |   |   |   |   |   |   |   |   [24] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [25] V5 > 1 *
#> |   |   |   |   |   |   |   [26] V5 > 5
#> |   |   |   |   |   |   |   |   [27] V3 <= 17
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 50 *
#> |   |   |   |   |   |   |   |   |   [29] V2 > 50
#> |   |   |   |   |   |   |   |   |   |   [30] V2 <= 66
#> |   |   |   |   |   |   |   |   |   |   |   [31] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   |   [32] V7 > 140 *
#> |   |   |   |   |   |   |   |   |   |   [33] V2 > 66 *
#> |   |   |   |   |   |   |   |   [34] V3 > 17 *
#> |   |   |   |   |   [35] V2 > 70
#> |   |   |   |   |   |   [36] V2 <= 73
#> |   |   |   |   |   |   |   [37] V7 <= 145 *
#> |   |   |   |   |   |   |   [38] V7 > 145 *
#> |   |   |   |   |   |   [39] V2 > 73
#> |   |   |   |   |   |   |   [40] V3 <= 5 *
#> |   |   |   |   |   |   |   [41] V3 > 5 *
#> |   |   |   [42] V2 > 78
#> |   |   |   |   [43] V4 <= 0
#> |   |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   [46] V2 <= 81 *
#> |   |   |   |   |   |   [47] V2 > 81
#> |   |   |   |   |   |   |   [48] V5 <= 8 *
#> |   |   |   |   |   |   |   [49] V5 > 8 *
#> |   |   |   |   [50] V4 > 0
#> |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   [52] V6 > 0 *
#> |   |   [53] V5 > 171
#> |   |   |   [54] V6 <= 0 *
#> |   |   |   [55] V6 > 0
#> |   |   |   |   [56] V3 <= 1 *
#> |   |   |   |   [57] V3 > 1
#> |   |   |   |   |   [58] V7 <= 135 *
#> |   |   |   |   |   [59] V7 > 135 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 158
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 126 *
#> |   |   |   |   [6] V7 > 126
#> |   |   |   |   |   [7] V7 <= 135 *
#> |   |   |   |   |   [8] V7 > 135 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V5 <= 4
#> |   |   |   |   |   [11] V3 <= 2 *
#> |   |   |   |   |   [12] V3 > 2 *
#> |   |   |   |   [13] V5 > 4
#> |   |   |   |   |   [14] V3 <= 11
#> |   |   |   |   |   |   [15] V2 <= 61 *
#> |   |   |   |   |   |   [16] V2 > 61
#> |   |   |   |   |   |   |   [17] V2 <= 78 *
#> |   |   |   |   |   |   |   [18] V2 > 78 *
#> |   |   |   |   |   [19] V3 > 11 *
#> |   |   [20] V5 > 158
#> |   |   |   [21] V3 <= 10 *
#> |   |   |   [22] V3 > 10 *
#> |   [23] V4 > 0
#> |   |   [24] V6 <= 0
#> |   |   |   [25] V2 <= 63
#> |   |   |   |   [26] V3 <= 15
#> |   |   |   |   |   [27] V5 <= 1 *
#> |   |   |   |   |   [28] V5 > 1 *
#> |   |   |   |   [29] V3 > 15 *
#> |   |   |   [30] V2 > 63
#> |   |   |   |   [31] V3 <= 4 *
#> |   |   |   |   [32] V3 > 4
#> |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   [34] V7 > 130
#> |   |   |   |   |   |   [35] V3 <= 11 *
#> |   |   |   |   |   |   [36] V3 > 11 *
#> |   |   [37] V6 > 0
#> |   |   |   [38] V5 <= 11
#> |   |   |   |   [39] V2 <= 59
#> |   |   |   |   |   [40] V7 <= 145 *
#> |   |   |   |   |   [41] V7 > 145 *
#> |   |   |   |   [42] V2 > 59
#> |   |   |   |   |   [43] V2 <= 85
#> |   |   |   |   |   |   [44] V2 <= 72
#> |   |   |   |   |   |   |   [45] V3 <= 4 *
#> |   |   |   |   |   |   |   [46] V3 > 4
#> |   |   |   |   |   |   |   |   [47] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [48] V3 > 9 *
#> |   |   |   |   |   |   [49] V2 > 72
#> |   |   |   |   |   |   |   [50] V5 <= 3
#> |   |   |   |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [52] V5 > 0 *
#> |   |   |   |   |   |   |   [53] V5 > 3 *
#> |   |   |   |   |   [54] V2 > 85 *
#> |   |   |   [55] V5 > 11 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V2 <= 47
#> |   |   |   |   |   |   [10] V3 <= 6 *
#> |   |   |   |   |   |   [11] V3 > 6 *
#> |   |   |   |   |   [12] V2 > 47
#> |   |   |   |   |   |   [13] V7 <= 110 *
#> |   |   |   |   |   |   [14] V7 > 110
#> |   |   |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   |   |   [16] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [17] V2 > 60 *
#> |   |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [20] V7 > 130
#> |   |   |   |   |   |   |   |   |   [21] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [22] V7 > 147
#> |   |   |   |   |   |   |   |   |   |   [23] V2 <= 62 *
#> |   |   |   |   |   |   |   |   |   |   [24] V2 > 62 *
#> |   |   |   [25] V5 > 13 *
#> |   |   [26] V5 > 169
#> |   |   |   [27] V2 <= 57 *
#> |   |   |   [28] V2 > 57
#> |   |   |   |   [29] V2 <= 60 *
#> |   |   |   |   [30] V2 > 60 *
#> |   [31] V2 > 67
#> |   |   [32] V5 <= 171
#> |   |   |   [33] V5 <= 13
#> |   |   |   |   [34] V4 <= 0
#> |   |   |   |   |   [35] V3 <= 2 *
#> |   |   |   |   |   [36] V3 > 2
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V5 <= 4 *
#> |   |   |   |   |   |   |   [40] V5 > 4 *
#> |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   [42] V7 <= 125
#> |   |   |   |   |   |   [43] V5 <= 0 *
#> |   |   |   |   |   |   [44] V5 > 0 *
#> |   |   |   |   |   [45] V7 > 125
#> |   |   |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   |   |   [47] V3 > 5
#> |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   [50] V2 <= 76 *
#> |   |   |   |   |   |   |   |   [51] V2 > 76 *
#> |   |   |   [52] V5 > 13
#> |   |   |   |   [53] V7 <= 120 *
#> |   |   |   |   [54] V7 > 120
#> |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   [56] V6 > 0 *
#> |   |   [57] V5 > 171 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 78
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V5 <= 169
#> |   |   |   |   |   [6] V2 <= 55 *
#> |   |   |   |   |   [7] V2 > 55 *
#> |   |   |   |   [8] V5 > 169 *
#> |   |   |   [9] V2 > 60
#> |   |   |   |   [10] V3 <= 1 *
#> |   |   |   |   [11] V3 > 1
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V5 <= 170
#> |   |   |   |   |   |   |   [14] V3 <= 6 *
#> |   |   |   |   |   |   |   [15] V3 > 6 *
#> |   |   |   |   |   |   [16] V5 > 170 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V5 <= 119
#> |   |   |   |   |   |   |   [19] V5 <= 11 *
#> |   |   |   |   |   |   |   [20] V5 > 11 *
#> |   |   |   |   |   |   [21] V5 > 119 *
#> |   |   [22] V2 > 78
#> |   |   |   [23] V7 <= 130
#> |   |   |   |   [24] V5 <= 52
#> |   |   |   |   |   [25] V3 <= 3 *
#> |   |   |   |   |   [26] V3 > 3 *
#> |   |   |   |   [27] V5 > 52 *
#> |   |   |   [28] V7 > 130
#> |   |   |   |   [29] V2 <= 86
#> |   |   |   |   |   [30] V5 <= 125 *
#> |   |   |   |   |   [31] V5 > 125 *
#> |   |   |   |   [32] V2 > 86 *
#> |   [33] V4 > 0
#> |   |   [34] V2 <= 70
#> |   |   |   [35] V2 <= 48
#> |   |   |   |   [36] V2 <= 42 *
#> |   |   |   |   [37] V2 > 42 *
#> |   |   |   [38] V2 > 48
#> |   |   |   |   [39] V6 <= 0
#> |   |   |   |   |   [40] V2 <= 59
#> |   |   |   |   |   |   [41] V7 <= 150 *
#> |   |   |   |   |   |   [42] V7 > 150 *
#> |   |   |   |   |   [43] V2 > 59
#> |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 17
#> |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   [49] V3 > 4
#> |   |   |   |   |   |   |   [50] V2 <= 55 *
#> |   |   |   |   |   |   |   [51] V2 > 55
#> |   |   |   |   |   |   |   |   [52] V2 <= 65
#> |   |   |   |   |   |   |   |   |   [53] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   [54] V2 > 63 *
#> |   |   |   |   |   |   |   |   [55] V2 > 65 *
#> |   |   |   |   |   [56] V3 > 17 *
#> |   |   [57] V2 > 70
#> |   |   |   [58] V3 <= 7
#> |   |   |   |   [59] V2 <= 79 *
#> |   |   |   |   [60] V2 > 79 *
#> |   |   |   [61] V3 > 7
#> |   |   |   |   [62] V5 <= 6
#> |   |   |   |   |   [63] V2 <= 75 *
#> |   |   |   |   |   [64] V2 > 75 *
#> |   |   |   |   [65] V5 > 6
#> |   |   |   |   |   [66] V6 <= 0 *
#> |   |   |   |   |   [67] V6 > 0 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V7 <= 128
#> |   |   |   |   |   [9] V5 <= 3 *
#> |   |   |   |   |   [10] V5 > 3
#> |   |   |   |   |   |   [11] V5 <= 18 *
#> |   |   |   |   |   |   [12] V5 > 18 *
#> |   |   |   |   [13] V7 > 128
#> |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   [15] V7 <= 145 *
#> |   |   |   |   |   |   [16] V7 > 145 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V7 <= 159
#> |   |   |   |   |   |   |   [19] V2 <= 76 *
#> |   |   |   |   |   |   |   [20] V2 > 76 *
#> |   |   |   |   |   |   [21] V7 > 159 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 63
#> |   |   |   |   [24] V7 <= 110 *
#> |   |   |   |   [25] V7 > 110
#> |   |   |   |   |   [26] V3 <= 13
#> |   |   |   |   |   |   [27] V7 <= 179
#> |   |   |   |   |   |   |   [28] V5 <= 4
#> |   |   |   |   |   |   |   |   [29] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [31] V5 > 0 *
#> |   |   |   |   |   |   |   |   [32] V5 > 1 *
#> |   |   |   |   |   |   |   [33] V5 > 4 *
#> |   |   |   |   |   |   [34] V7 > 179 *
#> |   |   |   |   |   [35] V3 > 13 *
#> |   |   |   [36] V2 > 63
#> |   |   |   |   [37] V2 <= 85
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V3 <= 4 *
#> |   |   |   |   |   |   [40] V3 > 4
#> |   |   |   |   |   |   |   [41] V3 <= 13
#> |   |   |   |   |   |   |   |   [42] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [43] V5 > 2 *
#> |   |   |   |   |   |   |   [44] V3 > 13 *
#> |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   [46] V5 <= 11
#> |   |   |   |   |   |   |   [47] V5 <= 0
#> |   |   |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [49] V3 > 3 *
#> |   |   |   |   |   |   |   [50] V5 > 0
#> |   |   |   |   |   |   |   |   [51] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [52] V2 > 67
#> |   |   |   |   |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [54] V5 > 2 *
#> |   |   |   |   |   |   [55] V5 > 11 *
#> |   |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 171
#> |   |   [58] V7 <= 185
#> |   |   |   [59] V3 <= 10 *
#> |   |   |   [60] V3 > 10 *
#> |   |   [61] V7 > 185 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 66
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V2 <= 53 *
#> |   |   |   |   |   [7] V2 > 53
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V5 <= 10
#> |   |   |   |   |   |   [12] V7 <= 118 *
#> |   |   |   |   |   |   [13] V7 > 118
#> |   |   |   |   |   |   |   [14] V5 <= 7
#> |   |   |   |   |   |   |   |   [15] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [16] V2 <= 61
#> |   |   |   |   |   |   |   |   |   |   [17] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   [18] V7 > 140 *
#> |   |   |   |   |   |   |   |   |   [19] V2 > 61 *
#> |   |   |   |   |   |   |   |   [20] V5 > 3 *
#> |   |   |   |   |   |   |   [21] V5 > 7
#> |   |   |   |   |   |   |   |   [22] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [23] V5 > 8 *
#> |   |   |   |   |   [24] V5 > 10 *
#> |   |   |   [25] V2 > 66
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V7 <= 134
#> |   |   |   |   |   |   [28] V2 <= 70 *
#> |   |   |   |   |   |   [29] V2 > 70 *
#> |   |   |   |   |   [30] V7 > 134
#> |   |   |   |   |   |   [31] V5 <= 4 *
#> |   |   |   |   |   |   [32] V5 > 4 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V4 <= 0
#> |   |   |   |   |   |   [35] V7 <= 144 *
#> |   |   |   |   |   |   [36] V7 > 144 *
#> |   |   |   |   |   [37] V4 > 0
#> |   |   |   |   |   |   [38] V2 <= 75
#> |   |   |   |   |   |   |   [39] V2 <= 72
#> |   |   |   |   |   |   |   |   [40] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [41] V7 > 147 *
#> |   |   |   |   |   |   |   [42] V2 > 72 *
#> |   |   |   |   |   |   [43] V2 > 75 *
#> |   |   [44] V5 > 171
#> |   |   |   [45] V6 <= 0 *
#> |   |   |   [46] V6 > 0
#> |   |   |   |   [47] V7 <= 170 *
#> |   |   |   |   [48] V7 > 170 *
#> |   [49] V2 > 78
#> |   |   [50] V4 <= 0
#> |   |   |   [51] V5 <= 128
#> |   |   |   |   [52] V3 <= 5
#> |   |   |   |   |   [53] V7 <= 125 *
#> |   |   |   |   |   [54] V7 > 125 *
#> |   |   |   |   [55] V3 > 5 *
#> |   |   |   [56] V5 > 128 *
#> |   |   [57] V4 > 0
#> |   |   |   [58] V3 <= 11 *
#> |   |   |   [59] V3 > 11 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 64
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 129 *
#> |   |   |   |   |   [10] V7 > 129 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V3 <= 2 *
#> |   |   |   |   |   [13] V3 > 2
#> |   |   |   |   |   |   [14] V7 <= 110 *
#> |   |   |   |   |   |   [15] V7 > 110
#> |   |   |   |   |   |   |   [16] V5 <= 11 *
#> |   |   |   |   |   |   |   [17] V5 > 11 *
#> |   |   [18] V5 > 171
#> |   |   |   [19] V3 <= 10 *
#> |   |   |   [20] V3 > 10 *
#> |   [21] V4 > 0
#> |   |   [22] V6 <= 0
#> |   |   |   [23] V2 <= 63
#> |   |   |   |   [24] V3 <= 8
#> |   |   |   |   |   [25] V7 <= 151 *
#> |   |   |   |   |   [26] V7 > 151 *
#> |   |   |   |   [27] V3 > 8 *
#> |   |   |   [28] V2 > 63
#> |   |   |   |   [29] V7 <= 130 *
#> |   |   |   |   [30] V7 > 130
#> |   |   |   |   |   [31] V5 <= 8
#> |   |   |   |   |   |   [32] V5 <= 1 *
#> |   |   |   |   |   |   [33] V5 > 1 *
#> |   |   |   |   |   [34] V5 > 8 *
#> |   |   [35] V6 > 0
#> |   |   |   [36] V5 <= 0
#> |   |   |   |   [37] V2 <= 78
#> |   |   |   |   |   [38] V2 <= 53 *
#> |   |   |   |   |   [39] V2 > 53
#> |   |   |   |   |   |   [40] V7 <= 141 *
#> |   |   |   |   |   |   [41] V7 > 141 *
#> |   |   |   |   [42] V2 > 78 *
#> |   |   |   [43] V5 > 0
#> |   |   |   |   [44] V2 <= 67
#> |   |   |   |   |   [45] V3 <= 13
#> |   |   |   |   |   |   [46] V3 <= 7 *
#> |   |   |   |   |   |   [47] V3 > 7 *
#> |   |   |   |   |   [48] V3 > 13 *
#> |   |   |   |   [49] V2 > 67
#> |   |   |   |   |   [50] V5 <= 11
#> |   |   |   |   |   |   [51] V3 <= 12
#> |   |   |   |   |   |   |   [52] V3 <= 9 *
#> |   |   |   |   |   |   |   [53] V3 > 9 *
#> |   |   |   |   |   |   [54] V3 > 12 *
#> |   |   |   |   |   [55] V5 > 11 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V2 <= 48
#> |   |   |   [4] V2 <= 38 *
#> |   |   |   [5] V2 > 38
#> |   |   |   |   [6] V7 <= 120 *
#> |   |   |   |   [7] V7 > 120
#> |   |   |   |   |   [8] V5 <= 1 *
#> |   |   |   |   |   [9] V5 > 1 *
#> |   |   [10] V2 > 48
#> |   |   |   [11] V5 <= 170
#> |   |   |   |   [12] V4 <= 0
#> |   |   |   |   |   [13] V3 <= 3 *
#> |   |   |   |   |   [14] V3 > 3
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   [19] V3 <= 9
#> |   |   |   |   |   |   |   [20] V2 <= 57 *
#> |   |   |   |   |   |   |   [21] V2 > 57 *
#> |   |   |   |   |   |   [22] V3 > 9 *
#> |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   [24] V2 <= 55 *
#> |   |   |   |   |   |   [25] V2 > 55
#> |   |   |   |   |   |   |   [26] V3 <= 4 *
#> |   |   |   |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   |   |   |   [28] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [29] V7 > 140 *
#> |   |   |   [30] V5 > 170
#> |   |   |   |   [31] V2 <= 58 *
#> |   |   |   |   [32] V2 > 58 *
#> |   [33] V2 > 66
#> |   |   [34] V5 <= 171
#> |   |   |   [35] V7 <= 125
#> |   |   |   |   [36] V7 <= 101
#> |   |   |   |   |   [37] V3 <= 4 *
#> |   |   |   |   |   [38] V3 > 4 *
#> |   |   |   |   [39] V7 > 101
#> |   |   |   |   |   [40] V5 <= 0 *
#> |   |   |   |   |   [41] V5 > 0
#> |   |   |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   |   |   [43] V3 <= 5 *
#> |   |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   |   [45] V4 > 0 *
#> |   |   |   [46] V7 > 125
#> |   |   |   |   [47] V2 <= 80
#> |   |   |   |   |   [48] V4 <= 0
#> |   |   |   |   |   |   [49] V3 <= 4 *
#> |   |   |   |   |   |   [50] V3 > 4 *
#> |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   |   [53] V7 <= 149 *
#> |   |   |   |   |   |   |   [54] V7 > 149 *
#> |   |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   |   [56] V2 <= 74
#> |   |   |   |   |   |   |   |   [57] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [58] V5 > 2 *
#> |   |   |   |   |   |   |   [59] V2 > 74 *
#> |   |   |   |   [60] V2 > 80
#> |   |   |   |   |   [61] V4 <= 0 *
#> |   |   |   |   |   [62] V4 > 0 *
#> |   |   [63] V5 > 171 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 2.0+  33   2      0          2        0   150
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                               180.0+  35  10      1          9        0   106
#> 5                                 5.0+  34   5      0          5        0   120
#> 6                               180.0+  35   2      0        180        0   121
#> 7                                 2.0+  35   2      1          1        1   112
#> 8                               180.0+  37   9      0        180        1   151
#> 9                               180.0+  38  13      1          0        1   161
#> 10                               115.0  38   2      0        115        0   150
#> 11                              180.0+  36   1      0        180        1   155
#> 12                              180.0+  35   0      0        180        1   119
#> 13                              180.0+  38  16      1         10        0   160
#> 14                              180.0+  42   3      1          1        1   130
#> 15                              180.0+  37   1      1          0        1   146
#> 16                                5.0+  38   5      1          3        0   125
#> 17                                2.0+  42   2      0          2        0   140
#> 18                              180.0+  40   1      1          0        1   145
#> 19                              180.0+  43   4      1          0        1   130
#> 20                              180.0+  42   4      0        180        0   162
#> 21                              180.0+  42  15      1         13        1   125
#> 22                              180.0+  42  12      1         10        1   170
#> 23                              180.0+  42   2      0        180        1   124
#> 24                              155.0+  44   5      1          1        0   170
#> 25                              180.0+  41  10      1          8        0   150
#> 26                              180.0+  44   3      0        180        0   141
#> 27                              180.0+  41  13      1          1        0   140
#> 28                              180.0+  45   9      1          7        0   110
#> 29                              180.0+  45   6      0        180        1   170
#> 30                              180.0+  44   2      1          1        1   150
#> 31                              180.0+  45   2      0        180        1   140
#> 32                              180.0+  46  15      0        180        0   120
#> 33                              180.0+  46   2      1          1        0   126
#> 34                               150.0  45   3      0        150        0   130
#> 35                              180.0+  46   7      1          2        0   166
#> 36                              180.0+  43  29      0        180        1   180
#> 37                              180.0+  45   4      1          0        0   124
#> 38                              180.0+  43  10      0        180        0   185
#> 39                                6.0+  47   6      1          0        1   116
#> 40                              180.0+  44   0      1          0        1    96
#> 41                              180.0+  47   4      1          3        1   160
#> 42                              180.0+  43   3      1          0        1   124
#> 43                                73.0  49   5      0         73        1   136
#> 44                              161.0+  46   2      1          1        1   122
#> 45                              180.0+  46   6      1          0        1   100
#> 46                              180.0+  44   4      1          0        1   114
#> 47                              180.0+  47   2      0        180        0   108
#> 48                              180.0+  46   4      0        180        1   121
#> 49                              180.0+  44   2      0        180        0   142
#> 50                              180.0+  46  15      0        180        1   120
#> 51                              180.0+  48   3      0        180        0   154
#> 52                              180.0+  47   5      1          3        1   130
#> 53                              180.0+  47   9      1          6        0   170
#> 54                              180.0+  46   3      1          0        1   119
#> 55                               10.0+  47  10      0         10        1   140
#> 56                              180.0+  48   2      1          0        0   184
#> 57                              180.0+  47   7      0        180        0   145
#> 58                              180.0+  50   4      1          1        0   125
#> 59                                 7.0  49   7      1          7        1   110
#> 60                              180.0+  46   3      1          1        1   140
#> 61                              180.0+  46   9      1          9        1   122
#> 62                              180.0+  50   7      0        180        1   110
#> 63                                 2.0  49   2      0          2        0   105
#> 64                              180.0+  47   2      0        180        0   150
#> 65                              180.0+  52   2      0        180        1   170
#> 66                              180.0+  50   7      1          0        1    92
#> 67                                4.0+  50   4      0          4        1   100
#> 68                              180.0+  51   3      1          2        0   113
#> 69                              180.0+  50   9      0        180        0   130
#> 70                              180.0+  47   8      0        180        0   160
#> 71                              180.0+  47   6      0        180        1   162
#> 72                              180.0+  51   8      0        180        1   140
#> 73                              180.0+  52   2      0        180        0   155
#> 74                              180.0+  46   3      0        180        1   120
#> 75                              180.0+  50   4      1          1        0   150
#> 76                                 7.0  48   7      1          0        1   110
#> 77                                36.0  53   8      0         36        1   160
#> 78                               88.0+  48  17      1         10        0   111
#> 79                              180.0+  47   2      1          1        0   110
#> 80                                4.0+  52   4      1          4        0   152
#> 81                                77.0  53   5      0         77        0   159
#> 82                              180.0+  50  10      1          6        0   122
#> 83                              180.0+  50  14      1         13        0   170
#> 84                              180.0+  53   8      1          7        0   160
#> 85                              180.0+  48   3      1          2        0   150
#> 86                              180.0+  51  25      1          1        0   202
#> 87                                4.0+  53   4      0          4        0   140
#> 88                                85.0  52  14      1          7        1   200
#> 89                              180.0+  48   6      0        180        0   160
#> 90                              166.0+  53   4      1          0        1   156
#> 91                               16.0+  49  16      0         16        0   125
#> 92                              180.0+  55   3      1          1        0   150
#> 93                              152.0+  54  23      1         10        0   131
#> 94                                7.0+  52   7      1          2        0   154
#> 95                              180.0+  54   9      1          1        0   130
#> 96                              180.0+  52   4      0        180        1   180
#> 97                              180.0+  54   4      1          0        1   121
#> 98                              180.0+  52   4      0        180        0   183
#> 99                                28.0  55  28      1         13        1   160
#> 100                               6.0+  49   6      1          0        1   130
#> 101                                1.0  49   1      0          1        1   110
#> 102                               9.0+  53   9      0          9        1    95
#> 103                             180.0+  53   8      1          0        1   130
#> 104                             180.0+  56   4      1          1        1   130
#> 105                             175.0+  52   5      0        175        1   117
#> 106                             180.0+  55   1      0        180        0   127
#> 107                                2.0  55   2      0          2        0   145
#> 108                             180.0+  54   1      0        180        0   162
#> 109                               7.0+  54   7      1          0        1   100
#> 110                             180.0+  56   3      0        180        1   193
#> 111                             180.0+  56   2      0        180        0   132
#> 112                             180.0+  53  18      1          9        1   150
#> 113                             180.0+  54   3      0        180        1   180
#> 114                             180.0+  55   6      0        180        0   170
#> 115                             180.0+  53  10      1          9        0   172
#> 116                               16.0  52  16      1         14        0   170
#> 117                              15.0+  53  15      0         15        1    90
#> 118                             180.0+  53   4      0        180        1   150
#> 119                             180.0+  55   6      0        180        1   100
#> 120                             134.0+  55   2      0        134        1   140
#> 121                             180.0+  54   3      0        180        0   128
#> 122                                8.0  56   3      0          8        1   139
#> 123                                2.0  55   1      0          2        0   130
#> 124                               3.0+  57   3      0          3        0   120
#> 125                             180.0+  54   7      1          2        0   129
#> 126                             180.0+  52   9      1          3        0   170
#> 127                             180.0+  57   1      0        180        1   156
#> 128                                1.0  57   1      0          1        1   100
#> 129                              165.0  56   4      1          0        1   140
#> 130                             180.0+  55  11      1          7        0   104
#> 131                             180.0+  52  15      1         14        0   130
#> 132                             180.0+  56  14      1         11        0   130
#> 133                             180.0+  57  10      0        180        1   170
#> 134                               8.0+  58   8      0          8        1   130
#> 135                             180.0+  54   5      0        180        1   108
#> 136                             180.0+  53  21      1         13        1   130
#> 137                             180.0+  59   3      1          1        0   172
#> 138                             180.0+  57   4      0        180        1   119
#> 139                             180.0+  58   6      1          0        1    90
#> 140                             171.0+  54  17      1          8        1   227
#> 141                               15.0  55   9      1          2        1   147
#> 142                               5.0+  56   5      0          5        1   150
#> 143                             180.0+  54  23      1          8        0   120
#> 144                               4.0+  57   4      1          2        1   185
#> 145                             147.0+  53   4      0        147        1   145
#> 146                             180.0+  53   7      1          0        1   120
#> 147                             180.0+  55   3      1          2        0   140
#> 148                               5.0+  55   5      0          5        1   131
#> 149                             180.0+  59  15      1         10        0   140
#> 150                               9.0+  58   9      1          0        1   180
#> 151                             180.0+  55   5      1          0        0   140
#> 152                             180.0+  56   7      1          5        1   120
#> 153                             180.0+  59   9      1          1        1   125
#> 154                             180.0+  57   1      0        180        0   148
#> 155                             180.0+  59   3      0        180        0   120
#> 156                             180.0+  58   4      1          0        1   160
#> 157                                2.0  57   2      0          2        1   120
#> 158                             180.0+  57   5      0        180        1   130
#> 159                             180.0+  58  11      1          9        1   124
#> 160                             180.0+  59   5      0        180        1   155
#> 161                             180.0+  59   4      1          0        1   152
#> 162                             180.0+  58   4      1          3        0   120
#> 163                             161.0+  58   8      0        161        1   140
#> 164                             171.0+  58  14      1          6        0   190
#> 165                             180.0+  61   4      1          3        0   151
#> 166                             180.0+  61   9      1          8        0   150
#> 167                             180.0+  57  13      1         10        0   110
#> 168                             180.0+  57   2      1          0        1   116
#> 169                             180.0+  57  11      0        180        1   150
#> 170                               17.0  61   3      0         17        0   143
#> 171                               45.0  56  14      0         45        0   130
#> 172                               3.0+  57   3      1          2        0   120
#> 173                               19.0  58  19      1         13        1   140
#> 174                               9.0+  59   9      1          0        1    80
#> 175                             180.0+  55   4      1          3        1   160
#> 176                             172.0+  58  11      0        172        1   135
#> 177                             172.0+  60  12      1          0        1   114
#> 178                             180.0+  61  13      1         12        1   130
#> 179                             180.0+  59  11      1          8        1   190
#> 180                               1.0+  57   1      0          1        0   126
#> 181                             180.0+  59   5      1          2        0   182
#> 182                             180.0+  58   5      1          1        1   135
#> 183                               77.0  61   8      0         77        0   120
#> 184                              13.0+  61  13      0         13        0   210
#> 185                             180.0+  62  10      1          0        1   153
#> 186                             180.0+  62   7      1          2        1   180
#> 187                             180.0+  57   3      1          0        0   100
#> 188                              170.0  61  18      0        170        0   140
#> 189                               94.0  61  28      1          7        0   133
#> 190                             180.0+  58   8      1          3        1   150
#> 191                              169.0  57   7      0        169        0   180
#> 192                               7.0+  60   7      0          7        0   147
#> 193                                6.0  61   6      0          6        0   134
#> 194                             180.0+  59  13      1          2        0   198
#> 195                             180.0+  62   4      1          0        0   160
#> 196                             180.0+  60  17      1          8        1   140
#> 197                             180.0+  62   4      1          3        0   173
#> 198                             180.0+  59  16      1          9        1   133
#> 199                               28.0  63   6      0         28        1   120
#> 200                              13.0+  61  13      0         13        0   120
#> 201                                5.0  61   5      0          5        1   110
#> 202                               18.0  57  18      1          9        1    93
#> 203                               5.0+  61   5      0          5        1   160
#> 204                             180.0+  58  11      1          9        0   179
#> 205                             180.0+  57   2      1          1        0   159
#> 206                             180.0+  62  17      1         10        1   180
#> 207                                1.0  62   1      1          0        1   172
#> 208                             180.0+  63   3      1          1        0   180
#> 209                             180.0+  63   1      0        180        1   130
#> 210                             180.0+  63   4      1          3        0   222
#> 211                             180.0+  63   4      0        180        1   190
#> 212                             180.0+  63  15      1         10        1   126
#> 213                             180.0+  64   4      0        180        0   130
#> 214                             180.0+  60  18      1         13        0   132
#> 215                             180.0+  59   8      0        180        1   140
#> 216                             180.0+  61   9      1          9        1   150
#> 217                                9.0  58   9      1          9        0   110
#> 218                               22.0  59   1      0         22        1   162
#> 219                             180.0+  58   2      0        180        0   127
#> 220                             180.0+  59   4      0        180        0   196
#> 221                               84.0  60   7      1          5        1   141
#> 222                               7.0+  60   7      0          7        0   140
#> 223                             180.0+  59   5      1          1        0   148
#> 224                             180.0+  60   7      1          1        1    90
#> 225                             180.0+  65  13      0        180        1   100
#> 226                                1.0  63   1      0          1        0   162
#> 227                                1.0  63   1      0          1        0   130
#> 228                             180.0+  62   6      0        180        0   170
#> 229                               4.0+  59   4      0          4        0   149
#> 230                              167.0  64  10      1          9        0   160
#> 231                               6.0+  62   6      0          6        0   120
#> 232                             180.0+  63  12      1         10        0   200
#> 233                             180.0+  59  10      0        180        1   130
#> 234                               12.0  64  12      1         11        0   160
#> 235                             180.0+  66   1      1          0        1   120
#> 236                             180.0+  64   6      1          0        1   140
#> 237                             180.0+  63  10      1          0        1   148
#> 238                              14.0+  63  14      1          9        0   123
#> 239                               3.0+  66   3      1          1        0   127
#> 240                               88.0  61  10      1          2        1   194
#> 241                             180.0+  64  32      1          9        1   160
#> 242                             180.0+  66   5      1          0        1   110
#> 243                             180.0+  65  10      1          8        1   120
#> 244                             180.0+  60   6      0        180        0   130
#> 245                             180.0+  64  21      1         10        0   190
#> 246                              12.0+  61  12      1         11        0   154
#> 247                             180.0+  65   3      0        180        1   190
#> 248                             180.0+  64   7      0        180        1   120
#> 249                               12.0  63  12      0         12        1   150
#> 250                                9.0  65   6      0          9        0   112
#> 251                                3.0  65   3      1          0        1    80
#> 252                             180.0+  63   5      1          4        0   170
#> 253                             180.0+  62  13      1         11        0   180
#> 254                              18.0+  66  18      1          5        0   142
#> 255                             180.0+  66  16      1         11        1   169
#> 256                             180.0+  62   9      0        180        0   145
#> 257                             180.0+  63   9      1          8        1   160
#> 258                               3.0+  63   3      1          2        0   120
#> 259                              103.0  64  19      1          8        1   160
#> 260                               15.0  65   8      1          0        1   140
#> 261                             180.0+  67   6      0        180        1   170
#> 262                             180.0+  65  15      1         11        1   160
#> 263                             180.0+  64   6      1          0        1   125
#> 264                             179.0+  66   7      1          0        1   115
#> 265                             166.0+  66  13      1          0        0   118
#> 266                              14.0+  64  14      1         13        1   150
#> 267                               0.5+  64   0      0          0        1   148
#> 268                             180.0+  67   4      1          3        0   130
#> 269                             180.0+  66   6      1          0        1   140
#> 270                             180.0+  64  10      1          9        1   110
#> 271                               7.0+  63   7      1          0        0   162
#> 272                                5.0  68   5      0          5        1    90
#> 273                               16.0  63  10      0         16        1   160
#> 274                             180.0+  66  14      0        180        0   130
#> 275                             180.0+  63   8      1          1        1   162
#> 276                             180.0+  68  11      0        180        0   160
#> 277                               79.0  68  14      0         79        0   172
#> 278                               80.0  66  12      1         10        1   150
#> 279                              15.0+  65  15      1         12        1   150
#> 280                               4.0+  65   4      1          2        1   145
#> 281                               15.0  69  12      0         15        1   140
#> 282                             180.0+  66  15      1         13        1   160
#> 283                             180.0+  63   2      0        180        0   150
#> 284                             174.0+  69  21      1         10        0   180
#> 285                             180.0+  69   6      0        180        1   100
#> 286                             180.0+  66   9      1          8        0   130
#> 287                             180.0+  63   8      0        180        1   120
#> 288                             180.0+  68  14      1         13        1   140
#> 289                               8.0+  65   8      1          0        1    90
#> 290                                3.0  66   3      0          3        1   138
#> 291                               10.0  68  10      1         10        1   150
#> 292                             180.0+  65   1      1          0        0   133
#> 293                             180.0+  67   7      1          4        1   130
#> 294                             180.0+  63   2      1          0        0    99
#> 295                               99.0  69   6      0         99        1   140
#> 296                             180.0+  65   4      1          1        0   130
#> 297                             179.0+  64   4      0        179        0   160
#> 298                             180.0+  70  15      1         12        1   132
#> 299                              11.0+  64  11      0         11        0   125
#> 300                             180.0+  64   4      0        180        1   140
#> 301                                0.5  64   0      1          0        1   118
#> 302                               18.0  67   2      0         18        0   131
#> 303                               7.0+  66   7      1          5        1   131
#> 304                             152.0+  69   4      1          3        1   150
#> 305                             180.0+  65  13      1         12        1   130
#> 306                             180.0+  69  17      1         10        0   140
#> 307                             180.0+  66   6      0        180        0   140
#> 308                              101.0  65   6      0        101        1   115
#> 309                                4.0  68   4      0          4        1   190
#> 310                               7.0+  70   7      1          0        1   190
#> 311                              150.0  68   7      0        150        0   210
#> 312                             180.0+  71  20      1          0        1   160
#> 313                             180.0+  67   2      0        180        0   128
#> 314                             180.0+  66   9      1          3        1   151
#> 315                             180.0+  69   8      0        180        1   153
#> 316                              171.0  70  14      0        171        0   166
#> 317                             174.0+  67  10      1          9        0   200
#> 318                                6.0  67   6      1          4        0   130
#> 319                             180.0+  68  18      1         14        1   170
#> 320                                0.5  69   0      0          0        1   148
#> 321                             180.0+  65   2      0        180        0   130
#> 322                             180.0+  69   3      1          2        0   151
#> 323                              14.0+  65  14      1         13        1   150
#> 324                             180.0+  69   8      0        180        1   180
#> 325                               7.0+  71   7      0          7        0   230
#> 326                                2.0  66   2      0          2        1   228
#> 327                               45.0  71   6      0         45        1   158
#> 328                               5.0+  69   5      0          5        1   142
#> 329                              103.0  71   3      0        103        0   133
#> 330                             180.0+  70  22      1         13        0   103
#> 331                               36.0  67   1      0         36        1   104
#> 332                               5.0+  67   5      0          5        0   130
#> 333                             180.0+  72   3      1          0        1   132
#> 334                                7.0  72   7      0          7        1   110
#> 335                             180.0+  67   3      0        180        0   110
#> 336                               2.0+  66   2      1          1        0   123
#> 337                             180.0+  69  19      0        180        0   130
#> 338                               18.0  68  18      0         18        1   100
#> 339                             180.0+  66   2      0        180        0   130
#> 340                                7.0  67   7      1          4        0   122
#> 341                             180.0+  69   4      1          3        0   132
#> 342                                7.0  68   2      0          7        1   130
#> 343                               8.0+  69   8      1          2        0   121
#> 344                              123.0  70   3      0        123        0   130
#> 345                             180.0+  72   5      1          4        0   170
#> 346                               51.0  67  22      1          1        1   140
#> 347                               19.0  68   3      0         19        0   135
#> 348                             180.0+  67  12      1          8        0   120
#> 349                                1.0  69   1      0          1        1   110
#> 350                                1.0  67   1      0          1        1    60
#> 351                               76.0  69   5      0         76        0   120
#> 352                             180.0+  67   8      1          0        1   130
#> 353                              132.0  72  13      1         11        1   195
#> 354                              10.0+  68  10      1          8        1   160
#> 355                             180.0+  70  35      1          0        1   105
#> 356                              162.0  72  30      1          0        1   145
#> 357                               7.0+  70   7      0          7        0   102
#> 358                               7.0+  68   7      1          2        0   135
#> 359                              124.0  73  20      1          0        1   170
#> 360                                9.0  71   6      0          9        0   120
#> 361                             180.0+  69  10      1          6        1   120
#> 362                               12.0  72  12      1         10        0   170
#> 363                             180.0+  67   5      1          0        1   147
#> 364                             180.0+  67   9      0        180        0   158
#> 365                             180.0+  70   5      0        180        0   150
#> 366                                2.0  72   2      0          2        1   100
#> 367                               76.0  67   4      1          1        0   134
#> 368                             173.0+  71   1      0        173        1   188
#> 369                             180.0+  68  23      0        180        1   220
#> 370                             180.0+  70   3      0        180        0   121
#> 371                             180.0+  69   3      0        180        0   220
#> 372                             180.0+  71   3      1          2        0   150
#> 373                               28.0  72   5      0         28        0   120
#> 374                             180.0+  71   5      0        180        0   191
#> 375                             180.0+  73   6      0        180        1   117
#> 376                             180.0+  69   8      1          1        0   164
#> 377                              16.0+  72  16      1          1        1   130
#> 378                             180.0+  69   1      1          0        0   155
#> 379                                6.0  73   6      1          0        1   270
#> 380                               15.0  68  15      1         13        1   130
#> 381                               3.0+  70   3      0          3        1   159
#> 382                              13.0+  70  13      1          9        0   100
#> 383                             180.0+  72   6      0        180        1   130
#> 384                             180.0+  73   0      0        180        1   161
#> 385                             180.0+  73   4      0        180        1   154
#> 386                               3.0+  71   3      1          1        0   150
#> 387                               20.0  74  20      0         20        1   180
#> 388                             180.0+  68   9      0        180        1   120
#> 389                               20.0  71  20      1         10        0   140
#> 390                                0.5  74   0      1          0        1    90
#> 391                             180.0+  73   3      1          0        1   136
#> 392                             180.0+  70   5      1          0        1   190
#> 393                             180.0+  71  17      1         11        0   160
#> 394                                8.0  71   8      1          7        0   149
#> 395                                3.0  71   3      1          2        1   190
#> 396                               87.0  73  10      1          8        0   106
#> 397                               12.0  69  12      1          1        1   149
#> 398                               4.0+  74   4      0          4        0   120
#> 399                               58.0  73   4      0         58        1   160
#> 400                             180.0+  72   5      1          3        1   160
#> 401                             180.0+  73   6      0        180        0   110
#> 402                                3.0  74   3      0          3        1   150
#> 403                              175.0  71  13      1          8        0   121
#> 404                                2.0  69   2      1          1        1    80
#> 405                             180.0+  70   4      1          0        1   140
#> 406                              14.0+  71  14      1         13        1   170
#> 407                             180.0+  74   7      1          0        1   117
#> 408                              10.0+  72  10      1          8        1   153
#> 409                             180.0+  72  15      1         13        0   156
#> 410                               8.0+  70   8      0          8        0   120
#> 411                             179.0+  71  10      1          9        1   120
#> 412                                1.0  75   1      0          1        0   133
#> 413                             180.0+  75   2      1          1        0   145
#> 414                             180.0+  73  10      1          9        1   146
#> 415                               15.0  73  10      1         10        1   120
#> 416                             180.0+  75   9      1          7        0   140
#> 417                               13.0  75  13      1          1        1   130
#> 418                               4.0+  71   4      0          4        0   134
#> 419                             180.0+  72  15      1         12        1   120
#> 420                                1.0  72   1      1          1        0   168
#> 421                             180.0+  73  10      0        180        0   162
#> 422                               3.0+  70   3      0          3        0   150
#> 423                             180.0+  76  25      1         12        1   170
#> 424                             180.0+  72   2      0        180        0   120
#> 425                             180.0+  75   1      0        180        1   140
#> 426                             180.0+  73   5      0        180        0   126
#> 427                               34.0  74  34      1          8        1   233
#> 428                             180.0+  76   3      1          0        1   120
#> 429                             177.0+  71  32      1         12        1   107
#> 430                             180.0+  72   5      0        180        0   154
#> 431                             180.0+  72   3      0        180        0   160
#> 432                                5.0  76   5      0          5        1   130
#> 433                              11.0+  77  11      0         11        1   150
#> 434                               4.0+  77   4      0          4        0   185
#> 435                             180.0+  75   3      1          1        0   180
#> 436                                7.0  72   7      1          2        0   142
#> 437                               10.0  73  10      1         10        0   124
#> 438                             180.0+  74   7      0        180        1   150
#> 439                                3.0  74   3      0          3        1   128
#> 440                             180.0+  76   1      0        180        0   114
#> 441                             180.0+  74   2      1          1        0   140
#> 442                             180.0+  76   8      1          0        1   141
#> 443                             180.0+  74  19      1          4        1   200
#> 444                                6.0  73   6      0          6        1   114
#> 445                             180.0+  74   2      0        180        0   190
#> 446                             180.0+  72   4      1          3        0   160
#> 447                              17.0+  76  17      1          0        1   200
#> 448                                7.0  75   7      0          7        0   190
#> 449                             180.0+  73  13      1         11        0   195
#> 450                             180.0+  74   8      1          0        1   105
#> 451                             180.0+  76  13      1          8        1   148
#> 452                               46.0  75   4      1          2        1   188
#> 453                             180.0+  74   6      0        180        0   160
#> 454                                1.0  75   1      0          1        1   125
#> 455                             180.0+  74   2      0        180        0   111
#> 456                             180.0+  73   0      0        180        0   156
#> 457                             180.0+  72   5      0        180        0   120
#> 458                               12.0  78  12      1         11        1   160
#> 459                             180.0+  76   5      0        180        0   185
#> 460                             180.0+  74  10      1          0        1   135
#> 461                             180.0+  76   5      1          0        1   167
#> 462                                8.0  74   8      1          8        1   170
#> 463                                5.0  77   5      1          0        0   123
#> 464                             180.0+  77  12      1          9        1   100
#> 465                             180.0+  73  10      1          9        0   146
#> 466                               12.0  76  12      1         11        1   120
#> 467                             180.0+  78   5      1          0        1   170
#> 468                               7.0+  73   7      1          0        0   174
#> 469                               79.0  74   6      0         79        1   140
#> 470                                3.0  75   3      1          1        1   171
#> 471                             168.0+  74   9      1          8        0   200
#> 472                             180.0+  75   6      0        180        0   150
#> 473                               18.0  78  18      0         18        1   144
#> 474                             180.0+  77   3      0        180        0   110
#> 475                               47.0  76  29      0         47        0    90
#> 476                               11.0  73  11      1          2        1   110
#> 477                                7.0  78   7      0          7        1   133
#> 478                               8.0+  78   8      1          6        1   110
#> 479                                7.0  74   7      0          7        0   161
#> 480                             180.0+  76  13      1          1        1   170
#> 481                             180.0+  79   6      0        180        0   170
#> 482                               10.0  80  10      1          6        1   147
#> 483                             180.0+  78   0      0        180        1   212
#> 484                              172.0  78  13      1          5        0   130
#> 485                              119.0  75   5      0        119        1   150
#> 486                             180.0+  78  15      0        180        1   270
#> 487                                8.0  80   8      0          8        1   120
#> 488                             180.0+  74  10      1          8        0   135
#> 489                                1.0  76   1      0          1        1    83
#> 490                               80.0  79   4      0         80        0   145
#> 491                             180.0+  78   2      1          1        0   130
#> 492                             180.0+  78  10      0        180        1   130
#> 493                             152.0+  75  11      1          4        0   162
#> 494                                3.0  75   3      0          3        0     0
#> 495                               24.0  77  24      0         24        1   160
#> 496                               23.0  80   9      0         23        1   128
#> 497                                6.0  80   6      0          6        1   150
#> 498                             180.0+  78   6      1          0        1   240
#> 499                               3.0+  76   3      1          0        1   140
#> 500                             180.0+  79  11      0        180        0   160
#> 501                             180.0+  79   2      1          0        1   121
#> 502                             180.0+  78  14      1          0        1   140
#> 503                                4.0  79   4      0          4        1   125
#> 504                             180.0+  76  12      1         10        1   127
#> 505                                6.0  77   6      0          6        1   107
#> 506                               2.0+  75   2      1          1        1   204
#> 507                             180.0+  78  11      0        180        1   135
#> 508                                1.0  76   1      0          1        1   140
#> 509                                1.0  76   1      0          1        1    90
#> 510                                3.0  79   3      0          3        0   120
#> 511                             180.0+  77   7      0        180        1   170
#> 512                              138.0  79   4      1          0        1   120
#> 513                             180.0+  80  15      1         12        1   150
#> 514                                8.0  82   5      0          8        1   120
#> 515                               59.0  78   4      0         59        1   112
#> 516                               17.0  80  17      1         12        0   100
#> 517                             180.0+  80  15      1          0        1    90
#> 518                               93.0  81   4      1          2        1   126
#> 519                              118.0  80   9      0        118        1   186
#> 520                               37.0  79   1      0         37        1   140
#> 521                             175.0+  81   2      0        175        0   172
#> 522                               7.0+  78   7      0          7        1   147
#> 523                             180.0+  78   4      0        180        0   175
#> 524                                3.0  79   3      0          3        1   101
#> 525                             171.0+  78  26      1          5        0   194
#> 526                             166.0+  76   1      0        166        0   131
#> 527                               71.0  81   4      1          1        1   104
#> 528                                1.0  80   1      0          1        0   100
#> 529                               3.0+  78   3      1          1        1   152
#> 530                               10.0  77  10      1          8        1   130
#> 531                             180.0+  82   3      1          1        1   144
#> 532                               85.0  77   5      0         85        0   188
#> 533                               6.0+  79   6      0          6        0   152
#> 534                                6.0  80   6      1          0        1   119
#> 535                                5.0  80   5      0          5        1   130
#> 536                                1.0  82   1      1          0        1    82
#> 537                             180.0+  79  10      0        180        1   150
#> 538                             180.0+  77   4      0        180        1    98
#> 539                              108.0  81   1      0        108        0   129
#> 540                              125.0  79   1      0        125        0   193
#> 541                             180.0+  82  21      1          2        0   155
#> 542                             180.0+  84  22      1         10        0   180
#> 543                                6.0  80   6      0          6        1   110
#> 544                               9.0+  83   9      1          5        1   170
#> 545                             180.0+  82   5      0        180        0   110
#> 546                             180.0+  83   5      0        180        0   148
#> 547                              103.0  83   4      0        103        0    97
#> 548                               70.0  78  23      1         10        1   145
#> 549                                4.0  79   4      0          4        1   183
#> 550                             180.0+  78   9      1          4        1   120
#> 551                             180.0+  82   8      1          1        0   128
#> 552                               7.0+  80   7      1          0        1   146
#> 553                             180.0+  84   5      1          1        1    85
#> 554                               16.0  81  16      0         16        1   110
#> 555                             180.0+  81   8      0        180        0   146
#> 556                             180.0+  80   8      1          7        0   160
#> 557                                0.5  79   0      1          0        1    96
#> 558                             180.0+  85   4      0        180        0    90
#> 559                             180.0+  81   2      1          1        0   198
#> 560                              128.0  82   6      0        128        1   100
#> 561                             180.0+  84   5      0        180        1   203
#> 562                                4.0  84   4      0          4        1    85
#> 563                                1.0  81   1      0          1        1   150
#> 564                               38.0  84   1      0         38        1   205
#> 565                             180.0+  83   3      0        180        0   174
#> 566                               90.0  81   4      0         90        1   138
#> 567                             180.0+  80  13      1          8        1   140
#> 568                               89.0  84   4      0         89        1   129
#> 569                             180.0+  80   2      1          0        1   130
#> 570                                4.0  79   4      0          4        1    60
#> 571                                1.0  83   1      0          1        1   100
#> 572                               19.0  82  19      0         19        0   120
#> 573                               30.0  80  30      1         13        0   220
#> 574                             180.0+  83   9      0        180        0   198
#> 575                             180.0+  79  14      1          0        0   110
#> 576                              114.0  83   3      0        114        0    98
#> 577                             180.0+  81  14      1         12        1   128
#> 578                              154.0  83   2      0        154        0   130
#> 579                             180.0+  85   9      1          6        1   160
#> 580                                1.0  81   1      0          1        1   145
#> 581                               12.0  81  12      0         12        1   163
#> 582                              16.0+  82  16      1          8        0   103
#> 583                               5.0+  82   5      1          0        1   146
#> 584                             180.0+  86  12      0        180        1   120
#> 585                               77.0  83  12      1          2        1   170
#> 586                             180.0+  81  19      1         14        0   120
#> 587                               83.0  82  15      1          0        0   183
#> 588                               88.0  80   2      0         88        0   135
#> 589                              165.0  84   6      0        165        0   145
#> 590                                3.0  86   3      0          3        1   140
#> 591                             180.0+  82   9      0        180        1   134
#> 592                             180.0+  84   3      0        180        1   120
#> 593                             180.0+  81  13      0        180        0   152
#> 594                             180.0+  81   2      1          0        1   118
#> 595                             180.0+  81   4      0        180        0   160
#> 596                             180.0+  83   9      0        180        1   149
#> 597                             180.0+  82   1      0        180        1   193
#> 598                                5.0  87   2      0          5        1   137
#> 599                             180.0+  86  12      1          0        1   132
#> 600                              174.0  82  14      1         11        1   103
#> 601                                6.0  86   6      1          0        1   140
#> 602                               70.0  84  16      0         70        1   150
#> 603                             180.0+  84   3      1          2        0   125
#> 604                             180.0+  83  10      1          0        1   190
#> 605                             180.0+  86   2      0        180        1   169
#> 606                               14.0  88  14      1          3        1   130
#> 607                                3.0  84   3      0          3        1   121
#> 608                               13.0  83  13      1         12        0   170
#> 609                             180.0+  84   7      1          2        0   148
#> 610                               92.0  84   9      0         92        1   110
#> 611                             180.0+  84   3      0        180        1   170
#> 612                                4.0  82   4      0          4        0   130
#> 613                               3.0+  85   3      0          3        1   113
#> 614                               6.0+  86   6      0          6        1   117
#> 615                               62.0  84  13      0         62        1   100
#> 616                               6.0+  86   6      1          1        0   112
#> 617                               4.0+  88   4      0          4        0   100
#> 618                               20.0  83  20      1          3        1   150
#> 619                                4.0  88   4      0          4        1   115
#> 620                               22.0  85  22      0         22        1   184
#> 621                               65.0  83   9      0         65        1   150
#> 622                               11.0  86   9      1          7        1   142
#> 623                             180.0+  87   2      0        180        1   130
#> 624                               46.0  86   6      0         46        0   173
#> 625                               3.0+  83   3      0          3        1   130
#> 626                             180.0+  86  15      1          8        1   109
#> 627                               1.0+  87   1      0          1        0   170
#> 628                             180.0+  84   8      0        180        1   119
#> 629                                8.0  85   8      0          8        1   136
#> 630                               29.0  87  29      0         29        1    97
#> 631                             180.0+  87  15      1          9        1   138
#> 632                             180.0+  84   0      0        180        1   136
#> 633                               46.0  89  10      0         46        1   170
#> 634                               1.0+  88   1      0          1        0   135
#> 635                             180.0+  86   4      0        180        1   145
#> 636                                8.0  91   8      0          8        0   100
#> 637                               25.0  87   6      1          0        0   125
#> 638                              145.0  91  10      0        145        0   135
#> 639                                3.0  86   3      1          0        1    80
#> 640                               24.0  88   7      0         24        0   119
#> 641                               50.0  88   8      0         50        1   154
#> 642                               11.0  90  11      1         10        1   186
#> 643                              126.0  87   6      0        126        1   168
#> 644                             180.0+  86  10      0        180        1   137
#> 645                                1.0  91   1      0          1        1    74
#> 646                             178.0+  87  43      0        178        1   130
#> 647                               36.0  87   5      0         36        1   150
#> 648                               89.0  90   5      1          0        1   125
#> 649                               3.0+  89   3      1          1        1   160
#> 650                                1.0  92   1      0          1        1   167
#> 651                              158.0  88   5      0        158        0   100
#> 652                               74.0  87   7      0         74        1   105
#> 653                             180.0+  89  12      1          0        1   130
#> 654                               52.0  89  52      0         52        1   130
#> 655                                4.0  89   4      0          4        1   159
#> 656                             180.0+  89  14      0        180        1    84
#> 657                             180.0+  90  18      0        180        0   188
#> 658                                4.0  91   4      1          0        1   120
#> 659                             180.0+  90  19      1         11        1   129
#> 660                               50.0  94   6      0         50        0    78
#> 661                                2.0  91   2      0          2        1   116
#> 662                               8.0+  94   8      0          8        1   142
#> 663                               76.0  92   4      0         76        1   149
#> 664                               16.0  90  16      0         16        1   106
#> 665                               67.0  90   3      0         67        0   162
#> 666                               12.0  96   3      0         12        1    97
#> 667                                8.0  95   8      1          5        1   150
#> 668                                0.5  93   0      1          0        1   122
#> 669                                3.0  96   3      1          0        1   104
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1
#>  [38] 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1
#>  [75] 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1
#> [112] 1 0 1 0 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1
#> [149] 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1
#> [186] 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0
#> [223] 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [260] 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0
#> [297] 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0
#> [371] 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0
#> [408] 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#> [445] 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1
#> [482] 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [519] 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1
#> [556] 0 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 0
#> [593] 1 0 0 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0
#> [630] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[2]]
#>   [1] 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1
#>  [38] 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1
#>  [75] 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0
#> [112] 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0
#> [149] 1 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0
#> [186] 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0
#> [223] 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1
#> [260] 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1
#> [297] 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1
#> [334] 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [371] 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 0 0 1
#> [408] 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1
#> [445] 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1
#> [482] 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 0 0 0
#> [519] 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1
#> [556] 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1
#> [593] 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1
#> [630] 0 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[3]]
#>   [1] 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1
#>  [38] 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 0 1
#>  [75] 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 0
#> [112] 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1
#> [149] 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1
#> [186] 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [223] 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0
#> [260] 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 0 1 0 0
#> [297] 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1
#> [334] 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1
#> [371] 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0
#> [408] 1 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 0 0 0 1 1
#> [445] 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1
#> [482] 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1
#> [519] 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1
#> [556] 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 0 0 1 0 1 1 1 0
#> [593] 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0
#> [630] 0 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[4]]
#>   [1] 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1
#>  [38] 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 0
#>  [75] 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1
#> [112] 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 0 0 1 0 0 0 0
#> [149] 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1
#> [186] 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1
#> [223] 0 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [260] 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 0 0 1 1 0 0
#> [297] 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [334] 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1 1 1
#> [371] 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0
#> [408] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0 0
#> [445] 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 0 1 0 0 0 0 1 1 1 0 1
#> [482] 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [519] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 0 1
#> [556] 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1
#> [593] 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1
#> [630] 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1
#> [667] 0 1 0 0
#> 
#> $weights[[5]]
#>   [1] 0 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1
#>  [38] 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1
#>  [75] 1 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1
#> [112] 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1
#> [149] 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [186] 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1
#> [223] 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 1
#> [260] 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1
#> [297] 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 1 1 0 0
#> [334] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1
#> [371] 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0
#> [408] 0 0 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 0
#> [445] 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1
#> [482] 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0
#> [519] 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1
#> [556] 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0
#> [593] 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1
#> [630] 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[6]]
#>   [1] 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1
#>  [38] 0 0 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0
#>  [75] 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1
#> [112] 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [149] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1
#> [186] 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0
#> [223] 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1
#> [260] 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [297] 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0
#> [334] 0 1 1 0 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1
#> [371] 1 0 0 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [408] 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0
#> [445] 0 0 0 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0
#> [482] 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0
#> [519] 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0
#> [556] 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1
#> [593] 1 0 0 1 1 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0
#> [630] 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[7]]
#>   [1] 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1
#>  [38] 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0
#>  [75] 1 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [112] 0 0 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1
#> [149] 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1
#> [186] 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1
#> [223] 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0
#> [260] 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1
#> [297] 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0
#> [334] 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0
#> [371] 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 0 1 1
#> [408] 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0
#> [445] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 1 1 0 0 1
#> [482] 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1
#> [519] 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0
#> [556] 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0
#> [593] 0 1 0 1 0 1 0 1 1 1 0 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0
#> [630] 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[8]]
#>   [1] 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1
#>  [38] 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0
#>  [75] 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [112] 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1
#> [149] 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [186] 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1
#> [223] 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0
#> [260] 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1
#> [297] 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 0 0 0
#> [334] 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1
#> [371] 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 0 0
#> [408] 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0
#> [445] 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [482] 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1
#> [519] 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0
#> [556] 0 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1
#> [593] 0 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 0
#> [630] 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0
#> [667] 1 0 0 0
#> 
#> $weights[[9]]
#>   [1] 0 1 1 0 1 1 0 1 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1
#>  [38] 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1
#>  [75] 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0
#> [112] 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [149] 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 0 0 1
#> [186] 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0
#> [223] 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0
#> [260] 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0
#> [297] 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 0 0 1 0 0 1 1 1
#> [334] 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1
#> [371] 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 1 1 1 0 1 1 0 0 0 0 1 0
#> [408] 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1
#> [445] 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 0 0 1 1
#> [482] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1
#> [519] 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1
#> [556] 0 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1
#> [593] 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1
#> [630] 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[10]]
#>   [1] 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1
#>  [38] 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0
#>  [75] 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1
#> [112] 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0
#> [149] 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [186] 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1
#> [223] 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 0
#> [260] 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 0
#> [297] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 0 1 1 0
#> [334] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1
#> [371] 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 1 1 0 0 1 1 0 0
#> [408] 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0
#> [445] 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [482] 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1
#> [519] 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1
#> [556] 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1
#> [593] 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0
#> [630] 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 0 0
#> [667] 1 0 0 1
#> 
#> $weights[[11]]
#>   [1] 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1
#>  [38] 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1
#>  [75] 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0
#> [112] 1 0 1 1 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1
#> [149] 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1
#> [186] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0
#> [223] 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1
#> [260] 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 0
#> [297] 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [334] 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0
#> [371] 0 0 0 1 0 1 1 0 1 0 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1
#> [408] 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1
#> [445] 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1
#> [482] 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1
#> [519] 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0
#> [556] 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1
#> [593] 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1
#> [630] 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[12]]
#>   [1] 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 0 0 1 0
#>  [38] 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0
#>  [75] 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [112] 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1
#> [149] 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [186] 0 0 1 0 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1
#> [223] 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1
#> [260] 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1
#> [297] 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [334] 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0
#> [371] 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0
#> [408] 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0
#> [445] 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0
#> [482] 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1
#> [519] 0 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [556] 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 0
#> [593] 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1
#> [630] 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 1 0 0 1 0 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[13]]
#>   [1] 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#>  [38] 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1
#>  [75] 1 0 0 1 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0
#> [112] 1 1 1 1 0 0 0 0 1 0 0 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [149] 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 0 1 0 0 0
#> [186] 0 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0
#> [223] 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1
#> [260] 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1
#> [297] 0 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [334] 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0 0 1
#> [371] 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [408] 1 0 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0
#> [445] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [482] 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [519] 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [556] 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1
#> [593] 0 0 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1
#> [630] 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[14]]
#>   [1] 1 1 0 0 0 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1
#>  [38] 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0
#>  [75] 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1
#> [112] 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [149] 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1
#> [186] 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0
#> [223] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [260] 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 0
#> [297] 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1
#> [334] 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1
#> [371] 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0
#> [408] 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1
#> [445] 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1
#> [482] 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1
#> [519] 1 0 0 0 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [556] 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 0
#> [593] 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 0 0 0 1
#> [630] 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 1 0 0 1 0 0 0 1 0 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[15]]
#>   [1] 1 1 1 0 1 0 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1
#>  [38] 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0
#>  [75] 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0
#> [112] 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 1
#> [149] 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0
#> [186] 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1
#> [223] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0
#> [260] 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1
#> [297] 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 0 1
#> [334] 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 0 1 0 1 1 1 0
#> [371] 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0
#> [408] 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [445] 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 0
#> [482] 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0
#> [519] 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 0 0 1 0 0 1 1 1
#> [556] 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1
#> [593] 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 0 1
#> [630] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1
#> [667] 1 0 1 0
#> 
#> $weights[[16]]
#>   [1] 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0
#>  [38] 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1
#>  [75] 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1
#> [112] 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1
#> [149] 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 0 1
#> [186] 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1
#> [223] 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1
#> [260] 1 1 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1
#> [297] 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0
#> [334] 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 1
#> [371] 1 0 1 1 1 0 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [408] 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 0 0
#> [445] 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 0 0 0 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0
#> [482] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1
#> [519] 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1
#> [556] 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1
#> [593] 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [630] 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[17]]
#>   [1] 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0
#>  [38] 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1
#>  [75] 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0
#> [112] 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1
#> [149] 1 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1
#> [186] 0 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0
#> [223] 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1
#> [260] 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [297] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1
#> [334] 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1
#> [371] 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1 0
#> [408] 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1
#> [445] 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1
#> [482] 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 0
#> [519] 0 1 0 0 0 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1
#> [556] 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0
#> [593] 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0
#> [630] 1 0 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0
#> [667] 1 0 0 0
#> 
#> $weights[[18]]
#>   [1] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1
#>  [38] 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 0 0 1 1
#>  [75] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 0
#> [112] 0 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1
#> [149] 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1
#> [186] 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0
#> [223] 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [260] 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [297] 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1
#> [334] 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0
#> [371] 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0
#> [408] 0 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0
#> [445] 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0
#> [482] 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [519] 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [556] 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1
#> [593] 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1
#> [630] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[19]]
#>   [1] 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1
#>  [38] 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1
#>  [75] 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [112] 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [149] 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 0 0 1 0 1 0 1 0
#> [186] 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1
#> [223] 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1
#> [260] 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 0 0 1 1 1
#> [297] 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1
#> [334] 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1
#> [371] 0 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1
#> [408] 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1
#> [445] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0
#> [482] 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1
#> [519] 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0
#> [556] 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 1 1
#> [593] 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1
#> [630] 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[20]]
#>   [1] 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1
#>  [38] 1 0 1 0 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0
#>  [75] 0 0 0 0 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0
#> [112] 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1
#> [149] 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1
#> [186] 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1
#> [223] 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1
#> [260] 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1
#> [297] 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [334] 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1
#> [371] 0 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 1
#> [408] 0 1 1 0 0 0 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0
#> [445] 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 1
#> [482] 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [519] 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1
#> [556] 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1
#> [593] 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0
#> [630] 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[21]]
#>   [1] 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1
#>  [38] 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1 0 0
#>  [75] 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1
#> [112] 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1
#> [149] 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1
#> [186] 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 1 0
#> [223] 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1
#> [260] 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1
#> [297] 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 1 0
#> [334] 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [371] 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0 1 1 0
#> [408] 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1
#> [445] 0 1 1 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1
#> [482] 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0
#> [519] 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1
#> [556] 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1
#> [593] 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
#> [630] 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[22]]
#>   [1] 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1
#>  [38] 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1
#>  [75] 0 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1
#> [112] 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1
#> [149] 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1
#> [186] 0 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [223] 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 0 0 0
#> [260] 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1
#> [297] 0 0 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1
#> [334] 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0
#> [371] 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0
#> [408] 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 0
#> [445] 1 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0
#> [482] 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1
#> [519] 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1
#> [556] 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1
#> [593] 0 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [630] 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[23]]
#>   [1] 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1
#>  [38] 0 1 1 1 0 1 1 1 0 0 1 1 0 0 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1
#>  [75] 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1
#> [112] 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [149] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [186] 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0
#> [223] 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [260] 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 0
#> [297] 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1
#> [334] 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1
#> [371] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1
#> [408] 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1
#> [445] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1
#> [482] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1
#> [519] 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [556] 0 0 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1
#> [593] 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1
#> [630] 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[24]]
#>   [1] 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1
#>  [38] 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1
#>  [75] 1 0 0 1 0 0 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0
#> [112] 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [149] 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [186] 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1
#> [223] 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 1 0
#> [260] 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0
#> [297] 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [334] 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1
#> [371] 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1
#> [408] 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1
#> [445] 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0
#> [482] 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0
#> [519] 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 1 0 0 0
#> [556] 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1
#> [593] 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [630] 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[25]]
#>   [1] 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 0 0 1 1 0 1 0 1 1
#>  [38] 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1
#>  [75] 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [112] 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [149] 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 1 0 0 0 1 1 0 1 0 0 1 0 0 0 0 1 1
#> [186] 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 0
#> [223] 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0
#> [260] 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [297] 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 0 0 1
#> [334] 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1
#> [371] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0
#> [408] 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1
#> [445] 1 0 0 0 1 1 1 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1
#> [482] 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0
#> [519] 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 0 0 0 1 1 1
#> [556] 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1 0 1
#> [593] 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1
#> [630] 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[26]]
#>   [1] 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1
#>  [38] 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0
#>  [75] 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1
#> [112] 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1
#> [149] 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [186] 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1
#> [223] 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1
#> [260] 0 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1
#> [297] 0 1 1 1 0 1 1 0 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0
#> [334] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0
#> [371] 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1
#> [408] 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0
#> [445] 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0
#> [482] 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0
#> [519] 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1
#> [556] 0 0 0 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [593] 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1
#> [630] 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[27]]
#>   [1] 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0
#>  [38] 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1
#>  [75] 0 0 0 0 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 0
#> [112] 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0
#> [149] 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0
#> [186] 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1
#> [223] 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [260] 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [297] 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 0 0 1
#> [334] 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1
#> [371] 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1
#> [408] 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [445] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [482] 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1
#> [519] 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 0 0 0
#> [556] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [593] 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [630] 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[28]]
#>   [1] 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1
#>  [38] 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1
#>  [75] 0 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1
#> [112] 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0
#> [149] 1 0 0 1 1 0 0 0 1 1 1 0 0 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [186] 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [223] 0 1 1 1 0 0 0 1 0 1 0 1 1 0 0 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0
#> [260] 1 0 0 1 0 0 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1
#> [297] 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0
#> [334] 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1 1 0 0 0 0 0 0 1 0 0 1 1 1
#> [371] 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1
#> [408] 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0
#> [445] 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 0 0 0 1 1
#> [482] 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0
#> [519] 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 0 0 1
#> [556] 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [593] 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0
#> [630] 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[29]]
#>   [1] 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 0 0 0 1 0
#>  [38] 0 0 1 1 0 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1
#>  [75] 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [112] 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0
#> [149] 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1
#> [186] 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1
#> [223] 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1
#> [260] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 0 0 0 1
#> [297] 0 0 0 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1
#> [334] 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1
#> [371] 1 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1
#> [408] 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1
#> [445] 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 0
#> [482] 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0
#> [519] 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1
#> [556] 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0
#> [593] 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [630] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[30]]
#>   [1] 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0
#>  [38] 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 0 0 1 1
#>  [75] 0 1 1 0 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0
#> [112] 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0
#> [149] 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0
#> [186] 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0
#> [223] 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1
#> [260] 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1
#> [297] 1 1 0 0 0 0 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1
#> [334] 0 1 1 0 0 1 0 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0
#> [371] 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 0 0 0 0 1
#> [408] 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0
#> [445] 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0
#> [482] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0
#> [519] 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1
#> [556] 1 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1
#> [593] 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1
#> [630] 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0
#> [667] 1 1 0 0
#> 
#> $weights[[31]]
#>   [1] 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1
#>  [75] 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 0
#> [112] 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1
#> [149] 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1
#> [186] 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1
#> [223] 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [260] 0 1 1 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [297] 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1
#> [334] 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1
#> [371] 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [408] 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1
#> [445] 0 1 1 1 0 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0
#> [482] 1 1 0 0 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [519] 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0
#> [556] 1 0 0 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 0 0
#> [593] 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1
#> [630] 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0
#> [667] 0 1 0 0
#> 
#> $weights[[32]]
#>   [1] 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1
#>  [38] 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0
#>  [75] 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0
#> [112] 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 0 1 1
#> [186] 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 0 1 1
#> [223] 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 0 1 0 1 1 1 1
#> [260] 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0
#> [297] 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1
#> [334] 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1
#> [371] 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1
#> [408] 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1
#> [445] 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0
#> [482] 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [519] 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0
#> [556] 1 0 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [593] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [630] 0 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 0 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[33]]
#>   [1] 0 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1
#>  [38] 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0
#>  [75] 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1
#> [112] 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0
#> [149] 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0
#> [186] 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 0 0 1
#> [223] 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [260] 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1
#> [297] 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 0 0
#> [334] 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1
#> [371] 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [408] 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1 0
#> [445] 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 0 0 1
#> [482] 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [519] 0 1 0 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1
#> [556] 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1
#> [593] 1 1 0 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1
#> [630] 1 1 1 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[34]]
#>   [1] 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1
#>  [38] 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1
#>  [75] 1 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [112] 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0
#> [149] 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 1
#> [186] 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 0 0 0 1 0 1 1 0 1 1
#> [223] 0 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0
#> [260] 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1
#> [297] 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0
#> [334] 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1
#> [371] 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [408] 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1
#> [445] 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0
#> [482] 0 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1
#> [519] 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1
#> [556] 0 0 0 0 0 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0
#> [593] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 1 0
#> [630] 0 1 1 0 0 0 0 1 0 0 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[35]]
#>   [1] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0
#>  [38] 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0
#>  [75] 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1
#> [112] 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [149] 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0
#> [186] 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [223] 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 0 1 1
#> [260] 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1
#> [297] 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0
#> [334] 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1
#> [371] 0 0 0 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1
#> [408] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1
#> [445] 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1
#> [482] 1 1 0 0 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [519] 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0
#> [556] 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 0 1 0 1 1 1 0 0
#> [593] 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0
#> [630] 0 1 1 1 1 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[36]]
#>   [1] 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1
#>  [38] 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1
#>  [75] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 0
#> [112] 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1
#> [149] 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0
#> [186] 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1
#> [223] 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1
#> [260] 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0 1 1 0 1 0
#> [297] 0 1 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 0
#> [334] 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [371] 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1
#> [408] 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1
#> [445] 0 0 0 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [482] 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1
#> [519] 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [556] 0 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0
#> [630] 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1 1 0 0 0 1 0
#> [667] 0 1 0 0
#> 
#> $weights[[37]]
#>   [1] 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 0 1
#>  [38] 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#>  [75] 1 0 1 0 0 0 1 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1
#> [112] 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1
#> [149] 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [186] 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1
#> [223] 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [260] 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0
#> [297] 0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0 1
#> [334] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1
#> [371] 1 0 0 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [408] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0
#> [445] 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 0 1 1 1
#> [482] 0 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 0 1
#> [519] 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 1
#> [556] 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1
#> [593] 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0 0
#> [630] 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[38]]
#>   [1] 1 0 0 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#>  [38] 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0
#>  [75] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0
#> [112] 1 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1
#> [149] 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 0 1 0 1 0 1 0 1 0 1 1
#> [186] 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0
#> [223] 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [260] 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1
#> [297] 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1
#> [334] 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 0 1 0
#> [371] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1
#> [408] 0 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0
#> [445] 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [482] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1
#> [519] 1 0 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 1 0 0 1 0 1
#> [556] 0 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [593] 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [630] 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[39]]
#>   [1] 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 0 1 1 1
#>  [38] 0 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#>  [75] 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0
#> [112] 0 0 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0
#> [149] 0 0 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0
#> [186] 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 0 1 0 0 1 0 1 0 1 1 0
#> [223] 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1
#> [260] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0
#> [297] 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1
#> [334] 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> [371] 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1
#> [408] 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 0
#> [445] 1 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [482] 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0
#> [519] 0 1 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1
#> [556] 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 0 1
#> [593] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1
#> [630] 0 0 0 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[40]]
#>   [1] 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0
#>  [38] 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1
#>  [75] 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1
#> [112] 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 0
#> [149] 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 0
#> [186] 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 0 0 1 0 1
#> [223] 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1
#> [260] 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1
#> [297] 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1
#> [334] 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1
#> [371] 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [408] 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1
#> [445] 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1
#> [482] 1 0 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 0
#> [519] 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0
#> [556] 0 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0
#> [593] 1 0 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [630] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[41]]
#>   [1] 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 1
#>  [38] 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0
#>  [75] 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1
#> [112] 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1
#> [149] 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1
#> [186] 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1
#> [223] 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [260] 1 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [297] 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [334] 1 0 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1
#> [371] 0 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 0
#> [408] 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1
#> [445] 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0
#> [482] 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0
#> [519] 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 0 1 0 0 0 1 0 1 1 0 0 0 1 0 1 0 0 0 1 1 0 1
#> [556] 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 1 1 0 0 1 1
#> [593] 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [630] 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[42]]
#>   [1] 1 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 0
#>  [38] 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0
#>  [75] 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 0 0 0 0 0 1 0 1 0 0 1 1 0 0 0 0 1 1
#> [112] 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [149] 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 0 1
#> [186] 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [223] 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0
#> [260] 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0
#> [297] 1 0 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [334] 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1 0 0 0 0 1 1 1
#> [371] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1
#> [408] 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1
#> [445] 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1
#> [482] 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0
#> [519] 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 0 0 1 0 1 0 0 0 0 1 1 0
#> [556] 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0
#> [593] 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0
#> [630] 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[43]]
#>   [1] 1 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0
#>  [38] 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#>  [75] 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1
#> [112] 1 0 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1
#> [149] 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1
#> [186] 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1
#> [223] 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 1
#> [260] 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0
#> [297] 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1
#> [334] 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1
#> [371] 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [408] 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [445] 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 0 0 1 1 0
#> [482] 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0
#> [519] 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0
#> [556] 1 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0
#> [593] 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0
#> [630] 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[44]]
#>   [1] 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 0 1 0 0 1 1
#>  [38] 0 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1
#>  [75] 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0
#> [112] 1 1 0 0 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1
#> [149] 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0
#> [186] 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0
#> [223] 1 1 0 1 1 0 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [260] 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1
#> [297] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 0
#> [334] 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0
#> [371] 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [408] 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1
#> [445] 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [482] 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1
#> [519] 1 0 0 1 1 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1
#> [556] 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 0
#> [593] 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 0
#> [630] 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[45]]
#>   [1] 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1
#>  [38] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1
#>  [75] 1 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0
#> [112] 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0
#> [149] 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [186] 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 0 0
#> [223] 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0
#> [260] 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0
#> [297] 0 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1
#> [334] 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1
#> [371] 1 1 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0
#> [408] 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1
#> [445] 1 0 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1
#> [482] 1 0 1 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0
#> [519] 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0
#> [556] 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [593] 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1
#> [630] 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[46]]
#>   [1] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0
#>  [38] 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1
#>  [75] 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [112] 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1
#> [149] 0 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 0 1 0 0 1 0 1 0 1 0 0 0 0 1 0 0 1 1 1 0
#> [186] 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1
#> [223] 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1
#> [260] 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 1 0 0 1
#> [297] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [334] 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 0 0 1
#> [371] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1
#> [408] 1 1 0 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1
#> [445] 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
#> [482] 0 0 0 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [519] 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1
#> [556] 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0
#> [593] 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 0 0 1 0 0
#> [630] 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[47]]
#>   [1] 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 0 1 0 0 1 1
#>  [38] 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 0 1 1 0
#>  [75] 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1
#> [112] 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [149] 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 0 0 0
#> [186] 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1
#> [223] 0 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0
#> [260] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 0 0 1 0 0
#> [297] 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0
#> [334] 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1
#> [371] 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [408] 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [445] 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [482] 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0
#> [519] 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1
#> [556] 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [593] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0
#> [630] 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1 0 0 0 1 0 0 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[48]]
#>   [1] 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 0
#>  [38] 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1
#>  [75] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1
#> [112] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1
#> [149] 1 0 1 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 0 0 1
#> [186] 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0
#> [223] 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0
#> [260] 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1
#> [297] 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> [334] 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1
#> [371] 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0
#> [408] 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 0 0 1
#> [445] 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1
#> [482] 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1
#> [519] 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 0
#> [556] 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 0 0 0 0 0 0 1 1 0 1 0 0
#> [593] 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [630] 1 0 0 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[49]]
#>   [1] 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1
#>  [38] 1 1 1 0 0 1 0 0 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0
#>  [75] 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1
#> [112] 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1
#> [149] 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1
#> [186] 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0 0 0 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1 1
#> [223] 1 0 0 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1
#> [260] 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0
#> [297] 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0
#> [334] 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0
#> [371] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [408] 1 0 0 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1
#> [445] 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [482] 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1
#> [519] 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0
#> [556] 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1
#> [593] 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1
#> [630] 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[50]]
#>   [1] 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1
#>  [75] 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1
#> [112] 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0
#> [149] 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1
#> [186] 0 0 1 1 1 0 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1
#> [223] 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1
#> [260] 0 1 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [297] 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1
#> [334] 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1
#> [371] 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [408] 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0
#> [445] 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1
#> [482] 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0
#> [519] 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1
#> [556] 0 0 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1
#> [593] 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0 0 0 1 0 1 0 0 1 0 0 1 1 1
#> [630] 0 0 1 0 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1
#> [667] 0 0 1 0
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       2.0+
#> 3     3       5.0+
#> 4     4     180.0+
#> 5     5       5.0+
#> 6     6     180.0+
#> 7     7       2.0+
#> 8     8     180.0+
#> 9     9     180.0+
#> 10   10      115.0
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15     180.0+
#> 16   16       5.0+
#> 17   17       2.0+
#> 18   18     180.0+
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     155.0+
#> 25   25     180.0+
#> 26   26     180.0+
#> 27   27     180.0+
#> 28   28     180.0+
#> 29   29     180.0+
#> 30   30     180.0+
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33     180.0+
#> 34   34      150.0
#> 35   35     180.0+
#> 36   36     180.0+
#> 37   37     180.0+
#> 38   38     180.0+
#> 39   39       6.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43       73.0
#> 44   44     161.0+
#> 45   45     180.0+
#> 46   46     180.0+
#> 47   47     180.0+
#> 48   48     180.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55      10.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59        7.0
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62     180.0+
#> 63   63        2.0
#> 64   64     180.0+
#> 65   65     180.0+
#> 66   66     180.0+
#> 67   67       4.0+
#> 68   68     180.0+
#> 69   69     180.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74     180.0+
#> 75   75     180.0+
#> 76   76        7.0
#> 77   77       36.0
#> 78   78      88.0+
#> 79   79     180.0+
#> 80   80       4.0+
#> 81   81       77.0
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87       4.0+
#> 88   88       85.0
#> 89   89     180.0+
#> 90   90     166.0+
#> 91   91      16.0+
#> 92   92     180.0+
#> 93   93     152.0+
#> 94   94       7.0+
#> 95   95     180.0+
#> 96   96     180.0+
#> 97   97     180.0+
#> 98   98     180.0+
#> 99   99       28.0
#> 100 100       6.0+
#> 101 101        1.0
#> 102 102       9.0+
#> 103 103     180.0+
#> 104 104     180.0+
#> 105 105     175.0+
#> 106 106     180.0+
#> 107 107        2.0
#> 108 108     180.0+
#> 109 109       7.0+
#> 110 110     180.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115     180.0+
#> 116 116       16.0
#> 117 117      15.0+
#> 118 118     180.0+
#> 119 119     180.0+
#> 120 120     134.0+
#> 121 121     180.0+
#> 122 122        8.0
#> 123 123        2.0
#> 124 124       3.0+
#> 125 125     180.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128        1.0
#> 129 129      165.0
#> 130 130     180.0+
#> 131 131     180.0+
#> 132 132     180.0+
#> 133 133     180.0+
#> 134 134       8.0+
#> 135 135     180.0+
#> 136 136     180.0+
#> 137 137     180.0+
#> 138 138     180.0+
#> 139 139     180.0+
#> 140 140     171.0+
#> 141 141       15.0
#> 142 142       5.0+
#> 143 143     180.0+
#> 144 144       4.0+
#> 145 145     147.0+
#> 146 146     180.0+
#> 147 147     180.0+
#> 148 148       5.0+
#> 149 149     180.0+
#> 150 150       9.0+
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153     180.0+
#> 154 154     180.0+
#> 155 155     180.0+
#> 156 156     180.0+
#> 157 157        2.0
#> 158 158     180.0+
#> 159 159     180.0+
#> 160 160     180.0+
#> 161 161     180.0+
#> 162 162     180.0+
#> 163 163     161.0+
#> 164 164     171.0+
#> 165 165     180.0+
#> 166 166     180.0+
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169     180.0+
#> 170 170       17.0
#> 171 171       45.0
#> 172 172       3.0+
#> 173 173       19.0
#> 174 174       9.0+
#> 175 175     180.0+
#> 176 176     172.0+
#> 177 177     172.0+
#> 178 178     180.0+
#> 179 179     180.0+
#> 180 180       1.0+
#> 181 181     180.0+
#> 182 182     180.0+
#> 183 183       77.0
#> 184 184      13.0+
#> 185 185     180.0+
#> 186 186     180.0+
#> 187 187     180.0+
#> 188 188      170.0
#> 189 189       94.0
#> 190 190     180.0+
#> 191 191      169.0
#> 192 192       7.0+
#> 193 193        6.0
#> 194 194     180.0+
#> 195 195     180.0+
#> 196 196     180.0+
#> 197 197     180.0+
#> 198 198     180.0+
#> 199 199       28.0
#> 200 200      13.0+
#> 201 201        5.0
#> 202 202       18.0
#> 203 203       5.0+
#> 204 204     180.0+
#> 205 205     180.0+
#> 206 206     180.0+
#> 207 207        1.0
#> 208 208     180.0+
#> 209 209     180.0+
#> 210 210     180.0+
#> 211 211     180.0+
#> 212 212     180.0+
#> 213 213     180.0+
#> 214 214     180.0+
#> 215 215     180.0+
#> 216 216     180.0+
#> 217 217        9.0
#> 218 218       22.0
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221       84.0
#> 222 222       7.0+
#> 223 223     180.0+
#> 224 224     180.0+
#> 225 225     180.0+
#> 226 226        1.0
#> 227 227        1.0
#> 228 228     180.0+
#> 229 229       4.0+
#> 230 230      167.0
#> 231 231       6.0+
#> 232 232     180.0+
#> 233 233     180.0+
#> 234 234       12.0
#> 235 235     180.0+
#> 236 236     180.0+
#> 237 237     180.0+
#> 238 238      14.0+
#> 239 239       3.0+
#> 240 240       88.0
#> 241 241     180.0+
#> 242 242     180.0+
#> 243 243     180.0+
#> 244 244     180.0+
#> 245 245     180.0+
#> 246 246      12.0+
#> 247 247     180.0+
#> 248 248     180.0+
#> 249 249       12.0
#> 250 250        9.0
#> 251 251        3.0
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254      18.0+
#> 255 255     180.0+
#> 256 256     180.0+
#> 257 257     180.0+
#> 258 258       3.0+
#> 259 259      103.0
#> 260 260       15.0
#> 261 261     180.0+
#> 262 262     180.0+
#> 263 263     180.0+
#> 264 264     179.0+
#> 265 265     166.0+
#> 266 266      14.0+
#> 267 267       0.5+
#> 268 268     180.0+
#> 269 269     180.0+
#> 270 270     180.0+
#> 271 271       7.0+
#> 272 272        5.0
#> 273 273       16.0
#> 274 274     180.0+
#> 275 275     180.0+
#> 276 276     180.0+
#> 277 277       79.0
#> 278 278       80.0
#> 279 279      15.0+
#> 280 280       4.0+
#> 281 281       15.0
#> 282 282     180.0+
#> 283 283     180.0+
#> 284 284     174.0+
#> 285 285     180.0+
#> 286 286     180.0+
#> 287 287     180.0+
#> 288 288     180.0+
#> 289 289       8.0+
#> 290 290        3.0
#> 291 291       10.0
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294     180.0+
#> 295 295       99.0
#> 296 296     180.0+
#> 297 297     179.0+
#> 298 298     180.0+
#> 299 299      11.0+
#> 300 300     180.0+
#> 301 301        0.5
#> 302 302       18.0
#> 303 303       7.0+
#> 304 304     152.0+
#> 305 305     180.0+
#> 306 306     180.0+
#> 307 307     180.0+
#> 308 308      101.0
#> 309 309        4.0
#> 310 310       7.0+
#> 311 311      150.0
#> 312 312     180.0+
#> 313 313     180.0+
#> 314 314     180.0+
#> 315 315     180.0+
#> 316 316      171.0
#> 317 317     174.0+
#> 318 318        6.0
#> 319 319     180.0+
#> 320 320        0.5
#> 321 321     180.0+
#> 322 322     180.0+
#> 323 323      14.0+
#> 324 324     180.0+
#> 325 325       7.0+
#> 326 326        2.0
#> 327 327       45.0
#> 328 328       5.0+
#> 329 329      103.0
#> 330 330     180.0+
#> 331 331       36.0
#> 332 332       5.0+
#> 333 333     180.0+
#> 334 334        7.0
#> 335 335     180.0+
#> 336 336       2.0+
#> 337 337     180.0+
#> 338 338       18.0
#> 339 339     180.0+
#> 340 340        7.0
#> 341 341     180.0+
#> 342 342        7.0
#> 343 343       8.0+
#> 344 344      123.0
#> 345 345     180.0+
#> 346 346       51.0
#> 347 347       19.0
#> 348 348     180.0+
#> 349 349        1.0
#> 350 350        1.0
#> 351 351       76.0
#> 352 352     180.0+
#> 353 353      132.0
#> 354 354      10.0+
#> 355 355     180.0+
#> 356 356      162.0
#> 357 357       7.0+
#> 358 358       7.0+
#> 359 359      124.0
#> 360 360        9.0
#> 361 361     180.0+
#> 362 362       12.0
#> 363 363     180.0+
#> 364 364     180.0+
#> 365 365     180.0+
#> 366 366        2.0
#> 367 367       76.0
#> 368 368     173.0+
#> 369 369     180.0+
#> 370 370     180.0+
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373       28.0
#> 374 374     180.0+
#> 375 375     180.0+
#> 376 376     180.0+
#> 377 377      16.0+
#> 378 378     180.0+
#> 379 379        6.0
#> 380 380       15.0
#> 381 381       3.0+
#> 382 382      13.0+
#> 383 383     180.0+
#> 384 384     180.0+
#> 385 385     180.0+
#> 386 386       3.0+
#> 387 387       20.0
#> 388 388     180.0+
#> 389 389       20.0
#> 390 390        0.5
#> 391 391     180.0+
#> 392 392     180.0+
#> 393 393     180.0+
#> 394 394        8.0
#> 395 395        3.0
#> 396 396       87.0
#> 397 397       12.0
#> 398 398       4.0+
#> 399 399       58.0
#> 400 400     180.0+
#> 401 401     180.0+
#> 402 402        3.0
#> 403 403      175.0
#> 404 404        2.0
#> 405 405     180.0+
#> 406 406      14.0+
#> 407 407     180.0+
#> 408 408      10.0+
#> 409 409     180.0+
#> 410 410       8.0+
#> 411 411     179.0+
#> 412 412        1.0
#> 413 413     180.0+
#> 414 414     180.0+
#> 415 415       15.0
#> 416 416     180.0+
#> 417 417       13.0
#> 418 418       4.0+
#> 419 419     180.0+
#> 420 420        1.0
#> 421 421     180.0+
#> 422 422       3.0+
#> 423 423     180.0+
#> 424 424     180.0+
#> 425 425     180.0+
#> 426 426     180.0+
#> 427 427       34.0
#> 428 428     180.0+
#> 429 429     177.0+
#> 430 430     180.0+
#> 431 431     180.0+
#> 432 432        5.0
#> 433 433      11.0+
#> 434 434       4.0+
#> 435 435     180.0+
#> 436 436        7.0
#> 437 437       10.0
#> 438 438     180.0+
#> 439 439        3.0
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442     180.0+
#> 443 443     180.0+
#> 444 444        6.0
#> 445 445     180.0+
#> 446 446     180.0+
#> 447 447      17.0+
#> 448 448        7.0
#> 449 449     180.0+
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452       46.0
#> 453 453     180.0+
#> 454 454        1.0
#> 455 455     180.0+
#> 456 456     180.0+
#> 457 457     180.0+
#> 458 458       12.0
#> 459 459     180.0+
#> 460 460     180.0+
#> 461 461     180.0+
#> 462 462        8.0
#> 463 463        5.0
#> 464 464     180.0+
#> 465 465     180.0+
#> 466 466       12.0
#> 467 467     180.0+
#> 468 468       7.0+
#> 469 469       79.0
#> 470 470        3.0
#> 471 471     168.0+
#> 472 472     180.0+
#> 473 473       18.0
#> 474 474     180.0+
#> 475 475       47.0
#> 476 476       11.0
#> 477 477        7.0
#> 478 478       8.0+
#> 479 479        7.0
#> 480 480     180.0+
#> 481 481     180.0+
#> 482 482       10.0
#> 483 483     180.0+
#> 484 484      172.0
#> 485 485      119.0
#> 486 486     180.0+
#> 487 487        8.0
#> 488 488     180.0+
#> 489 489        1.0
#> 490 490       80.0
#> 491 491     180.0+
#> 492 492     180.0+
#> 493 493     152.0+
#> 494 494        3.0
#> 495 495       24.0
#> 496 496       23.0
#> 497 497        6.0
#> 498 498     180.0+
#> 499 499       3.0+
#> 500 500     180.0+
#> 501 501     180.0+
#> 502 502     180.0+
#> 503 503        4.0
#> 504 504     180.0+
#> 505 505        6.0
#> 506 506       2.0+
#> 507 507     180.0+
#> 508 508        1.0
#> 509 509        1.0
#> 510 510        3.0
#> 511 511     180.0+
#> 512 512      138.0
#> 513 513     180.0+
#> 514 514        8.0
#> 515 515       59.0
#> 516 516       17.0
#> 517 517     180.0+
#> 518 518       93.0
#> 519 519      118.0
#> 520 520       37.0
#> 521 521     175.0+
#> 522 522       7.0+
#> 523 523     180.0+
#> 524 524        3.0
#> 525 525     171.0+
#> 526 526     166.0+
#> 527 527       71.0
#> 528 528        1.0
#> 529 529       3.0+
#> 530 530       10.0
#> 531 531     180.0+
#> 532 532       85.0
#> 533 533       6.0+
#> 534 534        6.0
#> 535 535        5.0
#> 536 536        1.0
#> 537 537     180.0+
#> 538 538     180.0+
#> 539 539      108.0
#> 540 540      125.0
#> 541 541     180.0+
#> 542 542     180.0+
#> 543 543        6.0
#> 544 544       9.0+
#> 545 545     180.0+
#> 546 546     180.0+
#> 547 547      103.0
#> 548 548       70.0
#> 549 549        4.0
#> 550 550     180.0+
#> 551 551     180.0+
#> 552 552       7.0+
#> 553 553     180.0+
#> 554 554       16.0
#> 555 555     180.0+
#> 556 556     180.0+
#> 557 557        0.5
#> 558 558     180.0+
#> 559 559     180.0+
#> 560 560      128.0
#> 561 561     180.0+
#> 562 562        4.0
#> 563 563        1.0
#> 564 564       38.0
#> 565 565     180.0+
#> 566 566       90.0
#> 567 567     180.0+
#> 568 568       89.0
#> 569 569     180.0+
#> 570 570        4.0
#> 571 571        1.0
#> 572 572       19.0
#> 573 573       30.0
#> 574 574     180.0+
#> 575 575     180.0+
#> 576 576      114.0
#> 577 577     180.0+
#> 578 578      154.0
#> 579 579     180.0+
#> 580 580        1.0
#> 581 581       12.0
#> 582 582      16.0+
#> 583 583       5.0+
#> 584 584     180.0+
#> 585 585       77.0
#> 586 586     180.0+
#> 587 587       83.0
#> 588 588       88.0
#> 589 589      165.0
#> 590 590        3.0
#> 591 591     180.0+
#> 592 592     180.0+
#> 593 593     180.0+
#> 594 594     180.0+
#> 595 595     180.0+
#> 596 596     180.0+
#> 597 597     180.0+
#> 598 598        5.0
#> 599 599     180.0+
#> 600 600      174.0
#> 601 601        6.0
#> 602 602       70.0
#> 603 603     180.0+
#> 604 604     180.0+
#> 605 605     180.0+
#> 606 606       14.0
#> 607 607        3.0
#> 608 608       13.0
#> 609 609     180.0+
#> 610 610       92.0
#> 611 611     180.0+
#> 612 612        4.0
#> 613 613       3.0+
#> 614 614       6.0+
#> 615 615       62.0
#> 616 616       6.0+
#> 617 617       4.0+
#> 618 618       20.0
#> 619 619        4.0
#> 620 620       22.0
#> 621 621       65.0
#> 622 622       11.0
#> 623 623     180.0+
#> 624 624       46.0
#> 625 625       3.0+
#> 626 626     180.0+
#> 627 627       1.0+
#> 628 628     180.0+
#> 629 629        8.0
#> 630 630       29.0
#> 631 631     180.0+
#> 632 632     180.0+
#> 633 633       46.0
#> 634 634       1.0+
#> 635 635     180.0+
#> 636 636        8.0
#> 637 637       25.0
#> 638 638      145.0
#> 639 639        3.0
#> 640 640       24.0
#> 641 641       50.0
#> 642 642       11.0
#> 643 643      126.0
#> 644 644     180.0+
#> 645 645        1.0
#> 646 646     178.0+
#> 647 647       36.0
#> 648 648       89.0
#> 649 649       3.0+
#> 650 650        1.0
#> 651 651      158.0
#> 652 652       74.0
#> 653 653     180.0+
#> 654 654       52.0
#> 655 655        4.0
#> 656 656     180.0+
#> 657 657     180.0+
#> 658 658        4.0
#> 659 659     180.0+
#> 660 660       50.0
#> 661 661        2.0
#> 662 662       8.0+
#> 663 663       76.0
#> 664 664       16.0
#> 665 665       67.0
#> 666 666       12.0
#> 667 667        8.0
#> 668 668        0.5
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
#> <bytecode: 0x5fcf41b560c8>
#> <environment: 0x5fcf41b55c30>
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
#> <bytecode: 0x5fcf1466c118>
#> <environment: 0x5fcf4ffb69e8>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5fcf14669f90>
#> <environment: 0x5fcf4ffb6908>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5fcf1466c118>
#> <environment: 0x5fcf4ffb6828>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5fcf14669f90>
#> <environment: 0x5fcf4ffb66d8>
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
#> <bytecode: 0x5fcf14633020>
#> <environment: 0x5fcf03cc20c0>
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
#>   0.8330442 
```
