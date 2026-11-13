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
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 84
#> |   |   |   [4] V3 <= 22
#> |   |   |   |   [5] V5 <= 165
#> |   |   |   |   |   [6] V4 <= 0
#> |   |   |   |   |   |   [7] V2 <= 70 *
#> |   |   |   |   |   |   [8] V2 > 70 *
#> |   |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   |   [10] V2 <= 60
#> |   |   |   |   |   |   |   [11] V5 <= 1 *
#> |   |   |   |   |   |   |   [12] V5 > 1 *
#> |   |   |   |   |   |   [13] V2 > 60
#> |   |   |   |   |   |   |   [14] V5 <= 9
#> |   |   |   |   |   |   |   |   [15] V2 <= 76
#> |   |   |   |   |   |   |   |   |   [16] V3 <= 10
#> |   |   |   |   |   |   |   |   |   |   [17] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   |   [18] V2 > 67 *
#> |   |   |   |   |   |   |   |   |   [19] V3 > 10 *
#> |   |   |   |   |   |   |   |   [20] V2 > 76 *
#> |   |   |   |   |   |   |   [21] V5 > 9 *
#> |   |   |   |   [22] V5 > 165
#> |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   [24] V3 > 2 *
#> |   |   |   [25] V3 > 22 *
#> |   |   [26] V2 > 84 *
#> |   [27] V6 > 0
#> |   |   [28] V2 <= 71
#> |   |   |   [29] V3 <= 1
#> |   |   |   |   [30] V2 <= 58 *
#> |   |   |   |   [31] V2 > 58 *
#> |   |   |   [32] V3 > 1
#> |   |   |   |   [33] V4 <= 0
#> |   |   |   |   |   [34] V7 <= 160
#> |   |   |   |   |   |   [35] V3 <= 4 *
#> |   |   |   |   |   |   [36] V3 > 4
#> |   |   |   |   |   |   |   [37] V2 <= 59 *
#> |   |   |   |   |   |   |   [38] V2 > 59 *
#> |   |   |   |   |   [39] V7 > 160 *
#> |   |   |   |   [40] V4 > 0
#> |   |   |   |   |   [41] V5 <= 12
#> |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   [44] V7 <= 110 *
#> |   |   |   |   |   |   |   [45] V7 > 110
#> |   |   |   |   |   |   |   |   [46] V2 <= 50 *
#> |   |   |   |   |   |   |   |   [47] V2 > 50
#> |   |   |   |   |   |   |   |   |   [48] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [49] V7 > 138 *
#> |   |   |   |   |   [50] V5 > 12 *
#> |   |   [51] V2 > 71
#> |   |   |   [52] V7 <= 116
#> |   |   |   |   [53] V5 <= 7 *
#> |   |   |   |   [54] V5 > 7 *
#> |   |   |   [55] V7 > 116
#> |   |   |   |   [56] V2 <= 87
#> |   |   |   |   |   [57] V5 <= 173
#> |   |   |   |   |   |   [58] V4 <= 0
#> |   |   |   |   |   |   |   [59] V3 <= 5 *
#> |   |   |   |   |   |   |   [60] V3 > 5 *
#> |   |   |   |   |   |   [61] V4 > 0
#> |   |   |   |   |   |   |   [62] V5 <= 8
#> |   |   |   |   |   |   |   |   [63] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [64] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [65] V3 > 4 *
#> |   |   |   |   |   |   |   |   [66] V3 > 10 *
#> |   |   |   |   |   |   |   [67] V5 > 8 *
#> |   |   |   |   |   [68] V5 > 173 *
#> |   |   |   |   [69] V2 > 87 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V7 <= 118
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V5 <= 2
#> |   |   |   |   |   [7] V2 <= 58 *
#> |   |   |   |   |   [8] V2 > 58 *
#> |   |   |   |   [9] V5 > 2 *
#> |   |   [10] V7 > 118
#> |   |   |   [11] V2 <= 54
#> |   |   |   |   [12] V5 <= 99
#> |   |   |   |   |   [13] V5 <= 8
#> |   |   |   |   |   |   [14] V5 <= 1
#> |   |   |   |   |   |   |   [15] V2 <= 46 *
#> |   |   |   |   |   |   |   [16] V2 > 46 *
#> |   |   |   |   |   |   [17] V5 > 1 *
#> |   |   |   |   |   [18] V5 > 8 *
#> |   |   |   |   [19] V5 > 99 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   [22] V7 <= 135
#> |   |   |   |   |   |   [23] V5 <= 8 *
#> |   |   |   |   |   |   [24] V5 > 8 *
#> |   |   |   |   |   [25] V7 > 135
#> |   |   |   |   |   |   [26] V4 <= 0 *
#> |   |   |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   |   |   [28] V2 <= 59 *
#> |   |   |   |   |   |   |   [29] V2 > 59 *
#> |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   [31] V7 <= 125 *
#> |   |   |   |   |   [32] V7 > 125
#> |   |   |   |   |   |   [33] V5 <= 60
#> |   |   |   |   |   |   |   [34] V4 <= 0 *
#> |   |   |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   |   |   [36] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [37] V2 > 62
#> |   |   |   |   |   |   |   |   |   [38] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 66 *
#> |   |   |   |   |   |   [40] V5 > 60 *
#> |   [41] V2 > 70
#> |   |   [42] V5 <= 169
#> |   |   |   [43] V2 <= 86
#> |   |   |   |   [44] V5 <= 15
#> |   |   |   |   |   [45] V3 <= 6
#> |   |   |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   |   |   [47] V7 <= 114 *
#> |   |   |   |   |   |   |   [48] V7 > 114 *
#> |   |   |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   |   |   [50] V2 <= 80 *
#> |   |   |   |   |   |   |   [51] V2 > 80 *
#> |   |   |   |   |   [52] V3 > 6
#> |   |   |   |   |   |   [53] V4 <= 0 *
#> |   |   |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   |   [56] V3 > 10
#> |   |   |   |   |   |   |   |   [57] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [58] V5 > 3
#> |   |   |   |   |   |   |   |   |   [59] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   [60] V7 > 120 *
#> |   |   |   |   [61] V5 > 15
#> |   |   |   |   |   [62] V5 <= 110 *
#> |   |   |   |   |   [63] V5 > 110 *
#> |   |   |   [64] V2 > 86
#> |   |   |   |   [65] V4 <= 0
#> |   |   |   |   |   [66] V6 <= 0 *
#> |   |   |   |   |   [67] V6 > 0 *
#> |   |   |   |   [68] V4 > 0 *
#> |   |   [69] V5 > 169 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 59
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V5 <= 8
#> |   |   |   |   |   |   |   [9] V3 <= 8 *
#> |   |   |   |   |   |   |   [10] V3 > 8 *
#> |   |   |   |   |   |   [11] V5 > 8 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V3 <= 11
#> |   |   |   |   |   |   |   [14] V7 <= 114 *
#> |   |   |   |   |   |   |   [15] V7 > 114
#> |   |   |   |   |   |   |   |   [16] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [17] V5 > 0 *
#> |   |   |   |   |   |   [18] V3 > 11 *
#> |   |   |   [19] V5 > 99
#> |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   [21] V6 > 0 *
#> |   |   [22] V2 > 59
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V7 <= 149
#> |   |   |   |   |   [25] V2 <= 67 *
#> |   |   |   |   |   [26] V2 > 67 *
#> |   |   |   |   [27] V7 > 149
#> |   |   |   |   |   [28] V3 <= 9
#> |   |   |   |   |   |   [29] V5 <= 3 *
#> |   |   |   |   |   |   [30] V5 > 3 *
#> |   |   |   |   |   [31] V3 > 9 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V3 <= 1 *
#> |   |   |   |   [34] V3 > 1
#> |   |   |   |   |   [35] V4 <= 0
#> |   |   |   |   |   |   [36] V5 <= 101 *
#> |   |   |   |   |   |   [37] V5 > 101 *
#> |   |   |   |   |   [38] V4 > 0
#> |   |   |   |   |   |   [39] V7 <= 112 *
#> |   |   |   |   |   |   [40] V7 > 112
#> |   |   |   |   |   |   |   [41] V5 <= 6
#> |   |   |   |   |   |   |   |   [42] V7 <= 136 *
#> |   |   |   |   |   |   |   |   [43] V7 > 136 *
#> |   |   |   |   |   |   |   [44] V5 > 6 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 173
#> |   |   |   [47] V7 <= 130
#> |   |   |   |   [48] V7 <= 96 *
#> |   |   |   |   [49] V7 > 96
#> |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   |   |   [52] V3 > 3 *
#> |   |   |   |   |   [53] V4 > 0 *
#> |   |   |   [54] V7 > 130
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V3 <= 6 *
#> |   |   |   |   |   |   [59] V3 > 6 *
#> |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   [61] V2 <= 82
#> |   |   |   |   |   |   [62] V3 <= 17
#> |   |   |   |   |   |   |   [63] V5 <= 2 *
#> |   |   |   |   |   |   |   [64] V5 > 2 *
#> |   |   |   |   |   |   [65] V3 > 17 *
#> |   |   |   |   |   [66] V2 > 82 *
#> |   |   [67] V5 > 173 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V2 <= 57
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 5
#> |   |   |   |   |   [6] V2 <= 49 *
#> |   |   |   |   |   [7] V2 > 49
#> |   |   |   |   |   |   [8] V5 <= 77 *
#> |   |   |   |   |   |   [9] V5 > 77 *
#> |   |   |   |   [10] V3 > 5 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V5 <= 10
#> |   |   |   |   |   [13] V7 <= 116 *
#> |   |   |   |   |   [14] V7 > 116
#> |   |   |   |   |   |   [15] V3 <= 7
#> |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   |   |   |   |   [18] V3 > 7 *
#> |   |   |   |   [19] V5 > 10 *
#> |   |   [20] V2 > 57
#> |   |   |   [21] V5 <= 161
#> |   |   |   |   [22] V5 <= 15
#> |   |   |   |   |   [23] V3 <= 2
#> |   |   |   |   |   |   [24] V7 <= 112 *
#> |   |   |   |   |   |   [25] V7 > 112 *
#> |   |   |   |   |   [26] V3 > 2
#> |   |   |   |   |   |   [27] V3 <= 12
#> |   |   |   |   |   |   |   [28] V7 <= 140
#> |   |   |   |   |   |   |   |   [29] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   |   [31] V4 <= 0 *
#> |   |   |   |   |   |   |   |   |   [32] V4 > 0
#> |   |   |   |   |   |   |   |   |   |   [33] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   [34] V3 > 8 *
#> |   |   |   |   |   |   |   [35] V7 > 140
#> |   |   |   |   |   |   |   |   [36] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [37] V4 > 0
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 179
#> |   |   |   |   |   |   |   |   |   |   [39] V5 <= 4
#> |   |   |   |   |   |   |   |   |   |   |   [40] V7 <= 155 *
#> |   |   |   |   |   |   |   |   |   |   |   [41] V7 > 155 *
#> |   |   |   |   |   |   |   |   |   |   [42] V5 > 4 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 179 *
#> |   |   |   |   |   |   [44] V3 > 12
#> |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   [46] V6 > 0 *
#> |   |   |   |   [47] V5 > 15 *
#> |   |   |   [48] V5 > 161
#> |   |   |   |   [49] V2 <= 75 *
#> |   |   |   |   [50] V2 > 75 *
#> |   [51] V2 > 78
#> |   |   [52] V6 <= 0
#> |   |   |   [53] V5 <= 167
#> |   |   |   |   [54] V5 <= 10 *
#> |   |   |   |   [55] V5 > 10 *
#> |   |   |   [56] V5 > 167 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V7 <= 106 *
#> |   |   |   [59] V7 > 106
#> |   |   |   |   [60] V4 <= 0
#> |   |   |   |   |   [61] V2 <= 81 *
#> |   |   |   |   |   [62] V2 > 81
#> |   |   |   |   |   |   [63] V5 <= 169
#> |   |   |   |   |   |   |   [64] V7 <= 157 *
#> |   |   |   |   |   |   |   [65] V7 > 157 *
#> |   |   |   |   |   |   [66] V5 > 169 *
#> |   |   |   |   [67] V4 > 0 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 154
#> |   |   |   |   |   |   [7] V3 <= 7 *
#> |   |   |   |   |   |   [8] V3 > 7 *
#> |   |   |   |   |   [9] V7 > 154 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V3 <= 7 *
#> |   |   |   |   |   [12] V3 > 7 *
#> |   |   |   [13] V5 > 99
#> |   |   |   |   [14] V2 <= 48 *
#> |   |   |   |   [15] V2 > 48 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 101
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V7 <= 112 *
#> |   |   |   |   |   |   [22] V7 > 112 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V5 <= 2
#> |   |   |   |   |   |   [25] V5 <= 0
#> |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   |   |   [28] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [29] V2 > 65 *
#> |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   [31] V2 <= 65 *
#> |   |   |   |   |   |   |   [32] V2 > 65 *
#> |   |   |   |   |   [33] V5 > 2
#> |   |   |   |   |   |   [34] V2 <= 60 *
#> |   |   |   |   |   |   [35] V2 > 60
#> |   |   |   |   |   |   |   [36] V5 <= 10
#> |   |   |   |   |   |   |   |   [37] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [39] V6 > 0 *
#> |   |   |   |   |   |   |   |   [40] V7 > 160 *
#> |   |   |   |   |   |   |   [41] V5 > 10 *
#> |   |   |   [42] V5 > 101 *
#> |   [43] V2 > 74
#> |   |   [44] V4 <= 0
#> |   |   |   [45] V5 <= 173
#> |   |   |   |   [46] V2 <= 76 *
#> |   |   |   |   [47] V2 > 76
#> |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   [49] V5 <= 15 *
#> |   |   |   |   |   |   [50] V5 > 15 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V2 <= 81 *
#> |   |   |   |   |   |   [53] V2 > 81
#> |   |   |   |   |   |   |   [54] V3 <= 3 *
#> |   |   |   |   |   |   |   [55] V3 > 3 *
#> |   |   |   [56] V5 > 173 *
#> |   |   [57] V4 > 0
#> |   |   |   [58] V2 <= 78 *
#> |   |   |   [59] V2 > 78
#> |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   [61] V3 > 4 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 103
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V2 <= 48 *
#> |   |   |   |   |   [7] V2 > 48
#> |   |   |   |   |   |   [8] V7 <= 170
#> |   |   |   |   |   |   |   [9] V5 <= 1 *
#> |   |   |   |   |   |   |   [10] V5 > 1
#> |   |   |   |   |   |   |   |   [11] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   |   |   |   [13] V7 <= 140
#> |   |   |   |   |   |   |   |   |   |   [14] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   [15] V5 > 9 *
#> |   |   |   |   |   |   |   |   |   [16] V7 > 140 *
#> |   |   |   |   |   |   [17] V7 > 170 *
#> |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   |   [20] V7 <= 120 *
#> |   |   |   |   |   |   [21] V7 > 120 *
#> |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   [23] V3 <= 1 *
#> |   |   |   |   |   |   [24] V3 > 1
#> |   |   |   |   |   |   |   [25] V3 <= 17
#> |   |   |   |   |   |   |   |   [26] V7 <= 179
#> |   |   |   |   |   |   |   |   |   [27] V7 <= 153
#> |   |   |   |   |   |   |   |   |   |   [28] V2 <= 43 *
#> |   |   |   |   |   |   |   |   |   |   [29] V2 > 43
#> |   |   |   |   |   |   |   |   |   |   |   [30] V7 <= 136
#> |   |   |   |   |   |   |   |   |   |   |   |   [31] V5 <= 4
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [32] V7 <= 114 *
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [33] V7 > 114 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [34] V5 > 4 *
#> |   |   |   |   |   |   |   |   |   |   |   [35] V7 > 136 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 153 *
#> |   |   |   |   |   |   |   |   [37] V7 > 179 *
#> |   |   |   |   |   |   |   [38] V3 > 17 *
#> |   |   |   [39] V5 > 14 *
#> |   |   [40] V5 > 103
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 8
#> |   |   |   |   |   [44] V2 <= 58 *
#> |   |   |   |   |   [45] V2 > 58 *
#> |   |   |   |   [46] V3 > 8 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V7 <= 145
#> |   |   |   |   [50] V3 <= 8 *
#> |   |   |   |   [51] V3 > 8 *
#> |   |   |   [52] V7 > 145
#> |   |   |   |   [53] V7 <= 165 *
#> |   |   |   |   [54] V7 > 165 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V3 <= 3
#> |   |   |   |   [57] V4 <= 0 *
#> |   |   |   |   [58] V4 > 0 *
#> |   |   |   [59] V3 > 3
#> |   |   |   |   [60] V5 <= 119
#> |   |   |   |   |   [61] V7 <= 130
#> |   |   |   |   |   |   [62] V2 <= 78 *
#> |   |   |   |   |   |   [63] V2 > 78 *
#> |   |   |   |   |   [64] V7 > 130
#> |   |   |   |   |   |   [65] V4 <= 0 *
#> |   |   |   |   |   |   [66] V4 > 0 *
#> |   |   |   |   [67] V5 > 119 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 15
#> |   |   |   |   |   [6] V2 <= 78
#> |   |   |   |   |   |   [7] V5 <= 5 *
#> |   |   |   |   |   |   [8] V5 > 5 *
#> |   |   |   |   |   [9] V2 > 78 *
#> |   |   |   |   [10] V5 > 15
#> |   |   |   |   |   [11] V5 <= 50 *
#> |   |   |   |   |   [12] V5 > 50 *
#> |   |   |   [13] V6 > 0
#> |   |   |   |   [14] V2 <= 73
#> |   |   |   |   |   [15] V7 <= 120 *
#> |   |   |   |   |   [16] V7 > 120
#> |   |   |   |   |   |   [17] V5 <= 10 *
#> |   |   |   |   |   |   [18] V5 > 10 *
#> |   |   |   |   [19] V2 > 73
#> |   |   |   |   |   [20] V2 <= 84
#> |   |   |   |   |   |   [21] V2 <= 77 *
#> |   |   |   |   |   |   [22] V2 > 77
#> |   |   |   |   |   |   |   [23] V5 <= 6 *
#> |   |   |   |   |   |   |   [24] V5 > 6 *
#> |   |   |   |   |   [25] V2 > 84 *
#> |   |   [26] V4 > 0
#> |   |   |   [27] V6 <= 0
#> |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   [30] V5 <= 3
#> |   |   |   |   |   |   [31] V7 <= 142 *
#> |   |   |   |   |   |   [32] V7 > 142 *
#> |   |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   |   [34] V2 <= 62 *
#> |   |   |   |   |   |   [35] V2 > 62
#> |   |   |   |   |   |   |   [36] V5 <= 7 *
#> |   |   |   |   |   |   |   [37] V5 > 7
#> |   |   |   |   |   |   |   |   [38] V7 <= 165 *
#> |   |   |   |   |   |   |   |   [39] V7 > 165 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V2 <= 72
#> |   |   |   |   |   [42] V5 <= 6
#> |   |   |   |   |   |   [43] V5 <= 1
#> |   |   |   |   |   |   |   [44] V2 <= 54 *
#> |   |   |   |   |   |   |   [45] V2 > 54
#> |   |   |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [47] V3 > 4 *
#> |   |   |   |   |   |   [48] V5 > 1 *
#> |   |   |   |   |   [49] V5 > 6
#> |   |   |   |   |   |   [50] V7 <= 135 *
#> |   |   |   |   |   |   [51] V7 > 135 *
#> |   |   |   |   [52] V2 > 72
#> |   |   |   |   |   [53] V2 <= 85
#> |   |   |   |   |   |   [54] V2 <= 75 *
#> |   |   |   |   |   |   [55] V2 > 75
#> |   |   |   |   |   |   |   [56] V3 <= 4 *
#> |   |   |   |   |   |   |   [57] V3 > 4
#> |   |   |   |   |   |   |   |   [58] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [59] V5 > 1 *
#> |   |   |   |   |   [60] V2 > 85 *
#> |   [61] V5 > 173
#> |   |   [62] V2 <= 50 *
#> |   |   [63] V2 > 50 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 15
#> |   |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   |   |   [9] V5 > 15 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V3 <= 3 *
#> |   |   |   |   |   [12] V3 > 3
#> |   |   |   |   |   |   [13] V5 <= 15 *
#> |   |   |   |   |   |   [14] V5 > 15 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 59
#> |   |   |   |   |   [17] V5 <= 6
#> |   |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   |   [19] V2 <= 47 *
#> |   |   |   |   |   |   |   [20] V2 > 47
#> |   |   |   |   |   |   |   |   [21] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [22] V3 > 5 *
#> |   |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   |   [24] V3 <= 4 *
#> |   |   |   |   |   |   |   [25] V3 > 4 *
#> |   |   |   |   |   [26] V5 > 6
#> |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   [29] V2 > 59
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V2 <= 64 *
#> |   |   |   |   |   |   [32] V2 > 64
#> |   |   |   |   |   |   |   [33] V3 <= 13
#> |   |   |   |   |   |   |   |   [34] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [35] V2 > 69 *
#> |   |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   [39] V3 > 4
#> |   |   |   |   |   |   |   [40] V3 <= 8
#> |   |   |   |   |   |   |   |   [41] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [42] V3 > 7 *
#> |   |   |   |   |   |   |   [43] V3 > 8
#> |   |   |   |   |   |   |   |   [44] V7 <= 127 *
#> |   |   |   |   |   |   |   |   [45] V7 > 127
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 14 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 14 *
#> |   |   [48] V5 > 171 *
#> |   [49] V2 > 78
#> |   |   [50] V6 <= 0
#> |   |   |   [51] V3 <= 4 *
#> |   |   |   [52] V3 > 4 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V5 <= 169
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V7 <= 130 *
#> |   |   |   |   |   [57] V7 > 130 *
#> |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   [59] V5 <= 1 *
#> |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   [61] V5 > 169 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V2 <= 87
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V2 <= 48
#> |   |   |   |   |   [6] V2 <= 43 *
#> |   |   |   |   |   [7] V2 > 43 *
#> |   |   |   |   [8] V2 > 48
#> |   |   |   |   |   [9] V3 <= 2
#> |   |   |   |   |   |   [10] V7 <= 120 *
#> |   |   |   |   |   |   [11] V7 > 120 *
#> |   |   |   |   |   [12] V3 > 2
#> |   |   |   |   |   |   [13] V7 <= 170
#> |   |   |   |   |   |   |   [14] V3 <= 12
#> |   |   |   |   |   |   |   |   [15] V2 <= 60
#> |   |   |   |   |   |   |   |   |   [16] V4 <= 0 *
#> |   |   |   |   |   |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   |   |   |   |   |   [18] V5 <= 4
#> |   |   |   |   |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   |   |   |   |   |   |   [21] V5 > 4 *
#> |   |   |   |   |   |   |   |   [22] V2 > 60
#> |   |   |   |   |   |   |   |   |   [23] V4 <= 0
#> |   |   |   |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   |   |   |   |   [27] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [28] V5 > 2 *
#> |   |   |   |   |   |   |   [29] V3 > 12
#> |   |   |   |   |   |   |   |   [30] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [31] V2 > 61
#> |   |   |   |   |   |   |   |   |   [32] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   [33] V5 > 9 *
#> |   |   |   |   |   |   [34] V7 > 170 *
#> |   |   |   [35] V2 > 71
#> |   |   |   |   [36] V5 <= 14
#> |   |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   |   [38] V7 <= 125 *
#> |   |   |   |   |   |   [39] V7 > 125 *
#> |   |   |   |   |   [40] V4 > 0
#> |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   [42] V7 <= 162 *
#> |   |   |   |   |   |   |   [43] V7 > 162 *
#> |   |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   |   [45] V7 <= 112 *
#> |   |   |   |   |   |   |   [46] V7 > 112
#> |   |   |   |   |   |   |   |   [47] V2 <= 74 *
#> |   |   |   |   |   |   |   |   [48] V2 > 74
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 140 *
#> |   |   |   |   [51] V5 > 14
#> |   |   |   |   |   [52] V5 <= 128
#> |   |   |   |   |   |   [53] V3 <= 7 *
#> |   |   |   |   |   |   [54] V3 > 7 *
#> |   |   |   |   |   [55] V5 > 128 *
#> |   |   [56] V5 > 173 *
#> |   [57] V2 > 87
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V2 <= 70 *
#> |   |   |   |   |   [8] V2 > 70 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V2 <= 70
#> |   |   |   |   |   [11] V3 <= 2 *
#> |   |   |   |   |   [12] V3 > 2 *
#> |   |   |   |   [13] V2 > 70
#> |   |   |   |   |   [14] V2 <= 81
#> |   |   |   |   |   |   [15] V7 <= 144 *
#> |   |   |   |   |   |   [16] V7 > 144 *
#> |   |   |   |   |   [17] V2 > 81
#> |   |   |   |   |   |   [18] V5 <= 8 *
#> |   |   |   |   |   |   [19] V5 > 8 *
#> |   |   [20] V5 > 169
#> |   |   |   [21] V2 <= 50 *
#> |   |   |   [22] V2 > 50 *
#> |   [23] V4 > 0
#> |   |   [24] V6 <= 0
#> |   |   |   [25] V7 <= 120 *
#> |   |   |   [26] V7 > 120
#> |   |   |   |   [27] V7 <= 134 *
#> |   |   |   |   [28] V7 > 134
#> |   |   |   |   |   [29] V5 <= 7
#> |   |   |   |   |   |   [30] V5 <= 2
#> |   |   |   |   |   |   |   [31] V2 <= 60 *
#> |   |   |   |   |   |   |   [32] V2 > 60 *
#> |   |   |   |   |   |   [33] V5 > 2 *
#> |   |   |   |   |   [34] V5 > 7 *
#> |   |   [35] V6 > 0
#> |   |   |   [36] V2 <= 74
#> |   |   |   |   [37] V2 <= 47 *
#> |   |   |   |   [38] V2 > 47
#> |   |   |   |   |   [39] V3 <= 1 *
#> |   |   |   |   |   [40] V3 > 1
#> |   |   |   |   |   |   [41] V5 <= 1
#> |   |   |   |   |   |   |   [42] V5 <= 0
#> |   |   |   |   |   |   |   |   [43] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [44] V3 > 6 *
#> |   |   |   |   |   |   |   [45] V5 > 0 *
#> |   |   |   |   |   |   [46] V5 > 1
#> |   |   |   |   |   |   |   [47] V5 <= 3 *
#> |   |   |   |   |   |   |   [48] V5 > 3
#> |   |   |   |   |   |   |   |   [49] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [50] V7 > 138 *
#> |   |   |   [51] V2 > 74
#> |   |   |   |   [52] V7 <= 150
#> |   |   |   |   |   [53] V3 <= 10 *
#> |   |   |   |   |   [54] V3 > 10 *
#> |   |   |   |   [55] V7 > 150 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 83
#> |   |   |   [4] V2 <= 51
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0 *
#> |   |   |   [7] V2 > 51
#> |   |   |   |   [8] V5 <= 171
#> |   |   |   |   |   [9] V5 <= 16
#> |   |   |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   |   |   [11] V3 <= 6 *
#> |   |   |   |   |   |   |   [12] V3 > 6 *
#> |   |   |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   |   |   [14] V2 <= 60
#> |   |   |   |   |   |   |   |   [15] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [16] V3 > 7 *
#> |   |   |   |   |   |   |   [17] V2 > 60
#> |   |   |   |   |   |   |   |   [18] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [19] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   [20] V3 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [21] V3 > 2 *
#> |   |   |   |   |   |   |   |   |   [22] V5 > 3 *
#> |   |   |   |   |   |   |   |   [23] V5 > 9 *
#> |   |   |   |   |   [24] V5 > 16 *
#> |   |   |   |   [25] V5 > 171 *
#> |   |   [26] V2 > 83 *
#> |   [27] V6 > 0
#> |   |   [28] V4 <= 0
#> |   |   |   [29] V2 <= 58
#> |   |   |   |   [30] V5 <= 36 *
#> |   |   |   |   [31] V5 > 36
#> |   |   |   |   |   [32] V3 <= 7 *
#> |   |   |   |   |   [33] V3 > 7 *
#> |   |   |   [34] V2 > 58
#> |   |   |   |   [35] V7 <= 162
#> |   |   |   |   |   [36] V5 <= 173
#> |   |   |   |   |   |   [37] V7 <= 116 *
#> |   |   |   |   |   |   [38] V7 > 116
#> |   |   |   |   |   |   |   [39] V3 <= 6 *
#> |   |   |   |   |   |   |   [40] V3 > 6 *
#> |   |   |   |   |   [41] V5 > 173 *
#> |   |   |   |   [42] V7 > 162 *
#> |   |   [43] V4 > 0
#> |   |   |   [44] V5 <= 1
#> |   |   |   |   [45] V7 <= 104 *
#> |   |   |   |   [46] V7 > 104
#> |   |   |   |   |   [47] V2 <= 78
#> |   |   |   |   |   |   [48] V2 <= 55 *
#> |   |   |   |   |   |   [49] V2 > 55
#> |   |   |   |   |   |   |   [50] V2 <= 66 *
#> |   |   |   |   |   |   |   [51] V2 > 66
#> |   |   |   |   |   |   |   |   [52] V2 <= 74 *
#> |   |   |   |   |   |   |   |   [53] V2 > 74 *
#> |   |   |   |   |   [54] V2 > 78 *
#> |   |   |   [55] V5 > 1
#> |   |   |   |   [56] V2 <= 77
#> |   |   |   |   |   [57] V7 <= 138 *
#> |   |   |   |   |   [58] V7 > 138
#> |   |   |   |   |   |   [59] V7 <= 150 *
#> |   |   |   |   |   |   [60] V7 > 150 *
#> |   |   |   |   [61] V2 > 77 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 135
#> |   |   |   |   |   [6] V5 <= 13 *
#> |   |   |   |   |   [7] V5 > 13 *
#> |   |   |   |   [8] V7 > 135
#> |   |   |   |   |   [9] V2 <= 70 *
#> |   |   |   |   |   [10] V2 > 70 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   [14] V5 <= 101
#> |   |   |   |   |   |   [15] V2 <= 58 *
#> |   |   |   |   |   |   [16] V2 > 58
#> |   |   |   |   |   |   |   [17] V7 <= 137
#> |   |   |   |   |   |   |   |   [18] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [19] V3 > 6 *
#> |   |   |   |   |   |   |   [20] V7 > 137
#> |   |   |   |   |   |   |   |   [21] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [22] V5 > 9 *
#> |   |   |   |   |   [23] V5 > 101 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 71
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V7 <= 130
#> |   |   |   |   |   |   [28] V5 <= 3 *
#> |   |   |   |   |   |   [29] V5 > 3 *
#> |   |   |   |   |   [30] V7 > 130
#> |   |   |   |   |   |   [31] V3 <= 13
#> |   |   |   |   |   |   |   [32] V5 <= 2
#> |   |   |   |   |   |   |   |   [33] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [34] V2 > 59 *
#> |   |   |   |   |   |   |   [35] V5 > 2 *
#> |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   [38] V2 <= 54
#> |   |   |   |   |   |   [39] V2 <= 43 *
#> |   |   |   |   |   |   [40] V2 > 43
#> |   |   |   |   |   |   |   [41] V7 <= 145 *
#> |   |   |   |   |   |   |   [42] V7 > 145 *
#> |   |   |   |   |   [43] V2 > 54
#> |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   [45] V3 > 3
#> |   |   |   |   |   |   |   [46] V3 <= 14
#> |   |   |   |   |   |   |   |   [47] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [48] V7 > 138 *
#> |   |   |   |   |   |   |   [49] V3 > 14 *
#> |   |   |   [50] V2 > 71
#> |   |   |   |   [51] V2 <= 85
#> |   |   |   |   |   [52] V2 <= 80
#> |   |   |   |   |   |   [53] V3 <= 2 *
#> |   |   |   |   |   |   [54] V3 > 2
#> |   |   |   |   |   |   |   [55] V5 <= 1
#> |   |   |   |   |   |   |   |   [56] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [57] V3 > 6 *
#> |   |   |   |   |   |   |   [58] V5 > 1 *
#> |   |   |   |   |   [59] V2 > 80 *
#> |   |   |   |   [60] V2 > 85 *
#> |   [61] V5 > 173 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V3 <= 6
#> |   |   |   |   |   |   [7] V7 <= 145 *
#> |   |   |   |   |   |   [8] V7 > 145 *
#> |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V7 <= 114 *
#> |   |   |   |   [13] V7 > 114
#> |   |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   |   [15] V3 > 2
#> |   |   |   |   |   |   [16] V2 <= 73 *
#> |   |   |   |   |   |   [17] V2 > 73
#> |   |   |   |   |   |   |   [18] V7 <= 142 *
#> |   |   |   |   |   |   |   [19] V7 > 142 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V3 <= 1 *
#> |   |   |   [22] V3 > 1
#> |   |   |   |   [23] V3 <= 22
#> |   |   |   |   |   [24] V2 <= 85
#> |   |   |   |   |   |   [25] V5 <= 11
#> |   |   |   |   |   |   |   [26] V2 <= 74
#> |   |   |   |   |   |   |   |   [27] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 58
#> |   |   |   |   |   |   |   |   |   |   [29] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   |   [30] V7 > 120
#> |   |   |   |   |   |   |   |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   |   |   [32] V2 <= 51 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [33] V2 > 51 *
#> |   |   |   |   |   |   |   |   |   |   |   [34] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [35] V2 > 58
#> |   |   |   |   |   |   |   |   |   |   [36] V3 <= 7
#> |   |   |   |   |   |   |   |   |   |   |   [37] V3 <= 5
#> |   |   |   |   |   |   |   |   |   |   |   |   [38] V7 <= 136 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [39] V7 > 136 *
#> |   |   |   |   |   |   |   |   |   |   |   [40] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   |   [41] V3 > 7 *
#> |   |   |   |   |   |   |   |   [42] V5 > 6
#> |   |   |   |   |   |   |   |   |   [43] V5 <= 10
#> |   |   |   |   |   |   |   |   |   |   [44] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [45] V3 > 12 *
#> |   |   |   |   |   |   |   |   |   [46] V5 > 10 *
#> |   |   |   |   |   |   |   [47] V2 > 74
#> |   |   |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [49] V3 > 4
#> |   |   |   |   |   |   |   |   |   [50] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [51] V5 > 5 *
#> |   |   |   |   |   |   [52] V5 > 11 *
#> |   |   |   |   |   [53] V2 > 85 *
#> |   |   |   |   [54] V3 > 22 *
#> |   [55] V5 > 173
#> |   |   [56] V2 <= 50 *
#> |   |   [57] V2 > 50 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 58 *
#> |   |   |   [5] V2 > 58
#> |   |   |   |   [6] V7 <= 129
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V2 <= 80 *
#> |   |   |   |   |   |   [10] V2 > 80 *
#> |   |   |   |   [11] V7 > 129
#> |   |   |   |   |   [12] V5 <= 15
#> |   |   |   |   |   |   [13] V5 <= 6
#> |   |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   |   [16] V5 > 6 *
#> |   |   |   |   |   [17] V5 > 15
#> |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   [20] V5 <= 71 *
#> |   |   |   |   |   |   |   [21] V5 > 71 *
#> |   |   [22] V5 > 173
#> |   |   |   [23] V6 <= 0 *
#> |   |   |   [24] V6 > 0
#> |   |   |   |   [25] V7 <= 150 *
#> |   |   |   |   [26] V7 > 150 *
#> |   [27] V4 > 0
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V2 <= 71
#> |   |   |   |   [30] V2 <= 55 *
#> |   |   |   |   [31] V2 > 55
#> |   |   |   |   |   [32] V7 <= 123 *
#> |   |   |   |   |   [33] V7 > 123
#> |   |   |   |   |   |   [34] V3 <= 10 *
#> |   |   |   |   |   |   [35] V3 > 10 *
#> |   |   |   [36] V2 > 71
#> |   |   |   |   [37] V7 <= 162 *
#> |   |   |   |   [38] V7 > 162 *
#> |   |   [39] V6 > 0
#> |   |   |   [40] V5 <= 12
#> |   |   |   |   [41] V2 <= 76
#> |   |   |   |   |   [42] V7 <= 102 *
#> |   |   |   |   |   [43] V7 > 102
#> |   |   |   |   |   |   [44] V2 <= 57
#> |   |   |   |   |   |   |   [45] V5 <= 6
#> |   |   |   |   |   |   |   |   [46] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [47] V2 > 46 *
#> |   |   |   |   |   |   |   [48] V5 > 6 *
#> |   |   |   |   |   |   [49] V2 > 57
#> |   |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   |   [51] V3 > 4
#> |   |   |   |   |   |   |   |   [52] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [53] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 135 *
#> |   |   |   |   |   |   |   |   [55] V2 > 71 *
#> |   |   |   |   [56] V2 > 76
#> |   |   |   |   |   [57] V2 <= 83 *
#> |   |   |   |   |   [58] V2 > 83 *
#> |   |   |   [59] V5 > 12 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V7 <= 149
#> |   |   |   |   [5] V5 <= 152
#> |   |   |   |   |   [6] V2 <= 53 *
#> |   |   |   |   |   [7] V2 > 53
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V5 > 152
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   [13] V7 > 149
#> |   |   |   |   [14] V5 <= 77 *
#> |   |   |   |   [15] V5 > 77
#> |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   [17] V6 > 0 *
#> |   |   [18] V2 > 74
#> |   |   |   [19] V5 <= 169
#> |   |   |   |   [20] V7 <= 155
#> |   |   |   |   |   [21] V2 <= 82
#> |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   |   [24] V2 > 82
#> |   |   |   |   |   |   [25] V7 <= 110 *
#> |   |   |   |   |   |   [26] V7 > 110 *
#> |   |   |   |   [27] V7 > 155 *
#> |   |   |   [28] V5 > 169 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 76
#> |   |   |   [31] V6 <= 0
#> |   |   |   |   [32] V2 <= 66
#> |   |   |   |   |   [33] V5 <= 6
#> |   |   |   |   |   |   [34] V3 <= 7
#> |   |   |   |   |   |   |   [35] V5 <= 1 *
#> |   |   |   |   |   |   |   [36] V5 > 1 *
#> |   |   |   |   |   |   [37] V3 > 7 *
#> |   |   |   |   |   [38] V5 > 6 *
#> |   |   |   |   [39] V2 > 66
#> |   |   |   |   |   [40] V3 <= 8 *
#> |   |   |   |   |   [41] V3 > 8 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 1 *
#> |   |   |   |   [44] V3 > 1
#> |   |   |   |   |   [45] V3 <= 3 *
#> |   |   |   |   |   [46] V3 > 3
#> |   |   |   |   |   |   [47] V5 <= 11
#> |   |   |   |   |   |   |   [48] V3 <= 6 *
#> |   |   |   |   |   |   |   [49] V3 > 6
#> |   |   |   |   |   |   |   |   [50] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [51] V7 > 110
#> |   |   |   |   |   |   |   |   |   [52] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   [53] V7 > 120
#> |   |   |   |   |   |   |   |   |   |   [54] V7 <= 179 *
#> |   |   |   |   |   |   |   |   |   |   [55] V7 > 179 *
#> |   |   |   |   |   |   [56] V5 > 11 *
#> |   |   [57] V2 > 76
#> |   |   |   [58] V6 <= 0
#> |   |   |   |   [59] V5 <= 5 *
#> |   |   |   |   [60] V5 > 5 *
#> |   |   |   [61] V6 > 0
#> |   |   |   |   [62] V7 <= 138 *
#> |   |   |   |   [63] V7 > 138 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 135
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V7 > 135 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   [11] V3 > 2
#> |   |   |   |   |   [12] V3 <= 6
#> |   |   |   |   |   |   [13] V2 <= 70 *
#> |   |   |   |   |   |   [14] V2 > 70
#> |   |   |   |   |   |   |   [15] V2 <= 82 *
#> |   |   |   |   |   |   |   [16] V2 > 82 *
#> |   |   |   |   |   [17] V3 > 6
#> |   |   |   |   |   |   [18] V7 <= 154 *
#> |   |   |   |   |   |   [19] V7 > 154 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 71
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V2 <= 60
#> |   |   |   |   |   |   [24] V2 <= 55
#> |   |   |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   |   |   [26] V3 > 4 *
#> |   |   |   |   |   |   [27] V2 > 55 *
#> |   |   |   |   |   [28] V2 > 60
#> |   |   |   |   |   |   [29] V7 <= 135 *
#> |   |   |   |   |   |   [30] V7 > 135 *
#> |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   [32] V3 <= 2 *
#> |   |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   |   [34] V7 <= 100 *
#> |   |   |   |   |   |   [35] V7 > 100
#> |   |   |   |   |   |   |   [36] V5 <= 6
#> |   |   |   |   |   |   |   |   [37] V7 <= 145
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 135 *
#> |   |   |   |   |   |   |   |   [40] V7 > 145 *
#> |   |   |   |   |   |   |   [41] V5 > 6
#> |   |   |   |   |   |   |   |   [42] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [43] V2 > 55 *
#> |   |   |   [44] V2 > 71
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V3 <= 7 *
#> |   |   |   |   |   [47] V3 > 7 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V2 <= 83
#> |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   [51] V3 > 4
#> |   |   |   |   |   |   |   [52] V2 <= 75 *
#> |   |   |   |   |   |   |   [53] V2 > 75 *
#> |   |   |   |   |   [54] V2 > 83 *
#> |   [55] V5 > 171
#> |   |   [56] V3 <= 3
#> |   |   |   [57] V2 <= 50 *
#> |   |   |   [58] V2 > 50 *
#> |   |   [59] V3 > 3 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 134
#> |   |   |   |   |   [6] V2 <= 69 *
#> |   |   |   |   |   [7] V2 > 69 *
#> |   |   |   |   [8] V7 > 134
#> |   |   |   |   |   [9] V5 <= 16 *
#> |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   [13] V5 > 2
#> |   |   |   |   |   [14] V2 <= 70 *
#> |   |   |   |   |   [15] V2 > 70
#> |   |   |   |   |   |   [16] V2 <= 82
#> |   |   |   |   |   |   |   [17] V5 <= 6 *
#> |   |   |   |   |   |   |   [18] V5 > 6 *
#> |   |   |   |   |   |   [19] V2 > 82
#> |   |   |   |   |   |   |   [20] V5 <= 8 *
#> |   |   |   |   |   |   |   [21] V5 > 8 *
#> |   |   [22] V5 > 173
#> |   |   |   [23] V5 <= 179 *
#> |   |   |   [24] V5 > 179 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V3 <= 7
#> |   |   |   |   [28] V7 <= 134 *
#> |   |   |   |   [29] V7 > 134
#> |   |   |   |   |   [30] V2 <= 71
#> |   |   |   |   |   |   [31] V2 <= 59 *
#> |   |   |   |   |   |   [32] V2 > 59 *
#> |   |   |   |   |   [33] V2 > 71 *
#> |   |   |   [34] V3 > 7
#> |   |   |   |   [35] V7 <= 170
#> |   |   |   |   |   [36] V2 <= 57 *
#> |   |   |   |   |   [37] V2 > 57
#> |   |   |   |   |   |   [38] V5 <= 4 *
#> |   |   |   |   |   |   [39] V5 > 4
#> |   |   |   |   |   |   |   [40] V3 <= 13 *
#> |   |   |   |   |   |   |   [41] V3 > 13 *
#> |   |   |   |   [42] V7 > 170 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V2 <= 72
#> |   |   |   |   [45] V2 <= 43 *
#> |   |   |   |   [46] V2 > 43
#> |   |   |   |   |   [47] V2 <= 57
#> |   |   |   |   |   |   [48] V7 <= 150 *
#> |   |   |   |   |   |   [49] V7 > 150 *
#> |   |   |   |   |   [50] V2 > 57
#> |   |   |   |   |   |   [51] V5 <= 1
#> |   |   |   |   |   |   |   [52] V2 <= 65 *
#> |   |   |   |   |   |   |   [53] V2 > 65 *
#> |   |   |   |   |   |   [54] V5 > 1
#> |   |   |   |   |   |   |   [55] V5 <= 9 *
#> |   |   |   |   |   |   |   [56] V5 > 9 *
#> |   |   |   [57] V2 > 72
#> |   |   |   |   [58] V2 <= 85
#> |   |   |   |   |   [59] V5 <= 3
#> |   |   |   |   |   |   [60] V7 <= 130 *
#> |   |   |   |   |   |   [61] V7 > 130 *
#> |   |   |   |   |   [62] V5 > 3 *
#> |   |   |   |   [63] V2 > 85 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V2 <= 71
#> |   |   |   |   |   |   [10] V2 <= 60
#> |   |   |   |   |   |   |   [11] V3 <= 13
#> |   |   |   |   |   |   |   |   [12] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [13] V3 > 4 *
#> |   |   |   |   |   |   |   [14] V3 > 13 *
#> |   |   |   |   |   |   [15] V2 > 60
#> |   |   |   |   |   |   |   [16] V7 <= 160
#> |   |   |   |   |   |   |   |   [17] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [18] V5 > 3 *
#> |   |   |   |   |   |   |   [19] V7 > 160 *
#> |   |   |   |   |   [20] V2 > 71
#> |   |   |   |   |   |   [21] V5 <= 4 *
#> |   |   |   |   |   |   [22] V5 > 4 *
#> |   |   |   [23] V6 > 0
#> |   |   |   |   [24] V7 <= 112
#> |   |   |   |   |   [25] V4 <= 0 *
#> |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   [27] V5 <= 2 *
#> |   |   |   |   |   |   [28] V5 > 2 *
#> |   |   |   |   [29] V7 > 112
#> |   |   |   |   |   [30] V4 <= 0
#> |   |   |   |   |   |   [31] V7 <= 148 *
#> |   |   |   |   |   |   [32] V7 > 148 *
#> |   |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   |   [34] V2 <= 85
#> |   |   |   |   |   |   |   [35] V5 <= 6
#> |   |   |   |   |   |   |   |   [36] V2 <= 74
#> |   |   |   |   |   |   |   |   |   [37] V5 <= 2
#> |   |   |   |   |   |   |   |   |   |   [38] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   [39] V2 > 60 *
#> |   |   |   |   |   |   |   |   |   [40] V5 > 2 *
#> |   |   |   |   |   |   |   |   [41] V2 > 74
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 138 *
#> |   |   |   |   |   |   |   [44] V5 > 6
#> |   |   |   |   |   |   |   |   [45] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [46] V7 > 129
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 16 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 16 *
#> |   |   |   |   |   |   [49] V2 > 85 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V5 <= 145
#> |   |   |   |   [52] V2 <= 65 *
#> |   |   |   |   [53] V2 > 65
#> |   |   |   |   |   [54] V5 <= 67 *
#> |   |   |   |   |   [55] V5 > 67 *
#> |   |   |   [56] V5 > 145 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 152
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V7 <= 134 *
#> |   |   |   |   |   [8] V7 > 134
#> |   |   |   |   |   |   [9] V5 <= 13 *
#> |   |   |   |   |   |   [10] V5 > 13 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V7 <= 199
#> |   |   |   |   |   [13] V2 <= 55
#> |   |   |   |   |   |   [14] V2 <= 41 *
#> |   |   |   |   |   |   [15] V2 > 41
#> |   |   |   |   |   |   |   [16] V3 <= 12
#> |   |   |   |   |   |   |   |   [17] V2 <= 53
#> |   |   |   |   |   |   |   |   |   [18] V7 <= 160 *
#> |   |   |   |   |   |   |   |   |   [19] V7 > 160 *
#> |   |   |   |   |   |   |   |   [20] V2 > 53 *
#> |   |   |   |   |   |   |   [21] V3 > 12 *
#> |   |   |   |   |   [22] V2 > 55
#> |   |   |   |   |   |   [23] V5 <= 11
#> |   |   |   |   |   |   |   [24] V3 <= 1 *
#> |   |   |   |   |   |   |   [25] V3 > 1
#> |   |   |   |   |   |   |   |   [26] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [28] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   |   [29] V2 > 66 *
#> |   |   |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [31] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   |   [32] V2 > 67 *
#> |   |   |   |   |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   |   |   |   |   [34] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [35] V3 > 9
#> |   |   |   |   |   |   |   |   |   |   [36] V7 <= 146 *
#> |   |   |   |   |   |   |   |   |   |   [37] V7 > 146 *
#> |   |   |   |   |   |   [38] V5 > 11 *
#> |   |   |   |   [39] V7 > 199 *
#> |   |   [40] V5 > 152
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 7
#> |   |   |   |   |   [44] V2 <= 52 *
#> |   |   |   |   |   [45] V2 > 52 *
#> |   |   |   |   [46] V3 > 7 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V2 <= 84
#> |   |   |   |   [50] V2 <= 81
#> |   |   |   |   |   [51] V3 <= 12
#> |   |   |   |   |   |   [52] V5 <= 108 *
#> |   |   |   |   |   |   [53] V5 > 108 *
#> |   |   |   |   |   [54] V3 > 12 *
#> |   |   |   |   [55] V2 > 81 *
#> |   |   |   [56] V2 > 84 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V5 <= 169
#> |   |   |   |   [59] V5 <= 8
#> |   |   |   |   |   [60] V7 <= 138
#> |   |   |   |   |   |   [61] V5 <= 3 *
#> |   |   |   |   |   |   [62] V5 > 3 *
#> |   |   |   |   |   [63] V7 > 138
#> |   |   |   |   |   |   [64] V4 <= 0 *
#> |   |   |   |   |   |   [65] V4 > 0 *
#> |   |   |   |   [66] V5 > 8
#> |   |   |   |   |   [67] V2 <= 81 *
#> |   |   |   |   |   [68] V2 > 81 *
#> |   |   |   [69] V5 > 169 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V2 <= 69 *
#> |   |   |   |   |   [8] V2 > 69 *
#> |   |   |   [9] V3 > 2
#> |   |   |   |   [10] V2 <= 64
#> |   |   |   |   |   [11] V2 <= 59 *
#> |   |   |   |   |   [12] V2 > 59 *
#> |   |   |   |   [13] V2 > 64
#> |   |   |   |   |   [14] V7 <= 145
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   |   [17] V5 <= 52
#> |   |   |   |   |   |   |   |   [18] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [19] V3 > 4 *
#> |   |   |   |   |   |   |   [20] V5 > 52 *
#> |   |   |   |   |   [21] V7 > 145
#> |   |   |   |   |   |   [22] V5 <= 15 *
#> |   |   |   |   |   |   [23] V5 > 15 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 85
#> |   |   |   |   [26] V5 <= 11
#> |   |   |   |   |   [27] V2 <= 55
#> |   |   |   |   |   |   [28] V5 <= 5
#> |   |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   |   |   |   [31] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [32] V7 > 140 *
#> |   |   |   |   |   |   [33] V5 > 5 *
#> |   |   |   |   |   [34] V2 > 55
#> |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   [36] V2 <= 61 *
#> |   |   |   |   |   |   |   [37] V2 > 61
#> |   |   |   |   |   |   |   |   [38] V2 <= 71
#> |   |   |   |   |   |   |   |   |   [39] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [40] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   [41] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [42] V3 > 3 *
#> |   |   |   |   |   |   |   |   [43] V2 > 71 *
#> |   |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   |   [45] V7 <= 103 *
#> |   |   |   |   |   |   |   [46] V7 > 103
#> |   |   |   |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [48] V3 > 4
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 19
#> |   |   |   |   |   |   |   |   |   |   [50] V7 <= 150
#> |   |   |   |   |   |   |   |   |   |   |   [51] V2 <= 72
#> |   |   |   |   |   |   |   |   |   |   |   |   [52] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [53] V2 > 66 *
#> |   |   |   |   |   |   |   |   |   |   |   [54] V2 > 72 *
#> |   |   |   |   |   |   |   |   |   |   [55] V7 > 150 *
#> |   |   |   |   |   |   |   |   |   [56] V3 > 19 *
#> |   |   |   |   [57] V5 > 11 *
#> |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 173
#> |   |   [60] V2 <= 50 *
#> |   |   [61] V2 > 50 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 78
#> |   |   |   |   |   [6] V5 <= 6 *
#> |   |   |   |   |   [7] V5 > 6 *
#> |   |   |   |   [8] V2 > 78 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V7 <= 129
#> |   |   |   |   |   [11] V7 <= 112 *
#> |   |   |   |   |   [12] V7 > 112 *
#> |   |   |   |   [13] V7 > 129
#> |   |   |   |   |   [14] V7 <= 142 *
#> |   |   |   |   |   [15] V7 > 142
#> |   |   |   |   |   |   [16] V2 <= 80 *
#> |   |   |   |   |   |   [17] V2 > 80 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 85
#> |   |   |   |   [20] V7 <= 96 *
#> |   |   |   |   [21] V7 > 96
#> |   |   |   |   |   [22] V5 <= 6
#> |   |   |   |   |   |   [23] V7 <= 146
#> |   |   |   |   |   |   |   [24] V3 <= 11
#> |   |   |   |   |   |   |   |   [25] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [26] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   [27] V2 > 54
#> |   |   |   |   |   |   |   |   |   |   [28] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   |   [29] V7 > 133 *
#> |   |   |   |   |   |   |   |   [30] V5 > 1
#> |   |   |   |   |   |   |   |   |   [31] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [32] V2 > 66 *
#> |   |   |   |   |   |   |   [33] V3 > 11 *
#> |   |   |   |   |   |   [34] V7 > 146
#> |   |   |   |   |   |   |   [35] V2 <= 78
#> |   |   |   |   |   |   |   |   [36] V2 <= 59
#> |   |   |   |   |   |   |   |   |   [37] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [38] V5 > 1 *
#> |   |   |   |   |   |   |   |   [39] V2 > 59
#> |   |   |   |   |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [42] V2 <= 68 *
#> |   |   |   |   |   |   |   |   |   |   [43] V2 > 68 *
#> |   |   |   |   |   |   |   [44] V2 > 78 *
#> |   |   |   |   |   [45] V5 > 6
#> |   |   |   |   |   |   [46] V7 <= 105 *
#> |   |   |   |   |   |   [47] V7 > 105
#> |   |   |   |   |   |   |   [48] V5 <= 7 *
#> |   |   |   |   |   |   |   [49] V5 > 7
#> |   |   |   |   |   |   |   |   [50] V3 <= 19
#> |   |   |   |   |   |   |   |   |   [51] V2 <= 73
#> |   |   |   |   |   |   |   |   |   |   [52] V3 <= 12
#> |   |   |   |   |   |   |   |   |   |   |   [53] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   |   [54] V7 > 150 *
#> |   |   |   |   |   |   |   |   |   |   [55] V3 > 12 *
#> |   |   |   |   |   |   |   |   |   [56] V2 > 73 *
#> |   |   |   |   |   |   |   |   [57] V3 > 19 *
#> |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 173
#> |   |   [60] V5 <= 179 *
#> |   |   [61] V5 > 179 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 81
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 52 *
#> |   |   |   |   |   [8] V2 > 52 *
#> |   |   |   [9] V2 > 54
#> |   |   |   |   [10] V5 <= 161
#> |   |   |   |   |   [11] V4 <= 0
#> |   |   |   |   |   |   [12] V5 <= 13 *
#> |   |   |   |   |   |   [13] V5 > 13 *
#> |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   [15] V2 <= 66
#> |   |   |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   |   |   |   |   [18] V2 > 66
#> |   |   |   |   |   |   |   [19] V3 <= 8 *
#> |   |   |   |   |   |   |   [20] V3 > 8 *
#> |   |   |   |   [21] V5 > 161
#> |   |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   |   [23] V3 > 2 *
#> |   |   [24] V2 > 81
#> |   |   |   [25] V5 <= 103 *
#> |   |   |   [26] V5 > 103 *
#> |   [27] V6 > 0
#> |   |   [28] V2 <= 71
#> |   |   |   [29] V5 <= 101
#> |   |   |   |   [30] V4 <= 0
#> |   |   |   |   |   [31] V2 <= 64 *
#> |   |   |   |   |   [32] V2 > 64 *
#> |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   [34] V2 <= 56
#> |   |   |   |   |   |   [35] V3 <= 9
#> |   |   |   |   |   |   |   [36] V3 <= 5 *
#> |   |   |   |   |   |   |   [37] V3 > 5 *
#> |   |   |   |   |   |   [38] V3 > 9 *
#> |   |   |   |   |   [39] V2 > 56
#> |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   [41] V3 > 4
#> |   |   |   |   |   |   |   [42] V5 <= 9
#> |   |   |   |   |   |   |   |   [43] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [44] V7 > 135 *
#> |   |   |   |   |   |   |   [45] V5 > 9 *
#> |   |   |   [46] V5 > 101
#> |   |   |   |   [47] V7 <= 144 *
#> |   |   |   |   [48] V7 > 144 *
#> |   |   [49] V2 > 71
#> |   |   |   [50] V7 <= 112
#> |   |   |   |   [51] V4 <= 0 *
#> |   |   |   |   [52] V4 > 0 *
#> |   |   |   [53] V7 > 112
#> |   |   |   |   [54] V5 <= 173
#> |   |   |   |   |   [55] V2 <= 85
#> |   |   |   |   |   |   [56] V5 <= 10
#> |   |   |   |   |   |   |   [57] V3 <= 15
#> |   |   |   |   |   |   |   |   [58] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [59] V4 > 0
#> |   |   |   |   |   |   |   |   |   [60] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [61] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   [62] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   [63] V3 > 4 *
#> |   |   |   |   |   |   |   [64] V3 > 15 *
#> |   |   |   |   |   |   [65] V5 > 10 *
#> |   |   |   |   |   [66] V2 > 85 *
#> |   |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 139
#> |   |   |   |   [5] V7 <= 110
#> |   |   |   |   |   [6] V5 <= 8 *
#> |   |   |   |   |   [7] V5 > 8 *
#> |   |   |   |   [8] V7 > 110
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V7 > 139
#> |   |   |   |   [12] V2 <= 73
#> |   |   |   |   |   [13] V3 <= 7 *
#> |   |   |   |   |   [14] V3 > 7 *
#> |   |   |   |   [15] V2 > 73
#> |   |   |   |   |   [16] V7 <= 155 *
#> |   |   |   |   |   [17] V7 > 155 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 74
#> |   |   |   |   [20] V5 <= 12
#> |   |   |   |   |   [21] V2 <= 55
#> |   |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   |   [23] V3 <= 4 *
#> |   |   |   |   |   |   |   [24] V3 > 4 *
#> |   |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   |   [26] V5 <= 4
#> |   |   |   |   |   |   |   |   [27] V2 <= 44 *
#> |   |   |   |   |   |   |   |   [28] V2 > 44 *
#> |   |   |   |   |   |   |   [29] V5 > 4 *
#> |   |   |   |   |   [30] V2 > 55
#> |   |   |   |   |   |   [31] V3 <= 3
#> |   |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   |   |   |   |   [34] V3 > 3
#> |   |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   |   [36] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [37] V3 > 10
#> |   |   |   |   |   |   |   |   |   [38] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   [39] V3 > 13 *
#> |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   [41] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 7 *
#> |   |   |   |   |   |   |   |   [44] V5 > 1
#> |   |   |   |   |   |   |   |   |   [45] V7 <= 153
#> |   |   |   |   |   |   |   |   |   |   [46] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   [47] V2 > 65 *
#> |   |   |   |   |   |   |   |   |   [48] V7 > 153 *
#> |   |   |   |   [49] V5 > 12 *
#> |   |   |   [50] V2 > 74
#> |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V7 <= 138 *
#> |   |   |   |   |   [54] V7 > 138
#> |   |   |   |   |   |   [55] V3 <= 8 *
#> |   |   |   |   |   |   [56] V3 > 8 *
#> |   [57] V5 > 173 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V5 <= 1 *
#> |   |   |   |   [6] V5 > 1
#> |   |   |   |   |   [7] V5 <= 50 *
#> |   |   |   |   |   [8] V5 > 50 *
#> |   |   |   [9] V7 > 112
#> |   |   |   |   [10] V2 <= 70
#> |   |   |   |   |   [11] V5 <= 13
#> |   |   |   |   |   |   [12] V5 <= 8
#> |   |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   |   |   [15] V5 > 8 *
#> |   |   |   |   |   [16] V5 > 13 *
#> |   |   |   |   [17] V2 > 70
#> |   |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   [20] V3 > 4 *
#> |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   [22] V2 <= 81 *
#> |   |   |   |   |   |   [23] V2 > 81 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 85
#> |   |   |   |   [26] V2 <= 54
#> |   |   |   |   |   [27] V3 <= 9
#> |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   [30] V7 <= 122 *
#> |   |   |   |   |   |   |   [31] V7 > 122 *
#> |   |   |   |   |   [32] V3 > 9 *
#> |   |   |   |   [33] V2 > 54
#> |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   [35] V7 <= 135
#> |   |   |   |   |   |   |   [36] V5 <= 7 *
#> |   |   |   |   |   |   |   [37] V5 > 7 *
#> |   |   |   |   |   |   [38] V7 > 135
#> |   |   |   |   |   |   |   [39] V2 <= 75
#> |   |   |   |   |   |   |   |   [40] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [41] V2 > 62
#> |   |   |   |   |   |   |   |   |   [42] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [43] V5 > 1 *
#> |   |   |   |   |   |   |   [44] V2 > 75 *
#> |   |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   |   [46] V3 <= 18
#> |   |   |   |   |   |   |   [47] V7 <= 96 *
#> |   |   |   |   |   |   |   [48] V7 > 96
#> |   |   |   |   |   |   |   |   [49] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [50] V2 <= 75
#> |   |   |   |   |   |   |   |   |   |   [51] V2 <= 72
#> |   |   |   |   |   |   |   |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   |   |   [54] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [55] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   |   [56] V2 > 72 *
#> |   |   |   |   |   |   |   |   |   [57] V2 > 75
#> |   |   |   |   |   |   |   |   |   |   [58] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   |   [59] V7 > 147 *
#> |   |   |   |   |   |   |   |   [60] V3 > 13 *
#> |   |   |   |   |   |   [61] V3 > 18 *
#> |   |   |   [62] V2 > 85 *
#> |   [63] V5 > 173 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V2 <= 59
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 6
#> |   |   |   |   |   |   [8] V5 <= 0 *
#> |   |   |   |   |   |   [9] V5 > 0
#> |   |   |   |   |   |   |   [10] V2 <= 46 *
#> |   |   |   |   |   |   |   [11] V2 > 46
#> |   |   |   |   |   |   |   |   [12] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [13] V7 > 140 *
#> |   |   |   |   |   [14] V5 > 6 *
#> |   |   |   [15] V2 > 59
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V7 <= 136
#> |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   [20] V7 > 136 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V7 <= 165
#> |   |   |   |   |   |   |   [24] V2 <= 64 *
#> |   |   |   |   |   |   |   [25] V2 > 64
#> |   |   |   |   |   |   |   |   [26] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [27] V3 > 13 *
#> |   |   |   |   |   |   [28] V7 > 165 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   |   [31] V3 > 3
#> |   |   |   |   |   |   |   [32] V2 <= 72
#> |   |   |   |   |   |   |   |   [33] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [34] V7 > 120
#> |   |   |   |   |   |   |   |   |   [35] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [36] V2 > 65 *
#> |   |   |   |   |   |   |   [37] V2 > 72 *
#> |   |   [38] V2 > 74
#> |   |   |   [39] V7 <= 97 *
#> |   |   |   [40] V7 > 97
#> |   |   |   |   [41] V4 <= 0
#> |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V2 <= 83 *
#> |   |   |   |   |   |   [45] V2 > 83 *
#> |   |   |   |   [46] V4 > 0
#> |   |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   |   [48] V2 <= 81 *
#> |   |   |   |   |   |   [49] V2 > 81 *
#> |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   [51] V2 <= 85
#> |   |   |   |   |   |   |   [52] V3 <= 13
#> |   |   |   |   |   |   |   |   [53] V2 <= 77 *
#> |   |   |   |   |   |   |   |   [54] V2 > 77 *
#> |   |   |   |   |   |   |   [55] V3 > 13 *
#> |   |   |   |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 171
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 51
#> |   |   |   |   [5] V5 <= 1 *
#> |   |   |   |   [6] V5 > 1 *
#> |   |   |   [7] V2 > 51
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V5 <= 161
#> |   |   |   |   |   |   [10] V3 <= 6 *
#> |   |   |   |   |   |   [11] V3 > 6 *
#> |   |   |   |   |   [12] V5 > 161 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V3 <= 10
#> |   |   |   |   |   |   [15] V5 <= 3
#> |   |   |   |   |   |   |   [16] V2 <= 65
#> |   |   |   |   |   |   |   |   [17] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [18] V2 > 60 *
#> |   |   |   |   |   |   |   [19] V2 > 65 *
#> |   |   |   |   |   |   [20] V5 > 3 *
#> |   |   |   |   |   [21] V3 > 10
#> |   |   |   |   |   |   [22] V2 <= 61 *
#> |   |   |   |   |   |   [23] V2 > 61
#> |   |   |   |   |   |   |   [24] V2 <= 71 *
#> |   |   |   |   |   |   |   [25] V2 > 71 *
#> |   |   [26] V6 > 0
#> |   |   |   [27] V4 <= 0
#> |   |   |   |   [28] V2 <= 49 *
#> |   |   |   |   [29] V2 > 49
#> |   |   |   |   |   [30] V3 <= 2 *
#> |   |   |   |   |   [31] V3 > 2
#> |   |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   |   [34] V7 <= 135 *
#> |   |   |   |   |   |   |   [35] V7 > 135 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V3 <= 1 *
#> |   |   |   |   [38] V3 > 1
#> |   |   |   |   |   [39] V5 <= 11
#> |   |   |   |   |   |   [40] V2 <= 58
#> |   |   |   |   |   |   |   [41] V7 <= 116 *
#> |   |   |   |   |   |   |   [42] V7 > 116
#> |   |   |   |   |   |   |   |   [43] V2 <= 49 *
#> |   |   |   |   |   |   |   |   [44] V2 > 49 *
#> |   |   |   |   |   |   [45] V2 > 58
#> |   |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   |   [47] V3 > 4
#> |   |   |   |   |   |   |   |   [48] V2 <= 73
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 125 *
#> |   |   |   |   |   |   |   |   [51] V2 > 73 *
#> |   |   |   |   |   [52] V5 > 11 *
#> |   [53] V2 > 78
#> |   |   [54] V7 <= 106 *
#> |   |   [55] V7 > 106
#> |   |   |   [56] V5 <= 173
#> |   |   |   |   [57] V6 <= 0
#> |   |   |   |   |   [58] V4 <= 0 *
#> |   |   |   |   |   [59] V4 > 0 *
#> |   |   |   |   [60] V6 > 0
#> |   |   |   |   |   [61] V2 <= 87
#> |   |   |   |   |   |   [62] V4 <= 0
#> |   |   |   |   |   |   |   [63] V7 <= 138 *
#> |   |   |   |   |   |   |   [64] V7 > 138 *
#> |   |   |   |   |   |   [65] V4 > 0 *
#> |   |   |   |   |   [66] V2 > 87 *
#> |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V7 <= 148
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V7 > 148 *
#> |   |   |   [11] V5 > 171 *
#> |   |   [12] V4 > 0
#> |   |   |   [13] V7 <= 102 *
#> |   |   |   [14] V7 > 102
#> |   |   |   |   [15] V3 <= 1 *
#> |   |   |   |   [16] V3 > 1
#> |   |   |   |   |   [17] V2 <= 60
#> |   |   |   |   |   |   [18] V2 <= 43 *
#> |   |   |   |   |   |   [19] V2 > 43
#> |   |   |   |   |   |   |   [20] V5 <= 9
#> |   |   |   |   |   |   |   |   [21] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [22] V5 > 0
#> |   |   |   |   |   |   |   |   |   [23] V2 <= 57
#> |   |   |   |   |   |   |   |   |   |   [24] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [25] V3 > 6 *
#> |   |   |   |   |   |   |   |   |   [26] V2 > 57 *
#> |   |   |   |   |   |   |   [27] V5 > 9 *
#> |   |   |   |   |   [28] V2 > 60
#> |   |   |   |   |   |   [29] V3 <= 12
#> |   |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   |   [31] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [32] V7 > 142 *
#> |   |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   |   |   |   |   [34] V3 > 12
#> |   |   |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   |   |   [36] V6 > 0 *
#> |   [37] V2 > 72
#> |   |   [38] V5 <= 173
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V2 <= 82
#> |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   [43] V5 <= 6 *
#> |   |   |   |   |   |   [44] V5 > 6 *
#> |   |   |   |   [45] V2 > 82
#> |   |   |   |   |   [46] V5 <= 8 *
#> |   |   |   |   |   [47] V5 > 8
#> |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   [49] V6 > 0 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   [52] V3 <= 8 *
#> |   |   |   |   |   [53] V3 > 8 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V3 <= 12
#> |   |   |   |   |   |   [56] V7 <= 150
#> |   |   |   |   |   |   |   [57] V3 <= 6 *
#> |   |   |   |   |   |   |   [58] V3 > 6 *
#> |   |   |   |   |   |   [59] V7 > 150 *
#> |   |   |   |   |   [60] V3 > 12 *
#> |   |   [61] V5 > 173 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 52
#> |   |   |   [4] V7 <= 152 *
#> |   |   |   [5] V7 > 152 *
#> |   |   [6] V2 > 52
#> |   |   |   [7] V5 <= 173
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 13
#> |   |   |   |   |   |   [10] V5 <= 6 *
#> |   |   |   |   |   |   [11] V5 > 6 *
#> |   |   |   |   |   [12] V5 > 13 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   [15] V5 > 2
#> |   |   |   |   |   |   [16] V2 <= 61 *
#> |   |   |   |   |   |   [17] V2 > 61
#> |   |   |   |   |   |   |   [18] V7 <= 110 *
#> |   |   |   |   |   |   |   [19] V7 > 110
#> |   |   |   |   |   |   |   |   [20] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [21] V7 > 147
#> |   |   |   |   |   |   |   |   |   [22] V2 <= 75 *
#> |   |   |   |   |   |   |   |   |   [23] V2 > 75 *
#> |   |   |   [24] V5 > 173 *
#> |   [25] V4 > 0
#> |   |   [26] V2 <= 79
#> |   |   |   [27] V2 <= 54
#> |   |   |   |   [28] V5 <= 6
#> |   |   |   |   |   [29] V7 <= 119 *
#> |   |   |   |   |   [30] V7 > 119
#> |   |   |   |   |   |   [31] V7 <= 150
#> |   |   |   |   |   |   |   [32] V5 <= 0 *
#> |   |   |   |   |   |   |   [33] V5 > 0 *
#> |   |   |   |   |   |   [34] V7 > 150 *
#> |   |   |   |   [35] V5 > 6 *
#> |   |   |   [36] V2 > 54
#> |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   [38] V7 <= 160
#> |   |   |   |   |   |   [39] V5 <= 9
#> |   |   |   |   |   |   |   [40] V2 <= 69
#> |   |   |   |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [42] V5 > 3 *
#> |   |   |   |   |   |   |   [43] V2 > 69 *
#> |   |   |   |   |   |   [44] V5 > 9 *
#> |   |   |   |   |   [45] V7 > 160 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   [48] V3 > 4
#> |   |   |   |   |   |   [49] V3 <= 17
#> |   |   |   |   |   |   |   [50] V5 <= 9
#> |   |   |   |   |   |   |   |   [51] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [52] V3 > 5
#> |   |   |   |   |   |   |   |   |   [53] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [54] V3 > 9
#> |   |   |   |   |   |   |   |   |   |   [55] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   [56] V7 > 135 *
#> |   |   |   |   |   |   |   [57] V5 > 9 *
#> |   |   |   |   |   |   [58] V3 > 17 *
#> |   |   [59] V2 > 79
#> |   |   |   [60] V2 <= 85
#> |   |   |   |   [61] V3 <= 13 *
#> |   |   |   |   [62] V3 > 13 *
#> |   |   |   [63] V2 > 85 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 152
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V7 <= 114 *
#> |   |   |   |   |   |   [9] V7 > 114
#> |   |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V2 <= 60
#> |   |   |   |   |   |   |   [15] V3 <= 5 *
#> |   |   |   |   |   |   |   [16] V3 > 5 *
#> |   |   |   |   |   |   [17] V2 > 60
#> |   |   |   |   |   |   |   [18] V7 <= 149 *
#> |   |   |   |   |   |   |   [19] V7 > 149 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V7 <= 190
#> |   |   |   |   |   |   |   [22] V2 <= 71
#> |   |   |   |   |   |   |   |   [23] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [24] V3 > 3
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 15
#> |   |   |   |   |   |   |   |   |   |   [26] V7 <= 135
#> |   |   |   |   |   |   |   |   |   |   |   [27] V2 <= 49 *
#> |   |   |   |   |   |   |   |   |   |   |   [28] V2 > 49
#> |   |   |   |   |   |   |   |   |   |   |   |   [29] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [30] V7 > 125 *
#> |   |   |   |   |   |   |   |   |   |   [31] V7 > 135
#> |   |   |   |   |   |   |   |   |   |   |   [32] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   |   [33] V7 > 150 *
#> |   |   |   |   |   |   |   |   |   [34] V3 > 15 *
#> |   |   |   |   |   |   |   [35] V2 > 71 *
#> |   |   |   |   |   |   [36] V7 > 190 *
#> |   |   |   [37] V5 > 14 *
#> |   |   [38] V5 > 152
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V2 <= 58 *
#> |   |   |   |   [42] V2 > 58 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 173
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   |   [48] V3 > 2 *
#> |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   [50] V5 <= 5 *
#> |   |   |   |   |   [51] V5 > 5
#> |   |   |   |   |   |   [52] V3 <= 7 *
#> |   |   |   |   |   |   [53] V3 > 7 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V2 <= 86
#> |   |   |   |   |   [56] V5 <= 3
#> |   |   |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   |   |   [58] V5 > 0 *
#> |   |   |   |   |   [59] V5 > 3
#> |   |   |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   |   |   [61] V6 > 0 *
#> |   |   |   |   [62] V2 > 86 *
#> |   |   [63] V5 > 173 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V2 <= 70
#> |   |   |   |   |   |   [7] V5 <= 7 *
#> |   |   |   |   |   |   [8] V5 > 7 *
#> |   |   |   |   |   [9] V2 > 70 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 51 *
#> |   |   |   |   |   [12] V2 > 51
#> |   |   |   |   |   |   [13] V5 <= 6
#> |   |   |   |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   |   |   |   [15] V3 > 2
#> |   |   |   |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   |   |   |   |   [18] V5 > 6
#> |   |   |   |   |   |   |   [19] V7 <= 133 *
#> |   |   |   |   |   |   |   [20] V7 > 133 *
#> |   |   |   [21] V6 > 0
#> |   |   |   |   [22] V2 <= 55
#> |   |   |   |   |   [23] V5 <= 5
#> |   |   |   |   |   |   [24] V2 <= 43 *
#> |   |   |   |   |   |   [25] V2 > 43 *
#> |   |   |   |   |   [26] V5 > 5 *
#> |   |   |   |   [27] V2 > 55
#> |   |   |   |   |   [28] V3 <= 1 *
#> |   |   |   |   |   [29] V3 > 1
#> |   |   |   |   |   |   [30] V4 <= 0
#> |   |   |   |   |   |   |   [31] V7 <= 144 *
#> |   |   |   |   |   |   |   [32] V7 > 144 *
#> |   |   |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   |   |   [34] V2 <= 72
#> |   |   |   |   |   |   |   |   [35] V7 <= 153
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 67
#> |   |   |   |   |   |   |   |   |   |   [37] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   [38] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 67 *
#> |   |   |   |   |   |   |   |   [40] V7 > 153 *
#> |   |   |   |   |   |   |   [41] V2 > 72
#> |   |   |   |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V5 > 0 *
#> |   |   [44] V5 > 171
#> |   |   |   [45] V2 <= 50 *
#> |   |   |   [46] V2 > 50 *
#> |   [47] V2 > 78
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V4 <= 0
#> |   |   |   |   [50] V7 <= 135 *
#> |   |   |   |   [51] V7 > 135 *
#> |   |   |   [52] V4 > 0 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V5 <= 173
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V7 <= 110 *
#> |   |   |   |   |   [57] V7 > 110
#> |   |   |   |   |   |   [58] V7 <= 130 *
#> |   |   |   |   |   |   [59] V7 > 130 *
#> |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   [61] V7 <= 142 *
#> |   |   |   |   |   [62] V7 > 142 *
#> |   |   |   [63] V5 > 173 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 67
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 8 *
#> |   |   |   |   |   [10] V5 > 8 *
#> |   |   |   [11] V2 > 67
#> |   |   |   |   [12] V7 <= 130
#> |   |   |   |   |   [13] V5 <= 6 *
#> |   |   |   |   |   [14] V5 > 6
#> |   |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   [17] V7 > 130
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V3 <= 4 *
#> |   |   |   |   |   |   [21] V3 > 4 *
#> |   |   [22] V5 > 171
#> |   |   |   [23] V6 <= 0 *
#> |   |   |   [24] V6 > 0
#> |   |   |   |   [25] V2 <= 50 *
#> |   |   |   |   [26] V2 > 50 *
#> |   [27] V4 > 0
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V5 <= 8
#> |   |   |   |   [30] V2 <= 66
#> |   |   |   |   |   [31] V5 <= 1
#> |   |   |   |   |   |   [32] V5 <= 0 *
#> |   |   |   |   |   |   [33] V5 > 0 *
#> |   |   |   |   |   [34] V5 > 1 *
#> |   |   |   |   [35] V2 > 66
#> |   |   |   |   |   [36] V3 <= 7 *
#> |   |   |   |   |   [37] V3 > 7 *
#> |   |   |   [38] V5 > 8
#> |   |   |   |   [39] V5 <= 9 *
#> |   |   |   |   [40] V5 > 9
#> |   |   |   |   |   [41] V7 <= 165 *
#> |   |   |   |   |   [42] V7 > 165 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V2 <= 74
#> |   |   |   |   [45] V2 <= 54
#> |   |   |   |   |   [46] V2 <= 43 *
#> |   |   |   |   |   [47] V2 > 43 *
#> |   |   |   |   [48] V2 > 54
#> |   |   |   |   |   [49] V7 <= 136
#> |   |   |   |   |   |   [50] V3 <= 5 *
#> |   |   |   |   |   |   [51] V3 > 5
#> |   |   |   |   |   |   |   [52] V5 <= 7 *
#> |   |   |   |   |   |   |   [53] V5 > 7 *
#> |   |   |   |   |   [54] V7 > 136
#> |   |   |   |   |   |   [55] V3 <= 18
#> |   |   |   |   |   |   |   [56] V7 <= 162 *
#> |   |   |   |   |   |   |   [57] V7 > 162 *
#> |   |   |   |   |   |   [58] V3 > 18 *
#> |   |   |   [59] V2 > 74
#> |   |   |   |   [60] V2 <= 82
#> |   |   |   |   |   [61] V2 <= 77 *
#> |   |   |   |   |   [62] V2 > 77 *
#> |   |   |   |   [63] V2 > 82 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 123
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 13 *
#> |   |   |   |   |   [7] V5 > 13 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V3 <= 12
#> |   |   |   |   |   |   [10] V5 <= 8
#> |   |   |   |   |   |   |   [11] V2 <= 65
#> |   |   |   |   |   |   |   |   [12] V2 <= 60
#> |   |   |   |   |   |   |   |   |   [13] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [14] V7 > 150 *
#> |   |   |   |   |   |   |   |   [15] V2 > 60 *
#> |   |   |   |   |   |   |   [16] V2 > 65 *
#> |   |   |   |   |   |   [17] V5 > 8 *
#> |   |   |   |   |   [18] V3 > 12
#> |   |   |   |   |   |   [19] V3 <= 17 *
#> |   |   |   |   |   |   [20] V3 > 17 *
#> |   |   |   [21] V5 > 123 *
#> |   |   [22] V6 > 0
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V7 <= 115 *
#> |   |   |   |   [25] V7 > 115
#> |   |   |   |   |   [26] V5 <= 152
#> |   |   |   |   |   |   [27] V3 <= 4 *
#> |   |   |   |   |   |   [28] V3 > 4 *
#> |   |   |   |   |   [29] V5 > 152
#> |   |   |   |   |   |   [30] V2 <= 50 *
#> |   |   |   |   |   |   [31] V2 > 50 *
#> |   |   |   [32] V4 > 0
#> |   |   |   |   [33] V7 <= 190
#> |   |   |   |   |   [34] V7 <= 118 *
#> |   |   |   |   |   [35] V7 > 118
#> |   |   |   |   |   |   [36] V5 <= 6
#> |   |   |   |   |   |   |   [37] V2 <= 55 *
#> |   |   |   |   |   |   |   [38] V2 > 55
#> |   |   |   |   |   |   |   |   [39] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [40] V5 > 1 *
#> |   |   |   |   |   |   [41] V5 > 6
#> |   |   |   |   |   |   |   [42] V3 <= 15 *
#> |   |   |   |   |   |   |   [43] V3 > 15 *
#> |   |   |   |   [44] V7 > 190 *
#> |   [45] V2 > 74
#> |   |   [46] V7 <= 167
#> |   |   |   [47] V6 <= 0
#> |   |   |   |   [48] V5 <= 154
#> |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   [50] V4 > 0 *
#> |   |   |   |   [51] V5 > 154 *
#> |   |   |   [52] V6 > 0
#> |   |   |   |   [53] V7 <= 104 *
#> |   |   |   |   [54] V7 > 104
#> |   |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   |   [56] V5 <= 119
#> |   |   |   |   |   |   |   [57] V2 <= 82 *
#> |   |   |   |   |   |   |   [58] V2 > 82 *
#> |   |   |   |   |   |   [59] V5 > 119 *
#> |   |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   |   [61] V3 <= 3 *
#> |   |   |   |   |   |   [62] V3 > 3
#> |   |   |   |   |   |   |   [63] V5 <= 1 *
#> |   |   |   |   |   |   |   [64] V5 > 1 *
#> |   |   [65] V7 > 167
#> |   |   |   [66] V5 <= 169 *
#> |   |   |   [67] V5 > 169 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V7 <= 90 *
#> |   |   [4] V7 > 90
#> |   |   |   [5] V2 <= 54
#> |   |   |   |   [6] V7 <= 110 *
#> |   |   |   |   [7] V7 > 110
#> |   |   |   |   |   [8] V5 <= 99
#> |   |   |   |   |   |   [9] V5 <= 7
#> |   |   |   |   |   |   |   [10] V5 <= 0 *
#> |   |   |   |   |   |   |   [11] V5 > 0
#> |   |   |   |   |   |   |   |   [12] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [13] V2 > 43
#> |   |   |   |   |   |   |   |   |   [14] V2 <= 50 *
#> |   |   |   |   |   |   |   |   |   [15] V2 > 50 *
#> |   |   |   |   |   |   [16] V5 > 7 *
#> |   |   |   |   |   [17] V5 > 99
#> |   |   |   |   |   |   [18] V3 <= 3 *
#> |   |   |   |   |   |   [19] V3 > 3 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V4 <= 0
#> |   |   |   |   |   [22] V5 <= 171
#> |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V3 <= 4 *
#> |   |   |   |   |   |   |   [26] V3 > 4 *
#> |   |   |   |   |   [27] V5 > 171 *
#> |   |   |   |   [28] V4 > 0
#> |   |   |   |   |   [29] V5 <= 4
#> |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   [31] V7 <= 142 *
#> |   |   |   |   |   |   |   [32] V7 > 142 *
#> |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   [34] V3 <= 3 *
#> |   |   |   |   |   |   |   [35] V3 > 3
#> |   |   |   |   |   |   |   |   [36] V7 <= 145 *
#> |   |   |   |   |   |   |   |   [37] V7 > 145 *
#> |   |   |   |   |   [38] V5 > 4
#> |   |   |   |   |   |   [39] V2 <= 64
#> |   |   |   |   |   |   |   [40] V3 <= 15 *
#> |   |   |   |   |   |   |   [41] V3 > 15 *
#> |   |   |   |   |   |   [42] V2 > 64
#> |   |   |   |   |   |   |   [43] V6 <= 0 *
#> |   |   |   |   |   |   |   [44] V6 > 0 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 167
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   [49] V5 <= 103 *
#> |   |   |   |   |   [50] V5 > 103 *
#> |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   [52] V2 <= 81
#> |   |   |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   |   |   [54] V3 > 6 *
#> |   |   |   |   |   [55] V2 > 81
#> |   |   |   |   |   |   [56] V2 <= 86 *
#> |   |   |   |   |   |   [57] V2 > 86 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V5 <= 6
#> |   |   |   |   |   [60] V3 <= 3 *
#> |   |   |   |   |   [61] V3 > 3
#> |   |   |   |   |   |   [62] V2 <= 82
#> |   |   |   |   |   |   |   [63] V3 <= 6 *
#> |   |   |   |   |   |   |   [64] V3 > 6 *
#> |   |   |   |   |   |   [65] V2 > 82 *
#> |   |   |   |   [66] V5 > 6 *
#> |   |   [67] V5 > 167 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 151
#> |   |   |   [4] V5 <= 168
#> |   |   |   |   [5] V7 <= 134
#> |   |   |   |   |   [6] V2 <= 58 *
#> |   |   |   |   |   [7] V2 > 58
#> |   |   |   |   |   |   [8] V7 <= 116
#> |   |   |   |   |   |   |   [9] V7 <= 106 *
#> |   |   |   |   |   |   |   [10] V7 > 106 *
#> |   |   |   |   |   |   [11] V7 > 116
#> |   |   |   |   |   |   |   [12] V2 <= 81 *
#> |   |   |   |   |   |   |   [13] V2 > 81 *
#> |   |   |   |   [14] V7 > 134
#> |   |   |   |   |   [15] V3 <= 7
#> |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   [17] V6 > 0 *
#> |   |   |   |   |   [18] V3 > 7 *
#> |   |   |   [19] V5 > 168 *
#> |   |   [20] V7 > 151
#> |   |   |   [21] V5 <= 173
#> |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   [23] V6 > 0 *
#> |   |   |   [24] V5 > 173 *
#> |   [25] V4 > 0
#> |   |   [26] V2 <= 85
#> |   |   |   [27] V6 <= 0
#> |   |   |   |   [28] V2 <= 76
#> |   |   |   |   |   [29] V2 <= 57
#> |   |   |   |   |   |   [30] V7 <= 166
#> |   |   |   |   |   |   |   [31] V5 <= 7 *
#> |   |   |   |   |   |   |   [32] V5 > 7 *
#> |   |   |   |   |   |   [33] V7 > 166 *
#> |   |   |   |   |   [34] V2 > 57
#> |   |   |   |   |   |   [35] V2 <= 67
#> |   |   |   |   |   |   |   [36] V2 <= 65 *
#> |   |   |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   |   |   |   [38] V2 > 67
#> |   |   |   |   |   |   |   [39] V2 <= 71 *
#> |   |   |   |   |   |   |   [40] V2 > 71 *
#> |   |   |   |   [41] V2 > 76 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V7 <= 96 *
#> |   |   |   |   [44] V7 > 96
#> |   |   |   |   |   [45] V2 <= 74
#> |   |   |   |   |   |   [46] V5 <= 11
#> |   |   |   |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   |   |   |   [48] V3 > 2
#> |   |   |   |   |   |   |   |   [49] V7 <= 135
#> |   |   |   |   |   |   |   |   |   [50] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [51] V3 > 7 *
#> |   |   |   |   |   |   |   |   [52] V7 > 135
#> |   |   |   |   |   |   |   |   |   [53] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [54] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   [55] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   [56] V7 > 150 *
#> |   |   |   |   |   |   [57] V5 > 11 *
#> |   |   |   |   |   [58] V2 > 74
#> |   |   |   |   |   |   [59] V2 <= 77 *
#> |   |   |   |   |   |   [60] V2 > 77 *
#> |   |   [61] V2 > 85 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 167
#> |   |   |   |   [5] V2 <= 81
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V2 <= 70 *
#> |   |   |   |   |   |   [9] V2 > 70 *
#> |   |   |   |   [10] V2 > 81 *
#> |   |   |   [11] V5 > 167 *
#> |   |   [12] V6 > 0
#> |   |   |   [13] V2 <= 59
#> |   |   |   |   [14] V5 <= 36 *
#> |   |   |   |   [15] V5 > 36 *
#> |   |   |   [16] V2 > 59
#> |   |   |   |   [17] V7 <= 160
#> |   |   |   |   |   [18] V5 <= 152
#> |   |   |   |   |   |   [19] V5 <= 2 *
#> |   |   |   |   |   |   [20] V5 > 2
#> |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   |   [23] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [24] V2 > 69
#> |   |   |   |   |   |   |   |   |   [25] V5 <= 6 *
#> |   |   |   |   |   |   |   |   |   [26] V5 > 6
#> |   |   |   |   |   |   |   |   |   |   [27] V2 <= 76 *
#> |   |   |   |   |   |   |   |   |   |   [28] V2 > 76 *
#> |   |   |   |   |   [29] V5 > 152 *
#> |   |   |   |   [30] V7 > 160 *
#> |   [31] V4 > 0
#> |   |   [32] V6 <= 0
#> |   |   |   [33] V5 <= 0 *
#> |   |   |   [34] V5 > 0
#> |   |   |   |   [35] V3 <= 13
#> |   |   |   |   |   [36] V5 <= 8
#> |   |   |   |   |   |   [37] V2 <= 60
#> |   |   |   |   |   |   |   [38] V3 <= 4 *
#> |   |   |   |   |   |   |   [39] V3 > 4 *
#> |   |   |   |   |   |   [40] V2 > 60
#> |   |   |   |   |   |   |   [41] V2 <= 71 *
#> |   |   |   |   |   |   |   [42] V2 > 71 *
#> |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   |   [44] V3 > 13
#> |   |   |   |   |   [45] V7 <= 160 *
#> |   |   |   |   |   [46] V7 > 160 *
#> |   |   [47] V6 > 0
#> |   |   |   [48] V2 <= 76
#> |   |   |   |   [49] V2 <= 56
#> |   |   |   |   |   [50] V5 <= 6
#> |   |   |   |   |   |   [51] V7 <= 119 *
#> |   |   |   |   |   |   [52] V7 > 119 *
#> |   |   |   |   |   [53] V5 > 6 *
#> |   |   |   |   [54] V2 > 56
#> |   |   |   |   |   [55] V2 <= 68
#> |   |   |   |   |   |   [56] V5 <= 1 *
#> |   |   |   |   |   |   [57] V5 > 1
#> |   |   |   |   |   |   |   [58] V3 <= 14 *
#> |   |   |   |   |   |   |   [59] V3 > 14 *
#> |   |   |   |   |   [60] V2 > 68
#> |   |   |   |   |   |   [61] V5 <= 5 *
#> |   |   |   |   |   |   [62] V5 > 5 *
#> |   |   |   [63] V2 > 76
#> |   |   |   |   [64] V2 <= 83
#> |   |   |   |   |   [65] V3 <= 9 *
#> |   |   |   |   |   [66] V3 > 9 *
#> |   |   |   |   [67] V2 > 83 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 152
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139
#> |   |   |   |   |   [6] V7 <= 112 *
#> |   |   |   |   |   [7] V7 > 112
#> |   |   |   |   |   |   [8] V3 <= 4 *
#> |   |   |   |   |   |   [9] V3 > 4 *
#> |   |   |   |   [10] V7 > 139
#> |   |   |   |   |   [11] V7 <= 150 *
#> |   |   |   |   |   [12] V7 > 150 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V3 <= 1 *
#> |   |   |   |   [15] V3 > 1
#> |   |   |   |   |   [16] V2 <= 60
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V5 <= 8
#> |   |   |   |   |   |   |   |   [19] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [20] V5 > 1 *
#> |   |   |   |   |   |   |   [21] V5 > 8 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V2 <= 43 *
#> |   |   |   |   |   |   |   [24] V2 > 43
#> |   |   |   |   |   |   |   |   [25] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [26] V2 > 54 *
#> |   |   |   |   |   [27] V2 > 60
#> |   |   |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   |   [31] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [32] V3 > 12 *
#> |   |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   |   [34] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [35] V3 > 10 *
#> |   |   [36] V5 > 152
#> |   |   |   [37] V6 <= 0 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V7 <= 140 *
#> |   |   |   |   [40] V7 > 140 *
#> |   [41] V2 > 74
#> |   |   [42] V6 <= 0
#> |   |   |   [43] V2 <= 86
#> |   |   |   |   [44] V5 <= 167
#> |   |   |   |   |   [45] V2 <= 79 *
#> |   |   |   |   |   [46] V2 > 79 *
#> |   |   |   |   [47] V5 > 167 *
#> |   |   |   [48] V2 > 86 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V7 <= 168
#> |   |   |   |   [51] V5 <= 173
#> |   |   |   |   |   [52] V2 <= 89
#> |   |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   |   [54] V7 <= 110 *
#> |   |   |   |   |   |   |   [55] V7 > 110
#> |   |   |   |   |   |   |   |   [56] V2 <= 82 *
#> |   |   |   |   |   |   |   |   [57] V2 > 82 *
#> |   |   |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   |   |   [59] V5 <= 1 *
#> |   |   |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   |   |   [61] V2 > 89 *
#> |   |   |   |   [62] V5 > 173 *
#> |   |   |   [63] V7 > 168 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 152
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V7 <= 139 *
#> |   |   |   |   |   |   [10] V7 > 139 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V5 <= 12
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V5 <= 6
#> |   |   |   |   |   |   |   [15] V2 <= 62
#> |   |   |   |   |   |   |   |   [16] V2 <= 49 *
#> |   |   |   |   |   |   |   |   [17] V2 > 49 *
#> |   |   |   |   |   |   |   [18] V2 > 62
#> |   |   |   |   |   |   |   |   [19] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [20] V5 > 1 *
#> |   |   |   |   |   |   [21] V5 > 6
#> |   |   |   |   |   |   |   [22] V7 <= 160
#> |   |   |   |   |   |   |   |   [23] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [24] V5 > 9 *
#> |   |   |   |   |   |   |   [25] V7 > 160 *
#> |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   [27] V7 <= 102 *
#> |   |   |   |   |   |   [28] V7 > 102
#> |   |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   |   |   |   [31] V7 <= 180
#> |   |   |   |   |   |   |   |   |   [32] V2 <= 71
#> |   |   |   |   |   |   |   |   |   |   [33] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   [34] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   |   |   [35] V2 > 55
#> |   |   |   |   |   |   |   |   |   |   |   |   [36] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [37] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   |   [38] V5 > 8 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 71 *
#> |   |   |   |   |   |   |   |   [40] V7 > 180 *
#> |   |   |   |   [41] V5 > 12 *
#> |   |   [42] V5 > 152
#> |   |   |   [43] V6 <= 0 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V3 <= 7 *
#> |   |   |   |   [46] V3 > 7 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V2 <= 83
#> |   |   |   |   [50] V5 <= 161
#> |   |   |   |   |   [51] V4 <= 0 *
#> |   |   |   |   |   [52] V4 > 0 *
#> |   |   |   |   [53] V5 > 161 *
#> |   |   |   [54] V2 > 83 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V4 <= 0
#> |   |   |   |   [57] V3 <= 2 *
#> |   |   |   |   [58] V3 > 2
#> |   |   |   |   |   [59] V5 <= 173
#> |   |   |   |   |   |   [60] V5 <= 8 *
#> |   |   |   |   |   |   [61] V5 > 8
#> |   |   |   |   |   |   |   [62] V5 <= 65 *
#> |   |   |   |   |   |   |   [63] V5 > 65 *
#> |   |   |   |   |   [64] V5 > 173 *
#> |   |   |   [65] V4 > 0
#> |   |   |   |   [66] V7 <= 138 *
#> |   |   |   |   [67] V7 > 138
#> |   |   |   |   |   [68] V5 <= 1 *
#> |   |   |   |   |   [69] V5 > 1 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V7 <= 141 *
#> |   |   |   |   [6] V7 > 141 *
#> |   |   |   [7] V2 > 54
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 65
#> |   |   |   |   |   |   [10] V5 <= 45 *
#> |   |   |   |   |   |   [11] V5 > 45 *
#> |   |   |   |   |   [12] V2 > 65
#> |   |   |   |   |   |   [13] V5 <= 76 *
#> |   |   |   |   |   |   [14] V5 > 76 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   [17] V3 > 3
#> |   |   |   |   |   |   [18] V7 <= 140 *
#> |   |   |   |   |   |   [19] V7 > 140 *
#> |   |   [20] V2 > 74
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V5 <= 168
#> |   |   |   |   |   [23] V5 <= 4 *
#> |   |   |   |   |   [24] V5 > 4 *
#> |   |   |   |   [25] V5 > 168 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V3 <= 1 *
#> |   |   |   |   [28] V3 > 1
#> |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   [30] V3 > 3
#> |   |   |   |   |   |   [31] V3 <= 8
#> |   |   |   |   |   |   |   [32] V7 <= 117 *
#> |   |   |   |   |   |   |   [33] V7 > 117
#> |   |   |   |   |   |   |   |   [34] V5 <= 50 *
#> |   |   |   |   |   |   |   |   [35] V5 > 50 *
#> |   |   |   |   |   |   [36] V3 > 8 *
#> |   [37] V4 > 0
#> |   |   [38] V2 <= 85
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V2 <= 60
#> |   |   |   |   |   [41] V5 <= 1 *
#> |   |   |   |   |   [42] V5 > 1
#> |   |   |   |   |   |   [43] V2 <= 57 *
#> |   |   |   |   |   |   [44] V2 > 57 *
#> |   |   |   |   [45] V2 > 60
#> |   |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   |   [47] V3 <= 5 *
#> |   |   |   |   |   |   [48] V3 > 5
#> |   |   |   |   |   |   |   [49] V5 <= 7 *
#> |   |   |   |   |   |   |   [50] V5 > 7 *
#> |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   [52] V6 > 0
#> |   |   |   |   [53] V2 <= 72
#> |   |   |   |   |   [54] V7 <= 138
#> |   |   |   |   |   |   [55] V7 <= 114 *
#> |   |   |   |   |   |   [56] V7 > 114
#> |   |   |   |   |   |   |   [57] V2 <= 46 *
#> |   |   |   |   |   |   |   [58] V2 > 46 *
#> |   |   |   |   |   [59] V7 > 138
#> |   |   |   |   |   |   [60] V3 <= 5 *
#> |   |   |   |   |   |   [61] V3 > 5
#> |   |   |   |   |   |   |   [62] V2 <= 67 *
#> |   |   |   |   |   |   |   [63] V2 > 67 *
#> |   |   |   |   [64] V2 > 72
#> |   |   |   |   |   [65] V3 <= 6 *
#> |   |   |   |   |   [66] V3 > 6
#> |   |   |   |   |   |   [67] V3 <= 10 *
#> |   |   |   |   |   |   [68] V3 > 10 *
#> |   |   [69] V2 > 85 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V7 > 112
#> |   |   |   |   [8] V2 <= 62
#> |   |   |   |   |   [9] V7 <= 139 *
#> |   |   |   |   |   [10] V7 > 139 *
#> |   |   |   |   [11] V2 > 62
#> |   |   |   |   |   [12] V3 <= 3
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   |   [15] V3 > 3
#> |   |   |   |   |   |   [16] V5 <= 11 *
#> |   |   |   |   |   |   [17] V5 > 11
#> |   |   |   |   |   |   |   [18] V5 <= 76 *
#> |   |   |   |   |   |   |   [19] V5 > 76 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 96 *
#> |   |   |   [22] V7 > 96
#> |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   [24] V2 <= 79
#> |   |   |   |   |   |   [25] V2 <= 55
#> |   |   |   |   |   |   |   [26] V5 <= 1 *
#> |   |   |   |   |   |   |   [27] V5 > 1 *
#> |   |   |   |   |   |   [28] V2 > 55
#> |   |   |   |   |   |   |   [29] V7 <= 160
#> |   |   |   |   |   |   |   |   [30] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 3 *
#> |   |   |   |   |   |   |   |   [33] V5 > 9 *
#> |   |   |   |   |   |   |   [34] V7 > 160 *
#> |   |   |   |   |   [35] V2 > 79 *
#> |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   [37] V7 <= 145
#> |   |   |   |   |   |   [38] V7 <= 136
#> |   |   |   |   |   |   |   [39] V2 <= 74
#> |   |   |   |   |   |   |   |   [40] V7 <= 118 *
#> |   |   |   |   |   |   |   |   [41] V7 > 118
#> |   |   |   |   |   |   |   |   |   [42] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [43] V2 > 67 *
#> |   |   |   |   |   |   |   [44] V2 > 74 *
#> |   |   |   |   |   |   [45] V7 > 136 *
#> |   |   |   |   |   [46] V7 > 145
#> |   |   |   |   |   |   [47] V5 <= 4
#> |   |   |   |   |   |   |   [48] V2 <= 74 *
#> |   |   |   |   |   |   |   [49] V2 > 74 *
#> |   |   |   |   |   |   [50] V5 > 4 *
#> |   [51] V5 > 173
#> |   |   [52] V6 <= 0 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V3 <= 3 *
#> |   |   |   [55] V3 > 3 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 139
#> |   |   |   |   [5] V5 <= 123
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V5 > 123 *
#> |   |   |   [9] V7 > 139
#> |   |   |   |   [10] V5 <= 77
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   [13] V5 > 77
#> |   |   |   |   |   [14] V7 <= 145 *
#> |   |   |   |   |   [15] V7 > 145
#> |   |   |   |   |   |   [16] V3 <= 5 *
#> |   |   |   |   |   |   [17] V3 > 5 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V6 <= 0
#> |   |   |   |   [20] V7 <= 162
#> |   |   |   |   |   [21] V2 <= 66
#> |   |   |   |   |   |   [22] V7 <= 145
#> |   |   |   |   |   |   |   [23] V2 <= 55 *
#> |   |   |   |   |   |   |   [24] V2 > 55 *
#> |   |   |   |   |   |   [25] V7 > 145 *
#> |   |   |   |   |   [26] V2 > 66 *
#> |   |   |   |   [27] V7 > 162
#> |   |   |   |   |   [28] V3 <= 5 *
#> |   |   |   |   |   [29] V3 > 5 *
#> |   |   |   [30] V6 > 0
#> |   |   |   |   [31] V7 <= 138
#> |   |   |   |   |   [32] V3 <= 5 *
#> |   |   |   |   |   [33] V3 > 5
#> |   |   |   |   |   |   [34] V5 <= 6 *
#> |   |   |   |   |   |   [35] V5 > 6 *
#> |   |   |   |   [36] V7 > 138
#> |   |   |   |   |   [37] V7 <= 170
#> |   |   |   |   |   |   [38] V3 <= 9
#> |   |   |   |   |   |   |   [39] V7 <= 141 *
#> |   |   |   |   |   |   |   [40] V7 > 141 *
#> |   |   |   |   |   |   [41] V3 > 9 *
#> |   |   |   |   |   [42] V7 > 170 *
#> |   [43] V2 > 72
#> |   |   [44] V5 <= 169
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V7 <= 128
#> |   |   |   |   |   [47] V5 <= 62
#> |   |   |   |   |   |   [48] V2 <= 84 *
#> |   |   |   |   |   |   [49] V2 > 84 *
#> |   |   |   |   |   [50] V5 > 62 *
#> |   |   |   |   [51] V7 > 128
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V2 <= 84 *
#> |   |   |   |   |   |   [55] V2 > 84 *
#> |   |   |   [56] V4 > 0
#> |   |   |   |   [57] V5 <= 6
#> |   |   |   |   |   [58] V3 <= 4 *
#> |   |   |   |   |   [59] V3 > 4
#> |   |   |   |   |   |   [60] V3 <= 9 *
#> |   |   |   |   |   |   [61] V3 > 9 *
#> |   |   |   |   [62] V5 > 6 *
#> |   |   [63] V5 > 169 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 135
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V7 > 135 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 59
#> |   |   |   |   |   [11] V3 <= 14
#> |   |   |   |   |   |   [12] V5 <= 8
#> |   |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   |   [14] V7 > 120
#> |   |   |   |   |   |   |   |   [15] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [16] V2 > 43
#> |   |   |   |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [18] V3 > 4 *
#> |   |   |   |   |   |   [19] V5 > 8 *
#> |   |   |   |   |   [20] V3 > 14 *
#> |   |   |   |   [21] V2 > 59
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V5 <= 2 *
#> |   |   |   |   |   |   [24] V5 > 2 *
#> |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   [26] V2 <= 68
#> |   |   |   |   |   |   |   [27] V7 <= 140 *
#> |   |   |   |   |   |   |   [28] V7 > 140 *
#> |   |   |   |   |   |   [29] V2 > 68 *
#> |   |   [30] V5 > 171
#> |   |   |   [31] V3 <= 3 *
#> |   |   |   [32] V3 > 3 *
#> |   [33] V2 > 70
#> |   |   [34] V6 <= 0
#> |   |   |   [35] V2 <= 83
#> |   |   |   |   [36] V2 <= 72 *
#> |   |   |   |   [37] V2 > 72
#> |   |   |   |   |   [38] V5 <= 154
#> |   |   |   |   |   |   [39] V5 <= 11 *
#> |   |   |   |   |   |   [40] V5 > 11 *
#> |   |   |   |   |   [41] V5 > 154 *
#> |   |   |   [42] V2 > 83 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V5 <= 128
#> |   |   |   |   [45] V5 <= 0
#> |   |   |   |   |   [46] V7 <= 143 *
#> |   |   |   |   |   [47] V7 > 143 *
#> |   |   |   |   [48] V5 > 0
#> |   |   |   |   |   [49] V2 <= 74 *
#> |   |   |   |   |   [50] V2 > 74
#> |   |   |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   |   |   [52] V5 <= 2 *
#> |   |   |   |   |   |   |   [53] V5 > 2
#> |   |   |   |   |   |   |   |   [54] V2 <= 82 *
#> |   |   |   |   |   |   |   |   [55] V2 > 82
#> |   |   |   |   |   |   |   |   |   [56] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [57] V3 > 4 *
#> |   |   |   |   |   |   [58] V4 > 0 *
#> |   |   |   [59] V5 > 128 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 101
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 7 *
#> |   |   |   |   |   [7] V5 > 7 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V2 <= 56 *
#> |   |   |   |   |   [10] V2 > 56
#> |   |   |   |   |   |   [11] V3 <= 2 *
#> |   |   |   |   |   |   [12] V3 > 2 *
#> |   |   |   [13] V5 > 101
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V2 <= 58 *
#> |   |   |   |   |   [17] V2 > 58 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V7 <= 145
#> |   |   |   |   [20] V3 <= 12
#> |   |   |   |   |   [21] V7 <= 118 *
#> |   |   |   |   |   [22] V7 > 118
#> |   |   |   |   |   |   [23] V5 <= 3
#> |   |   |   |   |   |   |   [24] V2 <= 55 *
#> |   |   |   |   |   |   |   [25] V2 > 55 *
#> |   |   |   |   |   |   [26] V5 > 3 *
#> |   |   |   |   [27] V3 > 12
#> |   |   |   |   |   [28] V2 <= 57 *
#> |   |   |   |   |   [29] V2 > 57 *
#> |   |   |   [30] V7 > 145
#> |   |   |   |   [31] V2 <= 54
#> |   |   |   |   |   [32] V7 <= 154 *
#> |   |   |   |   |   [33] V7 > 154 *
#> |   |   |   |   [34] V2 > 54
#> |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   [36] V6 > 0 *
#> |   [37] V2 > 70
#> |   |   [38] V2 <= 87
#> |   |   |   [39] V5 <= 173
#> |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   [42] V7 <= 130 *
#> |   |   |   |   |   |   [43] V7 > 130 *
#> |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   [45] V2 <= 82
#> |   |   |   |   |   |   |   [46] V5 <= 12 *
#> |   |   |   |   |   |   |   [47] V5 > 12 *
#> |   |   |   |   |   |   [48] V2 > 82 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V5 <= 0
#> |   |   |   |   |   |   [51] V2 <= 79 *
#> |   |   |   |   |   |   [52] V2 > 79 *
#> |   |   |   |   |   [53] V5 > 0
#> |   |   |   |   |   |   [54] V7 <= 160
#> |   |   |   |   |   |   |   [55] V5 <= 8
#> |   |   |   |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [57] V6 > 0 *
#> |   |   |   |   |   |   |   [58] V5 > 8 *
#> |   |   |   |   |   |   [59] V7 > 160 *
#> |   |   |   [60] V5 > 173 *
#> |   |   [61] V2 > 87 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 115
#> |   |   |   [4] V2 <= 74 *
#> |   |   |   [5] V2 > 74 *
#> |   |   [6] V7 > 115
#> |   |   |   [7] V2 <= 74
#> |   |   |   |   [8] V2 <= 50 *
#> |   |   |   |   [9] V2 > 50
#> |   |   |   |   |   [10] V5 <= 171
#> |   |   |   |   |   |   [11] V3 <= 6
#> |   |   |   |   |   |   |   [12] V5 <= 6 *
#> |   |   |   |   |   |   |   [13] V5 > 6 *
#> |   |   |   |   |   |   [14] V3 > 6 *
#> |   |   |   |   |   [15] V5 > 171 *
#> |   |   |   [16] V2 > 74
#> |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   [19] V3 > 7 *
#> |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   [21] V5 <= 169
#> |   |   |   |   |   |   [22] V5 <= 6 *
#> |   |   |   |   |   |   [23] V5 > 6 *
#> |   |   |   |   |   [24] V5 > 169 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V2 <= 71
#> |   |   |   |   [28] V2 <= 60
#> |   |   |   |   |   [29] V7 <= 150
#> |   |   |   |   |   |   [30] V2 <= 51 *
#> |   |   |   |   |   |   [31] V2 > 51 *
#> |   |   |   |   |   [32] V7 > 150 *
#> |   |   |   |   [33] V2 > 60
#> |   |   |   |   |   [34] V2 <= 64 *
#> |   |   |   |   |   [35] V2 > 64
#> |   |   |   |   |   |   [36] V7 <= 123 *
#> |   |   |   |   |   |   [37] V7 > 123 *
#> |   |   |   [38] V2 > 71
#> |   |   |   |   [39] V2 <= 81 *
#> |   |   |   |   [40] V2 > 81 *
#> |   |   [41] V6 > 0
#> |   |   |   [42] V3 <= 1 *
#> |   |   |   [43] V3 > 1
#> |   |   |   |   [44] V3 <= 17
#> |   |   |   |   |   [45] V2 <= 85
#> |   |   |   |   |   |   [46] V7 <= 180
#> |   |   |   |   |   |   |   [47] V7 <= 112 *
#> |   |   |   |   |   |   |   [48] V7 > 112
#> |   |   |   |   |   |   |   |   [49] V7 <= 152
#> |   |   |   |   |   |   |   |   |   [50] V7 <= 144
#> |   |   |   |   |   |   |   |   |   |   [51] V2 <= 74
#> |   |   |   |   |   |   |   |   |   |   |   [52] V7 <= 133
#> |   |   |   |   |   |   |   |   |   |   |   |   [53] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [54] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   |   |   [56] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [57] V7 > 133 *
#> |   |   |   |   |   |   |   |   |   |   [58] V2 > 74 *
#> |   |   |   |   |   |   |   |   |   [59] V7 > 144 *
#> |   |   |   |   |   |   |   |   [60] V7 > 152 *
#> |   |   |   |   |   |   [61] V7 > 180 *
#> |   |   |   |   |   [62] V2 > 85 *
#> |   |   |   |   [63] V3 > 17 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 64
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V2 > 64
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V3 <= 1 *
#> |   |   |   |   [13] V3 > 1
#> |   |   |   |   |   [14] V5 <= 6
#> |   |   |   |   |   |   [15] V7 <= 148
#> |   |   |   |   |   |   |   [16] V2 <= 60
#> |   |   |   |   |   |   |   |   [17] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [18] V3 > 5 *
#> |   |   |   |   |   |   |   [19] V2 > 60
#> |   |   |   |   |   |   |   |   [20] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [21] V2 > 67 *
#> |   |   |   |   |   |   [22] V7 > 148
#> |   |   |   |   |   |   |   [23] V7 <= 154 *
#> |   |   |   |   |   |   |   [24] V7 > 154
#> |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   [27] V5 > 6
#> |   |   |   |   |   |   [28] V2 <= 54 *
#> |   |   |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   |   |   [30] V5 <= 8 *
#> |   |   |   |   |   |   |   [31] V5 > 8
#> |   |   |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   |   |   [34] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   [35] V2 > 64 *
#> |   |   [36] V5 > 171 *
#> |   [37] V2 > 74
#> |   |   [38] V2 <= 87
#> |   |   |   [39] V5 <= 167
#> |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   [41] V5 <= 126
#> |   |   |   |   |   |   [42] V2 <= 84
#> |   |   |   |   |   |   |   [43] V7 <= 128 *
#> |   |   |   |   |   |   |   [44] V7 > 128
#> |   |   |   |   |   |   |   |   [45] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [46] V3 > 2 *
#> |   |   |   |   |   |   [47] V2 > 84 *
#> |   |   |   |   |   [48] V5 > 126 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V5 <= 3
#> |   |   |   |   |   |   [51] V7 <= 138 *
#> |   |   |   |   |   |   [52] V7 > 138 *
#> |   |   |   |   |   [53] V5 > 3
#> |   |   |   |   |   |   [54] V7 <= 145 *
#> |   |   |   |   |   |   [55] V7 > 145 *
#> |   |   |   [56] V5 > 167 *
#> |   |   [57] V2 > 87
#> |   |   |   [58] V5 <= 5 *
#> |   |   |   [59] V5 > 5 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V5 <= 0 *
#> |   |   |   |   [6] V5 > 0
#> |   |   |   |   |   [7] V5 <= 6
#> |   |   |   |   |   |   [8] V3 <= 2 *
#> |   |   |   |   |   |   [9] V3 > 2 *
#> |   |   |   |   |   [10] V5 > 6 *
#> |   |   |   [11] V5 > 99
#> |   |   |   |   [12] V3 <= 3 *
#> |   |   |   |   [13] V3 > 3 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V6 <= 0
#> |   |   |   |   [16] V5 <= 123
#> |   |   |   |   |   [17] V5 <= 11
#> |   |   |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   |   |   [20] V2 <= 66
#> |   |   |   |   |   |   |   |   [21] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [22] V3 > 11 *
#> |   |   |   |   |   |   |   [23] V2 > 66
#> |   |   |   |   |   |   |   |   [24] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [25] V3 > 8 *
#> |   |   |   |   |   [26] V5 > 11 *
#> |   |   |   |   [27] V5 > 123 *
#> |   |   |   [28] V6 > 0
#> |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   [31] V4 <= 0
#> |   |   |   |   |   |   [32] V5 <= 152 *
#> |   |   |   |   |   |   [33] V5 > 152 *
#> |   |   |   |   |   [34] V4 > 0
#> |   |   |   |   |   |   [35] V5 <= 9
#> |   |   |   |   |   |   |   [36] V5 <= 3
#> |   |   |   |   |   |   |   |   [37] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [38] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 67 *
#> |   |   |   |   |   |   |   |   [40] V5 > 1 *
#> |   |   |   |   |   |   |   [41] V5 > 3 *
#> |   |   |   |   |   |   [42] V5 > 9 *
#> |   [43] V2 > 74
#> |   |   [44] V6 <= 0
#> |   |   |   [45] V5 <= 168
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V3 <= 3 *
#> |   |   |   |   |   [48] V3 > 3 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V2 <= 81 *
#> |   |   |   |   |   [51] V2 > 81 *
#> |   |   |   [52] V5 > 168 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V7 <= 126
#> |   |   |   |   [55] V2 <= 84
#> |   |   |   |   |   [56] V2 <= 79 *
#> |   |   |   |   |   [57] V2 > 79 *
#> |   |   |   |   [58] V2 > 84 *
#> |   |   |   [59] V7 > 126
#> |   |   |   |   [60] V5 <= 173
#> |   |   |   |   |   [61] V5 <= 2 *
#> |   |   |   |   |   [62] V5 > 2
#> |   |   |   |   |   |   [63] V7 <= 157
#> |   |   |   |   |   |   |   [64] V2 <= 80 *
#> |   |   |   |   |   |   |   [65] V2 > 80 *
#> |   |   |   |   |   |   [66] V7 > 157 *
#> |   |   |   |   [67] V5 > 173 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V7 <= 120
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 101
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V5 > 101 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V3 <= 12
#> |   |   |   |   |   [11] V5 <= 1 *
#> |   |   |   |   |   [12] V5 > 1 *
#> |   |   |   |   [13] V3 > 12 *
#> |   |   [14] V7 > 120
#> |   |   |   [15] V5 <= 171
#> |   |   |   |   [16] V5 <= 11
#> |   |   |   |   |   [17] V4 <= 0
#> |   |   |   |   |   |   [18] V2 <= 56 *
#> |   |   |   |   |   |   [19] V2 > 56 *
#> |   |   |   |   |   [20] V4 > 0
#> |   |   |   |   |   |   [21] V3 <= 11
#> |   |   |   |   |   |   |   [22] V2 <= 57
#> |   |   |   |   |   |   |   |   [23] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [24] V2 > 46
#> |   |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   |   |   [27] V2 > 57
#> |   |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [29] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [30] V2 > 65 *
#> |   |   |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   |   |   |   |   [32] V3 > 11
#> |   |   |   |   |   |   |   [33] V2 <= 71 *
#> |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   |   [35] V5 > 11
#> |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   [37] V6 > 0 *
#> |   |   |   [38] V5 > 171 *
#> |   [39] V2 > 74
#> |   |   [40] V3 <= 7
#> |   |   |   [41] V5 <= 173
#> |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   [43] V6 <= 0 *
#> |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   [45] V3 <= 2 *
#> |   |   |   |   |   |   [46] V3 > 2
#> |   |   |   |   |   |   |   [47] V3 <= 5 *
#> |   |   |   |   |   |   |   [48] V3 > 5 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   [51] V3 > 4 *
#> |   |   |   [52] V5 > 173 *
#> |   |   [53] V3 > 7
#> |   |   |   [54] V2 <= 78 *
#> |   |   |   [55] V2 > 78
#> |   |   |   |   [56] V6 <= 0
#> |   |   |   |   |   [57] V3 <= 18 *
#> |   |   |   |   |   [58] V3 > 18 *
#> |   |   |   |   [59] V6 > 0 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V7 <= 115
#> |   |   |   |   [5] V7 <= 105 *
#> |   |   |   |   [6] V7 > 105 *
#> |   |   |   [7] V7 > 115
#> |   |   |   |   [8] V5 <= 13
#> |   |   |   |   |   [9] V4 <= 0
#> |   |   |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   |   |   [11] V3 > 2 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V2 <= 55
#> |   |   |   |   |   |   |   [14] V2 <= 43 *
#> |   |   |   |   |   |   |   [15] V2 > 43
#> |   |   |   |   |   |   |   |   [16] V7 <= 154
#> |   |   |   |   |   |   |   |   |   [17] V7 <= 129 *
#> |   |   |   |   |   |   |   |   |   [18] V7 > 129 *
#> |   |   |   |   |   |   |   |   [19] V7 > 154 *
#> |   |   |   |   |   |   [20] V2 > 55
#> |   |   |   |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   |   |   |   [22] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [23] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [24] V5 > 1 *
#> |   |   |   |   |   |   |   |   [25] V3 > 8 *
#> |   |   |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   |   |   [27] V2 <= 68
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [29] V2 > 65 *
#> |   |   |   |   |   |   |   |   [30] V2 > 68 *
#> |   |   |   |   [31] V5 > 13 *
#> |   |   [32] V2 > 71
#> |   |   |   [33] V4 <= 0
#> |   |   |   |   [34] V7 <= 116 *
#> |   |   |   |   [35] V7 > 116
#> |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   [37] V5 <= 15 *
#> |   |   |   |   |   |   [38] V5 > 15 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   |   |   [41] V7 > 130
#> |   |   |   |   |   |   |   [42] V3 <= 6 *
#> |   |   |   |   |   |   |   [43] V3 > 6 *
#> |   |   |   [44] V4 > 0
#> |   |   |   |   [45] V2 <= 85
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V7 <= 162 *
#> |   |   |   |   |   |   [48] V7 > 162 *
#> |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   [50] V7 <= 120 *
#> |   |   |   |   |   |   [51] V7 > 120
#> |   |   |   |   |   |   |   [52] V7 <= 179
#> |   |   |   |   |   |   |   |   [53] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [54] V3 > 11 *
#> |   |   |   |   |   |   |   [55] V7 > 179 *
#> |   |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 173
#> |   |   [58] V2 <= 50 *
#> |   |   [59] V2 > 50 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V7 <= 120 *
#> |   |   |   |   |   [7] V7 > 120
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 60
#> |   |   |   |   |   |   [12] V3 <= 5
#> |   |   |   |   |   |   |   [13] V2 <= 43 *
#> |   |   |   |   |   |   |   [14] V2 > 43
#> |   |   |   |   |   |   |   |   [15] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [16] V5 > 0
#> |   |   |   |   |   |   |   |   |   [17] V2 <= 46 *
#> |   |   |   |   |   |   |   |   |   [18] V2 > 46 *
#> |   |   |   |   |   |   [19] V3 > 5
#> |   |   |   |   |   |   |   [20] V5 <= 6
#> |   |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   |   |   [23] V5 > 6
#> |   |   |   |   |   |   |   |   [24] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [25] V5 > 9 *
#> |   |   |   |   |   [26] V2 > 60
#> |   |   |   |   |   |   [27] V5 <= 10
#> |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   [29] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [30] V5 > 3 *
#> |   |   |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   |   |   [32] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [33] V2 > 65
#> |   |   |   |   |   |   |   |   |   [34] V7 <= 146 *
#> |   |   |   |   |   |   |   |   |   [35] V7 > 146 *
#> |   |   |   |   |   |   [36] V5 > 10 *
#> |   |   |   [37] V5 > 15
#> |   |   |   |   [38] V5 <= 77 *
#> |   |   |   |   [39] V5 > 77 *
#> |   |   [40] V5 > 171
#> |   |   |   [41] V2 <= 50 *
#> |   |   |   [42] V2 > 50 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 173
#> |   |   |   [45] V6 <= 0
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V2 <= 81 *
#> |   |   |   |   |   [48] V2 > 81 *
#> |   |   |   |   [49] V4 > 0 *
#> |   |   |   [50] V6 > 0
#> |   |   |   |   [51] V2 <= 85
#> |   |   |   |   |   [52] V4 <= 0
#> |   |   |   |   |   |   [53] V2 <= 81 *
#> |   |   |   |   |   |   [54] V2 > 81 *
#> |   |   |   |   |   [55] V4 > 0
#> |   |   |   |   |   |   [56] V2 <= 76 *
#> |   |   |   |   |   |   [57] V2 > 76
#> |   |   |   |   |   |   |   [58] V5 <= 0 *
#> |   |   |   |   |   |   |   [59] V5 > 0 *
#> |   |   |   |   [60] V2 > 85
#> |   |   |   |   |   [61] V2 <= 87 *
#> |   |   |   |   |   [62] V2 > 87 *
#> |   |   [63] V5 > 173 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V7 <= 134 *
#> |   |   |   |   |   [7] V7 > 134 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   [11] V3 > 2
#> |   |   |   |   |   [12] V2 <= 70 *
#> |   |   |   |   |   [13] V2 > 70
#> |   |   |   |   |   |   [14] V3 <= 6
#> |   |   |   |   |   |   |   [15] V5 <= 38 *
#> |   |   |   |   |   |   |   [16] V5 > 38 *
#> |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   [18] V5 > 171 *
#> |   [19] V4 > 0
#> |   |   [20] V7 <= 96 *
#> |   |   [21] V7 > 96
#> |   |   |   [22] V2 <= 85
#> |   |   |   |   [23] V3 <= 26
#> |   |   |   |   |   [24] V2 <= 74
#> |   |   |   |   |   |   [25] V5 <= 6
#> |   |   |   |   |   |   |   [26] V2 <= 55
#> |   |   |   |   |   |   |   |   [27] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [28] V2 > 43
#> |   |   |   |   |   |   |   |   |   [29] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [30] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   [31] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [32] V5 > 1 *
#> |   |   |   |   |   |   |   [33] V2 > 55
#> |   |   |   |   |   |   |   |   [34] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [35] V2 <= 67
#> |   |   |   |   |   |   |   |   |   |   [36] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   [37] V7 > 125
#> |   |   |   |   |   |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [39] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [40] V2 > 67 *
#> |   |   |   |   |   |   |   |   [41] V3 > 8 *
#> |   |   |   |   |   |   [42] V5 > 6
#> |   |   |   |   |   |   |   [43] V2 <= 52 *
#> |   |   |   |   |   |   |   [44] V2 > 52
#> |   |   |   |   |   |   |   |   [45] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 9 *
#> |   |   |   |   |   |   |   |   |   [47] V5 > 9 *
#> |   |   |   |   |   |   |   |   [48] V3 > 13
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 59 *
#> |   |   |   |   |   [51] V2 > 74
#> |   |   |   |   |   |   [52] V7 <= 130 *
#> |   |   |   |   |   |   [53] V7 > 130
#> |   |   |   |   |   |   |   [54] V2 <= 80 *
#> |   |   |   |   |   |   |   [55] V2 > 80 *
#> |   |   |   |   [56] V3 > 26 *
#> |   |   |   [57] V2 > 85 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V3 <= 16
#> |   |   |   |   [5] V5 <= 103
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V5 <= 6
#> |   |   |   |   |   |   |   [9] V2 <= 66
#> |   |   |   |   |   |   |   |   [10] V7 <= 123 *
#> |   |   |   |   |   |   |   |   [11] V7 > 123
#> |   |   |   |   |   |   |   |   |   [12] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [13] V7 > 150 *
#> |   |   |   |   |   |   |   [14] V2 > 66 *
#> |   |   |   |   |   |   [15] V5 > 6 *
#> |   |   |   |   [16] V5 > 103 *
#> |   |   |   [17] V3 > 16 *
#> |   |   [18] V6 > 0
#> |   |   |   [19] V5 <= 152
#> |   |   |   |   [20] V2 <= 55
#> |   |   |   |   |   [21] V3 <= 7
#> |   |   |   |   |   |   [22] V5 <= 2 *
#> |   |   |   |   |   |   [23] V5 > 2 *
#> |   |   |   |   |   [24] V3 > 7 *
#> |   |   |   |   [25] V2 > 55
#> |   |   |   |   |   [26] V4 <= 0
#> |   |   |   |   |   |   [27] V7 <= 120 *
#> |   |   |   |   |   |   [28] V7 > 120
#> |   |   |   |   |   |   |   [29] V5 <= 10 *
#> |   |   |   |   |   |   |   [30] V5 > 10 *
#> |   |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   |   [32] V3 <= 2 *
#> |   |   |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   |   |   [34] V7 <= 145
#> |   |   |   |   |   |   |   |   [35] V7 <= 136
#> |   |   |   |   |   |   |   |   |   [36] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 0 *
#> |   |   |   |   |   |   |   |   [38] V7 > 136 *
#> |   |   |   |   |   |   |   [39] V7 > 145
#> |   |   |   |   |   |   |   |   [40] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [41] V3 > 8 *
#> |   |   |   [42] V5 > 152 *
#> |   [43] V2 > 74
#> |   |   [44] V2 <= 88
#> |   |   |   [45] V7 <= 104 *
#> |   |   |   [46] V7 > 104
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V3 <= 7
#> |   |   |   |   |   |   [49] V5 <= 154 *
#> |   |   |   |   |   |   [50] V5 > 154 *
#> |   |   |   |   |   [51] V3 > 7 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   [54] V5 <= 173
#> |   |   |   |   |   |   |   [55] V3 <= 7 *
#> |   |   |   |   |   |   |   [56] V3 > 7 *
#> |   |   |   |   |   |   [57] V5 > 173 *
#> |   |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   |   [59] V5 <= 2
#> |   |   |   |   |   |   |   [60] V7 <= 143 *
#> |   |   |   |   |   |   |   [61] V7 > 143 *
#> |   |   |   |   |   |   [62] V5 > 2 *
#> |   |   [63] V2 > 88 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 5.0+  35   5      1          2        0   172
#> 3                                 5.0+  34   5      0          5        0   120
#> 4                               180.0+  35   2      0        180        0   121
#> 5                                 2.0+  35   2      1          1        1   112
#> 6                               180.0+  37   9      0        180        1   151
#> 7                               180.0+  36   1      0        180        1   155
#> 8                               180.0+  35   0      0        180        1   119
#> 9                                 12.0  38  12      1          8        1   120
#> 10                                5.0+  36   5      1          0        1   115
#> 11                              180.0+  33   6      1          1        1   115
#> 12                                2.0+  40   2      1          1        1   148
#> 13                                2.0+  42   2      0          2        0   140
#> 14                              180.0+  40   6      0        180        1   138
#> 15                                 3.0  43   3      1          0        1   100
#> 16                              180.0+  41   2      1          1        0   166
#> 17                              180.0+  40   3      1          1        0   170
#> 18                              180.0+  42  12      1         10        1   170
#> 19                                2.0+  43   2      1          1        1   116
#> 20                              155.0+  44   5      1          1        0   170
#> 21                              180.0+  41  10      1          8        0   150
#> 22                              180.0+  44   3      0        180        0   141
#> 23                              180.0+  41  13      1          1        0   140
#> 24                              180.0+  45   9      1          7        0   110
#> 25                              180.0+  45   6      0        180        1   170
#> 26                                5.0+  41   5      1          4        1   141
#> 27                              180.0+  44   2      1          1        1   150
#> 28                              180.0+  43   2      0        180        1   140
#> 29                              180.0+  45   2      0        180        1   140
#> 30                              180.0+  46   2      1          1        0   126
#> 31                              180.0+  48  15      0        180        1   160
#> 32                              180.0+  44   3      1          0        1   180
#> 33                              180.0+  46   7      1          2        0   166
#> 34                              180.0+  43  29      0        180        1   180
#> 35                              180.0+  43  10      0        180        0   185
#> 36                              180.0+  46  13      1         10        0   100
#> 37                              180.0+  44   0      1          0        1    96
#> 38                              180.0+  47   4      1          3        1   160
#> 39                              180.0+  43   3      1          0        1   124
#> 40                              180.0+  45   8      1          0        1   117
#> 41                                5.0+  45   5      0          5        0   141
#> 42                              161.0+  46   2      1          1        1   122
#> 43                              180.0+  46   6      1          0        1   100
#> 44                              180.0+  44   4      1          0        1   114
#> 45                              180.0+  44   9      1          8        1   135
#> 46                              180.0+  45   5      0        180        1   190
#> 47                                5.0+  46   5      1          3        0   130
#> 48                              180.0+  44   2      0        180        0   142
#> 49                              177.0+  45   9      1          0        1   145
#> 50                              180.0+  48  12      1         11        0   200
#> 51                              180.0+  47   5      1          3        1   130
#> 52                              180.0+  46   3      1          0        1   119
#> 53                              180.0+  49   4      0        180        0   117
#> 54                               10.0+  47  10      0         10        1   140
#> 55                              172.0+  50   1      1          0        1   129
#> 56                              180.0+  48   2      1          0        0   184
#> 57                              180.0+  47   7      0        180        0   145
#> 58                              180.0+  50   4      1          1        0   125
#> 59                                 7.0  49   7      1          7        1   110
#> 60                              180.0+  46   3      1          1        1   140
#> 61                              180.0+  50   7      0        180        1   110
#> 62                                 2.0  49   2      0          2        0   105
#> 63                                 1.0  51   1      0          1        1   145
#> 64                              179.0+  49  15      1         11        1   160
#> 65                              180.0+  47   2      0        180        0   150
#> 66                              179.0+  49  23      0        179        1   112
#> 67                              180.0+  50   7      1          0        1    92
#> 68                                4.0+  50   4      0          4        1   100
#> 69                              180.0+  50   1      1          0        0   150
#> 70                              180.0+  49   7      1          4        1    90
#> 71                              180.0+  47   6      0        180        1   162
#> 72                              180.0+  52   2      0        180        0   155
#> 73                              180.0+  46   1      1          1        0   145
#> 74                                36.0  53   8      0         36        1   160
#> 75                               88.0+  48  17      1         10        0   111
#> 76                              180.0+  47   2      1          1        0   110
#> 77                              180.0+  49   9      1          3        0   102
#> 78                              180.0+  49  15      0        180        1   160
#> 79                              180.0+  54  17      1         12        1   102
#> 80                                77.0  53   5      0         77        0   159
#> 81                              180.0+  53   7      1          0        0   199
#> 82                              180.0+  51   3      1          1        0   140
#> 83                                 5.0  50   2      0          5        1   106
#> 84                              180.0+  50  10      1          6        0   122
#> 85                              180.0+  53   8      1          7        0   160
#> 86                              180.0+  48   3      1          2        0   150
#> 87                              180.0+  51  25      1          1        0   202
#> 88                              180.0+  49   5      1          2        1   150
#> 89                                4.0+  53   4      0          4        0   140
#> 90                                85.0  52  14      1          7        1   200
#> 91                              180.0+  48   6      0        180        0   160
#> 92                                99.0  51  13      0         99        1   160
#> 93                              152.0+  54  23      1         10        0   131
#> 94                                7.0+  52   7      1          2        0   154
#> 95                                6.0+  55   6      1          2        1   114
#> 96                              180.0+  54   9      1          1        0   130
#> 97                              180.0+  55   4      1          2        0   150
#> 98                              180.0+  52   4      0        180        1   180
#> 99                               13.0+  51  13      1         11        0   145
#> 100                             171.0+  50   5      1          4        1   150
#> 101                             180.0+  52   4      0        180        0   183
#> 102                             174.0+  50   3      0        174        1   153
#> 103                               28.0  55  28      1         13        1   160
#> 104                                1.0  49   1      0          1        1   110
#> 105                               9.0+  53   9      0          9        1    95
#> 106                             180.0+  53   8      1          0        1   130
#> 107                             180.0+  50   7      1          0        1   127
#> 108                             175.0+  52   5      0        175        1   117
#> 109                                2.0  55   2      0          2        0   145
#> 110                               7.0+  54   7      1          0        1   100
#> 111                             180.0+  56   3      0        180        1   193
#> 112                             180.0+  56   2      0        180        0   132
#> 113                             180.0+  55   5      1          4        1   120
#> 114                             180.0+  52   8      0        180        0   119
#> 115                             180.0+  53  18      1          9        1   150
#> 116                             180.0+  54   3      0        180        1   180
#> 117                             180.0+  55   6      0        180        0   170
#> 118                              16.0+  52  16      0         16        0   152
#> 119                             180.0+  53  10      1          9        0   172
#> 120                               16.0  52  16      1         14        0   170
#> 121                             180.0+  55   6      0        180        1   100
#> 122                             180.0+  55   6      1          5        1   138
#> 123                             180.0+  54   3      0        180        0   128
#> 124                                8.0  56   3      0          8        1   139
#> 125                                2.0  55   1      0          2        0   130
#> 126                               3.0+  57   3      0          3        0   120
#> 127                             180.0+  54   7      1          2        0   129
#> 128                             180.0+  54   2      1          1        0   135
#> 129                             180.0+  52   9      1          3        0   170
#> 130                             180.0+  54   2      1          1        1   176
#> 131                             180.0+  57   1      0        180        1   156
#> 132                                1.0  57   1      0          1        1   100
#> 133                              165.0  56   4      1          0        1   140
#> 134                             180.0+  52  15      1         14        0   130
#> 135                             180.0+  56  14      1         11        0   130
#> 136                             180.0+  53   3      1          0        1   200
#> 137                             180.0+  57  10      0        180        1   170
#> 138                               8.0+  58   8      0          8        1   130
#> 139                             180.0+  54   5      0        180        1   108
#> 140                             180.0+  55   3      1          1        1   156
#> 141                             180.0+  59   3      1          1        0   172
#> 142                             180.0+  57   4      0        180        1   119
#> 143                             180.0+  58   6      1          0        1    90
#> 144                             171.0+  54  17      1          8        1   227
#> 145                               5.0+  56   5      0          5        1   150
#> 146                             180.0+  54  23      1          8        0   120
#> 147                             147.0+  53   4      0        147        1   145
#> 148                             180.0+  53   7      1          0        1   120
#> 149                             180.0+  57  11      1         10        1   129
#> 150                             180.0+  55   3      1          2        0   140
#> 151                             180.0+  54   7      1          0        1   141
#> 152                               4.0+  56   4      0          4        0   164
#> 153                             180.0+  59  15      1         10        0   140
#> 154                               9.0+  58   9      1          0        1   180
#> 155                                1.0  58   1      1          1        1   200
#> 156                             180.0+  55   5      1          0        0   140
#> 157                               2.0+  55   2      0          2        0   106
#> 158                             180.0+  59   9      1          1        1   125
#> 159                             180.0+  60  11      1          9        0   106
#> 160                                2.0  57   2      0          2        1   120
#> 161                             180.0+  60   5      1          1        0   138
#> 162                             180.0+  58  11      1          9        1   124
#> 163                             180.0+  57  10      1          9        0   103
#> 164                               64.0  59   6      1          0        1   140
#> 165                             180.0+  59   5      0        180        1   155
#> 166                               9.0+  61   9      0          9        1   160
#> 167                             180.0+  58   4      1          3        0   120
#> 168                                0.5  60   0      1          0        1    80
#> 169                             180.0+  59   2      1          1        0   140
#> 170                             161.0+  58   8      0        161        1   140
#> 171                             171.0+  58  14      1          6        0   190
#> 172                                3.0  61   3      1          2        1   102
#> 173                                1.0  58   1      0          1        1   100
#> 174                             180.0+  57  13      1         10        0   110
#> 175                              10.0+  58  10      0         10        1   150
#> 176                             180.0+  57   4      1          3        0   138
#> 177                             180.0+  57  11      0        180        1   150
#> 178                               45.0  56  14      0         45        0   130
#> 179                               3.0+  57   3      1          2        0   120
#> 180                               19.0  58  19      1         13        1   140
#> 181                             180.0+  56  13      1          6        1   158
#> 182                             180.0+  56  18      1         11        1   165
#> 183                               9.0+  59   9      1          0        1    80
#> 184                             180.0+  55   4      1          3        1   160
#> 185                             172.0+  60  12      1          0        1   114
#> 186                                8.0  56   8      1          8        0   120
#> 187                             180.0+  59   5      1          2        0   182
#> 188                             180.0+  58   5      1          1        1   135
#> 189                             180.0+  59  10      0        180        0   160
#> 190                              13.0+  61  13      0         13        0   210
#> 191                               8.0+  58   8      1          5        0   152
#> 192                             180.0+  62   7      1          2        1   180
#> 193                             180.0+  57   3      1          0        0   100
#> 194                               94.0  61  28      1          7        0   133
#> 195                             180.0+  58   8      1          3        1   150
#> 196                                7.0  61   7      0          7        1   150
#> 197                               7.0+  60   7      0          7        0   147
#> 198                                6.0  61   6      0          6        0   134
#> 199                             180.0+  59  13      1          2        0   198
#> 200                             180.0+  57  12      1          9        1   120
#> 201                             180.0+  62   4      1          0        0   160
#> 202                               30.0  58   2      0         30        0   202
#> 203                             180.0+  59   1      0        180        0   155
#> 204                             180.0+  59  16      1          9        1   133
#> 205                              13.0+  61  13      0         13        0   120
#> 206                                5.0  61   5      0          5        1   110
#> 207                               18.0  57  18      1          9        1    93
#> 208                             180.0+  58  11      1          9        0   179
#> 209                                1.0  62   1      1          0        1   172
#> 210                             180.0+  61   7      0        180        0   135
#> 211                             180.0+  62   3      0        180        1   105
#> 212                             180.0+  64   4      0        180        0   130
#> 213                               4.0+  63   4      1          1        0   155
#> 214                                9.0  58   9      1          9        0   110
#> 215                               22.0  59   1      0         22        1   162
#> 216                             180.0+  58   2      0        180        0   127
#> 217                               7.0+  60   7      0          7        0   140
#> 218                             180.0+  59   5      1          1        0   148
#> 219                             180.0+  62   6      0        180        0   170
#> 220                               4.0+  59   4      0          4        0   149
#> 221                               3.0+  60   3      0          3        0   168
#> 222                              167.0  64  10      1          9        0   160
#> 223                               6.0+  62   6      0          6        0   120
#> 224                             180.0+  59  10      0        180        1   130
#> 225                               17.0  60   8      0         17        1   130
#> 226                             180.0+  66   1      1          0        1   120
#> 227                             180.0+  63  10      1          0        1   148
#> 228                             180.0+  63   4      1          3        0   162
#> 229                               12.0  63  12      1          9        0   114
#> 230                             180.0+  63   7      0        180        0   120
#> 231                             180.0+  66   5      1          0        1   110
#> 232                             180.0+  65   8      1          0        0   168
#> 233                             180.0+  65  10      1          8        1   120
#> 234                             180.0+  64  21      1         10        0   190
#> 235                              12.0+  61  12      1         11        0   154
#> 236                             180.0+  61   4      0        180        1   113
#> 237                             180.0+  65   3      0        180        1   190
#> 238                             180.0+  63  16      1          7        1   110
#> 239                             180.0+  64   7      0        180        1   120
#> 240                               12.0  63  12      0         12        1   150
#> 241                             180.0+  62   3      1          1        1   199
#> 242                                9.0  65   6      0          9        0   112
#> 243                                3.0  65   3      1          0        1    80
#> 244                             180.0+  63   2      1          1        0   180
#> 245                             180.0+  62  13      1         11        0   180
#> 246                               2.0+  64   2      0          2        0   201
#> 247                              18.0+  66  18      1          5        0   142
#> 248                             180.0+  66  16      1         11        1   169
#> 249                             180.0+  62   9      0        180        0   145
#> 250                             180.0+  63   9      1          8        1   160
#> 251                               3.0+  63   3      1          2        0   120
#> 252                               2.0+  63   2      1          0        0   140
#> 253                              103.0  64  19      1          8        1   160
#> 254                               15.0  65   8      1          0        1   140
#> 255                             180.0+  67   6      0        180        1   170
#> 256                               5.0+  68   5      1          4        1   150
#> 257                             180.0+  64   6      1          0        1   125
#> 258                             179.0+  66   7      1          0        1   115
#> 259                             166.0+  66  13      1          0        0   118
#> 260                              14.0+  64  14      1         13        1   150
#> 261                                3.0  65   3      0          3        0   105
#> 262                               0.5+  64   0      0          0        1   148
#> 263                               3.0+  66   3      1          0        1   135
#> 264                             180.0+  66   6      1          0        1   140
#> 265                             175.0+  65   2      1          1        1   170
#> 266                             180.0+  64  10      1          9        1   110
#> 267                               7.0+  63   7      1          0        0   162
#> 268                                5.0  68   5      0          5        1    90
#> 269                               16.0  63  10      0         16        1   160
#> 270                                1.0  64   1      0          1        1   120
#> 271                             180.0+  65  17      1         14        1   100
#> 272                             123.0+  65  18      1          3        0   120
#> 273                               1.0+  63   1      1          0        1   155
#> 274                               18.0  63  10      0         18        1   130
#> 275                              11.0+  67  11      0         11        0   150
#> 276                             180.0+  68  11      0        180        0   160
#> 277                               80.0  66  12      1         10        1   150
#> 278                              15.0+  65  15      1         12        1   150
#> 279                             180.0+  66  11      1          0        0   100
#> 280                               4.0+  65   4      1          2        1   145
#> 281                               15.0  69  12      0         15        1   140
#> 282                             180.0+  66  15      1         13        1   160
#> 283                             180.0+  65  11      1          6        0   130
#> 284                             174.0+  69  21      1         10        0   180
#> 285                             180.0+  66   9      1          8        0   130
#> 286                             180.0+  63   8      0        180        1   120
#> 287                             180.0+  68  14      1         13        1   140
#> 288                              175.0  69   1      1          0        0   170
#> 289                             180.0+  67   1      0        180        1   160
#> 290                               10.0  68  10      1         10        1   150
#> 291                             180.0+  65   1      1          0        0   133
#> 292                             180.0+  67   7      1          4        1   130
#> 293                             180.0+  67   2      0        180        0   184
#> 294                             180.0+  65   4      1          1        0   130
#> 295                             179.0+  64   4      0        179        0   160
#> 296                             180.0+  66   4      0        180        1   130
#> 297                              11.0+  64  11      0         11        0   125
#> 298                                0.5  64   0      1          0        1   118
#> 299                               7.0+  66   7      1          5        1   131
#> 300                             180.0+  68   4      1          0        1   160
#> 301                             152.0+  69   4      1          3        1   150
#> 302                             180.0+  65  13      1         12        1   130
#> 303                             180.0+  69  17      1         10        0   140
#> 304                              21.0+  64  21      0         21        1   155
#> 305                                1.0  65   1      0          1        1   120
#> 306                              101.0  65   6      0        101        1   115
#> 307                               7.0+  70   7      1          0        1   190
#> 308                             180.0+  71  20      1          0        1   160
#> 309                             180.0+  67   2      0        180        0   128
#> 310                                1.0  66   1      1          1        1   165
#> 311                              171.0  70  14      0        171        0   166
#> 312                             180.0+  66   4      0        180        0   130
#> 313                             174.0+  67  10      1          9        0   200
#> 314                                6.0  67   6      1          4        0   130
#> 315                                0.5  69   0      0          0        1   148
#> 316                             180.0+  69   3      1          2        0   151
#> 317                              14.0+  65  14      1         13        1   150
#> 318                             180.0+  69   8      0        180        1   180
#> 319                               45.0  71   6      0         45        1   158
#> 320                               5.0+  69   5      0          5        1   142
#> 321                              103.0  71   3      0        103        0   133
#> 322                               3.0+  69   3      0          3        1   130
#> 323                             180.0+  70  22      1         13        0   103
#> 324                               36.0  67   1      0         36        1   104
#> 325                               5.0+  67   5      0          5        0   130
#> 326                             180.0+  68   6      0        180        0   145
#> 327                             180.0+  69   8      1          5        1   195
#> 328                                7.0  72   7      0          7        1   110
#> 329                             180.0+  67   3      0        180        0   110
#> 330                               2.0+  66   2      1          1        0   123
#> 331                             180.0+  69  19      0        180        0   130
#> 332                             180.0+  69  11      1          0        1   120
#> 333                                7.0  67   7      1          4        0   122
#> 334                             180.0+  69   4      1          3        0   132
#> 335                                7.0  68   2      0          7        1   130
#> 336                               8.0+  69   8      1          2        0   121
#> 337                              13.0+  67  13      1          9        0   130
#> 338                              123.0  70   3      0        123        0   130
#> 339                             180.0+  72   5      1          4        0   170
#> 340                               51.0  67  22      1          1        1   140
#> 341                               19.0  68   3      0         19        0   135
#> 342                             180.0+  67  12      1          8        0   120
#> 343                                1.0  69   1      0          1        1   110
#> 344                                1.0  67   1      0          1        1    60
#> 345                               60.0  67   4      0         60        1   136
#> 346                               76.0  69   5      0         76        0   120
#> 347                             180.0+  67   8      1          0        1   130
#> 348                              132.0  72  13      1         11        1   195
#> 349                              10.0+  68  10      1          8        1   160
#> 350                             180.0+  66  24      1         13        0   130
#> 351                             180.0+  70  35      1          0        1   105
#> 352                              162.0  72  30      1          0        1   145
#> 353                               7.0+  70   7      0          7        0   102
#> 354                               7.0+  68   7      1          2        0   135
#> 355                                9.0  71   6      0          9        0   120
#> 356                             180.0+  69  10      1          6        1   120
#> 357                             180.0+  70  11      0        180        1   210
#> 358                             180.0+  72  19      1          8        0   120
#> 359                               12.0  72  12      1         10        0   170
#> 360                             180.0+  67   8      0        180        1   170
#> 361                             180.0+  67   5      1          0        1   147
#> 362                             180.0+  67   9      0        180        0   158
#> 363                              152.0  73  13      0        152        1   130
#> 364                             180.0+  70   5      0        180        0   150
#> 365                               76.0  67   4      1          1        0   134
#> 366                             180.0+  69   3      0        180        0   220
#> 367                             180.0+  71   3      1          2        0   150
#> 368                             180.0+  68   4      1          3        0   210
#> 369                               28.0  72   5      0         28        0   120
#> 370                             180.0+  71   5      0        180        0   191
#> 371                             180.0+  73   6      0        180        1   117
#> 372                              16.0+  69  16      1         10        1   140
#> 373                             180.0+  69   8      1          1        0   164
#> 374                             180.0+  70   4      0        180        0   180
#> 375                             180.0+  69   1      1          0        0   155
#> 376                                6.0  73   6      1          0        1   270
#> 377                             180.0+  72   8      1          1        1   150
#> 378                               7.0+  73   7      0          7        1   140
#> 379                               15.0  68  15      1         13        1   130
#> 380                               3.0+  70   3      0          3        1   159
#> 381                              13.0+  70  13      1          9        0   100
#> 382                             180.0+  72   6      0        180        1   130
#> 383                             180.0+  73   0      0        180        1   161
#> 384                               3.0+  71   3      1          1        0   150
#> 385                             180.0+  71  15      1         11        0   165
#> 386                               20.0  74  20      0         20        1   180
#> 387                             180.0+  68   9      0        180        1   120
#> 388                                0.5  74   0      1          0        1    90
#> 389                             180.0+  73   3      1          0        1   136
#> 390                             180.0+  71  17      1         11        0   160
#> 391                                8.0  71   8      1          7        0   149
#> 392                             180.0+  70  26      1         11        1   120
#> 393                               4.0+  74   4      0          4        0   120
#> 394                               58.0  73   4      0         58        1   160
#> 395                             180.0+  72   5      1          3        1   160
#> 396                             180.0+  70   3      0        180        1   154
#> 397                             180.0+  73   6      0        180        0   110
#> 398                             180.0+  71   7      1          2        0   143
#> 399                             180.0+  72   8      1          0        1   140
#> 400                             180.0+  73  17      1         11        0   140
#> 401                             180.0+  74   7      1          0        1   117
#> 402                              10.0+  72  10      1          8        1   153
#> 403                             180.0+  69   7      0        180        1   144
#> 404                             180.0+  72  15      1         13        0   156
#> 405                             179.0+  71  10      1          9        1   120
#> 406                             180.0+  75   2      1          1        0   145
#> 407                             180.0+  73  10      1          9        1   146
#> 408                             180.0+  74  15      1          9        1   179
#> 409                               10.0  71   2      0         10        1   112
#> 410                                1.0  73   1      0          1        1    80
#> 411                               13.0  75  13      1          1        1   130
#> 412                             180.0+  72  15      1         12        1   120
#> 413                                1.0  72   1      1          1        0   168
#> 414                             180.0+  73  10      0        180        0   162
#> 415                               11.0  72  11      0         11        1   140
#> 416                               3.0+  70   3      0          3        0   150
#> 417                                5.0  73   5      1          3        1   112
#> 418                               12.0  73  12      1         12        1   140
#> 419                             180.0+  72   2      0        180        0   120
#> 420                             180.0+  71   3      1          0        0   144
#> 421                             180.0+  73   5      0        180        0   126
#> 422                               34.0  74  34      1          8        1   233
#> 423                             177.0+  71  32      1         12        1   107
#> 424                             180.0+  72   5      0        180        0   154
#> 425                                5.0  76   5      0          5        1   130
#> 426                               4.0+  77   4      0          4        0   185
#> 427                                7.0  72   7      1          2        0   142
#> 428                              15.0+  73  15      0         15        1   160
#> 429                             180.0+  71  16      0        180        0   140
#> 430                             180.0+  74   7      0        180        1   150
#> 431                             180.0+  74   2      1          1        0   140
#> 432                             180.0+  76   8      1          0        1   141
#> 433                             180.0+  74  19      1          4        1   200
#> 434                                6.0  73   6      0          6        1   114
#> 435                             180.0+  74   2      0        180        0   190
#> 436                               85.0  72   4      0         85        1   120
#> 437                             180.0+  72   4      1          3        0   160
#> 438                              17.0+  76  17      1          0        1   200
#> 439                             174.0+  76  13      1         10        0   110
#> 440                                4.0  75   4      1          0        1   122
#> 441                                7.0  75   7      0          7        0   190
#> 442                                0.5  75   0      0          0        1   130
#> 443                             180.0+  73  13      1         11        0   195
#> 444                               12.0  75  12      0         12        1   160
#> 445                             180.0+  74   8      1          0        1   105
#> 446                               46.0  75   4      1          2        1   188
#> 447                             180.0+  74   6      0        180        0   160
#> 448                             180.0+  74   2      0        180        0   111
#> 449                               52.0  73   1      0         52        1   105
#> 450                             180.0+  73   0      0        180        0   156
#> 451                             180.0+  72   5      0        180        0   120
#> 452                             180.0+  76  44      1         10        0   105
#> 453                             180.0+  76   5      0        180        0   185
#> 454                             180.0+  74  10      1          0        1   135
#> 455                             180.0+  76   5      1          0        1   167
#> 456                             180.0+  75   9      0        180        1   140
#> 457                                5.0  77   5      1          0        0   123
#> 458                             180.0+  77  12      1          9        1   100
#> 459                             180.0+  77  12      0        180        0   130
#> 460                                1.0  77   1      1          0        1    90
#> 461                             180.0+  78   5      1          0        1   170
#> 462                               7.0+  73   7      1          0        0   174
#> 463                             180.0+  75   6      0        180        0   150
#> 464                             180.0+  79  10      1          8        0   190
#> 465                             176.0+  74   2      1          0        1   130
#> 466                               18.0  78  18      0         18        1   144
#> 467                               47.0  76  29      0         47        0    90
#> 468                             180.0+  73   8      1          1        1   162
#> 469                               11.0  73  11      1          2        1   110
#> 470                             180.0+  74   2      0        180        0   100
#> 471                               8.0+  78   8      1          6        1   110
#> 472                             180.0+  76  13      1          1        1   170
#> 473                               32.0  78  32      1          9        1   198
#> 474                             180.0+  79   6      0        180        0   170
#> 475                               10.0  80  10      1          6        1   147
#> 476                             180.0+  78   0      0        180        1   212
#> 477                              172.0  78  13      1          5        0   130
#> 478                              119.0  75   5      0        119        1   150
#> 479                               12.0  75  12      1          1        1   120
#> 480                                8.0  80   8      0          8        1   120
#> 481                                1.0  76   1      0          1        1    83
#> 482                               80.0  79   4      0         80        0   145
#> 483                                2.0  77   2      1          0        1   143
#> 484                             152.0+  75  11      1          4        0   162
#> 485                               29.0  76   7      0         29        1   150
#> 486                               32.0  79   8      0         32        1   120
#> 487                               23.0  80   9      0         23        1   128
#> 488                                6.0  80   6      0          6        1   150
#> 489                             180.0+  78   6      1          0        1   240
#> 490                               3.0+  76   3      1          0        1   140
#> 491                             180.0+  78  11      1          1        1   140
#> 492                             180.0+  79  11      0        180        0   160
#> 493                             180.0+  79   2      1          0        1   121
#> 494                             180.0+  78  14      1          0        1   140
#> 495                                4.0  76   4      0          4        1   160
#> 496                                4.0  79   4      0          4        1   125
#> 497                              10.0+  76  10      1          8        0   180
#> 498                             180.0+  76  12      1         10        1   127
#> 499                               3.0+  80   3      1          0        1   120
#> 500                             180.0+  78  11      0        180        1   135
#> 501                              171.0  77  31      1          3        1   161
#> 502                                1.0  76   1      0          1        1    90
#> 503                                3.0  79   3      0          3        0   120
#> 504                                6.0  77   6      0          6        1   144
#> 505                              138.0  79   4      1          0        1   120
#> 506                                8.0  82   5      0          8        1   120
#> 507                               40.0  80  40      1          0        1   138
#> 508                               59.0  78   4      0         59        1   112
#> 509                              161.0  76   7      0        161        0   151
#> 510                             180.0+  80  15      1          0        1    90
#> 511                               93.0  81   4      1          2        1   126
#> 512                              164.0  79  28      0        164        0   100
#> 513                              173.0  80   6      0        173        1   160
#> 514                             180.0+  78  32      0        180        1   130
#> 515                               37.0  79   1      0         37        1   140
#> 516                             180.0+  81   3      0        180        0   184
#> 517                               7.0+  78   7      0          7        1   147
#> 518                              15.0+  78  15      0         15        0   165
#> 519                             180.0+  78   4      0        180        0   175
#> 520                             171.0+  78  26      1          5        0   194
#> 521                             166.0+  76   1      0        166        0   131
#> 522                               71.0  81   4      1          1        1   104
#> 523                              20.0+  78  20      1          0        1   109
#> 524                               3.0+  78   3      1          1        1   152
#> 525                               10.0  77  10      1          8        1   130
#> 526                             180.0+  82   3      1          1        1   144
#> 527                               85.0  77   5      0         85        0   188
#> 528                               10.0  80   2      1          1        0   168
#> 529                                6.0  80   6      1          0        1   119
#> 530                             180.0+  78   2      0        180        0   148
#> 531                             180.0+  79  10      0        180        1   150
#> 532                             180.0+  77   4      0        180        1    98
#> 533                              108.0  81   1      0        108        0   129
#> 534                             180.0+  78  12      0        180        0   134
#> 535                              125.0  79   1      0        125        0   193
#> 536                             180.0+  82  21      1          2        0   155
#> 537                             180.0+  84  22      1         10        0   180
#> 538                                6.0  80   6      0          6        1   110
#> 539                               9.0+  83   9      1          5        1   170
#> 540                             180.0+  82   5      0        180        0   110
#> 541                             180.0+  83   5      0        180        0   148
#> 542                              103.0  83   4      0        103        0    97
#> 543                             180.0+  81  11      1          8        0   160
#> 544                             177.0+  81   5      0        177        0    41
#> 545                              169.0  80  11      1          8        0   170
#> 546                               70.0  78  23      1         10        1   145
#> 547                                4.0  79   4      0          4        1   183
#> 548                             180.0+  82   8      1          1        0   128
#> 549                             180.0+  81  15      0        180        1   140
#> 550                               7.0+  80   7      1          0        1   146
#> 551                               20.0  81  20      1          9        0   170
#> 552                               16.0  81  16      0         16        1   110
#> 553                             180.0+  80   6      1          0        1   150
#> 554                             180.0+  80  11      1          8        0   110
#> 555                             180.0+  81   8      0        180        0   146
#> 556                             180.0+  80   8      1          7        0   160
#> 557                             177.0+  79   7      0        177        0   197
#> 558                                0.5  79   0      1          0        1    96
#> 559                             180.0+  81   2      1          1        0   198
#> 560                                2.0  83   2      0          2        1   155
#> 561                              128.0  82   6      0        128        1   100
#> 562                              167.0  84   4      0        167        0   198
#> 563                               3.0+  80   3      1          1        1   230
#> 564                             180.0+  84   5      0        180        1   203
#> 565                                4.0  84   4      0          4        1    85
#> 566                                1.0  81   1      0          1        1   150
#> 567                             180.0+  83   3      0        180        0   174
#> 568                               90.0  81   4      0         90        1   138
#> 569                             180.0+  85   3      1          2        1   160
#> 570                             180.0+  80  13      1          8        1   140
#> 571                               89.0  84   4      0         89        1   129
#> 572                                4.0  79   4      0          4        1    60
#> 573                               71.0  80   6      0         71        1   189
#> 574                                1.0  83   1      0          1        1   100
#> 575                               19.0  82  19      0         19        0   120
#> 576                               30.0  80  30      1         13        0   220
#> 577                             180.0+  83   9      0        180        0   198
#> 578                              154.0  83   2      0        154        0   130
#> 579                             180.0+  85   9      1          6        1   160
#> 580                             180.0+  83   1      0        180        0   160
#> 581                               4.0+  81   4      0          4        0   175
#> 582                                1.0  81   1      0          1        1   145
#> 583                               12.0  81  12      0         12        1   163
#> 584                              16.0+  82  16      1          8        0   103
#> 585                               5.0+  82   5      1          0        1   146
#> 586                               4.0+  81   4      0          4        0   160
#> 587                             180.0+  86  12      0        180        1   120
#> 588                             180.0+  81  19      1         14        0   120
#> 589                                3.0  82   3      1          2        0   130
#> 590                               83.0  82  15      1          0        0   183
#> 591                              126.0  83   7      0        126        0   135
#> 592                             180.0+  81  16      1          9        0   180
#> 593                              165.0  84   6      0        165        0   145
#> 594                                3.0  86   3      0          3        1   140
#> 595                             180.0+  82   9      0        180        1   134
#> 596                             180.0+  84   3      0        180        1   120
#> 597                             180.0+  81  13      0        180        0   152
#> 598                               3.0+  85   3      0          3        1   118
#> 599                             180.0+  81   2      1          0        1   118
#> 600                               4.0+  83   4      0          4        0   130
#> 601                              174.0  82  14      1         11        1   103
#> 602                                6.0  86   6      1          0        1   140
#> 603                               70.0  84  16      0         70        1   150
#> 604                             180.0+  86   2      0        180        1   169
#> 605                               14.0  88  14      1          3        1   130
#> 606                               13.0  83  13      1         12        0   170
#> 607                               92.0  84   9      0         92        1   110
#> 608                             180.0+  84   3      0        180        1   170
#> 609                               38.0  86   4      0         38        1   122
#> 610                                4.0  82   4      0          4        0   130
#> 611                               3.0+  85   3      0          3        1   113
#> 612                               6.0+  86   6      0          6        1   117
#> 613                               62.0  84  13      0         62        1   100
#> 614                               6.0+  86   6      1          1        0   112
#> 615                               4.0+  88   4      0          4        0   100
#> 616                               20.0  83  20      1          3        1   150
#> 617                               22.0  85  22      0         22        1   184
#> 618                               65.0  83   9      0         65        1   150
#> 619                               11.0  86   9      1          7        1   142
#> 620                             180.0+  87   2      0        180        1   130
#> 621                               46.0  86   6      0         46        0   173
#> 622                              115.0  88   3      0        115        0   110
#> 623                               3.0+  83   3      0          3        1   130
#> 624                               8.0+  87   8      0          8        1   157
#> 625                                4.0  88   4      0          4        0    86
#> 626                                4.0  89   4      0          4        1   153
#> 627                             180.0+  87   6      0        180        1   110
#> 628                               1.0+  87   1      0          1        0   170
#> 629                              110.0  84   2      0        110        1   174
#> 630                               29.0  87  29      0         29        1    97
#> 631                             180.0+  84   0      0        180        1   136
#> 632                               1.0+  88   1      0          1        0   135
#> 633                                8.0  91   8      0          8        0   100
#> 634                               25.0  87   6      1          0        0   125
#> 635                              145.0  91  10      0        145        0   135
#> 636                                3.0  86   3      1          0        1    80
#> 637                               50.0  88   8      0         50        1   154
#> 638                               11.0  90  11      1         10        1   186
#> 639                              126.0  87   6      0        126        1   168
#> 640                             180.0+  86  10      0        180        1   137
#> 641                             180.0+  86   9      1          7        0   130
#> 642                                4.0  90   4      1          0        0   121
#> 643                             178.0+  87  43      0        178        1   130
#> 644                               36.0  87   5      0         36        1   150
#> 645                               75.0  88   3      1          2        0   159
#> 646                               3.0+  89   3      1          1        1   160
#> 647                                1.0  92   1      0          1        1   167
#> 648                               33.0  91   3      0         33        1   137
#> 649                               74.0  87   7      0         74        1   105
#> 650                              168.0  89   2      0        168        0   118
#> 651                              169.0  91   5      0        169        1   176
#> 652                               52.0  89  52      0         52        1   130
#> 653                                7.0  92   7      0          7        1   110
#> 654                                4.0  89   4      0          4        1   159
#> 655                                0.5  91   0      0          0        0     0
#> 656                             180.0+  90  18      0        180        0   188
#> 657                                4.0  91   4      1          0        1   120
#> 658                               50.0  94   6      0         50        0    78
#> 659                                2.0  91   2      0          2        1   116
#> 660                             179.0+  93   8      0        179        1   110
#> 661                               8.0+  94   8      0          8        1   142
#> 662                               76.0  92   4      0         76        1   149
#> 663                               16.0  90  16      0         16        1   106
#> 664                               67.0  90   3      0         67        0   162
#> 665                                8.0  95   8      1          5        1   150
#> 666                               53.0  91  12      0         53        1   212
#> 667                               7.0+  91   7      0          7        0   135
#> 668                                0.5  93   0      1          0        1   122
#> 669                             180.0+  93   4      0        180        1   135
#> 670                                3.0  96   3      1          0        1   104
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1
#>  [38] 1 0 0 0 1 0 0 1 0 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1
#>  [75] 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [112] 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 0 0 1 0 1 0 0
#> [149] 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1
#> [186] 0 1 1 1 0 1 1 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1
#> [223] 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1
#> [260] 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1
#> [297] 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [334] 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0
#> [371] 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1
#> [408] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [445] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0
#> [482] 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0
#> [519] 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0 0 0
#> [556] 0 1 0 1 0 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 1
#> [593] 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0
#> [630] 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[2]]
#>   [1] 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 0 0 1 1 1 1
#>  [38] 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0
#>  [75] 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 0
#> [112] 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1
#> [149] 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0
#> [186] 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0
#> [223] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 0 1 1 0
#> [260] 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1
#> [297] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0
#> [334] 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0
#> [371] 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 0
#> [408] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1
#> [445] 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1
#> [482] 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1
#> [519] 0 1 1 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1
#> [556] 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0
#> [593] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1
#> [630] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [667] 0 1 0 0
#> 
#> $weights[[3]]
#>   [1] 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 0
#>  [38] 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 1 0
#>  [75] 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0
#> [112] 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0
#> [149] 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1
#> [186] 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1
#> [223] 0 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0
#> [260] 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0
#> [297] 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1 0 0 0
#> [334] 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0
#> [371] 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 0
#> [408] 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1
#> [445] 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1
#> [482] 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [519] 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 0 0 1 0 1 0 0 0 0 0 1 1 1 0 0
#> [556] 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1
#> [593] 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0
#> [630] 0 1 0 0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[4]]
#>   [1] 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1
#>  [38] 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0
#>  [75] 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1
#> [112] 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [149] 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1
#> [186] 0 1 0 1 0 1 0 1 0 0 0 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0
#> [223] 0 0 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1
#> [260] 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 0 1
#> [297] 1 0 0 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1
#> [334] 0 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0
#> [371] 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1
#> [408] 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1
#> [445] 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1
#> [482] 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1
#> [519] 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1
#> [556] 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 0 0
#> [593] 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [630] 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[5]]
#>   [1] 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0
#>  [38] 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1
#>  [75] 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 0
#> [112] 0 0 1 0 0 0 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 0 0 1 1 1 0 0 0 1 0 0 0 1 0 1 1
#> [149] 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0
#> [186] 0 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1
#> [223] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0 0 1
#> [260] 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1
#> [334] 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0
#> [371] 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [408] 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1
#> [445] 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 0 0 1 1 0 1
#> [482] 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1
#> [519] 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1
#> [556] 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0
#> [593] 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [630] 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[6]]
#>   [1] 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0
#>  [38] 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 0
#>  [75] 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [112] 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1
#> [149] 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 0 0
#> [186] 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1
#> [223] 0 1 0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1
#> [260] 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1
#> [297] 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 0 0 0
#> [334] 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1
#> [371] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0
#> [408] 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1
#> [445] 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0
#> [482] 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1
#> [519] 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 1 1
#> [556] 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [593] 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0
#> [630] 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[7]]
#>   [1] 0 0 1 1 0 0 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0
#>  [38] 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 1 0
#>  [75] 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1
#> [112] 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0
#> [149] 0 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1
#> [186] 0 1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1
#> [223] 0 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [260] 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0
#> [297] 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 1 1
#> [334] 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0
#> [371] 1 0 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1
#> [408] 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0
#> [445] 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1
#> [482] 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1
#> [519] 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 0
#> [556] 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1
#> [593] 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1
#> [630] 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0
#> [667] 1 1 0 0
#> 
#> $weights[[8]]
#>   [1] 0 1 1 0 0 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#>  [38] 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 0 0
#>  [75] 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 0 0
#> [112] 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1
#> [149] 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0
#> [186] 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 0 1 0 1 1 0 0 1
#> [223] 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [260] 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0
#> [297] 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0
#> [334] 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1
#> [371] 1 1 1 1 0 0 1 0 1 0 0 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1
#> [408] 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0
#> [445] 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1
#> [482] 0 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1
#> [519] 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 0
#> [556] 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1
#> [593] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1
#> [630] 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1
#> [667] 1 0 0 0
#> 
#> $weights[[9]]
#>   [1] 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1
#>  [38] 0 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#>  [75] 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1
#> [112] 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1
#> [149] 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 0 0 1 1
#> [186] 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 0 0 1
#> [223] 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1
#> [260] 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1
#> [297] 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0 0 1
#> [334] 0 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 1 1
#> [371] 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [408] 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0
#> [445] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1
#> [482] 0 0 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0
#> [519] 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0
#> [556] 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1
#> [593] 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1
#> [630] 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[10]]
#>   [1] 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1
#>  [38] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 1 1 1 1
#>  [75] 0 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 1
#> [112] 1 0 0 0 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1
#> [149] 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0
#> [186] 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1
#> [223] 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 0 1 1 0 1 0 1 0 1
#> [260] 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 1
#> [297] 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1
#> [334] 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1
#> [371] 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 1
#> [408] 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0
#> [445] 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0
#> [482] 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0
#> [519] 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1
#> [556] 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 0
#> [593] 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1
#> [630] 1 1 0 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[11]]
#>   [1] 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1
#>  [38] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1
#>  [75] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1
#> [112] 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [149] 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1
#> [186] 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [223] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0
#> [260] 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1
#> [297] 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1
#> [334] 1 0 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 1
#> [371] 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1
#> [408] 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [445] 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0
#> [482] 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 0 1 0 1 0 0 0 1 1
#> [519] 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0
#> [556] 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 0
#> [593] 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0
#> [630] 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[12]]
#>   [1] 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 0 0 1 0
#>  [38] 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 1 1
#>  [75] 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [112] 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [149] 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0
#> [186] 1 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0
#> [223] 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0
#> [260] 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1 0 1 0 1
#> [297] 0 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0
#> [334] 0 1 1 1 1 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1
#> [371] 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0
#> [408] 0 0 0 0 0 1 0 0 1 0 1 1 0 0 0 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1
#> [445] 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [482] 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1
#> [519] 0 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 0
#> [556] 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1
#> [593] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1
#> [630] 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[13]]
#>   [1] 0 1 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1
#>  [38] 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#>  [75] 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1
#> [112] 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0 1 0 1 0 0 1
#> [149] 1 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1
#> [186] 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1
#> [223] 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1
#> [260] 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 0 1 0 1 0 0
#> [297] 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0
#> [334] 0 1 0 1 0 1 0 0 0 1 0 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0
#> [371] 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1
#> [408] 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [445] 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1
#> [482] 0 1 0 1 0 1 0 1 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1
#> [519] 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0
#> [556] 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [593] 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1
#> [630] 0 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[14]]
#>   [1] 1 1 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 0 0 0 0 1
#>  [38] 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 0 1 0 0 0 1 1 0 1 1 1 0 0 1 0
#> [112] 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0
#> [149] 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1
#> [186] 1 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 1 0 1 1
#> [223] 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [260] 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1
#> [297] 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [334] 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 0 0
#> [371] 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1
#> [408] 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1
#> [445] 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1
#> [482] 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1
#> [519] 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0
#> [556] 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1
#> [593] 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0
#> [630] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[15]]
#>   [1] 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1
#>  [38] 1 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1
#>  [75] 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [112] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [149] 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 1
#> [186] 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [223] 0 1 0 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 0 0
#> [260] 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0
#> [297] 1 0 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 1 1
#> [334] 1 0 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [371] 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0
#> [408] 1 0 0 0 0 0 1 0 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [445] 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1
#> [482] 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 1
#> [519] 1 0 1 0 1 0 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1
#> [556] 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [593] 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1
#> [630] 0 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[16]]
#>   [1] 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0
#>  [38] 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#>  [75] 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 0 0
#> [112] 0 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [149] 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1
#> [186] 1 1 1 0 0 1 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1
#> [223] 1 0 0 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 1 1
#> [260] 0 0 0 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 0
#> [297] 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [334] 0 0 0 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1
#> [371] 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1
#> [408] 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0
#> [445] 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1
#> [482] 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 0
#> [519] 1 1 0 0 1 0 0 1 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 1
#> [556] 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0
#> [593] 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [630] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[17]]
#>   [1] 0 0 1 0 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0
#>  [38] 0 1 0 1 0 0 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1
#>  [75] 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1
#> [112] 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 1 1 0
#> [149] 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1
#> [186] 0 1 0 1 0 1 0 0 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0
#> [223] 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1
#> [260] 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [297] 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 0 0 1 0
#> [334] 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [371] 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1
#> [408] 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1 1 0 1 1 0
#> [445] 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 0
#> [482] 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1
#> [519] 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 0 1 1
#> [556] 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0
#> [593] 0 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0
#> [630] 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[18]]
#>   [1] 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0
#>  [38] 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1
#>  [75] 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1
#> [112] 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [149] 1 1 0 0 0 1 0 1 0 0 1 0 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [186] 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1
#> [223] 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#> [260] 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1
#> [297] 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 0 1 1 0 1 0 1 1
#> [334] 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1
#> [371] 0 1 0 0 0 0 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1
#> [408] 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1 0 1 1
#> [445] 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [482] 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0
#> [519] 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [556] 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1
#> [593] 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1
#> [630] 0 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[19]]
#>   [1] 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1
#>  [38] 0 1 0 1 0 0 1 0 0 0 0 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0
#>  [75] 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [112] 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0
#> [149] 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 0 0
#> [186] 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0
#> [223] 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1
#> [260] 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 0 0
#> [297] 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1
#> [334] 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1
#> [371] 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1
#> [408] 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1
#> [445] 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0
#> [482] 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1
#> [519] 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1
#> [556] 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1
#> [593] 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [630] 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[20]]
#>   [1] 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 0 0
#>  [38] 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#>  [75] 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0
#> [112] 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1
#> [149] 0 1 0 1 0 1 0 0 1 1 0 0 0 0 0 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1
#> [186] 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1
#> [223] 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0
#> [260] 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [297] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [334] 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1
#> [371] 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1
#> [408] 0 1 0 1 0 0 0 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0
#> [445] 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1
#> [482] 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1
#> [519] 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0
#> [556] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0
#> [593] 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1
#> [630] 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[21]]
#>   [1] 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 0
#>  [38] 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 0
#>  [75] 1 1 0 1 1 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0
#> [112] 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 0 0 1 0 0 1
#> [149] 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1
#> [186] 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1
#> [223] 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0
#> [260] 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1
#> [297] 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [334] 1 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [371] 1 0 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1
#> [408] 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1
#> [445] 0 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1
#> [482] 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1 1
#> [519] 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1
#> [556] 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1
#> [593] 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0
#> [630] 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[22]]
#>   [1] 1 0 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#>  [38] 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1
#>  [75] 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1
#> [112] 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1
#> [149] 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 1 0 0 1 0 1 1 1 0 0
#> [186] 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [223] 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 0 0 1 1 1 0 0
#> [260] 0 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1
#> [297] 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1
#> [334] 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 0 1 1 0 1 0 1
#> [371] 1 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [408] 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1
#> [445] 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1
#> [482] 1 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [519] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1
#> [556] 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 0
#> [593] 0 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1
#> [630] 0 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[23]]
#>   [1] 0 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1
#>  [38] 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1
#>  [75] 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1
#> [112] 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1
#> [149] 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1
#> [186] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1
#> [223] 0 0 1 0 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0
#> [260] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0
#> [297] 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0
#> [334] 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1
#> [371] 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1
#> [408] 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0
#> [445] 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1
#> [482] 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 0
#> [519] 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0
#> [556] 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [593] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1
#> [630] 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[24]]
#>   [1] 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0
#>  [38] 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1
#>  [75] 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0
#> [112] 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0
#> [149] 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 0
#> [186] 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [223] 0 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1
#> [260] 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [297] 1 0 0 0 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1
#> [334] 1 0 0 0 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [371] 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1
#> [408] 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1 0
#> [445] 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 1 1
#> [482] 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1
#> [519] 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1
#> [556] 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0
#> [593] 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0
#> [630] 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 0 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[25]]
#>   [1] 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 0 0 1
#>  [38] 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0
#>  [75] 1 0 0 1 1 0 0 0 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1
#> [112] 0 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1
#> [149] 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1
#> [186] 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1
#> [223] 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 0
#> [260] 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0
#> [297] 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0
#> [334] 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1
#> [371] 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1
#> [408] 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1
#> [445] 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1 0 1
#> [482] 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0
#> [519] 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1
#> [556] 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [593] 0 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 0
#> [630] 1 1 1 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[26]]
#>   [1] 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1
#>  [38] 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1
#>  [75] 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1
#> [112] 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 0 0 0 1
#> [149] 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0
#> [186] 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 0 0 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1
#> [223] 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1
#> [260] 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0
#> [297] 0 0 1 1 0 0 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1
#> [334] 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 0
#> [371] 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0
#> [408] 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 1 0 0
#> [445] 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 0 1 0
#> [482] 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1
#> [519] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0
#> [556] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [593] 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0
#> [630] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[27]]
#>   [1] 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1
#>  [38] 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1
#>  [75] 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0
#> [112] 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1
#> [149] 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1
#> [186] 0 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1
#> [223] 0 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 1
#> [260] 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 0
#> [297] 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 0 0 1 0 0
#> [334] 0 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1
#> [371] 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 0
#> [408] 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1
#> [445] 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0
#> [482] 0 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [519] 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [556] 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1
#> [593] 1 1 0 0 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0
#> [630] 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[28]]
#>   [1] 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0
#>  [38] 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1
#>  [75] 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [112] 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1
#> [149] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1
#> [186] 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [223] 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0
#> [260] 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1
#> [297] 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1
#> [334] 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1
#> [371] 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [408] 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1
#> [445] 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1
#> [482] 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 0 1 0
#> [519] 0 1 0 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1
#> [556] 0 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 1 1 0 1
#> [593] 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1 0 0 0 0 1 1 0 0 0
#> [630] 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[29]]
#>   [1] 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 0 0 0
#>  [38] 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1
#>  [75] 0 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0
#> [112] 1 0 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [149] 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1
#> [186] 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1
#> [223] 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1
#> [260] 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1
#> [297] 0 0 1 1 0 1 0 0 1 0 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1
#> [334] 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0
#> [371] 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1
#> [408] 1 0 1 1 0 0 0 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [445] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1
#> [482] 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0
#> [519] 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0
#> [556] 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1
#> [593] 1 1 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1
#> [630] 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[30]]
#>   [1] 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#>  [38] 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1
#>  [75] 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0
#> [112] 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [149] 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1
#> [186] 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1
#> [223] 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1
#> [260] 1 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [297] 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 0
#> [334] 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 1 1 1 0
#> [371] 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [408] 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0
#> [445] 0 1 1 0 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0
#> [482] 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0
#> [519] 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1
#> [556] 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0
#> [593] 0 0 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1
#> [630] 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[31]]
#>   [1] 0 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#>  [38] 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1
#>  [75] 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [112] 0 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1 0
#> [149] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [186] 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0
#> [223] 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 0 0 1
#> [260] 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [297] 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1
#> [334] 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1
#> [371] 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1
#> [408] 1 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [445] 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0
#> [482] 0 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0
#> [519] 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0
#> [556] 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1
#> [593] 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0 0 1 1 1 0 0 1 1 0 1 1
#> [630] 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[32]]
#>   [1] 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0
#>  [38] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1
#>  [75] 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1
#> [112] 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1
#> [149] 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0
#> [186] 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 0 1 1 0 1 1 0
#> [223] 0 1 1 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [260] 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1
#> [297] 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0
#> [334] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0
#> [371] 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1
#> [408] 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1
#> [445] 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1
#> [482] 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 0 0 1
#> [519] 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0
#> [556] 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0
#> [593] 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1
#> [630] 1 0 0 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[33]]
#>   [1] 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0
#>  [38] 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1
#>  [75] 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1
#> [112] 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 0 0
#> [149] 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0
#> [186] 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0
#> [223] 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1
#> [260] 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0
#> [297] 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1 1
#> [334] 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 0 0 0 0 1
#> [371] 1 1 0 0 1 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1
#> [408] 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1
#> [445] 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [482] 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0
#> [519] 0 0 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 0 1 0
#> [556] 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 0 0 0 1 1 1
#> [593] 0 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [630] 1 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 1 0 1 1 0 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[34]]
#>   [1] 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0
#>  [38] 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1
#>  [75] 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0
#> [112] 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 0
#> [149] 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1
#> [186] 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0
#> [223] 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1
#> [260] 0 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1
#> [297] 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1
#> [334] 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 0 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1
#> [371] 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1
#> [408] 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0
#> [445] 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1
#> [482] 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0
#> [519] 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0
#> [556] 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1
#> [593] 1 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 0 0 1 0 1 0 1 0 0
#> [630] 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[35]]
#>   [1] 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0
#>  [38] 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1
#>  [75] 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0
#> [112] 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [149] 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1
#> [186] 0 0 0 1 1 0 0 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0
#> [223] 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 0 1 0 0
#> [260] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0
#> [297] 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1
#> [334] 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1
#> [371] 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0
#> [408] 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1
#> [445] 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [482] 1 0 0 1 1 1 0 0 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1
#> [519] 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1
#> [556] 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1 1 1
#> [593] 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1
#> [630] 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[36]]
#>   [1] 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0 0 1 1 0 0
#>  [38] 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1
#>  [75] 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1
#> [112] 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0
#> [149] 1 1 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1
#> [186] 0 1 0 1 0 0 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1
#> [223] 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1
#> [260] 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1
#> [297] 0 0 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1
#> [334] 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 0 0 0 1
#> [371] 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 1
#> [408] 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1
#> [445] 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1
#> [482] 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [519] 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [556] 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1
#> [593] 0 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1
#> [630] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[37]]
#>   [1] 1 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 0 1 1
#>  [38] 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 0 1 0 0
#>  [75] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1
#> [112] 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1
#> [149] 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0
#> [186] 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1
#> [223] 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1
#> [260] 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1
#> [297] 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 0
#> [334] 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1
#> [371] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 0 0 1
#> [408] 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 0 1 0 0 1 0 1 1 0
#> [445] 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 0 1 0 1 1
#> [482] 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 0 1 0 0
#> [519] 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [556] 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1
#> [593] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 0 0
#> [630] 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[38]]
#>   [1] 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0
#>  [38] 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1
#>  [75] 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 0
#> [112] 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0
#> [149] 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0
#> [186] 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [223] 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0
#> [260] 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0 1
#> [297] 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1
#> [334] 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 0 0 1 1 0 1 0 1 0
#> [371] 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1
#> [408] 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0
#> [445] 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1
#> [482] 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [519] 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1
#> [556] 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [593] 0 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [630] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[39]]
#>   [1] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1
#>  [38] 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0
#>  [75] 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1
#> [112] 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0
#> [149] 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0
#> [186] 1 0 0 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 0 0 1
#> [223] 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0
#> [260] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1
#> [297] 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1
#> [334] 0 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1
#> [371] 1 0 1 0 0 0 1 1 1 0 0 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1
#> [408] 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1
#> [445] 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1
#> [482] 0 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [519] 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [556] 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1
#> [593] 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0
#> [630] 1 1 1 0 0 1 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 1 1 0 0 1 0 0 0 0 1 1 0 0
#> [667] 0 0 1 0
#> 
#> $weights[[40]]
#>   [1] 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0
#>  [38] 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 1 1 1 1 1
#>  [75] 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 0
#> [112] 0 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [149] 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0
#> [186] 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1
#> [223] 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [260] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1
#> [297] 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [334] 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0
#> [371] 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 0 0 1
#> [408] 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1
#> [445] 0 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0
#> [482] 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 0 1 1
#> [519] 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0
#> [556] 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 1 1
#> [593] 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1
#> [630] 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[41]]
#>   [1] 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1
#>  [38] 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 0 1 0
#>  [75] 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [112] 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [149] 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0 1
#> [186] 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0 0 0 0
#> [223] 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 1
#> [260] 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 1 1
#> [297] 1 1 0 0 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 0
#> [334] 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [371] 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0
#> [408] 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0
#> [445] 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1
#> [482] 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 0 0 0 1
#> [519] 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0
#> [556] 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0
#> [593] 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0
#> [630] 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1
#> [667] 0 0 0 0
#> 
#> $weights[[42]]
#>   [1] 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0
#>  [38] 1 0 0 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0
#>  [75] 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0
#> [112] 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1
#> [186] 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1
#> [223] 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 0 1 0 0 1 1
#> [260] 0 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1
#> [297] 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1
#> [334] 1 1 0 0 0 0 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1
#> [371] 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1
#> [408] 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0
#> [445] 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1
#> [482] 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1
#> [519] 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1
#> [556] 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1
#> [593] 0 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1 1 1
#> [630] 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[43]]
#>   [1] 0 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0
#>  [38] 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0
#>  [75] 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1
#> [112] 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 1 0 1 1 0 0 1
#> [149] 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 1
#> [186] 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [223] 1 1 0 1 1 0 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1
#> [260] 0 0 1 1 0 0 1 1 0 0 0 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1
#> [297] 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [334] 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1
#> [371] 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0
#> [408] 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0
#> [445] 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 0 1 1 1 0 1 1 0 1
#> [482] 1 0 1 1 1 1 0 1 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1
#> [519] 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1
#> [556] 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0
#> [593] 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1
#> [630] 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[44]]
#>   [1] 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 1
#>  [38] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1
#>  [75] 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1
#> [112] 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0
#> [149] 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 0 1
#> [186] 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1
#> [223] 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1
#> [260] 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [297] 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0
#> [334] 1 0 1 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1
#> [371] 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1
#> [408] 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1
#> [445] 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [482] 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1
#> [519] 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0
#> [556] 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1
#> [593] 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0
#> [630] 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[45]]
#>   [1] 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1
#>  [38] 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0
#>  [75] 1 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0
#> [112] 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 0 0 1
#> [149] 1 1 1 0 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [186] 0 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 0
#> [223] 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1
#> [260] 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0
#> [297] 0 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1
#> [334] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 0
#> [371] 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1
#> [408] 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [445] 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [482] 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0
#> [519] 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1
#> [556] 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1
#> [593] 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0
#> [630] 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0
#> [667] 1 0 0 0
#> 
#> $weights[[46]]
#>   [1] 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0
#>  [38] 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0
#>  [75] 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1
#> [112] 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [149] 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [186] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [223] 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 0 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1
#> [260] 1 0 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 0
#> [297] 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [334] 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1
#> [371] 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 0 0
#> [408] 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1
#> [445] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 0 0 1
#> [482] 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1
#> [519] 0 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1
#> [556] 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0
#> [593] 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1
#> [630] 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[47]]
#>   [1] 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0
#>  [38] 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 1 1
#>  [75] 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1
#> [112] 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 0
#> [149] 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 0
#> [186] 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0
#> [223] 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0 1
#> [260] 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [297] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 0
#> [334] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1
#> [371] 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1
#> [408] 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0
#> [445] 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1
#> [482] 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1
#> [519] 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0
#> [556] 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 0
#> [593] 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1
#> [630] 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[48]]
#>   [1] 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0
#>  [38] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1
#>  [75] 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [112] 1 1 0 0 1 0 0 0 0 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1
#> [149] 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
#> [186] 1 1 1 0 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0
#> [223] 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0
#> [260] 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1
#> [297] 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1
#> [334] 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 1 0 0 1 1 1 0 0 0 0 1 1
#> [371] 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [408] 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0
#> [445] 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1
#> [482] 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1
#> [519] 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0
#> [556] 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 1
#> [593] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [630] 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[49]]
#>   [1] 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0
#>  [38] 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0
#>  [75] 0 0 1 1 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 0 0 0 1 0
#> [112] 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [149] 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1
#> [186] 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1
#> [223] 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0
#> [260] 0 0 0 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0
#> [297] 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0
#> [334] 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0
#> [371] 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 0
#> [408] 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1
#> [445] 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0
#> [482] 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1
#> [519] 1 0 1 1 1 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [556] 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1
#> [593] 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0
#> [630] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[50]]
#>   [1] 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 0 0 0
#>  [38] 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1
#>  [75] 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 0 0 0 1
#> [112] 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1
#> [149] 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1
#> [186] 1 0 0 0 0 0 1 0 0 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 0 0 0 1 1
#> [223] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1
#> [260] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 0 1
#> [297] 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0
#> [334] 1 1 1 1 0 0 1 0 1 0 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [371] 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 0
#> [408] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1
#> [445] 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1
#> [482] 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 0
#> [519] 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1
#> [556] 1 0 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1
#> [593] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0
#> [630] 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1
#> [667] 1 1 0 1
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       5.0+
#> 3     3       5.0+
#> 4     4     180.0+
#> 5     5       2.0+
#> 6     6     180.0+
#> 7     7     180.0+
#> 8     8     180.0+
#> 9     9       12.0
#> 10   10       5.0+
#> 11   11     180.0+
#> 12   12       2.0+
#> 13   13       2.0+
#> 14   14     180.0+
#> 15   15        3.0
#> 16   16     180.0+
#> 17   17     180.0+
#> 18   18     180.0+
#> 19   19       2.0+
#> 20   20     155.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     180.0+
#> 25   25     180.0+
#> 26   26       5.0+
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
#> 37   37     180.0+
#> 38   38     180.0+
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41       5.0+
#> 42   42     161.0+
#> 43   43     180.0+
#> 44   44     180.0+
#> 45   45     180.0+
#> 46   46     180.0+
#> 47   47       5.0+
#> 48   48     180.0+
#> 49   49     177.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54      10.0+
#> 55   55     172.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59        7.0
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62        2.0
#> 63   63        1.0
#> 64   64     179.0+
#> 65   65     180.0+
#> 66   66     179.0+
#> 67   67     180.0+
#> 68   68       4.0+
#> 69   69     180.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74       36.0
#> 75   75      88.0+
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80       77.0
#> 81   81     180.0+
#> 82   82     180.0+
#> 83   83        5.0
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87     180.0+
#> 88   88     180.0+
#> 89   89       4.0+
#> 90   90       85.0
#> 91   91     180.0+
#> 92   92       99.0
#> 93   93     152.0+
#> 94   94       7.0+
#> 95   95       6.0+
#> 96   96     180.0+
#> 97   97     180.0+
#> 98   98     180.0+
#> 99   99      13.0+
#> 100 100     171.0+
#> 101 101     180.0+
#> 102 102     174.0+
#> 103 103       28.0
#> 104 104        1.0
#> 105 105       9.0+
#> 106 106     180.0+
#> 107 107     180.0+
#> 108 108     175.0+
#> 109 109        2.0
#> 110 110       7.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115     180.0+
#> 116 116     180.0+
#> 117 117     180.0+
#> 118 118      16.0+
#> 119 119     180.0+
#> 120 120       16.0
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123     180.0+
#> 124 124        8.0
#> 125 125        2.0
#> 126 126       3.0+
#> 127 127     180.0+
#> 128 128     180.0+
#> 129 129     180.0+
#> 130 130     180.0+
#> 131 131     180.0+
#> 132 132        1.0
#> 133 133      165.0
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136     180.0+
#> 137 137     180.0+
#> 138 138       8.0+
#> 139 139     180.0+
#> 140 140     180.0+
#> 141 141     180.0+
#> 142 142     180.0+
#> 143 143     180.0+
#> 144 144     171.0+
#> 145 145       5.0+
#> 146 146     180.0+
#> 147 147     147.0+
#> 148 148     180.0+
#> 149 149     180.0+
#> 150 150     180.0+
#> 151 151     180.0+
#> 152 152       4.0+
#> 153 153     180.0+
#> 154 154       9.0+
#> 155 155        1.0
#> 156 156     180.0+
#> 157 157       2.0+
#> 158 158     180.0+
#> 159 159     180.0+
#> 160 160        2.0
#> 161 161     180.0+
#> 162 162     180.0+
#> 163 163     180.0+
#> 164 164       64.0
#> 165 165     180.0+
#> 166 166       9.0+
#> 167 167     180.0+
#> 168 168        0.5
#> 169 169     180.0+
#> 170 170     161.0+
#> 171 171     171.0+
#> 172 172        3.0
#> 173 173        1.0
#> 174 174     180.0+
#> 175 175      10.0+
#> 176 176     180.0+
#> 177 177     180.0+
#> 178 178       45.0
#> 179 179       3.0+
#> 180 180       19.0
#> 181 181     180.0+
#> 182 182     180.0+
#> 183 183       9.0+
#> 184 184     180.0+
#> 185 185     172.0+
#> 186 186        8.0
#> 187 187     180.0+
#> 188 188     180.0+
#> 189 189     180.0+
#> 190 190      13.0+
#> 191 191       8.0+
#> 192 192     180.0+
#> 193 193     180.0+
#> 194 194       94.0
#> 195 195     180.0+
#> 196 196        7.0
#> 197 197       7.0+
#> 198 198        6.0
#> 199 199     180.0+
#> 200 200     180.0+
#> 201 201     180.0+
#> 202 202       30.0
#> 203 203     180.0+
#> 204 204     180.0+
#> 205 205      13.0+
#> 206 206        5.0
#> 207 207       18.0
#> 208 208     180.0+
#> 209 209        1.0
#> 210 210     180.0+
#> 211 211     180.0+
#> 212 212     180.0+
#> 213 213       4.0+
#> 214 214        9.0
#> 215 215       22.0
#> 216 216     180.0+
#> 217 217       7.0+
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220       4.0+
#> 221 221       3.0+
#> 222 222      167.0
#> 223 223       6.0+
#> 224 224     180.0+
#> 225 225       17.0
#> 226 226     180.0+
#> 227 227     180.0+
#> 228 228     180.0+
#> 229 229       12.0
#> 230 230     180.0+
#> 231 231     180.0+
#> 232 232     180.0+
#> 233 233     180.0+
#> 234 234     180.0+
#> 235 235      12.0+
#> 236 236     180.0+
#> 237 237     180.0+
#> 238 238     180.0+
#> 239 239     180.0+
#> 240 240       12.0
#> 241 241     180.0+
#> 242 242        9.0
#> 243 243        3.0
#> 244 244     180.0+
#> 245 245     180.0+
#> 246 246       2.0+
#> 247 247      18.0+
#> 248 248     180.0+
#> 249 249     180.0+
#> 250 250     180.0+
#> 251 251       3.0+
#> 252 252       2.0+
#> 253 253      103.0
#> 254 254       15.0
#> 255 255     180.0+
#> 256 256       5.0+
#> 257 257     180.0+
#> 258 258     179.0+
#> 259 259     166.0+
#> 260 260      14.0+
#> 261 261        3.0
#> 262 262       0.5+
#> 263 263       3.0+
#> 264 264     180.0+
#> 265 265     175.0+
#> 266 266     180.0+
#> 267 267       7.0+
#> 268 268        5.0
#> 269 269       16.0
#> 270 270        1.0
#> 271 271     180.0+
#> 272 272     123.0+
#> 273 273       1.0+
#> 274 274       18.0
#> 275 275      11.0+
#> 276 276     180.0+
#> 277 277       80.0
#> 278 278      15.0+
#> 279 279     180.0+
#> 280 280       4.0+
#> 281 281       15.0
#> 282 282     180.0+
#> 283 283     180.0+
#> 284 284     174.0+
#> 285 285     180.0+
#> 286 286     180.0+
#> 287 287     180.0+
#> 288 288      175.0
#> 289 289     180.0+
#> 290 290       10.0
#> 291 291     180.0+
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294     180.0+
#> 295 295     179.0+
#> 296 296     180.0+
#> 297 297      11.0+
#> 298 298        0.5
#> 299 299       7.0+
#> 300 300     180.0+
#> 301 301     152.0+
#> 302 302     180.0+
#> 303 303     180.0+
#> 304 304      21.0+
#> 305 305        1.0
#> 306 306      101.0
#> 307 307       7.0+
#> 308 308     180.0+
#> 309 309     180.0+
#> 310 310        1.0
#> 311 311      171.0
#> 312 312     180.0+
#> 313 313     174.0+
#> 314 314        6.0
#> 315 315        0.5
#> 316 316     180.0+
#> 317 317      14.0+
#> 318 318     180.0+
#> 319 319       45.0
#> 320 320       5.0+
#> 321 321      103.0
#> 322 322       3.0+
#> 323 323     180.0+
#> 324 324       36.0
#> 325 325       5.0+
#> 326 326     180.0+
#> 327 327     180.0+
#> 328 328        7.0
#> 329 329     180.0+
#> 330 330       2.0+
#> 331 331     180.0+
#> 332 332     180.0+
#> 333 333        7.0
#> 334 334     180.0+
#> 335 335        7.0
#> 336 336       8.0+
#> 337 337      13.0+
#> 338 338      123.0
#> 339 339     180.0+
#> 340 340       51.0
#> 341 341       19.0
#> 342 342     180.0+
#> 343 343        1.0
#> 344 344        1.0
#> 345 345       60.0
#> 346 346       76.0
#> 347 347     180.0+
#> 348 348      132.0
#> 349 349      10.0+
#> 350 350     180.0+
#> 351 351     180.0+
#> 352 352      162.0
#> 353 353       7.0+
#> 354 354       7.0+
#> 355 355        9.0
#> 356 356     180.0+
#> 357 357     180.0+
#> 358 358     180.0+
#> 359 359       12.0
#> 360 360     180.0+
#> 361 361     180.0+
#> 362 362     180.0+
#> 363 363      152.0
#> 364 364     180.0+
#> 365 365       76.0
#> 366 366     180.0+
#> 367 367     180.0+
#> 368 368     180.0+
#> 369 369       28.0
#> 370 370     180.0+
#> 371 371     180.0+
#> 372 372      16.0+
#> 373 373     180.0+
#> 374 374     180.0+
#> 375 375     180.0+
#> 376 376        6.0
#> 377 377     180.0+
#> 378 378       7.0+
#> 379 379       15.0
#> 380 380       3.0+
#> 381 381      13.0+
#> 382 382     180.0+
#> 383 383     180.0+
#> 384 384       3.0+
#> 385 385     180.0+
#> 386 386       20.0
#> 387 387     180.0+
#> 388 388        0.5
#> 389 389     180.0+
#> 390 390     180.0+
#> 391 391        8.0
#> 392 392     180.0+
#> 393 393       4.0+
#> 394 394       58.0
#> 395 395     180.0+
#> 396 396     180.0+
#> 397 397     180.0+
#> 398 398     180.0+
#> 399 399     180.0+
#> 400 400     180.0+
#> 401 401     180.0+
#> 402 402      10.0+
#> 403 403     180.0+
#> 404 404     180.0+
#> 405 405     179.0+
#> 406 406     180.0+
#> 407 407     180.0+
#> 408 408     180.0+
#> 409 409       10.0
#> 410 410        1.0
#> 411 411       13.0
#> 412 412     180.0+
#> 413 413        1.0
#> 414 414     180.0+
#> 415 415       11.0
#> 416 416       3.0+
#> 417 417        5.0
#> 418 418       12.0
#> 419 419     180.0+
#> 420 420     180.0+
#> 421 421     180.0+
#> 422 422       34.0
#> 423 423     177.0+
#> 424 424     180.0+
#> 425 425        5.0
#> 426 426       4.0+
#> 427 427        7.0
#> 428 428      15.0+
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431     180.0+
#> 432 432     180.0+
#> 433 433     180.0+
#> 434 434        6.0
#> 435 435     180.0+
#> 436 436       85.0
#> 437 437     180.0+
#> 438 438      17.0+
#> 439 439     174.0+
#> 440 440        4.0
#> 441 441        7.0
#> 442 442        0.5
#> 443 443     180.0+
#> 444 444       12.0
#> 445 445     180.0+
#> 446 446       46.0
#> 447 447     180.0+
#> 448 448     180.0+
#> 449 449       52.0
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452     180.0+
#> 453 453     180.0+
#> 454 454     180.0+
#> 455 455     180.0+
#> 456 456     180.0+
#> 457 457        5.0
#> 458 458     180.0+
#> 459 459     180.0+
#> 460 460        1.0
#> 461 461     180.0+
#> 462 462       7.0+
#> 463 463     180.0+
#> 464 464     180.0+
#> 465 465     176.0+
#> 466 466       18.0
#> 467 467       47.0
#> 468 468     180.0+
#> 469 469       11.0
#> 470 470     180.0+
#> 471 471       8.0+
#> 472 472     180.0+
#> 473 473       32.0
#> 474 474     180.0+
#> 475 475       10.0
#> 476 476     180.0+
#> 477 477      172.0
#> 478 478      119.0
#> 479 479       12.0
#> 480 480        8.0
#> 481 481        1.0
#> 482 482       80.0
#> 483 483        2.0
#> 484 484     152.0+
#> 485 485       29.0
#> 486 486       32.0
#> 487 487       23.0
#> 488 488        6.0
#> 489 489     180.0+
#> 490 490       3.0+
#> 491 491     180.0+
#> 492 492     180.0+
#> 493 493     180.0+
#> 494 494     180.0+
#> 495 495        4.0
#> 496 496        4.0
#> 497 497      10.0+
#> 498 498     180.0+
#> 499 499       3.0+
#> 500 500     180.0+
#> 501 501      171.0
#> 502 502        1.0
#> 503 503        3.0
#> 504 504        6.0
#> 505 505      138.0
#> 506 506        8.0
#> 507 507       40.0
#> 508 508       59.0
#> 509 509      161.0
#> 510 510     180.0+
#> 511 511       93.0
#> 512 512      164.0
#> 513 513      173.0
#> 514 514     180.0+
#> 515 515       37.0
#> 516 516     180.0+
#> 517 517       7.0+
#> 518 518      15.0+
#> 519 519     180.0+
#> 520 520     171.0+
#> 521 521     166.0+
#> 522 522       71.0
#> 523 523      20.0+
#> 524 524       3.0+
#> 525 525       10.0
#> 526 526     180.0+
#> 527 527       85.0
#> 528 528       10.0
#> 529 529        6.0
#> 530 530     180.0+
#> 531 531     180.0+
#> 532 532     180.0+
#> 533 533      108.0
#> 534 534     180.0+
#> 535 535      125.0
#> 536 536     180.0+
#> 537 537     180.0+
#> 538 538        6.0
#> 539 539       9.0+
#> 540 540     180.0+
#> 541 541     180.0+
#> 542 542      103.0
#> 543 543     180.0+
#> 544 544     177.0+
#> 545 545      169.0
#> 546 546       70.0
#> 547 547        4.0
#> 548 548     180.0+
#> 549 549     180.0+
#> 550 550       7.0+
#> 551 551       20.0
#> 552 552       16.0
#> 553 553     180.0+
#> 554 554     180.0+
#> 555 555     180.0+
#> 556 556     180.0+
#> 557 557     177.0+
#> 558 558        0.5
#> 559 559     180.0+
#> 560 560        2.0
#> 561 561      128.0
#> 562 562      167.0
#> 563 563       3.0+
#> 564 564     180.0+
#> 565 565        4.0
#> 566 566        1.0
#> 567 567     180.0+
#> 568 568       90.0
#> 569 569     180.0+
#> 570 570     180.0+
#> 571 571       89.0
#> 572 572        4.0
#> 573 573       71.0
#> 574 574        1.0
#> 575 575       19.0
#> 576 576       30.0
#> 577 577     180.0+
#> 578 578      154.0
#> 579 579     180.0+
#> 580 580     180.0+
#> 581 581       4.0+
#> 582 582        1.0
#> 583 583       12.0
#> 584 584      16.0+
#> 585 585       5.0+
#> 586 586       4.0+
#> 587 587     180.0+
#> 588 588     180.0+
#> 589 589        3.0
#> 590 590       83.0
#> 591 591      126.0
#> 592 592     180.0+
#> 593 593      165.0
#> 594 594        3.0
#> 595 595     180.0+
#> 596 596     180.0+
#> 597 597     180.0+
#> 598 598       3.0+
#> 599 599     180.0+
#> 600 600       4.0+
#> 601 601      174.0
#> 602 602        6.0
#> 603 603       70.0
#> 604 604     180.0+
#> 605 605       14.0
#> 606 606       13.0
#> 607 607       92.0
#> 608 608     180.0+
#> 609 609       38.0
#> 610 610        4.0
#> 611 611       3.0+
#> 612 612       6.0+
#> 613 613       62.0
#> 614 614       6.0+
#> 615 615       4.0+
#> 616 616       20.0
#> 617 617       22.0
#> 618 618       65.0
#> 619 619       11.0
#> 620 620     180.0+
#> 621 621       46.0
#> 622 622      115.0
#> 623 623       3.0+
#> 624 624       8.0+
#> 625 625        4.0
#> 626 626        4.0
#> 627 627     180.0+
#> 628 628       1.0+
#> 629 629      110.0
#> 630 630       29.0
#> 631 631     180.0+
#> 632 632       1.0+
#> 633 633        8.0
#> 634 634       25.0
#> 635 635      145.0
#> 636 636        3.0
#> 637 637       50.0
#> 638 638       11.0
#> 639 639      126.0
#> 640 640     180.0+
#> 641 641     180.0+
#> 642 642        4.0
#> 643 643     178.0+
#> 644 644       36.0
#> 645 645       75.0
#> 646 646       3.0+
#> 647 647        1.0
#> 648 648       33.0
#> 649 649       74.0
#> 650 650      168.0
#> 651 651      169.0
#> 652 652       52.0
#> 653 653        7.0
#> 654 654        4.0
#> 655 655        0.5
#> 656 656     180.0+
#> 657 657        4.0
#> 658 658       50.0
#> 659 659        2.0
#> 660 660     179.0+
#> 661 661       8.0+
#> 662 662       76.0
#> 663 663       16.0
#> 664 664       67.0
#> 665 665        8.0
#> 666 666       53.0
#> 667 667       7.0+
#> 668 668        0.5
#> 669 669     180.0+
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
#> <bytecode: 0x56db197c7848>
#> <environment: 0x56db197c1f90>
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
#> <bytecode: 0x56daf89aff88>
#> <environment: 0x56db1a02baa0>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x56daf89adf88>
#> <environment: 0x56db1a02bb80>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x56daf89aff88>
#> <environment: 0x56db1a027e30>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x56daf89adf88>
#> <environment: 0x56db1a027f80>
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
#> <bytecode: 0x56daf8972448>
#> <environment: 0x56db1a020b88>
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
#>   0.8367593 
```
