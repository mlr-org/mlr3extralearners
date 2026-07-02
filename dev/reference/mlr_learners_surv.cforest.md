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
#> |   [2] V5 <= 171
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V2 <= 66
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V7 <= 131 *
#> |   |   |   |   |   |   [8] V7 > 131 *
#> |   |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   |   [10] V7 <= 140 *
#> |   |   |   |   |   |   [11] V7 > 140 *
#> |   |   |   |   [12] V2 > 54
#> |   |   |   |   |   [13] V2 <= 64
#> |   |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   |   [15] V4 <= 0 *
#> |   |   |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   |   |   [17] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [18] V5 > 6 *
#> |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   |   |   |   [22] V7 <= 133 *
#> |   |   |   |   |   |   |   |   [23] V7 > 133 *
#> |   |   |   |   |   [24] V2 > 64 *
#> |   |   |   [25] V2 > 66
#> |   |   |   |   [26] V4 <= 0
#> |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   [29] V7 <= 114 *
#> |   |   |   |   |   |   [30] V7 > 114
#> |   |   |   |   |   |   |   [31] V7 <= 137 *
#> |   |   |   |   |   |   |   [32] V7 > 137 *
#> |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   [34] V2 <= 85
#> |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   [36] V7 <= 151
#> |   |   |   |   |   |   |   |   [37] V7 <= 134 *
#> |   |   |   |   |   |   |   |   [38] V7 > 134 *
#> |   |   |   |   |   |   |   [39] V7 > 151 *
#> |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   [41] V3 <= 13
#> |   |   |   |   |   |   |   |   [42] V2 <= 78
#> |   |   |   |   |   |   |   |   |   [43] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [44] V5 > 0 *
#> |   |   |   |   |   |   |   |   [45] V2 > 78 *
#> |   |   |   |   |   |   |   [46] V3 > 13 *
#> |   |   |   |   |   [47] V2 > 85 *
#> |   |   [48] V5 > 15
#> |   |   |   [49] V2 <= 79
#> |   |   |   |   [50] V5 <= 125 *
#> |   |   |   |   [51] V5 > 125 *
#> |   |   |   [52] V2 > 79
#> |   |   |   |   [53] V5 <= 71 *
#> |   |   |   |   [54] V5 > 71 *
#> |   [55] V5 > 171
#> |   |   [56] V5 <= 179 *
#> |   |   [57] V5 > 179 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 61 *
#> |   |   |   |   [6] V2 > 61
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   |   [9] V2 <= 81 *
#> |   |   |   |   |   |   [10] V2 > 81 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   [14] V7 <= 158
#> |   |   |   |   |   |   [15] V2 <= 82
#> |   |   |   |   |   |   |   [16] V5 <= 17
#> |   |   |   |   |   |   |   |   [17] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [18] V2 > 67 *
#> |   |   |   |   |   |   |   [19] V5 > 17 *
#> |   |   |   |   |   |   [20] V2 > 82 *
#> |   |   |   |   |   [21] V7 > 158 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 60
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V3 <= 8 *
#> |   |   |   |   |   [26] V3 > 8 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V3 <= 15
#> |   |   |   |   |   |   [29] V5 <= 4
#> |   |   |   |   |   |   |   [30] V2 <= 55
#> |   |   |   |   |   |   |   |   [31] V2 <= 48 *
#> |   |   |   |   |   |   |   |   [32] V2 > 48 *
#> |   |   |   |   |   |   |   [33] V2 > 55 *
#> |   |   |   |   |   |   [34] V5 > 4 *
#> |   |   |   |   |   [35] V3 > 15 *
#> |   |   |   [36] V2 > 60
#> |   |   |   |   [37] V5 <= 12
#> |   |   |   |   |   [38] V5 <= 1
#> |   |   |   |   |   |   [39] V2 <= 78
#> |   |   |   |   |   |   |   [40] V2 <= 73
#> |   |   |   |   |   |   |   |   [41] V7 <= 134 *
#> |   |   |   |   |   |   |   |   [42] V7 > 134
#> |   |   |   |   |   |   |   |   |   [43] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   |   |   [45] V2 > 73 *
#> |   |   |   |   |   |   [46] V2 > 78 *
#> |   |   |   |   |   [47] V5 > 1
#> |   |   |   |   |   |   [48] V7 <= 118 *
#> |   |   |   |   |   |   [49] V7 > 118
#> |   |   |   |   |   |   |   [50] V3 <= 19
#> |   |   |   |   |   |   |   |   [51] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [52] V3 <= 9
#> |   |   |   |   |   |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [54] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   [55] V3 > 9
#> |   |   |   |   |   |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [57] V6 > 0 *
#> |   |   |   |   |   |   |   |   [58] V3 > 13 *
#> |   |   |   |   |   |   |   [59] V3 > 19 *
#> |   |   |   |   [60] V5 > 12 *
#> |   [61] V5 > 177 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V5 <= 16
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 4
#> |   |   |   |   |   [6] V7 <= 155
#> |   |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   |   [8] V5 > 1 *
#> |   |   |   |   |   [9] V7 > 155 *
#> |   |   |   |   [10] V3 > 4
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V2 <= 69 *
#> |   |   |   |   |   |   [14] V2 > 69 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 66
#> |   |   |   |   |   [17] V3 <= 17
#> |   |   |   |   |   |   [18] V2 <= 55
#> |   |   |   |   |   |   |   [19] V7 <= 160
#> |   |   |   |   |   |   |   |   [20] V5 <= 4
#> |   |   |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [23] V2 <= 43 *
#> |   |   |   |   |   |   |   |   |   |   [24] V2 > 43 *
#> |   |   |   |   |   |   |   |   [25] V5 > 4 *
#> |   |   |   |   |   |   |   [26] V7 > 160 *
#> |   |   |   |   |   |   [27] V2 > 55
#> |   |   |   |   |   |   |   [28] V5 <= 8
#> |   |   |   |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [30] V3 > 3
#> |   |   |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [33] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [34] V3 > 6 *
#> |   |   |   |   |   |   |   [35] V5 > 8 *
#> |   |   |   |   |   [36] V3 > 17 *
#> |   |   |   |   [37] V2 > 66
#> |   |   |   |   |   [38] V5 <= 10
#> |   |   |   |   |   |   [39] V2 <= 80
#> |   |   |   |   |   |   |   [40] V7 <= 167
#> |   |   |   |   |   |   |   |   [41] V7 <= 122 *
#> |   |   |   |   |   |   |   |   [42] V7 > 122
#> |   |   |   |   |   |   |   |   |   [43] V2 <= 72 *
#> |   |   |   |   |   |   |   |   |   [44] V2 > 72 *
#> |   |   |   |   |   |   |   [45] V7 > 167 *
#> |   |   |   |   |   |   [46] V2 > 80
#> |   |   |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   |   |   [48] V6 > 0 *
#> |   |   |   |   |   [49] V5 > 10 *
#> |   |   [50] V5 > 16
#> |   |   |   [51] V5 <= 126
#> |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   [54] V5 <= 57 *
#> |   |   |   |   |   [55] V5 > 57 *
#> |   |   |   [56] V5 > 126 *
#> |   [57] V5 > 171
#> |   |   [58] V5 <= 179 *
#> |   |   [59] V5 > 179 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 173
#> |   |   |   |   |   [6] V2 <= 70 *
#> |   |   |   |   |   [7] V2 > 70
#> |   |   |   |   |   |   [8] V5 <= 114 *
#> |   |   |   |   |   |   [9] V5 > 114 *
#> |   |   |   |   [10] V7 > 173 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 101
#> |   |   |   |   |   [13] V7 <= 138
#> |   |   |   |   |   |   [14] V2 <= 84
#> |   |   |   |   |   |   |   [15] V7 <= 114 *
#> |   |   |   |   |   |   |   [16] V7 > 114 *
#> |   |   |   |   |   |   [17] V2 > 84 *
#> |   |   |   |   |   [18] V7 > 138
#> |   |   |   |   |   |   [19] V5 <= 4 *
#> |   |   |   |   |   |   [20] V5 > 4
#> |   |   |   |   |   |   |   [21] V2 <= 73 *
#> |   |   |   |   |   |   |   [22] V2 > 73 *
#> |   |   |   |   [23] V5 > 101 *
#> |   |   [24] V4 > 0
#> |   |   |   [25] V2 <= 70
#> |   |   |   |   [26] V7 <= 114 *
#> |   |   |   |   [27] V7 > 114
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   |   [30] V3 > 3
#> |   |   |   |   |   |   |   [31] V2 <= 55 *
#> |   |   |   |   |   |   |   [32] V2 > 55
#> |   |   |   |   |   |   |   |   [33] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [34] V7 > 135 *
#> |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   [36] V3 <= 17
#> |   |   |   |   |   |   |   [37] V7 <= 135
#> |   |   |   |   |   |   |   |   [38] V7 <= 119 *
#> |   |   |   |   |   |   |   |   [39] V7 > 119
#> |   |   |   |   |   |   |   |   |   [40] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 125 *
#> |   |   |   |   |   |   |   [42] V7 > 135
#> |   |   |   |   |   |   |   |   [43] V7 <= 169
#> |   |   |   |   |   |   |   |   |   [44] V2 <= 55 *
#> |   |   |   |   |   |   |   |   |   [45] V2 > 55 *
#> |   |   |   |   |   |   |   |   [46] V7 > 169 *
#> |   |   |   |   |   |   [47] V3 > 17 *
#> |   |   |   [48] V2 > 70
#> |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   [50] V7 <= 125 *
#> |   |   |   |   |   [51] V7 > 125 *
#> |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   [53] V2 <= 85
#> |   |   |   |   |   |   [54] V5 <= 8
#> |   |   |   |   |   |   |   [55] V7 <= 167
#> |   |   |   |   |   |   |   |   [56] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [57] V7 > 130 *
#> |   |   |   |   |   |   |   [58] V7 > 167 *
#> |   |   |   |   |   |   [59] V5 > 8 *
#> |   |   |   |   |   [60] V2 > 85 *
#> |   [61] V5 > 173 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 169
#> |   |   |   |   [5] V7 <= 138 *
#> |   |   |   |   [6] V7 > 138 *
#> |   |   |   [7] V5 > 169
#> |   |   |   |   [8] V7 <= 130 *
#> |   |   |   |   [9] V7 > 130
#> |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   [11] V6 > 0 *
#> |   |   [12] V4 > 0
#> |   |   |   [13] V6 <= 0
#> |   |   |   |   [14] V3 <= 11
#> |   |   |   |   |   [15] V5 <= 1 *
#> |   |   |   |   |   [16] V5 > 1
#> |   |   |   |   |   |   [17] V3 <= 8 *
#> |   |   |   |   |   |   [18] V3 > 8 *
#> |   |   |   |   [19] V3 > 11 *
#> |   |   |   [20] V6 > 0
#> |   |   |   |   [21] V3 <= 12
#> |   |   |   |   |   [22] V3 <= 6
#> |   |   |   |   |   |   [23] V2 <= 55 *
#> |   |   |   |   |   |   [24] V2 > 55 *
#> |   |   |   |   |   [25] V3 > 6 *
#> |   |   |   |   [26] V3 > 12 *
#> |   [27] V2 > 66
#> |   |   [28] V2 <= 78
#> |   |   |   [29] V4 <= 0
#> |   |   |   |   [30] V5 <= 161
#> |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   [33] V7 <= 130 *
#> |   |   |   |   |   |   [34] V7 > 130 *
#> |   |   |   |   [35] V5 > 161
#> |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   [37] V6 > 0 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V3 <= 7
#> |   |   |   |   |   [40] V5 <= 0 *
#> |   |   |   |   |   [41] V5 > 0 *
#> |   |   |   |   [42] V3 > 7
#> |   |   |   |   |   [43] V7 <= 120 *
#> |   |   |   |   |   [44] V7 > 120
#> |   |   |   |   |   |   [45] V3 <= 11 *
#> |   |   |   |   |   |   [46] V3 > 11 *
#> |   |   [47] V2 > 78
#> |   |   |   [48] V5 <= 173
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V6 <= 0
#> |   |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   |   [52] V3 > 4 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V5 <= 4 *
#> |   |   |   |   |   |   [55] V5 > 4
#> |   |   |   |   |   |   |   [56] V5 <= 23 *
#> |   |   |   |   |   |   |   [57] V5 > 23 *
#> |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   [59] V2 <= 85
#> |   |   |   |   |   |   [60] V5 <= 1 *
#> |   |   |   |   |   |   [61] V5 > 1 *
#> |   |   |   |   |   [62] V2 > 85 *
#> |   |   |   [63] V5 > 173 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 70
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V3 <= 3
#> |   |   |   |   |   |   [8] V2 <= 44 *
#> |   |   |   |   |   |   [9] V2 > 44 *
#> |   |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   |   |   [15] V2 <= 57 *
#> |   |   |   |   |   |   |   [16] V2 > 57 *
#> |   |   |   [17] V2 > 60
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V7 <= 143 *
#> |   |   |   |   |   [20] V7 > 143 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V2 <= 64
#> |   |   |   |   |   |   [23] V7 <= 133 *
#> |   |   |   |   |   |   [24] V7 > 133 *
#> |   |   |   |   |   [25] V2 > 64
#> |   |   |   |   |   |   [26] V5 <= 1 *
#> |   |   |   |   |   |   [27] V5 > 1
#> |   |   |   |   |   |   |   [28] V2 <= 68 *
#> |   |   |   |   |   |   |   [29] V2 > 68 *
#> |   |   [30] V2 > 70
#> |   |   |   [31] V4 <= 0
#> |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   [33] V2 <= 82 *
#> |   |   |   |   |   [34] V2 > 82 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V5 <= 5 *
#> |   |   |   |   |   [37] V5 > 5
#> |   |   |   |   |   |   [38] V3 <= 8 *
#> |   |   |   |   |   |   [39] V3 > 8 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V3 <= 6
#> |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   [43] V3 > 3 *
#> |   |   |   |   [44] V3 > 6
#> |   |   |   |   |   [45] V7 <= 129 *
#> |   |   |   |   |   [46] V7 > 129
#> |   |   |   |   |   |   [47] V3 <= 10
#> |   |   |   |   |   |   |   [48] V2 <= 76 *
#> |   |   |   |   |   |   |   [49] V2 > 76 *
#> |   |   |   |   |   |   [50] V3 > 10 *
#> |   [51] V5 > 173 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1
#> |   |   |   |   |   |   [8] V6 <= 0 *
#> |   |   |   |   |   |   [9] V6 > 0 *
#> |   |   |   |   [10] V3 > 6
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   [13] V5 > 170
#> |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   [17] V3 > 3 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V2 <= 60
#> |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   [21] V7 <= 125 *
#> |   |   |   |   |   [22] V7 > 125
#> |   |   |   |   |   |   [23] V3 <= 3 *
#> |   |   |   |   |   |   [24] V3 > 3 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V2 <= 54
#> |   |   |   |   |   |   [27] V7 <= 116 *
#> |   |   |   |   |   |   [28] V7 > 116
#> |   |   |   |   |   |   |   [29] V7 <= 140 *
#> |   |   |   |   |   |   |   [30] V7 > 140 *
#> |   |   |   |   |   [31] V2 > 54
#> |   |   |   |   |   |   [32] V2 <= 57 *
#> |   |   |   |   |   |   [33] V2 > 57 *
#> |   |   |   [34] V2 > 60
#> |   |   |   |   [35] V3 <= 23
#> |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   [37] V7 <= 142 *
#> |   |   |   |   |   |   [38] V7 > 142
#> |   |   |   |   |   |   |   [39] V3 <= 9 *
#> |   |   |   |   |   |   |   [40] V3 > 9 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   [44] V5 <= 1 *
#> |   |   |   |   |   |   |   [45] V5 > 1
#> |   |   |   |   |   |   |   |   [46] V7 <= 132 *
#> |   |   |   |   |   |   |   |   [47] V7 > 132 *
#> |   |   |   |   [48] V3 > 23 *
#> |   [49] V2 > 78
#> |   |   [50] V6 <= 0
#> |   |   |   [51] V2 <= 83
#> |   |   |   |   [52] V7 <= 135 *
#> |   |   |   |   [53] V7 > 135 *
#> |   |   |   [54] V2 > 83 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V4 <= 0
#> |   |   |   |   [57] V3 <= 3 *
#> |   |   |   |   [58] V3 > 3
#> |   |   |   |   |   [59] V7 <= 117 *
#> |   |   |   |   |   [60] V7 > 117 *
#> |   |   |   [61] V4 > 0 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 64
#> |   |   |   |   [5] V7 <= 136 *
#> |   |   |   |   [6] V7 > 136 *
#> |   |   |   [7] V2 > 64
#> |   |   |   |   [8] V7 <= 140
#> |   |   |   |   |   [9] V3 <= 3
#> |   |   |   |   |   |   [10] V3 <= 1 *
#> |   |   |   |   |   |   [11] V3 > 1 *
#> |   |   |   |   |   [12] V3 > 3
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   |   [15] V2 <= 73 *
#> |   |   |   |   |   |   |   [16] V2 > 73 *
#> |   |   |   |   [17] V7 > 140
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V2 <= 78 *
#> |   |   |   |   |   |   [21] V2 > 78 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V2 <= 60
#> |   |   |   |   |   [25] V5 <= 3
#> |   |   |   |   |   |   [26] V7 <= 140 *
#> |   |   |   |   |   |   [27] V7 > 140 *
#> |   |   |   |   |   [28] V5 > 3 *
#> |   |   |   |   [29] V2 > 60
#> |   |   |   |   |   [30] V7 <= 142
#> |   |   |   |   |   |   [31] V3 <= 4 *
#> |   |   |   |   |   |   [32] V3 > 4 *
#> |   |   |   |   |   [33] V7 > 142
#> |   |   |   |   |   |   [34] V3 <= 9 *
#> |   |   |   |   |   |   [35] V3 > 9 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V5 <= 1
#> |   |   |   |   |   [38] V3 <= 2 *
#> |   |   |   |   |   [39] V3 > 2
#> |   |   |   |   |   |   [40] V2 <= 78
#> |   |   |   |   |   |   |   [41] V5 <= 0
#> |   |   |   |   |   |   |   |   [42] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [43] V3 > 5
#> |   |   |   |   |   |   |   |   |   [44] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [45] V7 > 138 *
#> |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   [47] V2 > 78 *
#> |   |   |   |   [48] V5 > 1
#> |   |   |   |   |   [49] V7 <= 138
#> |   |   |   |   |   |   [50] V5 <= 8 *
#> |   |   |   |   |   |   [51] V5 > 8 *
#> |   |   |   |   |   [52] V7 > 138
#> |   |   |   |   |   |   [53] V2 <= 69
#> |   |   |   |   |   |   |   [54] V5 <= 9 *
#> |   |   |   |   |   |   |   [55] V5 > 9 *
#> |   |   |   |   |   |   [56] V2 > 69 *
#> |   [57] V5 > 171
#> |   |   [58] V6 <= 0
#> |   |   |   [59] V3 <= 2 *
#> |   |   |   [60] V3 > 2 *
#> |   |   [61] V6 > 0
#> |   |   |   [62] V3 <= 10
#> |   |   |   |   [63] V2 <= 50 *
#> |   |   |   |   [64] V2 > 50 *
#> |   |   |   [65] V3 > 10 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V7 <= 107 *
#> |   |   [4] V7 > 107
#> |   |   |   [5] V5 <= 16
#> |   |   |   |   [6] V2 <= 43 *
#> |   |   |   |   [7] V2 > 43
#> |   |   |   |   |   [8] V5 <= 3
#> |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   |   [11] V5 > 3 *
#> |   |   |   [12] V5 > 16
#> |   |   |   |   [13] V3 <= 3 *
#> |   |   |   |   [14] V3 > 3 *
#> |   [15] V2 > 54
#> |   |   [16] V5 <= 177
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   [19] V5 <= 15
#> |   |   |   |   |   |   [20] V3 <= 6 *
#> |   |   |   |   |   |   [21] V3 > 6 *
#> |   |   |   |   |   [22] V5 > 15
#> |   |   |   |   |   |   [23] V7 <= 131 *
#> |   |   |   |   |   |   [24] V7 > 131 *
#> |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   [26] V5 <= 5
#> |   |   |   |   |   |   [27] V7 <= 128 *
#> |   |   |   |   |   |   [28] V7 > 128 *
#> |   |   |   |   |   [29] V5 > 5
#> |   |   |   |   |   |   [30] V7 <= 138
#> |   |   |   |   |   |   |   [31] V5 <= 11 *
#> |   |   |   |   |   |   |   [32] V5 > 11 *
#> |   |   |   |   |   |   [33] V7 > 138
#> |   |   |   |   |   |   |   [34] V3 <= 9 *
#> |   |   |   |   |   |   |   [35] V3 > 9 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V2 <= 76
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V5 <= 6
#> |   |   |   |   |   |   |   [40] V3 <= 7
#> |   |   |   |   |   |   |   |   [41] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [42] V7 > 142 *
#> |   |   |   |   |   |   |   [43] V3 > 7 *
#> |   |   |   |   |   |   [44] V5 > 6
#> |   |   |   |   |   |   |   [45] V5 <= 9 *
#> |   |   |   |   |   |   |   [46] V5 > 9 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V3 <= 16
#> |   |   |   |   |   |   |   [49] V3 <= 6
#> |   |   |   |   |   |   |   |   [50] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [51] V5 > 1 *
#> |   |   |   |   |   |   |   [52] V3 > 6
#> |   |   |   |   |   |   |   |   [53] V2 <= 58 *
#> |   |   |   |   |   |   |   |   [54] V2 > 58
#> |   |   |   |   |   |   |   |   |   [55] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [56] V5 > 3 *
#> |   |   |   |   |   |   [57] V3 > 16 *
#> |   |   |   |   [58] V2 > 76
#> |   |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   |   [60] V6 > 0 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V7 <= 112 *
#> |   |   |   |   [6] V7 > 112
#> |   |   |   |   |   [7] V7 <= 125 *
#> |   |   |   |   |   [8] V7 > 125
#> |   |   |   |   |   |   [9] V2 <= 42 *
#> |   |   |   |   |   |   [10] V2 > 42
#> |   |   |   |   |   |   |   [11] V3 <= 6 *
#> |   |   |   |   |   |   |   [12] V3 > 6 *
#> |   |   |   [13] V2 > 54
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V2 <= 63 *
#> |   |   |   |   |   [16] V2 > 63
#> |   |   |   |   |   |   [17] V5 <= 8 *
#> |   |   |   |   |   |   [18] V5 > 8 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V5 <= 6
#> |   |   |   |   |   |   [21] V7 <= 140
#> |   |   |   |   |   |   |   [22] V5 <= 1
#> |   |   |   |   |   |   |   |   [23] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [24] V3 > 4 *
#> |   |   |   |   |   |   |   [25] V5 > 1 *
#> |   |   |   |   |   |   [26] V7 > 140
#> |   |   |   |   |   |   |   [27] V2 <= 59 *
#> |   |   |   |   |   |   |   [28] V2 > 59 *
#> |   |   |   |   |   [29] V5 > 6
#> |   |   |   |   |   |   [30] V2 <= 58 *
#> |   |   |   |   |   |   [31] V2 > 58
#> |   |   |   |   |   |   |   [32] V2 <= 62 *
#> |   |   |   |   |   |   |   [33] V2 > 62 *
#> |   |   [34] V5 > 170
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V7 <= 153 *
#> |   |   |   |   [38] V7 > 153 *
#> |   [39] V2 > 70
#> |   |   [40] V2 <= 86
#> |   |   |   [41] V7 <= 100 *
#> |   |   |   [42] V7 > 100
#> |   |   |   |   [43] V4 <= 0
#> |   |   |   |   |   [44] V7 <= 160
#> |   |   |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   |   |   [46] V5 <= 161 *
#> |   |   |   |   |   |   |   [47] V5 > 161 *
#> |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   [49] V3 <= 7
#> |   |   |   |   |   |   |   |   [50] V2 <= 77 *
#> |   |   |   |   |   |   |   |   [51] V2 > 77 *
#> |   |   |   |   |   |   |   [52] V3 > 7 *
#> |   |   |   |   |   [53] V7 > 160
#> |   |   |   |   |   |   [54] V3 <= 5 *
#> |   |   |   |   |   |   [55] V3 > 5 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V7 <= 167
#> |   |   |   |   |   |   [58] V6 <= 0 *
#> |   |   |   |   |   |   [59] V6 > 0
#> |   |   |   |   |   |   |   [60] V2 <= 76 *
#> |   |   |   |   |   |   |   [61] V2 > 76 *
#> |   |   |   |   |   [62] V7 > 167 *
#> |   |   [63] V2 > 86
#> |   |   |   [64] V6 <= 0 *
#> |   |   |   [65] V6 > 0 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 73 *
#> |   |   |   |   [6] V5 > 73
#> |   |   |   |   |   [7] V2 <= 49 *
#> |   |   |   |   |   [8] V2 > 49 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V3 <= 7
#> |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   [13] V3 > 7 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V7 <= 112
#> |   |   |   |   [16] V5 <= 6 *
#> |   |   |   |   [17] V5 > 6 *
#> |   |   |   [18] V7 > 112
#> |   |   |   |   [19] V4 <= 0
#> |   |   |   |   |   [20] V3 <= 3
#> |   |   |   |   |   |   [21] V5 <= 123 *
#> |   |   |   |   |   |   [22] V5 > 123 *
#> |   |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   |   [24] V2 <= 63
#> |   |   |   |   |   |   |   [25] V5 <= 170 *
#> |   |   |   |   |   |   |   [26] V5 > 170 *
#> |   |   |   |   |   |   [27] V2 > 63
#> |   |   |   |   |   |   |   [28] V5 <= 171 *
#> |   |   |   |   |   |   |   [29] V5 > 171 *
#> |   |   |   |   [30] V4 > 0
#> |   |   |   |   |   [31] V2 <= 56 *
#> |   |   |   |   |   [32] V2 > 56
#> |   |   |   |   |   |   [33] V3 <= 16
#> |   |   |   |   |   |   |   [34] V2 <= 60 *
#> |   |   |   |   |   |   |   [35] V2 > 60
#> |   |   |   |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [37] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [38] V7 > 140 *
#> |   |   |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   |   |   [40] V5 <= 10
#> |   |   |   |   |   |   |   |   |   |   [41] V7 <= 148 *
#> |   |   |   |   |   |   |   |   |   |   [42] V7 > 148 *
#> |   |   |   |   |   |   |   |   |   [43] V5 > 10 *
#> |   |   |   |   |   |   [44] V3 > 16 *
#> |   [45] V2 > 71
#> |   |   [46] V5 <= 168
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   [49] V7 <= 139 *
#> |   |   |   |   |   [50] V7 > 139 *
#> |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   [52] V3 <= 5
#> |   |   |   |   |   |   [53] V2 <= 82 *
#> |   |   |   |   |   |   [54] V2 > 82 *
#> |   |   |   |   |   [55] V3 > 5
#> |   |   |   |   |   |   [56] V5 <= 15 *
#> |   |   |   |   |   |   [57] V5 > 15 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V7 <= 126
#> |   |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   |   [61] V6 > 0 *
#> |   |   |   |   [62] V7 > 126
#> |   |   |   |   |   [63] V6 <= 0 *
#> |   |   |   |   |   [64] V6 > 0
#> |   |   |   |   |   |   [65] V2 <= 82
#> |   |   |   |   |   |   |   [66] V3 <= 8 *
#> |   |   |   |   |   |   |   [67] V3 > 8 *
#> |   |   |   |   |   |   [68] V2 > 82 *
#> |   |   [69] V5 > 168
#> |   |   |   [70] V3 <= 2 *
#> |   |   |   [71] V3 > 2 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 61
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V2 > 61
#> |   |   |   |   [8] V5 <= 2 *
#> |   |   |   |   [9] V5 > 2
#> |   |   |   |   |   [10] V2 <= 88
#> |   |   |   |   |   |   [11] V2 <= 82
#> |   |   |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   |   |   [16] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [17] V7 > 147 *
#> |   |   |   |   |   |   [18] V2 > 82 *
#> |   |   |   |   |   [19] V2 > 88 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V6 <= 0
#> |   |   |   |   [22] V2 <= 59
#> |   |   |   |   |   [23] V7 <= 125 *
#> |   |   |   |   |   [24] V7 > 125
#> |   |   |   |   |   |   [25] V2 <= 52 *
#> |   |   |   |   |   |   [26] V2 > 52 *
#> |   |   |   |   [27] V2 > 59
#> |   |   |   |   |   [28] V3 <= 11
#> |   |   |   |   |   |   [29] V3 <= 6 *
#> |   |   |   |   |   |   [30] V3 > 6 *
#> |   |   |   |   |   [31] V3 > 11
#> |   |   |   |   |   |   [32] V5 <= 9 *
#> |   |   |   |   |   |   [33] V5 > 9 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V5 <= 8
#> |   |   |   |   |   [36] V5 <= 5
#> |   |   |   |   |   |   [37] V5 <= 2
#> |   |   |   |   |   |   |   [38] V2 <= 66
#> |   |   |   |   |   |   |   |   [39] V7 <= 114 *
#> |   |   |   |   |   |   |   |   [40] V7 > 114
#> |   |   |   |   |   |   |   |   |   [41] V2 <= 55
#> |   |   |   |   |   |   |   |   |   |   [42] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [43] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   [44] V2 > 55 *
#> |   |   |   |   |   |   |   [45] V2 > 66
#> |   |   |   |   |   |   |   |   [46] V2 <= 72 *
#> |   |   |   |   |   |   |   |   [47] V2 > 72
#> |   |   |   |   |   |   |   |   |   [48] V7 <= 122 *
#> |   |   |   |   |   |   |   |   |   [49] V7 > 122 *
#> |   |   |   |   |   |   [50] V5 > 2 *
#> |   |   |   |   |   [51] V5 > 5 *
#> |   |   |   |   [52] V5 > 8
#> |   |   |   |   |   [53] V7 <= 133 *
#> |   |   |   |   |   [54] V7 > 133 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 70
#> |   |   |   |   |   [6] V2 <= 62 *
#> |   |   |   |   |   [7] V2 > 62 *
#> |   |   |   |   [8] V2 > 70
#> |   |   |   |   |   [9] V7 <= 151 *
#> |   |   |   |   |   [10] V7 > 151 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 4
#> |   |   |   |   |   [13] V2 <= 65 *
#> |   |   |   |   |   [14] V2 > 65 *
#> |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   [16] V2 <= 61 *
#> |   |   |   |   |   [17] V2 > 61
#> |   |   |   |   |   |   [18] V2 <= 78 *
#> |   |   |   |   |   |   [19] V2 > 78
#> |   |   |   |   |   |   |   [20] V2 <= 86 *
#> |   |   |   |   |   |   |   [21] V2 > 86 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 76
#> |   |   |   |   [24] V2 <= 54
#> |   |   |   |   |   [25] V2 <= 43 *
#> |   |   |   |   |   [26] V2 > 43
#> |   |   |   |   |   |   [27] V7 <= 131 *
#> |   |   |   |   |   |   [28] V7 > 131
#> |   |   |   |   |   |   |   [29] V7 <= 160 *
#> |   |   |   |   |   |   |   [30] V7 > 160 *
#> |   |   |   |   [31] V2 > 54
#> |   |   |   |   |   [32] V5 <= 9
#> |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   [34] V7 <= 120 *
#> |   |   |   |   |   |   |   [35] V7 > 120
#> |   |   |   |   |   |   |   |   [36] V3 <= 9
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 65 *
#> |   |   |   |   |   |   |   |   [39] V3 > 9 *
#> |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   [41] V3 <= 6
#> |   |   |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [43] V3 > 3 *
#> |   |   |   |   |   |   |   [44] V3 > 6
#> |   |   |   |   |   |   |   |   [45] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 8 *
#> |   |   |   |   |   |   |   |   [48] V7 > 160 *
#> |   |   |   |   |   [49] V5 > 9
#> |   |   |   |   |   |   [50] V3 <= 13 *
#> |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   [52] V2 > 76
#> |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   [55] V2 <= 85
#> |   |   |   |   |   |   [56] V3 <= 6 *
#> |   |   |   |   |   |   [57] V3 > 6 *
#> |   |   |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V3 <= 2
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V3 > 2
#> |   |   |   |   |   [9] V5 <= 1
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   |   |   [12] V5 <= 0
#> |   |   |   |   |   |   |   |   [13] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [14] V3 > 4 *
#> |   |   |   |   |   |   |   [15] V5 > 0 *
#> |   |   |   |   |   [16] V5 > 1
#> |   |   |   |   |   |   [17] V2 <= 50
#> |   |   |   |   |   |   |   [18] V2 <= 45 *
#> |   |   |   |   |   |   |   [19] V2 > 45 *
#> |   |   |   |   |   |   [20] V2 > 50
#> |   |   |   |   |   |   |   [21] V4 <= 0 *
#> |   |   |   |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 160
#> |   |   |   |   |   |   |   |   |   |   [25] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   [26] V7 > 150 *
#> |   |   |   |   |   |   |   |   |   [27] V7 > 160 *
#> |   |   |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   |   |   [29] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   [30] V7 > 120
#> |   |   |   |   |   |   |   |   |   |   [31] V5 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [32] V5 > 7 *
#> |   |   |   [33] V5 > 16 *
#> |   |   [34] V5 > 150
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V2 <= 50 *
#> |   |   |   |   [38] V2 > 50 *
#> |   [39] V2 > 70
#> |   |   [40] V2 <= 78
#> |   |   |   [41] V5 <= 161
#> |   |   |   |   [42] V3 <= 1 *
#> |   |   |   |   [43] V3 > 1
#> |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   [45] V7 <= 130 *
#> |   |   |   |   |   |   [46] V7 > 130 *
#> |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   [49] V3 > 3
#> |   |   |   |   |   |   |   [50] V7 <= 122 *
#> |   |   |   |   |   |   |   [51] V7 > 122
#> |   |   |   |   |   |   |   |   [52] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [53] V7 > 150 *
#> |   |   |   [54] V5 > 161 *
#> |   |   [55] V2 > 78
#> |   |   |   [56] V5 <= 168
#> |   |   |   |   [57] V4 <= 0
#> |   |   |   |   |   [58] V6 <= 0
#> |   |   |   |   |   |   [59] V5 <= 8 *
#> |   |   |   |   |   |   [60] V5 > 8 *
#> |   |   |   |   |   [61] V6 > 0
#> |   |   |   |   |   |   [62] V2 <= 85 *
#> |   |   |   |   |   |   [63] V2 > 85 *
#> |   |   |   |   [64] V4 > 0
#> |   |   |   |   |   [65] V2 <= 85
#> |   |   |   |   |   |   [66] V2 <= 81 *
#> |   |   |   |   |   |   [67] V2 > 81 *
#> |   |   |   |   |   [68] V2 > 85 *
#> |   |   |   [69] V5 > 168 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V2 <= 59
#> |   |   [3] V2 <= 50
#> |   |   |   [4] V5 <= 73
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V5 <= 2 *
#> |   |   |   |   |   [8] V5 > 2 *
#> |   |   |   [9] V5 > 73 *
#> |   |   [10] V2 > 50
#> |   |   |   [11] V5 <= 169
#> |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V5 <= 6 *
#> |   |   |   |   |   |   [17] V5 > 6 *
#> |   |   |   [18] V5 > 169 *
#> |   [19] V2 > 59
#> |   |   [20] V5 <= 177
#> |   |   |   [21] V4 <= 0
#> |   |   |   |   [22] V7 <= 167
#> |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   [24] V2 <= 82 *
#> |   |   |   |   |   |   [25] V2 > 82 *
#> |   |   |   |   |   [26] V6 > 0
#> |   |   |   |   |   |   [27] V7 <= 140
#> |   |   |   |   |   |   |   [28] V3 <= 7
#> |   |   |   |   |   |   |   |   [29] V2 <= 84
#> |   |   |   |   |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 3 *
#> |   |   |   |   |   |   |   |   [32] V2 > 84 *
#> |   |   |   |   |   |   |   [33] V3 > 7 *
#> |   |   |   |   |   |   [34] V7 > 140
#> |   |   |   |   |   |   |   [35] V7 <= 150 *
#> |   |   |   |   |   |   |   [36] V7 > 150 *
#> |   |   |   |   [37] V7 > 167 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V6 <= 0
#> |   |   |   |   |   [40] V2 <= 79
#> |   |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   |   [42] V5 > 3
#> |   |   |   |   |   |   |   [43] V2 <= 73 *
#> |   |   |   |   |   |   |   [44] V2 > 73 *
#> |   |   |   |   |   [45] V2 > 79 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V7 <= 126
#> |   |   |   |   |   |   [48] V2 <= 76 *
#> |   |   |   |   |   |   [49] V2 > 76 *
#> |   |   |   |   |   [50] V7 > 126
#> |   |   |   |   |   |   [51] V7 <= 140 *
#> |   |   |   |   |   |   [52] V7 > 140
#> |   |   |   |   |   |   |   [53] V7 <= 167
#> |   |   |   |   |   |   |   |   [54] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [55] V3 > 8 *
#> |   |   |   |   |   |   |   [56] V7 > 167 *
#> |   |   [57] V5 > 177 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 73
#> |   |   |   [4] V7 <= 112 *
#> |   |   |   [5] V7 > 112
#> |   |   |   |   [6] V5 <= 170
#> |   |   |   |   |   [7] V3 <= 2 *
#> |   |   |   |   |   [8] V3 > 2
#> |   |   |   |   |   |   [9] V5 <= 16 *
#> |   |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   |   [11] V5 > 170
#> |   |   |   |   |   [12] V2 <= 50 *
#> |   |   |   |   |   [13] V2 > 50 *
#> |   |   [14] V2 > 73
#> |   |   |   [15] V5 <= 173
#> |   |   |   |   [16] V2 <= 77 *
#> |   |   |   |   [17] V2 > 77
#> |   |   |   |   |   [18] V5 <= 15
#> |   |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   |   [21] V5 > 15
#> |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   [24] V5 > 173
#> |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   [26] V3 > 2 *
#> |   [27] V4 > 0
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V2 <= 66
#> |   |   |   |   [30] V5 <= 7
#> |   |   |   |   |   [31] V7 <= 152
#> |   |   |   |   |   |   [32] V2 <= 59
#> |   |   |   |   |   |   |   [33] V3 <= 4 *
#> |   |   |   |   |   |   |   [34] V3 > 4 *
#> |   |   |   |   |   |   [35] V2 > 59 *
#> |   |   |   |   |   [36] V7 > 152 *
#> |   |   |   |   [37] V5 > 7 *
#> |   |   |   [38] V2 > 66
#> |   |   |   |   [39] V7 <= 142 *
#> |   |   |   |   [40] V7 > 142 *
#> |   |   [41] V6 > 0
#> |   |   |   [42] V2 <= 70
#> |   |   |   |   [43] V3 <= 2 *
#> |   |   |   |   [44] V3 > 2
#> |   |   |   |   |   [45] V7 <= 130
#> |   |   |   |   |   |   [46] V7 <= 114 *
#> |   |   |   |   |   |   [47] V7 > 114
#> |   |   |   |   |   |   |   [48] V5 <= 0 *
#> |   |   |   |   |   |   |   [49] V5 > 0 *
#> |   |   |   |   |   [50] V7 > 130
#> |   |   |   |   |   |   [51] V7 <= 140 *
#> |   |   |   |   |   |   [52] V7 > 140
#> |   |   |   |   |   |   |   [53] V3 <= 9 *
#> |   |   |   |   |   |   |   [54] V3 > 9 *
#> |   |   |   [55] V2 > 70
#> |   |   |   |   [56] V3 <= 13
#> |   |   |   |   |   [57] V2 <= 83
#> |   |   |   |   |   |   [58] V2 <= 75 *
#> |   |   |   |   |   |   [59] V2 > 75
#> |   |   |   |   |   |   |   [60] V5 <= 1 *
#> |   |   |   |   |   |   |   [61] V5 > 1 *
#> |   |   |   |   |   [62] V2 > 83 *
#> |   |   |   |   [63] V3 > 13 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V5 <= 99
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 8
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3 *
#> |   |   |   |   [10] V3 > 8 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V3 <= 13
#> |   |   |   |   |   |   [15] V2 <= 47 *
#> |   |   |   |   |   |   [16] V2 > 47
#> |   |   |   |   |   |   |   [17] V2 <= 57 *
#> |   |   |   |   |   |   |   [18] V2 > 57 *
#> |   |   |   |   |   [19] V3 > 13 *
#> |   |   [20] V5 > 99
#> |   |   |   [21] V6 <= 0 *
#> |   |   |   [22] V6 > 0 *
#> |   [23] V2 > 60
#> |   |   [24] V5 <= 170
#> |   |   |   [25] V5 <= 15
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V4 <= 0
#> |   |   |   |   |   |   [28] V5 <= 7 *
#> |   |   |   |   |   |   [29] V5 > 7 *
#> |   |   |   |   |   [30] V4 > 0
#> |   |   |   |   |   |   [31] V2 <= 63 *
#> |   |   |   |   |   |   [32] V2 > 63
#> |   |   |   |   |   |   |   [33] V2 <= 67 *
#> |   |   |   |   |   |   |   [34] V2 > 67
#> |   |   |   |   |   |   |   |   [35] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [36] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [37] V3 > 8 *
#> |   |   |   |   |   |   |   |   [38] V5 > 9 *
#> |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   |   [41] V3 <= 5
#> |   |   |   |   |   |   |   [42] V3 <= 1 *
#> |   |   |   |   |   |   |   [43] V3 > 1 *
#> |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   |   [46] V5 <= 8
#> |   |   |   |   |   |   |   [47] V2 <= 78
#> |   |   |   |   |   |   |   |   [48] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [50] V7 > 130 *
#> |   |   |   |   |   |   |   |   [51] V5 > 1 *
#> |   |   |   |   |   |   |   [52] V2 > 78 *
#> |   |   |   |   |   |   [53] V5 > 8 *
#> |   |   |   [54] V5 > 15
#> |   |   |   |   [55] V5 <= 126
#> |   |   |   |   |   [56] V5 <= 69 *
#> |   |   |   |   |   [57] V5 > 69 *
#> |   |   |   |   [58] V5 > 126 *
#> |   |   [59] V5 > 170
#> |   |   |   [60] V2 <= 83
#> |   |   |   |   [61] V3 <= 2 *
#> |   |   |   |   [62] V3 > 2 *
#> |   |   |   [63] V2 > 83 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 171
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V2 <= 57 *
#> |   |   |   |   |   [7] V2 > 57 *
#> |   |   |   |   [8] V3 > 6
#> |   |   |   |   |   [9] V5 <= 16 *
#> |   |   |   |   |   [10] V5 > 16 *
#> |   |   |   [11] V5 > 171
#> |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 58 *
#> |   |   |   |   |   [15] V2 > 58 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V2 <= 55
#> |   |   |   |   [18] V6 <= 0
#> |   |   |   |   |   [19] V5 <= 8 *
#> |   |   |   |   |   [20] V5 > 8 *
#> |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   [22] V5 <= 4
#> |   |   |   |   |   |   [23] V7 <= 117 *
#> |   |   |   |   |   |   [24] V7 > 117 *
#> |   |   |   |   |   [25] V5 > 4 *
#> |   |   |   [26] V2 > 55
#> |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   [28] V3 <= 14
#> |   |   |   |   |   |   [29] V5 <= 6
#> |   |   |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   |   |   [31] V3 > 3 *
#> |   |   |   |   |   |   [32] V5 > 6 *
#> |   |   |   |   |   [33] V3 > 14 *
#> |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   [35] V3 <= 3 *
#> |   |   |   |   |   [36] V3 > 3
#> |   |   |   |   |   |   [37] V2 <= 64
#> |   |   |   |   |   |   |   [38] V5 <= 1 *
#> |   |   |   |   |   |   |   [39] V5 > 1 *
#> |   |   |   |   |   |   [40] V2 > 64
#> |   |   |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   |   |   [42] V5 > 3 *
#> |   [43] V2 > 71
#> |   |   [44] V6 <= 0
#> |   |   |   [45] V2 <= 86
#> |   |   |   |   [46] V3 <= 13
#> |   |   |   |   |   [47] V3 <= 10
#> |   |   |   |   |   |   [48] V7 <= 145
#> |   |   |   |   |   |   |   [49] V5 <= 88 *
#> |   |   |   |   |   |   |   [50] V5 > 88 *
#> |   |   |   |   |   |   [51] V7 > 145 *
#> |   |   |   |   |   [52] V3 > 10 *
#> |   |   |   |   [53] V3 > 13 *
#> |   |   |   [54] V2 > 86 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V5 <= 152
#> |   |   |   |   [57] V4 <= 0
#> |   |   |   |   |   [58] V5 <= 6 *
#> |   |   |   |   |   [59] V5 > 6
#> |   |   |   |   |   |   [60] V3 <= 8 *
#> |   |   |   |   |   |   [61] V3 > 8 *
#> |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   [63] V3 <= 13
#> |   |   |   |   |   |   [64] V7 <= 122 *
#> |   |   |   |   |   |   [65] V7 > 122
#> |   |   |   |   |   |   |   [66] V5 <= 1 *
#> |   |   |   |   |   |   |   [67] V5 > 1 *
#> |   |   |   |   |   [68] V3 > 13 *
#> |   |   |   [69] V5 > 152 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 53 *
#> |   |   |   |   [6] V2 > 53 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 57
#> |   |   |   |   |   |   [10] V2 <= 48 *
#> |   |   |   |   |   |   [11] V2 > 48 *
#> |   |   |   |   |   [12] V2 > 57 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V3 <= 13
#> |   |   |   |   |   |   [15] V5 <= 0 *
#> |   |   |   |   |   |   [16] V5 > 0
#> |   |   |   |   |   |   |   [17] V7 <= 141 *
#> |   |   |   |   |   |   |   [18] V7 > 141 *
#> |   |   |   |   |   [19] V3 > 13 *
#> |   |   [20] V2 > 60
#> |   |   |   [21] V4 <= 0
#> |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   [23] V2 <= 81
#> |   |   |   |   |   |   [24] V3 <= 7
#> |   |   |   |   |   |   |   [25] V7 <= 143 *
#> |   |   |   |   |   |   |   [26] V7 > 143 *
#> |   |   |   |   |   |   [27] V3 > 7 *
#> |   |   |   |   |   [28] V2 > 81 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V3 <= 4
#> |   |   |   |   |   |   [31] V7 <= 149
#> |   |   |   |   |   |   |   [32] V5 <= 3 *
#> |   |   |   |   |   |   |   [33] V5 > 3 *
#> |   |   |   |   |   |   [34] V7 > 149 *
#> |   |   |   |   |   [35] V3 > 4
#> |   |   |   |   |   |   [36] V3 <= 6 *
#> |   |   |   |   |   |   [37] V3 > 6 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 85
#> |   |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   |   [41] V5 <= 9
#> |   |   |   |   |   |   |   [42] V3 <= 3 *
#> |   |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   |   [44] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [45] V3 > 9 *
#> |   |   |   |   |   |   [46] V5 > 9 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V2 <= 72
#> |   |   |   |   |   |   |   [49] V2 <= 64 *
#> |   |   |   |   |   |   |   [50] V2 > 64
#> |   |   |   |   |   |   |   |   [51] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [52] V7 > 120
#> |   |   |   |   |   |   |   |   |   [53] V2 <= 70 *
#> |   |   |   |   |   |   |   |   |   [54] V2 > 70 *
#> |   |   |   |   |   |   [55] V2 > 72
#> |   |   |   |   |   |   |   [56] V7 <= 130 *
#> |   |   |   |   |   |   |   [57] V7 > 130 *
#> |   |   |   |   [58] V2 > 85 *
#> |   [59] V5 > 170
#> |   |   [60] V6 <= 0
#> |   |   |   [61] V3 <= 2 *
#> |   |   |   [62] V3 > 2 *
#> |   |   [63] V6 > 0
#> |   |   |   [64] V7 <= 134 *
#> |   |   |   [65] V7 > 134
#> |   |   |   |   [66] V3 <= 3 *
#> |   |   |   |   [67] V3 > 3 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 145 *
#> |   |   |   |   [6] V7 > 145 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 44 *
#> |   |   |   |   |   [10] V2 > 44 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V7 <= 116 *
#> |   |   |   |   |   [13] V7 > 116
#> |   |   |   |   |   |   [14] V3 <= 5 *
#> |   |   |   |   |   |   [15] V3 > 5 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 171
#> |   |   |   |   [18] V7 <= 120
#> |   |   |   |   |   [19] V4 <= 0 *
#> |   |   |   |   |   [20] V4 > 0
#> |   |   |   |   |   |   [21] V7 <= 102 *
#> |   |   |   |   |   |   [22] V7 > 102
#> |   |   |   |   |   |   |   [23] V7 <= 114 *
#> |   |   |   |   |   |   |   [24] V7 > 114 *
#> |   |   |   |   [25] V7 > 120
#> |   |   |   |   |   [26] V4 <= 0 *
#> |   |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   |   [29] V2 <= 63
#> |   |   |   |   |   |   |   |   [30] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [31] V3 > 5 *
#> |   |   |   |   |   |   |   [32] V2 > 63 *
#> |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   [34] V3 <= 6 *
#> |   |   |   |   |   |   |   [35] V3 > 6
#> |   |   |   |   |   |   |   |   [36] V2 <= 64 *
#> |   |   |   |   |   |   |   |   [37] V2 > 64 *
#> |   |   |   [38] V5 > 171
#> |   |   |   |   [39] V2 <= 60 *
#> |   |   |   |   [40] V2 > 60 *
#> |   [41] V2 > 70
#> |   |   [42] V4 <= 0
#> |   |   |   [43] V5 <= 173
#> |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   [45] V7 <= 139 *
#> |   |   |   |   |   [46] V7 > 139 *
#> |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   [48] V2 <= 82
#> |   |   |   |   |   |   [49] V7 <= 144 *
#> |   |   |   |   |   |   [50] V7 > 144 *
#> |   |   |   |   |   [51] V2 > 82 *
#> |   |   |   [52] V5 > 173
#> |   |   |   |   [53] V3 <= 11
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V3 > 11 *
#> |   |   [57] V4 > 0
#> |   |   |   [58] V6 <= 0
#> |   |   |   |   [59] V7 <= 142 *
#> |   |   |   |   [60] V7 > 142 *
#> |   |   |   [61] V6 > 0
#> |   |   |   |   [62] V2 <= 76
#> |   |   |   |   |   [63] V5 <= 0 *
#> |   |   |   |   |   [64] V5 > 0 *
#> |   |   |   |   [65] V2 > 76
#> |   |   |   |   |   [66] V5 <= 1 *
#> |   |   |   |   |   [67] V5 > 1 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V3 > 2
#> |   |   |   |   [8] V2 <= 70
#> |   |   |   |   |   [9] V2 <= 53 *
#> |   |   |   |   |   [10] V2 > 53
#> |   |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   |   [12] V5 <= 13 *
#> |   |   |   |   |   |   |   [13] V5 > 13 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   [15] V2 > 70
#> |   |   |   |   |   [16] V5 <= 15
#> |   |   |   |   |   |   [17] V7 <= 136 *
#> |   |   |   |   |   |   [18] V7 > 136 *
#> |   |   |   |   |   [19] V5 > 15
#> |   |   |   |   |   |   [20] V5 <= 76 *
#> |   |   |   |   |   |   [21] V5 > 76 *
#> |   |   [22] V5 > 170
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V3 <= 9
#> |   |   |   |   |   [25] V2 <= 77 *
#> |   |   |   |   |   [26] V2 > 77 *
#> |   |   |   |   [27] V3 > 9 *
#> |   |   |   [28] V6 > 0
#> |   |   |   |   [29] V3 <= 9 *
#> |   |   |   |   [30] V3 > 9 *
#> |   [31] V4 > 0
#> |   |   [32] V2 <= 76
#> |   |   |   [33] V3 <= 25
#> |   |   |   |   [34] V3 <= 5
#> |   |   |   |   |   [35] V2 <= 61
#> |   |   |   |   |   |   [36] V3 <= 3
#> |   |   |   |   |   |   |   [37] V7 <= 148 *
#> |   |   |   |   |   |   |   [38] V7 > 148 *
#> |   |   |   |   |   |   [39] V3 > 3
#> |   |   |   |   |   |   |   [40] V5 <= 2 *
#> |   |   |   |   |   |   |   [41] V5 > 2 *
#> |   |   |   |   |   [42] V2 > 61
#> |   |   |   |   |   |   [43] V3 <= 2 *
#> |   |   |   |   |   |   [44] V3 > 2
#> |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   [46] V6 > 0 *
#> |   |   |   |   [47] V3 > 5
#> |   |   |   |   |   [48] V5 <= 6
#> |   |   |   |   |   |   [49] V5 <= 2
#> |   |   |   |   |   |   |   [50] V5 <= 0 *
#> |   |   |   |   |   |   |   [51] V5 > 0 *
#> |   |   |   |   |   |   [52] V5 > 2 *
#> |   |   |   |   |   [53] V5 > 6
#> |   |   |   |   |   |   [54] V3 <= 14
#> |   |   |   |   |   |   |   [55] V7 <= 130 *
#> |   |   |   |   |   |   |   [56] V7 > 130 *
#> |   |   |   |   |   |   [57] V3 > 14
#> |   |   |   |   |   |   |   [58] V2 <= 57 *
#> |   |   |   |   |   |   |   [59] V2 > 57 *
#> |   |   |   [60] V3 > 25 *
#> |   |   [61] V2 > 76
#> |   |   |   [62] V2 <= 85
#> |   |   |   |   [63] V3 <= 8 *
#> |   |   |   |   [64] V3 > 8 *
#> |   |   |   [65] V2 > 85 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V2 <= 55
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 7
#> |   |   |   |   |   |   [8] V5 <= 2
#> |   |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   |   |   [11] V5 > 2 *
#> |   |   |   |   |   [12] V5 > 7 *
#> |   |   |   [13] V5 > 99
#> |   |   |   |   [14] V7 <= 142 *
#> |   |   |   |   [15] V7 > 142 *
#> |   |   [16] V2 > 55
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V5 <= 171
#> |   |   |   |   |   [19] V7 <= 138 *
#> |   |   |   |   |   [20] V7 > 138 *
#> |   |   |   |   [21] V5 > 171
#> |   |   |   |   |   [22] V7 <= 170 *
#> |   |   |   |   |   [23] V7 > 170 *
#> |   |   |   [24] V4 > 0
#> |   |   |   |   [25] V7 <= 140
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V3 <= 5 *
#> |   |   |   |   |   |   [28] V3 > 5 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V3 <= 5 *
#> |   |   |   |   |   |   [31] V3 > 5
#> |   |   |   |   |   |   |   [32] V7 <= 124 *
#> |   |   |   |   |   |   |   [33] V7 > 124 *
#> |   |   |   |   [34] V7 > 140
#> |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   [36] V5 <= 9 *
#> |   |   |   |   |   |   [37] V5 > 9 *
#> |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   [39] V7 <= 170 *
#> |   |   |   |   |   |   [40] V7 > 170 *
#> |   [41] V2 > 71
#> |   |   [42] V5 <= 168
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V5 <= 2 *
#> |   |   |   |   [45] V5 > 2
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   |   [48] V3 > 4 *
#> |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   [50] V5 <= 15 *
#> |   |   |   |   |   |   [51] V5 > 15
#> |   |   |   |   |   |   |   [52] V3 <= 5 *
#> |   |   |   |   |   |   |   [53] V3 > 5 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V5 <= 8
#> |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V2 <= 79
#> |   |   |   |   |   |   |   [59] V2 <= 76 *
#> |   |   |   |   |   |   |   [60] V2 > 76 *
#> |   |   |   |   |   |   [61] V2 > 79 *
#> |   |   |   |   [62] V5 > 8 *
#> |   |   [63] V5 > 168 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V7 <= 112 *
#> |   |   |   [5] V7 > 112
#> |   |   |   |   [6] V3 <= 4 *
#> |   |   |   |   [7] V3 > 4 *
#> |   |   [8] V2 > 54
#> |   |   |   [9] V7 <= 100 *
#> |   |   |   [10] V7 > 100
#> |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   [12] V3 <= 11
#> |   |   |   |   |   |   [13] V3 <= 5
#> |   |   |   |   |   |   |   [14] V5 <= 168
#> |   |   |   |   |   |   |   |   [15] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [16] V5 > 5 *
#> |   |   |   |   |   |   |   [17] V5 > 168 *
#> |   |   |   |   |   |   [18] V3 > 5
#> |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   |   [21] V3 > 11 *
#> |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   [23] V7 <= 160
#> |   |   |   |   |   |   [24] V5 <= 152
#> |   |   |   |   |   |   |   [25] V3 <= 6
#> |   |   |   |   |   |   |   |   [26] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [27] V5 > 5 *
#> |   |   |   |   |   |   |   [28] V3 > 6 *
#> |   |   |   |   |   |   [29] V5 > 152
#> |   |   |   |   |   |   |   [30] V2 <= 78 *
#> |   |   |   |   |   |   |   [31] V2 > 78 *
#> |   |   |   |   |   [32] V7 > 160
#> |   |   |   |   |   |   [33] V2 <= 79 *
#> |   |   |   |   |   |   [34] V2 > 79 *
#> |   [35] V4 > 0
#> |   |   [36] V3 <= 1 *
#> |   |   [37] V3 > 1
#> |   |   |   [38] V2 <= 76
#> |   |   |   |   [39] V2 <= 54
#> |   |   |   |   |   [40] V5 <= 7
#> |   |   |   |   |   |   [41] V5 <= 2
#> |   |   |   |   |   |   |   [42] V7 <= 121 *
#> |   |   |   |   |   |   |   [43] V7 > 121
#> |   |   |   |   |   |   |   |   [44] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [45] V6 > 0 *
#> |   |   |   |   |   |   [46] V5 > 2 *
#> |   |   |   |   |   [47] V5 > 7 *
#> |   |   |   |   [48] V2 > 54
#> |   |   |   |   |   [49] V5 <= 6
#> |   |   |   |   |   |   [50] V3 <= 10
#> |   |   |   |   |   |   |   [51] V7 <= 122 *
#> |   |   |   |   |   |   |   [52] V7 > 122
#> |   |   |   |   |   |   |   |   [53] V3 <= 5
#> |   |   |   |   |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   |   |   |   |   [56] V3 > 5 *
#> |   |   |   |   |   |   [57] V3 > 10 *
#> |   |   |   |   |   [58] V5 > 6
#> |   |   |   |   |   |   [59] V2 <= 58 *
#> |   |   |   |   |   |   [60] V2 > 58
#> |   |   |   |   |   |   |   [61] V5 <= 8 *
#> |   |   |   |   |   |   |   [62] V5 > 8
#> |   |   |   |   |   |   |   |   [63] V5 <= 12
#> |   |   |   |   |   |   |   |   |   [64] V5 <= 10 *
#> |   |   |   |   |   |   |   |   |   [65] V5 > 10 *
#> |   |   |   |   |   |   |   |   [66] V5 > 12 *
#> |   |   |   [67] V2 > 76
#> |   |   |   |   [68] V3 <= 3 *
#> |   |   |   |   [69] V3 > 3
#> |   |   |   |   |   [70] V2 <= 84
#> |   |   |   |   |   |   [71] V3 <= 15
#> |   |   |   |   |   |   |   [72] V5 <= 1 *
#> |   |   |   |   |   |   |   [73] V5 > 1 *
#> |   |   |   |   |   |   [74] V3 > 15 *
#> |   |   |   |   |   [75] V2 > 84 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V5 <= 73 *
#> |   |   |   |   [6] V5 > 73
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V2 > 54
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 65
#> |   |   |   |   |   |   [12] V2 <= 60 *
#> |   |   |   |   |   |   [13] V2 > 60 *
#> |   |   |   |   |   [14] V2 > 65 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 101
#> |   |   |   |   |   |   [17] V5 <= 4 *
#> |   |   |   |   |   |   [18] V5 > 4 *
#> |   |   |   |   |   [19] V5 > 101 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V2 <= 54
#> |   |   |   |   [22] V7 <= 115 *
#> |   |   |   |   [23] V7 > 115
#> |   |   |   |   |   [24] V7 <= 140
#> |   |   |   |   |   |   [25] V7 <= 124 *
#> |   |   |   |   |   |   [26] V7 > 124 *
#> |   |   |   |   |   [27] V7 > 140
#> |   |   |   |   |   |   [28] V5 <= 3 *
#> |   |   |   |   |   |   [29] V5 > 3 *
#> |   |   |   [30] V2 > 54
#> |   |   |   |   [31] V3 <= 17
#> |   |   |   |   |   [32] V3 <= 2 *
#> |   |   |   |   |   [33] V3 > 2
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V5 <= 8
#> |   |   |   |   |   |   |   |   [36] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [37] V5 > 2 *
#> |   |   |   |   |   |   |   [38] V5 > 8 *
#> |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   [40] V3 <= 4 *
#> |   |   |   |   |   |   |   [41] V3 > 4
#> |   |   |   |   |   |   |   |   [42] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [43] V3 > 7
#> |   |   |   |   |   |   |   |   |   [44] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [45] V5 > 2
#> |   |   |   |   |   |   |   |   |   |   [46] V5 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   [47] V5 > 11 *
#> |   |   |   |   [48] V3 > 17 *
#> |   [49] V2 > 71
#> |   |   [50] V2 <= 84
#> |   |   |   [51] V6 <= 0
#> |   |   |   |   [52] V3 <= 12
#> |   |   |   |   |   [53] V5 <= 161
#> |   |   |   |   |   |   [54] V5 <= 8 *
#> |   |   |   |   |   |   [55] V5 > 8 *
#> |   |   |   |   |   [56] V5 > 161 *
#> |   |   |   |   [57] V3 > 12 *
#> |   |   |   [58] V6 > 0
#> |   |   |   |   [59] V5 <= 173
#> |   |   |   |   |   [60] V2 <= 76
#> |   |   |   |   |   |   [61] V4 <= 0 *
#> |   |   |   |   |   |   [62] V4 > 0
#> |   |   |   |   |   |   |   [63] V7 <= 150 *
#> |   |   |   |   |   |   |   [64] V7 > 150 *
#> |   |   |   |   |   [65] V2 > 76
#> |   |   |   |   |   |   [66] V4 <= 0 *
#> |   |   |   |   |   |   [67] V4 > 0 *
#> |   |   |   |   [68] V5 > 173 *
#> |   |   [69] V2 > 84
#> |   |   |   [70] V2 <= 90
#> |   |   |   |   [71] V7 <= 130 *
#> |   |   |   |   [72] V7 > 130 *
#> |   |   |   [73] V2 > 90 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 8 *
#> |   |   |   |   [6] V3 > 8 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 112 *
#> |   |   |   |   |   [10] V7 > 112
#> |   |   |   |   |   |   [11] V5 <= 15 *
#> |   |   |   |   |   |   [12] V5 > 15 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 6
#> |   |   |   |   |   |   [15] V5 <= 3 *
#> |   |   |   |   |   |   [16] V5 > 3 *
#> |   |   |   |   |   [17] V5 > 6
#> |   |   |   |   |   |   [18] V7 <= 140
#> |   |   |   |   |   |   |   [19] V3 <= 7 *
#> |   |   |   |   |   |   |   [20] V3 > 7 *
#> |   |   |   |   |   |   [21] V7 > 140 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V3 <= 19
#> |   |   |   |   |   [25] V7 <= 113 *
#> |   |   |   |   |   [26] V7 > 113
#> |   |   |   |   |   |   [27] V7 <= 121 *
#> |   |   |   |   |   |   [28] V7 > 121
#> |   |   |   |   |   |   |   [29] V2 <= 63
#> |   |   |   |   |   |   |   |   [30] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [31] V3 > 5 *
#> |   |   |   |   |   |   |   [32] V2 > 63
#> |   |   |   |   |   |   |   |   [33] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [34] V2 > 69 *
#> |   |   |   |   [35] V3 > 19 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V2 <= 85
#> |   |   |   |   |   [38] V5 <= 6
#> |   |   |   |   |   |   [39] V2 <= 66
#> |   |   |   |   |   |   |   [40] V7 <= 115 *
#> |   |   |   |   |   |   |   [41] V7 > 115
#> |   |   |   |   |   |   |   |   [42] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V5 > 0 *
#> |   |   |   |   |   |   [44] V2 > 66
#> |   |   |   |   |   |   |   [45] V3 <= 6 *
#> |   |   |   |   |   |   |   [46] V3 > 6 *
#> |   |   |   |   |   [47] V5 > 6
#> |   |   |   |   |   |   [48] V7 <= 133 *
#> |   |   |   |   |   |   [49] V7 > 133
#> |   |   |   |   |   |   |   [50] V2 <= 69 *
#> |   |   |   |   |   |   |   [51] V2 > 69 *
#> |   |   |   |   [52] V2 > 85 *
#> |   [53] V5 > 173
#> |   |   [54] V2 <= 82
#> |   |   |   [55] V3 <= 3
#> |   |   |   |   [56] V2 <= 50 *
#> |   |   |   |   [57] V2 > 50
#> |   |   |   |   |   [58] V2 <= 75 *
#> |   |   |   |   |   [59] V2 > 75 *
#> |   |   |   [60] V3 > 3 *
#> |   |   [61] V2 > 82 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 6
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V3 > 6 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V7 <= 118
#> |   |   |   |   |   [11] V5 <= 8 *
#> |   |   |   |   |   [12] V5 > 8 *
#> |   |   |   |   [13] V7 > 118
#> |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   [15] V7 <= 134 *
#> |   |   |   |   |   |   [16] V7 > 134
#> |   |   |   |   |   |   |   [17] V7 <= 154
#> |   |   |   |   |   |   |   |   [18] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [19] V5 > 1 *
#> |   |   |   |   |   |   |   [20] V7 > 154 *
#> |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   [22] V7 <= 165
#> |   |   |   |   |   |   |   [23] V7 <= 130 *
#> |   |   |   |   |   |   |   [24] V7 > 130
#> |   |   |   |   |   |   |   |   [25] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [26] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [27] V7 > 140
#> |   |   |   |   |   |   |   |   |   |   [28] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [29] V5 > 2 *
#> |   |   |   |   |   |   |   |   [30] V5 > 9 *
#> |   |   |   |   |   |   [31] V7 > 165 *
#> |   |   [32] V5 > 170
#> |   |   |   [33] V2 <= 68
#> |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   [37] V3 > 3 *
#> |   |   |   [38] V2 > 68 *
#> |   [39] V2 > 71
#> |   |   [40] V6 <= 0
#> |   |   |   [41] V2 <= 81
#> |   |   |   |   [42] V3 <= 6 *
#> |   |   |   |   [43] V3 > 6
#> |   |   |   |   |   [44] V3 <= 10 *
#> |   |   |   |   |   [45] V3 > 10 *
#> |   |   |   [46] V2 > 81
#> |   |   |   |   [47] V5 <= 114 *
#> |   |   |   |   [48] V5 > 114 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V5 <= 173
#> |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   [52] V2 <= 77 *
#> |   |   |   |   |   [53] V2 > 77
#> |   |   |   |   |   |   [54] V2 <= 86 *
#> |   |   |   |   |   |   [55] V2 > 86 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V5 <= 1
#> |   |   |   |   |   |   [58] V7 <= 125 *
#> |   |   |   |   |   |   [59] V7 > 125 *
#> |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   [61] V5 > 173 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V3 <= 16
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V2 <= 52
#> |   |   |   |   |   |   |   [9] V2 <= 46 *
#> |   |   |   |   |   |   |   [10] V2 > 46 *
#> |   |   |   |   |   |   [11] V2 > 52 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V2 <= 53
#> |   |   |   |   |   |   |   [14] V3 <= 6
#> |   |   |   |   |   |   |   |   [15] V7 <= 122 *
#> |   |   |   |   |   |   |   |   [16] V7 > 122 *
#> |   |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   |   |   |   |   [18] V2 > 53 *
#> |   |   |   |   [19] V3 > 16 *
#> |   |   [20] V2 > 60
#> |   |   |   [21] V3 <= 12
#> |   |   |   |   [22] V4 <= 0
#> |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   [26] V5 <= 11 *
#> |   |   |   |   |   |   |   [27] V5 > 11 *
#> |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   |   |   [31] V7 <= 147
#> |   |   |   |   |   |   |   |   [32] V2 <= 77 *
#> |   |   |   |   |   |   |   |   [33] V2 > 77 *
#> |   |   |   |   |   |   |   [34] V7 > 147 *
#> |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   [36] V2 <= 85
#> |   |   |   |   |   |   [37] V7 <= 122
#> |   |   |   |   |   |   |   [38] V7 <= 114 *
#> |   |   |   |   |   |   |   [39] V7 > 114 *
#> |   |   |   |   |   |   [40] V7 > 122
#> |   |   |   |   |   |   |   [41] V3 <= 11
#> |   |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   |   [44] V7 <= 167
#> |   |   |   |   |   |   |   |   |   |   [45] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [46] V3 > 6 *
#> |   |   |   |   |   |   |   |   |   [47] V7 > 167 *
#> |   |   |   |   |   |   |   [48] V3 > 11 *
#> |   |   |   |   |   [49] V2 > 85 *
#> |   |   |   [50] V3 > 12
#> |   |   |   |   [51] V4 <= 0 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V3 <= 19
#> |   |   |   |   |   |   [54] V5 <= 9 *
#> |   |   |   |   |   |   [55] V5 > 9
#> |   |   |   |   |   |   |   [56] V2 <= 69 *
#> |   |   |   |   |   |   |   [57] V2 > 69 *
#> |   |   |   |   |   [58] V3 > 19 *
#> |   [59] V5 > 173
#> |   |   [60] V6 <= 0
#> |   |   |   [61] V3 <= 10
#> |   |   |   |   [62] V3 <= 2 *
#> |   |   |   |   [63] V3 > 2 *
#> |   |   |   [64] V3 > 10 *
#> |   |   [65] V6 > 0
#> |   |   |   [66] V3 <= 3 *
#> |   |   |   [67] V3 > 3 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V2 <= 55
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V2 <= 45 *
#> |   |   |   |   [6] V2 > 45
#> |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   [8] V5 > 1 *
#> |   |   |   [9] V5 > 16 *
#> |   |   [10] V6 > 0
#> |   |   |   [11] V2 <= 46 *
#> |   |   |   [12] V2 > 46
#> |   |   |   |   [13] V2 <= 52 *
#> |   |   |   |   [14] V2 > 52 *
#> |   [15] V2 > 55
#> |   |   [16] V7 <= 122
#> |   |   |   [17] V5 <= 168
#> |   |   |   |   [18] V3 <= 2 *
#> |   |   |   |   [19] V3 > 2
#> |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   [21] V5 > 2
#> |   |   |   |   |   |   [22] V5 <= 13
#> |   |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   |   |   [25] V5 > 13 *
#> |   |   |   [26] V5 > 168 *
#> |   |   [27] V7 > 122
#> |   |   |   [28] V5 <= 177
#> |   |   |   |   [29] V5 <= 15
#> |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   [31] V4 <= 0 *
#> |   |   |   |   |   |   [32] V4 > 0
#> |   |   |   |   |   |   |   [33] V3 <= 5 *
#> |   |   |   |   |   |   |   [34] V3 > 5
#> |   |   |   |   |   |   |   |   [35] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V4 <= 0
#> |   |   |   |   |   |   |   [39] V3 <= 4 *
#> |   |   |   |   |   |   |   [40] V3 > 4 *
#> |   |   |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   |   |   [42] V7 <= 136 *
#> |   |   |   |   |   |   |   [43] V7 > 136
#> |   |   |   |   |   |   |   |   [44] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [45] V7 > 147
#> |   |   |   |   |   |   |   |   |   [46] V2 <= 71 *
#> |   |   |   |   |   |   |   |   |   [47] V2 > 71 *
#> |   |   |   |   [48] V5 > 15
#> |   |   |   |   |   [49] V5 <= 161
#> |   |   |   |   |   |   [50] V5 <= 70 *
#> |   |   |   |   |   |   [51] V5 > 70 *
#> |   |   |   |   |   [52] V5 > 161 *
#> |   |   |   [53] V5 > 177 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V5 <= 36 *
#> |   |   |   |   [6] V5 > 36 *
#> |   |   |   [7] V3 > 2
#> |   |   |   |   [8] V5 <= 170
#> |   |   |   |   |   [9] V2 <= 56 *
#> |   |   |   |   |   [10] V2 > 56
#> |   |   |   |   |   |   [11] V5 <= 13 *
#> |   |   |   |   |   |   [12] V5 > 13 *
#> |   |   |   |   [13] V5 > 170
#> |   |   |   |   |   [14] V2 <= 58 *
#> |   |   |   |   |   [15] V2 > 58 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V2 <= 54
#> |   |   |   |   [18] V7 <= 112 *
#> |   |   |   |   [19] V7 > 112
#> |   |   |   |   |   [20] V2 <= 41 *
#> |   |   |   |   |   [21] V2 > 41
#> |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   [24] V2 > 54
#> |   |   |   |   [25] V7 <= 114 *
#> |   |   |   |   [26] V7 > 114
#> |   |   |   |   |   [27] V3 <= 18
#> |   |   |   |   |   |   [28] V3 <= 12
#> |   |   |   |   |   |   |   [29] V3 <= 5
#> |   |   |   |   |   |   |   |   [30] V3 <= 4
#> |   |   |   |   |   |   |   |   |   [31] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [32] V5 > 0 *
#> |   |   |   |   |   |   |   |   [33] V3 > 4 *
#> |   |   |   |   |   |   |   [34] V3 > 5
#> |   |   |   |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [36] V6 > 0 *
#> |   |   |   |   |   |   [37] V3 > 12 *
#> |   |   |   |   |   [38] V3 > 18 *
#> |   [39] V2 > 70
#> |   |   [40] V5 <= 173
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V5 <= 152
#> |   |   |   |   |   [43] V2 <= 77
#> |   |   |   |   |   |   [44] V3 <= 6 *
#> |   |   |   |   |   |   [45] V3 > 6 *
#> |   |   |   |   |   [46] V2 > 77
#> |   |   |   |   |   |   [47] V2 <= 87
#> |   |   |   |   |   |   |   [48] V7 <= 138 *
#> |   |   |   |   |   |   |   [49] V7 > 138 *
#> |   |   |   |   |   |   [50] V2 > 87 *
#> |   |   |   |   [51] V5 > 152 *
#> |   |   |   [52] V4 > 0
#> |   |   |   |   [53] V3 <= 19
#> |   |   |   |   |   [54] V7 <= 126
#> |   |   |   |   |   |   [55] V3 <= 6 *
#> |   |   |   |   |   |   [56] V3 > 6 *
#> |   |   |   |   |   [57] V7 > 126
#> |   |   |   |   |   |   [58] V2 <= 80
#> |   |   |   |   |   |   |   [59] V3 <= 5 *
#> |   |   |   |   |   |   |   [60] V3 > 5
#> |   |   |   |   |   |   |   |   [61] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [62] V6 > 0 *
#> |   |   |   |   |   |   [63] V2 > 80 *
#> |   |   |   |   [64] V3 > 19 *
#> |   |   [65] V5 > 173
#> |   |   |   [66] V2 <= 84
#> |   |   |   |   [67] V6 <= 0 *
#> |   |   |   |   [68] V6 > 0 *
#> |   |   |   [69] V2 > 84 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V5 <= 2 *
#> |   |   |   |   [9] V5 > 2
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V2 <= 78 *
#> |   |   |   |   |   |   [12] V2 > 78 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V2 <= 73 *
#> |   |   |   |   |   |   [15] V2 > 73
#> |   |   |   |   |   |   |   [16] V2 <= 82 *
#> |   |   |   |   |   |   |   [17] V2 > 82 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V6 <= 0
#> |   |   |   |   [20] V3 <= 3
#> |   |   |   |   |   [21] V2 <= 65 *
#> |   |   |   |   |   [22] V2 > 65 *
#> |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   [24] V7 <= 183
#> |   |   |   |   |   |   [25] V3 <= 18
#> |   |   |   |   |   |   |   [26] V2 <= 61
#> |   |   |   |   |   |   |   |   [27] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [28] V7 > 110 *
#> |   |   |   |   |   |   |   [29] V2 > 61
#> |   |   |   |   |   |   |   |   [30] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [31] V5 > 6 *
#> |   |   |   |   |   |   [32] V3 > 18 *
#> |   |   |   |   |   [33] V7 > 183 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 70
#> |   |   |   |   |   [36] V2 <= 61
#> |   |   |   |   |   |   [37] V5 <= 0
#> |   |   |   |   |   |   |   [38] V7 <= 129 *
#> |   |   |   |   |   |   |   [39] V7 > 129 *
#> |   |   |   |   |   |   [40] V5 > 0
#> |   |   |   |   |   |   |   [41] V2 <= 57
#> |   |   |   |   |   |   |   |   [42] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [43] V5 > 6 *
#> |   |   |   |   |   |   |   [44] V2 > 57 *
#> |   |   |   |   |   [45] V2 > 61
#> |   |   |   |   |   |   [46] V3 <= 4 *
#> |   |   |   |   |   |   [47] V3 > 4
#> |   |   |   |   |   |   |   [48] V7 <= 150 *
#> |   |   |   |   |   |   |   [49] V7 > 150 *
#> |   |   |   |   [50] V2 > 70
#> |   |   |   |   |   [51] V3 <= 12
#> |   |   |   |   |   |   [52] V2 <= 82
#> |   |   |   |   |   |   |   [53] V5 <= 1 *
#> |   |   |   |   |   |   |   [54] V5 > 1 *
#> |   |   |   |   |   |   [55] V2 > 82 *
#> |   |   |   |   |   [56] V3 > 12 *
#> |   [57] V5 > 171
#> |   |   [58] V6 <= 0 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 130 *
#> |   |   |   [61] V7 > 130
#> |   |   |   |   [62] V3 <= 10 *
#> |   |   |   |   [63] V3 > 10 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V7 <= 147
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 47 *
#> |   |   |   |   [6] V2 > 47
#> |   |   |   |   |   [7] V5 <= 170
#> |   |   |   |   |   |   [8] V3 <= 3 *
#> |   |   |   |   |   |   [9] V3 > 3
#> |   |   |   |   |   |   |   [10] V5 <= 15 *
#> |   |   |   |   |   |   |   [11] V5 > 15 *
#> |   |   |   |   |   [12] V5 > 170
#> |   |   |   |   |   |   [13] V7 <= 128 *
#> |   |   |   |   |   |   [14] V7 > 128 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 54
#> |   |   |   |   |   [17] V2 <= 43 *
#> |   |   |   |   |   [18] V2 > 43
#> |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   [20] V7 > 130 *
#> |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   |   [23] V5 > 0
#> |   |   |   |   |   |   [24] V7 <= 114 *
#> |   |   |   |   |   |   [25] V7 > 114
#> |   |   |   |   |   |   |   [26] V5 <= 8
#> |   |   |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   |   |   |   [29] V5 > 8 *
#> |   |   [30] V7 > 147
#> |   |   |   [31] V2 <= 59
#> |   |   |   |   [32] V5 <= 169
#> |   |   |   |   |   [33] V5 <= 3
#> |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   [35] V6 > 0 *
#> |   |   |   |   |   [36] V5 > 3 *
#> |   |   |   |   [37] V5 > 169 *
#> |   |   |   [38] V2 > 59
#> |   |   |   |   [39] V7 <= 172
#> |   |   |   |   |   [40] V4 <= 0 *
#> |   |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   |   [42] V7 <= 154 *
#> |   |   |   |   |   |   [43] V7 > 154 *
#> |   |   |   |   [44] V7 > 172 *
#> |   [45] V2 > 70
#> |   |   [46] V7 <= 106
#> |   |   |   [47] V7 <= 90 *
#> |   |   |   [48] V7 > 90 *
#> |   |   [49] V7 > 106
#> |   |   |   [50] V5 <= 177
#> |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   [52] V5 <= 161
#> |   |   |   |   |   |   [53] V7 <= 139 *
#> |   |   |   |   |   |   [54] V7 > 139
#> |   |   |   |   |   |   |   [55] V5 <= 8 *
#> |   |   |   |   |   |   |   [56] V5 > 8 *
#> |   |   |   |   |   [57] V5 > 161 *
#> |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   [59] V6 <= 0
#> |   |   |   |   |   |   [60] V5 <= 4 *
#> |   |   |   |   |   |   [61] V5 > 4 *
#> |   |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   |   [63] V2 <= 76
#> |   |   |   |   |   |   |   [64] V7 <= 150 *
#> |   |   |   |   |   |   |   [65] V7 > 150 *
#> |   |   |   |   |   |   [66] V2 > 76
#> |   |   |   |   |   |   |   [67] V5 <= 1 *
#> |   |   |   |   |   |   |   [68] V5 > 1 *
#> |   |   |   [69] V5 > 177 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V3 <= 1 *
#> |   |   |   |   [6] V3 > 1 *
#> |   |   |   [7] V3 > 2
#> |   |   |   |   [8] V2 <= 60 *
#> |   |   |   |   [9] V2 > 60
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V2 <= 81 *
#> |   |   |   |   |   |   [12] V2 > 81 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V7 <= 122 *
#> |   |   |   |   |   |   [15] V7 > 122
#> |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V7 <= 93 *
#> |   |   |   [20] V7 > 93
#> |   |   |   |   [21] V3 <= 26
#> |   |   |   |   |   [22] V5 <= 0
#> |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V2 <= 76
#> |   |   |   |   |   |   |   |   [26] V2 <= 46 *
#> |   |   |   |   |   |   |   |   [27] V2 > 46 *
#> |   |   |   |   |   |   |   [28] V2 > 76 *
#> |   |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   |   [30] V7 <= 147
#> |   |   |   |   |   |   |   [31] V5 <= 8
#> |   |   |   |   |   |   |   |   [32] V2 <= 66
#> |   |   |   |   |   |   |   |   |   [33] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [34] V5 > 1 *
#> |   |   |   |   |   |   |   |   [35] V2 > 66
#> |   |   |   |   |   |   |   |   |   [36] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [37] V3 > 8 *
#> |   |   |   |   |   |   |   [38] V5 > 8
#> |   |   |   |   |   |   |   |   [39] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [40] V7 > 129 *
#> |   |   |   |   |   |   [41] V7 > 147
#> |   |   |   |   |   |   |   [42] V5 <= 6
#> |   |   |   |   |   |   |   |   [43] V3 <= 4
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 3 *
#> |   |   |   |   |   |   |   |   [46] V3 > 4 *
#> |   |   |   |   |   |   |   [47] V5 > 6
#> |   |   |   |   |   |   |   |   [48] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [49] V2 > 63 *
#> |   |   |   |   [50] V3 > 26 *
#> |   [51] V5 > 177 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V5 <= 15 *
#> |   |   |   |   |   [8] V5 > 15 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 54
#> |   |   |   |   |   [11] V2 <= 51
#> |   |   |   |   |   |   [12] V2 <= 41 *
#> |   |   |   |   |   |   [13] V2 > 41
#> |   |   |   |   |   |   |   [14] V5 <= 0 *
#> |   |   |   |   |   |   |   [15] V5 > 0 *
#> |   |   |   |   |   [16] V2 > 51 *
#> |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   [18] V5 <= 6
#> |   |   |   |   |   |   [19] V3 <= 2 *
#> |   |   |   |   |   |   [20] V3 > 2
#> |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   |   [23] V2 <= 66
#> |   |   |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   |   |   [26] V2 > 66 *
#> |   |   |   |   |   [27] V5 > 6
#> |   |   |   |   |   |   [28] V3 <= 10 *
#> |   |   |   |   |   |   [29] V3 > 10
#> |   |   |   |   |   |   |   [30] V2 <= 67
#> |   |   |   |   |   |   |   |   [31] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [32] V7 > 140 *
#> |   |   |   |   |   |   |   [33] V2 > 67 *
#> |   |   [34] V5 > 171
#> |   |   |   [35] V6 <= 0 *
#> |   |   |   [36] V6 > 0
#> |   |   |   |   [37] V2 <= 57 *
#> |   |   |   |   [38] V2 > 57 *
#> |   [39] V2 > 71
#> |   |   [40] V5 <= 173
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V3 <= 4 *
#> |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V2 <= 84
#> |   |   |   |   |   |   [47] V5 <= 6 *
#> |   |   |   |   |   |   [48] V5 > 6 *
#> |   |   |   |   |   [49] V2 > 84 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 76
#> |   |   |   |   |   [52] V2 <= 73 *
#> |   |   |   |   |   [53] V2 > 73
#> |   |   |   |   |   |   [54] V5 <= 1 *
#> |   |   |   |   |   |   [55] V5 > 1 *
#> |   |   |   |   [56] V2 > 76
#> |   |   |   |   |   [57] V5 <= 6
#> |   |   |   |   |   |   [58] V2 <= 85
#> |   |   |   |   |   |   |   [59] V5 <= 1 *
#> |   |   |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   |   |   |   [61] V2 > 85 *
#> |   |   |   |   |   [62] V5 > 6 *
#> |   |   [63] V5 > 173
#> |   |   |   [64] V6 <= 0 *
#> |   |   |   [65] V6 > 0 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V2 <= 54
#> |   |   |   |   |   |   [10] V5 <= 0 *
#> |   |   |   |   |   |   [11] V5 > 0
#> |   |   |   |   |   |   |   [12] V2 <= 43 *
#> |   |   |   |   |   |   |   [13] V2 > 43
#> |   |   |   |   |   |   |   |   [14] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [15] V3 > 4
#> |   |   |   |   |   |   |   |   |   [16] V2 <= 49 *
#> |   |   |   |   |   |   |   |   |   [17] V2 > 49 *
#> |   |   |   |   |   [18] V2 > 54
#> |   |   |   |   |   |   [19] V5 <= 6
#> |   |   |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   |   |   [24] V5 > 6
#> |   |   |   |   |   |   |   [25] V2 <= 57 *
#> |   |   |   |   |   |   |   [26] V2 > 57
#> |   |   |   |   |   |   |   |   [27] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [28] V2 > 62 *
#> |   |   |   [29] V5 > 16 *
#> |   |   [30] V5 > 170
#> |   |   |   [31] V2 <= 58
#> |   |   |   |   [32] V7 <= 130 *
#> |   |   |   |   [33] V7 > 130 *
#> |   |   |   [34] V2 > 58 *
#> |   [35] V2 > 66
#> |   |   [36] V5 <= 173
#> |   |   |   [37] V3 <= 6
#> |   |   |   |   [38] V4 <= 0
#> |   |   |   |   |   [39] V7 <= 162
#> |   |   |   |   |   |   [40] V3 <= 3
#> |   |   |   |   |   |   |   [41] V2 <= 83 *
#> |   |   |   |   |   |   |   [42] V2 > 83 *
#> |   |   |   |   |   |   [43] V3 > 3
#> |   |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   |   [46] V7 > 162 *
#> |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   [48] V2 <= 82
#> |   |   |   |   |   |   [49] V7 <= 122 *
#> |   |   |   |   |   |   [50] V7 > 122 *
#> |   |   |   |   |   [51] V2 > 82 *
#> |   |   |   [52] V3 > 6
#> |   |   |   |   [53] V2 <= 80
#> |   |   |   |   |   [54] V2 <= 68 *
#> |   |   |   |   |   [55] V2 > 68
#> |   |   |   |   |   |   [56] V4 <= 0 *
#> |   |   |   |   |   |   [57] V4 > 0
#> |   |   |   |   |   |   |   [58] V2 <= 70 *
#> |   |   |   |   |   |   |   [59] V2 > 70
#> |   |   |   |   |   |   |   |   [60] V7 <= 145
#> |   |   |   |   |   |   |   |   |   [61] V2 <= 73 *
#> |   |   |   |   |   |   |   |   |   [62] V2 > 73 *
#> |   |   |   |   |   |   |   |   [63] V7 > 145
#> |   |   |   |   |   |   |   |   |   [64] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [65] V7 > 150 *
#> |   |   |   |   [66] V2 > 80
#> |   |   |   |   |   [67] V4 <= 0 *
#> |   |   |   |   |   [68] V4 > 0 *
#> |   |   [69] V5 > 173 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V5 <= 5
#> |   |   |   [4] V3 <= 2 *
#> |   |   |   [5] V3 > 2
#> |   |   |   |   [6] V2 <= 42 *
#> |   |   |   |   [7] V2 > 42
#> |   |   |   |   |   [8] V5 <= 2 *
#> |   |   |   |   |   [9] V5 > 2 *
#> |   |   [10] V5 > 5
#> |   |   |   [11] V5 <= 147 *
#> |   |   |   [12] V5 > 147 *
#> |   [13] V2 > 54
#> |   |   [14] V5 <= 177
#> |   |   |   [15] V2 <= 71
#> |   |   |   |   [16] V7 <= 122
#> |   |   |   |   |   [17] V4 <= 0 *
#> |   |   |   |   |   [18] V4 > 0
#> |   |   |   |   |   |   [19] V7 <= 110 *
#> |   |   |   |   |   |   [20] V7 > 110 *
#> |   |   |   |   [21] V7 > 122
#> |   |   |   |   |   [22] V7 <= 172
#> |   |   |   |   |   |   [23] V7 <= 133
#> |   |   |   |   |   |   |   [24] V2 <= 65 *
#> |   |   |   |   |   |   |   [25] V2 > 65 *
#> |   |   |   |   |   |   [26] V7 > 133
#> |   |   |   |   |   |   |   [27] V4 <= 0 *
#> |   |   |   |   |   |   |   [28] V4 > 0
#> |   |   |   |   |   |   |   |   [29] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [30] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 4 *
#> |   |   |   |   |   |   |   |   [32] V5 > 6
#> |   |   |   |   |   |   |   |   |   [33] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   [34] V7 > 150 *
#> |   |   |   |   |   [35] V7 > 172 *
#> |   |   |   [36] V2 > 71
#> |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V5 <= 15 *
#> |   |   |   |   |   |   [40] V5 > 15 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V7 <= 110 *
#> |   |   |   |   |   |   [43] V7 > 110
#> |   |   |   |   |   |   |   [44] V5 <= 7 *
#> |   |   |   |   |   |   |   [45] V5 > 7
#> |   |   |   |   |   |   |   |   [46] V5 <= 59 *
#> |   |   |   |   |   |   |   |   [47] V5 > 59 *
#> |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   |   [50] V3 <= 7 *
#> |   |   |   |   |   |   [51] V3 > 7 *
#> |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   [53] V5 <= 4
#> |   |   |   |   |   |   |   [54] V3 <= 6 *
#> |   |   |   |   |   |   |   [55] V3 > 6 *
#> |   |   |   |   |   |   [56] V5 > 4 *
#> |   |   [57] V5 > 177 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 174 *
#> |   |   |   [5] V5 > 174 *
#> |   |   [6] V2 > 54
#> |   |   |   [7] V5 <= 165
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 145
#> |   |   |   |   |   |   [10] V5 <= 8 *
#> |   |   |   |   |   |   [11] V5 > 8 *
#> |   |   |   |   |   [12] V7 > 145 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V7 <= 112 *
#> |   |   |   |   |   [15] V7 > 112
#> |   |   |   |   |   |   [16] V7 <= 148
#> |   |   |   |   |   |   |   [17] V2 <= 82
#> |   |   |   |   |   |   |   |   [18] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [19] V5 > 7 *
#> |   |   |   |   |   |   |   [20] V2 > 82 *
#> |   |   |   |   |   |   [21] V7 > 148
#> |   |   |   |   |   |   |   [22] V7 <= 150 *
#> |   |   |   |   |   |   |   [23] V7 > 150 *
#> |   |   |   [24] V5 > 165
#> |   |   |   |   [25] V7 <= 156
#> |   |   |   |   |   [26] V3 <= 2 *
#> |   |   |   |   |   [27] V3 > 2 *
#> |   |   |   |   [28] V7 > 156
#> |   |   |   |   |   [29] V3 <= 5 *
#> |   |   |   |   |   [30] V3 > 5 *
#> |   [31] V4 > 0
#> |   |   [32] V6 <= 0
#> |   |   |   [33] V5 <= 3
#> |   |   |   |   [34] V3 <= 2 *
#> |   |   |   |   [35] V3 > 2
#> |   |   |   |   |   [36] V7 <= 135 *
#> |   |   |   |   |   [37] V7 > 135
#> |   |   |   |   |   |   [38] V7 <= 156 *
#> |   |   |   |   |   |   [39] V7 > 156 *
#> |   |   |   [40] V5 > 3
#> |   |   |   |   [41] V2 <= 62 *
#> |   |   |   |   [42] V2 > 62
#> |   |   |   |   |   [43] V7 <= 141 *
#> |   |   |   |   |   [44] V7 > 141 *
#> |   |   [45] V6 > 0
#> |   |   |   [46] V3 <= 1 *
#> |   |   |   [47] V3 > 1
#> |   |   |   |   [48] V5 <= 8
#> |   |   |   |   |   [49] V7 <= 112 *
#> |   |   |   |   |   [50] V7 > 112
#> |   |   |   |   |   |   [51] V5 <= 4
#> |   |   |   |   |   |   |   [52] V2 <= 74
#> |   |   |   |   |   |   |   |   [53] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [54] V2 <= 55
#> |   |   |   |   |   |   |   |   |   |   [55] V2 <= 43 *
#> |   |   |   |   |   |   |   |   |   |   [56] V2 > 43 *
#> |   |   |   |   |   |   |   |   |   [57] V2 > 55 *
#> |   |   |   |   |   |   |   |   [58] V3 > 8 *
#> |   |   |   |   |   |   |   [59] V2 > 74
#> |   |   |   |   |   |   |   |   [60] V7 <= 143 *
#> |   |   |   |   |   |   |   |   [61] V7 > 143 *
#> |   |   |   |   |   |   [62] V5 > 4 *
#> |   |   |   |   [63] V5 > 8
#> |   |   |   |   |   [64] V7 <= 132 *
#> |   |   |   |   |   [65] V7 > 132 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V7 <= 114
#> |   |   |   |   [5] V5 <= 4 *
#> |   |   |   |   [6] V5 > 4 *
#> |   |   |   [7] V7 > 114
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   [11] V4 > 0
#> |   |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   |   [13] V2 <= 55
#> |   |   |   |   |   |   |   [14] V5 <= 1 *
#> |   |   |   |   |   |   |   [15] V5 > 1 *
#> |   |   |   |   |   |   [16] V2 > 55
#> |   |   |   |   |   |   |   [17] V7 <= 160 *
#> |   |   |   |   |   |   |   [18] V7 > 160 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V5 <= 11
#> |   |   |   |   |   |   |   [21] V7 <= 135
#> |   |   |   |   |   |   |   |   [22] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [23] V5 > 0 *
#> |   |   |   |   |   |   |   [24] V7 > 135
#> |   |   |   |   |   |   |   |   [25] V2 <= 50 *
#> |   |   |   |   |   |   |   |   [26] V2 > 50
#> |   |   |   |   |   |   |   |   |   [27] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   [28] V2 > 59 *
#> |   |   |   |   |   |   [29] V5 > 11 *
#> |   |   [30] V2 > 66
#> |   |   |   [31] V3 <= 6
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V5 <= 2 *
#> |   |   |   |   |   [34] V5 > 2
#> |   |   |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   |   [37] V2 <= 77 *
#> |   |   |   |   |   |   |   [38] V2 > 77 *
#> |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   [40] V3 <= 2 *
#> |   |   |   |   |   [41] V3 > 2
#> |   |   |   |   |   |   [42] V2 <= 80
#> |   |   |   |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   |   |   |   [44] V3 > 3 *
#> |   |   |   |   |   |   [45] V2 > 80 *
#> |   |   |   [46] V3 > 6
#> |   |   |   |   [47] V5 <= 15
#> |   |   |   |   |   [48] V2 <= 84
#> |   |   |   |   |   |   [49] V7 <= 117 *
#> |   |   |   |   |   |   [50] V7 > 117
#> |   |   |   |   |   |   |   [51] V7 <= 170
#> |   |   |   |   |   |   |   |   [52] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [54] V5 > 2 *
#> |   |   |   |   |   |   |   |   [55] V5 > 8 *
#> |   |   |   |   |   |   |   [56] V7 > 170 *
#> |   |   |   |   |   [57] V2 > 84 *
#> |   |   |   |   [58] V5 > 15 *
#> |   [59] V5 > 173
#> |   |   [60] V5 <= 179 *
#> |   |   [61] V5 > 179 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V7 <= 125 *
#> |   |   |   |   |   [8] V7 > 125
#> |   |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   |   [10] V5 > 2 *
#> |   |   |   [11] V2 > 60
#> |   |   |   |   [12] V4 <= 0
#> |   |   |   |   |   [13] V2 <= 81
#> |   |   |   |   |   |   [14] V3 <= 3 *
#> |   |   |   |   |   |   [15] V3 > 3 *
#> |   |   |   |   |   [16] V2 > 81 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V5 <= 0 *
#> |   |   |   |   |   [19] V5 > 0
#> |   |   |   |   |   |   [20] V7 <= 170
#> |   |   |   |   |   |   |   [21] V3 <= 13
#> |   |   |   |   |   |   |   |   [22] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [23] V5 > 7 *
#> |   |   |   |   |   |   |   [24] V3 > 13 *
#> |   |   |   |   |   |   [25] V7 > 170 *
#> |   |   [26] V6 > 0
#> |   |   |   [27] V2 <= 54
#> |   |   |   |   [28] V5 <= 4
#> |   |   |   |   |   [29] V2 <= 47 *
#> |   |   |   |   |   [30] V2 > 47 *
#> |   |   |   |   [31] V5 > 4 *
#> |   |   |   [32] V2 > 54
#> |   |   |   |   [33] V4 <= 0
#> |   |   |   |   |   [34] V3 <= 4
#> |   |   |   |   |   |   [35] V5 <= 22
#> |   |   |   |   |   |   |   [36] V2 <= 79
#> |   |   |   |   |   |   |   |   [37] V3 <= 1 *
#> |   |   |   |   |   |   |   |   [38] V3 > 1 *
#> |   |   |   |   |   |   |   [39] V2 > 79 *
#> |   |   |   |   |   |   [40] V5 > 22 *
#> |   |   |   |   |   [41] V3 > 4
#> |   |   |   |   |   |   [42] V5 <= 7 *
#> |   |   |   |   |   |   [43] V5 > 7
#> |   |   |   |   |   |   |   [44] V5 <= 50 *
#> |   |   |   |   |   |   |   [45] V5 > 50 *
#> |   |   |   |   [46] V4 > 0
#> |   |   |   |   |   [47] V7 <= 126
#> |   |   |   |   |   |   [48] V5 <= 1 *
#> |   |   |   |   |   |   [49] V5 > 1 *
#> |   |   |   |   |   [50] V7 > 126
#> |   |   |   |   |   |   [51] V3 <= 18
#> |   |   |   |   |   |   |   [52] V2 <= 74
#> |   |   |   |   |   |   |   |   [53] V2 <= 70
#> |   |   |   |   |   |   |   |   |   [54] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   [55] V3 > 12 *
#> |   |   |   |   |   |   |   |   [56] V2 > 70 *
#> |   |   |   |   |   |   |   [57] V2 > 74 *
#> |   |   |   |   |   |   [58] V3 > 18 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 61
#> |   |   |   [4] V5 <= 14
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V6 <= 0
#> |   |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   |   [8] V5 > 1 *
#> |   |   |   |   |   [9] V6 > 0
#> |   |   |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   |   |   [11] V3 > 2
#> |   |   |   |   |   |   |   [12] V7 <= 121 *
#> |   |   |   |   |   |   |   [13] V7 > 121 *
#> |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   [15] V4 <= 0 *
#> |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   [17] V3 <= 13
#> |   |   |   |   |   |   |   [18] V2 <= 58
#> |   |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   |   |   |   [21] V2 > 58 *
#> |   |   |   |   |   |   [22] V3 > 13 *
#> |   |   |   [23] V5 > 14 *
#> |   |   [24] V2 > 61
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V5 <= 2 *
#> |   |   |   |   [27] V5 > 2
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V2 <= 83
#> |   |   |   |   |   |   |   [30] V5 <= 11 *
#> |   |   |   |   |   |   |   [31] V5 > 11 *
#> |   |   |   |   |   |   [32] V2 > 83 *
#> |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   [34] V3 <= 4 *
#> |   |   |   |   |   |   [35] V3 > 4
#> |   |   |   |   |   |   |   [36] V3 <= 12
#> |   |   |   |   |   |   |   |   [37] V7 <= 136 *
#> |   |   |   |   |   |   |   |   [38] V7 > 136 *
#> |   |   |   |   |   |   |   [39] V3 > 12 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   [42] V5 <= 8
#> |   |   |   |   |   |   [43] V7 <= 142 *
#> |   |   |   |   |   |   [44] V7 > 142 *
#> |   |   |   |   |   [45] V5 > 8 *
#> |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   [47] V3 <= 1 *
#> |   |   |   |   |   [48] V3 > 1
#> |   |   |   |   |   |   [49] V7 <= 180
#> |   |   |   |   |   |   |   [50] V7 <= 142
#> |   |   |   |   |   |   |   |   [51] V2 <= 76
#> |   |   |   |   |   |   |   |   |   [52] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [53] V3 > 8 *
#> |   |   |   |   |   |   |   |   [54] V2 > 76 *
#> |   |   |   |   |   |   |   [55] V7 > 142
#> |   |   |   |   |   |   |   |   [56] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [57] V5 > 1 *
#> |   |   |   |   |   |   [58] V7 > 180 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V2 <= 71
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 2 *
#> |   |   |   |   [6] V5 > 2
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V5 <= 6
#> |   |   |   |   |   [11] V7 <= 114 *
#> |   |   |   |   |   [12] V7 > 114
#> |   |   |   |   |   |   [13] V5 <= 3
#> |   |   |   |   |   |   |   [14] V7 <= 170
#> |   |   |   |   |   |   |   |   [15] V2 <= 61
#> |   |   |   |   |   |   |   |   |   [16] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [17] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   |   |   |   [20] V2 > 61
#> |   |   |   |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   |   |   [23] V7 > 170 *
#> |   |   |   |   |   |   [24] V5 > 3 *
#> |   |   |   |   [25] V5 > 6
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V5 <= 9 *
#> |   |   |   |   |   |   [28] V5 > 9 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V7 <= 140 *
#> |   |   |   |   |   |   [31] V7 > 140 *
#> |   |   [32] V5 > 171
#> |   |   |   [33] V3 <= 10
#> |   |   |   |   [34] V7 <= 183 *
#> |   |   |   |   [35] V7 > 183 *
#> |   |   |   [36] V3 > 10 *
#> |   [37] V2 > 71
#> |   |   [38] V5 <= 165
#> |   |   |   [39] V4 <= 0
#> |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   [41] V5 <= 8 *
#> |   |   |   |   |   [42] V5 > 8 *
#> |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   [44] V5 <= 5 *
#> |   |   |   |   |   [45] V5 > 5
#> |   |   |   |   |   |   [46] V3 <= 7 *
#> |   |   |   |   |   |   [47] V3 > 7 *
#> |   |   |   [48] V4 > 0
#> |   |   |   |   [49] V2 <= 85
#> |   |   |   |   |   [50] V3 <= 19
#> |   |   |   |   |   |   [51] V3 <= 13
#> |   |   |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   |   |   [53] V2 <= 74 *
#> |   |   |   |   |   |   |   |   [54] V2 > 74 *
#> |   |   |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   |   |   [56] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [57] V7 > 126
#> |   |   |   |   |   |   |   |   |   [58] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [59] V5 > 1 *
#> |   |   |   |   |   |   [60] V3 > 13 *
#> |   |   |   |   |   [61] V3 > 19 *
#> |   |   |   |   [62] V2 > 85 *
#> |   |   [63] V5 > 165
#> |   |   |   [64] V3 <= 9
#> |   |   |   |   [65] V3 <= 3 *
#> |   |   |   |   [66] V3 > 3 *
#> |   |   |   [67] V3 > 9 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V5 <= 5 *
#> |   |   |   |   |   [7] V5 > 5 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V7 <= 160
#> |   |   |   |   |   [11] V2 <= 61 *
#> |   |   |   |   |   [12] V2 > 61
#> |   |   |   |   |   |   [13] V7 <= 114 *
#> |   |   |   |   |   |   [14] V7 > 114
#> |   |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   |   [16] V3 > 4
#> |   |   |   |   |   |   |   |   [17] V5 <= 15 *
#> |   |   |   |   |   |   |   |   [18] V5 > 15 *
#> |   |   |   |   [19] V7 > 160 *
#> |   |   [20] V5 > 171
#> |   |   |   [21] V6 <= 0 *
#> |   |   |   [22] V6 > 0
#> |   |   |   |   [23] V3 <= 10
#> |   |   |   |   |   [24] V2 <= 53 *
#> |   |   |   |   |   [25] V2 > 53 *
#> |   |   |   |   [26] V3 > 10 *
#> |   [27] V4 > 0
#> |   |   [28] V2 <= 60
#> |   |   |   [29] V5 <= 6
#> |   |   |   |   [30] V5 <= 0 *
#> |   |   |   |   [31] V5 > 0
#> |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   [33] V5 <= 1 *
#> |   |   |   |   |   |   [34] V5 > 1 *
#> |   |   |   |   |   [35] V6 > 0 *
#> |   |   |   [36] V5 > 6
#> |   |   |   |   [37] V2 <= 54 *
#> |   |   |   |   [38] V2 > 54 *
#> |   |   [39] V2 > 60
#> |   |   |   [40] V3 <= 1 *
#> |   |   |   [41] V3 > 1
#> |   |   |   |   [42] V5 <= 12
#> |   |   |   |   |   [43] V2 <= 80
#> |   |   |   |   |   |   [44] V3 <= 10
#> |   |   |   |   |   |   |   [45] V3 <= 4
#> |   |   |   |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   |   |   |   [48] V2 <= 71 *
#> |   |   |   |   |   |   |   |   |   [49] V2 > 71 *
#> |   |   |   |   |   |   |   [50] V3 > 4
#> |   |   |   |   |   |   |   |   [51] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [52] V5 > 1
#> |   |   |   |   |   |   |   |   |   [53] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 130 *
#> |   |   |   |   |   |   [55] V3 > 10
#> |   |   |   |   |   |   |   [56] V3 <= 12 *
#> |   |   |   |   |   |   |   [57] V3 > 12
#> |   |   |   |   |   |   |   |   [58] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [59] V3 > 13 *
#> |   |   |   |   |   [60] V2 > 80 *
#> |   |   |   |   [61] V5 > 12 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V7 <= 110
#> |   |   |   [4] V6 <= 0 *
#> |   |   |   [5] V6 > 0 *
#> |   |   [6] V7 > 110
#> |   |   |   [7] V5 <= 99
#> |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V3 <= 5 *
#> |   |   |   |   |   |   [12] V3 > 5 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V3 <= 12
#> |   |   |   |   |   |   |   [15] V2 <= 56
#> |   |   |   |   |   |   |   |   [16] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [17] V3 > 2
#> |   |   |   |   |   |   |   |   |   [18] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [19] V7 > 140 *
#> |   |   |   |   |   |   |   [20] V2 > 56 *
#> |   |   |   |   |   |   [21] V3 > 12 *
#> |   |   |   [22] V5 > 99
#> |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   [24] V6 > 0 *
#> |   [25] V2 > 60
#> |   |   [26] V5 <= 173
#> |   |   |   [27] V4 <= 0
#> |   |   |   |   [28] V7 <= 112
#> |   |   |   |   |   [29] V3 <= 7 *
#> |   |   |   |   |   [30] V3 > 7 *
#> |   |   |   |   [31] V7 > 112
#> |   |   |   |   |   [32] V3 <= 6
#> |   |   |   |   |   |   [33] V5 <= 110
#> |   |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   |   [36] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [37] V5 > 2
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 130 *
#> |   |   |   |   |   |   [40] V5 > 110 *
#> |   |   |   |   |   [41] V3 > 6
#> |   |   |   |   |   |   [42] V2 <= 73 *
#> |   |   |   |   |   |   [43] V2 > 73 *
#> |   |   |   [44] V4 > 0
#> |   |   |   |   [45] V2 <= 81
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V5 <= 8
#> |   |   |   |   |   |   |   [48] V2 <= 72 *
#> |   |   |   |   |   |   |   [49] V2 > 72 *
#> |   |   |   |   |   |   [50] V5 > 8 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V2 <= 76
#> |   |   |   |   |   |   |   [53] V7 <= 180
#> |   |   |   |   |   |   |   |   [54] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [55] V3 > 2
#> |   |   |   |   |   |   |   |   |   [56] V7 <= 131 *
#> |   |   |   |   |   |   |   |   |   [57] V7 > 131
#> |   |   |   |   |   |   |   |   |   |   [58] V7 <= 148 *
#> |   |   |   |   |   |   |   |   |   |   [59] V7 > 148
#> |   |   |   |   |   |   |   |   |   |   |   [60] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   |   |   [61] V5 > 8 *
#> |   |   |   |   |   |   |   [62] V7 > 180 *
#> |   |   |   |   |   |   [63] V2 > 76 *
#> |   |   |   |   [64] V2 > 81 *
#> |   |   [65] V5 > 173
#> |   |   |   [66] V7 <= 162 *
#> |   |   |   [67] V7 > 162 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V7 <= 100
#> |   |   [3] V2 <= 53 *
#> |   |   [4] V2 > 53
#> |   |   |   [5] V5 <= 29
#> |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   [7] V4 > 0 *
#> |   |   |   [8] V5 > 29 *
#> |   [9] V7 > 100
#> |   |   [10] V4 <= 0
#> |   |   |   [11] V6 <= 0
#> |   |   |   |   [12] V5 <= 177
#> |   |   |   |   |   [13] V7 <= 163
#> |   |   |   |   |   |   [14] V5 <= 16 *
#> |   |   |   |   |   |   [15] V5 > 16 *
#> |   |   |   |   |   [16] V7 > 163 *
#> |   |   |   |   [17] V5 > 177 *
#> |   |   |   [18] V6 > 0
#> |   |   |   |   [19] V5 <= 152
#> |   |   |   |   |   [20] V3 <= 4
#> |   |   |   |   |   |   [21] V5 <= 5 *
#> |   |   |   |   |   |   [22] V5 > 5 *
#> |   |   |   |   |   [23] V3 > 4
#> |   |   |   |   |   |   [24] V3 <= 9
#> |   |   |   |   |   |   |   [25] V7 <= 136 *
#> |   |   |   |   |   |   |   [26] V7 > 136 *
#> |   |   |   |   |   |   [27] V3 > 9 *
#> |   |   |   |   [28] V5 > 152
#> |   |   |   |   |   [29] V2 <= 78
#> |   |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   |   [31] V3 > 3
#> |   |   |   |   |   |   |   [32] V7 <= 135 *
#> |   |   |   |   |   |   |   [33] V7 > 135 *
#> |   |   |   |   |   [34] V2 > 78 *
#> |   |   [35] V4 > 0
#> |   |   |   [36] V6 <= 0
#> |   |   |   |   [37] V2 <= 81
#> |   |   |   |   |   [38] V2 <= 63
#> |   |   |   |   |   |   [39] V7 <= 125 *
#> |   |   |   |   |   |   [40] V7 > 125
#> |   |   |   |   |   |   |   [41] V5 <= 3 *
#> |   |   |   |   |   |   |   [42] V5 > 3 *
#> |   |   |   |   |   [43] V2 > 63
#> |   |   |   |   |   |   [44] V2 <= 73
#> |   |   |   |   |   |   |   [45] V2 <= 67 *
#> |   |   |   |   |   |   |   [46] V2 > 67 *
#> |   |   |   |   |   |   [47] V2 > 73 *
#> |   |   |   |   [48] V2 > 81 *
#> |   |   |   [49] V6 > 0
#> |   |   |   |   [50] V2 <= 71
#> |   |   |   |   |   [51] V5 <= 8
#> |   |   |   |   |   |   [52] V2 <= 47 *
#> |   |   |   |   |   |   [53] V2 > 47
#> |   |   |   |   |   |   |   [54] V2 <= 64
#> |   |   |   |   |   |   |   |   [55] V7 <= 158
#> |   |   |   |   |   |   |   |   |   [56] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [57] V3 > 7 *
#> |   |   |   |   |   |   |   |   [58] V7 > 158 *
#> |   |   |   |   |   |   |   [59] V2 > 64 *
#> |   |   |   |   |   [60] V5 > 8 *
#> |   |   |   |   [61] V2 > 71
#> |   |   |   |   |   [62] V3 <= 6 *
#> |   |   |   |   |   [63] V3 > 6 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V7 <= 112 *
#> |   |   |   |   [6] V7 > 112
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 140 *
#> |   |   |   |   |   |   [9] V7 > 140 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V5 <= 3 *
#> |   |   |   |   |   |   [12] V5 > 3 *
#> |   |   |   [13] V5 > 99
#> |   |   |   |   [14] V3 <= 4 *
#> |   |   |   |   [15] V3 > 4 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 171
#> |   |   |   |   [18] V5 <= 12
#> |   |   |   |   |   [19] V3 <= 2 *
#> |   |   |   |   |   [20] V3 > 2
#> |   |   |   |   |   |   [21] V5 <= 3
#> |   |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   |   |   |   [24] V2 <= 61 *
#> |   |   |   |   |   |   |   |   [25] V2 > 61 *
#> |   |   |   |   |   |   [26] V5 > 3
#> |   |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   |   [28] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [29] V5 > 7 *
#> |   |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   |   [31] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [32] V3 > 9 *
#> |   |   |   |   [33] V5 > 12 *
#> |   |   |   [34] V5 > 171
#> |   |   |   |   [35] V6 <= 0 *
#> |   |   |   |   [36] V6 > 0 *
#> |   [37] V2 > 70
#> |   |   [38] V5 <= 177
#> |   |   |   [39] V2 <= 85
#> |   |   |   |   [40] V6 <= 0
#> |   |   |   |   |   [41] V7 <= 140 *
#> |   |   |   |   |   [42] V7 > 140 *
#> |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   [44] V5 <= 0
#> |   |   |   |   |   |   [45] V7 <= 122 *
#> |   |   |   |   |   |   [46] V7 > 122 *
#> |   |   |   |   |   [47] V5 > 0
#> |   |   |   |   |   |   [48] V3 <= 13
#> |   |   |   |   |   |   |   [49] V3 <= 2 *
#> |   |   |   |   |   |   |   [50] V3 > 2
#> |   |   |   |   |   |   |   |   [51] V7 <= 121 *
#> |   |   |   |   |   |   |   |   [52] V7 > 121
#> |   |   |   |   |   |   |   |   |   [53] V4 <= 0 *
#> |   |   |   |   |   |   |   |   |   [54] V4 > 0 *
#> |   |   |   |   |   |   [55] V3 > 13 *
#> |   |   |   [56] V2 > 85
#> |   |   |   |   [57] V3 <= 5 *
#> |   |   |   |   [58] V3 > 5 *
#> |   |   [59] V5 > 177 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 79
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 44 *
#> |   |   |   |   |   [8] V2 > 44 *
#> |   |   |   [9] V2 > 55
#> |   |   |   |   [10] V5 <= 171
#> |   |   |   |   |   [11] V4 <= 0
#> |   |   |   |   |   |   [12] V7 <= 130 *
#> |   |   |   |   |   |   [13] V7 > 130 *
#> |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   [15] V7 <= 142
#> |   |   |   |   |   |   |   [16] V7 <= 110 *
#> |   |   |   |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   |   |   |   [18] V7 <= 122 *
#> |   |   |   |   |   |   |   |   [19] V7 > 122 *
#> |   |   |   |   |   |   [20] V7 > 142
#> |   |   |   |   |   |   |   [21] V2 <= 63 *
#> |   |   |   |   |   |   |   [22] V2 > 63 *
#> |   |   |   |   [23] V5 > 171 *
#> |   |   [24] V2 > 79
#> |   |   |   [25] V2 <= 87
#> |   |   |   |   [26] V3 <= 9 *
#> |   |   |   |   [27] V3 > 9 *
#> |   |   |   [28] V2 > 87 *
#> |   [29] V6 > 0
#> |   |   [30] V4 <= 0
#> |   |   |   [31] V5 <= 119
#> |   |   |   |   [32] V5 <= 2 *
#> |   |   |   |   [33] V5 > 2
#> |   |   |   |   |   [34] V2 <= 65 *
#> |   |   |   |   |   [35] V2 > 65
#> |   |   |   |   |   |   [36] V3 <= 5
#> |   |   |   |   |   |   |   [37] V2 <= 82 *
#> |   |   |   |   |   |   |   [38] V2 > 82 *
#> |   |   |   |   |   |   [39] V3 > 5
#> |   |   |   |   |   |   |   [40] V5 <= 7 *
#> |   |   |   |   |   |   |   [41] V5 > 7 *
#> |   |   |   [42] V5 > 119
#> |   |   |   |   [43] V3 <= 12
#> |   |   |   |   |   [44] V2 <= 53 *
#> |   |   |   |   |   [45] V2 > 53
#> |   |   |   |   |   |   [46] V2 <= 61 *
#> |   |   |   |   |   |   [47] V2 > 61 *
#> |   |   |   |   [48] V3 > 12 *
#> |   |   [49] V4 > 0
#> |   |   |   [50] V2 <= 71
#> |   |   |   |   [51] V7 <= 110 *
#> |   |   |   |   [52] V7 > 110
#> |   |   |   |   |   [53] V7 <= 118 *
#> |   |   |   |   |   [54] V7 > 118
#> |   |   |   |   |   |   [55] V3 <= 16
#> |   |   |   |   |   |   |   [56] V7 <= 129 *
#> |   |   |   |   |   |   |   [57] V7 > 129
#> |   |   |   |   |   |   |   |   [58] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [59] V3 > 5
#> |   |   |   |   |   |   |   |   |   [60] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [61] V5 > 1
#> |   |   |   |   |   |   |   |   |   |   [62] V3 <= 11 *
#> |   |   |   |   |   |   |   |   |   |   [63] V3 > 11 *
#> |   |   |   |   |   |   [64] V3 > 16 *
#> |   |   |   [65] V2 > 71
#> |   |   |   |   [66] V7 <= 126 *
#> |   |   |   |   [67] V7 > 126
#> |   |   |   |   |   [68] V3 <= 3 *
#> |   |   |   |   |   [69] V3 > 3
#> |   |   |   |   |   |   [70] V2 <= 75 *
#> |   |   |   |   |   |   [71] V2 > 75 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62 *
#> |   |   |   [5] V2 > 62
#> |   |   |   |   [6] V7 <= 112
#> |   |   |   |   |   [7] V3 <= 6 *
#> |   |   |   |   |   [8] V3 > 6 *
#> |   |   |   |   [9] V7 > 112
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V3 <= 6 *
#> |   |   |   |   |   |   [12] V3 > 6 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V5 <= 5 *
#> |   |   |   |   |   |   [15] V5 > 5
#> |   |   |   |   |   |   |   [16] V2 <= 86 *
#> |   |   |   |   |   |   |   [17] V2 > 86 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V6 <= 0
#> |   |   |   |   [20] V2 <= 63
#> |   |   |   |   |   [21] V2 <= 55
#> |   |   |   |   |   |   [22] V3 <= 5 *
#> |   |   |   |   |   |   [23] V3 > 5 *
#> |   |   |   |   |   [24] V2 > 55
#> |   |   |   |   |   |   [25] V3 <= 5 *
#> |   |   |   |   |   |   [26] V3 > 5 *
#> |   |   |   |   [27] V2 > 63
#> |   |   |   |   |   [28] V5 <= 0 *
#> |   |   |   |   |   [29] V5 > 0
#> |   |   |   |   |   |   [30] V3 <= 12
#> |   |   |   |   |   |   |   [31] V5 <= 2 *
#> |   |   |   |   |   |   |   [32] V5 > 2 *
#> |   |   |   |   |   |   [33] V3 > 12 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V7 <= 112
#> |   |   |   |   |   [36] V3 <= 5 *
#> |   |   |   |   |   [37] V3 > 5 *
#> |   |   |   |   [38] V7 > 112
#> |   |   |   |   |   [39] V3 <= 14
#> |   |   |   |   |   |   [40] V5 <= 1
#> |   |   |   |   |   |   |   [41] V2 <= 61
#> |   |   |   |   |   |   |   |   [42] V2 <= 44 *
#> |   |   |   |   |   |   |   |   [43] V2 > 44 *
#> |   |   |   |   |   |   |   [44] V2 > 61
#> |   |   |   |   |   |   |   |   [45] V3 <= 6
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 3 *
#> |   |   |   |   |   |   |   |   [48] V3 > 6 *
#> |   |   |   |   |   |   [49] V5 > 1
#> |   |   |   |   |   |   |   [50] V2 <= 73
#> |   |   |   |   |   |   |   |   [51] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [52] V2 > 63 *
#> |   |   |   |   |   |   |   [53] V2 > 73 *
#> |   |   |   |   |   [54] V3 > 14
#> |   |   |   |   |   |   [55] V3 <= 18 *
#> |   |   |   |   |   |   [56] V3 > 18 *
#> |   [57] V5 > 169
#> |   |   [58] V3 <= 1 *
#> |   |   [59] V3 > 1
#> |   |   |   [60] V6 <= 0
#> |   |   |   |   [61] V2 <= 77 *
#> |   |   |   |   [62] V2 > 77 *
#> |   |   |   [63] V6 > 0 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 0 *
#> |   |   |   |   |   [10] V5 > 0 *
#> |   |   |   [11] V3 > 2
#> |   |   |   |   [12] V2 <= 71
#> |   |   |   |   |   [13] V4 <= 0
#> |   |   |   |   |   |   [14] V3 <= 6 *
#> |   |   |   |   |   |   [15] V3 > 6 *
#> |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   [17] V5 <= 12
#> |   |   |   |   |   |   |   [18] V5 <= 0
#> |   |   |   |   |   |   |   |   [19] V2 <= 56 *
#> |   |   |   |   |   |   |   |   [20] V2 > 56 *
#> |   |   |   |   |   |   |   [21] V5 > 0
#> |   |   |   |   |   |   |   |   [22] V2 <= 60
#> |   |   |   |   |   |   |   |   |   [23] V7 <= 170
#> |   |   |   |   |   |   |   |   |   |   [24] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   [25] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   |   [26] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   |   [27] V3 > 8
#> |   |   |   |   |   |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   |   |   |   |   |   [30] V7 > 170 *
#> |   |   |   |   |   |   |   |   [31] V2 > 60
#> |   |   |   |   |   |   |   |   |   [32] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   [33] V7 > 140
#> |   |   |   |   |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [35] V6 > 0 *
#> |   |   |   |   |   |   [36] V5 > 12 *
#> |   |   |   |   [37] V2 > 71
#> |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   [39] V7 <= 125 *
#> |   |   |   |   |   |   [40] V7 > 125
#> |   |   |   |   |   |   |   [41] V5 <= 4 *
#> |   |   |   |   |   |   |   [42] V5 > 4 *
#> |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   [44] V4 <= 0
#> |   |   |   |   |   |   |   [45] V7 <= 128 *
#> |   |   |   |   |   |   |   [46] V7 > 128 *
#> |   |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   |   [48] V2 <= 76 *
#> |   |   |   |   |   |   |   [49] V2 > 76 *
#> |   |   [50] V5 > 15
#> |   |   |   [51] V5 <= 165
#> |   |   |   |   [52] V3 <= 13
#> |   |   |   |   |   [53] V5 <= 77 *
#> |   |   |   |   |   [54] V5 > 77 *
#> |   |   |   |   [55] V3 > 13 *
#> |   |   |   [56] V5 > 165 *
#> |   [57] V5 > 177 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 84
#> |   |   [3] V2 <= 55
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 48 *
#> |   |   |   |   |   [10] V2 > 48 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V5 <= 4
#> |   |   |   |   |   |   [13] V3 <= 5 *
#> |   |   |   |   |   |   [14] V3 > 5 *
#> |   |   |   |   |   [15] V5 > 4 *
#> |   |   [16] V2 > 55
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V5 <= 171
#> |   |   |   |   |   [19] V7 <= 162
#> |   |   |   |   |   |   [20] V3 <= 2 *
#> |   |   |   |   |   |   [21] V3 > 2
#> |   |   |   |   |   |   |   [22] V2 <= 70 *
#> |   |   |   |   |   |   |   [23] V2 > 70
#> |   |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   [26] V7 > 162 *
#> |   |   |   |   [27] V5 > 171
#> |   |   |   |   |   [28] V2 <= 79
#> |   |   |   |   |   |   [29] V7 <= 177 *
#> |   |   |   |   |   |   [30] V7 > 177 *
#> |   |   |   |   |   [31] V2 > 79 *
#> |   |   |   [32] V4 > 0
#> |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   [34] V2 <= 79
#> |   |   |   |   |   |   [35] V5 <= 3
#> |   |   |   |   |   |   |   [36] V2 <= 65 *
#> |   |   |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   |   |   |   [38] V5 > 3
#> |   |   |   |   |   |   |   [39] V2 <= 73
#> |   |   |   |   |   |   |   |   [40] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [41] V2 > 63 *
#> |   |   |   |   |   |   |   [42] V2 > 73 *
#> |   |   |   |   |   [43] V2 > 79 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V3 <= 12
#> |   |   |   |   |   |   [46] V5 <= 1
#> |   |   |   |   |   |   |   [47] V3 <= 6
#> |   |   |   |   |   |   |   |   [48] V3 <= 5
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 65 *
#> |   |   |   |   |   |   |   |   [51] V3 > 5 *
#> |   |   |   |   |   |   |   [52] V3 > 6 *
#> |   |   |   |   |   |   [53] V5 > 1
#> |   |   |   |   |   |   |   [54] V2 <= 69 *
#> |   |   |   |   |   |   |   [55] V2 > 69 *
#> |   |   |   |   |   [56] V3 > 12
#> |   |   |   |   |   |   [57] V3 <= 16 *
#> |   |   |   |   |   |   [58] V3 > 16 *
#> |   [59] V2 > 84
#> |   |   [60] V5 <= 69
#> |   |   |   [61] V4 <= 0 *
#> |   |   |   [62] V4 > 0 *
#> |   |   [63] V5 > 69 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V5 <= 99
#> |   |   |   [4] V5 <= 12
#> |   |   |   |   [5] V2 <= 52
#> |   |   |   |   |   [6] V2 <= 47
#> |   |   |   |   |   |   [7] V2 <= 41 *
#> |   |   |   |   |   |   [8] V2 > 41 *
#> |   |   |   |   |   [9] V2 > 47 *
#> |   |   |   |   [10] V2 > 52 *
#> |   |   |   [11] V5 > 12 *
#> |   |   [12] V5 > 99
#> |   |   |   [13] V2 <= 51 *
#> |   |   |   [14] V2 > 51 *
#> |   [15] V2 > 54
#> |   |   [16] V5 <= 177
#> |   |   |   [17] V4 <= 0
#> |   |   |   |   [18] V5 <= 164
#> |   |   |   |   |   [19] V7 <= 122
#> |   |   |   |   |   |   [20] V3 <= 2 *
#> |   |   |   |   |   |   [21] V3 > 2
#> |   |   |   |   |   |   |   [22] V2 <= 68 *
#> |   |   |   |   |   |   |   [23] V2 > 68 *
#> |   |   |   |   |   [24] V7 > 122
#> |   |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   |   [27] V3 > 3 *
#> |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   [29] V2 <= 73 *
#> |   |   |   |   |   |   |   [30] V2 > 73
#> |   |   |   |   |   |   |   |   [31] V2 <= 87 *
#> |   |   |   |   |   |   |   |   [32] V2 > 87 *
#> |   |   |   |   [33] V5 > 164 *
#> |   |   |   [34] V4 > 0
#> |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   [36] V2 <= 63
#> |   |   |   |   |   |   [37] V7 <= 154 *
#> |   |   |   |   |   |   [38] V7 > 154 *
#> |   |   |   |   |   [39] V2 > 63
#> |   |   |   |   |   |   [40] V3 <= 11
#> |   |   |   |   |   |   |   [41] V2 <= 77 *
#> |   |   |   |   |   |   |   [42] V2 > 77 *
#> |   |   |   |   |   |   [43] V3 > 11 *
#> |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   [45] V7 <= 102 *
#> |   |   |   |   |   [46] V7 > 102
#> |   |   |   |   |   |   [47] V5 <= 1
#> |   |   |   |   |   |   |   [48] V5 <= 0
#> |   |   |   |   |   |   |   |   [49] V2 <= 63 *
#> |   |   |   |   |   |   |   |   [50] V2 > 63
#> |   |   |   |   |   |   |   |   |   [51] V2 <= 78 *
#> |   |   |   |   |   |   |   |   |   [52] V2 > 78 *
#> |   |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   |   [54] V5 > 1
#> |   |   |   |   |   |   |   [55] V5 <= 3 *
#> |   |   |   |   |   |   |   [56] V5 > 3
#> |   |   |   |   |   |   |   |   [57] V2 <= 70
#> |   |   |   |   |   |   |   |   |   [58] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   [59] V2 > 60 *
#> |   |   |   |   |   |   |   |   [60] V2 > 70 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 71
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2
#> |   |   |   |   |   |   [8] V2 <= 62 *
#> |   |   |   |   |   |   [9] V2 > 62 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   [12] V5 <= 7
#> |   |   |   |   |   |   |   [13] V5 <= 0 *
#> |   |   |   |   |   |   |   [14] V5 > 0
#> |   |   |   |   |   |   |   |   [15] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [16] V7 > 150 *
#> |   |   |   |   |   |   [17] V5 > 7 *
#> |   |   |   |   |   [18] V2 > 54
#> |   |   |   |   |   |   [19] V7 <= 118 *
#> |   |   |   |   |   |   [20] V7 > 118
#> |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   [22] V3 > 3
#> |   |   |   |   |   |   |   |   [23] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [24] V5 <= 10
#> |   |   |   |   |   |   |   |   |   |   [25] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   |   [26] V7 <= 134 *
#> |   |   |   |   |   |   |   |   |   |   |   [27] V7 > 134 *
#> |   |   |   |   |   |   |   |   |   |   [28] V3 > 8 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 10 *
#> |   |   |   |   |   |   |   |   [30] V7 > 160 *
#> |   |   |   [31] V5 > 16 *
#> |   |   [32] V2 > 71
#> |   |   |   [33] V4 <= 0
#> |   |   |   |   [34] V7 <= 112 *
#> |   |   |   |   [35] V7 > 112
#> |   |   |   |   |   [36] V7 <= 130 *
#> |   |   |   |   |   [37] V7 > 130
#> |   |   |   |   |   |   [38] V7 <= 160
#> |   |   |   |   |   |   |   [39] V2 <= 83 *
#> |   |   |   |   |   |   |   [40] V2 > 83 *
#> |   |   |   |   |   |   [41] V7 > 160 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V2 <= 85
#> |   |   |   |   |   [44] V6 <= 0
#> |   |   |   |   |   |   [45] V7 <= 142 *
#> |   |   |   |   |   |   [46] V7 > 142 *
#> |   |   |   |   |   [47] V6 > 0
#> |   |   |   |   |   |   [48] V3 <= 13
#> |   |   |   |   |   |   |   [49] V5 <= 1 *
#> |   |   |   |   |   |   |   [50] V5 > 1 *
#> |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   |   [52] V2 > 85 *
#> |   [53] V5 > 171
#> |   |   [54] V2 <= 84
#> |   |   |   [55] V7 <= 134 *
#> |   |   |   [56] V7 > 134
#> |   |   |   |   [57] V6 <= 0
#> |   |   |   |   |   [58] V3 <= 2 *
#> |   |   |   |   |   [59] V3 > 2 *
#> |   |   |   |   [60] V6 > 0
#> |   |   |   |   |   [61] V7 <= 153 *
#> |   |   |   |   |   [62] V7 > 153 *
#> |   |   [63] V2 > 84 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 5.0+  32   5      1          0        1   121
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                               180.0+  35  10      1          9        0   106
#> 5                                 5.0+  34   5      0          5        0   120
#> 6                                 2.0+  35   2      1          1        1   112
#> 7                               180.0+  38  13      1          0        1   161
#> 8                               180.0+  36   1      0        180        1   155
#> 9                               180.0+  35   0      0        180        1   119
#> 10                                5.0+  36   5      1          0        1   115
#> 11                              180.0+  33   6      1          1        1   115
#> 12                              180.0+  38  16      1         10        0   160
#> 13                              180.0+  42   3      1          1        1   130
#> 14                              180.0+  37   1      1          0        1   146
#> 15                                2.0+  40   2      1          1        1   148
#> 16                              180.0+  42   2      0        180        1   100
#> 17                                5.0+  38   5      1          3        0   125
#> 18                              180.0+  40   6      0        180        1   138
#> 19                              180.0+  42   2      0        180        0   100
#> 20                              180.0+  41   2      1          1        0   166
#> 21                              180.0+  43   4      1          0        1   130
#> 22                              180.0+  40   3      1          1        0   170
#> 23                                2.0+  43   2      1          1        1   116
#> 24                              180.0+  42   2      0        180        1   124
#> 25                              155.0+  44   5      1          1        0   170
#> 26                              180.0+  41  10      1          8        0   150
#> 27                              180.0+  41  13      1          1        0   140
#> 28                              180.0+  45   6      0        180        1   170
#> 29                                5.0+  41   5      1          4        1   141
#> 30                              180.0+  44   2      1          1        1   150
#> 31                              180.0+  46  15      0        180        0   120
#> 32                              180.0+  46   2      1          1        0   126
#> 33                              180.0+  47   4      1          3        0   118
#> 34                              180.0+  48  15      0        180        1   160
#> 35                              180.0+  44   3      1          0        1   180
#> 36                              180.0+  43  29      0        180        1   180
#> 37                              180.0+  43  10      0        180        0   185
#> 38                              180.0+  46  13      1         10        0   100
#> 39                              180.0+  44   0      1          0        1    96
#> 40                              180.0+  47   4      1          3        1   160
#> 41                              180.0+  43   3      1          0        1   124
#> 42                              180.0+  45   8      1          0        1   117
#> 43                                73.0  49   5      0         73        1   136
#> 44                                5.0+  45   5      0          5        0   141
#> 45                              161.0+  46   2      1          1        1   122
#> 46                              180.0+  47   2      0        180        0   108
#> 47                              180.0+  44   9      1          8        1   135
#> 48                              180.0+  46   4      0        180        1   121
#> 49                              180.0+  44   2      0        180        0   142
#> 50                              180.0+  46  15      0        180        1   120
#> 51                              177.0+  45   9      1          0        1   145
#> 52                              180.0+  48   3      0        180        0   154
#> 53                              180.0+  48  12      1         11        0   200
#> 54                              180.0+  47   5      1          3        1   130
#> 55                              180.0+  47   9      1          6        0   170
#> 56                              180.0+  46   3      1          0        1   119
#> 57                               10.0+  47  10      0         10        1   140
#> 58                              172.0+  50   1      1          0        1   129
#> 59                              180.0+  48   2      1          0        0   184
#> 60                              180.0+  47   7      0        180        0   145
#> 61                              180.0+  50   4      1          1        0   125
#> 62                              180.0+  50   6      1          2        1   140
#> 63                              180.0+  46   3      1          1        1   140
#> 64                              180.0+  50   7      0        180        1   110
#> 65                                 2.0  49   2      0          2        0   105
#> 66                                 1.0  51   1      0          1        1   145
#> 67                              179.0+  49  15      1         11        1   160
#> 68                              180.0+  47   2      0        180        0   150
#> 69                              179.0+  49  23      0        179        1   112
#> 70                              180.0+  46   6      1          0        1   156
#> 71                              180.0+  52   2      0        180        1   170
#> 72                              180.0+  50   7      1          0        1    92
#> 73                                4.0+  50   4      0          4        1   100
#> 74                              180.0+  51   3      1          2        0   113
#> 75                              180.0+  50   1      1          0        0   150
#> 76                              180.0+  50   9      0        180        0   130
#> 77                              180.0+  49   7      1          4        1    90
#> 78                              180.0+  47   8      0        180        0   160
#> 79                              180.0+  51   8      0        180        1   140
#> 80                              180.0+  52   2      0        180        0   155
#> 81                              180.0+  46   3      0        180        1   120
#> 82                              180.0+  46   1      1          1        0   145
#> 83                                 7.0  48   7      1          0        1   110
#> 84                               88.0+  48  17      1         10        0   111
#> 85                              180.0+  47   2      1          1        0   110
#> 86                                4.0+  52   4      1          4        0   152
#> 87                              180.0+  49   9      1          3        0   102
#> 88                              180.0+  49  15      0        180        1   160
#> 89                              180.0+  54  17      1         12        1   102
#> 90                              180.0+  53   7      1          0        0   199
#> 91                                 5.0  50   2      0          5        1   106
#> 92                              180.0+  50  10      1          6        0   122
#> 93                              180.0+  50  14      1         13        0   170
#> 94                              180.0+  48   3      1          2        0   150
#> 95                              180.0+  51  25      1          1        0   202
#> 96                              180.0+  49   5      1          2        1   150
#> 97                                4.0+  53   4      0          4        0   140
#> 98                                85.0  52  14      1          7        1   200
#> 99                              180.0+  48  11      1         10        0   120
#> 100                               99.0  51  13      0         99        1   160
#> 101                             180.0+  54   9      1          0        1   138
#> 102                              16.0+  49  16      0         16        0   125
#> 103                             180.0+  55   3      1          1        0   150
#> 104                             152.0+  54  23      1         10        0   131
#> 105                               6.0+  55   6      1          2        1   114
#> 106                             180.0+  54   9      1          1        0   130
#> 107                             180.0+  55   4      1          2        0   150
#> 108                             171.0+  50   5      1          4        1   150
#> 109                             180.0+  52   4      0        180        0   183
#> 110                             174.0+  50   3      0        174        1   153
#> 111                               28.0  55  28      1         13        1   160
#> 112                               6.0+  49   6      1          0        1   130
#> 113                             180.0+  50   7      1          1        0   156
#> 114                             180.0+  53   8      1          0        1   130
#> 115                             180.0+  56   4      1          1        1   130
#> 116                                2.0  55   2      0          2        0   145
#> 117                             180.0+  54   1      0        180        0   162
#> 118                               7.0+  54   7      1          0        1   100
#> 119                             180.0+  52   8      0        180        0   119
#> 120                             180.0+  53  18      1          9        1   150
#> 121                             180.0+  54   3      0        180        1   180
#> 122                             180.0+  55   6      0        180        0   170
#> 123                              16.0+  52  16      0         16        0   152
#> 124                              15.0+  53  15      0         15        1    90
#> 125                             180.0+  53   4      0        180        1   150
#> 126                             180.0+  55   6      0        180        1   100
#> 127                             180.0+  55   6      1          5        1   138
#> 128                               3.0+  57   3      0          3        0   120
#> 129                             180.0+  54   2      1          1        0   135
#> 130                             180.0+  52   9      1          3        0   170
#> 131                              140.0  57   5      1          3        1   138
#> 132                             180.0+  57   1      0        180        1   156
#> 133                                1.0  57   1      0          1        1   100
#> 134                              165.0  56   4      1          0        1   140
#> 135                             180.0+  52   2      0        180        0   140
#> 136                             180.0+  55  11      1          7        0   104
#> 137                             180.0+  52  15      1         14        0   130
#> 138                             180.0+  57  10      0        180        1   170
#> 139                             180.0+  54   5      0        180        1   108
#> 140                             180.0+  55   3      1          1        1   156
#> 141                                0.5  57   0      0          0        1   150
#> 142                             180.0+  53  21      1         13        1   130
#> 143                             180.0+  59   3      1          1        0   172
#> 144                             180.0+  58   6      1          0        1    90
#> 145                             180.0+  53  15      1         10        1   130
#> 146                             171.0+  54  17      1          8        1   227
#> 147                               5.0+  56   5      0          5        1   150
#> 148                             180.0+  54  23      1          8        0   120
#> 149                               4.0+  57   4      1          2        1   185
#> 150                             147.0+  53   4      0        147        1   145
#> 151                             180.0+  53   7      1          0        1   120
#> 152                             180.0+  57  11      1         10        1   129
#> 153                               5.0+  55   5      0          5        1   131
#> 154                             180.0+  59  15      1         10        0   140
#> 155                               9.0+  58   9      1          0        1   180
#> 156                             180.0+  55   5      1          0        0   140
#> 157                             180.0+  56   7      1          5        1   120
#> 158                               2.0+  55   2      0          2        0   106
#> 159                             180.0+  59   9      1          1        1   125
#> 160                             180.0+  60  11      1          9        0   106
#> 161                             180.0+  59   3      0        180        0   120
#> 162                                2.0  57   2      0          2        1   120
#> 163                             180.0+  60   5      1          1        0   138
#> 164                             180.0+  58  11      1          9        1   124
#> 165                             180.0+  57  10      1          9        0   103
#> 166                               64.0  59   6      1          0        1   140
#> 167                             180.0+  59   5      0        180        1   155
#> 168                             180.0+  59   4      1          0        1   152
#> 169                               9.0+  61   9      0          9        1   160
#> 170                             180.0+  58   4      1          3        0   120
#> 171                             180.0+  59   2      1          1        0   140
#> 172                             171.0+  58  14      1          6        0   190
#> 173                             180.0+  61   4      1          3        0   151
#> 174                             180.0+  61   9      1          8        0   150
#> 175                                3.0  61   3      1          2        1   102
#> 176                             180.0+  57  13      1         10        0   110
#> 177                             180.0+  57   2      1          0        1   116
#> 178                             180.0+  57   4      1          3        0   138
#> 179                               17.0  61   3      0         17        0   143
#> 180                               45.0  56  14      0         45        0   130
#> 181                               19.0  58  19      1         13        1   140
#> 182                             180.0+  56  13      1          6        1   158
#> 183                             180.0+  56  18      1         11        1   165
#> 184                             180.0+  55   4      1          3        1   160
#> 185                             172.0+  58  11      0        172        1   135
#> 186                             172.0+  60  12      1          0        1   114
#> 187                               24.0  55   9      1          7        1   135
#> 188                             180.0+  61   4      1          0        1   115
#> 189                                8.0  56   8      1          8        0   120
#> 190                             180.0+  61  13      1         12        1   130
#> 191                             180.0+  59  11      1          8        1   190
#> 192                               1.0+  57   1      0          1        0   126
#> 193                               15.0  57  15      1         13        1   110
#> 194                             180.0+  58   5      1          1        1   135
#> 195                             180.0+  59  10      0        180        0   160
#> 196                               77.0  61   8      0         77        0   120
#> 197                              13.0+  61  13      0         13        0   210
#> 198                               8.0+  58   8      1          5        0   152
#> 199                             180.0+  57   3      1          0        0   100
#> 200                              170.0  61  18      0        170        0   140
#> 201                               94.0  61  28      1          7        0   133
#> 202                             180.0+  58   8      1          3        1   150
#> 203                              169.0  57   7      0        169        0   180
#> 204                               7.0+  60   7      0          7        0   147
#> 205                                6.0  61   6      0          6        0   134
#> 206                             180.0+  59  13      1          2        0   198
#> 207                             180.0+  57  12      1          9        1   120
#> 208                             180.0+  60  17      1          8        1   140
#> 209                             180.0+  62   4      1          3        0   173
#> 210                             180.0+  59  16      1          9        1   133
#> 211                               28.0  63   6      0         28        1   120
#> 212                              13.0+  61  13      0         13        0   120
#> 213                               18.0  57  18      1          9        1    93
#> 214                             180.0+  58  11      1          9        0   179
#> 215                             180.0+  62  17      1         10        1   180
#> 216                                1.0  62   1      1          0        1   172
#> 217                             180.0+  63   3      1          1        0   180
#> 218                             180.0+  63   1      0        180        1   130
#> 219                             180.0+  61   7      0        180        0   135
#> 220                             180.0+  63   4      1          3        0   222
#> 221                             180.0+  62   3      0        180        1   105
#> 222                             180.0+  63   4      0        180        1   190
#> 223                             180.0+  64   4      0        180        0   130
#> 224                             180.0+  60  18      1         13        0   132
#> 225                                9.0  58   9      1          9        0   110
#> 226                               7.0+  62   7      0          7        0   150
#> 227                               22.0  59   1      0         22        1   162
#> 228                             180.0+  58   2      0        180        0   127
#> 229                             180.0+  59   4      0        180        0   196
#> 230                               7.0+  60   7      0          7        0   140
#> 231                             180.0+  59   5      1          1        0   148
#> 232                                1.0  63   1      0          1        0   162
#> 233                                1.0  63   1      0          1        0   130
#> 234                             180.0+  62   6      0        180        0   170
#> 235                               3.0+  60   3      0          3        0   168
#> 236                              167.0  64  10      1          9        0   160
#> 237                             180.0+  63  12      1         10        0   200
#> 238                             180.0+  59  10      0        180        1   130
#> 239                               17.0  60   8      0         17        1   130
#> 240                             180.0+  61   6      1          1        1   117
#> 241                               12.0  64  12      1         11        0   160
#> 242                             180.0+  66   1      1          0        1   120
#> 243                             180.0+  64   6      1          0        1   140
#> 244                             180.0+  63  10      1          0        1   148
#> 245                               36.0  65  36      1         11        0   140
#> 246                             180.0+  63   4      1          3        0   162
#> 247                               3.0+  66   3      1          1        0   127
#> 248                               88.0  61  10      1          2        1   194
#> 249                             180.0+  64  32      1          9        1   160
#> 250                               12.0  63  12      1          9        0   114
#> 251                             180.0+  63   7      0        180        0   120
#> 252                             180.0+  65   8      1          0        0   168
#> 253                             180.0+  65  10      1          8        1   120
#> 254                             180.0+  60   6      0        180        0   130
#> 255                              12.0+  61  12      1         11        0   154
#> 256                             180.0+  61   4      0        180        1   113
#> 257                             180.0+  65   3      0        180        1   190
#> 258                             180.0+  64   7      0        180        1   120
#> 259                             180.0+  66   6      1          1        1   130
#> 260                               12.0  63  12      0         12        1   150
#> 261                             180.0+  62   3      1          1        1   199
#> 262                                9.0  65   6      0          9        0   112
#> 263                             180.0+  63   5      1          4        0   170
#> 264                             180.0+  62  13      1         11        0   180
#> 265                              11.0+  67  11      0         11        1   100
#> 266                               2.0+  64   2      0          2        0   201
#> 267                              18.0+  66  18      1          5        0   142
#> 268                             180.0+  66  16      1         11        1   169
#> 269                             180.0+  62   9      0        180        0   145
#> 270                             180.0+  63   9      1          8        1   160
#> 271                               3.0+  63   3      1          2        0   120
#> 272                               2.0+  63   2      1          0        0   140
#> 273                              103.0  64  19      1          8        1   160
#> 274                             180.0+  65  15      1         11        1   160
#> 275                               5.0+  68   5      1          4        1   150
#> 276                               13.0  64  13      1         12        1   150
#> 277                             179.0+  66   7      1          0        1   115
#> 278                              14.0+  64  14      1         13        1   150
#> 279                               0.5+  64   0      0          0        1   148
#> 280                               3.0+  66   3      1          0        1   135
#> 281                             175.0+  65   2      1          1        1   170
#> 282                             180.0+  68   1      0        180        1   166
#> 283                             180.0+  64  10      1          9        1   110
#> 284                                8.0  67   8      1          1        1   130
#> 285                                5.0  68   5      0          5        1    90
#> 286                               16.0  63  10      0         16        1   160
#> 287                             180.0+  66  14      0        180        0   130
#> 288                                1.0  64   1      0          1        1   120
#> 289                             180.0+  68  18      0        180        1   260
#> 290                               1.0+  63   1      1          0        1   155
#> 291                              11.0+  67  11      0         11        0   150
#> 292                             180.0+  68  11      0        180        0   160
#> 293                               79.0  68  14      0         79        0   172
#> 294                               80.0  66  12      1         10        1   150
#> 295                              15.0+  65  15      1         12        1   150
#> 296                             180.0+  66  11      1          0        0   100
#> 297                               4.0+  65   4      1          2        1   145
#> 298                             180.0+  66  15      1         13        1   160
#> 299                             180.0+  65  11      1          6        0   130
#> 300                             174.0+  69  21      1         10        0   180
#> 301                             180.0+  69   6      0        180        1   100
#> 302                             180.0+  66   9      1          8        0   130
#> 303                               8.0+  65   8      1          0        1    90
#> 304                                3.0  66   3      0          3        1   138
#> 305                              175.0  69   1      1          0        0   170
#> 306                             180.0+  67   1      0        180        1   160
#> 307                             180.0+  65   1      1          0        0   133
#> 308                             180.0+  67   2      0        180        0   184
#> 309                                6.0  65   6      0          6        0    80
#> 310                             180.0+  65  10      1          1        1   148
#> 311                              19.0+  66  19      1         12        1   150
#> 312                               12.0  67  12      1         12        0   160
#> 313                               99.0  69   6      0         99        1   140
#> 314                             180.0+  65   4      1          1        0   130
#> 315                             179.0+  64   4      0        179        0   160
#> 316                             180.0+  66   4      0        180        1   130
#> 317                             180.0+  70  15      1         12        1   132
#> 318                              11.0+  64  11      0         11        0   125
#> 319                                0.5  64   0      1          0        1   118
#> 320                               7.0+  66   7      1          5        1   131
#> 321                             180.0+  66   4      0        180        0   177
#> 322                             152.0+  69   4      1          3        1   150
#> 323                             180.0+  65  13      1         12        1   130
#> 324                             180.0+  66   6      0        180        0   140
#> 325                                1.0  65   1      0          1        1   120
#> 326                              101.0  65   6      0        101        1   115
#> 327                                4.0  68   4      0          4        1   190
#> 328                                5.0  71   3      0          5        0   112
#> 329                              150.0  68   7      0        150        0   210
#> 330                             180.0+  71  20      1          0        1   160
#> 331                             180.0+  67   2      0        180        0   128
#> 332                             180.0+  66   9      1          3        1   151
#> 333                             180.0+  70   4      1          0        1   180
#> 334                              171.0  70  14      0        171        0   166
#> 335                             180.0+  65   2      0        180        0   130
#> 336                             180.0+  68   7      1          0        1   150
#> 337                             180.0+  69   3      1          2        0   151
#> 338                             180.0+  67  14      1         13        0   130
#> 339                              14.0+  65  14      1         13        1   150
#> 340                             180.0+  69   8      0        180        1   180
#> 341                               7.0+  71   7      0          7        0   230
#> 342                                2.0  66   2      0          2        1   228
#> 343                               45.0  71   6      0         45        1   158
#> 344                               5.0+  69   5      0          5        1   142
#> 345                              103.0  71   3      0        103        0   133
#> 346                             180.0+  70  22      1         13        0   103
#> 347                               36.0  67   1      0         36        1   104
#> 348                               5.0+  67   5      0          5        0   130
#> 349                             180.0+  69   8      1          5        1   195
#> 350                             180.0+  72   3      1          0        1   132
#> 351                                7.0  72   7      0          7        1   110
#> 352                               8.0+  69   8      1          7        1   108
#> 353                               2.0+  66   2      1          1        0   123
#> 354                             180.0+  69  19      0        180        0   130
#> 355                             180.0+  66   2      0        180        0   130
#> 356                                7.0  67   7      1          4        0   122
#> 357                                7.0  68   2      0          7        1   130
#> 358                               8.0+  69   8      1          2        0   121
#> 359                              123.0  70   3      0        123        0   130
#> 360                             180.0+  70   9      0        180        1   142
#> 361                                1.0  69   1      0          1        1   110
#> 362                                1.0  67   1      0          1        1    60
#> 363                             180.0+  67   8      1          0        1   130
#> 364                              132.0  72  13      1         11        1   195
#> 365                              10.0+  68  10      1          8        1   160
#> 366                             180.0+  66  24      1         13        0   130
#> 367                             180.0+  70  35      1          0        1   105
#> 368                              162.0  72  30      1          0        1   145
#> 369                               7.0+  70   7      0          7        0   102
#> 370                               7.0+  68   7      1          2        0   135
#> 371                              124.0  73  20      1          0        1   170
#> 372                             180.0+  69  10      1          6        1   120
#> 373                             180.0+  70  11      0        180        1   210
#> 374                               12.0  72  12      1         10        0   170
#> 375                             180.0+  67   8      0        180        1   170
#> 376                             180.0+  67   5      1          0        1   147
#> 377                             180.0+  67   9      0        180        0   158
#> 378                              152.0  73  13      0        152        1   130
#> 379                                2.0  72   2      0          2        1   100
#> 380                               76.0  67   4      1          1        0   134
#> 381                             173.0+  71   1      0        173        1   188
#> 382                             180.0+  68  23      0        180        1   220
#> 383                             180.0+  70   3      0        180        0   121
#> 384                             180.0+  71   3      1          2        0   150
#> 385                               28.0  72   5      0         28        0   120
#> 386                             180.0+  71   5      0        180        0   191
#> 387                             180.0+  73   6      0        180        1   117
#> 388                              16.0+  69  16      1         10        1   140
#> 389                             180.0+  68   7      0        180        1   130
#> 390                             180.0+  70   4      0        180        0   180
#> 391                                6.0  73   6      1          0        1   270
#> 392                             180.0+  72   8      1          1        1   150
#> 393                             180.0+  71   2      1          0        1   180
#> 394                               7.0+  73   7      0          7        1   140
#> 395                              13.0+  70  13      1          9        0   100
#> 396                             180.0+  72   6      0        180        1   130
#> 397                             180.0+  73   0      0        180        1   161
#> 398                             180.0+  73   4      0        180        1   154
#> 399                                2.0  69   2      1          0        1   110
#> 400                               3.0+  71   3      1          1        0   150
#> 401                               20.0  74  20      0         20        1   180
#> 402                               20.0  71  20      1         10        0   140
#> 403                                0.5  74   0      1          0        1    90
#> 404                             180.0+  73   3      1          0        1   136
#> 405                             180.0+  71  17      1         11        0   160
#> 406                                3.0  71   3      1          2        1   190
#> 407                               87.0  73  10      1          8        0   106
#> 408                             180.0+  70  26      1         11        1   120
#> 409                             180.0+  73   6      0        180        0   110
#> 410                             180.0+  72  15      1          0        1   150
#> 411                             180.0+  71   7      1          2        0   143
#> 412                             180.0+  72   8      1          0        1   140
#> 413                                3.0  74   3      0          3        1   150
#> 414                             180.0+  73  17      1         11        0   140
#> 415                              175.0  71  13      1          8        0   121
#> 416                                2.0  69   2      1          1        1    80
#> 417                             180.0+  74   7      1          0        1   117
#> 418                             180.0+  72  15      1         13        0   156
#> 419                               8.0+  70   8      0          8        0   120
#> 420                             179.0+  71  10      1          9        1   120
#> 421                                1.0  75   1      0          1        0   133
#> 422                             180.0+  75   2      1          1        0   145
#> 423                             180.0+  73  10      1          9        1   146
#> 424                              159.0  72  10      1          9        1   160
#> 425                             180.0+  74  15      1          9        1   179
#> 426                               10.0  71   2      0         10        1   112
#> 427                                1.0  73   1      0          1        1    80
#> 428                               13.0  75  13      1          1        1   130
#> 429                             180.0+  71  11      1          8        0   110
#> 430                             180.0+  72  15      1         12        1   120
#> 431                               10.0  73  10      1          8        0   120
#> 432                               57.0  72   7      0         57        1   145
#> 433                             180.0+  73  10      0        180        0   162
#> 434                               11.0  72  11      0         11        1   140
#> 435                               3.0+  70   3      0          3        0   150
#> 436                                5.0  73   5      1          3        1   112
#> 437                             180.0+  76  25      1         12        1   170
#> 438                               12.0  73  12      1         12        1   140
#> 439                             180.0+  75   1      0        180        1   140
#> 440                             180.0+  71   3      1          0        0   144
#> 441                             180.0+  73   5      0        180        0   126
#> 442                             180.0+  73   4      0        180        0   124
#> 443                               34.0  74  34      1          8        1   233
#> 444                             180.0+  76   3      1          0        1   120
#> 445                             180.0+  72   3      0        180        0   160
#> 446                               4.0+  77   4      0          4        0   185
#> 447                                7.0  72   7      1          2        0   142
#> 448                              15.0+  73  15      0         15        1   160
#> 449                             180.0+  71  16      0        180        0   140
#> 450                                3.0  74   3      0          3        1   128
#> 451                             180.0+  76   1      0        180        0   114
#> 452                             180.0+  74   2      1          1        0   140
#> 453                             180.0+  74  19      1          4        1   200
#> 454                                6.0  73   6      0          6        1   114
#> 455                             180.0+  75  23      1         14        1   110
#> 456                             180.0+  74   2      0        180        0   190
#> 457                             180.0+  73   4      1          3        1   125
#> 458                             174.0+  76  13      1         10        0   110
#> 459                                4.0  75   4      1          0        1   122
#> 460                                7.0  75   7      0          7        0   190
#> 461                             180.0+  73  13      1         11        0   195
#> 462                               12.0  75  12      0         12        1   160
#> 463                             180.0+  74   8      1          0        1   105
#> 464                             180.0+  76  13      1          8        1   148
#> 465                               46.0  75   4      1          2        1   188
#> 466                                4.0  76   4      0          4        1   155
#> 467                                1.0  75   1      0          1        1   125
#> 468                               52.0  73   1      0         52        1   105
#> 469                             180.0+  73   0      0        180        0   156
#> 470                             180.0+  76  44      1         10        0   105
#> 471                             180.0+  74  10      1          0        1   135
#> 472                             180.0+  76   5      1          0        1   167
#> 473                                8.0  74   8      1          8        1   170
#> 474                             180.0+  75   9      0        180        1   140
#> 475                             180.0+  73  10      1          9        0   146
#> 476                             180.0+  77  12      0        180        0   130
#> 477                             180.0+  78   5      1          0        1   170
#> 478                               7.0+  73   7      1          0        0   174
#> 479                             168.0+  74   9      1          8        0   200
#> 480                             180.0+  75   6      0        180        0   150
#> 481                             180.0+  79  10      1          8        0   190
#> 482                             176.0+  74   2      1          0        1   130
#> 483                             180.0+  77   3      0        180        0   110
#> 484                               47.0  76  29      0         47        0    90
#> 485                             180.0+  73   8      1          1        1   162
#> 486                               11.0  73  11      1          2        1   110
#> 487                             180.0+  74   2      0        180        0   100
#> 488                             180.0+  74  15      0        180        1   172
#> 489                             180.0+  76  13      1          1        1   170
#> 490                               10.0  80  10      1          6        1   147
#> 491                             180.0+  78   0      0        180        1   212
#> 492                              119.0  75   5      0        119        1   150
#> 493                             180.0+  78  15      0        180        1   270
#> 494                                8.0  80   8      0          8        1   120
#> 495                             180.0+  75  13      1          6        0   150
#> 496                                1.0  76   1      0          1        1    83
#> 497                             180.0+  78  12      1          9        0   150
#> 498                             180.0+  78   2      1          1        0   130
#> 499                               4.0+  75   4      1          0        0   212
#> 500                                2.0  77   2      1          0        1   143
#> 501                             180.0+  78  10      0        180        1   130
#> 502                             152.0+  75  11      1          4        0   162
#> 503                               29.0  76   7      0         29        1   150
#> 504                               23.0  80   9      0         23        1   128
#> 505                                6.0  80   6      0          6        1   150
#> 506                               3.0+  76   3      1          0        1   140
#> 507                             180.0+  78  11      1          1        1   140
#> 508                             180.0+  79  11      0        180        0   160
#> 509                               11.0  78  11      1          8        1   118
#> 510                                4.0  76   4      0          4        1   160
#> 511                              10.0+  76  10      1          8        0   180
#> 512                             180.0+  76  12      1         10        1   127
#> 513                                6.0  77   6      0          6        1   107
#> 514                               3.0+  80   3      1          0        1   120
#> 515                             180.0+  78  11      0        180        1   135
#> 516                                1.0  76   1      0          1        1   140
#> 517                              171.0  77  31      1          3        1   161
#> 518                                1.0  76   1      0          1        1    90
#> 519                                3.0  79   3      0          3        0   120
#> 520                                6.0  77   6      0          6        1   144
#> 521                              138.0  79   4      1          0        1   120
#> 522                               71.0  77   9      1          4        0   141
#> 523                                8.0  82   5      0          8        1   120
#> 524                               59.0  78   4      0         59        1   112
#> 525                               17.0  80  17      1         12        0   100
#> 526                              161.0  76   7      0        161        0   151
#> 527                             180.0+  80  15      1          0        1    90
#> 528                               93.0  81   4      1          2        1   126
#> 529                              164.0  79  28      0        164        0   100
#> 530                              118.0  80   9      0        118        1   186
#> 531                              173.0  80   6      0        173        1   160
#> 532                             180.0+  78  32      0        180        1   130
#> 533                             180.0+  81   3      0        180        0   184
#> 534                             175.0+  81   2      0        175        0   172
#> 535                               7.0+  78   7      0          7        1   147
#> 536                              15.0+  78  15      0         15        0   165
#> 537                               5.0+  80   5      1          1        1   108
#> 538                             180.0+  78   4      0        180        0   175
#> 539                             166.0+  76   1      0        166        0   131
#> 540                              20.0+  78  20      1          0        1   109
#> 541                                1.0  80   1      0          1        0   100
#> 542                               3.0+  78   3      1          1        1   152
#> 543                               10.0  77  10      1          8        1   130
#> 544                             180.0+  82   3      1          1        1   144
#> 545                                6.0  80   6      1          0        1   119
#> 546                             180.0+  78   2      0        180        0   148
#> 547                                1.0  82   1      1          0        1    82
#> 548                             180.0+  79  10      0        180        1   150
#> 549                             180.0+  78  12      0        180        0   134
#> 550                              125.0  79   1      0        125        0   193
#> 551                                4.0  79   4      0          4        1   121
#> 552                             180.0+  82   5      0        180        0   110
#> 553                             180.0+  83   5      0        180        0   148
#> 554                              103.0  83   4      0        103        0    97
#> 555                             177.0+  81   5      0        177        0    41
#> 556                              169.0  80  11      1          8        0   170
#> 557                             180.0+  82   8      1          1        0   128
#> 558                             180.0+  79   1      0        180        1   170
#> 559                               7.0+  80   7      1          0        1   146
#> 560                               20.0  81  20      1          9        0   170
#> 561                               8.0+  83   8      0          8        0   115
#> 562                               16.0  81  16      0         16        1   110
#> 563                             180.0+  80   6      1          0        1   150
#> 564                             180.0+  80  11      1          8        0   110
#> 565                             180.0+  81   8      0        180        0   146
#> 566                                0.5  79   0      1          0        1    96
#> 567                             180.0+  81   2      1          1        0   198
#> 568                                2.0  83   2      0          2        1   155
#> 569                              167.0  84   4      0        167        0   198
#> 570                               3.0+  80   3      1          1        1   230
#> 571                               62.0  82  23      1          0        0   110
#> 572                             180.0+  84   5      0        180        1   203
#> 573                                1.0  81   1      0          1        1   150
#> 574                               38.0  84   1      0         38        1   205
#> 575                             180.0+  83   3      0        180        0   174
#> 576                               90.0  81   4      0         90        1   138
#> 577                             180.0+  79   9      1          8        0   150
#> 578                             180.0+  85   3      1          2        1   160
#> 579                             180.0+  80   2      1          0        1   130
#> 580                               71.0  80   6      0         71        1   189
#> 581                               19.0  82  19      0         19        0   120
#> 582                             180.0+  83   9      0        180        0   198
#> 583                              114.0  83   3      0        114        0    98
#> 584                             180.0+  83   1      0        180        0   160
#> 585                               4.0+  81   4      0          4        0   175
#> 586                             180.0+  84  15      1         13        1   110
#> 587                               5.0+  82   5      1          0        1   146
#> 588                               4.0+  81   4      0          4        0   160
#> 589                             180.0+  86  12      0        180        1   120
#> 590                               77.0  83  12      1          2        1   170
#> 591                             180.0+  81  19      1         14        0   120
#> 592                                3.0  82   3      1          2        0   130
#> 593                               83.0  82  15      1          0        0   183
#> 594                               88.0  80   2      0         88        0   135
#> 595                              126.0  83   7      0        126        0   135
#> 596                                8.0  86   8      0          8        1   132
#> 597                              165.0  84   6      0        165        0   145
#> 598                                3.0  86   3      0          3        1   140
#> 599                             180.0+  82   9      0        180        1   134
#> 600                             180.0+  84   3      0        180        1   120
#> 601                             180.0+  81  13      0        180        0   152
#> 602                             180.0+  81   4      0        180        0   160
#> 603                             180.0+  82   1      0        180        1   193
#> 604                               4.0+  83   4      0          4        0   130
#> 605                                5.0  87   2      0          5        1   137
#> 606                                6.0  86   6      1          0        1   140
#> 607                               70.0  84  16      0         70        1   150
#> 608                               43.0  83  19      0         43        0   150
#> 609                             180.0+  83  10      1          0        1   190
#> 610                             180.0+  86   2      0        180        1   169
#> 611                                3.0  84   3      0          3        1   121
#> 612                             180.0+  84   7      1          2        0   148
#> 613                             180.0+  84   3      0        180        1   170
#> 614                               38.0  86   4      0         38        1   122
#> 615                                4.0  82   4      0          4        0   130
#> 616                              177.0  86  13      0        177        0   163
#> 617                               3.0+  85   3      0          3        1   113
#> 618                               6.0+  86   6      0          6        1   117
#> 619                               62.0  84  13      0         62        1   100
#> 620                               6.0+  86   6      1          1        0   112
#> 621                               4.0+  88   4      0          4        0   100
#> 622                               20.0  83  20      1          3        1   150
#> 623                               22.0  85  22      0         22        1   184
#> 624                               11.0  86   9      1          7        1   142
#> 625                             180.0+  87   2      0        180        1   130
#> 626                               46.0  86   6      0         46        0   173
#> 627                             180.0+  88   2      0        180        1    68
#> 628                               3.0+  83   3      0          3        1   130
#> 629                                4.0  89   4      0          4        1   153
#> 630                              119.0  89   5      0        119        1   140
#> 631                             180.0+  87   6      0        180        1   110
#> 632                               1.0+  87   1      0          1        0   170
#> 633                                8.0  85   8      0          8        1   136
#> 634                              110.0  84   2      0        110        1   174
#> 635                               29.0  87  29      0         29        1    97
#> 636                             180.0+  84   0      0        180        1   136
#> 637                               46.0  89  10      0         46        1   170
#> 638                               14.0  90  14      0         14        1   100
#> 639                                8.0  91   8      0          8        0   100
#> 640                               25.0  87   6      1          0        0   125
#> 641                                3.0  86   3      1          0        1    80
#> 642                               50.0  88   8      0         50        1   154
#> 643                               11.0  90  11      1         10        1   186
#> 644                             180.0+  86   9      1          7        0   130
#> 645                                4.0  90   4      1          0        0   121
#> 646                               36.0  87   5      0         36        1   150
#> 647                               89.0  90   5      1          0        1   125
#> 648                               75.0  88   3      1          2        0   159
#> 649                                1.0  92   1      0          1        1   167
#> 650                               33.0  91   3      0         33        1   137
#> 651                              158.0  88   5      0        158        0   100
#> 652                               74.0  87   7      0         74        1   105
#> 653                              168.0  89   2      0        168        0   118
#> 654                                7.0  92   7      0          7        1   110
#> 655                             180.0+  89  14      0        180        1    84
#> 656                             180.0+  90  19      1         11        1   129
#> 657                               50.0  94   6      0         50        0    78
#> 658                               1.0+  90   1      0          1        1   118
#> 659                             179.0+  93   8      0        179        1   110
#> 660                               8.0+  94   8      0          8        1   142
#> 661                               76.0  92   4      0         76        1   149
#> 662                               67.0  90   3      0         67        0   162
#> 663                               12.0  96   3      0         12        1    97
#> 664                                8.0  95   8      1          5        1   150
#> 665                               26.0  94   3      0         26        1   144
#> 666                               53.0  91  12      0         53        1   212
#> 667                                0.5  93   0      1          0        1   122
#> 668                               69.0  92   5      0         69        0   139
#> 669                                2.0  92   2      0          2        0   112
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 1 0 1 0
#>  [38] 1 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1
#>  [75] 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1
#> [112] 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1
#> [149] 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 0
#> [186] 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [223] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [260] 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1
#> [297] 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 0
#> [371] 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1
#> [408] 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1
#> [445] 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [482] 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 1
#> [519] 0 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [556] 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [593] 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0
#> [630] 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[2]]
#>   [1] 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1
#>  [38] 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 0
#>  [75] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1
#> [112] 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 0 1 0
#> [149] 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1
#> [186] 1 0 0 1 0 0 0 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1
#> [223] 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0
#> [260] 1 1 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [297] 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 1
#> [334] 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [371] 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 0 1 1
#> [408] 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 0 0 0 0 1 0 0 0 1 1 0 1 0
#> [445] 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1
#> [482] 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0
#> [519] 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1
#> [556] 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1
#> [593] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1
#> [630] 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[3]]
#>   [1] 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0
#>  [38] 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0
#>  [75] 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1
#> [112] 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1
#> [149] 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1
#> [186] 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0
#> [223] 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1
#> [260] 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 0
#> [297] 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1
#> [334] 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1
#> [371] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [408] 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 1
#> [445] 0 0 0 0 0 0 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 0
#> [482] 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [519] 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0
#> [556] 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0
#> [593] 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1
#> [630] 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1
#> [667] 1 0 0 1
#> 
#> $weights[[4]]
#>   [1] 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0
#>  [38] 1 0 0 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 1 0 1
#>  [75] 0 0 0 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0
#> [112] 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1
#> [149] 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0
#> [186] 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1
#> [223] 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0
#> [260] 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1
#> [297] 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 0 1 0 0 1 1
#> [334] 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1
#> [371] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1
#> [408] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [445] 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0
#> [482] 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1
#> [519] 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0
#> [556] 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1
#> [593] 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1
#> [630] 0 0 0 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[5]]
#>   [1] 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1
#>  [38] 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0
#>  [75] 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1
#> [112] 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 0
#> [149] 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1
#> [186] 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 0
#> [223] 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1
#> [260] 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1
#> [297] 1 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1
#> [334] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0
#> [371] 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1
#> [408] 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1
#> [445] 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0
#> [482] 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1
#> [519] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0
#> [556] 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [593] 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1
#> [630] 1 0 1 0 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0
#> [667] 1 1 0 0
#> 
#> $weights[[6]]
#>   [1] 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1
#>  [38] 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1
#>  [75] 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 0 0 1 1 0 1
#> [112] 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1
#> [149] 1 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 0 0 1 0 0 1
#> [186] 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 0 0 0
#> [223] 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1
#> [260] 1 1 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1
#> [297] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 0 0
#> [334] 0 0 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1
#> [371] 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1
#> [408] 0 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1
#> [445] 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [482] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0
#> [519] 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1
#> [556] 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0
#> [593] 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1
#> [630] 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[7]]
#>   [1] 0 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 0 1
#>  [38] 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 0 0 0
#>  [75] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0
#> [112] 0 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [149] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0
#> [186] 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1
#> [223] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#> [260] 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1
#> [297] 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 0
#> [334] 0 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1
#> [371] 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 1
#> [408] 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1
#> [445] 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1
#> [482] 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0
#> [519] 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0
#> [556] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1
#> [593] 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1
#> [630] 1 0 1 1 0 1 0 0 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[8]]
#>   [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1
#>  [38] 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1
#>  [75] 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [112] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0
#> [149] 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [186] 0 1 1 0 1 0 0 0 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 1 0
#> [223] 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0
#> [260] 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1
#> [297] 1 1 0 0 0 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1
#> [334] 1 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0
#> [371] 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1
#> [408] 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [445] 0 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1
#> [482] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1
#> [519] 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1
#> [556] 1 0 1 0 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 0 1 0 1 0 0 1 0 1 0 1 0 1 1
#> [593] 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1
#> [630] 1 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 0 1 0 1 0 1 0 1 0 0 0 1 0 1 0 1 0 1 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[9]]
#>   [1] 1 1 1 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1
#>  [38] 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1
#>  [75] 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 0
#> [112] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0 0 0
#> [149] 0 0 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [186] 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1
#> [223] 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1
#> [260] 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1
#> [297] 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 1 1 1
#> [334] 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [371] 1 0 1 1 0 0 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 1
#> [408] 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 0 1 1 0
#> [445] 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1
#> [482] 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1
#> [519] 0 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1
#> [556] 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1
#> [593] 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 0 1 1
#> [630] 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[10]]
#>   [1] 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0
#>  [38] 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1
#>  [75] 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1
#> [112] 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [149] 0 0 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1
#> [186] 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1
#> [223] 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1
#> [260] 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1
#> [297] 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 0 1 0 1
#> [334] 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0
#> [371] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1
#> [408] 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0
#> [445] 0 1 1 1 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1
#> [482] 1 0 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1
#> [519] 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [556] 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 0
#> [593] 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1
#> [630] 0 0 0 0 1 1 0 1 0 0 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[11]]
#>   [1] 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0
#>  [38] 1 0 1 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 0 0 1 1 0 1
#>  [75] 0 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1
#> [112] 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 0
#> [149] 0 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 0
#> [186] 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0
#> [223] 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1
#> [260] 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0
#> [297] 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 0 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1
#> [334] 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0
#> [371] 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 0 0 1 0 1 0 0
#> [408] 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0 0 1
#> [445] 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [482] 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1
#> [519] 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1
#> [556] 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1
#> [593] 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0
#> [630] 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[12]]
#>   [1] 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1
#>  [38] 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#>  [75] 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0
#> [112] 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [149] 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1
#> [186] 1 0 0 0 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [223] 1 0 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0
#> [260] 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#> [334] 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1
#> [371] 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0
#> [408] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0
#> [445] 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [482] 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0
#> [519] 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 0 0 0 0 1 0 0
#> [556] 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 0 1 1
#> [593] 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0
#> [630] 0 0 1 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[13]]
#>   [1] 1 1 0 0 0 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0
#>  [38] 1 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1
#>  [75] 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [112] 1 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0
#> [149] 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1
#> [186] 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1
#> [223] 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1
#> [260] 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0
#> [297] 0 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0
#> [334] 1 0 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [371] 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 0
#> [408] 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0
#> [445] 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1
#> [482] 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0
#> [519] 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0
#> [556] 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1
#> [593] 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1
#> [630] 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[14]]
#>   [1] 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0
#>  [38] 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0
#>  [75] 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1
#> [112] 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 1 0 1
#> [149] 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0 0 1 0
#> [186] 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0
#> [223] 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [260] 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0
#> [297] 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1
#> [334] 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1
#> [371] 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 0 1
#> [408] 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1
#> [445] 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1
#> [482] 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#> [519] 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 1 0 0 1 1
#> [556] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1
#> [593] 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1
#> [630] 0 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0
#> [667] 1 0 1 0
#> 
#> $weights[[15]]
#>   [1] 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1
#>  [38] 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1
#>  [75] 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 1
#> [112] 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1
#> [149] 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [186] 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1
#> [223] 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1
#> [260] 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1
#> [297] 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0 0
#> [334] 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 1
#> [371] 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 0 0 1 1
#> [408] 0 1 0 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1
#> [445] 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1
#> [482] 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1
#> [519] 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [556] 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 1
#> [593] 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1
#> [630] 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[16]]
#>   [1] 1 0 0 0 0 0 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1
#>  [38] 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1
#>  [75] 1 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1
#> [112] 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 0 0
#> [149] 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 0 0 1 0 0
#> [186] 0 1 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1
#> [223] 0 0 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1
#> [260] 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1
#> [297] 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0
#> [334] 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [371] 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [408] 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1
#> [445] 1 0 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0 1
#> [482] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1
#> [519] 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0
#> [556] 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0
#> [593] 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1
#> [630] 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[17]]
#>   [1] 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1
#>  [38] 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1
#>  [75] 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1
#> [112] 1 1 0 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1
#> [149] 1 0 0 1 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0
#> [186] 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 0
#> [223] 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [260] 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0
#> [297] 0 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1
#> [334] 0 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [371] 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1
#> [408] 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0
#> [445] 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0
#> [482] 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 1
#> [519] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [556] 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 1 0 1 1 1 0 1 1 1 0
#> [593] 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [630] 1 0 0 1 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 0
#> [667] 0 1 0 0
#> 
#> $weights[[18]]
#>   [1] 1 0 0 0 0 1 1 0 0 0 0 1 0 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 0
#>  [38] 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1
#>  [75] 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [112] 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1
#> [149] 1 0 1 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1
#> [186] 1 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 0 1 1 1
#> [223] 0 0 1 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0
#> [260] 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [297] 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 0
#> [334] 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1
#> [371] 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0
#> [408] 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 0 1 0
#> [445] 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0
#> [482] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [519] 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0
#> [556] 1 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 0 0
#> [593] 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 0 1 1 1 1
#> [630] 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[19]]
#>   [1] 1 1 1 0 1 1 0 0 1 1 1 0 0 0 0 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1
#>  [38] 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1
#>  [75] 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0
#> [112] 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 1 1
#> [149] 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1
#> [186] 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 0 0 1
#> [223] 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0
#> [260] 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0
#> [297] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [334] 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1
#> [371] 0 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1
#> [408] 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0
#> [445] 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1
#> [482] 0 1 0 1 0 0 0 0 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 0 0 1 0
#> [519] 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0
#> [556] 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0
#> [593] 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 0
#> [630] 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[20]]
#>   [1] 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0
#>  [38] 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0
#>  [75] 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [112] 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 0 0 1 1 1
#> [149] 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1
#> [186] 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0
#> [223] 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1
#> [260] 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1
#> [297] 1 1 0 1 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1
#> [334] 1 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1
#> [371] 1 0 0 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1
#> [408] 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 0 0 1 0 1
#> [445] 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0
#> [482] 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [519] 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1
#> [556] 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0
#> [593] 0 1 0 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0
#> [630] 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[21]]
#>   [1] 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1
#>  [38] 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1
#>  [75] 0 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1
#> [112] 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1
#> [149] 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1
#> [186] 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [223] 1 1 0 1 0 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 0
#> [260] 1 0 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0
#> [297] 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0
#> [334] 0 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0
#> [371] 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0
#> [408] 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [445] 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1
#> [482] 1 1 1 0 0 1 0 1 1 0 1 1 0 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0
#> [519] 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1
#> [556] 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1
#> [593] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0
#> [630] 0 1 0 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[22]]
#>   [1] 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 1
#>  [38] 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0
#>  [75] 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 0
#> [112] 0 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [149] 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [186] 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0
#> [223] 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1
#> [260] 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [297] 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 1 0 1 0 0 1
#> [334] 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [371] 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0
#> [408] 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1
#> [445] 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1
#> [482] 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1
#> [519] 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1
#> [556] 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 1 0
#> [593] 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1
#> [630] 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[23]]
#>   [1] 0 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1
#>  [38] 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0
#>  [75] 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0
#> [112] 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1
#> [149] 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1
#> [186] 0 1 1 1 1 0 1 0 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1
#> [223] 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 0
#> [260] 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1
#> [297] 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1
#> [334] 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [371] 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 0 0 0 1 0 1
#> [408] 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 1 1 0 1 1
#> [445] 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 0 1 1 0 1 1 1
#> [482] 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [519] 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0
#> [556] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1
#> [593] 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1
#> [630] 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[24]]
#>   [1] 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1
#>  [38] 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1
#>  [75] 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1
#> [112] 0 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0
#> [149] 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1
#> [186] 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 0 1 0 1 0 0 0 0
#> [223] 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0
#> [260] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0
#> [297] 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 0
#> [334] 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0
#> [371] 1 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1
#> [408] 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1
#> [445] 1 1 0 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1
#> [482] 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1
#> [519] 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1
#> [556] 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0
#> [593] 0 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [630] 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[25]]
#>   [1] 0 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1
#>  [38] 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 0 0 0 0 1 1
#>  [75] 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0
#> [112] 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0
#> [149] 0 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1
#> [186] 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [223] 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [260] 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1
#> [297] 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0
#> [334] 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [371] 0 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1
#> [408] 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0
#> [445] 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [482] 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1
#> [519] 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 0 1 1 1
#> [556] 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1
#> [593] 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0
#> [630] 1 0 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[26]]
#>   [1] 0 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1
#>  [38] 0 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1
#>  [75] 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0
#> [112] 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1
#> [149] 1 0 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0
#> [186] 1 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0
#> [223] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [260] 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0
#> [297] 0 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1
#> [334] 0 0 0 1 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0
#> [371] 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1
#> [408] 0 1 0 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1
#> [445] 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0
#> [482] 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 1 0 1 1
#> [519] 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [556] 1 0 0 1 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1
#> [593] 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1
#> [630] 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[27]]
#>   [1] 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 0 1 1 1
#>  [38] 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1
#>  [75] 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 1
#> [112] 1 1 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 0 1 0 1 0 0 1 1 0 0 0 1 0 1 1 1
#> [149] 0 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1
#> [186] 1 1 0 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1
#> [223] 1 0 0 1 0 0 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0
#> [260] 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0
#> [297] 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1
#> [334] 1 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 0
#> [371] 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0
#> [408] 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0
#> [445] 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1
#> [482] 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1
#> [519] 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1
#> [556] 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0
#> [593] 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [630] 1 0 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 0
#> [667] 1 0 1 1
#> 
#> $weights[[28]]
#>   [1] 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1
#>  [38] 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1
#>  [75] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1
#> [112] 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1
#> [149] 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1
#> [186] 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1
#> [223] 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 0 1 1 0 0 1
#> [260] 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 0 0
#> [297] 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0
#> [334] 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0
#> [371] 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [408] 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0
#> [445] 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1
#> [482] 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1
#> [519] 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0
#> [556] 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 0 0
#> [593] 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1
#> [630] 0 0 1 0 1 0 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[29]]
#>   [1] 0 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1
#>  [38] 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0
#>  [75] 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0 1 1
#> [112] 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1
#> [186] 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0
#> [223] 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 0 0 0 1
#> [260] 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1
#> [297] 0 0 1 1 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 1
#> [334] 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [371] 0 1 0 0 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1
#> [408] 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1
#> [445] 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1
#> [482] 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0
#> [519] 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 0 1 0 0 0 1
#> [556] 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1
#> [593] 1 0 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1
#> [630] 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[30]]
#>   [1] 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 0
#>  [38] 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#>  [75] 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0
#> [112] 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0
#> [149] 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1
#> [186] 1 0 0 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0
#> [223] 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0
#> [260] 0 1 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1
#> [297] 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1
#> [334] 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 0 0 1 1 1 1
#> [371] 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [408] 0 1 0 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1
#> [445] 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1
#> [482] 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0
#> [519] 1 0 1 1 1 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1
#> [556] 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [593] 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 1 0
#> [630] 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[31]]
#>   [1] 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1
#>  [38] 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1
#>  [75] 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0
#> [112] 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 0
#> [149] 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1
#> [186] 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1
#> [223] 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [260] 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0
#> [297] 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 0 1 0 0 1 1 0
#> [334] 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1
#> [371] 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 1 1
#> [408] 0 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1
#> [445] 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0
#> [482] 0 1 1 0 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [519] 0 1 1 1 0 0 0 1 0 1 1 0 1 0 0 1 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1
#> [556] 1 0 1 0 1 0 0 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0
#> [593] 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 0
#> [630] 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0
#> [667] 0 1 1 1
#> 
#> $weights[[32]]
#>   [1] 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1
#>  [38] 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1
#>  [75] 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 0
#> [112] 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1
#> [149] 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1
#> [186] 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [223] 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0
#> [260] 0 1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [297] 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1
#> [334] 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 0
#> [371] 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 1
#> [408] 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1
#> [445] 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0
#> [482] 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [519] 0 0 0 0 0 1 0 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1
#> [556] 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1
#> [593] 1 0 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 1 1
#> [630] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[33]]
#>   [1] 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 0
#>  [38] 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#>  [75] 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1
#> [112] 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 0 1 0 1
#> [149] 0 0 0 0 0 0 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1
#> [186] 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0
#> [223] 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 0 0 0 1
#> [260] 0 1 1 1 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1
#> [297] 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1
#> [334] 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1
#> [371] 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1
#> [408] 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0
#> [445] 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 0 1 0 0
#> [482] 1 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0
#> [519] 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0
#> [556] 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1
#> [593] 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1
#> [630] 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[34]]
#>   [1] 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0
#>  [38] 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1
#>  [75] 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 0 0 0 0 1 0 0 0 1 1 1 0 1 0
#> [112] 0 1 0 0 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1
#> [149] 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1
#> [186] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0
#> [223] 0 0 0 1 1 0 0 0 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1
#> [260] 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [297] 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0
#> [334] 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0
#> [371] 0 0 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1
#> [408] 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1
#> [445] 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0
#> [482] 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0
#> [519] 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [556] 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0
#> [593] 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0
#> [630] 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 0 0
#> [667] 1 1 0 0
#> 
#> $weights[[35]]
#>   [1] 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1
#>  [38] 0 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0
#>  [75] 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 0 1 0 0 1
#> [112] 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 0 1
#> [149] 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1
#> [186] 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [223] 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1
#> [260] 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [297] 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1
#> [334] 0 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0 0
#> [371] 1 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 0
#> [408] 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [445] 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [482] 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1
#> [519] 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0
#> [556] 0 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1
#> [593] 1 1 0 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0
#> [630] 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[36]]
#>   [1] 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#>  [38] 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1
#>  [75] 1 0 0 1 1 1 0 1 0 0 0 0 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 0
#> [112] 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0
#> [149] 0 1 1 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0
#> [186] 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 0 0 0
#> [223] 1 1 0 0 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 1 0 0 1 0 1 0 0 0 0 1 0 0 1 0
#> [260] 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 0 1
#> [297] 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 1 0 1 1 0 0 1 0
#> [334] 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1
#> [371] 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [408] 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 0 0
#> [445] 0 0 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 0 1
#> [482] 1 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0
#> [519] 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1
#> [556] 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [593] 0 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1
#> [630] 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[37]]
#>   [1] 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 1 1 0
#>  [38] 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 0 1 1 0 0 1 1
#>  [75] 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0
#> [112] 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1
#> [149] 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 0 0 0 1 1 1 0 0 1 1
#> [186] 0 0 0 1 0 0 0 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1
#> [223] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [260] 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1
#> [297] 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [334] 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1
#> [371] 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1
#> [408] 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1
#> [445] 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1
#> [482] 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 0
#> [519] 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1
#> [556] 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1
#> [593] 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1
#> [630] 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[38]]
#>   [1] 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1
#>  [38] 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0
#>  [75] 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 1
#> [112] 1 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0
#> [149] 0 0 1 0 1 1 0 1 0 0 0 1 0 1 0 0 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 0 0
#> [186] 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1
#> [223] 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0
#> [260] 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1
#> [297] 0 0 0 1 0 0 0 1 1 0 1 0 0 0 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1
#> [334] 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1
#> [371] 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0
#> [408] 0 1 0 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1
#> [445] 1 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1
#> [482] 0 1 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 0 0 1 1 0 0
#> [519] 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [556] 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [593] 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1
#> [630] 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1
#> [667] 1 0 0 1
#> 
#> $weights[[39]]
#>   [1] 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0
#>  [38] 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0
#>  [75] 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [112] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [149] 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 0 1 0 1 1 1 0
#> [186] 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0
#> [223] 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1
#> [260] 0 0 0 1 0 0 0 0 0 0 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1
#> [297] 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0
#> [334] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 0
#> [371] 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0
#> [408] 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1
#> [445] 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0
#> [482] 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0
#> [519] 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 0 0 0 0 1 1
#> [556] 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [593] 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 0
#> [630] 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[40]]
#>   [1] 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1
#>  [38] 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0
#>  [75] 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1
#> [112] 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1
#> [149] 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1
#> [186] 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1
#> [223] 0 0 0 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1
#> [260] 1 1 0 1 1 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1 0 0
#> [297] 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 0 1 1 1
#> [334] 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1
#> [371] 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0
#> [408] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 0
#> [445] 1 0 1 0 1 0 0 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1
#> [482] 0 1 1 0 1 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0
#> [519] 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1
#> [556] 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1 0 0 1
#> [630] 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[41]]
#>   [1] 1 1 1 1 0 0 0 1 0 1 0 0 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1
#>  [38] 0 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1
#>  [75] 1 0 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1
#> [112] 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1
#> [149] 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1
#> [186] 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0
#> [223] 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0
#> [260] 1 0 1 1 0 0 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1
#> [297] 1 1 0 1 1 0 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1
#> [334] 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0
#> [371] 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0
#> [408] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1
#> [445] 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [482] 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1
#> [519] 1 0 1 0 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1
#> [556] 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [593] 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 0 0 1 0 0 1 0 1 0 0 1 1 1 0
#> [630] 1 0 0 1 0 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[42]]
#>   [1] 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1
#>  [38] 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 0 1
#>  [75] 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0
#> [112] 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [149] 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0
#> [186] 0 0 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0
#> [223] 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1
#> [260] 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1
#> [297] 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0 1
#> [334] 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1
#> [371] 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0
#> [408] 0 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [445] 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#> [482] 0 1 1 0 0 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0
#> [519] 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1
#> [556] 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [593] 0 0 1 1 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0
#> [630] 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0
#> [667] 0 1 0 0
#> 
#> $weights[[43]]
#>   [1] 1 1 0 1 0 0 0 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1
#>  [38] 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0
#>  [75] 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1
#> [112] 1 1 0 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1
#> [149] 0 0 0 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 1
#> [186] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0
#> [223] 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 0 1 1 1
#> [260] 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0
#> [297] 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1
#> [334] 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 0 1
#> [371] 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0
#> [408] 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 1 0 0
#> [445] 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1
#> [482] 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1
#> [519] 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0
#> [556] 0 0 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1
#> [593] 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 0 1
#> [630] 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[44]]
#>   [1] 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0
#>  [38] 0 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1 1
#>  [75] 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1
#> [112] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1
#> [149] 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 0 1 0 1
#> [186] 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0
#> [223] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0
#> [260] 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 1 1
#> [297] 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [334] 1 0 1 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0
#> [371] 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [408] 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1
#> [445] 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0
#> [482] 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 0
#> [519] 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1
#> [556] 0 0 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 1 0 0 0 1
#> [593] 0 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1
#> [630] 1 1 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[45]]
#>   [1] 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1
#>  [38] 1 0 0 1 0 0 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1
#>  [75] 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1
#> [112] 1 1 1 0 0 1 1 0 0 0 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0
#> [149] 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [186] 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1
#> [223] 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 0 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1
#> [260] 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0 0 0 0 1 0 1 1 1
#> [297] 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0
#> [334] 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1
#> [371] 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1
#> [408] 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 0
#> [445] 0 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 0 1 1
#> [482] 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [519] 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0
#> [556] 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1
#> [593] 1 0 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1
#> [630] 0 1 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[46]]
#>   [1] 1 0 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1
#>  [38] 0 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0
#>  [75] 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 0 1 1 1 0 0 0
#> [112] 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [149] 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0
#> [186] 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1
#> [223] 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#> [260] 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0
#> [297] 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 1 0 0
#> [334] 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1
#> [371] 0 0 1 0 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [408] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1
#> [445] 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1
#> [482] 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1
#> [519] 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 0
#> [556] 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 0
#> [593] 0 1 0 1 1 1 0 0 0 1 0 0 0 0 1 1 0 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 0 1 1 1 0
#> [630] 1 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0
#> [667] 0 0 1 0
#> 
#> $weights[[47]]
#>   [1] 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1
#>  [38] 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0
#>  [75] 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1
#> [112] 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [149] 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0
#> [186] 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1
#> [223] 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1
#> [260] 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1
#> [297] 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [334] 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 1 0 1 0
#> [371] 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0
#> [408] 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 0 1 1 1 1 1 1
#> [445] 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 1 1
#> [482] 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1
#> [519] 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1
#> [556] 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0
#> [593] 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0
#> [630] 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[48]]
#>   [1] 0 1 1 0 0 1 0 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1
#>  [38] 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1
#>  [75] 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0 1
#> [112] 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
#> [149] 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 1 0 1 0 0
#> [186] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 1 0 0
#> [223] 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [260] 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [297] 0 0 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1
#> [334] 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1
#> [371] 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1
#> [408] 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [445] 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0
#> [482] 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0
#> [519] 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1
#> [556] 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1
#> [593] 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0
#> [630] 0 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 0 1
#> [667] 0 1 0 1
#> 
#> $weights[[49]]
#>   [1] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0
#>  [38] 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 0 1
#>  [75] 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 0 0
#> [112] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0
#> [149] 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1
#> [186] 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1
#> [223] 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1
#> [260] 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1
#> [297] 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0
#> [334] 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1
#> [371] 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1
#> [408] 1 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1 1
#> [445] 1 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1
#> [482] 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1
#> [519] 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 0 1
#> [556] 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0
#> [593] 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 0
#> [630] 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1
#> [667] 0 0 1 0
#> 
#> $weights[[50]]
#>   [1] 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0
#>  [38] 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 1
#>  [75] 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0
#> [112] 0 0 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1
#> [149] 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1
#> [186] 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1
#> [223] 1 1 1 1 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1
#> [260] 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1
#> [297] 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0
#> [334] 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 0 1 1
#> [371] 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 0 0
#> [408] 1 1 0 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1
#> [445] 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [482] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [519] 1 1 0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0
#> [556] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0
#> [593] 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [630] 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0
#> [667] 1 0 0 0
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       5.0+
#> 3     3       5.0+
#> 4     4     180.0+
#> 5     5       5.0+
#> 6     6       2.0+
#> 7     7     180.0+
#> 8     8     180.0+
#> 9     9     180.0+
#> 10   10       5.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14     180.0+
#> 15   15       2.0+
#> 16   16     180.0+
#> 17   17       5.0+
#> 18   18     180.0+
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21     180.0+
#> 22   22     180.0+
#> 23   23       2.0+
#> 24   24     180.0+
#> 25   25     155.0+
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
#> 38   38     180.0+
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43       73.0
#> 44   44       5.0+
#> 45   45     161.0+
#> 46   46     180.0+
#> 47   47     180.0+
#> 48   48     180.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     177.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     180.0+
#> 56   56     180.0+
#> 57   57      10.0+
#> 58   58     172.0+
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62     180.0+
#> 63   63     180.0+
#> 64   64     180.0+
#> 65   65        2.0
#> 66   66        1.0
#> 67   67     179.0+
#> 68   68     180.0+
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
#> 82   82     180.0+
#> 83   83        7.0
#> 84   84      88.0+
#> 85   85     180.0+
#> 86   86       4.0+
#> 87   87     180.0+
#> 88   88     180.0+
#> 89   89     180.0+
#> 90   90     180.0+
#> 91   91        5.0
#> 92   92     180.0+
#> 93   93     180.0+
#> 94   94     180.0+
#> 95   95     180.0+
#> 96   96     180.0+
#> 97   97       4.0+
#> 98   98       85.0
#> 99   99     180.0+
#> 100 100       99.0
#> 101 101     180.0+
#> 102 102      16.0+
#> 103 103     180.0+
#> 104 104     152.0+
#> 105 105       6.0+
#> 106 106     180.0+
#> 107 107     180.0+
#> 108 108     171.0+
#> 109 109     180.0+
#> 110 110     174.0+
#> 111 111       28.0
#> 112 112       6.0+
#> 113 113     180.0+
#> 114 114     180.0+
#> 115 115     180.0+
#> 116 116        2.0
#> 117 117     180.0+
#> 118 118       7.0+
#> 119 119     180.0+
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123      16.0+
#> 124 124      15.0+
#> 125 125     180.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128       3.0+
#> 129 129     180.0+
#> 130 130     180.0+
#> 131 131      140.0
#> 132 132     180.0+
#> 133 133        1.0
#> 134 134      165.0
#> 135 135     180.0+
#> 136 136     180.0+
#> 137 137     180.0+
#> 138 138     180.0+
#> 139 139     180.0+
#> 140 140     180.0+
#> 141 141        0.5
#> 142 142     180.0+
#> 143 143     180.0+
#> 144 144     180.0+
#> 145 145     180.0+
#> 146 146     171.0+
#> 147 147       5.0+
#> 148 148     180.0+
#> 149 149       4.0+
#> 150 150     147.0+
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153       5.0+
#> 154 154     180.0+
#> 155 155       9.0+
#> 156 156     180.0+
#> 157 157     180.0+
#> 158 158       2.0+
#> 159 159     180.0+
#> 160 160     180.0+
#> 161 161     180.0+
#> 162 162        2.0
#> 163 163     180.0+
#> 164 164     180.0+
#> 165 165     180.0+
#> 166 166       64.0
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169       9.0+
#> 170 170     180.0+
#> 171 171     180.0+
#> 172 172     171.0+
#> 173 173     180.0+
#> 174 174     180.0+
#> 175 175        3.0
#> 176 176     180.0+
#> 177 177     180.0+
#> 178 178     180.0+
#> 179 179       17.0
#> 180 180       45.0
#> 181 181       19.0
#> 182 182     180.0+
#> 183 183     180.0+
#> 184 184     180.0+
#> 185 185     172.0+
#> 186 186     172.0+
#> 187 187       24.0
#> 188 188     180.0+
#> 189 189        8.0
#> 190 190     180.0+
#> 191 191     180.0+
#> 192 192       1.0+
#> 193 193       15.0
#> 194 194     180.0+
#> 195 195     180.0+
#> 196 196       77.0
#> 197 197      13.0+
#> 198 198       8.0+
#> 199 199     180.0+
#> 200 200      170.0
#> 201 201       94.0
#> 202 202     180.0+
#> 203 203      169.0
#> 204 204       7.0+
#> 205 205        6.0
#> 206 206     180.0+
#> 207 207     180.0+
#> 208 208     180.0+
#> 209 209     180.0+
#> 210 210     180.0+
#> 211 211       28.0
#> 212 212      13.0+
#> 213 213       18.0
#> 214 214     180.0+
#> 215 215     180.0+
#> 216 216        1.0
#> 217 217     180.0+
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221     180.0+
#> 222 222     180.0+
#> 223 223     180.0+
#> 224 224     180.0+
#> 225 225        9.0
#> 226 226       7.0+
#> 227 227       22.0
#> 228 228     180.0+
#> 229 229     180.0+
#> 230 230       7.0+
#> 231 231     180.0+
#> 232 232        1.0
#> 233 233        1.0
#> 234 234     180.0+
#> 235 235       3.0+
#> 236 236      167.0
#> 237 237     180.0+
#> 238 238     180.0+
#> 239 239       17.0
#> 240 240     180.0+
#> 241 241       12.0
#> 242 242     180.0+
#> 243 243     180.0+
#> 244 244     180.0+
#> 245 245       36.0
#> 246 246     180.0+
#> 247 247       3.0+
#> 248 248       88.0
#> 249 249     180.0+
#> 250 250       12.0
#> 251 251     180.0+
#> 252 252     180.0+
#> 253 253     180.0+
#> 254 254     180.0+
#> 255 255      12.0+
#> 256 256     180.0+
#> 257 257     180.0+
#> 258 258     180.0+
#> 259 259     180.0+
#> 260 260       12.0
#> 261 261     180.0+
#> 262 262        9.0
#> 263 263     180.0+
#> 264 264     180.0+
#> 265 265      11.0+
#> 266 266       2.0+
#> 267 267      18.0+
#> 268 268     180.0+
#> 269 269     180.0+
#> 270 270     180.0+
#> 271 271       3.0+
#> 272 272       2.0+
#> 273 273      103.0
#> 274 274     180.0+
#> 275 275       5.0+
#> 276 276       13.0
#> 277 277     179.0+
#> 278 278      14.0+
#> 279 279       0.5+
#> 280 280       3.0+
#> 281 281     175.0+
#> 282 282     180.0+
#> 283 283     180.0+
#> 284 284        8.0
#> 285 285        5.0
#> 286 286       16.0
#> 287 287     180.0+
#> 288 288        1.0
#> 289 289     180.0+
#> 290 290       1.0+
#> 291 291      11.0+
#> 292 292     180.0+
#> 293 293       79.0
#> 294 294       80.0
#> 295 295      15.0+
#> 296 296     180.0+
#> 297 297       4.0+
#> 298 298     180.0+
#> 299 299     180.0+
#> 300 300     174.0+
#> 301 301     180.0+
#> 302 302     180.0+
#> 303 303       8.0+
#> 304 304        3.0
#> 305 305      175.0
#> 306 306     180.0+
#> 307 307     180.0+
#> 308 308     180.0+
#> 309 309        6.0
#> 310 310     180.0+
#> 311 311      19.0+
#> 312 312       12.0
#> 313 313       99.0
#> 314 314     180.0+
#> 315 315     179.0+
#> 316 316     180.0+
#> 317 317     180.0+
#> 318 318      11.0+
#> 319 319        0.5
#> 320 320       7.0+
#> 321 321     180.0+
#> 322 322     152.0+
#> 323 323     180.0+
#> 324 324     180.0+
#> 325 325        1.0
#> 326 326      101.0
#> 327 327        4.0
#> 328 328        5.0
#> 329 329      150.0
#> 330 330     180.0+
#> 331 331     180.0+
#> 332 332     180.0+
#> 333 333     180.0+
#> 334 334      171.0
#> 335 335     180.0+
#> 336 336     180.0+
#> 337 337     180.0+
#> 338 338     180.0+
#> 339 339      14.0+
#> 340 340     180.0+
#> 341 341       7.0+
#> 342 342        2.0
#> 343 343       45.0
#> 344 344       5.0+
#> 345 345      103.0
#> 346 346     180.0+
#> 347 347       36.0
#> 348 348       5.0+
#> 349 349     180.0+
#> 350 350     180.0+
#> 351 351        7.0
#> 352 352       8.0+
#> 353 353       2.0+
#> 354 354     180.0+
#> 355 355     180.0+
#> 356 356        7.0
#> 357 357        7.0
#> 358 358       8.0+
#> 359 359      123.0
#> 360 360     180.0+
#> 361 361        1.0
#> 362 362        1.0
#> 363 363     180.0+
#> 364 364      132.0
#> 365 365      10.0+
#> 366 366     180.0+
#> 367 367     180.0+
#> 368 368      162.0
#> 369 369       7.0+
#> 370 370       7.0+
#> 371 371      124.0
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
#> 385 385       28.0
#> 386 386     180.0+
#> 387 387     180.0+
#> 388 388      16.0+
#> 389 389     180.0+
#> 390 390     180.0+
#> 391 391        6.0
#> 392 392     180.0+
#> 393 393     180.0+
#> 394 394       7.0+
#> 395 395      13.0+
#> 396 396     180.0+
#> 397 397     180.0+
#> 398 398     180.0+
#> 399 399        2.0
#> 400 400       3.0+
#> 401 401       20.0
#> 402 402       20.0
#> 403 403        0.5
#> 404 404     180.0+
#> 405 405     180.0+
#> 406 406        3.0
#> 407 407       87.0
#> 408 408     180.0+
#> 409 409     180.0+
#> 410 410     180.0+
#> 411 411     180.0+
#> 412 412     180.0+
#> 413 413        3.0
#> 414 414     180.0+
#> 415 415      175.0
#> 416 416        2.0
#> 417 417     180.0+
#> 418 418     180.0+
#> 419 419       8.0+
#> 420 420     179.0+
#> 421 421        1.0
#> 422 422     180.0+
#> 423 423     180.0+
#> 424 424      159.0
#> 425 425     180.0+
#> 426 426       10.0
#> 427 427        1.0
#> 428 428       13.0
#> 429 429     180.0+
#> 430 430     180.0+
#> 431 431       10.0
#> 432 432       57.0
#> 433 433     180.0+
#> 434 434       11.0
#> 435 435       3.0+
#> 436 436        5.0
#> 437 437     180.0+
#> 438 438       12.0
#> 439 439     180.0+
#> 440 440     180.0+
#> 441 441     180.0+
#> 442 442     180.0+
#> 443 443       34.0
#> 444 444     180.0+
#> 445 445     180.0+
#> 446 446       4.0+
#> 447 447        7.0
#> 448 448      15.0+
#> 449 449     180.0+
#> 450 450        3.0
#> 451 451     180.0+
#> 452 452     180.0+
#> 453 453     180.0+
#> 454 454        6.0
#> 455 455     180.0+
#> 456 456     180.0+
#> 457 457     180.0+
#> 458 458     174.0+
#> 459 459        4.0
#> 460 460        7.0
#> 461 461     180.0+
#> 462 462       12.0
#> 463 463     180.0+
#> 464 464     180.0+
#> 465 465       46.0
#> 466 466        4.0
#> 467 467        1.0
#> 468 468       52.0
#> 469 469     180.0+
#> 470 470     180.0+
#> 471 471     180.0+
#> 472 472     180.0+
#> 473 473        8.0
#> 474 474     180.0+
#> 475 475     180.0+
#> 476 476     180.0+
#> 477 477     180.0+
#> 478 478       7.0+
#> 479 479     168.0+
#> 480 480     180.0+
#> 481 481     180.0+
#> 482 482     176.0+
#> 483 483     180.0+
#> 484 484       47.0
#> 485 485     180.0+
#> 486 486       11.0
#> 487 487     180.0+
#> 488 488     180.0+
#> 489 489     180.0+
#> 490 490       10.0
#> 491 491     180.0+
#> 492 492      119.0
#> 493 493     180.0+
#> 494 494        8.0
#> 495 495     180.0+
#> 496 496        1.0
#> 497 497     180.0+
#> 498 498     180.0+
#> 499 499       4.0+
#> 500 500        2.0
#> 501 501     180.0+
#> 502 502     152.0+
#> 503 503       29.0
#> 504 504       23.0
#> 505 505        6.0
#> 506 506       3.0+
#> 507 507     180.0+
#> 508 508     180.0+
#> 509 509       11.0
#> 510 510        4.0
#> 511 511      10.0+
#> 512 512     180.0+
#> 513 513        6.0
#> 514 514       3.0+
#> 515 515     180.0+
#> 516 516        1.0
#> 517 517      171.0
#> 518 518        1.0
#> 519 519        3.0
#> 520 520        6.0
#> 521 521      138.0
#> 522 522       71.0
#> 523 523        8.0
#> 524 524       59.0
#> 525 525       17.0
#> 526 526      161.0
#> 527 527     180.0+
#> 528 528       93.0
#> 529 529      164.0
#> 530 530      118.0
#> 531 531      173.0
#> 532 532     180.0+
#> 533 533     180.0+
#> 534 534     175.0+
#> 535 535       7.0+
#> 536 536      15.0+
#> 537 537       5.0+
#> 538 538     180.0+
#> 539 539     166.0+
#> 540 540      20.0+
#> 541 541        1.0
#> 542 542       3.0+
#> 543 543       10.0
#> 544 544     180.0+
#> 545 545        6.0
#> 546 546     180.0+
#> 547 547        1.0
#> 548 548     180.0+
#> 549 549     180.0+
#> 550 550      125.0
#> 551 551        4.0
#> 552 552     180.0+
#> 553 553     180.0+
#> 554 554      103.0
#> 555 555     177.0+
#> 556 556      169.0
#> 557 557     180.0+
#> 558 558     180.0+
#> 559 559       7.0+
#> 560 560       20.0
#> 561 561       8.0+
#> 562 562       16.0
#> 563 563     180.0+
#> 564 564     180.0+
#> 565 565     180.0+
#> 566 566        0.5
#> 567 567     180.0+
#> 568 568        2.0
#> 569 569      167.0
#> 570 570       3.0+
#> 571 571       62.0
#> 572 572     180.0+
#> 573 573        1.0
#> 574 574       38.0
#> 575 575     180.0+
#> 576 576       90.0
#> 577 577     180.0+
#> 578 578     180.0+
#> 579 579     180.0+
#> 580 580       71.0
#> 581 581       19.0
#> 582 582     180.0+
#> 583 583      114.0
#> 584 584     180.0+
#> 585 585       4.0+
#> 586 586     180.0+
#> 587 587       5.0+
#> 588 588       4.0+
#> 589 589     180.0+
#> 590 590       77.0
#> 591 591     180.0+
#> 592 592        3.0
#> 593 593       83.0
#> 594 594       88.0
#> 595 595      126.0
#> 596 596        8.0
#> 597 597      165.0
#> 598 598        3.0
#> 599 599     180.0+
#> 600 600     180.0+
#> 601 601     180.0+
#> 602 602     180.0+
#> 603 603     180.0+
#> 604 604       4.0+
#> 605 605        5.0
#> 606 606        6.0
#> 607 607       70.0
#> 608 608       43.0
#> 609 609     180.0+
#> 610 610     180.0+
#> 611 611        3.0
#> 612 612     180.0+
#> 613 613     180.0+
#> 614 614       38.0
#> 615 615        4.0
#> 616 616      177.0
#> 617 617       3.0+
#> 618 618       6.0+
#> 619 619       62.0
#> 620 620       6.0+
#> 621 621       4.0+
#> 622 622       20.0
#> 623 623       22.0
#> 624 624       11.0
#> 625 625     180.0+
#> 626 626       46.0
#> 627 627     180.0+
#> 628 628       3.0+
#> 629 629        4.0
#> 630 630      119.0
#> 631 631     180.0+
#> 632 632       1.0+
#> 633 633        8.0
#> 634 634      110.0
#> 635 635       29.0
#> 636 636     180.0+
#> 637 637       46.0
#> 638 638       14.0
#> 639 639        8.0
#> 640 640       25.0
#> 641 641        3.0
#> 642 642       50.0
#> 643 643       11.0
#> 644 644     180.0+
#> 645 645        4.0
#> 646 646       36.0
#> 647 647       89.0
#> 648 648       75.0
#> 649 649        1.0
#> 650 650       33.0
#> 651 651      158.0
#> 652 652       74.0
#> 653 653      168.0
#> 654 654        7.0
#> 655 655     180.0+
#> 656 656     180.0+
#> 657 657       50.0
#> 658 658       1.0+
#> 659 659     179.0+
#> 660 660       8.0+
#> 661 661       76.0
#> 662 662       67.0
#> 663 663       12.0
#> 664 664        8.0
#> 665 665       26.0
#> 666 666       53.0
#> 667 667        0.5
#> 668 668       69.0
#> 669 669        2.0
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
#> <bytecode: 0x560cb2891808>
#> <environment: 0x560cb9e8b018>
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
#> <bytecode: 0x560cae6a3cf0>
#> <environment: 0x560cb9f74b30>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x560cae6a2268>
#> <environment: 0x560cb9f6eec0>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x560cae6a3cf0>
#> <environment: 0x560cb9f6efa0>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x560cae6a2268>
#> <environment: 0x560cb9f6f0f0>
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
#> <bytecode: 0x560cae5f70c0>
#> <environment: 0x560cb9e64918>
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
#>   0.8301971 
```
