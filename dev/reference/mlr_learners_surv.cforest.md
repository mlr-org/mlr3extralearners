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
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V2 <= 62
#> |   |   |   |   |   |   |   [13] V5 <= 10
#> |   |   |   |   |   |   |   |   [14] V7 <= 152
#> |   |   |   |   |   |   |   |   |   [15] V2 <= 51 *
#> |   |   |   |   |   |   |   |   |   [16] V2 > 51 *
#> |   |   |   |   |   |   |   |   [17] V7 > 152 *
#> |   |   |   |   |   |   |   [18] V5 > 10 *
#> |   |   |   |   |   |   [19] V2 > 62
#> |   |   |   |   |   |   |   [20] V3 <= 9
#> |   |   |   |   |   |   |   |   [21] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [22] V5 > 1 *
#> |   |   |   |   |   |   |   [23] V3 > 9
#> |   |   |   |   |   |   |   |   [24] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [25] V2 > 71 *
#> |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   [27] V7 <= 170
#> |   |   |   |   |   |   |   [28] V5 <= 10
#> |   |   |   |   |   |   |   |   [29] V7 <= 114 *
#> |   |   |   |   |   |   |   |   [30] V7 > 114
#> |   |   |   |   |   |   |   |   |   [31] V2 <= 71
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 7
#> |   |   |   |   |   |   |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   |   [34] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   |   |   [35] V2 <= 53 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [36] V2 > 53 *
#> |   |   |   |   |   |   |   |   |   |   [37] V5 > 7 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 71
#> |   |   |   |   |   |   |   |   |   |   [39] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [40] V3 > 7 *
#> |   |   |   |   |   |   |   [41] V5 > 10 *
#> |   |   |   |   |   |   [42] V7 > 170 *
#> |   |   |   [43] V5 > 16
#> |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   [45] V6 > 0 *
#> |   |   [46] V5 > 170
#> |   |   |   [47] V6 <= 0 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V2 <= 52 *
#> |   |   |   |   [50] V2 > 52 *
#> |   [51] V2 > 78
#> |   |   [52] V5 <= 173
#> |   |   |   [53] V6 <= 0
#> |   |   |   |   [54] V2 <= 84
#> |   |   |   |   |   [55] V4 <= 0 *
#> |   |   |   |   |   [56] V4 > 0 *
#> |   |   |   |   [57] V2 > 84 *
#> |   |   |   [58] V6 > 0
#> |   |   |   |   [59] V7 <= 115 *
#> |   |   |   |   [60] V7 > 115
#> |   |   |   |   |   [61] V7 <= 155
#> |   |   |   |   |   |   [62] V5 <= 12 *
#> |   |   |   |   |   |   [63] V5 > 12 *
#> |   |   |   |   |   [64] V7 > 155 *
#> |   |   [65] V5 > 173 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 98 *
#> |   |   [4] V7 > 98
#> |   |   |   [5] V5 <= 173
#> |   |   |   |   [6] V2 <= 56 *
#> |   |   |   |   [7] V2 > 56
#> |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   [9] V7 <= 130 *
#> |   |   |   |   |   |   [10] V7 > 130
#> |   |   |   |   |   |   |   [11] V5 <= 15 *
#> |   |   |   |   |   |   |   [12] V5 > 15 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V7 <= 115 *
#> |   |   |   |   |   |   [15] V7 > 115
#> |   |   |   |   |   |   |   [16] V3 <= 4
#> |   |   |   |   |   |   |   |   [17] V2 <= 79 *
#> |   |   |   |   |   |   |   |   [18] V2 > 79 *
#> |   |   |   |   |   |   |   [19] V3 > 4
#> |   |   |   |   |   |   |   |   [20] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [21] V2 > 73 *
#> |   |   |   [22] V5 > 173
#> |   |   |   |   [23] V3 <= 12
#> |   |   |   |   |   [24] V3 <= 5
#> |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   [26] V2 <= 73 *
#> |   |   |   |   |   |   |   [27] V2 > 73 *
#> |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   [29] V2 <= 52 *
#> |   |   |   |   |   |   |   [30] V2 > 52 *
#> |   |   |   |   |   [31] V3 > 5 *
#> |   |   |   |   [32] V3 > 12 *
#> |   [33] V4 > 0
#> |   |   [34] V2 <= 72
#> |   |   |   [35] V2 <= 54
#> |   |   |   |   [36] V7 <= 110 *
#> |   |   |   |   [37] V7 > 110
#> |   |   |   |   |   [38] V5 <= 10
#> |   |   |   |   |   |   [39] V3 <= 6 *
#> |   |   |   |   |   |   [40] V3 > 6 *
#> |   |   |   |   |   [41] V5 > 10 *
#> |   |   |   [42] V2 > 54
#> |   |   |   |   [43] V2 <= 57 *
#> |   |   |   |   [44] V2 > 57
#> |   |   |   |   |   [45] V5 <= 10
#> |   |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   |   [47] V2 <= 61 *
#> |   |   |   |   |   |   |   [48] V2 > 61
#> |   |   |   |   |   |   |   |   [49] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [50] V3 > 6 *
#> |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   [52] V3 <= 3 *
#> |   |   |   |   |   |   |   [53] V3 > 3
#> |   |   |   |   |   |   |   |   [54] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [55] V7 > 133
#> |   |   |   |   |   |   |   |   |   [56] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [57] V2 > 67 *
#> |   |   |   |   |   [58] V5 > 10 *
#> |   |   [59] V2 > 72
#> |   |   |   [60] V2 <= 86
#> |   |   |   |   [61] V5 <= 10
#> |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   |   [64] V5 <= 5
#> |   |   |   |   |   |   |   [65] V7 <= 118 *
#> |   |   |   |   |   |   |   [66] V7 > 118 *
#> |   |   |   |   |   |   [67] V5 > 5 *
#> |   |   |   |   [68] V5 > 10 *
#> |   |   |   [69] V2 > 86 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V7 <= 140
#> |   |   |   |   |   |   [8] V5 <= 6 *
#> |   |   |   |   |   |   [9] V5 > 6 *
#> |   |   |   |   |   [10] V7 > 140 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 66
#> |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   [14] V7 <= 150
#> |   |   |   |   |   |   |   [15] V7 <= 127 *
#> |   |   |   |   |   |   |   [16] V7 > 127
#> |   |   |   |   |   |   |   |   [17] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [18] V7 > 130 *
#> |   |   |   |   |   |   [19] V7 > 150 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V7 <= 102 *
#> |   |   |   |   |   |   [22] V7 > 102
#> |   |   |   |   |   |   |   [23] V7 <= 148
#> |   |   |   |   |   |   |   |   [24] V7 <= 133
#> |   |   |   |   |   |   |   |   |   [25] V7 <= 117 *
#> |   |   |   |   |   |   |   |   |   [26] V7 > 117 *
#> |   |   |   |   |   |   |   |   [27] V7 > 133 *
#> |   |   |   |   |   |   |   [28] V7 > 148 *
#> |   |   |   |   [29] V2 > 66
#> |   |   |   |   |   [30] V3 <= 10
#> |   |   |   |   |   |   [31] V7 <= 122 *
#> |   |   |   |   |   |   [32] V7 > 122
#> |   |   |   |   |   |   |   [33] V7 <= 160 *
#> |   |   |   |   |   |   |   [34] V7 > 160 *
#> |   |   |   |   |   [35] V3 > 10 *
#> |   |   [36] V5 > 170 *
#> |   [37] V2 > 74
#> |   |   [38] V5 <= 177
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V7 <= 144
#> |   |   |   |   |   [41] V3 <= 5
#> |   |   |   |   |   |   [42] V3 <= 1 *
#> |   |   |   |   |   |   [43] V3 > 1 *
#> |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   [45] V7 > 144
#> |   |   |   |   |   [46] V3 <= 6 *
#> |   |   |   |   |   [47] V3 > 6 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   [50] V5 > 0
#> |   |   |   |   |   [51] V2 <= 76 *
#> |   |   |   |   |   [52] V2 > 76
#> |   |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   |   [54] V5 > 2 *
#> |   |   [55] V5 > 177 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 55 *
#> |   |   |   |   [6] V2 > 55
#> |   |   |   |   |   [7] V5 <= 2 *
#> |   |   |   |   |   [8] V5 > 2
#> |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V5 <= 10
#> |   |   |   |   |   [13] V3 <= 1 *
#> |   |   |   |   |   [14] V3 > 1
#> |   |   |   |   |   |   [15] V5 <= 1
#> |   |   |   |   |   |   |   [16] V7 <= 140
#> |   |   |   |   |   |   |   |   [17] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [18] V3 > 6 *
#> |   |   |   |   |   |   |   [19] V7 > 140
#> |   |   |   |   |   |   |   |   [20] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [21] V2 > 65 *
#> |   |   |   |   |   |   [22] V5 > 1
#> |   |   |   |   |   |   |   [23] V2 <= 54 *
#> |   |   |   |   |   |   |   [24] V2 > 54
#> |   |   |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [26] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [27] V7 > 149 *
#> |   |   |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 4 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 4 *
#> |   |   |   |   [31] V5 > 10 *
#> |   |   [32] V5 > 170
#> |   |   |   [33] V2 <= 52
#> |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   [35] V6 > 0 *
#> |   |   |   [36] V2 > 52 *
#> |   [37] V2 > 72
#> |   |   [38] V5 <= 167
#> |   |   |   [39] V2 <= 81
#> |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   [41] V3 <= 3 *
#> |   |   |   |   |   [42] V3 > 3 *
#> |   |   |   |   [43] V4 > 0
#> |   |   |   |   |   [44] V3 <= 25
#> |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   |   [47] V5 <= 3 *
#> |   |   |   |   |   |   |   [48] V5 > 3
#> |   |   |   |   |   |   |   |   [49] V7 <= 124 *
#> |   |   |   |   |   |   |   |   [50] V7 > 124 *
#> |   |   |   |   |   [51] V3 > 25 *
#> |   |   |   [52] V2 > 81
#> |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   [54] V7 <= 115 *
#> |   |   |   |   |   [55] V7 > 115
#> |   |   |   |   |   |   [56] V7 <= 135 *
#> |   |   |   |   |   |   [57] V7 > 135 *
#> |   |   |   |   [58] V4 > 0 *
#> |   |   [59] V5 > 167
#> |   |   |   [60] V6 <= 0 *
#> |   |   |   [61] V6 > 0 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139
#> |   |   |   |   |   [6] V2 <= 62 *
#> |   |   |   |   |   [7] V2 > 62 *
#> |   |   |   |   [8] V7 > 139
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   |   [11] V5 <= 13 *
#> |   |   |   |   |   |   [12] V5 > 13 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V7 <= 114
#> |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   [16] V3 > 3 *
#> |   |   |   |   [17] V7 > 114
#> |   |   |   |   |   [18] V5 <= 9
#> |   |   |   |   |   |   [19] V2 <= 54
#> |   |   |   |   |   |   |   [20] V2 <= 52
#> |   |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [22] V3 > 3 *
#> |   |   |   |   |   |   |   [23] V2 > 52 *
#> |   |   |   |   |   |   [24] V2 > 54
#> |   |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   |   [26] V7 <= 127 *
#> |   |   |   |   |   |   |   |   [27] V7 > 127
#> |   |   |   |   |   |   |   |   |   [28] V2 <= 69
#> |   |   |   |   |   |   |   |   |   |   [29] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [30] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   [31] V2 > 69 *
#> |   |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   |   [33] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [34] V7 > 135
#> |   |   |   |   |   |   |   |   |   [35] V5 <= 4 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   [37] V5 > 9
#> |   |   |   |   |   |   [38] V7 <= 132 *
#> |   |   |   |   |   |   [39] V7 > 132 *
#> |   |   [40] V5 > 170
#> |   |   |   [41] V2 <= 52
#> |   |   |   |   [42] V2 <= 48 *
#> |   |   |   |   [43] V2 > 48 *
#> |   |   |   [44] V2 > 52 *
#> |   [45] V2 > 72
#> |   |   [46] V5 <= 177
#> |   |   |   [47] V5 <= 15
#> |   |   |   |   [48] V4 <= 0
#> |   |   |   |   |   [49] V7 <= 115 *
#> |   |   |   |   |   [50] V7 > 115
#> |   |   |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   |   |   [52] V3 > 3 *
#> |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   [54] V6 <= 0
#> |   |   |   |   |   |   [55] V5 <= 4 *
#> |   |   |   |   |   |   [56] V5 > 4 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V3 <= 10 *
#> |   |   |   |   |   |   [59] V3 > 10 *
#> |   |   |   [60] V5 > 15
#> |   |   |   |   [61] V3 <= 3 *
#> |   |   |   |   [62] V3 > 3
#> |   |   |   |   |   [63] V5 <= 80 *
#> |   |   |   |   |   [64] V5 > 80 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V2 <= 81
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V7 <= 133 *
#> |   |   |   |   |   |   [8] V7 > 133 *
#> |   |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   |   [10] V3 <= 6
#> |   |   |   |   |   |   |   [11] V7 <= 128 *
#> |   |   |   |   |   |   |   [12] V7 > 128 *
#> |   |   |   |   |   |   [13] V3 > 6 *
#> |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   [16] V5 <= 8
#> |   |   |   |   |   |   |   [17] V2 <= 65
#> |   |   |   |   |   |   |   |   [18] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [19] V2 > 55 *
#> |   |   |   |   |   |   |   [20] V2 > 65
#> |   |   |   |   |   |   |   |   [21] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [22] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [23] V5 > 1 *
#> |   |   |   |   |   |   |   |   [24] V3 > 7 *
#> |   |   |   |   |   |   [25] V5 > 8
#> |   |   |   |   |   |   |   [26] V2 <= 61 *
#> |   |   |   |   |   |   |   [27] V2 > 61 *
#> |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   [29] V2 <= 54
#> |   |   |   |   |   |   |   [30] V7 <= 120 *
#> |   |   |   |   |   |   |   [31] V7 > 120 *
#> |   |   |   |   |   |   [32] V2 > 54
#> |   |   |   |   |   |   |   [33] V7 <= 158
#> |   |   |   |   |   |   |   |   [34] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [35] V3 > 4
#> |   |   |   |   |   |   |   |   |   [36] V5 <= 9
#> |   |   |   |   |   |   |   |   |   |   [37] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   |   [38] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   |   [39] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   |   [40] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   [41] V5 > 9 *
#> |   |   |   |   |   |   |   [42] V7 > 158
#> |   |   |   |   |   |   |   |   [43] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [44] V2 > 71 *
#> |   |   |   [45] V2 > 81
#> |   |   |   |   [46] V3 <= 6
#> |   |   |   |   |   [47] V3 <= 2 *
#> |   |   |   |   |   [48] V3 > 2 *
#> |   |   |   |   [49] V3 > 6 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V5 <= 128
#> |   |   |   |   [52] V7 <= 150
#> |   |   |   |   |   [53] V3 <= 7 *
#> |   |   |   |   |   [54] V3 > 7 *
#> |   |   |   |   [55] V7 > 150 *
#> |   |   |   [56] V5 > 128 *
#> |   [57] V5 > 170 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V7 <= 110 *
#> |   |   |   |   |   [7] V7 > 110
#> |   |   |   |   |   |   [8] V7 <= 145
#> |   |   |   |   |   |   |   [9] V7 <= 135 *
#> |   |   |   |   |   |   |   [10] V7 > 135 *
#> |   |   |   |   |   |   [11] V7 > 145
#> |   |   |   |   |   |   |   [12] V5 <= 4 *
#> |   |   |   |   |   |   |   [13] V5 > 4 *
#> |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   [15] V4 <= 0
#> |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   [17] V6 > 0 *
#> |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   [19] V7 <= 114 *
#> |   |   |   |   |   |   [20] V7 > 114
#> |   |   |   |   |   |   |   [21] V7 <= 162
#> |   |   |   |   |   |   |   |   [22] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [23] V2 <= 68
#> |   |   |   |   |   |   |   |   |   |   [24] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [26] V2 > 68 *
#> |   |   |   |   |   |   |   |   [27] V5 > 3
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 7
#> |   |   |   |   |   |   |   |   |   |   [30] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   |   [31] V2 > 63
#> |   |   |   |   |   |   |   |   |   |   |   [32] V3 <= 13 *
#> |   |   |   |   |   |   |   |   |   |   |   [33] V3 > 13 *
#> |   |   |   |   |   |   |   [34] V7 > 162
#> |   |   |   |   |   |   |   |   [35] V7 <= 172 *
#> |   |   |   |   |   |   |   |   [36] V7 > 172 *
#> |   |   |   [37] V5 > 15 *
#> |   |   [38] V5 > 169
#> |   |   |   [39] V7 <= 117 *
#> |   |   |   [40] V7 > 117 *
#> |   [41] V2 > 74
#> |   |   [42] V5 <= 177
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   [45] V7 <= 130 *
#> |   |   |   |   |   [46] V7 > 130 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V2 <= 83 *
#> |   |   |   |   |   [49] V2 > 83
#> |   |   |   |   |   |   [50] V2 <= 90 *
#> |   |   |   |   |   |   [51] V2 > 90 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V2 <= 84
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V7 <= 167
#> |   |   |   |   |   |   |   [57] V7 <= 126 *
#> |   |   |   |   |   |   |   [58] V7 > 126 *
#> |   |   |   |   |   |   [59] V7 > 167 *
#> |   |   |   |   [60] V2 > 84 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 110 *
#> |   |   |   [5] V7 > 110
#> |   |   |   |   [6] V2 <= 53
#> |   |   |   |   |   [7] V2 <= 44 *
#> |   |   |   |   |   [8] V2 > 44 *
#> |   |   |   |   [9] V2 > 53
#> |   |   |   |   |   [10] V5 <= 169
#> |   |   |   |   |   |   [11] V7 <= 145 *
#> |   |   |   |   |   |   [12] V7 > 145 *
#> |   |   |   |   |   [13] V5 > 169 *
#> |   |   [14] V4 > 0
#> |   |   |   [15] V6 <= 0
#> |   |   |   |   [16] V2 <= 62
#> |   |   |   |   |   [17] V7 <= 152 *
#> |   |   |   |   |   [18] V7 > 152 *
#> |   |   |   |   [19] V2 > 62
#> |   |   |   |   |   [20] V5 <= 3 *
#> |   |   |   |   |   [21] V5 > 3 *
#> |   |   |   [22] V6 > 0
#> |   |   |   |   [23] V3 <= 1 *
#> |   |   |   |   [24] V3 > 1
#> |   |   |   |   |   [25] V5 <= 6
#> |   |   |   |   |   |   [26] V2 <= 58
#> |   |   |   |   |   |   |   [27] V5 <= 0 *
#> |   |   |   |   |   |   |   [28] V5 > 0 *
#> |   |   |   |   |   |   [29] V2 > 58
#> |   |   |   |   |   |   |   [30] V7 <= 120 *
#> |   |   |   |   |   |   |   [31] V7 > 120 *
#> |   |   |   |   |   [32] V5 > 6
#> |   |   |   |   |   |   [33] V7 <= 120 *
#> |   |   |   |   |   |   [34] V7 > 120
#> |   |   |   |   |   |   |   [35] V3 <= 13 *
#> |   |   |   |   |   |   |   [36] V3 > 13 *
#> |   [37] V2 > 72
#> |   |   [38] V5 <= 177
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   [41] V2 <= 80 *
#> |   |   |   |   |   [42] V2 > 80
#> |   |   |   |   |   |   [43] V2 <= 87 *
#> |   |   |   |   |   |   [44] V2 > 87 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V2 <= 76 *
#> |   |   |   |   |   [47] V2 > 76
#> |   |   |   |   |   |   [48] V2 <= 80 *
#> |   |   |   |   |   |   [49] V2 > 80 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 86
#> |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   [53] V5 <= 5 *
#> |   |   |   |   |   |   [54] V5 > 5 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V2 <= 75 *
#> |   |   |   |   |   |   [57] V2 > 75
#> |   |   |   |   |   |   |   [58] V2 <= 77 *
#> |   |   |   |   |   |   |   [59] V2 > 77
#> |   |   |   |   |   |   |   |   [60] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [61] V3 > 3 *
#> |   |   |   |   [62] V2 > 86 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V7 <= 97
#> |   |   [3] V3 <= 3 *
#> |   |   [4] V3 > 3 *
#> |   [5] V7 > 97
#> |   |   [6] V2 <= 71
#> |   |   |   [7] V2 <= 54
#> |   |   |   |   [8] V3 <= 7
#> |   |   |   |   |   [9] V2 <= 50
#> |   |   |   |   |   |   [10] V2 <= 47
#> |   |   |   |   |   |   |   [11] V7 <= 150
#> |   |   |   |   |   |   |   |   [12] V2 <= 45 *
#> |   |   |   |   |   |   |   |   [13] V2 > 45 *
#> |   |   |   |   |   |   |   [14] V7 > 150 *
#> |   |   |   |   |   |   [15] V2 > 47 *
#> |   |   |   |   |   [16] V2 > 50 *
#> |   |   |   |   [17] V3 > 7
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V5 <= 169
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V3 <= 6
#> |   |   |   |   |   |   |   [24] V5 <= 1 *
#> |   |   |   |   |   |   |   [25] V5 > 1 *
#> |   |   |   |   |   |   [26] V3 > 6
#> |   |   |   |   |   |   |   [27] V5 <= 9
#> |   |   |   |   |   |   |   |   [28] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [29] V3 > 8 *
#> |   |   |   |   |   |   |   [30] V5 > 9 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V3 <= 1 *
#> |   |   |   |   |   |   [33] V3 > 1
#> |   |   |   |   |   |   |   [34] V4 <= 0 *
#> |   |   |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   |   |   [36] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [37] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   [38] V7 > 135
#> |   |   |   |   |   |   |   |   |   |   [39] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   |   [40] V2 > 61 *
#> |   |   |   |   |   |   |   |   [41] V5 > 9 *
#> |   |   |   |   [42] V5 > 169 *
#> |   |   [43] V2 > 71
#> |   |   |   [44] V5 <= 177
#> |   |   |   |   [45] V2 <= 87
#> |   |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   |   [47] V7 <= 155
#> |   |   |   |   |   |   |   [48] V5 <= 3 *
#> |   |   |   |   |   |   |   [49] V5 > 3
#> |   |   |   |   |   |   |   |   [50] V7 <= 112 *
#> |   |   |   |   |   |   |   |   [51] V7 > 112 *
#> |   |   |   |   |   |   [52] V7 > 155 *
#> |   |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   |   [54] V3 <= 9
#> |   |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   |   |   |   [57] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [58] V2 > 75 *
#> |   |   |   |   |   |   [59] V3 > 9
#> |   |   |   |   |   |   |   [60] V2 <= 73 *
#> |   |   |   |   |   |   |   [61] V2 > 73
#> |   |   |   |   |   |   |   |   [62] V7 <= 155 *
#> |   |   |   |   |   |   |   |   [63] V7 > 155 *
#> |   |   |   |   [64] V2 > 87 *
#> |   |   |   [65] V5 > 177 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 81
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 145 *
#> |   |   |   |   |   [7] V7 > 145 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V2 <= 56 *
#> |   |   |   |   |   [10] V2 > 56
#> |   |   |   |   |   |   [11] V2 <= 63 *
#> |   |   |   |   |   |   [12] V2 > 63
#> |   |   |   |   |   |   |   [13] V3 <= 6
#> |   |   |   |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [15] V5 > 2 *
#> |   |   |   |   |   |   |   [16] V3 > 6 *
#> |   |   |   [17] V4 > 0
#> |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   [19] V5 <= 3
#> |   |   |   |   |   |   [20] V7 <= 166
#> |   |   |   |   |   |   |   [21] V5 <= 0 *
#> |   |   |   |   |   |   |   [22] V5 > 0
#> |   |   |   |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [24] V3 > 2
#> |   |   |   |   |   |   |   |   |   [25] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [26] V5 > 1 *
#> |   |   |   |   |   |   [27] V7 > 166 *
#> |   |   |   |   |   [28] V5 > 3
#> |   |   |   |   |   |   [29] V2 <= 63 *
#> |   |   |   |   |   |   [30] V2 > 63
#> |   |   |   |   |   |   |   [31] V2 <= 73 *
#> |   |   |   |   |   |   |   [32] V2 > 73 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V5 <= 0
#> |   |   |   |   |   |   [35] V7 <= 110 *
#> |   |   |   |   |   |   [36] V7 > 110
#> |   |   |   |   |   |   |   [37] V7 <= 132 *
#> |   |   |   |   |   |   |   [38] V7 > 132
#> |   |   |   |   |   |   |   |   [39] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [40] V3 > 6 *
#> |   |   |   |   |   [41] V5 > 0
#> |   |   |   |   |   |   [42] V2 <= 72
#> |   |   |   |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   |   |   |   [44] V3 > 3
#> |   |   |   |   |   |   |   |   [45] V3 <= 15
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [47] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [48] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   |   [49] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   |   [50] V7 > 150 *
#> |   |   |   |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   |   |   |   |   |   [52] V3 > 15 *
#> |   |   |   |   |   |   [53] V2 > 72 *
#> |   |   [54] V2 > 81
#> |   |   |   [55] V4 <= 0
#> |   |   |   |   [56] V5 <= 4 *
#> |   |   |   |   [57] V5 > 4
#> |   |   |   |   |   [58] V5 <= 76 *
#> |   |   |   |   |   [59] V5 > 76 *
#> |   |   |   [60] V4 > 0 *
#> |   [61] V5 > 173
#> |   |   [62] V6 <= 0
#> |   |   |   [63] V2 <= 79 *
#> |   |   |   [64] V2 > 79 *
#> |   |   [65] V6 > 0
#> |   |   |   [66] V3 <= 3 *
#> |   |   |   [67] V3 > 3 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 7 *
#> |   |   |   |   |   [7] V5 > 7 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V3 <= 5 *
#> |   |   |   |   |   [10] V3 > 5 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V5 <= 6
#> |   |   |   |   |   |   [14] V5 <= 1 *
#> |   |   |   |   |   |   [15] V5 > 1
#> |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   |   |   |   [18] V5 > 6
#> |   |   |   |   |   |   [19] V3 <= 13 *
#> |   |   |   |   |   |   [20] V3 > 13 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V7 <= 110 *
#> |   |   |   |   |   [23] V7 > 110
#> |   |   |   |   |   |   [24] V7 <= 133
#> |   |   |   |   |   |   |   [25] V7 <= 121 *
#> |   |   |   |   |   |   |   [26] V7 > 121 *
#> |   |   |   |   |   |   [27] V7 > 133
#> |   |   |   |   |   |   |   [28] V5 <= 9
#> |   |   |   |   |   |   |   |   [29] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [30] V2 > 56
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 2 *
#> |   |   |   |   |   |   |   [33] V5 > 9 *
#> |   |   [34] V5 > 170
#> |   |   |   [35] V7 <= 117 *
#> |   |   |   [36] V7 > 117 *
#> |   [37] V2 > 72
#> |   |   [38] V7 <= 104
#> |   |   |   [39] V5 <= 8 *
#> |   |   |   [40] V5 > 8 *
#> |   |   [41] V7 > 104
#> |   |   |   [42] V7 <= 140
#> |   |   |   |   [43] V5 <= 154
#> |   |   |   |   |   [44] V7 <= 118
#> |   |   |   |   |   |   [45] V5 <= 1 *
#> |   |   |   |   |   |   [46] V5 > 1 *
#> |   |   |   |   |   [47] V7 > 118
#> |   |   |   |   |   |   [48] V2 <= 84
#> |   |   |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   |   |   [50] V4 > 0 *
#> |   |   |   |   |   |   [51] V2 > 84 *
#> |   |   |   |   [52] V5 > 154 *
#> |   |   |   [53] V7 > 140
#> |   |   |   |   [54] V5 <= 177
#> |   |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   |   [57] V6 > 0 *
#> |   |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   |   [59] V2 <= 76 *
#> |   |   |   |   |   |   [60] V2 > 76 *
#> |   |   |   |   [61] V5 > 177 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V3 > 3
#> |   |   |   |   [10] V5 <= 15
#> |   |   |   |   |   [11] V3 <= 9
#> |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   |   [14] V2 <= 54 *
#> |   |   |   |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   |   |   |   [16] V7 <= 131 *
#> |   |   |   |   |   |   |   |   [17] V7 > 131 *
#> |   |   |   |   |   [18] V3 > 9
#> |   |   |   |   |   |   [19] V7 <= 114 *
#> |   |   |   |   |   |   [20] V7 > 114
#> |   |   |   |   |   |   |   [21] V5 <= 10
#> |   |   |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   |   |   |   [24] V5 > 10 *
#> |   |   |   |   [25] V5 > 15 *
#> |   |   [26] V5 > 169
#> |   |   |   [27] V3 <= 3 *
#> |   |   |   [28] V3 > 3 *
#> |   [29] V2 > 66
#> |   |   [30] V7 <= 107
#> |   |   |   [31] V5 <= 3 *
#> |   |   |   [32] V5 > 3
#> |   |   |   |   [33] V3 <= 10 *
#> |   |   |   |   [34] V3 > 10 *
#> |   |   [35] V7 > 107
#> |   |   |   [36] V5 <= 177
#> |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   [38] V2 <= 71 *
#> |   |   |   |   |   [39] V2 > 71
#> |   |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   [42] V3 <= 8
#> |   |   |   |   |   |   |   |   [43] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [44] V5 > 5 *
#> |   |   |   |   |   |   |   [45] V3 > 8 *
#> |   |   |   |   [46] V4 > 0
#> |   |   |   |   |   [47] V2 <= 84
#> |   |   |   |   |   |   [48] V3 <= 10
#> |   |   |   |   |   |   |   [49] V5 <= 3
#> |   |   |   |   |   |   |   |   [50] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [51] V5 > 0
#> |   |   |   |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   |   |   |   |   [54] V5 > 3 *
#> |   |   |   |   |   |   [55] V3 > 10
#> |   |   |   |   |   |   |   [56] V7 <= 160
#> |   |   |   |   |   |   |   |   [57] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [58] V2 > 71 *
#> |   |   |   |   |   |   |   [59] V7 > 160 *
#> |   |   |   |   |   [60] V2 > 84 *
#> |   |   |   [61] V5 > 177 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V7 <= 120 *
#> |   |   |   |   |   [7] V7 > 120 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V3 > 3
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V3 <= 7
#> |   |   |   |   |   |   [14] V7 <= 136 *
#> |   |   |   |   |   |   [15] V7 > 136 *
#> |   |   |   |   |   [16] V3 > 7
#> |   |   |   |   |   |   [17] V3 <= 15 *
#> |   |   |   |   |   |   [18] V3 > 15 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V3 <= 4 *
#> |   |   |   |   |   [21] V3 > 4
#> |   |   |   |   |   |   [22] V4 <= 0
#> |   |   |   |   |   |   |   [23] V7 <= 120 *
#> |   |   |   |   |   |   |   [24] V7 > 120 *
#> |   |   |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   |   [27] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [28] V2 > 61 *
#> |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   [30] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [31] V2 > 57
#> |   |   |   |   |   |   |   |   |   [32] V5 <= 9
#> |   |   |   |   |   |   |   |   |   |   [33] V5 <= 5
#> |   |   |   |   |   |   |   |   |   |   |   [34] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   |   [35] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   |   [36] V5 > 5 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 9 *
#> |   |   [38] V5 > 170 *
#> |   [39] V2 > 72
#> |   |   [40] V5 <= 177
#> |   |   |   [41] V7 <= 104 *
#> |   |   |   [42] V7 > 104
#> |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   [44] V5 <= 15
#> |   |   |   |   |   |   [45] V2 <= 79 *
#> |   |   |   |   |   |   [46] V2 > 79 *
#> |   |   |   |   |   [47] V5 > 15 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V5 <= 13
#> |   |   |   |   |   |   [50] V4 <= 0 *
#> |   |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   |   [52] V3 <= 8 *
#> |   |   |   |   |   |   |   [53] V3 > 8 *
#> |   |   |   |   |   [54] V5 > 13 *
#> |   |   [55] V5 > 177 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 16 *
#> |   |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V2 <= 61 *
#> |   |   |   |   [11] V2 > 61
#> |   |   |   |   |   [12] V7 <= 100 *
#> |   |   |   |   |   [13] V7 > 100
#> |   |   |   |   |   |   [14] V5 <= 4 *
#> |   |   |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   |   |   [16] V5 <= 15 *
#> |   |   |   |   |   |   |   [17] V5 > 15 *
#> |   |   [18] V5 > 173
#> |   |   |   [19] V2 <= 85
#> |   |   |   |   [20] V2 <= 52
#> |   |   |   |   |   [21] V2 <= 49 *
#> |   |   |   |   |   [22] V2 > 49 *
#> |   |   |   |   [23] V2 > 52 *
#> |   |   |   [24] V2 > 85 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V5 <= 0 *
#> |   |   |   [28] V5 > 0
#> |   |   |   |   [29] V5 <= 3
#> |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   [31] V3 > 3 *
#> |   |   |   |   [32] V5 > 3
#> |   |   |   |   |   [33] V2 <= 61 *
#> |   |   |   |   |   [34] V2 > 61
#> |   |   |   |   |   |   [35] V2 <= 71 *
#> |   |   |   |   |   |   [36] V2 > 71 *
#> |   |   [37] V6 > 0
#> |   |   |   [38] V3 <= 1 *
#> |   |   |   [39] V3 > 1
#> |   |   |   |   [40] V2 <= 72
#> |   |   |   |   |   [41] V7 <= 110 *
#> |   |   |   |   |   [42] V7 > 110
#> |   |   |   |   |   |   [43] V5 <= 1
#> |   |   |   |   |   |   |   [44] V2 <= 58
#> |   |   |   |   |   |   |   |   [45] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [46] V3 > 5 *
#> |   |   |   |   |   |   |   [47] V2 > 58 *
#> |   |   |   |   |   |   [48] V5 > 1
#> |   |   |   |   |   |   |   [49] V7 <= 140 *
#> |   |   |   |   |   |   |   [50] V7 > 140
#> |   |   |   |   |   |   |   |   [51] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [52] V2 > 61 *
#> |   |   |   |   [53] V2 > 72
#> |   |   |   |   |   [54] V7 <= 126 *
#> |   |   |   |   |   [55] V7 > 126
#> |   |   |   |   |   |   [56] V7 <= 141 *
#> |   |   |   |   |   |   [57] V7 > 141 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 112 *
#> |   |   |   |   [6] V7 > 112
#> |   |   |   |   |   [7] V2 <= 81
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3
#> |   |   |   |   |   |   |   [10] V2 <= 60 *
#> |   |   |   |   |   |   |   [11] V2 > 60 *
#> |   |   |   |   |   [12] V2 > 81 *
#> |   |   |   [13] V6 > 0
#> |   |   |   |   [14] V2 <= 61 *
#> |   |   |   |   [15] V2 > 61
#> |   |   |   |   |   [16] V5 <= 6
#> |   |   |   |   |   |   [17] V2 <= 76 *
#> |   |   |   |   |   |   [18] V2 > 76 *
#> |   |   |   |   |   [19] V5 > 6
#> |   |   |   |   |   |   [20] V7 <= 145 *
#> |   |   |   |   |   |   [21] V7 > 145 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V7 <= 170
#> |   |   |   |   |   [25] V2 <= 61
#> |   |   |   |   |   |   [26] V5 <= 3 *
#> |   |   |   |   |   |   [27] V5 > 3 *
#> |   |   |   |   |   [28] V2 > 61
#> |   |   |   |   |   |   [29] V5 <= 8
#> |   |   |   |   |   |   |   [30] V2 <= 79
#> |   |   |   |   |   |   |   |   [31] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [32] V5 > 3 *
#> |   |   |   |   |   |   |   [33] V2 > 79 *
#> |   |   |   |   |   |   [34] V5 > 8 *
#> |   |   |   |   [35] V7 > 170 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V2 <= 72
#> |   |   |   |   |   [38] V2 <= 54
#> |   |   |   |   |   |   [39] V7 <= 120 *
#> |   |   |   |   |   |   [40] V7 > 120 *
#> |   |   |   |   |   [41] V2 > 54
#> |   |   |   |   |   |   [42] V2 <= 62
#> |   |   |   |   |   |   |   [43] V2 <= 59 *
#> |   |   |   |   |   |   |   [44] V2 > 59 *
#> |   |   |   |   |   |   [45] V2 > 62
#> |   |   |   |   |   |   |   [46] V5 <= 6
#> |   |   |   |   |   |   |   |   [47] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [48] V5 > 0 *
#> |   |   |   |   |   |   |   [49] V5 > 6 *
#> |   |   |   |   [50] V2 > 72
#> |   |   |   |   |   [51] V2 <= 85
#> |   |   |   |   |   |   [52] V2 <= 77 *
#> |   |   |   |   |   |   [53] V2 > 77 *
#> |   |   |   |   |   [54] V2 > 85 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 115
#> |   |   |   |   [5] V7 <= 90 *
#> |   |   |   |   [6] V7 > 90 *
#> |   |   |   [7] V7 > 115
#> |   |   |   |   [8] V2 <= 62
#> |   |   |   |   |   [9] V7 <= 152 *
#> |   |   |   |   |   [10] V7 > 152 *
#> |   |   |   |   [11] V2 > 62
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V2 <= 81
#> |   |   |   |   |   |   |   [14] V2 <= 75 *
#> |   |   |   |   |   |   |   [15] V2 > 75 *
#> |   |   |   |   |   |   [16] V2 > 81 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V7 <= 120 *
#> |   |   |   |   |   |   [19] V7 > 120
#> |   |   |   |   |   |   |   [20] V2 <= 73 *
#> |   |   |   |   |   |   |   [21] V2 > 73
#> |   |   |   |   |   |   |   |   [22] V2 <= 80 *
#> |   |   |   |   |   |   |   |   [23] V2 > 80 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V7 <= 114
#> |   |   |   |   [26] V7 <= 96 *
#> |   |   |   |   [27] V7 > 96
#> |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   [30] V7 > 114
#> |   |   |   |   [31] V2 <= 72
#> |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   [33] V7 <= 123 *
#> |   |   |   |   |   |   [34] V7 > 123
#> |   |   |   |   |   |   |   [35] V5 <= 9
#> |   |   |   |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [37] V3 > 3
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 152 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 152 *
#> |   |   |   |   |   |   |   [40] V5 > 9 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V7 <= 129 *
#> |   |   |   |   |   |   [43] V7 > 129
#> |   |   |   |   |   |   |   [44] V7 <= 141 *
#> |   |   |   |   |   |   |   [45] V7 > 141
#> |   |   |   |   |   |   |   |   [46] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [47] V2 > 63 *
#> |   |   |   |   [48] V2 > 72
#> |   |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   |   [50] V7 <= 140 *
#> |   |   |   |   |   |   [51] V7 > 140 *
#> |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   [53] V3 <= 10 *
#> |   |   |   |   |   |   [54] V3 > 10 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139
#> |   |   |   |   |   [6] V2 <= 57 *
#> |   |   |   |   |   [7] V2 > 57 *
#> |   |   |   |   [8] V7 > 139
#> |   |   |   |   |   [9] V3 <= 8 *
#> |   |   |   |   |   [10] V3 > 8 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V7 <= 114
#> |   |   |   |   |   [13] V7 <= 102 *
#> |   |   |   |   |   [14] V7 > 102 *
#> |   |   |   |   [15] V7 > 114
#> |   |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   |   [17] V2 <= 65
#> |   |   |   |   |   |   |   [18] V2 <= 55
#> |   |   |   |   |   |   |   |   [19] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [20] V3 > 5 *
#> |   |   |   |   |   |   |   [21] V2 > 55 *
#> |   |   |   |   |   |   [22] V2 > 65 *
#> |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   [24] V2 <= 64
#> |   |   |   |   |   |   |   [25] V7 <= 135
#> |   |   |   |   |   |   |   |   [26] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [27] V5 > 0 *
#> |   |   |   |   |   |   |   [28] V7 > 135
#> |   |   |   |   |   |   |   |   [29] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [30] V7 > 160 *
#> |   |   |   |   |   |   [31] V2 > 64
#> |   |   |   |   |   |   |   [32] V2 <= 68
#> |   |   |   |   |   |   |   |   [33] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [34] V3 > 7 *
#> |   |   |   |   |   |   |   [35] V2 > 68 *
#> |   |   [36] V5 > 169
#> |   |   |   [37] V2 <= 52 *
#> |   |   |   [38] V2 > 52 *
#> |   [39] V2 > 71
#> |   |   [40] V6 <= 0
#> |   |   |   [41] V7 <= 100 *
#> |   |   |   [42] V7 > 100
#> |   |   |   |   [43] V3 <= 7
#> |   |   |   |   |   [44] V5 <= 167
#> |   |   |   |   |   |   [45] V2 <= 77 *
#> |   |   |   |   |   |   [46] V2 > 77 *
#> |   |   |   |   |   [47] V5 > 167 *
#> |   |   |   |   [48] V3 > 7
#> |   |   |   |   |   [49] V3 <= 10 *
#> |   |   |   |   |   [50] V3 > 10 *
#> |   |   [51] V6 > 0
#> |   |   |   [52] V4 <= 0
#> |   |   |   |   [53] V3 <= 7
#> |   |   |   |   |   [54] V2 <= 83 *
#> |   |   |   |   |   [55] V2 > 83 *
#> |   |   |   |   [56] V3 > 7 *
#> |   |   |   [57] V4 > 0
#> |   |   |   |   [58] V5 <= 1
#> |   |   |   |   |   [59] V5 <= 0
#> |   |   |   |   |   |   [60] V7 <= 125 *
#> |   |   |   |   |   |   [61] V7 > 125 *
#> |   |   |   |   |   [62] V5 > 0 *
#> |   |   |   |   [63] V5 > 1
#> |   |   |   |   |   [64] V5 <= 7 *
#> |   |   |   |   |   [65] V5 > 7 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V3 <= 8
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 110 *
#> |   |   |   |   |   [7] V7 > 110
#> |   |   |   |   |   |   [8] V3 <= 6
#> |   |   |   |   |   |   |   [9] V2 <= 77 *
#> |   |   |   |   |   |   |   [10] V2 > 77 *
#> |   |   |   |   |   |   [11] V3 > 6 *
#> |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   [13] V3 <= 2 *
#> |   |   |   |   |   [14] V3 > 2
#> |   |   |   |   |   |   [15] V7 <= 138
#> |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   |   |   |   |   [18] V7 > 138 *
#> |   |   |   [19] V4 > 0
#> |   |   |   |   [20] V7 <= 104 *
#> |   |   |   |   [21] V7 > 104
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V2 <= 72
#> |   |   |   |   |   |   |   [24] V2 <= 63
#> |   |   |   |   |   |   |   |   [25] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [26] V5 > 1 *
#> |   |   |   |   |   |   |   [27] V2 > 63 *
#> |   |   |   |   |   |   [28] V2 > 72 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V2 <= 73
#> |   |   |   |   |   |   |   [31] V2 <= 55
#> |   |   |   |   |   |   |   |   [32] V7 <= 121 *
#> |   |   |   |   |   |   |   |   [33] V7 > 121 *
#> |   |   |   |   |   |   |   [34] V2 > 55
#> |   |   |   |   |   |   |   |   [35] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   |   |   |   |   |   [38] V5 > 1 *
#> |   |   |   |   |   |   [39] V2 > 73 *
#> |   |   [40] V3 > 8
#> |   |   |   [41] V2 <= 79
#> |   |   |   |   [42] V5 <= 10
#> |   |   |   |   |   [43] V2 <= 65
#> |   |   |   |   |   |   [44] V7 <= 110 *
#> |   |   |   |   |   |   [45] V7 > 110
#> |   |   |   |   |   |   |   [46] V3 <= 10 *
#> |   |   |   |   |   |   |   [47] V3 > 10
#> |   |   |   |   |   |   |   |   [48] V7 <= 131 *
#> |   |   |   |   |   |   |   |   [49] V7 > 131 *
#> |   |   |   |   |   [50] V2 > 65
#> |   |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   |   [52] V6 > 0 *
#> |   |   |   |   [53] V5 > 10
#> |   |   |   |   |   [54] V7 <= 150 *
#> |   |   |   |   |   [55] V7 > 150 *
#> |   |   |   [56] V2 > 79
#> |   |   |   |   [57] V7 <= 160 *
#> |   |   |   |   [58] V7 > 160 *
#> |   [59] V5 > 169
#> |   |   [60] V2 <= 82
#> |   |   |   [61] V3 <= 3
#> |   |   |   |   [62] V3 <= 2 *
#> |   |   |   |   [63] V3 > 2 *
#> |   |   |   [64] V3 > 3
#> |   |   |   |   [65] V3 <= 5 *
#> |   |   |   |   [66] V3 > 5 *
#> |   |   [67] V2 > 82 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139 *
#> |   |   |   |   [6] V7 > 139
#> |   |   |   |   |   [7] V5 <= 11 *
#> |   |   |   |   |   [8] V5 > 11 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 54
#> |   |   |   |   |   [11] V7 <= 117 *
#> |   |   |   |   |   [12] V7 > 117
#> |   |   |   |   |   |   [13] V5 <= 10
#> |   |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   |   [16] V5 > 10 *
#> |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   [18] V2 <= 58 *
#> |   |   |   |   |   [19] V2 > 58
#> |   |   |   |   |   |   [20] V7 <= 102 *
#> |   |   |   |   |   |   [21] V7 > 102
#> |   |   |   |   |   |   |   [22] V5 <= 8
#> |   |   |   |   |   |   |   |   [23] V7 <= 149
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 135
#> |   |   |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [27] V7 > 135 *
#> |   |   |   |   |   |   |   |   [28] V7 > 149
#> |   |   |   |   |   |   |   |   |   [29] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [30] V6 > 0 *
#> |   |   |   |   |   |   |   [31] V5 > 8
#> |   |   |   |   |   |   |   |   [32] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [33] V3 > 12 *
#> |   |   [34] V2 > 72
#> |   |   |   [35] V6 <= 0
#> |   |   |   |   [36] V7 <= 130 *
#> |   |   |   |   [37] V7 > 130
#> |   |   |   |   |   [38] V2 <= 82
#> |   |   |   |   |   |   [39] V4 <= 0 *
#> |   |   |   |   |   |   [40] V4 > 0
#> |   |   |   |   |   |   |   [41] V2 <= 75 *
#> |   |   |   |   |   |   |   [42] V2 > 75 *
#> |   |   |   |   |   [43] V2 > 82 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V4 <= 0
#> |   |   |   |   |   [46] V3 <= 5
#> |   |   |   |   |   |   [47] V5 <= 5 *
#> |   |   |   |   |   |   [48] V5 > 5 *
#> |   |   |   |   |   [49] V3 > 5
#> |   |   |   |   |   |   [50] V3 <= 7 *
#> |   |   |   |   |   |   [51] V3 > 7 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V7 <= 105 *
#> |   |   |   |   |   [54] V7 > 105
#> |   |   |   |   |   |   [55] V3 <= 13
#> |   |   |   |   |   |   |   [56] V2 <= 82
#> |   |   |   |   |   |   |   |   [57] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [58] V5 > 1 *
#> |   |   |   |   |   |   |   [59] V2 > 82 *
#> |   |   |   |   |   |   [60] V3 > 13 *
#> |   [61] V5 > 177 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V7 <= 114
#> |   |   |   [4] V2 <= 66
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   [9] V2 > 66 *
#> |   |   [10] V7 > 114
#> |   |   |   [11] V2 <= 54
#> |   |   |   |   [12] V5 <= 99
#> |   |   |   |   |   [13] V2 <= 48
#> |   |   |   |   |   |   [14] V5 <= 5 *
#> |   |   |   |   |   |   [15] V5 > 5 *
#> |   |   |   |   |   [16] V2 > 48
#> |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   [19] V5 > 99 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V5 <= 170
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V4 <= 0 *
#> |   |   |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [27] V3 > 3 *
#> |   |   |   |   |   |   |   [28] V5 > 3
#> |   |   |   |   |   |   |   |   [29] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [30] V3 > 12 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   |   |   [33] V5 <= 8 *
#> |   |   |   |   |   |   |   [34] V5 > 8 *
#> |   |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   |   [36] V5 <= 9
#> |   |   |   |   |   |   |   |   [37] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [38] V7 > 133
#> |   |   |   |   |   |   |   |   |   [39] V2 <= 62 *
#> |   |   |   |   |   |   |   |   |   [40] V2 > 62
#> |   |   |   |   |   |   |   |   |   |   [41] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   [42] V7 > 150 *
#> |   |   |   |   |   |   |   [43] V5 > 9 *
#> |   |   |   |   [44] V5 > 170 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 173
#> |   |   |   [47] V2 <= 87
#> |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   [49] V5 <= 10
#> |   |   |   |   |   |   [50] V4 <= 0 *
#> |   |   |   |   |   |   [51] V4 > 0 *
#> |   |   |   |   |   [52] V5 > 10 *
#> |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   [54] V5 <= 0 *
#> |   |   |   |   |   [55] V5 > 0
#> |   |   |   |   |   |   [56] V7 <= 138
#> |   |   |   |   |   |   |   [57] V4 <= 0 *
#> |   |   |   |   |   |   |   [58] V4 > 0 *
#> |   |   |   |   |   |   [59] V7 > 138 *
#> |   |   |   [60] V2 > 87 *
#> |   |   [61] V5 > 173
#> |   |   |   [62] V7 <= 169 *
#> |   |   |   [63] V7 > 169 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 139
#> |   |   |   |   [5] V5 <= 3 *
#> |   |   |   |   [6] V5 > 3
#> |   |   |   |   |   [7] V7 <= 115
#> |   |   |   |   |   |   [8] V7 <= 100 *
#> |   |   |   |   |   |   [9] V7 > 100 *
#> |   |   |   |   |   [10] V7 > 115
#> |   |   |   |   |   |   [11] V2 <= 76 *
#> |   |   |   |   |   |   [12] V2 > 76 *
#> |   |   |   [13] V7 > 139
#> |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   [15] V3 > 3
#> |   |   |   |   |   [16] V3 <= 10
#> |   |   |   |   |   |   [17] V2 <= 62 *
#> |   |   |   |   |   |   [18] V2 > 62 *
#> |   |   |   |   |   [19] V3 > 10 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 70
#> |   |   |   |   [22] V7 <= 110 *
#> |   |   |   |   [23] V7 > 110
#> |   |   |   |   |   [24] V7 <= 135
#> |   |   |   |   |   |   [25] V5 <= 2
#> |   |   |   |   |   |   |   [26] V5 <= 0 *
#> |   |   |   |   |   |   |   [27] V5 > 0 *
#> |   |   |   |   |   |   [28] V5 > 2
#> |   |   |   |   |   |   |   [29] V2 <= 61 *
#> |   |   |   |   |   |   |   [30] V2 > 61 *
#> |   |   |   |   |   [31] V7 > 135
#> |   |   |   |   |   |   [32] V3 <= 15
#> |   |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   |   [34] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [35] V2 > 61 *
#> |   |   |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   |   |   [37] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [38] V2 > 54
#> |   |   |   |   |   |   |   |   |   [39] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [40] V5 > 1 *
#> |   |   |   |   |   |   [41] V3 > 15 *
#> |   |   |   [42] V2 > 70
#> |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   [44] V2 <= 79
#> |   |   |   |   |   |   [45] V5 <= 6 *
#> |   |   |   |   |   |   [46] V5 > 6 *
#> |   |   |   |   |   [47] V2 > 79 *
#> |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   [49] V5 <= 3
#> |   |   |   |   |   |   [50] V5 <= 1
#> |   |   |   |   |   |   |   [51] V3 <= 6 *
#> |   |   |   |   |   |   |   [52] V3 > 6 *
#> |   |   |   |   |   |   [53] V5 > 1 *
#> |   |   |   |   |   [54] V5 > 3 *
#> |   [55] V5 > 173
#> |   |   [56] V2 <= 85
#> |   |   |   [57] V6 <= 0
#> |   |   |   |   [58] V7 <= 160 *
#> |   |   |   |   [59] V7 > 160 *
#> |   |   |   [60] V6 > 0
#> |   |   |   |   [61] V3 <= 5
#> |   |   |   |   |   [62] V2 <= 52 *
#> |   |   |   |   |   [63] V2 > 52 *
#> |   |   |   |   [64] V3 > 5 *
#> |   |   [65] V2 > 85 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 53 *
#> |   |   |   [5] V2 > 53
#> |   |   |   |   [6] V2 <= 87
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 145 *
#> |   |   |   |   |   |   [9] V7 > 145
#> |   |   |   |   |   |   |   [10] V7 <= 172 *
#> |   |   |   |   |   |   |   [11] V7 > 172 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 139
#> |   |   |   |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   |   |   |   [15] V3 > 2 *
#> |   |   |   |   |   |   [16] V7 > 139
#> |   |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   |   [18] V3 > 4 *
#> |   |   |   |   [19] V2 > 87 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 84
#> |   |   |   |   [22] V2 <= 72
#> |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   [24] V2 <= 66
#> |   |   |   |   |   |   |   [25] V5 <= 8
#> |   |   |   |   |   |   |   |   [26] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [27] V7 > 130
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 2 *
#> |   |   |   |   |   |   |   [30] V5 > 8 *
#> |   |   |   |   |   |   [31] V2 > 66 *
#> |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   [33] V5 <= 12
#> |   |   |   |   |   |   |   [34] V2 <= 47 *
#> |   |   |   |   |   |   |   [35] V2 > 47
#> |   |   |   |   |   |   |   |   [36] V2 <= 62
#> |   |   |   |   |   |   |   |   |   [37] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [38] V5 > 1 *
#> |   |   |   |   |   |   |   |   [39] V2 > 62
#> |   |   |   |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [41] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [42] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [43] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   |   [44] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [45] V5 > 0 *
#> |   |   |   |   |   |   [46] V5 > 12 *
#> |   |   |   |   [47] V2 > 72
#> |   |   |   |   |   [48] V3 <= 20
#> |   |   |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   |   |   [50] V2 <= 79 *
#> |   |   |   |   |   |   |   [51] V2 > 79 *
#> |   |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   |   [53] V3 <= 12
#> |   |   |   |   |   |   |   |   [54] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [55] V5 > 6 *
#> |   |   |   |   |   |   |   [56] V3 > 12 *
#> |   |   |   |   |   [57] V3 > 20 *
#> |   |   |   [58] V2 > 84 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 6
#> |   |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 61
#> |   |   |   |   |   |   [12] V5 <= 10
#> |   |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   |   [14] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [15] V3 > 8 *
#> |   |   |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   |   |   [17] V7 <= 114 *
#> |   |   |   |   |   |   |   |   [18] V7 > 114
#> |   |   |   |   |   |   |   |   |   [19] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [20] V7 > 138 *
#> |   |   |   |   |   |   [21] V5 > 10 *
#> |   |   |   |   |   [22] V2 > 61
#> |   |   |   |   |   |   [23] V5 <= 8
#> |   |   |   |   |   |   |   [24] V3 <= 2 *
#> |   |   |   |   |   |   |   [25] V3 > 2
#> |   |   |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [27] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [28] V3 > 6 *
#> |   |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   |   [30] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   [32] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   [33] V7 > 135 *
#> |   |   |   |   |   |   [34] V5 > 8
#> |   |   |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   |   |   [36] V6 > 0 *
#> |   |   |   [37] V5 > 15 *
#> |   |   [38] V5 > 150
#> |   |   |   [39] V3 <= 10
#> |   |   |   |   [40] V2 <= 50 *
#> |   |   |   |   [41] V2 > 50 *
#> |   |   |   [42] V3 > 10 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V7 <= 115 *
#> |   |   |   |   [47] V7 > 115
#> |   |   |   |   |   [48] V5 <= 5 *
#> |   |   |   |   |   [49] V5 > 5
#> |   |   |   |   |   |   [50] V2 <= 79 *
#> |   |   |   |   |   |   [51] V2 > 79
#> |   |   |   |   |   |   |   [52] V2 <= 85 *
#> |   |   |   |   |   |   |   [53] V2 > 85 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V7 <= 170
#> |   |   |   |   |   [56] V5 <= 4
#> |   |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   |   [59] V2 <= 77 *
#> |   |   |   |   |   |   |   [60] V2 > 77 *
#> |   |   |   |   |   [61] V5 > 4
#> |   |   |   |   |   |   [62] V2 <= 77 *
#> |   |   |   |   |   |   [63] V2 > 77 *
#> |   |   |   |   [64] V7 > 170 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V7 <= 114
#> |   |   |   [4] V5 <= 36
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V5 > 36 *
#> |   |   [10] V7 > 114
#> |   |   |   [11] V4 <= 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V2 <= 51 *
#> |   |   |   |   |   [14] V2 > 51 *
#> |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   [16] V3 <= 8
#> |   |   |   |   |   |   [17] V5 <= 150
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   |   [20] V5 > 150 *
#> |   |   |   |   |   [21] V3 > 8 *
#> |   |   |   [22] V4 > 0
#> |   |   |   |   [23] V2 <= 54
#> |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   [26] V7 <= 124 *
#> |   |   |   |   |   |   [27] V7 > 124 *
#> |   |   |   |   [28] V2 > 54
#> |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   [30] V7 <= 127 *
#> |   |   |   |   |   |   [31] V7 > 127
#> |   |   |   |   |   |   |   [32] V2 <= 68
#> |   |   |   |   |   |   |   |   [33] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [34] V7 > 150 *
#> |   |   |   |   |   |   |   [35] V2 > 68 *
#> |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   [37] V3 <= 17
#> |   |   |   |   |   |   |   [38] V7 <= 133 *
#> |   |   |   |   |   |   |   [39] V7 > 133
#> |   |   |   |   |   |   |   |   [40] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [41] V7 <= 153 *
#> |   |   |   |   |   |   |   |   |   [42] V7 > 153 *
#> |   |   |   |   |   |   |   |   [43] V3 > 10 *
#> |   |   |   |   |   |   [44] V3 > 17 *
#> |   [45] V2 > 74
#> |   |   [46] V7 <= 107
#> |   |   |   [47] V5 <= 62 *
#> |   |   |   [48] V5 > 62 *
#> |   |   [49] V7 > 107
#> |   |   |   [50] V6 <= 0
#> |   |   |   |   [51] V5 <= 177
#> |   |   |   |   |   [52] V4 <= 0 *
#> |   |   |   |   |   [53] V4 > 0 *
#> |   |   |   |   [54] V5 > 177 *
#> |   |   |   [55] V6 > 0
#> |   |   |   |   [56] V4 <= 0
#> |   |   |   |   |   [57] V5 <= 173
#> |   |   |   |   |   |   [58] V5 <= 5 *
#> |   |   |   |   |   |   [59] V5 > 5
#> |   |   |   |   |   |   |   [60] V3 <= 7 *
#> |   |   |   |   |   |   |   [61] V3 > 7 *
#> |   |   |   |   |   [62] V5 > 173 *
#> |   |   |   |   [63] V4 > 0
#> |   |   |   |   |   [64] V2 <= 85
#> |   |   |   |   |   |   [65] V2 <= 78 *
#> |   |   |   |   |   |   [66] V2 > 78 *
#> |   |   |   |   |   [67] V2 > 85 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 74 *
#> |   |   |   |   |   [10] V2 > 74
#> |   |   |   |   |   |   [11] V5 <= 114 *
#> |   |   |   |   |   |   [12] V5 > 114 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V3 <= 4
#> |   |   |   |   |   |   [15] V3 <= 2 *
#> |   |   |   |   |   |   [16] V3 > 2 *
#> |   |   |   |   |   [17] V3 > 4
#> |   |   |   |   |   |   [18] V7 <= 136 *
#> |   |   |   |   |   |   [19] V7 > 136 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 85
#> |   |   |   |   [22] V2 <= 54
#> |   |   |   |   |   [23] V2 <= 43 *
#> |   |   |   |   |   [24] V2 > 43
#> |   |   |   |   |   |   [25] V5 <= 9
#> |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   [28] V5 > 9 *
#> |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V5 <= 6
#> |   |   |   |   |   |   |   [32] V2 <= 75
#> |   |   |   |   |   |   |   |   [33] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [34] V2 > 65
#> |   |   |   |   |   |   |   |   |   [35] V7 <= 127 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 127 *
#> |   |   |   |   |   |   |   [37] V2 > 75 *
#> |   |   |   |   |   |   [38] V5 > 6
#> |   |   |   |   |   |   |   [39] V2 <= 73 *
#> |   |   |   |   |   |   |   [40] V2 > 73 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V2 <= 62
#> |   |   |   |   |   |   |   [43] V2 <= 57 *
#> |   |   |   |   |   |   |   [44] V2 > 57 *
#> |   |   |   |   |   |   [45] V2 > 62
#> |   |   |   |   |   |   |   [46] V7 <= 160
#> |   |   |   |   |   |   |   |   [47] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [48] V2 <= 75
#> |   |   |   |   |   |   |   |   |   |   [49] V2 <= 71
#> |   |   |   |   |   |   |   |   |   |   |   [50] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   |   [51] V3 > 4 *
#> |   |   |   |   |   |   |   |   |   |   [52] V2 > 71 *
#> |   |   |   |   |   |   |   |   |   [53] V2 > 75 *
#> |   |   |   |   |   |   |   |   [54] V5 > 10 *
#> |   |   |   |   |   |   |   [55] V7 > 160 *
#> |   |   |   [56] V2 > 85 *
#> |   [57] V5 > 177 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 139
#> |   |   |   |   |   [6] V2 <= 62 *
#> |   |   |   |   |   [7] V2 > 62 *
#> |   |   |   |   [8] V7 > 139
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V2 <= 62
#> |   |   |   |   |   |   [14] V5 <= 9
#> |   |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   |   [16] V3 > 4 *
#> |   |   |   |   |   |   [17] V5 > 9 *
#> |   |   |   |   |   [18] V2 > 62
#> |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V5 <= 10
#> |   |   |   |   |   |   [23] V7 <= 110 *
#> |   |   |   |   |   |   [24] V7 > 110
#> |   |   |   |   |   |   |   [25] V7 <= 132
#> |   |   |   |   |   |   |   |   [26] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [27] V2 <= 49 *
#> |   |   |   |   |   |   |   |   |   [28] V2 > 49 *
#> |   |   |   |   |   |   |   |   [29] V5 > 1 *
#> |   |   |   |   |   |   |   [30] V7 > 132
#> |   |   |   |   |   |   |   |   [31] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [32] V2 > 54
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 7
#> |   |   |   |   |   |   |   |   |   |   [34] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 7 *
#> |   |   |   |   |   [37] V5 > 10 *
#> |   |   [38] V5 > 169
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V7 <= 117 *
#> |   |   |   |   [42] V7 > 117 *
#> |   [43] V2 > 72
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V2 <= 87
#> |   |   |   |   [46] V5 <= 15
#> |   |   |   |   |   [47] V4 <= 0
#> |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   [49] V3 > 3 *
#> |   |   |   |   |   [50] V4 > 0
#> |   |   |   |   |   |   [51] V3 <= 20
#> |   |   |   |   |   |   |   [52] V2 <= 75 *
#> |   |   |   |   |   |   |   [53] V2 > 75
#> |   |   |   |   |   |   |   |   [54] V2 <= 81
#> |   |   |   |   |   |   |   |   |   [55] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [56] V7 > 150 *
#> |   |   |   |   |   |   |   |   [57] V2 > 81 *
#> |   |   |   |   |   |   [58] V3 > 20 *
#> |   |   |   |   [59] V5 > 15
#> |   |   |   |   |   [60] V5 <= 110 *
#> |   |   |   |   |   [61] V5 > 110 *
#> |   |   |   [62] V2 > 87 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V7 <= 105 *
#> |   |   |   [5] V7 > 105
#> |   |   |   |   [6] V5 <= 14
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V7 <= 145 *
#> |   |   |   |   |   |   [9] V7 > 145 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V2 <= 63
#> |   |   |   |   |   |   |   [12] V5 <= 9
#> |   |   |   |   |   |   |   |   [13] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [14] V2 > 55 *
#> |   |   |   |   |   |   |   [15] V5 > 9 *
#> |   |   |   |   |   |   [16] V2 > 63
#> |   |   |   |   |   |   |   [17] V7 <= 156
#> |   |   |   |   |   |   |   |   [18] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [19] V5 > 7 *
#> |   |   |   |   |   |   |   [20] V7 > 156 *
#> |   |   |   |   [21] V5 > 14 *
#> |   |   [22] V6 > 0
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V3 <= 4
#> |   |   |   |   |   [25] V5 <= 12
#> |   |   |   |   |   |   [26] V2 <= 83
#> |   |   |   |   |   |   |   [27] V5 <= 2 *
#> |   |   |   |   |   |   |   [28] V5 > 2 *
#> |   |   |   |   |   |   [29] V2 > 83 *
#> |   |   |   |   |   [30] V5 > 12 *
#> |   |   |   |   [31] V3 > 4
#> |   |   |   |   |   [32] V7 <= 140 *
#> |   |   |   |   |   [33] V7 > 140 *
#> |   |   |   [34] V4 > 0
#> |   |   |   |   [35] V7 <= 112
#> |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   [37] V3 > 3 *
#> |   |   |   |   [38] V7 > 112
#> |   |   |   |   |   [39] V2 <= 72
#> |   |   |   |   |   |   [40] V2 <= 54 *
#> |   |   |   |   |   |   [41] V2 > 54
#> |   |   |   |   |   |   |   [42] V2 <= 67
#> |   |   |   |   |   |   |   |   [43] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [44] V7 > 130
#> |   |   |   |   |   |   |   |   |   [45] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [46] V7 > 147 *
#> |   |   |   |   |   |   |   [47] V2 > 67 *
#> |   |   |   |   |   [48] V2 > 72
#> |   |   |   |   |   |   [49] V5 <= 9
#> |   |   |   |   |   |   |   [50] V2 <= 85
#> |   |   |   |   |   |   |   |   [51] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [52] V3 > 9 *
#> |   |   |   |   |   |   |   [53] V2 > 85 *
#> |   |   |   |   |   |   [54] V5 > 9 *
#> |   [55] V5 > 173
#> |   |   [56] V3 <= 12
#> |   |   |   [57] V2 <= 52 *
#> |   |   |   [58] V2 > 52
#> |   |   |   |   [59] V7 <= 170 *
#> |   |   |   |   [60] V7 > 170 *
#> |   |   [61] V3 > 12 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 72
#> |   |   |   [4] V3 <= 7
#> |   |   |   |   [5] V7 <= 110 *
#> |   |   |   |   [6] V7 > 110
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   |   [9] V2 <= 60 *
#> |   |   |   |   |   |   |   [10] V2 > 60 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   |   |   |   [15] V3 > 3 *
#> |   |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   |   [17] V5 <= 0
#> |   |   |   |   |   |   |   |   [18] V7 <= 124 *
#> |   |   |   |   |   |   |   |   [19] V7 > 124 *
#> |   |   |   |   |   |   |   [20] V5 > 0 *
#> |   |   |   [21] V3 > 7
#> |   |   |   |   [22] V4 <= 0 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V3 <= 11
#> |   |   |   |   |   |   [25] V2 <= 59 *
#> |   |   |   |   |   |   [26] V2 > 59 *
#> |   |   |   |   |   [27] V3 > 11
#> |   |   |   |   |   |   [28] V2 <= 54 *
#> |   |   |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   |   |   [30] V5 <= 10
#> |   |   |   |   |   |   |   |   [31] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [32] V2 > 61 *
#> |   |   |   |   |   |   |   [33] V5 > 10 *
#> |   |   [34] V2 > 72
#> |   |   |   [35] V4 <= 0
#> |   |   |   |   [36] V7 <= 144
#> |   |   |   |   |   [37] V7 <= 114 *
#> |   |   |   |   |   [38] V7 > 114 *
#> |   |   |   |   [39] V7 > 144
#> |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   [41] V6 > 0 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   [44] V3 <= 9 *
#> |   |   |   |   |   [45] V3 > 9 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V7 <= 130
#> |   |   |   |   |   |   [48] V3 <= 4 *
#> |   |   |   |   |   |   [49] V3 > 4 *
#> |   |   |   |   |   [50] V7 > 130
#> |   |   |   |   |   |   [51] V7 <= 150 *
#> |   |   |   |   |   |   [52] V7 > 150 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V5 <= 15
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V5 > 15 *
#> |   |   |   [9] V2 > 62
#> |   |   |   |   [10] V7 <= 112
#> |   |   |   |   |   [11] V5 <= 12 *
#> |   |   |   |   |   [12] V5 > 12 *
#> |   |   |   |   [13] V7 > 112
#> |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   [15] V7 <= 139 *
#> |   |   |   |   |   |   [16] V7 > 139 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V7 <= 130 *
#> |   |   |   |   |   |   [19] V7 > 130
#> |   |   |   |   |   |   |   [20] V5 <= 4 *
#> |   |   |   |   |   |   |   [21] V5 > 4 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V3 <= 1 *
#> |   |   |   [24] V3 > 1
#> |   |   |   |   [25] V2 <= 84
#> |   |   |   |   |   [26] V3 <= 8
#> |   |   |   |   |   |   [27] V2 <= 72
#> |   |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   |   [29] V3 <= 6
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [31] V5 > 1 *
#> |   |   |   |   |   |   |   |   [32] V3 > 6 *
#> |   |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   |   [34] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [35] V7 > 110
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 54
#> |   |   |   |   |   |   |   |   |   |   [38] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   |   [39] V2 > 59 *
#> |   |   |   |   |   |   [40] V2 > 72
#> |   |   |   |   |   |   |   [41] V5 <= 0 *
#> |   |   |   |   |   |   |   [42] V5 > 0 *
#> |   |   |   |   |   [43] V3 > 8
#> |   |   |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   |   |   [45] V3 <= 14
#> |   |   |   |   |   |   |   |   [46] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [47] V2 > 58
#> |   |   |   |   |   |   |   |   |   [48] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   [49] V3 > 11 *
#> |   |   |   |   |   |   |   [50] V3 > 14 *
#> |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   [52] V2 <= 71
#> |   |   |   |   |   |   |   |   [53] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [54] V3 > 12 *
#> |   |   |   |   |   |   |   [55] V2 > 71
#> |   |   |   |   |   |   |   |   [56] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [57] V2 > 75 *
#> |   |   |   |   [58] V2 > 84 *
#> |   [59] V5 > 173
#> |   |   [60] V3 <= 11
#> |   |   |   [61] V3 <= 3
#> |   |   |   |   [62] V6 <= 0
#> |   |   |   |   |   [63] V7 <= 148 *
#> |   |   |   |   |   [64] V7 > 148 *
#> |   |   |   |   [65] V6 > 0 *
#> |   |   |   [66] V3 > 3
#> |   |   |   |   [67] V7 <= 117 *
#> |   |   |   |   [68] V7 > 117 *
#> |   |   [69] V3 > 11 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 11
#> |   |   |   |   |   |   [10] V7 <= 133 *
#> |   |   |   |   |   |   [11] V7 > 133 *
#> |   |   |   |   |   [12] V5 > 11 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V7 <= 110 *
#> |   |   |   |   |   [15] V7 > 110
#> |   |   |   |   |   |   [16] V7 <= 157
#> |   |   |   |   |   |   |   [17] V5 <= 4 *
#> |   |   |   |   |   |   |   [18] V5 > 4 *
#> |   |   |   |   |   |   [19] V7 > 157 *
#> |   |   [20] V5 > 173
#> |   |   |   [21] V3 <= 3
#> |   |   |   |   [22] V3 <= 2
#> |   |   |   |   |   [23] V2 <= 73 *
#> |   |   |   |   |   [24] V2 > 73 *
#> |   |   |   |   [25] V3 > 2 *
#> |   |   |   [26] V3 > 3 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 72
#> |   |   |   [29] V5 <= 11
#> |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   [31] V5 <= 3
#> |   |   |   |   |   |   [32] V2 <= 67
#> |   |   |   |   |   |   |   [33] V3 <= 5
#> |   |   |   |   |   |   |   |   [34] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [35] V7 > 130 *
#> |   |   |   |   |   |   |   [36] V3 > 5 *
#> |   |   |   |   |   |   [37] V2 > 67 *
#> |   |   |   |   |   [38] V5 > 3
#> |   |   |   |   |   |   [39] V3 <= 10 *
#> |   |   |   |   |   |   [40] V3 > 10 *
#> |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   [42] V3 <= 3
#> |   |   |   |   |   |   [43] V7 <= 116 *
#> |   |   |   |   |   |   [44] V7 > 116 *
#> |   |   |   |   |   [45] V3 > 3
#> |   |   |   |   |   |   [46] V5 <= 1
#> |   |   |   |   |   |   |   [47] V5 <= 0
#> |   |   |   |   |   |   |   |   [48] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [49] V2 > 56 *
#> |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   [51] V5 > 1
#> |   |   |   |   |   |   |   [52] V3 <= 9 *
#> |   |   |   |   |   |   |   [53] V3 > 9 *
#> |   |   |   [54] V5 > 11 *
#> |   |   [55] V2 > 72
#> |   |   |   [56] V6 <= 0
#> |   |   |   |   [57] V5 <= 4 *
#> |   |   |   |   [58] V5 > 4 *
#> |   |   |   [59] V6 > 0
#> |   |   |   |   [60] V7 <= 170
#> |   |   |   |   |   [61] V3 <= 7 *
#> |   |   |   |   |   [62] V3 > 7
#> |   |   |   |   |   |   [63] V7 <= 129 *
#> |   |   |   |   |   |   [64] V7 > 129 *
#> |   |   |   |   [65] V7 > 170 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V5 <= 161
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V3 <= 13
#> |   |   |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   |   |   [10] V5 > 2 *
#> |   |   |   |   |   |   [11] V3 > 13 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 117 *
#> |   |   |   |   |   |   [14] V7 > 117 *
#> |   |   |   [15] V2 > 54
#> |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   [17] V3 <= 8
#> |   |   |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   |   |   [19] V5 <= 7 *
#> |   |   |   |   |   |   |   [20] V5 > 7 *
#> |   |   |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   |   |   [22] V5 <= 2 *
#> |   |   |   |   |   |   |   [23] V5 > 2 *
#> |   |   |   |   |   [24] V3 > 8
#> |   |   |   |   |   |   [25] V3 <= 11 *
#> |   |   |   |   |   |   [26] V3 > 11 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   |   [29] V3 <= 1 *
#> |   |   |   |   |   |   [30] V3 > 1 *
#> |   |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   |   [32] V7 <= 160
#> |   |   |   |   |   |   |   [33] V7 <= 112 *
#> |   |   |   |   |   |   |   [34] V7 > 112
#> |   |   |   |   |   |   |   |   [35] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [36] V7 > 120
#> |   |   |   |   |   |   |   |   |   [37] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [38] V7 > 130
#> |   |   |   |   |   |   |   |   |   |   [39] V2 <= 67
#> |   |   |   |   |   |   |   |   |   |   |   [40] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   |   [41] V2 > 60 *
#> |   |   |   |   |   |   |   |   |   |   [42] V2 > 67 *
#> |   |   |   |   |   |   [43] V7 > 160
#> |   |   |   |   |   |   |   [44] V3 <= 10 *
#> |   |   |   |   |   |   |   [45] V3 > 10 *
#> |   |   [46] V5 > 161
#> |   |   |   [47] V7 <= 130
#> |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   [49] V6 > 0 *
#> |   |   |   [50] V7 > 130
#> |   |   |   |   [51] V3 <= 8
#> |   |   |   |   |   [52] V7 <= 140 *
#> |   |   |   |   |   [53] V7 > 140
#> |   |   |   |   |   |   [54] V2 <= 53 *
#> |   |   |   |   |   |   [55] V2 > 53 *
#> |   |   |   |   [56] V3 > 8 *
#> |   [57] V2 > 78
#> |   |   [58] V7 <= 104 *
#> |   |   [59] V7 > 104
#> |   |   |   [60] V2 <= 87
#> |   |   |   |   [61] V3 <= 3 *
#> |   |   |   |   [62] V3 > 3
#> |   |   |   |   |   [63] V2 <= 82
#> |   |   |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   |   |   [65] V6 > 0 *
#> |   |   |   |   |   [66] V2 > 82 *
#> |   |   |   [67] V2 > 87
#> |   |   |   |   [68] V3 <= 3 *
#> |   |   |   |   [69] V3 > 3 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V2 <= 53 *
#> |   |   |   |   [6] V2 > 53 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V7 <= 115
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   [11] V7 > 115
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V7 <= 140 *
#> |   |   |   |   |   |   [14] V7 > 140 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V3 <= 7
#> |   |   |   |   |   |   |   [17] V2 <= 79 *
#> |   |   |   |   |   |   |   [18] V2 > 79 *
#> |   |   |   |   |   |   [19] V3 > 7 *
#> |   |   [20] V5 > 173 *
#> |   [21] V4 > 0
#> |   |   [22] V5 <= 10
#> |   |   |   [23] V2 <= 80
#> |   |   |   |   [24] V2 <= 54
#> |   |   |   |   |   [25] V2 <= 41 *
#> |   |   |   |   |   [26] V2 > 41
#> |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   [30] V5 <= 1
#> |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   [33] V5 <= 0
#> |   |   |   |   |   |   |   |   [34] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [35] V2 > 65
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 72 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 72 *
#> |   |   |   |   |   |   |   [38] V5 > 0 *
#> |   |   |   |   |   [39] V5 > 1
#> |   |   |   |   |   |   [40] V5 <= 2 *
#> |   |   |   |   |   |   [41] V5 > 2
#> |   |   |   |   |   |   |   [42] V3 <= 5 *
#> |   |   |   |   |   |   |   [43] V3 > 5
#> |   |   |   |   |   |   |   |   [44] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [45] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [46] V3 > 8
#> |   |   |   |   |   |   |   |   |   |   [47] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   [48] V3 > 11 *
#> |   |   |   |   |   |   |   |   [49] V5 > 8
#> |   |   |   |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [51] V6 > 0 *
#> |   |   |   [52] V2 > 80 *
#> |   |   [53] V5 > 10
#> |   |   |   [54] V7 <= 169
#> |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   [56] V6 > 0 *
#> |   |   |   [57] V7 > 169 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 71
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 16 *
#> |   |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V2 > 71
#> |   |   |   |   [10] V7 <= 90 *
#> |   |   |   |   [11] V7 > 90
#> |   |   |   |   |   [12] V7 <= 130
#> |   |   |   |   |   |   [13] V2 <= 84 *
#> |   |   |   |   |   |   [14] V2 > 84 *
#> |   |   |   |   |   [15] V7 > 130
#> |   |   |   |   |   |   [16] V3 <= 6
#> |   |   |   |   |   |   |   [17] V7 <= 150 *
#> |   |   |   |   |   |   |   [18] V7 > 150 *
#> |   |   |   |   |   |   [19] V3 > 6 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V2 <= 62
#> |   |   |   |   |   [23] V3 <= 13
#> |   |   |   |   |   |   [24] V3 <= 5 *
#> |   |   |   |   |   |   [25] V3 > 5 *
#> |   |   |   |   |   [26] V3 > 13 *
#> |   |   |   |   [27] V2 > 62
#> |   |   |   |   |   [28] V3 <= 3 *
#> |   |   |   |   |   [29] V3 > 3
#> |   |   |   |   |   |   [30] V3 <= 7 *
#> |   |   |   |   |   |   [31] V3 > 7
#> |   |   |   |   |   |   |   [32] V5 <= 8 *
#> |   |   |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V5 <= 7
#> |   |   |   |   |   [36] V2 <= 72
#> |   |   |   |   |   |   [37] V5 <= 3
#> |   |   |   |   |   |   |   [38] V5 <= 0
#> |   |   |   |   |   |   |   |   [39] V7 <= 115 *
#> |   |   |   |   |   |   |   |   [40] V7 > 115
#> |   |   |   |   |   |   |   |   |   [41] V2 <= 57 *
#> |   |   |   |   |   |   |   |   |   [42] V2 > 57 *
#> |   |   |   |   |   |   |   [43] V5 > 0
#> |   |   |   |   |   |   |   |   [44] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [45] V5 > 1 *
#> |   |   |   |   |   |   [46] V5 > 3 *
#> |   |   |   |   |   [47] V2 > 72
#> |   |   |   |   |   |   [48] V2 <= 84
#> |   |   |   |   |   |   |   [49] V5 <= 0 *
#> |   |   |   |   |   |   |   [50] V5 > 0 *
#> |   |   |   |   |   |   [51] V2 > 84 *
#> |   |   |   |   [52] V5 > 7
#> |   |   |   |   |   [53] V3 <= 17
#> |   |   |   |   |   |   [54] V2 <= 66 *
#> |   |   |   |   |   |   [55] V2 > 66 *
#> |   |   |   |   |   [56] V3 > 17 *
#> |   [57] V5 > 170
#> |   |   [58] V7 <= 152
#> |   |   |   [59] V6 <= 0 *
#> |   |   |   [60] V6 > 0
#> |   |   |   |   [61] V7 <= 117 *
#> |   |   |   |   [62] V7 > 117 *
#> |   |   [63] V7 > 152
#> |   |   |   [64] V3 <= 3 *
#> |   |   |   [65] V3 > 3 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V3 <= 7
#> |   |   |   |   |   |   [7] V7 <= 110 *
#> |   |   |   |   |   |   [8] V7 > 110
#> |   |   |   |   |   |   |   [9] V5 <= 0 *
#> |   |   |   |   |   |   |   [10] V5 > 0 *
#> |   |   |   |   |   [11] V3 > 7
#> |   |   |   |   |   |   [12] V5 <= 9 *
#> |   |   |   |   |   |   [13] V5 > 9 *
#> |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   [15] V3 <= 1 *
#> |   |   |   |   |   [16] V3 > 1
#> |   |   |   |   |   |   [17] V5 <= 1
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   |   [20] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [21] V7 > 140 *
#> |   |   |   |   |   |   [22] V5 > 1
#> |   |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   |   [24] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   |   |   |   |   [26] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [27] V7 > 140 *
#> |   |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   |   [29] V2 <= 61
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   [31] V5 > 7 *
#> |   |   |   |   |   |   |   |   [32] V2 > 61
#> |   |   |   |   |   |   |   |   |   [33] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [34] V3 > 10 *
#> |   |   |   [35] V5 > 15 *
#> |   |   [36] V5 > 150
#> |   |   |   [37] V6 <= 0 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V2 <= 55 *
#> |   |   |   |   [40] V2 > 55 *
#> |   [41] V2 > 72
#> |   |   [42] V5 <= 177
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V7 <= 115
#> |   |   |   |   |   [45] V5 <= 12 *
#> |   |   |   |   |   [46] V5 > 12 *
#> |   |   |   |   [47] V7 > 115
#> |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   [50] V5 <= 11 *
#> |   |   |   |   |   |   [51] V5 > 11 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V2 <= 82
#> |   |   |   |   |   [54] V2 <= 73 *
#> |   |   |   |   |   [55] V2 > 73
#> |   |   |   |   |   |   [56] V3 <= 4 *
#> |   |   |   |   |   |   [57] V3 > 4
#> |   |   |   |   |   |   |   [58] V3 <= 11 *
#> |   |   |   |   |   |   |   [59] V3 > 11 *
#> |   |   |   |   [60] V2 > 82 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 99 *
#> |   |   |   |   [6] V5 > 99
#> |   |   |   |   |   [7] V2 <= 49 *
#> |   |   |   |   |   [8] V2 > 49 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V3 <= 6
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120 *
#> |   |   |   |   [15] V3 > 6
#> |   |   |   |   |   [16] V3 <= 14 *
#> |   |   |   |   |   [17] V3 > 14 *
#> |   |   [18] V2 > 54
#> |   |   |   [19] V7 <= 114
#> |   |   |   |   [20] V7 <= 105 *
#> |   |   |   |   [21] V7 > 105 *
#> |   |   |   [22] V7 > 114
#> |   |   |   |   [23] V3 <= 1 *
#> |   |   |   |   [24] V3 > 1
#> |   |   |   |   |   [25] V5 <= 170
#> |   |   |   |   |   |   [26] V4 <= 0
#> |   |   |   |   |   |   |   [27] V5 <= 21 *
#> |   |   |   |   |   |   |   [28] V5 > 21 *
#> |   |   |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   |   |   [30] V3 <= 6
#> |   |   |   |   |   |   |   |   [31] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [32] V5 > 1 *
#> |   |   |   |   |   |   |   [33] V3 > 6
#> |   |   |   |   |   |   |   |   [34] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 8 *
#> |   |   |   |   |   |   |   |   [37] V3 > 13 *
#> |   |   |   |   |   [38] V5 > 170 *
#> |   [39] V2 > 71
#> |   |   [40] V2 <= 87
#> |   |   |   [41] V5 <= 177
#> |   |   |   |   [42] V4 <= 0
#> |   |   |   |   |   [43] V7 <= 155
#> |   |   |   |   |   |   [44] V5 <= 3 *
#> |   |   |   |   |   |   [45] V5 > 3
#> |   |   |   |   |   |   |   [46] V2 <= 79 *
#> |   |   |   |   |   |   |   [47] V2 > 79 *
#> |   |   |   |   |   [48] V7 > 155 *
#> |   |   |   |   [49] V4 > 0
#> |   |   |   |   |   [50] V7 <= 167
#> |   |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   |   [53] V5 <= 9
#> |   |   |   |   |   |   |   |   [54] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [55] V3 > 4
#> |   |   |   |   |   |   |   |   |   [56] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [57] V7 > 130 *
#> |   |   |   |   |   |   |   [58] V5 > 9 *
#> |   |   |   |   |   [59] V7 > 167 *
#> |   |   |   [60] V5 > 177 *
#> |   |   [61] V2 > 87
#> |   |   |   [62] V5 <= 69
#> |   |   |   |   [63] V2 <= 90 *
#> |   |   |   |   [64] V2 > 90 *
#> |   |   |   [65] V5 > 69 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V3 <= 2
#> |   |   |   |   |   [6] V2 <= 75 *
#> |   |   |   |   |   [7] V2 > 75 *
#> |   |   |   |   [8] V3 > 2 *
#> |   |   |   [9] V3 > 3
#> |   |   |   |   [10] V2 <= 71
#> |   |   |   |   |   [11] V2 <= 60 *
#> |   |   |   |   |   [12] V2 > 60
#> |   |   |   |   |   |   [13] V7 <= 140 *
#> |   |   |   |   |   |   [14] V7 > 140 *
#> |   |   |   |   [15] V2 > 71
#> |   |   |   |   |   [16] V2 <= 79 *
#> |   |   |   |   |   [17] V2 > 79
#> |   |   |   |   |   |   [18] V3 <= 6 *
#> |   |   |   |   |   |   [19] V3 > 6 *
#> |   |   [20] V5 > 173
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   [23] V3 > 2 *
#> |   |   |   [24] V6 > 0
#> |   |   |   |   [25] V2 <= 52 *
#> |   |   |   |   [26] V2 > 52 *
#> |   [27] V4 > 0
#> |   |   [28] V5 <= 11
#> |   |   |   [29] V2 <= 70
#> |   |   |   |   [30] V2 <= 54
#> |   |   |   |   |   [31] V7 <= 115 *
#> |   |   |   |   |   [32] V7 > 115
#> |   |   |   |   |   |   [33] V5 <= 3
#> |   |   |   |   |   |   |   [34] V2 <= 49 *
#> |   |   |   |   |   |   |   [35] V2 > 49 *
#> |   |   |   |   |   |   [36] V5 > 3 *
#> |   |   |   |   [37] V2 > 54
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V7 <= 127 *
#> |   |   |   |   |   |   [40] V7 > 127
#> |   |   |   |   |   |   |   [41] V3 <= 5 *
#> |   |   |   |   |   |   |   [42] V3 > 5 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V5 <= 7
#> |   |   |   |   |   |   |   [45] V3 <= 3 *
#> |   |   |   |   |   |   |   [46] V3 > 3
#> |   |   |   |   |   |   |   |   [47] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [48] V2 > 61 *
#> |   |   |   |   |   |   [49] V5 > 7 *
#> |   |   |   [50] V2 > 70
#> |   |   |   |   [51] V2 <= 85
#> |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   [53] V7 <= 160
#> |   |   |   |   |   |   |   [54] V7 <= 128 *
#> |   |   |   |   |   |   |   [55] V7 > 128 *
#> |   |   |   |   |   |   [56] V7 > 160 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V2 <= 77
#> |   |   |   |   |   |   |   [59] V5 <= 1 *
#> |   |   |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   |   |   |   [61] V2 > 77 *
#> |   |   |   |   [62] V2 > 85 *
#> |   |   [63] V5 > 11
#> |   |   |   [64] V3 <= 15 *
#> |   |   |   [65] V3 > 15 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V2 <= 43 *
#> |   |   |   [5] V2 > 43
#> |   |   |   |   [6] V7 <= 111 *
#> |   |   |   |   [7] V7 > 111
#> |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   |   [10] V5 > 2 *
#> |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   |   |   [13] V4 > 0 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V4 <= 0
#> |   |   |   |   [16] V5 <= 170
#> |   |   |   |   |   [17] V2 <= 64
#> |   |   |   |   |   |   [18] V7 <= 126 *
#> |   |   |   |   |   |   [19] V7 > 126 *
#> |   |   |   |   |   [20] V2 > 64 *
#> |   |   |   |   [21] V5 > 170 *
#> |   |   |   [22] V4 > 0
#> |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   [24] V5 <= 6
#> |   |   |   |   |   |   [25] V5 <= 2 *
#> |   |   |   |   |   |   [26] V5 > 2 *
#> |   |   |   |   |   [27] V5 > 6 *
#> |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   [29] V5 <= 10
#> |   |   |   |   |   |   [30] V2 <= 69
#> |   |   |   |   |   |   |   [31] V5 <= 7
#> |   |   |   |   |   |   |   |   [32] V3 <= 9
#> |   |   |   |   |   |   |   |   |   [33] V3 <= 7
#> |   |   |   |   |   |   |   |   |   |   [34] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   [35] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 7 *
#> |   |   |   |   |   |   |   |   [37] V3 > 9 *
#> |   |   |   |   |   |   |   [38] V5 > 7 *
#> |   |   |   |   |   |   [39] V2 > 69 *
#> |   |   |   |   |   [40] V5 > 10 *
#> |   [41] V2 > 72
#> |   |   [42] V7 <= 104 *
#> |   |   [43] V7 > 104
#> |   |   |   [44] V6 <= 0
#> |   |   |   |   [45] V2 <= 81
#> |   |   |   |   |   [46] V2 <= 74 *
#> |   |   |   |   |   [47] V2 > 74
#> |   |   |   |   |   |   [48] V5 <= 161 *
#> |   |   |   |   |   |   [49] V5 > 161 *
#> |   |   |   |   [50] V2 > 81
#> |   |   |   |   |   [51] V5 <= 145 *
#> |   |   |   |   |   [52] V5 > 145 *
#> |   |   |   [53] V6 > 0
#> |   |   |   |   [54] V4 <= 0
#> |   |   |   |   |   [55] V3 <= 8
#> |   |   |   |   |   |   [56] V5 <= 169
#> |   |   |   |   |   |   |   [57] V3 <= 5 *
#> |   |   |   |   |   |   |   [58] V3 > 5 *
#> |   |   |   |   |   |   [59] V5 > 169 *
#> |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   [61] V4 > 0
#> |   |   |   |   |   [62] V5 <= 6
#> |   |   |   |   |   |   [63] V2 <= 82
#> |   |   |   |   |   |   |   [64] V2 <= 77 *
#> |   |   |   |   |   |   |   [65] V2 > 77 *
#> |   |   |   |   |   |   [66] V2 > 82 *
#> |   |   |   |   |   [67] V5 > 6 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V7 <= 139
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V7 > 139
#> |   |   |   |   |   [9] V2 <= 60 *
#> |   |   |   |   |   [10] V2 > 60 *
#> |   |   |   [11] V5 > 170
#> |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 52 *
#> |   |   |   |   |   [15] V2 > 52 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V5 <= 10
#> |   |   |   |   [18] V7 <= 114
#> |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   [21] V7 > 114
#> |   |   |   |   |   [22] V2 <= 54
#> |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V5 <= 0 *
#> |   |   |   |   |   |   |   [26] V5 > 0 *
#> |   |   |   |   |   [27] V2 > 54
#> |   |   |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   |   [31] V7 <= 123 *
#> |   |   |   |   |   |   |   |   [32] V7 > 123
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 4
#> |   |   |   |   |   |   |   |   |   |   [34] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   |   [38] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [39] V5 > 5 *
#> |   |   |   [40] V5 > 10 *
#> |   [41] V2 > 72
#> |   |   [42] V6 <= 0
#> |   |   |   [43] V7 <= 106 *
#> |   |   |   [44] V7 > 106
#> |   |   |   |   [45] V5 <= 177
#> |   |   |   |   |   [46] V5 <= 14
#> |   |   |   |   |   |   [47] V2 <= 81
#> |   |   |   |   |   |   |   [48] V3 <= 10 *
#> |   |   |   |   |   |   |   [49] V3 > 10 *
#> |   |   |   |   |   |   [50] V2 > 81 *
#> |   |   |   |   |   [51] V5 > 14 *
#> |   |   |   |   [52] V5 > 177 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V3 <= 6
#> |   |   |   |   [55] V7 <= 114 *
#> |   |   |   |   [56] V7 > 114
#> |   |   |   |   |   [57] V5 <= 119
#> |   |   |   |   |   |   [58] V4 <= 0 *
#> |   |   |   |   |   |   [59] V4 > 0 *
#> |   |   |   |   |   [60] V5 > 119 *
#> |   |   |   [61] V3 > 6
#> |   |   |   |   [62] V5 <= 0 *
#> |   |   |   |   [63] V5 > 0
#> |   |   |   |   |   [64] V4 <= 0 *
#> |   |   |   |   |   [65] V4 > 0
#> |   |   |   |   |   |   [66] V2 <= 78 *
#> |   |   |   |   |   |   [67] V2 > 78 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V7 <= 138 *
#> |   |   |   |   |   [8] V7 > 138 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 63
#> |   |   |   |   |   |   [12] V7 <= 130 *
#> |   |   |   |   |   |   [13] V7 > 130
#> |   |   |   |   |   |   |   [14] V2 <= 57 *
#> |   |   |   |   |   |   |   [15] V2 > 57 *
#> |   |   |   |   |   [16] V2 > 63
#> |   |   |   |   |   |   [17] V5 <= 5 *
#> |   |   |   |   |   |   [18] V5 > 5 *
#> |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   [20] V5 <= 6
#> |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   [23] V5 <= 0
#> |   |   |   |   |   |   |   |   [24] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [25] V2 > 56 *
#> |   |   |   |   |   |   |   [26] V5 > 0
#> |   |   |   |   |   |   |   |   [27] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [28] V3 > 8 *
#> |   |   |   |   |   [29] V5 > 6
#> |   |   |   |   |   |   [30] V2 <= 57 *
#> |   |   |   |   |   |   [31] V2 > 57 *
#> |   |   [32] V5 > 150
#> |   |   |   [33] V3 <= 5
#> |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   [35] V6 > 0 *
#> |   |   |   [36] V3 > 5 *
#> |   [37] V2 > 72
#> |   |   [38] V5 <= 177
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   [41] V7 <= 133 *
#> |   |   |   |   |   [42] V7 > 133 *
#> |   |   |   |   [43] V4 > 0
#> |   |   |   |   |   [44] V2 <= 79 *
#> |   |   |   |   |   [45] V2 > 79 *
#> |   |   |   [46] V6 > 0
#> |   |   |   |   [47] V4 <= 0
#> |   |   |   |   |   [48] V3 <= 5
#> |   |   |   |   |   |   [49] V3 <= 2 *
#> |   |   |   |   |   |   [50] V3 > 2 *
#> |   |   |   |   |   [51] V3 > 5
#> |   |   |   |   |   |   [52] V5 <= 15 *
#> |   |   |   |   |   |   [53] V5 > 15 *
#> |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   [55] V5 <= 8
#> |   |   |   |   |   |   [56] V7 <= 161
#> |   |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   |   [59] V7 > 161 *
#> |   |   |   |   |   [60] V5 > 8 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V7 <= 113 *
#> |   |   |   |   |   [8] V7 > 113
#> |   |   |   |   |   |   [9] V7 <= 129 *
#> |   |   |   |   |   |   [10] V7 > 129
#> |   |   |   |   |   |   |   [11] V2 <= 52
#> |   |   |   |   |   |   |   |   [12] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [13] V5 > 2 *
#> |   |   |   |   |   |   |   [14] V2 > 52 *
#> |   |   |   [15] V2 > 54
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V3 <= 2 *
#> |   |   |   |   |   [18] V3 > 2
#> |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V7 <= 159
#> |   |   |   |   |   |   [23] V5 <= 8
#> |   |   |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [26] V2 <= 61 *
#> |   |   |   |   |   |   |   |   |   [27] V2 > 61 *
#> |   |   |   |   |   |   |   |   [28] V5 > 3 *
#> |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   [30] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [31] V7 > 135 *
#> |   |   |   |   |   |   [32] V5 > 8 *
#> |   |   |   |   |   [33] V7 > 159
#> |   |   |   |   |   |   [34] V3 <= 4 *
#> |   |   |   |   |   |   [35] V3 > 4 *
#> |   |   [36] V2 > 71
#> |   |   |   [37] V3 <= 6
#> |   |   |   |   [38] V4 <= 0
#> |   |   |   |   |   [39] V6 <= 0
#> |   |   |   |   |   |   [40] V5 <= 80 *
#> |   |   |   |   |   |   [41] V5 > 80 *
#> |   |   |   |   |   [42] V6 > 0
#> |   |   |   |   |   |   [43] V7 <= 107 *
#> |   |   |   |   |   |   [44] V7 > 107 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V2 <= 85 *
#> |   |   |   |   |   [47] V2 > 85 *
#> |   |   |   [48] V3 > 6
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V3 <= 9 *
#> |   |   |   |   |   [51] V3 > 9 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V2 <= 73 *
#> |   |   |   |   |   [54] V2 > 73
#> |   |   |   |   |   |   [55] V3 <= 11 *
#> |   |   |   |   |   |   [56] V3 > 11
#> |   |   |   |   |   |   |   [57] V5 <= 3 *
#> |   |   |   |   |   |   |   [58] V5 > 3 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 7 *
#> |   |   |   |   |   [7] V3 > 7 *
#> |   |   |   |   [8] V2 > 62 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V7 <= 151
#> |   |   |   |   |   |   [12] V2 <= 61
#> |   |   |   |   |   |   |   [13] V2 <= 51 *
#> |   |   |   |   |   |   |   [14] V2 > 51 *
#> |   |   |   |   |   |   [15] V2 > 61 *
#> |   |   |   |   |   [16] V7 > 151
#> |   |   |   |   |   |   [17] V5 <= 6 *
#> |   |   |   |   |   |   [18] V5 > 6 *
#> |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   |   [22] V7 <= 135
#> |   |   |   |   |   |   |   [23] V5 <= 6
#> |   |   |   |   |   |   |   |   [24] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   |   |   [26] V5 > 6 *
#> |   |   |   |   |   |   [27] V7 > 135
#> |   |   |   |   |   |   |   [28] V2 <= 56 *
#> |   |   |   |   |   |   |   [29] V2 > 56
#> |   |   |   |   |   |   |   |   [30] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [31] V3 > 7 *
#> |   |   [32] V5 > 169
#> |   |   |   [33] V6 <= 0 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 52 *
#> |   |   |   |   [36] V2 > 52 *
#> |   [37] V2 > 70
#> |   |   [38] V4 <= 0
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V3 <= 2 *
#> |   |   |   |   [41] V3 > 2
#> |   |   |   |   |   [42] V3 <= 7
#> |   |   |   |   |   |   [43] V7 <= 120 *
#> |   |   |   |   |   |   [44] V7 > 120 *
#> |   |   |   |   |   [45] V3 > 7 *
#> |   |   |   [46] V6 > 0
#> |   |   |   |   [47] V3 <= 5
#> |   |   |   |   |   [48] V5 <= 58 *
#> |   |   |   |   |   [49] V5 > 58 *
#> |   |   |   |   [50] V3 > 5
#> |   |   |   |   |   [51] V2 <= 78 *
#> |   |   |   |   |   [52] V2 > 78 *
#> |   |   [53] V4 > 0
#> |   |   |   [54] V2 <= 81
#> |   |   |   |   [55] V5 <= 9
#> |   |   |   |   |   [56] V6 <= 0
#> |   |   |   |   |   |   [57] V2 <= 73 *
#> |   |   |   |   |   |   [58] V2 > 73 *
#> |   |   |   |   |   [59] V6 > 0
#> |   |   |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   |   |   [61] V3 > 4
#> |   |   |   |   |   |   |   [62] V3 <= 12 *
#> |   |   |   |   |   |   |   [63] V3 > 12 *
#> |   |   |   |   [64] V5 > 9 *
#> |   |   |   [65] V2 > 81 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V3 <= 1
#> |   |   |   |   [5] V5 <= 0 *
#> |   |   |   |   [6] V5 > 0 *
#> |   |   |   [7] V3 > 1
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   |   [11] V3 <= 8
#> |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   |   |   [14] V3 > 8 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V2 <= 72
#> |   |   |   |   |   |   [17] V5 <= 6
#> |   |   |   |   |   |   |   [18] V3 <= 8
#> |   |   |   |   |   |   |   |   [19] V7 <= 148
#> |   |   |   |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [22] V5 <= 0
#> |   |   |   |   |   |   |   |   |   |   |   [23] V2 <= 64 *
#> |   |   |   |   |   |   |   |   |   |   |   [24] V2 > 64 *
#> |   |   |   |   |   |   |   |   |   |   [25] V5 > 0 *
#> |   |   |   |   |   |   |   |   [26] V7 > 148
#> |   |   |   |   |   |   |   |   |   [27] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   [28] V7 <= 151 *
#> |   |   |   |   |   |   |   |   |   |   [29] V7 > 151 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 3 *
#> |   |   |   |   |   |   |   [31] V3 > 8
#> |   |   |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   |   |   |   |   [34] V5 > 6
#> |   |   |   |   |   |   |   [35] V7 <= 150
#> |   |   |   |   |   |   |   |   [36] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [37] V2 > 54
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 129 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 129 *
#> |   |   |   |   |   |   |   [40] V7 > 150 *
#> |   |   |   |   |   [41] V2 > 72
#> |   |   |   |   |   |   [42] V2 <= 85
#> |   |   |   |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   |   |   |   [44] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [45] V3 > 9 *
#> |   |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   |   [47] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [48] V3 > 9 *
#> |   |   |   |   |   |   [49] V2 > 85 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V5 <= 128
#> |   |   |   |   [52] V2 <= 63 *
#> |   |   |   |   [53] V2 > 63
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   [56] V5 > 128 *
#> |   [57] V5 > 170
#> |   |   [58] V2 <= 52
#> |   |   |   [59] V2 <= 49 *
#> |   |   |   [60] V2 > 49 *
#> |   |   [61] V2 > 52
#> |   |   |   [62] V7 <= 162 *
#> |   |   |   [63] V7 > 162 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 77 *
#> |   |   |   |   |   [10] V2 > 77 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V3 <= 5
#> |   |   |   |   |   |   [13] V5 <= 5
#> |   |   |   |   |   |   |   [14] V5 <= 2 *
#> |   |   |   |   |   |   |   [15] V5 > 2 *
#> |   |   |   |   |   |   [16] V5 > 5 *
#> |   |   |   |   |   [17] V3 > 5
#> |   |   |   |   |   |   [18] V2 <= 79 *
#> |   |   |   |   |   |   [19] V2 > 79 *
#> |   |   [20] V5 > 170
#> |   |   |   [21] V3 <= 12
#> |   |   |   |   [22] V3 <= 3
#> |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   [24] V3 > 2 *
#> |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V2 <= 54 *
#> |   |   |   |   |   |   [29] V2 > 54 *
#> |   |   |   [30] V3 > 12 *
#> |   [31] V4 > 0
#> |   |   [32] V2 <= 84
#> |   |   |   [33] V3 <= 21
#> |   |   |   |   [34] V2 <= 56
#> |   |   |   |   |   [35] V5 <= 0 *
#> |   |   |   |   |   [36] V5 > 0
#> |   |   |   |   |   |   [37] V3 <= 6 *
#> |   |   |   |   |   |   [38] V3 > 6 *
#> |   |   |   |   [39] V2 > 56
#> |   |   |   |   |   [40] V2 <= 72
#> |   |   |   |   |   |   [41] V3 <= 5
#> |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   [43] V6 > 0 *
#> |   |   |   |   |   |   [44] V3 > 5
#> |   |   |   |   |   |   |   [45] V2 <= 64 *
#> |   |   |   |   |   |   |   [46] V2 > 64
#> |   |   |   |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 150 *
#> |   |   |   |   |   [51] V2 > 72
#> |   |   |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   |   |   [54] V7 <= 130 *
#> |   |   |   |   |   |   |   [55] V7 > 130
#> |   |   |   |   |   |   |   |   [56] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [57] V5 > 6 *
#> |   |   |   [58] V3 > 21 *
#> |   |   [59] V2 > 84 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V7 <= 93 *
#> |   |   |   |   [6] V7 > 93
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V3 <= 2 *
#> |   |   |   |   |   |   [9] V3 > 2 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   |   [12] V7 <= 112 *
#> |   |   |   |   |   |   |   [13] V7 > 112
#> |   |   |   |   |   |   |   |   [14] V2 <= 41 *
#> |   |   |   |   |   |   |   |   [15] V2 > 41
#> |   |   |   |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [18] V7 <= 145 *
#> |   |   |   |   |   |   |   |   |   |   [19] V7 > 145 *
#> |   |   |   |   |   |   [20] V2 > 54
#> |   |   |   |   |   |   |   [21] V7 <= 138
#> |   |   |   |   |   |   |   |   [22] V7 <= 114 *
#> |   |   |   |   |   |   |   |   [23] V7 > 114
#> |   |   |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   |   [26] V7 > 138
#> |   |   |   |   |   |   |   |   [27] V7 <= 141 *
#> |   |   |   |   |   |   |   |   [28] V7 > 141
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 6
#> |   |   |   |   |   |   |   |   |   |   [30] V7 <= 148 *
#> |   |   |   |   |   |   |   |   |   |   [31] V7 > 148
#> |   |   |   |   |   |   |   |   |   |   |   [32] V7 <= 162 *
#> |   |   |   |   |   |   |   |   |   |   |   [33] V7 > 162 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 6 *
#> |   |   |   [35] V5 > 16 *
#> |   |   [36] V5 > 169
#> |   |   |   [37] V2 <= 52
#> |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   [39] V6 > 0 *
#> |   |   |   [40] V2 > 52 *
#> |   [41] V2 > 72
#> |   |   [42] V4 <= 0
#> |   |   |   [43] V7 <= 144
#> |   |   |   |   [44] V5 <= 164
#> |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   [47] V5 <= 6 *
#> |   |   |   |   |   |   [48] V5 > 6 *
#> |   |   |   |   [49] V5 > 164 *
#> |   |   |   [50] V7 > 144
#> |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   [52] V2 <= 81 *
#> |   |   |   |   |   [53] V2 > 81 *
#> |   |   |   |   [54] V6 > 0 *
#> |   |   [55] V4 > 0
#> |   |   |   [56] V6 <= 0
#> |   |   |   |   [57] V2 <= 81 *
#> |   |   |   |   [58] V2 > 81 *
#> |   |   |   [59] V6 > 0
#> |   |   |   |   [60] V2 <= 75 *
#> |   |   |   |   [61] V2 > 75
#> |   |   |   |   |   [62] V3 <= 12
#> |   |   |   |   |   |   [63] V7 <= 130 *
#> |   |   |   |   |   |   [64] V7 > 130 *
#> |   |   |   |   |   [65] V3 > 12 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 150
#> |   |   |   |   [5] V7 <= 110 *
#> |   |   |   |   [6] V7 > 110
#> |   |   |   |   |   [7] V3 <= 12
#> |   |   |   |   |   |   [8] V5 <= 3
#> |   |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   |   |   [11] V5 > 3 *
#> |   |   |   |   |   [12] V3 > 12 *
#> |   |   |   [13] V5 > 150
#> |   |   |   |   [14] V7 <= 124 *
#> |   |   |   |   [15] V7 > 124 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 169
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V3 <= 3 *
#> |   |   |   |   |   [20] V3 > 3
#> |   |   |   |   |   |   [21] V7 <= 140 *
#> |   |   |   |   |   |   [22] V7 > 140 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   |   [26] V2 <= 66 *
#> |   |   |   |   |   |   |   [27] V2 > 66 *
#> |   |   |   |   |   |   [28] V5 > 3 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V2 <= 60 *
#> |   |   |   |   |   |   [31] V2 > 60
#> |   |   |   |   |   |   |   [32] V2 <= 64 *
#> |   |   |   |   |   |   |   [33] V2 > 64
#> |   |   |   |   |   |   |   |   [34] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [35] V2 > 65
#> |   |   |   |   |   |   |   |   |   [36] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 3 *
#> |   |   |   [38] V5 > 169 *
#> |   [39] V2 > 72
#> |   |   [40] V6 <= 0
#> |   |   |   [41] V2 <= 84
#> |   |   |   |   [42] V5 <= 164
#> |   |   |   |   |   [43] V4 <= 0 *
#> |   |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   |   [45] V3 <= 10 *
#> |   |   |   |   |   |   [46] V3 > 10 *
#> |   |   |   |   [47] V5 > 164 *
#> |   |   |   [48] V2 > 84 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V5 <= 173
#> |   |   |   |   [51] V7 <= 107 *
#> |   |   |   |   [52] V7 > 107
#> |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   [54] V5 <= 4 *
#> |   |   |   |   |   |   [55] V5 > 4
#> |   |   |   |   |   |   |   [56] V5 <= 15 *
#> |   |   |   |   |   |   |   [57] V5 > 15 *
#> |   |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   |   [59] V2 <= 75 *
#> |   |   |   |   |   |   [60] V2 > 75
#> |   |   |   |   |   |   |   [61] V5 <= 3 *
#> |   |   |   |   |   |   |   [62] V5 > 3 *
#> |   |   |   [63] V5 > 173 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V7 <= 145
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0 *
#> |   |   |   |   [8] V7 > 145 *
#> |   |   |   [9] V2 > 55
#> |   |   |   |   [10] V2 <= 72
#> |   |   |   |   |   [11] V4 <= 0
#> |   |   |   |   |   |   [12] V5 <= 169 *
#> |   |   |   |   |   |   [13] V5 > 169 *
#> |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   [15] V2 <= 66
#> |   |   |   |   |   |   |   [16] V5 <= 3 *
#> |   |   |   |   |   |   |   [17] V5 > 3 *
#> |   |   |   |   |   |   [18] V2 > 66
#> |   |   |   |   |   |   |   [19] V3 <= 5 *
#> |   |   |   |   |   |   |   [20] V3 > 5 *
#> |   |   |   |   [21] V2 > 72 *
#> |   |   [22] V6 > 0
#> |   |   |   [23] V2 <= 54
#> |   |   |   |   [24] V5 <= 99
#> |   |   |   |   |   [25] V7 <= 110 *
#> |   |   |   |   |   [26] V7 > 110 *
#> |   |   |   |   [27] V5 > 99 *
#> |   |   |   [28] V2 > 54
#> |   |   |   |   [29] V7 <= 93 *
#> |   |   |   |   [30] V7 > 93
#> |   |   |   |   |   [31] V5 <= 99
#> |   |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   |   [34] V4 <= 0 *
#> |   |   |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   |   |   [36] V7 <= 133
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 69 *
#> |   |   |   |   |   |   |   |   [39] V7 > 133
#> |   |   |   |   |   |   |   |   |   [40] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 147
#> |   |   |   |   |   |   |   |   |   |   [42] V7 <= 153 *
#> |   |   |   |   |   |   |   |   |   |   [43] V7 > 153 *
#> |   |   |   |   |   [44] V5 > 99
#> |   |   |   |   |   |   [45] V2 <= 63 *
#> |   |   |   |   |   |   [46] V2 > 63 *
#> |   [47] V2 > 74
#> |   |   [48] V7 <= 105
#> |   |   |   [49] V7 <= 98 *
#> |   |   |   [50] V7 > 98 *
#> |   |   [51] V7 > 105
#> |   |   |   [52] V2 <= 87
#> |   |   |   |   [53] V3 <= 3
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V3 > 3
#> |   |   |   |   |   [57] V5 <= 177
#> |   |   |   |   |   |   [58] V4 <= 0
#> |   |   |   |   |   |   |   [59] V2 <= 80 *
#> |   |   |   |   |   |   |   [60] V2 > 80 *
#> |   |   |   |   |   |   [61] V4 > 0
#> |   |   |   |   |   |   |   [62] V5 <= 2 *
#> |   |   |   |   |   |   |   [63] V5 > 2 *
#> |   |   |   |   |   [64] V5 > 177 *
#> |   |   |   [65] V2 > 87
#> |   |   |   |   [66] V7 <= 125 *
#> |   |   |   |   [67] V7 > 125 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 5 *
#> |   |   |   |   |   [8] V5 > 5 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   [12] V2 <= 62
#> |   |   |   |   |   |   |   [13] V7 <= 129 *
#> |   |   |   |   |   |   |   [14] V7 > 129
#> |   |   |   |   |   |   |   |   [15] V2 <= 51 *
#> |   |   |   |   |   |   |   |   [16] V2 > 51 *
#> |   |   |   |   |   |   [17] V2 > 62 *
#> |   |   |   |   |   [18] V5 > 3
#> |   |   |   |   |   |   [19] V2 <= 66 *
#> |   |   |   |   |   |   [20] V2 > 66 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V7 <= 112 *
#> |   |   |   |   |   [23] V7 > 112
#> |   |   |   |   |   |   [24] V2 <= 54
#> |   |   |   |   |   |   |   [25] V5 <= 1 *
#> |   |   |   |   |   |   |   [26] V5 > 1 *
#> |   |   |   |   |   |   [27] V2 > 54
#> |   |   |   |   |   |   |   [28] V7 <= 129 *
#> |   |   |   |   |   |   |   [29] V7 > 129
#> |   |   |   |   |   |   |   |   [30] V5 <= 5
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 1 *
#> |   |   |   |   |   |   |   |   [33] V5 > 5 *
#> |   |   [34] V5 > 169
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V2 <= 52 *
#> |   |   |   |   [38] V2 > 52 *
#> |   [39] V2 > 71
#> |   |   [40] V5 <= 169
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V7 <= 151 *
#> |   |   |   |   |   [44] V7 > 151 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   |   [47] V3 > 5 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V2 <= 87
#> |   |   |   |   |   [50] V3 <= 2 *
#> |   |   |   |   |   [51] V3 > 2
#> |   |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   |   [53] V2 <= 76 *
#> |   |   |   |   |   |   |   [54] V2 > 76 *
#> |   |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   |   [56] V3 <= 8 *
#> |   |   |   |   |   |   |   [57] V3 > 8
#> |   |   |   |   |   |   |   |   [58] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [59] V2 > 73 *
#> |   |   |   |   [60] V2 > 87 *
#> |   |   [61] V5 > 169 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 107
#> |   |   |   [4] V3 <= 3 *
#> |   |   |   [5] V3 > 3 *
#> |   |   [6] V7 > 107
#> |   |   |   [7] V2 <= 54
#> |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   [9] V6 > 0 *
#> |   |   |   [10] V2 > 54
#> |   |   |   |   [11] V2 <= 73
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V7 <= 135
#> |   |   |   |   |   |   |   [14] V5 <= 123 *
#> |   |   |   |   |   |   |   [15] V5 > 123 *
#> |   |   |   |   |   |   [16] V7 > 135 *
#> |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   [18] V5 <= 99
#> |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   [20] V3 > 4 *
#> |   |   |   |   |   |   [21] V5 > 99 *
#> |   |   |   |   [22] V2 > 73
#> |   |   |   |   |   [23] V2 <= 76 *
#> |   |   |   |   |   [24] V2 > 76
#> |   |   |   |   |   |   [25] V3 <= 9
#> |   |   |   |   |   |   |   [26] V3 <= 2 *
#> |   |   |   |   |   |   |   [27] V3 > 2
#> |   |   |   |   |   |   |   |   [28] V5 <= 169
#> |   |   |   |   |   |   |   |   |   [29] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [30] V6 > 0 *
#> |   |   |   |   |   |   |   |   [31] V5 > 169 *
#> |   |   |   |   |   |   [32] V3 > 9 *
#> |   [33] V4 > 0
#> |   |   [34] V2 <= 72
#> |   |   |   [35] V5 <= 10
#> |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   [37] V5 <= 6
#> |   |   |   |   |   |   [38] V2 <= 67
#> |   |   |   |   |   |   |   [39] V5 <= 2 *
#> |   |   |   |   |   |   |   [40] V5 > 2 *
#> |   |   |   |   |   |   [41] V2 > 67 *
#> |   |   |   |   |   [42] V5 > 6 *
#> |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   [44] V7 <= 110 *
#> |   |   |   |   |   [45] V7 > 110
#> |   |   |   |   |   |   [46] V7 <= 135
#> |   |   |   |   |   |   |   [47] V2 <= 49 *
#> |   |   |   |   |   |   |   [48] V2 > 49 *
#> |   |   |   |   |   |   [49] V7 > 135
#> |   |   |   |   |   |   |   [50] V2 <= 54 *
#> |   |   |   |   |   |   |   [51] V2 > 54
#> |   |   |   |   |   |   |   |   [52] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [53] V2 > 59
#> |   |   |   |   |   |   |   |   |   [54] V7 <= 160 *
#> |   |   |   |   |   |   |   |   |   [55] V7 > 160 *
#> |   |   |   [56] V5 > 10 *
#> |   |   [57] V2 > 72
#> |   |   |   [58] V7 <= 112 *
#> |   |   |   [59] V7 > 112
#> |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   [61] V3 > 4
#> |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   |   [64] V2 <= 76 *
#> |   |   |   |   |   |   [65] V2 > 76 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V2 <= 74
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   [10] V2 <= 62
#> |   |   |   |   |   |   |   [11] V5 <= 9
#> |   |   |   |   |   |   |   |   [12] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [13] V5 > 1 *
#> |   |   |   |   |   |   |   [14] V5 > 9 *
#> |   |   |   |   |   |   [15] V2 > 62
#> |   |   |   |   |   |   |   [16] V2 <= 66 *
#> |   |   |   |   |   |   |   [17] V2 > 66
#> |   |   |   |   |   |   |   |   [18] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [19] V5 > 5 *
#> |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   [21] V5 <= 1
#> |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   |   |   |   [24] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [25] V7 > 138 *
#> |   |   |   |   |   |   [26] V5 > 1
#> |   |   |   |   |   |   |   [27] V2 <= 71
#> |   |   |   |   |   |   |   |   [28] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [29] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [30] V3 > 6
#> |   |   |   |   |   |   |   |   |   |   [31] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [32] V5 > 7 *
#> |   |   |   |   |   |   |   |   [33] V3 > 13 *
#> |   |   |   |   |   |   |   [34] V2 > 71 *
#> |   |   |   [35] V2 > 74
#> |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   [37] V2 <= 81
#> |   |   |   |   |   |   [38] V3 <= 7 *
#> |   |   |   |   |   |   [39] V3 > 7 *
#> |   |   |   |   |   [40] V2 > 81 *
#> |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   [42] V7 <= 136
#> |   |   |   |   |   |   [43] V5 <= 4
#> |   |   |   |   |   |   |   [44] V5 <= 1 *
#> |   |   |   |   |   |   |   [45] V5 > 1 *
#> |   |   |   |   |   |   [46] V5 > 4 *
#> |   |   |   |   |   [47] V7 > 136
#> |   |   |   |   |   |   [48] V7 <= 150 *
#> |   |   |   |   |   |   [49] V7 > 150 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V6 <= 0 *
#> |   |   |   [52] V6 > 0
#> |   |   |   |   [53] V2 <= 79 *
#> |   |   |   |   [54] V2 > 79 *
#> |   [55] V5 > 173
#> |   |   [56] V7 <= 117 *
#> |   |   [57] V7 > 117 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V3 <= 5 *
#> |   |   |   |   |   [7] V3 > 5 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V2 > 62
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 78 *
#> |   |   |   |   |   [12] V2 > 78 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V3 <= 4
#> |   |   |   |   |   |   [15] V5 <= 4 *
#> |   |   |   |   |   |   [16] V5 > 4 *
#> |   |   |   |   |   [17] V3 > 4
#> |   |   |   |   |   |   [18] V7 <= 136 *
#> |   |   |   |   |   |   [19] V7 > 136 *
#> |   |   [20] V5 > 173
#> |   |   |   [21] V3 <= 12
#> |   |   |   |   [22] V2 <= 52 *
#> |   |   |   |   [23] V2 > 52 *
#> |   |   |   [24] V3 > 12 *
#> |   [25] V4 > 0
#> |   |   [26] V2 <= 84
#> |   |   |   [27] V6 <= 0
#> |   |   |   |   [28] V2 <= 62
#> |   |   |   |   |   [29] V5 <= 9
#> |   |   |   |   |   |   [30] V2 <= 55
#> |   |   |   |   |   |   |   [31] V2 <= 48 *
#> |   |   |   |   |   |   |   [32] V2 > 48 *
#> |   |   |   |   |   |   [33] V2 > 55 *
#> |   |   |   |   |   [34] V5 > 9 *
#> |   |   |   |   [35] V2 > 62
#> |   |   |   |   |   [36] V5 <= 8
#> |   |   |   |   |   |   [37] V2 <= 66 *
#> |   |   |   |   |   |   [38] V2 > 66
#> |   |   |   |   |   |   |   [39] V5 <= 7
#> |   |   |   |   |   |   |   |   [40] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [41] V5 > 3 *
#> |   |   |   |   |   |   |   [42] V5 > 7 *
#> |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V2 <= 54
#> |   |   |   |   |   [46] V7 <= 119 *
#> |   |   |   |   |   [47] V7 > 119
#> |   |   |   |   |   |   [48] V7 <= 148 *
#> |   |   |   |   |   |   [49] V7 > 148 *
#> |   |   |   |   [50] V2 > 54
#> |   |   |   |   |   [51] V5 <= 10
#> |   |   |   |   |   |   [52] V7 <= 104 *
#> |   |   |   |   |   |   [53] V7 > 104
#> |   |   |   |   |   |   |   [54] V7 <= 160
#> |   |   |   |   |   |   |   |   [55] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [56] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [57] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [58] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   |   [59] V2 > 60 *
#> |   |   |   |   |   |   |   |   [60] V3 > 10 *
#> |   |   |   |   |   |   |   [61] V7 > 160 *
#> |   |   |   |   |   [62] V5 > 10 *
#> |   |   [63] V2 > 84 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                                 5.0+  32   5      1          0        1   121
#> 2                                 5.0+  34   5      0          5        0   120
#> 3                               180.0+  35   2      0        180        0   121
#> 4                                 2.0+  35   2      1          1        1   112
#> 5                               180.0+  37   9      0        180        1   151
#> 6                               180.0+  38  13      1          0        1   161
#> 7                                115.0  38   2      0        115        0   150
#> 8                                 5.0+  36   5      1          0        1   115
#> 9                               180.0+  33   6      1          1        1   115
#> 10                              180.0+  38  16      1         10        0   160
#> 11                              180.0+  40  12      1          9        0   153
#> 12                                2.0+  40   2      1          1        1   148
#> 13                              180.0+  42   2      0        180        1   100
#> 14                                2.0+  42   2      0          2        0   140
#> 15                              180.0+  40   6      0        180        1   138
#> 16                              180.0+  40  11      1         10        1   120
#> 17                              180.0+  42   2      0        180        0   100
#> 18                                 3.0  43   3      1          0        1   100
#> 19                              180.0+  41   2      1          1        0   166
#> 20                              180.0+  40   1      1          0        1   145
#> 21                              180.0+  43   4      1          0        1   130
#> 22                              180.0+  42   4      0        180        0   162
#> 23                              180.0+  42  15      1         13        1   125
#> 24                              180.0+  42  12      1         10        1   170
#> 25                              180.0+  42   2      0        180        1   124
#> 26                              155.0+  44   5      1          1        0   170
#> 27                              180.0+  45   3      0        180        1   154
#> 28                              180.0+  41  10      1          8        0   150
#> 29                              180.0+  44   3      0        180        0   141
#> 30                              180.0+  41  13      1          1        0   140
#> 31                              180.0+  45   6      0        180        1   170
#> 32                              180.0+  44   2      1          1        1   150
#> 33                              180.0+  43   2      0        180        1   140
#> 34                              180.0+  45   2      0        180        1   140
#> 35                              180.0+  46   2      1          1        0   126
#> 36                              180.0+  47   4      1          3        0   118
#> 37                              180.0+  48  15      0        180        1   160
#> 38                               150.0  45   3      0        150        0   130
#> 39                              180.0+  44   3      1          0        1   180
#> 40                              180.0+  46   7      1          2        0   166
#> 41                              180.0+  43  29      0        180        1   180
#> 42                              180.0+  46  13      1         10        0   100
#> 43                              180.0+  44   0      1          0        1    96
#> 44                              180.0+  43   3      1          0        1   124
#> 45                              180.0+  45   8      1          0        1   117
#> 46                                73.0  49   5      0         73        1   136
#> 47                                5.0+  45   5      0          5        0   141
#> 48                              180.0+  46   6      1          0        1   100
#> 49                              180.0+  47   2      0        180        0   108
#> 50                              180.0+  44   9      1          8        1   135
#> 51                              180.0+  45   5      0        180        1   190
#> 52                                5.0+  46   5      1          3        0   130
#> 53                              180.0+  46   4      0        180        1   121
#> 54                              180.0+  44   2      0        180        0   142
#> 55                              180.0+  46  15      0        180        1   120
#> 56                              177.0+  45   9      1          0        1   145
#> 57                              180.0+  47   3      1          1        1   120
#> 58                              180.0+  48   3      0        180        0   154
#> 59                              180.0+  48  12      1         11        0   200
#> 60                              180.0+  47   5      1          3        1   130
#> 61                              180.0+  46   3      1          0        1   119
#> 62                              172.0+  50   1      1          0        1   129
#> 63                              180.0+  48   2      1          0        0   184
#> 64                              180.0+  47   7      0        180        0   145
#> 65                                 7.0  49   7      1          7        1   110
#> 66                              180.0+  46   3      1          1        1   140
#> 67                              180.0+  50   7      0        180        1   110
#> 68                                 2.0  49   2      0          2        0   105
#> 69                              179.0+  49  15      1         11        1   160
#> 70                              180.0+  47   2      0        180        0   150
#> 71                              179.0+  49  23      0        179        1   112
#> 72                              180.0+  46   6      1          0        1   156
#> 73                              180.0+  52   2      0        180        1   170
#> 74                                4.0+  50   4      0          4        1   100
#> 75                              180.0+  51   3      1          2        0   113
#> 76                              180.0+  50   1      1          0        0   150
#> 77                              180.0+  49   7      1          4        1    90
#> 78                              180.0+  47   8      0        180        0   160
#> 79                              180.0+  52   2      0        180        0   155
#> 80                                 7.0  48   7      1          0        1   110
#> 81                               88.0+  48  17      1         10        0   111
#> 82                                4.0+  52   4      1          4        0   152
#> 83                              180.0+  49   9      1          3        0   102
#> 84                              180.0+  49  15      0        180        1   160
#> 85                              180.0+  53   7      1          0        0   199
#> 86                              180.0+  54   6      1          3        0   129
#> 87                                 5.0  50   2      0          5        1   106
#> 88                              180.0+  50  10      1          6        0   122
#> 89                              180.0+  50  14      1         13        0   170
#> 90                              180.0+  53   8      1          7        0   160
#> 91                              180.0+  48   3      1          2        0   150
#> 92                              180.0+  51  25      1          1        0   202
#> 93                              180.0+  49   5      1          2        1   150
#> 94                                4.0+  53   4      0          4        0   140
#> 95                              180.0+  48  11      1         10        0   120
#> 96                              166.0+  53   4      1          0        1   156
#> 97                                99.0  51  13      0         99        1   160
#> 98                              180.0+  54   9      1          0        1   138
#> 99                              180.0+  55   3      1          1        0   150
#> 100                             152.0+  54  23      1         10        0   131
#> 101                               6.0+  55   6      1          2        1   114
#> 102                             180.0+  55   4      1          2        0   150
#> 103                             180.0+  52   4      0        180        1   180
#> 104                              13.0+  51  13      1         11        0   145
#> 105                             171.0+  50   5      1          4        1   150
#> 106                             180.0+  54   4      1          0        1   121
#> 107                             174.0+  50   3      0        174        1   153
#> 108                               28.0  55  28      1         13        1   160
#> 109                               6.0+  49   6      1          0        1   130
#> 110                               9.0+  53   9      0          9        1    95
#> 111                             180.0+  53   8      1          0        1   130
#> 112                             180.0+  50   7      1          0        1   127
#> 113                             180.0+  56   4      1          1        1   130
#> 114                             175.0+  52   5      0        175        1   117
#> 115                             180.0+  55   1      0        180        0   127
#> 116                                2.0  55   2      0          2        0   145
#> 117                             180.0+  56   3      0        180        1   193
#> 118                             180.0+  56   2      0        180        0   132
#> 119                             180.0+  55   5      1          4        1   120
#> 120                             180.0+  52   8      0        180        0   119
#> 121                             180.0+  54   3      0        180        1   180
#> 122                              16.0+  52  16      0         16        0   152
#> 123                             180.0+  53  10      1          9        0   172
#> 124                               16.0  52  16      1         14        0   170
#> 125                              15.0+  53  15      0         15        1    90
#> 126                             180.0+  53   4      0        180        1   150
#> 127                             180.0+  55   6      0        180        1   100
#> 128                             134.0+  55   2      0        134        1   140
#> 129                             180.0+  54   3      0        180        0   128
#> 130                                8.0  56   3      0          8        1   139
#> 131                               3.0+  57   3      0          3        0   120
#> 132                             180.0+  54   7      1          2        0   129
#> 133                             180.0+  54   2      1          1        0   135
#> 134                             180.0+  52   9      1          3        0   170
#> 135                             180.0+  54   2      1          1        1   176
#> 136                              140.0  57   5      1          3        1   138
#> 137                             180.0+  57   1      0        180        1   156
#> 138                              165.0  56   4      1          0        1   140
#> 139                             180.0+  52   2      0        180        0   140
#> 140                             180.0+  52  15      1         14        0   130
#> 141                             180.0+  54   5      0        180        1   108
#> 142                                0.5  57   0      0          0        1   150
#> 143                             180.0+  53  21      1         13        1   130
#> 144                             180.0+  59   3      1          1        0   172
#> 145                               15.0  55   9      1          2        1   147
#> 146                             166.0+  55  13      0        166        1   140
#> 147                               5.0+  56   5      0          5        1   150
#> 148                             180.0+  54  23      1          8        0   120
#> 149                               4.0+  57   4      1          2        1   185
#> 150                             147.0+  53   4      0        147        1   145
#> 151                             180.0+  53   7      1          0        1   120
#> 152                             180.0+  57  11      1         10        1   129
#> 153                               4.0+  56   4      0          4        0   164
#> 154                                1.0  58   1      1          1        1   200
#> 155                             180.0+  55   5      1          0        0   140
#> 156                             180.0+  56   7      1          5        1   120
#> 157                             180.0+  59   9      1          1        1   125
#> 158                                2.0  57   2      0          2        1   120
#> 159                             180.0+  60   5      1          1        0   138
#> 160                             180.0+  57   5      0        180        1   130
#> 161                               64.0  59   6      1          0        1   140
#> 162                             180.0+  59   5      0        180        1   155
#> 163                             180.0+  58  26      1          0        1   189
#> 164                               9.0+  61   9      0          9        1   160
#> 165                                0.5  60   0      1          0        1    80
#> 166                             180.0+  59   2      1          1        0   140
#> 167                             171.0+  58  14      1          6        0   190
#> 168                             180.0+  61   4      1          3        0   151
#> 169                                3.0  61   3      1          2        1   102
#> 170                             180.0+  61  20      1         13        0   130
#> 171                             180.0+  57  13      1         10        0   110
#> 172                             180.0+  57   2      1          0        1   116
#> 173                              10.0+  58  10      0         10        1   150
#> 174                             180.0+  57   4      1          3        0   138
#> 175                             180.0+  57  11      0        180        1   150
#> 176                               17.0  61   3      0         17        0   143
#> 177                               45.0  56  14      0         45        0   130
#> 178                               3.0+  57   3      1          2        0   120
#> 179                               19.0  58  19      1         13        1   140
#> 180                             180.0+  56  13      1          6        1   158
#> 181                               9.0+  59   9      1          0        1    80
#> 182                             172.0+  60  12      1          0        1   114
#> 183                               24.0  55   9      1          7        1   135
#> 184                             180.0+  61   4      1          0        1   115
#> 185                             180.0+  59  11      1          8        1   190
#> 186                               1.0+  57   1      0          1        0   126
#> 187                               15.0  57  15      1         13        1   110
#> 188                             180.0+  59   5      1          2        0   182
#> 189                             180.0+  58   5      1          1        1   135
#> 190                               77.0  61   8      0         77        0   120
#> 191                              13.0+  61  13      0         13        0   210
#> 192                               8.0+  58   8      1          5        0   152
#> 193                             180.0+  57   3      1          0        0   100
#> 194                              170.0  61  18      0        170        0   140
#> 195                             180.0+  58   8      1          3        1   150
#> 196                              169.0  57   7      0        169        0   180
#> 197                                7.0  61   7      0          7        1   150
#> 198                               7.0+  60   7      0          7        0   147
#> 199                             180.0+  57  12      1          9        1   120
#> 200                             180.0+  60  17      1          8        1   140
#> 201                               3.0+  58   3      1          0        1   146
#> 202                             180.0+  62   4      1          3        0   173
#> 203                               30.0  58   2      0         30        0   202
#> 204                             180.0+  59  16      1          9        1   133
#> 205                               28.0  63   6      0         28        1   120
#> 206                                5.0  61   5      0          5        1   110
#> 207                               18.0  57  18      1          9        1    93
#> 208                               5.0+  61   5      0          5        1   160
#> 209                             180.0+  58  11      1          9        0   179
#> 210                             180.0+  57   2      1          1        0   159
#> 211                                1.0  62   1      1          0        1   172
#> 212                             180.0+  58   7      0        180        1   150
#> 213                             180.0+  61   7      0        180        0   135
#> 214                             180.0+  62   3      0        180        1   105
#> 215                             180.0+  63   4      0        180        1   190
#> 216                             180.0+  63  15      1         10        1   126
#> 217                             180.0+  64   4      0        180        0   130
#> 218                               4.0+  63   4      1          1        0   155
#> 219                             180.0+  61   9      1          9        1   150
#> 220                               7.0+  62   7      0          7        0   150
#> 221                               22.0  59   1      0         22        1   162
#> 222                             180.0+  58   2      0        180        0   127
#> 223                               84.0  60   7      1          5        1   141
#> 224                             180.0+  59   5      1          1        0   148
#> 225                             180.0+  60   7      1          1        1    90
#> 226                             180.0+  65  13      0        180        1   100
#> 227                                1.0  63   1      0          1        0   130
#> 228                             180.0+  62   6      0        180        0   170
#> 229                             180.0+  61  15      1         13        0   170
#> 230                               4.0+  59   4      0          4        0   149
#> 231                              167.0  64  10      1          9        0   160
#> 232                               6.0+  62   6      0          6        0   120
#> 233                             180.0+  59  10      0        180        1   130
#> 234                             180.0+  61   6      1          1        1   117
#> 235                               12.0  64  12      1         11        0   160
#> 236                             180.0+  66   1      1          0        1   120
#> 237                             180.0+  64   6      1          0        1   140
#> 238                             180.0+  63  10      1          0        1   148
#> 239                              14.0+  63  14      1          9        0   123
#> 240                             180.0+  63   4      1          3        0   162
#> 241                               3.0+  66   3      1          1        0   127
#> 242                               88.0  61  10      1          2        1   194
#> 243                             180.0+  64  32      1          9        1   160
#> 244                               12.0  63  12      1          9        0   114
#> 245                             180.0+  63   7      0        180        0   120
#> 246                             180.0+  66   5      1          0        1   110
#> 247                             180.0+  65  10      1          8        1   120
#> 248                                0.5  64   0      0          0        1    90
#> 249                              12.0+  61  12      1         11        0   154
#> 250                             180.0+  61   4      0        180        1   113
#> 251                             180.0+  65   3      0        180        1   190
#> 252                             180.0+  64   7      0        180        1   120
#> 253                             180.0+  66   6      1          1        1   130
#> 254                               12.0  63  12      0         12        1   150
#> 255                             180.0+  62   3      1          1        1   199
#> 256                                9.0  65   6      0          9        0   112
#> 257                                3.0  65   3      1          0        1    80
#> 258                             180.0+  63   5      1          4        0   170
#> 259                               2.0+  64   2      0          2        0   201
#> 260                              18.0+  66  18      1          5        0   142
#> 261                             180.0+  66  16      1         11        1   169
#> 262                             180.0+  62   9      0        180        0   145
#> 263                             180.0+  61  14      1          5        0   140
#> 264                             180.0+  63   9      1          8        1   160
#> 265                               3.0+  63   3      1          2        0   120
#> 266                               15.0  65   8      1          0        1   140
#> 267                             180.0+  67   6      0        180        1   170
#> 268                             180.0+  65  15      1         11        1   160
#> 269                               13.0  64  13      1         12        1   150
#> 270                             179.0+  66   7      1          0        1   115
#> 271                             166.0+  66  13      1          0        0   118
#> 272                             180.0+  67   4      1          3        0   130
#> 273                               3.0+  66   3      1          0        1   135
#> 274                             180.0+  66   6      1          0        1   140
#> 275                             175.0+  65   2      1          1        1   170
#> 276                             180.0+  68   1      0        180        1   166
#> 277                             180.0+  64  10      1          9        1   110
#> 278                                5.0  68   5      0          5        1    90
#> 279                               16.0  63  10      0         16        1   160
#> 280                             180.0+  66  14      0        180        0   130
#> 281                             180.0+  68  18      0        180        1   260
#> 282                             180.0+  65  17      1         14        1   100
#> 283                             123.0+  65  18      1          3        0   120
#> 284                               1.0+  63   1      1          0        1   155
#> 285                              11.0+  67  11      0         11        0   150
#> 286                             180.0+  68  11      0        180        0   160
#> 287                               79.0  68  14      0         79        0   172
#> 288                               80.0  66  12      1         10        1   150
#> 289                             180.0+  66  11      1          0        0   100
#> 290                               4.0+  65   4      1          2        1   145
#> 291                             180.0+  66  15      1         13        1   160
#> 292                             180.0+  63   2      0        180        0   150
#> 293                             180.0+  65  11      1          6        0   130
#> 294                             180.0+  69   6      0        180        1   100
#> 295                             180.0+  66   9      1          8        0   130
#> 296                             180.0+  63   8      0        180        1   120
#> 297                               8.0+  65   8      1          0        1    90
#> 298                                3.0  66   3      0          3        1   138
#> 299                              175.0  69   1      1          0        0   170
#> 300                             180.0+  67   1      0        180        1   160
#> 301                             180.0+  65   1      1          0        0   133
#> 302                             180.0+  67   7      1          4        1   130
#> 303                             180.0+  63   2      1          0        0    99
#> 304                             180.0+  67   2      0        180        0   184
#> 305                                6.0  65   6      0          6        0    80
#> 306                             180.0+  65  10      1          1        1   148
#> 307                               12.0  67  12      1         12        0   160
#> 308                               99.0  69   6      0         99        1   140
#> 309                             180.0+  65   4      1          1        0   130
#> 310                             180.0+  70  15      1         12        1   132
#> 311                             180.0+  64   4      0        180        1   140
#> 312                               7.0+  66   7      1          5        1   131
#> 313                             180.0+  66   4      0        180        0   177
#> 314                             180.0+  68   4      1          0        1   160
#> 315                             152.0+  69   4      1          3        1   150
#> 316                             180.0+  69  17      1         10        0   140
#> 317                               93.0  69   8      0         93        0   140
#> 318                              21.0+  64  21      0         21        1   155
#> 319                                1.0  65   1      0          1        1   120
#> 320                              18.0+  68  18      1          0        1   160
#> 321                               7.0+  70   7      1          0        1   190
#> 322                              150.0  68   7      0        150        0   210
#> 323                             180.0+  71  20      1          0        1   160
#> 324                                1.0  66   1      1          1        1   165
#> 325                             180.0+  69   8      0        180        1   153
#> 326                             180.0+  66   4      0        180        0   130
#> 327                             174.0+  67  10      1          9        0   200
#> 328                                0.5  69   0      0          0        1   148
#> 329                             180.0+  68   7      1          0        1   150
#> 330                             180.0+  69   3      1          2        0   151
#> 331                              14.0+  65  14      1         13        1   150
#> 332                               7.0+  71   7      0          7        0   230
#> 333                               5.0+  69   5      0          5        1   142
#> 334                               3.0+  69   3      0          3        1   130
#> 335                               36.0  67   1      0         36        1   104
#> 336                               5.0+  67   5      0          5        0   130
#> 337                             180.0+  69   8      1          5        1   195
#> 338                               97.0  69   6      1          4        1   174
#> 339                             180.0+  72   3      1          0        1   132
#> 340                                7.0  72   7      0          7        1   110
#> 341                               8.0+  69   8      1          7        1   108
#> 342                             180.0+  67   3      0        180        0   110
#> 343                               2.0+  66   2      1          1        0   123
#> 344                             180.0+  69  19      0        180        0   130
#> 345                             180.0+  69  11      1          0        1   120
#> 346                                7.0  67   7      1          4        0   122
#> 347                             180.0+  69   4      1          3        0   132
#> 348                                7.0  68   2      0          7        1   130
#> 349                               8.0+  69   8      1          2        0   121
#> 350                              13.0+  67  13      1          9        0   130
#> 351                              123.0  70   3      0        123        0   130
#> 352                             180.0+  70   9      0        180        1   142
#> 353                             180.0+  72   5      1          4        0   170
#> 354                               51.0  67  22      1          1        1   140
#> 355                             180.0+  67  12      1          8        0   120
#> 356                                1.0  67   1      0          1        1    60
#> 357                               60.0  67   4      0         60        1   136
#> 358                              132.0  72  13      1         11        1   195
#> 359                              10.0+  68  10      1          8        1   160
#> 360                             180.0+  66  24      1         13        0   130
#> 361                             180.0+  70  35      1          0        1   105
#> 362                               7.0+  68   7      1          2        0   135
#> 363                              124.0  73  20      1          0        1   170
#> 364                                9.0  71   6      0          9        0   120
#> 365                             180.0+  69  10      1          6        1   120
#> 366                             180.0+  70  11      0        180        1   210
#> 367                             180.0+  67   8      0        180        1   170
#> 368                                2.0  72   2      0          2        1   100
#> 369                             180.0+  72   6      1          5        0   115
#> 370                             180.0+  68  23      0        180        1   220
#> 371                             180.0+  70   3      0        180        0   121
#> 372                             180.0+  69   3      0        180        0   220
#> 373                             180.0+  71   3      1          2        0   150
#> 374                             180.0+  68   4      1          3        0   210
#> 375                               28.0  72   5      0         28        0   120
#> 376                             180.0+  73   6      0        180        1   117
#> 377                             180.0+  68   7      0        180        1   130
#> 378                              16.0+  72  16      1          1        1   130
#> 379                             180.0+  69   1      1          0        0   155
#> 380                             180.0+  72   8      1          1        1   150
#> 381                               7.0+  73   7      0          7        1   140
#> 382                               15.0  68  15      1         13        1   130
#> 383                              13.0+  70  13      1          9        0   100
#> 384                             180.0+  73   0      0        180        1   161
#> 385                                2.0  69   2      1          0        1   110
#> 386                               3.0+  71   3      1          1        0   150
#> 387                               20.0  74  20      0         20        1   180
#> 388                             180.0+  68   9      0        180        1   120
#> 389                               20.0  71  20      1         10        0   140
#> 390                                0.5  74   0      1          0        1    90
#> 391                             180.0+  70   5      1          0        1   190
#> 392                                8.0  71   8      1          7        0   149
#> 393                               87.0  73  10      1          8        0   106
#> 394                               4.0+  74   4      0          4        0   120
#> 395                               58.0  73   4      0         58        1   160
#> 396                             180.0+  72   5      1          3        1   160
#> 397                             180.0+  70   3      0        180        1   154
#> 398                             180.0+  73   6      0        180        0   110
#> 399                             180.0+  71   7      1          2        0   143
#> 400                             180.0+  72   8      1          0        1   140
#> 401                                3.0  74   3      0          3        1   150
#> 402                             180.0+  73  17      1         11        0   140
#> 403                              175.0  71  13      1          8        0   121
#> 404                              14.0+  71  14      1         13        1   170
#> 405                             180.0+  74   7      1          0        1   117
#> 406                              10.0+  72  10      1          8        1   153
#> 407                             180.0+  69   7      0        180        1   144
#> 408                             180.0+  72  15      1         13        0   156
#> 409                             179.0+  71  10      1          9        1   120
#> 410                                1.0  75   1      0          1        0   133
#> 411                             180.0+  75   2      1          1        0   145
#> 412                             180.0+  73  10      1          9        1   146
#> 413                              159.0  72  10      1          9        1   160
#> 414                               15.0  73  10      1         10        1   120
#> 415                                1.0  73   1      0          1        1    80
#> 416                             180.0+  75   9      1          7        0   140
#> 417                               13.0  75  13      1          1        1   130
#> 418                             180.0+  71  11      1          8        0   110
#> 419                               4.0+  71   4      0          4        0   134
#> 420                             180.0+  72  15      1         12        1   120
#> 421                             104.0+  70   7      1          4        0   184
#> 422                                1.0  72   1      1          1        0   168
#> 423                               57.0  72   7      0         57        1   145
#> 424                             180.0+  73  10      0        180        0   162
#> 425                               3.0+  70   3      0          3        0   150
#> 426                                5.0  73   5      1          3        1   112
#> 427                             180.0+  76  25      1         12        1   170
#> 428                               12.0  73  12      1         12        1   140
#> 429                             180.0+  72   2      0        180        0   120
#> 430                             180.0+  75   1      0        180        1   140
#> 431                             180.0+  71   3      1          0        0   144
#> 432                             180.0+  73   5      0        180        0   126
#> 433                             180.0+  73   4      0        180        0   124
#> 434                             180.0+  76   3      1          0        1   120
#> 435                             180.0+  72   5      0        180        0   154
#> 436                             180.0+  72   3      0        180        0   160
#> 437                                5.0  76   5      0          5        1   130
#> 438                              11.0+  77  11      0         11        1   150
#> 439                               4.0+  77   4      0          4        0   185
#> 440                              15.0+  73  15      0         15        1   160
#> 441                               10.0  73  10      1         10        0   124
#> 442                             180.0+  74   7      0        180        1   150
#> 443                                3.0  74   3      0          3        1   128
#> 444                             180.0+  76   8      1          0        1   141
#> 445                             180.0+  74  19      1          4        1   200
#> 446                                6.0  73   6      0          6        1   114
#> 447                             180.0+  74   2      0        180        0   190
#> 448                               85.0  72   4      0         85        1   120
#> 449                             180.0+  72   4      1          3        0   160
#> 450                             180.0+  73   4      1          3        1   125
#> 451                             174.0+  76  13      1         10        0   110
#> 452                                4.0  75   4      1          0        1   122
#> 453                                7.0  75   7      0          7        0   190
#> 454                                0.5  75   0      0          0        1   130
#> 455                             180.0+  73  13      1         11        0   195
#> 456                             180.0+  74   8      1          0        1   105
#> 457                             180.0+  76  13      1          8        1   148
#> 458                               46.0  75   4      1          2        1   188
#> 459                             180.0+  74   6      0        180        0   160
#> 460                               52.0  73   1      0         52        1   105
#> 461                             180.0+  72   5      0        180        0   120
#> 462                               12.0  78  12      1         11        1   160
#> 463                             180.0+  76  44      1         10        0   105
#> 464                             180.0+  76   5      0        180        0   185
#> 465                             180.0+  74  10      1          0        1   135
#> 466                             180.0+  76   5      1          0        1   167
#> 467                                8.0  74   8      1          8        1   170
#> 468                               33.0  73  33      1         12        1   175
#> 469                             180.0+  77  12      1          9        1   100
#> 470                             180.0+  77  12      0        180        0   130
#> 471                               12.0  76  12      1         11        1   120
#> 472                             180.0+  78   5      1          0        1   170
#> 473                               7.0+  73   7      1          0        0   174
#> 474                                3.0  75   3      1          1        1   171
#> 475                             168.0+  74   9      1          8        0   200
#> 476                             180.0+  79  10      1          8        0   190
#> 477                             180.0+  77   3      0        180        0   110
#> 478                               11.0  73  11      1          2        1   110
#> 479                             180.0+  74   2      0        180        0   100
#> 480                               8.0+  78   8      1          6        1   110
#> 481                             180.0+  76  13      1          1        1   170
#> 482                               32.0  78  32      1          9        1   198
#> 483                              119.0  75   5      0        119        1   150
#> 484                               12.0  75  12      1          1        1   120
#> 485                                8.0  80   8      0          8        1   120
#> 486                             180.0+  75  13      1          6        0   150
#> 487                             180.0+  74  10      1          8        0   135
#> 488                                1.0  76   1      0          1        1    83
#> 489                               80.0  79   4      0         80        0   145
#> 490                             180.0+  78  12      1          9        0   150
#> 491                             180.0+  78   2      1          1        0   130
#> 492                               4.0+  75   4      1          0        0   212
#> 493                                2.0  77   2      1          0        1   143
#> 494                             180.0+  78  10      0        180        1   130
#> 495                             152.0+  75  11      1          4        0   162
#> 496                                3.0  75   3      0          3        0     0
#> 497                               24.0  77  24      0         24        1   160
#> 498                               32.0  79   8      0         32        1   120
#> 499                               23.0  80   9      0         23        1   128
#> 500                               3.0+  76   3      1          0        1   140
#> 501                             180.0+  79  11      0        180        0   160
#> 502                             180.0+  79   2      1          0        1   121
#> 503                             180.0+  78  14      1          0        1   140
#> 504                                1.0  81   1      0          1        0   130
#> 505                                4.0  76   4      0          4        1   160
#> 506                              10.0+  76  10      1          8        0   180
#> 507                             180.0+  76  12      1         10        1   127
#> 508                                6.0  77   6      0          6        1   107
#> 509                               3.0+  80   3      1          0        1   120
#> 510                             180.0+  78  11      0        180        1   135
#> 511                                1.0  76   1      0          1        1   140
#> 512                              171.0  77  31      1          3        1   161
#> 513                                1.0  76   1      0          1        1    90
#> 514                               71.0  77   9      1          4        0   141
#> 515                                8.0  82   5      0          8        1   120
#> 516                               40.0  80  40      1          0        1   138
#> 517                               59.0  78   4      0         59        1   112
#> 518                               17.0  80  17      1         12        0   100
#> 519                              161.0  76   7      0        161        0   151
#> 520                              10.0+  79  10      0         10        1   120
#> 521                               93.0  81   4      1          2        1   126
#> 522                              164.0  79  28      0        164        0   100
#> 523                              118.0  80   9      0        118        1   186
#> 524                              173.0  80   6      0        173        1   160
#> 525                             180.0+  78  32      0        180        1   130
#> 526                             175.0+  81   2      0        175        0   172
#> 527                               7.0+  78   7      0          7        1   147
#> 528                               22.0  77  13      1          0        1   190
#> 529                              15.0+  78  15      0         15        0   165
#> 530                               5.0+  80   5      1          1        1   108
#> 531                             171.0+  78  26      1          5        0   194
#> 532                             166.0+  76   1      0        166        0   131
#> 533                               71.0  81   4      1          1        1   104
#> 534                              20.0+  78  20      1          0        1   109
#> 535                               3.0+  78   3      1          1        1   152
#> 536                               10.0  77  10      1          8        1   130
#> 537                             180.0+  82   3      1          1        1   144
#> 538                               10.0  80   2      1          1        0   168
#> 539                             180.0+  78   2      0        180        0   148
#> 540                             180.0+  77   4      0        180        1    98
#> 541                              125.0  79   1      0        125        0   193
#> 542                             180.0+  82  21      1          2        0   155
#> 543                                4.0  79   4      0          4        1   121
#> 544                                6.0  80   6      0          6        1   110
#> 545                               9.0+  83   9      1          5        1   170
#> 546                             180.0+  82   5      0        180        0   110
#> 547                             180.0+  83   5      0        180        0   148
#> 548                              103.0  83   4      0        103        0    97
#> 549                             180.0+  81  11      1          8        0   160
#> 550                              169.0  80  11      1          8        0   170
#> 551                                4.0  79   4      0          4        1   183
#> 552                             180.0+  82   8      1          1        0   128
#> 553                             180.0+  79   1      0        180        1   170
#> 554                             180.0+  84   5      1          1        1    85
#> 555                             180.0+  80   6      1          0        1   150
#> 556                             180.0+  80  11      1          8        0   110
#> 557                             180.0+  80   8      1          7        0   160
#> 558                                0.5  79   0      1          0        1    96
#> 559                             180.0+  85   4      0        180        0    90
#> 560                             180.0+  81   2      1          1        0   198
#> 561                                2.0  83   2      0          2        1   155
#> 562                              128.0  82   6      0        128        1   100
#> 563                              167.0  84   4      0        167        0   198
#> 564                               3.0+  80   3      1          1        1   230
#> 565                               62.0  82  23      1          0        0   110
#> 566                                4.0  84   4      0          4        1    85
#> 567                             180.0+  83   3      0        180        0   174
#> 568                               90.0  81   4      0         90        1   138
#> 569                             180.0+  79   9      1          8        0   150
#> 570                             180.0+  85   3      1          2        1   160
#> 571                             180.0+  80  13      1          8        1   140
#> 572                                4.0  79   4      0          4        1    60
#> 573                               71.0  80   6      0         71        1   189
#> 574                                1.0  83   1      0          1        1   100
#> 575                               30.0  80  30      1         13        0   220
#> 576                             180.0+  83   9      0        180        0   198
#> 577                             180.0+  79  14      1          0        0   110
#> 578                              114.0  83   3      0        114        0    98
#> 579                             180.0+  81  14      1         12        1   128
#> 580                              154.0  83   2      0        154        0   130
#> 581                                2.0  82   0      0          2        1   100
#> 582                             180.0+  83   1      0        180        0   160
#> 583                               4.0+  81   4      0          4        0   175
#> 584                             180.0+  84  15      1         13        1   110
#> 585                               12.0  81  12      0         12        1   163
#> 586                               4.0+  81   4      0          4        0   160
#> 587                             180.0+  86  12      0        180        1   120
#> 588                               77.0  83  12      1          2        1   170
#> 589                             180.0+  81  19      1         14        0   120
#> 590                                3.0  82   3      1          2        0   130
#> 591                               83.0  82  15      1          0        0   183
#> 592                               88.0  80   2      0         88        0   135
#> 593                              126.0  83   7      0        126        0   135
#> 594                                8.0  86   8      0          8        1   132
#> 595                                3.0  86   3      0          3        1   140
#> 596                             180.0+  82   9      0        180        1   134
#> 597                             180.0+  84   3      0        180        1   120
#> 598                             180.0+  81  13      0        180        0   152
#> 599                             180.0+  81   2      1          0        1   118
#> 600                             180.0+  81   4      0        180        0   160
#> 601                             180.0+  82   1      0        180        1   193
#> 602                             180.0+  86  12      1          0        1   132
#> 603                              174.0  82  14      1         11        1   103
#> 604                                6.0  86   6      1          0        1   140
#> 605                               70.0  84  16      0         70        1   150
#> 606                               43.0  83  19      0         43        0   150
#> 607                             180.0+  84   3      1          2        0   125
#> 608                             180.0+  86   2      0        180        1   169
#> 609                               14.0  88  14      1          3        1   130
#> 610                               13.0  83  13      1         12        0   170
#> 611                             180.0+  84   7      1          2        0   148
#> 612                             180.0+  87   2      0        180        0   113
#> 613                               92.0  84   9      0         92        1   110
#> 614                             180.0+  84   3      0        180        1   170
#> 615                                4.0  82   4      0          4        0   130
#> 616                              177.0  86  13      0        177        0   163
#> 617                               6.0+  86   6      0          6        1   117
#> 618                               62.0  84  13      0         62        1   100
#> 619                               4.0+  88   4      0          4        0   100
#> 620                                4.0  88   4      0          4        1   115
#> 621                               11.0  86   9      1          7        1   142
#> 622                             180.0+  87   2      0        180        1   130
#> 623                               46.0  86   6      0         46        0   173
#> 624                              115.0  88   3      0        115        0   110
#> 625                               8.0+  87   8      0          8        1   157
#> 626                                4.0  88   4      0          4        0    86
#> 627                               1.0+  87   1      0          1        0   170
#> 628                                8.0  85   8      0          8        1   136
#> 629                              110.0  84   2      0        110        1   174
#> 630                             180.0+  87  15      1          9        1   138
#> 631                               14.0  90  14      0         14        1   100
#> 632                             180.0+  86   4      0        180        1   145
#> 633                                8.0  91   8      0          8        0   100
#> 634                             180.0+  87   2      0        180        0   160
#> 635                               25.0  87   6      1          0        0   125
#> 636                              145.0  91  10      0        145        0   135
#> 637                                3.0  86   3      1          0        1    80
#> 638                               24.0  88   7      0         24        0   119
#> 639                               50.0  88   8      0         50        1   154
#> 640                                4.0  90   4      1          0        0   121
#> 641                                1.0  91   1      0          1        1    74
#> 642                               89.0  90   5      1          0        1   125
#> 643                               75.0  88   3      1          2        0   159
#> 644                                1.0  92   1      0          1        1   167
#> 645                               33.0  91   3      0         33        1   137
#> 646                              158.0  88   5      0        158        0   100
#> 647                               74.0  87   7      0         74        1   105
#> 648                              169.0  91   5      0        169        1   176
#> 649                               52.0  89  52      0         52        1   130
#> 650                                7.0  92   7      0          7        1   110
#> 651                                4.0  89   4      0          4        1   159
#> 652                                0.5  91   0      0          0        0     0
#> 653                             180.0+  89  14      0        180        1    84
#> 654                             180.0+  90  18      0        180        0   188
#> 655                                4.0  91   4      1          0        1   120
#> 656                             180.0+  90  19      1         11        1   129
#> 657                               50.0  94   6      0         50        0    78
#> 658                               1.0+  90   1      0          1        1   118
#> 659                             179.0+  93   8      0        179        1   110
#> 660                               76.0  92   4      0         76        1   149
#> 661                             180.0+  91   1      0        180        0   158
#> 662                               67.0  90   3      0         67        0   162
#> 663                               12.0  96   3      0         12        1    97
#> 664                               26.0  94   3      0         26        1   144
#> 665                               7.0+  91   7      0          7        0   135
#> 666                                0.5  93   0      1          0        1   122
#> 667                               69.0  92   5      0         69        0   139
#> 668                                2.0  92   2      0          2        0   112
#> 669                             180.0+  93   4      0        180        1   135
#> 670                                3.0  96   3      1          0        1   104
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 0
#>  [38] 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 0 0 0 0 1
#>  [75] 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [112] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 1 0 0 1 1 1 0 1 0 1 0 1
#> [149] 1 0 1 1 1 1 0 0 0 0 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [186] 0 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0
#> [223] 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [260] 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 0 0 1 0
#> [297] 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1
#> [334] 1 0 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1
#> [371] 0 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1
#> [408] 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0
#> [445] 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1
#> [482] 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1
#> [519] 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0
#> [556] 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 0
#> [593] 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0
#> [630] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[2]]
#>   [1] 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1
#>  [38] 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1
#>  [75] 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1
#> [112] 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1
#> [149] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 1
#> [186] 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 0 0
#> [223] 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1
#> [260] 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 1
#> [297] 1 1 0 0 0 0 0 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1
#> [334] 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1
#> [371] 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0
#> [408] 1 0 0 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1 1
#> [445] 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1
#> [482] 1 1 0 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 1 0 0 1 0 1
#> [519] 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0
#> [556] 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1
#> [593] 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0
#> [630] 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1
#> [667] 0 0 0 0
#> 
#> $weights[[3]]
#>   [1] 1 1 0 1 0 0 0 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0
#>  [38] 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0
#>  [75] 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0
#> [112] 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1
#> [149] 0 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 1 0
#> [186] 1 0 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [223] 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [260] 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1
#> [297] 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0
#> [334] 0 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [371] 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1
#> [408] 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1
#> [445] 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1
#> [482] 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [519] 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1
#> [556] 1 1 0 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1
#> [593] 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1
#> [630] 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 1 1 0 0 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[4]]
#>   [1] 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1
#>  [38] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 0 0
#>  [75] 0 1 0 1 1 1 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [112] 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [149] 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 1
#> [186] 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 1 1 1 0
#> [223] 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1
#> [260] 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0
#> [297] 1 0 0 0 0 0 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1
#> [334] 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1
#> [371] 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0
#> [408] 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1
#> [445] 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [482] 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 0 1
#> [519] 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [556] 0 0 0 0 1 1 0 1 0 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0
#> [593] 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 1 0 0 1
#> [630] 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[5]]
#>   [1] 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1
#>  [38] 0 1 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0
#>  [75] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0
#> [112] 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [149] 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1
#> [186] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [223] 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1
#> [260] 0 1 1 0 1 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 0 0 1 1 1 1
#> [297] 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [334] 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 0
#> [371] 0 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1
#> [408] 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1
#> [445] 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 0 0
#> [482] 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0
#> [519] 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0 1
#> [556] 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1
#> [593] 0 0 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1
#> [630] 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 1 0 1 0 1 0 1 0 1 0 0 1 0
#> [667] 1 0 0 0
#> 
#> $weights[[6]]
#>   [1] 0 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 0
#>  [38] 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0
#>  [75] 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 1 0 1 0 1 1 0 1
#> [112] 0 0 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0
#> [149] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1
#> [186] 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1
#> [223] 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1
#> [260] 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [297] 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1
#> [334] 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [371] 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0
#> [408] 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1
#> [445] 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0
#> [482] 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1
#> [519] 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0
#> [556] 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 0 1 0 1 0 1
#> [593] 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1
#> [630] 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[7]]
#>   [1] 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1
#>  [38] 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1
#>  [75] 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1
#> [112] 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1
#> [149] 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1
#> [186] 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0
#> [223] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0
#> [260] 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 1 1 1 0 1 0
#> [297] 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1
#> [334] 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 1 0 0 0 0 0 1
#> [371] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1
#> [408] 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1
#> [445] 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1
#> [482] 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0
#> [519] 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0
#> [556] 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0
#> [593] 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1
#> [630] 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[8]]
#>   [1] 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0
#>  [38] 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#>  [75] 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 0 0 1 1
#> [112] 1 1 0 1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0
#> [149] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0
#> [186] 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [223] 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1
#> [260] 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1
#> [297] 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1
#> [334] 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 0
#> [371] 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1
#> [408] 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 1
#> [445] 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0
#> [482] 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1
#> [519] 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1
#> [556] 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1
#> [593] 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1
#> [630] 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[9]]
#>   [1] 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0
#>  [38] 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0
#>  [75] 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1
#> [112] 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [149] 0 0 0 0 1 0 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 0 1 0
#> [186] 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1
#> [223] 1 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [260] 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 1
#> [297] 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1
#> [334] 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0
#> [371] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0
#> [408] 0 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1
#> [445] 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0
#> [482] 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 0
#> [519] 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1
#> [556] 0 0 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0
#> [593] 1 1 0 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0
#> [630] 1 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[10]]
#>   [1] 1 1 0 1 0 1 0 0 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0
#>  [38] 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0
#>  [75] 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [112] 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1
#> [149] 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [186] 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 0 0
#> [223] 0 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1
#> [260] 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0
#> [297] 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [334] 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1
#> [371] 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1
#> [408] 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1
#> [445] 1 0 1 0 0 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1
#> [482] 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [519] 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 0
#> [556] 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 0
#> [593] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 1 1
#> [630] 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[11]]
#>   [1] 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1
#>  [38] 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1
#>  [75] 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1 0
#> [112] 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1
#> [149] 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1
#> [186] 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0
#> [223] 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 0 0 1
#> [260] 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0
#> [297] 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1
#> [334] 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1
#> [371] 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1
#> [408] 1 1 1 1 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1
#> [445] 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1
#> [482] 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0
#> [519] 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0
#> [556] 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [593] 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1
#> [630] 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[12]]
#>   [1] 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1
#>  [38] 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 0
#>  [75] 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 0 0 0 0
#> [112] 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1
#> [149] 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [186] 1 1 0 0 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1
#> [223] 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1
#> [260] 0 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0
#> [297] 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [334] 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1
#> [371] 0 0 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0
#> [408] 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1
#> [445] 1 1 0 1 0 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1
#> [482] 1 0 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1
#> [519] 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1
#> [556] 0 0 0 0 0 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 0 0 1
#> [593] 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1
#> [630] 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[13]]
#>   [1] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1
#>  [38] 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0
#>  [75] 0 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1
#> [112] 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 0 1 1 1
#> [149] 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1
#> [186] 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1
#> [223] 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1
#> [260] 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1
#> [297] 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1
#> [334] 1 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0
#> [371] 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [408] 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1
#> [445] 0 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0
#> [482] 1 0 0 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1
#> [519] 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1
#> [556] 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0
#> [593] 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0
#> [630] 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[14]]
#>   [1] 1 1 1 1 1 0 0 1 1 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1
#>  [38] 1 0 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1
#>  [75] 1 1 0 0 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1
#> [112] 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1
#> [149] 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0
#> [186] 1 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0
#> [223] 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [260] 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1
#> [297] 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [334] 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [371] 0 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1
#> [408] 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1
#> [445] 1 0 0 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 0 1 1 1
#> [482] 1 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0
#> [519] 0 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [556] 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1
#> [593] 1 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1
#> [630] 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1
#> [667] 0 0 0 1
#> 
#> $weights[[15]]
#>   [1] 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1
#>  [38] 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0
#>  [75] 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1
#> [112] 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 0
#> [149] 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0
#> [186] 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1
#> [223] 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 0 1 0 0 1
#> [260] 1 0 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 0 1 1
#> [297] 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [334] 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1
#> [371] 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [408] 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 0
#> [445] 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 0
#> [482] 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1
#> [519] 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1
#> [556] 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1
#> [593] 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1
#> [630] 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1
#> [667] 0 1 0 1
#> 
#> $weights[[16]]
#>   [1] 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1
#>  [38] 1 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 0
#>  [75] 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 1 0 0 0 1 1 0
#> [112] 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 0 1 1 0
#> [149] 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1
#> [186] 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1
#> [223] 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1
#> [260] 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1
#> [297] 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0
#> [334] 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1
#> [371] 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [408] 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [445] 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [482] 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 1
#> [519] 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [556] 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0
#> [593] 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [630] 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [667] 0 0 0 0
#> 
#> $weights[[17]]
#>   [1] 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 0
#>  [38] 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1
#>  [75] 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 0
#> [112] 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0
#> [149] 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1
#> [186] 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0
#> [223] 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [260] 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0
#> [297] 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0
#> [334] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0
#> [371] 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 0 1 0 0 1 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1
#> [408] 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 1 1 0 0 0 1 1
#> [445] 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0
#> [482] 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1
#> [519] 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0
#> [556] 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0
#> [593] 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 1
#> [630] 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[18]]
#>   [1] 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#>  [38] 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1
#>  [75] 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1
#> [112] 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1
#> [149] 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [186] 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 0
#> [223] 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1
#> [260] 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1
#> [297] 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 0
#> [334] 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0
#> [371] 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1
#> [408] 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1
#> [445] 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1
#> [482] 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1
#> [519] 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1
#> [556] 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1
#> [593] 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [630] 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[19]]
#>   [1] 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1
#>  [38] 0 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0
#>  [75] 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1
#> [112] 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0
#> [149] 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 0 1 1
#> [186] 0 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0
#> [223] 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1
#> [260] 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 0 0 1 1 1 0 1
#> [297] 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1
#> [334] 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 1 1 1 0 1
#> [371] 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0
#> [408] 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1
#> [445] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1
#> [482] 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [519] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1
#> [556] 0 1 0 0 1 0 0 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1
#> [593] 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1
#> [630] 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 0 0 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[20]]
#>   [1] 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1
#>  [38] 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#>  [75] 0 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1
#> [112] 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1
#> [149] 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [186] 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1
#> [223] 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0
#> [260] 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 0 1 1
#> [297] 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0
#> [334] 1 0 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [371] 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0
#> [408] 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1
#> [445] 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 0 1 1 0
#> [482] 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1 0
#> [519] 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1
#> [556] 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 0 1 0 0 1
#> [593] 1 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1
#> [630] 0 1 1 1 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[21]]
#>   [1] 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0
#>  [38] 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1
#>  [75] 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1
#> [112] 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1
#> [149] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1
#> [186] 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1
#> [223] 0 0 0 0 1 0 1 0 0 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0
#> [260] 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1
#> [297] 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1
#> [334] 0 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [371] 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1
#> [408] 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [445] 1 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [482] 0 1 0 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1
#> [519] 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [556] 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 0 1
#> [593] 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1
#> [630] 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0
#> [667] 0 0 1 1
#> 
#> $weights[[22]]
#>   [1] 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1
#>  [38] 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 0 1
#>  [75] 0 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0
#> [112] 1 1 1 1 1 0 1 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0
#> [149] 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0
#> [186] 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1
#> [223] 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1
#> [260] 1 0 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0
#> [297] 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [334] 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1
#> [371] 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0
#> [408] 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0
#> [445] 1 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1
#> [482] 1 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1
#> [519] 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1
#> [556] 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [593] 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0
#> [630] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 0 0 0 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[23]]
#>   [1] 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1
#>  [38] 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 0
#>  [75] 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 0
#> [112] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 0 1
#> [149] 1 0 1 0 0 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0
#> [186] 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1
#> [223] 1 0 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0
#> [260] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 0 0 0 0
#> [297] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 0 1 0
#> [334] 0 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [371] 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 0 1 0 1 1 0 1 0 0
#> [408] 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [445] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0
#> [482] 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [519] 1 1 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1
#> [556] 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 0 1 1 1 0
#> [593] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1
#> [630] 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 1 0
#> [667] 0 1 0 1
#> 
#> $weights[[24]]
#>   [1] 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 0
#>  [38] 0 1 0 0 1 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1
#>  [75] 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1
#> [112] 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [149] 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 0 0 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1
#> [186] 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [223] 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1
#> [260] 1 0 1 0 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 0
#> [297] 0 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1
#> [334] 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1
#> [371] 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1 1 0
#> [408] 1 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 1 1
#> [445] 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [482] 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0
#> [519] 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0
#> [556] 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0
#> [593] 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 0 1 0 0 1 0
#> [630] 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[25]]
#>   [1] 1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#>  [38] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 0 1
#>  [75] 1 0 1 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1
#> [112] 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1
#> [149] 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 1 0 0 1
#> [186] 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 0
#> [223] 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1
#> [260] 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1
#> [297] 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1
#> [334] 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0
#> [371] 0 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1
#> [408] 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0 0 1 1 1 1
#> [445] 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1
#> [482] 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [519] 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0
#> [556] 0 1 0 0 0 0 1 0 0 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1
#> [593] 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0
#> [630] 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[26]]
#>   [1] 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1
#>  [38] 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0
#>  [75] 1 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 0 1 0 1
#> [112] 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [149] 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [186] 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0
#> [223] 0 0 0 0 0 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1
#> [260] 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [297] 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0
#> [334] 0 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [371] 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1
#> [408] 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0
#> [445] 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 0
#> [482] 0 0 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1
#> [519] 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1
#> [556] 0 1 0 0 0 1 0 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0
#> [593] 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1
#> [630] 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 0 1 0 0 0
#> [667] 0 1 1 1
#> 
#> $weights[[27]]
#>   [1] 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 0 0 1 1 1
#>  [38] 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 0
#>  [75] 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0
#> [112] 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0
#> [149] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [186] 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 1
#> [223] 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [260] 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1
#> [297] 0 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1
#> [334] 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1
#> [371] 0 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 0 1
#> [408] 1 0 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1 0
#> [445] 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [482] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1
#> [519] 1 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1
#> [556] 0 1 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1
#> [593] 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1
#> [630] 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[28]]
#>   [1] 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0
#>  [38] 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1
#>  [75] 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 1 0 1
#> [112] 0 0 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1
#> [149] 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 1 1
#> [186] 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 0 1 0 0 0 1 0 1 0 0 1
#> [223] 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1
#> [260] 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0
#> [297] 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1
#> [334] 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0
#> [371] 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0
#> [408] 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1
#> [445] 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1
#> [482] 1 1 0 0 1 0 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1
#> [519] 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [556] 0 1 1 1 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1
#> [593] 0 0 1 1 1 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0
#> [630] 1 1 1 0 1 0 1 1 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1
#> [667] 0 0 0 1
#> 
#> $weights[[29]]
#>   [1] 1 0 0 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1
#>  [38] 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1
#>  [75] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0 0 1 1
#> [112] 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 0
#> [149] 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0
#> [186] 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [223] 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 1 1 0 0 0
#> [260] 0 1 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [297] 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0
#> [334] 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 0
#> [371] 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [408] 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 0 0
#> [445] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0
#> [482] 0 1 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1 0 0 1 1
#> [519] 1 1 0 0 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1
#> [556] 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1
#> [593] 1 1 1 0 0 0 1 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1
#> [630] 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[30]]
#>   [1] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0
#>  [38] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1
#>  [75] 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0
#> [112] 0 1 0 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0
#> [149] 1 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 0 0 1 0 1 1
#> [186] 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1 0 0
#> [223] 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1
#> [260] 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1
#> [334] 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1
#> [371] 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 1 1
#> [408] 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0
#> [445] 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [482] 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1
#> [519] 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0
#> [556] 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [593] 0 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 0 1 0 1 1 1 0 0
#> [630] 0 0 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[31]]
#>   [1] 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0
#>  [38] 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0
#>  [75] 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0
#> [112] 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [149] 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1
#> [186] 0 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0
#> [223] 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1
#> [260] 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [297] 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0
#> [334] 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1
#> [371] 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1
#> [408] 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 0 0 1 1
#> [445] 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1
#> [482] 1 0 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1
#> [519] 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 0
#> [556] 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 0 1 1 1 0 0 0
#> [593] 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1
#> [630] 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[32]]
#>   [1] 1 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#>  [38] 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1
#>  [75] 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 1
#> [112] 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [149] 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1
#> [186] 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1
#> [223] 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [260] 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [297] 0 1 0 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0
#> [334] 0 0 0 0 1 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1
#> [371] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1
#> [408] 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0
#> [445] 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1
#> [482] 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1
#> [519] 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1
#> [556] 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0
#> [593] 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1
#> [630] 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[33]]
#>   [1] 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1
#>  [38] 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1
#>  [75] 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0
#> [112] 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1
#> [149] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1
#> [186] 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1
#> [223] 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 0 1
#> [260] 1 0 0 0 0 0 1 1 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 0
#> [297] 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 0 1
#> [334] 0 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1
#> [371] 1 0 1 0 0 1 1 0 0 0 0 1 1 0 0 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1
#> [408] 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [445] 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0
#> [482] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [519] 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1
#> [556] 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [593] 0 1 0 0 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [630] 0 1 1 0 0 0 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[34]]
#>   [1] 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1
#>  [38] 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1
#>  [75] 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1
#> [112] 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1
#> [186] 1 0 0 1 0 0 0 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0
#> [223] 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1
#> [260] 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [297] 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1
#> [334] 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1
#> [371] 1 0 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [408] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 0 1
#> [445] 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 0
#> [482] 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1
#> [519] 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1
#> [556] 0 1 1 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1
#> [593] 1 0 1 1 0 0 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1
#> [630] 0 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[35]]
#>   [1] 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1
#>  [38] 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0
#>  [75] 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1
#> [112] 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1
#> [149] 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0
#> [186] 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 1 1
#> [223] 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1
#> [260] 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0
#> [297] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1
#> [334] 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 1 0 1 0 0 1 0 1 1 0
#> [371] 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1
#> [408] 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1
#> [445] 0 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 0
#> [482] 1 0 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 0 0
#> [519] 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1
#> [556] 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [593] 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1
#> [630] 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[36]]
#>   [1] 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 1
#>  [38] 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1
#>  [75] 0 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [112] 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1
#> [149] 0 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1
#> [186] 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1 0
#> [223] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0
#> [260] 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 1
#> [297] 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 1 0 0 0 1 0 0 1 0 0 1 1
#> [371] 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 0 1 0 1
#> [408] 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1
#> [445] 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1
#> [482] 0 0 1 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [519] 1 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1
#> [556] 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 0 1
#> [593] 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0
#> [630] 1 1 0 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[37]]
#>   [1] 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0
#>  [38] 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 0 1 0
#>  [75] 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0
#> [112] 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0
#> [149] 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [186] 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1
#> [223] 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1
#> [260] 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0
#> [297] 1 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0
#> [334] 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1
#> [371] 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0
#> [408] 1 1 0 1 0 0 0 0 0 0 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 0 0 0 0 1 0
#> [445] 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [482] 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1
#> [519] 1 1 0 1 0 0 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1
#> [556] 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0
#> [593] 1 1 0 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1
#> [630] 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[38]]
#>   [1] 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 0
#>  [38] 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 1 0 0
#>  [75] 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1
#> [112] 0 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [149] 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 0 0 0
#> [186] 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1
#> [223] 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1
#> [260] 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1
#> [297] 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1 0 1 1
#> [334] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1
#> [371] 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0
#> [408] 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1
#> [445] 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0
#> [482] 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1
#> [519] 0 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1
#> [556] 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1
#> [593] 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1
#> [630] 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[39]]
#>   [1] 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1
#>  [38] 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1
#>  [75] 1 0 0 0 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1
#> [112] 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1 0
#> [149] 0 1 1 0 0 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1
#> [186] 0 0 0 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1
#> [223] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0
#> [260] 1 0 1 1 1 1 0 0 0 0 1 0 0 1 1 0 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1
#> [297] 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 0
#> [334] 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [371] 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1
#> [408] 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [445] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0
#> [482] 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0
#> [519] 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0
#> [556] 0 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0
#> [593] 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1
#> [630] 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[40]]
#>   [1] 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1
#>  [38] 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0
#>  [75] 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 0 0
#> [112] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1
#> [149] 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1
#> [186] 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 0 0 0 0 1 1 1
#> [223] 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 1 1 0 1 1 0
#> [260] 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1
#> [297] 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1
#> [334] 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1
#> [371] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1
#> [408] 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1
#> [445] 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 0
#> [482] 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0
#> [519] 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0
#> [556] 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0
#> [593] 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [630] 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[41]]
#>   [1] 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#>  [38] 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1
#>  [75] 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1
#> [112] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1
#> [149] 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1
#> [186] 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1 0 0
#> [223] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1
#> [260] 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0
#> [297] 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1
#> [334] 0 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0
#> [371] 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1
#> [408] 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1
#> [445] 1 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1
#> [482] 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1
#> [519] 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1
#> [556] 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 0 1 1
#> [593] 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1
#> [630] 1 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[42]]
#>   [1] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0
#>  [38] 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1
#>  [75] 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1
#> [112] 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1
#> [149] 1 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [186] 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1
#> [223] 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0
#> [260] 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1
#> [297] 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0
#> [334] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 1 0 1 1 1 0 1 0 0 0 1 1
#> [371] 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1
#> [408] 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [445] 1 1 0 0 0 0 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1
#> [482] 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1
#> [519] 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 1 1
#> [556] 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0
#> [593] 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 0 1
#> [630] 1 0 1 0 0 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[43]]
#>   [1] 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1
#>  [38] 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 0 1 1 0 0
#>  [75] 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0
#> [112] 1 1 1 0 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1 0
#> [149] 0 1 0 0 1 1 0 0 0 1 0 1 1 0 1 0 0 1 0 0 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 0
#> [186] 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0
#> [223] 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1
#> [260] 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0 0 1 1 0 0
#> [297] 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0
#> [334] 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 0
#> [371] 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 0 1 1
#> [408] 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [445] 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0
#> [482] 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 1 1 1
#> [519] 1 1 1 0 1 0 0 1 0 0 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1
#> [556] 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 0 1 0 0
#> [593] 0 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1
#> [630] 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[44]]
#>   [1] 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#>  [38] 0 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1
#>  [75] 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0
#> [112] 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1
#> [149] 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1
#> [186] 1 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0
#> [223] 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1
#> [260] 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1
#> [297] 0 0 0 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0
#> [334] 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0
#> [371] 0 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 0 0 1 1 1
#> [408] 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1
#> [445] 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#> [482] 1 0 0 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1
#> [519] 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1
#> [556] 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1
#> [593] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1
#> [630] 1 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1
#> [667] 0 0 0 1
#> 
#> $weights[[45]]
#>   [1] 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1
#>  [38] 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 0 0 0
#>  [75] 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0
#> [112] 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [149] 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0
#> [186] 1 1 0 0 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1
#> [223] 1 0 0 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0
#> [260] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0
#> [297] 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 0 0 1 0 1 0 1 1
#> [334] 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1
#> [371] 1 1 0 0 0 0 1 0 0 1 0 0 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1
#> [408] 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1
#> [445] 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1
#> [482] 1 0 0 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1
#> [519] 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1
#> [556] 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1
#> [593] 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0
#> [630] 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[46]]
#>   [1] 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1
#>  [38] 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1
#>  [75] 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1
#> [112] 1 0 0 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 0 0 1 1 0 1 1
#> [149] 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1 0 1 1 0
#> [186] 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0
#> [223] 1 0 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1
#> [260] 0 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0
#> [297] 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [334] 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 0 0 0 0 1 1 0 1 0 0 0 1
#> [371] 0 0 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1
#> [408] 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1
#> [445] 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [482] 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1
#> [519] 1 0 0 1 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1
#> [556] 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0
#> [593] 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0
#> [630] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[47]]
#>   [1] 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1
#>  [38] 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#>  [75] 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [112] 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0
#> [186] 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 0 0 1 1 0 1 0 1 1 1 0 0
#> [223] 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 1 0 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [260] 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0
#> [297] 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 0 1 0 1 0 0
#> [334] 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1
#> [371] 1 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0
#> [408] 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0
#> [445] 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 0
#> [482] 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1
#> [519] 1 0 0 0 1 0 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0
#> [556] 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0
#> [593] 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1
#> [630] 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0
#> [667] 0 1 1 1
#> 
#> $weights[[48]]
#>   [1] 1 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 0 1 0
#>  [38] 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1
#>  [75] 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0
#> [112] 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [149] 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0
#> [186] 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0
#> [223] 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 1 1 1 0 1 1
#> [260] 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1
#> [297] 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0
#> [334] 0 1 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 0 0 0 0 1 1 1
#> [371] 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [408] 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 0 1 0
#> [445] 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1
#> [482] 0 0 0 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1
#> [519] 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [556] 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1
#> [593] 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1
#> [630] 1 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[49]]
#>   [1] 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1
#>  [38] 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0
#>  [75] 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0
#> [112] 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0
#> [149] 1 0 0 0 0 0 0 0 1 1 0 1 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 0 0
#> [186] 1 0 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1
#> [223] 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 0
#> [260] 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [297] 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [334] 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [371] 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0
#> [408] 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [445] 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1
#> [482] 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0
#> [519] 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 0 0 1
#> [556] 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [593] 1 1 1 1 0 1 0 0 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [630] 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 0 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[50]]
#>   [1] 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1
#>  [38] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1
#>  [75] 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [112] 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0
#> [149] 0 0 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1
#> [186] 0 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0
#> [223] 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [260] 1 0 1 0 0 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1
#> [297] 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1
#> [334] 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0
#> [371] 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1
#> [408] 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1
#> [445] 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1
#> [482] 1 1 1 0 1 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1
#> [519] 0 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1
#> [556] 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 0 0
#> [593] 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [630] 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0
#> [667] 1 1 1 1
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
#> 8     8       5.0+
#> 9     9     180.0+
#> 10   10     180.0+
#> 11   11     180.0+
#> 12   12       2.0+
#> 13   13     180.0+
#> 14   14       2.0+
#> 15   15     180.0+
#> 16   16     180.0+
#> 17   17     180.0+
#> 18   18        3.0
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     180.0+
#> 25   25     180.0+
#> 26   26     155.0+
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
#> 38   38      150.0
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44     180.0+
#> 45   45     180.0+
#> 46   46       73.0
#> 47   47       5.0+
#> 48   48     180.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52       5.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     180.0+
#> 56   56     177.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62     172.0+
#> 63   63     180.0+
#> 64   64     180.0+
#> 65   65        7.0
#> 66   66     180.0+
#> 67   67     180.0+
#> 68   68        2.0
#> 69   69     179.0+
#> 70   70     180.0+
#> 71   71     179.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74       4.0+
#> 75   75     180.0+
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80        7.0
#> 81   81      88.0+
#> 82   82       4.0+
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
#> 95   95     180.0+
#> 96   96     166.0+
#> 97   97       99.0
#> 98   98     180.0+
#> 99   99     180.0+
#> 100 100     152.0+
#> 101 101       6.0+
#> 102 102     180.0+
#> 103 103     180.0+
#> 104 104      13.0+
#> 105 105     171.0+
#> 106 106     180.0+
#> 107 107     174.0+
#> 108 108       28.0
#> 109 109       6.0+
#> 110 110       9.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114     175.0+
#> 115 115     180.0+
#> 116 116        2.0
#> 117 117     180.0+
#> 118 118     180.0+
#> 119 119     180.0+
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122      16.0+
#> 123 123     180.0+
#> 124 124       16.0
#> 125 125      15.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128     134.0+
#> 129 129     180.0+
#> 130 130        8.0
#> 131 131       3.0+
#> 132 132     180.0+
#> 133 133     180.0+
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136      140.0
#> 137 137     180.0+
#> 138 138      165.0
#> 139 139     180.0+
#> 140 140     180.0+
#> 141 141     180.0+
#> 142 142        0.5
#> 143 143     180.0+
#> 144 144     180.0+
#> 145 145       15.0
#> 146 146     166.0+
#> 147 147       5.0+
#> 148 148     180.0+
#> 149 149       4.0+
#> 150 150     147.0+
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153       4.0+
#> 154 154        1.0
#> 155 155     180.0+
#> 156 156     180.0+
#> 157 157     180.0+
#> 158 158        2.0
#> 159 159     180.0+
#> 160 160     180.0+
#> 161 161       64.0
#> 162 162     180.0+
#> 163 163     180.0+
#> 164 164       9.0+
#> 165 165        0.5
#> 166 166     180.0+
#> 167 167     171.0+
#> 168 168     180.0+
#> 169 169        3.0
#> 170 170     180.0+
#> 171 171     180.0+
#> 172 172     180.0+
#> 173 173      10.0+
#> 174 174     180.0+
#> 175 175     180.0+
#> 176 176       17.0
#> 177 177       45.0
#> 178 178       3.0+
#> 179 179       19.0
#> 180 180     180.0+
#> 181 181       9.0+
#> 182 182     172.0+
#> 183 183       24.0
#> 184 184     180.0+
#> 185 185     180.0+
#> 186 186       1.0+
#> 187 187       15.0
#> 188 188     180.0+
#> 189 189     180.0+
#> 190 190       77.0
#> 191 191      13.0+
#> 192 192       8.0+
#> 193 193     180.0+
#> 194 194      170.0
#> 195 195     180.0+
#> 196 196      169.0
#> 197 197        7.0
#> 198 198       7.0+
#> 199 199     180.0+
#> 200 200     180.0+
#> 201 201       3.0+
#> 202 202     180.0+
#> 203 203       30.0
#> 204 204     180.0+
#> 205 205       28.0
#> 206 206        5.0
#> 207 207       18.0
#> 208 208       5.0+
#> 209 209     180.0+
#> 210 210     180.0+
#> 211 211        1.0
#> 212 212     180.0+
#> 213 213     180.0+
#> 214 214     180.0+
#> 215 215     180.0+
#> 216 216     180.0+
#> 217 217     180.0+
#> 218 218       4.0+
#> 219 219     180.0+
#> 220 220       7.0+
#> 221 221       22.0
#> 222 222     180.0+
#> 223 223       84.0
#> 224 224     180.0+
#> 225 225     180.0+
#> 226 226     180.0+
#> 227 227        1.0
#> 228 228     180.0+
#> 229 229     180.0+
#> 230 230       4.0+
#> 231 231      167.0
#> 232 232       6.0+
#> 233 233     180.0+
#> 234 234     180.0+
#> 235 235       12.0
#> 236 236     180.0+
#> 237 237     180.0+
#> 238 238     180.0+
#> 239 239      14.0+
#> 240 240     180.0+
#> 241 241       3.0+
#> 242 242       88.0
#> 243 243     180.0+
#> 244 244       12.0
#> 245 245     180.0+
#> 246 246     180.0+
#> 247 247     180.0+
#> 248 248        0.5
#> 249 249      12.0+
#> 250 250     180.0+
#> 251 251     180.0+
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254       12.0
#> 255 255     180.0+
#> 256 256        9.0
#> 257 257        3.0
#> 258 258     180.0+
#> 259 259       2.0+
#> 260 260      18.0+
#> 261 261     180.0+
#> 262 262     180.0+
#> 263 263     180.0+
#> 264 264     180.0+
#> 265 265       3.0+
#> 266 266       15.0
#> 267 267     180.0+
#> 268 268     180.0+
#> 269 269       13.0
#> 270 270     179.0+
#> 271 271     166.0+
#> 272 272     180.0+
#> 273 273       3.0+
#> 274 274     180.0+
#> 275 275     175.0+
#> 276 276     180.0+
#> 277 277     180.0+
#> 278 278        5.0
#> 279 279       16.0
#> 280 280     180.0+
#> 281 281     180.0+
#> 282 282     180.0+
#> 283 283     123.0+
#> 284 284       1.0+
#> 285 285      11.0+
#> 286 286     180.0+
#> 287 287       79.0
#> 288 288       80.0
#> 289 289     180.0+
#> 290 290       4.0+
#> 291 291     180.0+
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294     180.0+
#> 295 295     180.0+
#> 296 296     180.0+
#> 297 297       8.0+
#> 298 298        3.0
#> 299 299      175.0
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302     180.0+
#> 303 303     180.0+
#> 304 304     180.0+
#> 305 305        6.0
#> 306 306     180.0+
#> 307 307       12.0
#> 308 308       99.0
#> 309 309     180.0+
#> 310 310     180.0+
#> 311 311     180.0+
#> 312 312       7.0+
#> 313 313     180.0+
#> 314 314     180.0+
#> 315 315     152.0+
#> 316 316     180.0+
#> 317 317       93.0
#> 318 318      21.0+
#> 319 319        1.0
#> 320 320      18.0+
#> 321 321       7.0+
#> 322 322      150.0
#> 323 323     180.0+
#> 324 324        1.0
#> 325 325     180.0+
#> 326 326     180.0+
#> 327 327     174.0+
#> 328 328        0.5
#> 329 329     180.0+
#> 330 330     180.0+
#> 331 331      14.0+
#> 332 332       7.0+
#> 333 333       5.0+
#> 334 334       3.0+
#> 335 335       36.0
#> 336 336       5.0+
#> 337 337     180.0+
#> 338 338       97.0
#> 339 339     180.0+
#> 340 340        7.0
#> 341 341       8.0+
#> 342 342     180.0+
#> 343 343       2.0+
#> 344 344     180.0+
#> 345 345     180.0+
#> 346 346        7.0
#> 347 347     180.0+
#> 348 348        7.0
#> 349 349       8.0+
#> 350 350      13.0+
#> 351 351      123.0
#> 352 352     180.0+
#> 353 353     180.0+
#> 354 354       51.0
#> 355 355     180.0+
#> 356 356        1.0
#> 357 357       60.0
#> 358 358      132.0
#> 359 359      10.0+
#> 360 360     180.0+
#> 361 361     180.0+
#> 362 362       7.0+
#> 363 363      124.0
#> 364 364        9.0
#> 365 365     180.0+
#> 366 366     180.0+
#> 367 367     180.0+
#> 368 368        2.0
#> 369 369     180.0+
#> 370 370     180.0+
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373     180.0+
#> 374 374     180.0+
#> 375 375       28.0
#> 376 376     180.0+
#> 377 377     180.0+
#> 378 378      16.0+
#> 379 379     180.0+
#> 380 380     180.0+
#> 381 381       7.0+
#> 382 382       15.0
#> 383 383      13.0+
#> 384 384     180.0+
#> 385 385        2.0
#> 386 386       3.0+
#> 387 387       20.0
#> 388 388     180.0+
#> 389 389       20.0
#> 390 390        0.5
#> 391 391     180.0+
#> 392 392        8.0
#> 393 393       87.0
#> 394 394       4.0+
#> 395 395       58.0
#> 396 396     180.0+
#> 397 397     180.0+
#> 398 398     180.0+
#> 399 399     180.0+
#> 400 400     180.0+
#> 401 401        3.0
#> 402 402     180.0+
#> 403 403      175.0
#> 404 404      14.0+
#> 405 405     180.0+
#> 406 406      10.0+
#> 407 407     180.0+
#> 408 408     180.0+
#> 409 409     179.0+
#> 410 410        1.0
#> 411 411     180.0+
#> 412 412     180.0+
#> 413 413      159.0
#> 414 414       15.0
#> 415 415        1.0
#> 416 416     180.0+
#> 417 417       13.0
#> 418 418     180.0+
#> 419 419       4.0+
#> 420 420     180.0+
#> 421 421     104.0+
#> 422 422        1.0
#> 423 423       57.0
#> 424 424     180.0+
#> 425 425       3.0+
#> 426 426        5.0
#> 427 427     180.0+
#> 428 428       12.0
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431     180.0+
#> 432 432     180.0+
#> 433 433     180.0+
#> 434 434     180.0+
#> 435 435     180.0+
#> 436 436     180.0+
#> 437 437        5.0
#> 438 438      11.0+
#> 439 439       4.0+
#> 440 440      15.0+
#> 441 441       10.0
#> 442 442     180.0+
#> 443 443        3.0
#> 444 444     180.0+
#> 445 445     180.0+
#> 446 446        6.0
#> 447 447     180.0+
#> 448 448       85.0
#> 449 449     180.0+
#> 450 450     180.0+
#> 451 451     174.0+
#> 452 452        4.0
#> 453 453        7.0
#> 454 454        0.5
#> 455 455     180.0+
#> 456 456     180.0+
#> 457 457     180.0+
#> 458 458       46.0
#> 459 459     180.0+
#> 460 460       52.0
#> 461 461     180.0+
#> 462 462       12.0
#> 463 463     180.0+
#> 464 464     180.0+
#> 465 465     180.0+
#> 466 466     180.0+
#> 467 467        8.0
#> 468 468       33.0
#> 469 469     180.0+
#> 470 470     180.0+
#> 471 471       12.0
#> 472 472     180.0+
#> 473 473       7.0+
#> 474 474        3.0
#> 475 475     168.0+
#> 476 476     180.0+
#> 477 477     180.0+
#> 478 478       11.0
#> 479 479     180.0+
#> 480 480       8.0+
#> 481 481     180.0+
#> 482 482       32.0
#> 483 483      119.0
#> 484 484       12.0
#> 485 485        8.0
#> 486 486     180.0+
#> 487 487     180.0+
#> 488 488        1.0
#> 489 489       80.0
#> 490 490     180.0+
#> 491 491     180.0+
#> 492 492       4.0+
#> 493 493        2.0
#> 494 494     180.0+
#> 495 495     152.0+
#> 496 496        3.0
#> 497 497       24.0
#> 498 498       32.0
#> 499 499       23.0
#> 500 500       3.0+
#> 501 501     180.0+
#> 502 502     180.0+
#> 503 503     180.0+
#> 504 504        1.0
#> 505 505        4.0
#> 506 506      10.0+
#> 507 507     180.0+
#> 508 508        6.0
#> 509 509       3.0+
#> 510 510     180.0+
#> 511 511        1.0
#> 512 512      171.0
#> 513 513        1.0
#> 514 514       71.0
#> 515 515        8.0
#> 516 516       40.0
#> 517 517       59.0
#> 518 518       17.0
#> 519 519      161.0
#> 520 520      10.0+
#> 521 521       93.0
#> 522 522      164.0
#> 523 523      118.0
#> 524 524      173.0
#> 525 525     180.0+
#> 526 526     175.0+
#> 527 527       7.0+
#> 528 528       22.0
#> 529 529      15.0+
#> 530 530       5.0+
#> 531 531     171.0+
#> 532 532     166.0+
#> 533 533       71.0
#> 534 534      20.0+
#> 535 535       3.0+
#> 536 536       10.0
#> 537 537     180.0+
#> 538 538       10.0
#> 539 539     180.0+
#> 540 540     180.0+
#> 541 541      125.0
#> 542 542     180.0+
#> 543 543        4.0
#> 544 544        6.0
#> 545 545       9.0+
#> 546 546     180.0+
#> 547 547     180.0+
#> 548 548      103.0
#> 549 549     180.0+
#> 550 550      169.0
#> 551 551        4.0
#> 552 552     180.0+
#> 553 553     180.0+
#> 554 554     180.0+
#> 555 555     180.0+
#> 556 556     180.0+
#> 557 557     180.0+
#> 558 558        0.5
#> 559 559     180.0+
#> 560 560     180.0+
#> 561 561        2.0
#> 562 562      128.0
#> 563 563      167.0
#> 564 564       3.0+
#> 565 565       62.0
#> 566 566        4.0
#> 567 567     180.0+
#> 568 568       90.0
#> 569 569     180.0+
#> 570 570     180.0+
#> 571 571     180.0+
#> 572 572        4.0
#> 573 573       71.0
#> 574 574        1.0
#> 575 575       30.0
#> 576 576     180.0+
#> 577 577     180.0+
#> 578 578      114.0
#> 579 579     180.0+
#> 580 580      154.0
#> 581 581        2.0
#> 582 582     180.0+
#> 583 583       4.0+
#> 584 584     180.0+
#> 585 585       12.0
#> 586 586       4.0+
#> 587 587     180.0+
#> 588 588       77.0
#> 589 589     180.0+
#> 590 590        3.0
#> 591 591       83.0
#> 592 592       88.0
#> 593 593      126.0
#> 594 594        8.0
#> 595 595        3.0
#> 596 596     180.0+
#> 597 597     180.0+
#> 598 598     180.0+
#> 599 599     180.0+
#> 600 600     180.0+
#> 601 601     180.0+
#> 602 602     180.0+
#> 603 603      174.0
#> 604 604        6.0
#> 605 605       70.0
#> 606 606       43.0
#> 607 607     180.0+
#> 608 608     180.0+
#> 609 609       14.0
#> 610 610       13.0
#> 611 611     180.0+
#> 612 612     180.0+
#> 613 613       92.0
#> 614 614     180.0+
#> 615 615        4.0
#> 616 616      177.0
#> 617 617       6.0+
#> 618 618       62.0
#> 619 619       4.0+
#> 620 620        4.0
#> 621 621       11.0
#> 622 622     180.0+
#> 623 623       46.0
#> 624 624      115.0
#> 625 625       8.0+
#> 626 626        4.0
#> 627 627       1.0+
#> 628 628        8.0
#> 629 629      110.0
#> 630 630     180.0+
#> 631 631       14.0
#> 632 632     180.0+
#> 633 633        8.0
#> 634 634     180.0+
#> 635 635       25.0
#> 636 636      145.0
#> 637 637        3.0
#> 638 638       24.0
#> 639 639       50.0
#> 640 640        4.0
#> 641 641        1.0
#> 642 642       89.0
#> 643 643       75.0
#> 644 644        1.0
#> 645 645       33.0
#> 646 646      158.0
#> 647 647       74.0
#> 648 648      169.0
#> 649 649       52.0
#> 650 650        7.0
#> 651 651        4.0
#> 652 652        0.5
#> 653 653     180.0+
#> 654 654     180.0+
#> 655 655        4.0
#> 656 656     180.0+
#> 657 657       50.0
#> 658 658       1.0+
#> 659 659     179.0+
#> 660 660       76.0
#> 661 661     180.0+
#> 662 662       67.0
#> 663 663       12.0
#> 664 664       26.0
#> 665 665       7.0+
#> 666 666        0.5
#> 667 667       69.0
#> 668 668        2.0
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
#> <bytecode: 0x6279d6776fe0>
#> <environment: 0x6279d677a978>
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
#> <bytecode: 0x6279986dd318>
#> <environment: 0x6279d87f0780>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x6279986db0e8>
#> <environment: 0x6279d87f06a0>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x6279986dd318>
#> <environment: 0x6279d87f05c0>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x6279986db0e8>
#> <environment: 0x6279d87f0438>
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
#> <bytecode: 0x62799b91af20>
#> <environment: 0x6279d87f72b8>
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
#>   0.8427922 
```
