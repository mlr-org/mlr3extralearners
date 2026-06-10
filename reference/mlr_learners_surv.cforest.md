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
#> |   [2] V2 <= 72
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V5 <= 7
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V5 > 7 *
#> |   |   [8] V7 > 112
#> |   |   |   [9] V2 <= 54
#> |   |   |   |   [10] V5 <= 115
#> |   |   |   |   |   [11] V5 <= 9
#> |   |   |   |   |   |   [12] V7 <= 150
#> |   |   |   |   |   |   |   [13] V5 <= 0 *
#> |   |   |   |   |   |   |   [14] V5 > 0 *
#> |   |   |   |   |   |   [15] V7 > 150 *
#> |   |   |   |   |   [16] V5 > 9 *
#> |   |   |   |   [17] V5 > 115
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V5 <= 101
#> |   |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   |   [23] V3 > 2
#> |   |   |   |   |   |   [24] V4 <= 0
#> |   |   |   |   |   |   |   [25] V2 <= 64 *
#> |   |   |   |   |   |   |   [26] V2 > 64 *
#> |   |   |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   |   |   [28] V3 <= 6
#> |   |   |   |   |   |   |   |   [29] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [30] V6 > 0 *
#> |   |   |   |   |   |   |   [31] V3 > 6
#> |   |   |   |   |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [33] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [34] V7 > 149 *
#> |   |   |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   |   |   [36] V3 <= 16
#> |   |   |   |   |   |   |   |   |   |   [37] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   [38] V5 > 2 *
#> |   |   |   |   |   |   |   |   |   [39] V3 > 16 *
#> |   |   |   |   [40] V5 > 101
#> |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   [42] V6 > 0 *
#> |   [43] V2 > 72
#> |   |   [44] V7 <= 107
#> |   |   |   [45] V5 <= 8 *
#> |   |   |   [46] V5 > 8 *
#> |   |   [47] V7 > 107
#> |   |   |   [48] V3 <= 13
#> |   |   |   |   [49] V5 <= 177
#> |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   [51] V6 <= 0 *
#> |   |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   |   [53] V3 <= 5 *
#> |   |   |   |   |   |   |   [54] V3 > 5 *
#> |   |   |   |   |   [55] V4 > 0
#> |   |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   |   [58] V2 <= 77 *
#> |   |   |   |   |   |   |   [59] V2 > 77 *
#> |   |   |   |   [60] V5 > 177 *
#> |   |   |   [61] V3 > 13 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V2 <= 69 *
#> |   |   |   [5] V2 > 69 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V2 <= 61 *
#> |   |   |   |   [9] V2 > 61
#> |   |   |   |   |   [10] V7 <= 112
#> |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   |   [13] V7 > 112
#> |   |   |   |   |   |   [14] V7 <= 120 *
#> |   |   |   |   |   |   [15] V7 > 120
#> |   |   |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   |   [18] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [19] V5 > 6
#> |   |   |   |   |   |   |   |   |   [20] V5 <= 12 *
#> |   |   |   |   |   |   |   |   |   [21] V5 > 12 *
#> |   |   |   [22] V4 > 0
#> |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   [24] V2 <= 79
#> |   |   |   |   |   |   [25] V2 <= 62
#> |   |   |   |   |   |   |   [26] V7 <= 120 *
#> |   |   |   |   |   |   |   [27] V7 > 120
#> |   |   |   |   |   |   |   |   [28] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [29] V5 > 3 *
#> |   |   |   |   |   |   [30] V2 > 62
#> |   |   |   |   |   |   |   [31] V5 <= 3 *
#> |   |   |   |   |   |   |   [32] V5 > 3
#> |   |   |   |   |   |   |   |   [33] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [34] V2 > 73 *
#> |   |   |   |   |   [35] V2 > 79 *
#> |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   [37] V3 <= 12
#> |   |   |   |   |   |   [38] V7 <= 112 *
#> |   |   |   |   |   |   [39] V7 > 112
#> |   |   |   |   |   |   |   [40] V5 <= 5
#> |   |   |   |   |   |   |   |   [41] V2 <= 74
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [43] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [44] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [45] V5 > 0 *
#> |   |   |   |   |   |   |   |   [46] V2 > 74
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 4 *
#> |   |   |   |   |   |   |   [49] V5 > 5 *
#> |   |   |   |   |   [50] V3 > 12
#> |   |   |   |   |   |   [51] V3 <= 19 *
#> |   |   |   |   |   |   [52] V3 > 19 *
#> |   [53] V5 > 170
#> |   |   [54] V6 <= 0
#> |   |   |   [55] V2 <= 79 *
#> |   |   |   [56] V2 > 79 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V2 <= 67
#> |   |   |   |   [59] V2 <= 49 *
#> |   |   |   |   [60] V2 > 49 *
#> |   |   |   [61] V2 > 67 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V5 <= 164
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 7
#> |   |   |   |   |   [6] V5 <= 7 *
#> |   |   |   |   |   [7] V5 > 7 *
#> |   |   |   |   [8] V3 > 7 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   [11] V6 > 0
#> |   |   |   |   |   [12] V3 <= 4 *
#> |   |   |   |   |   [13] V3 > 4 *
#> |   |   [14] V5 > 164 *
#> |   [15] V7 > 112
#> |   |   [16] V2 <= 72
#> |   |   |   [17] V2 <= 54
#> |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V2 <= 41 *
#> |   |   |   |   |   [21] V2 > 41
#> |   |   |   |   |   |   [22] V2 <= 50 *
#> |   |   |   |   |   |   [23] V2 > 50 *
#> |   |   |   [24] V2 > 54
#> |   |   |   |   [25] V4 <= 0
#> |   |   |   |   |   [26] V5 <= 150
#> |   |   |   |   |   |   [27] V6 <= 0 *
#> |   |   |   |   |   |   [28] V6 > 0 *
#> |   |   |   |   |   [29] V5 > 150
#> |   |   |   |   |   |   [30] V2 <= 61 *
#> |   |   |   |   |   |   [31] V2 > 61
#> |   |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   |   |   [34] V4 > 0
#> |   |   |   |   |   [35] V7 <= 149
#> |   |   |   |   |   |   [36] V7 <= 132
#> |   |   |   |   |   |   |   [37] V5 <= 4 *
#> |   |   |   |   |   |   |   [38] V5 > 4 *
#> |   |   |   |   |   |   [39] V7 > 132 *
#> |   |   |   |   |   [40] V7 > 149
#> |   |   |   |   |   |   [41] V7 <= 174
#> |   |   |   |   |   |   |   [42] V2 <= 62 *
#> |   |   |   |   |   |   |   [43] V2 > 62
#> |   |   |   |   |   |   |   |   [44] V7 <= 156 *
#> |   |   |   |   |   |   |   |   [45] V7 > 156 *
#> |   |   |   |   |   |   [46] V7 > 174 *
#> |   |   [47] V2 > 72
#> |   |   |   [48] V2 <= 87
#> |   |   |   |   [49] V5 <= 177
#> |   |   |   |   |   [50] V5 <= 11
#> |   |   |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   |   |   [52] V5 <= 4 *
#> |   |   |   |   |   |   |   [53] V5 > 4 *
#> |   |   |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   |   |   |   [57] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [58] V7 > 130 *
#> |   |   |   |   |   [59] V5 > 11
#> |   |   |   |   |   |   [60] V5 <= 119 *
#> |   |   |   |   |   |   [61] V5 > 119 *
#> |   |   |   |   [62] V5 > 177 *
#> |   |   |   [63] V2 > 87 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V7 <= 112 *
#> |   |   |   |   [6] V7 > 112
#> |   |   |   |   |   [7] V7 <= 126 *
#> |   |   |   |   |   [8] V7 > 126
#> |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V3 > 3
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V5 <= 16 *
#> |   |   |   |   |   [14] V5 > 16 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 118
#> |   |   |   |   |   |   [17] V2 <= 61 *
#> |   |   |   |   |   |   [18] V2 > 61
#> |   |   |   |   |   |   |   [19] V3 <= 10
#> |   |   |   |   |   |   |   |   [20] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [21] V3 > 4
#> |   |   |   |   |   |   |   |   |   [22] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   [23] V3 > 6 *
#> |   |   |   |   |   |   |   [24] V3 > 10 *
#> |   |   |   |   |   [25] V5 > 118 *
#> |   |   [26] V4 > 0
#> |   |   |   [27] V5 <= 10
#> |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   [29] V3 <= 10
#> |   |   |   |   |   |   [30] V5 <= 7
#> |   |   |   |   |   |   |   [31] V2 <= 65
#> |   |   |   |   |   |   |   |   [32] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [33] V7 > 138
#> |   |   |   |   |   |   |   |   |   [34] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [35] V3 > 4 *
#> |   |   |   |   |   |   |   [36] V2 > 65
#> |   |   |   |   |   |   |   |   [37] V2 <= 75 *
#> |   |   |   |   |   |   |   |   [38] V2 > 75 *
#> |   |   |   |   |   |   [39] V5 > 7 *
#> |   |   |   |   |   [40] V3 > 10
#> |   |   |   |   |   |   [41] V3 <= 19
#> |   |   |   |   |   |   |   [42] V5 <= 8 *
#> |   |   |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   |   |   |   [44] V3 > 19 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V3 <= 2 *
#> |   |   |   |   |   [47] V3 > 2
#> |   |   |   |   |   |   [48] V2 <= 72
#> |   |   |   |   |   |   |   [49] V7 <= 115 *
#> |   |   |   |   |   |   |   [50] V7 > 115
#> |   |   |   |   |   |   |   |   [51] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [52] V3 > 4
#> |   |   |   |   |   |   |   |   |   [53] V7 <= 127 *
#> |   |   |   |   |   |   |   |   |   [54] V7 > 127
#> |   |   |   |   |   |   |   |   |   |   [55] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [56] V3 > 6
#> |   |   |   |   |   |   |   |   |   |   |   [57] V2 <= 59 *
#> |   |   |   |   |   |   |   |   |   |   |   [58] V2 > 59 *
#> |   |   |   |   |   |   [59] V2 > 72
#> |   |   |   |   |   |   |   [60] V7 <= 130 *
#> |   |   |   |   |   |   |   [61] V7 > 130
#> |   |   |   |   |   |   |   |   [62] V7 <= 167 *
#> |   |   |   |   |   |   |   |   [63] V7 > 167 *
#> |   |   |   [64] V5 > 10 *
#> |   [65] V5 > 169
#> |   |   [66] V6 <= 0 *
#> |   |   [67] V6 > 0
#> |   |   |   [68] V7 <= 134 *
#> |   |   |   [69] V7 > 134
#> |   |   |   |   [70] V7 <= 153 *
#> |   |   |   |   [71] V7 > 153 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V5 <= 177
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V7 <= 123
#> |   |   |   |   |   [11] V7 <= 118
#> |   |   |   |   |   |   [12] V2 <= 57 *
#> |   |   |   |   |   |   [13] V2 > 57 *
#> |   |   |   |   |   [14] V7 > 118 *
#> |   |   |   |   [15] V7 > 123
#> |   |   |   |   |   [16] V7 <= 170
#> |   |   |   |   |   |   [17] V7 <= 162
#> |   |   |   |   |   |   |   [18] V5 <= 1 *
#> |   |   |   |   |   |   |   [19] V5 > 1
#> |   |   |   |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [21] V5 > 2
#> |   |   |   |   |   |   |   |   |   [22] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [23] V3 > 9 *
#> |   |   |   |   |   |   [24] V7 > 162 *
#> |   |   |   |   |   [25] V7 > 170 *
#> |   |   [26] V5 > 177 *
#> |   [27] V6 > 0
#> |   |   [28] V2 <= 71
#> |   |   |   [29] V2 <= 59
#> |   |   |   |   [30] V4 <= 0
#> |   |   |   |   |   [31] V2 <= 46 *
#> |   |   |   |   |   [32] V2 > 46 *
#> |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   [34] V2 <= 54
#> |   |   |   |   |   |   [35] V7 <= 116 *
#> |   |   |   |   |   |   [36] V7 > 116 *
#> |   |   |   |   |   [37] V2 > 54 *
#> |   |   |   [38] V2 > 59
#> |   |   |   |   [39] V5 <= 101
#> |   |   |   |   |   [40] V2 <= 64
#> |   |   |   |   |   |   [41] V3 <= 3 *
#> |   |   |   |   |   |   [42] V3 > 3 *
#> |   |   |   |   |   [43] V2 > 64
#> |   |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   [46] V5 > 101 *
#> |   |   [47] V2 > 71
#> |   |   |   [48] V5 <= 169
#> |   |   |   |   [49] V3 <= 1 *
#> |   |   |   |   [50] V3 > 1
#> |   |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   |   [52] V7 <= 112 *
#> |   |   |   |   |   |   [53] V7 > 112
#> |   |   |   |   |   |   |   [54] V3 <= 6 *
#> |   |   |   |   |   |   |   [55] V3 > 6 *
#> |   |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   |   |   [58] V5 > 0
#> |   |   |   |   |   |   |   [59] V7 <= 147 *
#> |   |   |   |   |   |   |   [60] V7 > 147 *
#> |   |   |   [61] V5 > 169 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V2 <= 56
#> |   |   [3] V5 <= 7
#> |   |   |   [4] V3 <= 2 *
#> |   |   |   [5] V3 > 2
#> |   |   |   |   [6] V5 <= 0 *
#> |   |   |   |   [7] V5 > 0
#> |   |   |   |   |   [8] V5 <= 3 *
#> |   |   |   |   |   [9] V5 > 3 *
#> |   |   [10] V5 > 7
#> |   |   |   [11] V5 <= 115 *
#> |   |   |   [12] V5 > 115
#> |   |   |   |   [13] V3 <= 5
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   [16] V3 > 5 *
#> |   [17] V2 > 56
#> |   |   [18] V6 <= 0
#> |   |   |   [19] V2 <= 87
#> |   |   |   |   [20] V5 <= 169
#> |   |   |   |   |   [21] V4 <= 0
#> |   |   |   |   |   |   [22] V5 <= 13
#> |   |   |   |   |   |   |   [23] V3 <= 6 *
#> |   |   |   |   |   |   |   [24] V3 > 6 *
#> |   |   |   |   |   |   [25] V5 > 13 *
#> |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   [27] V3 <= 16
#> |   |   |   |   |   |   |   [28] V5 <= 8
#> |   |   |   |   |   |   |   |   [29] V3 <= 8
#> |   |   |   |   |   |   |   |   |   [30] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   [31] V7 <= 151 *
#> |   |   |   |   |   |   |   |   |   |   [32] V7 > 151 *
#> |   |   |   |   |   |   |   |   |   [33] V5 > 3 *
#> |   |   |   |   |   |   |   |   [34] V3 > 8 *
#> |   |   |   |   |   |   |   [35] V5 > 8 *
#> |   |   |   |   |   |   [36] V3 > 16 *
#> |   |   |   |   [37] V5 > 169 *
#> |   |   |   [38] V2 > 87 *
#> |   |   [39] V6 > 0
#> |   |   |   [40] V5 <= 169
#> |   |   |   |   [41] V4 <= 0
#> |   |   |   |   |   [42] V3 <= 7
#> |   |   |   |   |   |   [43] V3 <= 2 *
#> |   |   |   |   |   |   [44] V3 > 2
#> |   |   |   |   |   |   |   [45] V2 <= 72 *
#> |   |   |   |   |   |   |   [46] V2 > 72
#> |   |   |   |   |   |   |   |   [47] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [48] V5 > 6 *
#> |   |   |   |   |   [49] V3 > 7 *
#> |   |   |   |   [50] V4 > 0
#> |   |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   |   [52] V3 > 3
#> |   |   |   |   |   |   [53] V7 <= 149
#> |   |   |   |   |   |   |   [54] V3 <= 12
#> |   |   |   |   |   |   |   |   [55] V7 <= 125 *
#> |   |   |   |   |   |   |   |   [56] V7 > 125 *
#> |   |   |   |   |   |   |   [57] V3 > 12 *
#> |   |   |   |   |   |   [58] V7 > 149
#> |   |   |   |   |   |   |   [59] V7 <= 160 *
#> |   |   |   |   |   |   |   [60] V7 > 160 *
#> |   |   |   [61] V5 > 169 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V5 <= 114
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V5 > 114 *
#> |   |   [8] V7 > 112
#> |   |   |   [9] V5 <= 169
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V5 <= 13
#> |   |   |   |   |   |   [12] V2 <= 62 *
#> |   |   |   |   |   |   [13] V2 > 62 *
#> |   |   |   |   |   [14] V5 > 13 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 4 *
#> |   |   |   |   |   [17] V5 > 4
#> |   |   |   |   |   |   [18] V5 <= 11 *
#> |   |   |   |   |   |   [19] V5 > 11
#> |   |   |   |   |   |   |   [20] V5 <= 99
#> |   |   |   |   |   |   |   |   [21] V5 <= 18 *
#> |   |   |   |   |   |   |   |   [22] V5 > 18 *
#> |   |   |   |   |   |   |   [23] V5 > 99 *
#> |   |   |   [24] V5 > 169
#> |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   [26] V3 <= 9 *
#> |   |   |   |   |   [27] V3 > 9 *
#> |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   [29] V7 <= 153 *
#> |   |   |   |   |   [30] V7 > 153 *
#> |   [31] V4 > 0
#> |   |   [32] V2 <= 85
#> |   |   |   [33] V6 <= 0
#> |   |   |   |   [34] V7 <= 149
#> |   |   |   |   |   [35] V2 <= 55 *
#> |   |   |   |   |   [36] V2 > 55
#> |   |   |   |   |   |   [37] V2 <= 70
#> |   |   |   |   |   |   |   [38] V7 <= 123 *
#> |   |   |   |   |   |   |   [39] V7 > 123 *
#> |   |   |   |   |   |   [40] V2 > 70 *
#> |   |   |   |   [41] V7 > 149
#> |   |   |   |   |   [42] V3 <= 2 *
#> |   |   |   |   |   [43] V3 > 2
#> |   |   |   |   |   |   [44] V2 <= 63
#> |   |   |   |   |   |   |   [45] V5 <= 5 *
#> |   |   |   |   |   |   |   [46] V5 > 5 *
#> |   |   |   |   |   |   [47] V2 > 63 *
#> |   |   |   [48] V6 > 0
#> |   |   |   |   [49] V2 <= 72
#> |   |   |   |   |   [50] V2 <= 47 *
#> |   |   |   |   |   [51] V2 > 47
#> |   |   |   |   |   |   [52] V7 <= 110 *
#> |   |   |   |   |   |   [53] V7 > 110
#> |   |   |   |   |   |   |   [54] V7 <= 169
#> |   |   |   |   |   |   |   |   [55] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [56] V7 > 126
#> |   |   |   |   |   |   |   |   |   [57] V2 <= 67
#> |   |   |   |   |   |   |   |   |   |   [58] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   |   [59] V3 > 10 *
#> |   |   |   |   |   |   |   |   |   [60] V2 > 67 *
#> |   |   |   |   |   |   |   [61] V7 > 169 *
#> |   |   |   |   [62] V2 > 72
#> |   |   |   |   |   [63] V5 <= 0 *
#> |   |   |   |   |   [64] V5 > 0
#> |   |   |   |   |   |   [65] V2 <= 76 *
#> |   |   |   |   |   |   [66] V2 > 76 *
#> |   |   [67] V2 > 85 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V7 <= 110
#> |   |   [3] V3 <= 9
#> |   |   |   [4] V5 <= 50
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V4 > 0 *
#> |   |   |   [9] V5 > 50 *
#> |   |   [10] V3 > 9 *
#> |   [11] V7 > 110
#> |   |   [12] V4 <= 0
#> |   |   |   [13] V2 <= 85
#> |   |   |   |   [14] V3 <= 1 *
#> |   |   |   |   [15] V3 > 1
#> |   |   |   |   |   [16] V5 <= 169
#> |   |   |   |   |   |   [17] V5 <= 11
#> |   |   |   |   |   |   |   [18] V2 <= 67 *
#> |   |   |   |   |   |   |   [19] V2 > 67
#> |   |   |   |   |   |   |   |   [20] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [21] V5 > 6 *
#> |   |   |   |   |   |   [22] V5 > 11
#> |   |   |   |   |   |   |   [23] V2 <= 64 *
#> |   |   |   |   |   |   |   [24] V2 > 64 *
#> |   |   |   |   |   [25] V5 > 169
#> |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   |   [28] V2 <= 67
#> |   |   |   |   |   |   |   |   [29] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [30] V2 > 57 *
#> |   |   |   |   |   |   |   [31] V2 > 67 *
#> |   |   |   [32] V2 > 85 *
#> |   |   [33] V4 > 0
#> |   |   |   [34] V2 <= 74
#> |   |   |   |   [35] V5 <= 11
#> |   |   |   |   |   [36] V2 <= 54
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V7 <= 140 *
#> |   |   |   |   |   |   |   [40] V7 > 140 *
#> |   |   |   |   |   [41] V2 > 54
#> |   |   |   |   |   |   [42] V3 <= 18
#> |   |   |   |   |   |   |   [43] V3 <= 2 *
#> |   |   |   |   |   |   |   [44] V3 > 2
#> |   |   |   |   |   |   |   |   [45] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 6
#> |   |   |   |   |   |   |   |   |   |   [47] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   |   [48] V7 > 125
#> |   |   |   |   |   |   |   |   |   |   |   [49] V7 <= 149
#> |   |   |   |   |   |   |   |   |   |   |   |   [50] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [51] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   |   |   [52] V7 > 149
#> |   |   |   |   |   |   |   |   |   |   |   |   [53] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [54] V2 > 65 *
#> |   |   |   |   |   |   |   |   |   [55] V5 > 6 *
#> |   |   |   |   |   |   |   |   [56] V5 > 9 *
#> |   |   |   |   |   |   [57] V3 > 18 *
#> |   |   |   |   [58] V5 > 11 *
#> |   |   |   [59] V2 > 74
#> |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   [61] V6 > 0
#> |   |   |   |   |   [62] V7 <= 143 *
#> |   |   |   |   |   [63] V7 > 143 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V2 <= 78
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16
#> |   |   |   |   |   |   [7] V7 <= 130 *
#> |   |   |   |   |   |   [8] V7 > 130 *
#> |   |   |   |   |   [9] V5 > 16 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V3 <= 4 *
#> |   |   |   |   |   [12] V3 > 4
#> |   |   |   |   |   |   [13] V2 <= 61 *
#> |   |   |   |   |   |   [14] V2 > 61 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V2 <= 54
#> |   |   |   |   |   [17] V5 <= 6
#> |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   [20] V5 > 6 *
#> |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   [22] V7 <= 149
#> |   |   |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   |   |   [24] V3 <= 5 *
#> |   |   |   |   |   |   |   [25] V3 > 5
#> |   |   |   |   |   |   |   |   [26] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [27] V5 > 9 *
#> |   |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   |   [29] V5 <= 0
#> |   |   |   |   |   |   |   |   [30] V2 <= 64 *
#> |   |   |   |   |   |   |   |   [31] V2 > 64 *
#> |   |   |   |   |   |   |   [32] V5 > 0
#> |   |   |   |   |   |   |   |   [33] V7 <= 118 *
#> |   |   |   |   |   |   |   |   [34] V7 > 118
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 10 *
#> |   |   |   |   |   [37] V7 > 149
#> |   |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   |   [39] V3 <= 10 *
#> |   |   |   |   |   |   |   [40] V3 > 10 *
#> |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   [42] V7 <= 170
#> |   |   |   |   |   |   |   |   [43] V3 <= 18 *
#> |   |   |   |   |   |   |   |   [44] V3 > 18 *
#> |   |   |   |   |   |   |   [45] V7 > 170 *
#> |   |   [46] V2 > 78
#> |   |   |   [47] V2 <= 86
#> |   |   |   |   [48] V4 <= 0
#> |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   [54] V2 > 86
#> |   |   |   |   [55] V7 <= 137 *
#> |   |   |   |   [56] V7 > 137 *
#> |   [57] V5 > 170
#> |   |   [58] V2 <= 58
#> |   |   |   [59] V2 <= 49 *
#> |   |   |   [60] V2 > 49 *
#> |   |   [61] V2 > 58 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V5 <= 115
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0
#> |   |   |   |   [6] V2 <= 54
#> |   |   |   |   |   [7] V6 <= 0
#> |   |   |   |   |   |   [8] V7 <= 129 *
#> |   |   |   |   |   |   [9] V7 > 129 *
#> |   |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   |   [11] V5 <= 0 *
#> |   |   |   |   |   |   [12] V5 > 0 *
#> |   |   |   |   [13] V2 > 54
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V2 <= 56 *
#> |   |   |   |   |   |   [17] V2 > 56 *
#> |   |   [18] V5 > 115
#> |   |   |   [19] V3 <= 3 *
#> |   |   |   [20] V3 > 3 *
#> |   [21] V2 > 60
#> |   |   [22] V4 <= 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V5 <= 170
#> |   |   |   |   |   [25] V7 <= 112 *
#> |   |   |   |   |   [26] V7 > 112
#> |   |   |   |   |   |   [27] V2 <= 67 *
#> |   |   |   |   |   |   [28] V2 > 67
#> |   |   |   |   |   |   |   [29] V7 <= 131 *
#> |   |   |   |   |   |   |   [30] V7 > 131 *
#> |   |   |   |   [31] V5 > 170 *
#> |   |   |   [32] V6 > 0
#> |   |   |   |   [33] V5 <= 169
#> |   |   |   |   |   [34] V3 <= 4
#> |   |   |   |   |   |   [35] V7 <= 118 *
#> |   |   |   |   |   |   [36] V7 > 118 *
#> |   |   |   |   |   [37] V3 > 4
#> |   |   |   |   |   |   [38] V2 <= 79
#> |   |   |   |   |   |   |   [39] V7 <= 140 *
#> |   |   |   |   |   |   |   [40] V7 > 140 *
#> |   |   |   |   |   |   [41] V2 > 79 *
#> |   |   |   |   [42] V5 > 169
#> |   |   |   |   |   [43] V2 <= 67 *
#> |   |   |   |   |   [44] V2 > 67 *
#> |   |   [45] V4 > 0
#> |   |   |   [46] V2 <= 85
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V2 <= 66 *
#> |   |   |   |   |   [49] V2 > 66
#> |   |   |   |   |   |   [50] V7 <= 128 *
#> |   |   |   |   |   |   [51] V7 > 128
#> |   |   |   |   |   |   |   [52] V7 <= 142 *
#> |   |   |   |   |   |   |   [53] V7 > 142
#> |   |   |   |   |   |   |   |   [54] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [55] V7 > 160 *
#> |   |   |   |   [56] V6 > 0
#> |   |   |   |   |   [57] V5 <= 8
#> |   |   |   |   |   |   [58] V2 <= 74
#> |   |   |   |   |   |   |   [59] V5 <= 1
#> |   |   |   |   |   |   |   |   [60] V7 <= 160 *
#> |   |   |   |   |   |   |   |   [61] V7 > 160 *
#> |   |   |   |   |   |   |   [62] V5 > 1 *
#> |   |   |   |   |   |   [63] V2 > 74
#> |   |   |   |   |   |   |   [64] V2 <= 77 *
#> |   |   |   |   |   |   |   [65] V2 > 77 *
#> |   |   |   |   |   [66] V5 > 8 *
#> |   |   |   [67] V2 > 85 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V7 <= 137
#> |   |   |   [4] V2 <= 60
#> |   |   |   |   [5] V2 <= 54
#> |   |   |   |   |   [6] V3 <= 7 *
#> |   |   |   |   |   [7] V3 > 7 *
#> |   |   |   |   [8] V2 > 54 *
#> |   |   |   [9] V2 > 60
#> |   |   |   |   [10] V2 <= 86
#> |   |   |   |   |   [11] V3 <= 7
#> |   |   |   |   |   |   [12] V4 <= 0
#> |   |   |   |   |   |   |   [13] V2 <= 82
#> |   |   |   |   |   |   |   |   [14] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [15] V5 > 3 *
#> |   |   |   |   |   |   |   [16] V2 > 82 *
#> |   |   |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0 *
#> |   |   |   |   |   [20] V3 > 7
#> |   |   |   |   |   |   [21] V5 <= 12
#> |   |   |   |   |   |   |   [22] V3 <= 12 *
#> |   |   |   |   |   |   |   [23] V3 > 12 *
#> |   |   |   |   |   |   [24] V5 > 12 *
#> |   |   |   |   [25] V2 > 86 *
#> |   |   [26] V7 > 137
#> |   |   |   [27] V6 <= 0
#> |   |   |   |   [28] V5 <= 11
#> |   |   |   |   |   [29] V2 <= 62
#> |   |   |   |   |   |   [30] V4 <= 0 *
#> |   |   |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   |   |   [32] V7 <= 152 *
#> |   |   |   |   |   |   |   [33] V7 > 152 *
#> |   |   |   |   |   [34] V2 > 62
#> |   |   |   |   |   |   [35] V2 <= 72 *
#> |   |   |   |   |   |   [36] V2 > 72 *
#> |   |   |   |   [37] V5 > 11 *
#> |   |   |   [38] V6 > 0
#> |   |   |   |   [39] V2 <= 78
#> |   |   |   |   |   [40] V2 <= 59
#> |   |   |   |   |   |   [41] V3 <= 4 *
#> |   |   |   |   |   |   [42] V3 > 4 *
#> |   |   |   |   |   [43] V2 > 59
#> |   |   |   |   |   |   [44] V5 <= 11
#> |   |   |   |   |   |   |   [45] V2 <= 73
#> |   |   |   |   |   |   |   |   [46] V7 <= 162
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 7 *
#> |   |   |   |   |   |   |   |   [49] V7 > 162 *
#> |   |   |   |   |   |   |   [50] V2 > 73 *
#> |   |   |   |   |   |   [51] V5 > 11 *
#> |   |   |   |   [52] V2 > 78
#> |   |   |   |   |   [53] V5 <= 2 *
#> |   |   |   |   |   [54] V5 > 2 *
#> |   [55] V5 > 169
#> |   |   [56] V6 <= 0 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V3 <= 10
#> |   |   |   |   [59] V2 <= 52 *
#> |   |   |   |   [60] V2 > 52 *
#> |   |   |   [61] V3 > 10 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V7 <= 136
#> |   |   |   |   |   [6] V3 <= 6
#> |   |   |   |   |   |   [7] V5 <= 5 *
#> |   |   |   |   |   |   [8] V5 > 5 *
#> |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V7 > 136
#> |   |   |   |   |   [11] V3 <= 2 *
#> |   |   |   |   |   [12] V3 > 2
#> |   |   |   |   |   |   [13] V7 <= 152 *
#> |   |   |   |   |   |   [14] V7 > 152 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   [17] V7 <= 142
#> |   |   |   |   |   |   [18] V2 <= 57 *
#> |   |   |   |   |   |   [19] V2 > 57
#> |   |   |   |   |   |   |   [20] V5 <= 3 *
#> |   |   |   |   |   |   |   [21] V5 > 3 *
#> |   |   |   |   |   [22] V7 > 142
#> |   |   |   |   |   |   [23] V2 <= 63
#> |   |   |   |   |   |   |   [24] V7 <= 152 *
#> |   |   |   |   |   |   |   [25] V7 > 152 *
#> |   |   |   |   |   |   [26] V2 > 63 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V2 <= 54
#> |   |   |   |   |   |   [29] V5 <= 0 *
#> |   |   |   |   |   |   [30] V5 > 0 *
#> |   |   |   |   |   [31] V2 > 54
#> |   |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   |   [34] V2 <= 72
#> |   |   |   |   |   |   |   |   [35] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 60
#> |   |   |   |   |   |   |   |   |   |   [38] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   |   [39] V2 > 66 *
#> |   |   |   |   |   |   |   |   [40] V3 > 13 *
#> |   |   |   |   |   |   |   [41] V2 > 72 *
#> |   |   [42] V5 > 170
#> |   |   |   [43] V6 <= 0 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V3 <= 7
#> |   |   |   |   |   [46] V2 <= 52 *
#> |   |   |   |   |   [47] V2 > 52 *
#> |   |   |   |   [48] V3 > 7 *
#> |   [49] V2 > 74
#> |   |   [50] V7 <= 104
#> |   |   |   [51] V7 <= 85 *
#> |   |   |   [52] V7 > 85 *
#> |   |   [53] V7 > 104
#> |   |   |   [54] V5 <= 177
#> |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   [56] V5 <= 125
#> |   |   |   |   |   |   [57] V7 <= 118 *
#> |   |   |   |   |   |   [58] V7 > 118
#> |   |   |   |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   |   |   |   [60] V6 > 0
#> |   |   |   |   |   |   |   |   [61] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [62] V3 > 7 *
#> |   |   |   |   |   [63] V5 > 125 *
#> |   |   |   |   [64] V4 > 0
#> |   |   |   |   |   [65] V6 <= 0 *
#> |   |   |   |   |   [66] V6 > 0
#> |   |   |   |   |   |   [67] V7 <= 150
#> |   |   |   |   |   |   |   [68] V5 <= 3 *
#> |   |   |   |   |   |   |   [69] V5 > 3 *
#> |   |   |   |   |   |   [70] V7 > 150 *
#> |   |   |   [71] V5 > 177 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V6 <= 0 *
#> |   |   |   [5] V6 > 0 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V2 <= 70
#> |   |   |   |   |   |   [10] V5 <= 13 *
#> |   |   |   |   |   |   [11] V5 > 13 *
#> |   |   |   |   |   [12] V2 > 70
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V5 <= 90
#> |   |   |   |   |   |   [17] V3 <= 10
#> |   |   |   |   |   |   |   [18] V3 <= 6
#> |   |   |   |   |   |   |   |   [19] V2 <= 80 *
#> |   |   |   |   |   |   |   |   [20] V2 > 80 *
#> |   |   |   |   |   |   |   [21] V3 > 6 *
#> |   |   |   |   |   |   [22] V3 > 10 *
#> |   |   |   |   |   [23] V5 > 90 *
#> |   |   |   [24] V4 > 0
#> |   |   |   |   [25] V2 <= 72
#> |   |   |   |   |   [26] V7 <= 102 *
#> |   |   |   |   |   [27] V7 > 102
#> |   |   |   |   |   |   [28] V3 <= 25
#> |   |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   |   |   |   [31] V2 <= 62
#> |   |   |   |   |   |   |   |   |   [32] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   [33] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   |   [34] V7 <= 121 *
#> |   |   |   |   |   |   |   |   |   |   |   [35] V7 > 121 *
#> |   |   |   |   |   |   |   |   |   |   [36] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   [37] V3 > 8
#> |   |   |   |   |   |   |   |   |   |   [38] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [39] V3 > 12 *
#> |   |   |   |   |   |   |   |   [40] V2 > 62
#> |   |   |   |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [42] V2 <= 68 *
#> |   |   |   |   |   |   |   |   |   |   [43] V2 > 68 *
#> |   |   |   |   |   |   |   |   |   [44] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [46] V5 > 0 *
#> |   |   |   |   |   |   [47] V3 > 25 *
#> |   |   |   |   [48] V2 > 72
#> |   |   |   |   |   [49] V2 <= 84
#> |   |   |   |   |   |   [50] V3 <= 19
#> |   |   |   |   |   |   |   [51] V2 <= 77
#> |   |   |   |   |   |   |   |   [52] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [53] V3 > 11 *
#> |   |   |   |   |   |   |   [54] V2 > 77
#> |   |   |   |   |   |   |   |   [55] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [56] V5 > 0
#> |   |   |   |   |   |   |   |   |   [57] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   [58] V5 > 5 *
#> |   |   |   |   |   |   [59] V3 > 19 *
#> |   |   |   |   |   [60] V2 > 84 *
#> |   [61] V5 > 177 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 59
#> |   |   |   |   [5] V2 <= 48 *
#> |   |   |   |   [6] V2 > 48
#> |   |   |   |   |   [7] V5 <= 45 *
#> |   |   |   |   |   [8] V5 > 45
#> |   |   |   |   |   |   [9] V7 <= 140 *
#> |   |   |   |   |   |   [10] V7 > 140 *
#> |   |   |   [11] V2 > 59
#> |   |   |   |   [12] V5 <= 170
#> |   |   |   |   |   [13] V3 <= 10
#> |   |   |   |   |   |   [14] V3 <= 2 *
#> |   |   |   |   |   |   [15] V3 > 2
#> |   |   |   |   |   |   |   [16] V2 <= 61 *
#> |   |   |   |   |   |   |   [17] V2 > 61 *
#> |   |   |   |   |   [18] V3 > 10 *
#> |   |   |   |   [19] V5 > 170
#> |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   [21] V6 > 0 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V6 <= 0
#> |   |   |   |   [24] V2 <= 62
#> |   |   |   |   |   [25] V5 <= 7
#> |   |   |   |   |   |   [26] V3 <= 4 *
#> |   |   |   |   |   |   [27] V3 > 4 *
#> |   |   |   |   |   [28] V5 > 7 *
#> |   |   |   |   [29] V2 > 62
#> |   |   |   |   |   [30] V7 <= 149
#> |   |   |   |   |   |   [31] V7 <= 120 *
#> |   |   |   |   |   |   [32] V7 > 120 *
#> |   |   |   |   |   [33] V7 > 149 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 54
#> |   |   |   |   |   [36] V7 <= 116 *
#> |   |   |   |   |   [37] V7 > 116 *
#> |   |   |   |   [38] V2 > 54
#> |   |   |   |   |   [39] V3 <= 2 *
#> |   |   |   |   |   [40] V3 > 2
#> |   |   |   |   |   |   [41] V2 <= 57 *
#> |   |   |   |   |   |   [42] V2 > 57
#> |   |   |   |   |   |   |   [43] V3 <= 6 *
#> |   |   |   |   |   |   |   [44] V3 > 6
#> |   |   |   |   |   |   |   |   [45] V3 <= 11
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [47] V5 > 2 *
#> |   |   |   |   |   |   |   |   [48] V3 > 11 *
#> |   [49] V2 > 74
#> |   |   [50] V6 <= 0
#> |   |   |   [51] V4 <= 0
#> |   |   |   |   [52] V2 <= 85
#> |   |   |   |   |   [53] V3 <= 6 *
#> |   |   |   |   |   [54] V3 > 6 *
#> |   |   |   |   [55] V2 > 85 *
#> |   |   |   [56] V4 > 0
#> |   |   |   |   [57] V3 <= 6 *
#> |   |   |   |   [58] V3 > 6 *
#> |   |   [59] V6 > 0
#> |   |   |   [60] V7 <= 168
#> |   |   |   |   [61] V5 <= 128
#> |   |   |   |   |   [62] V5 <= 14
#> |   |   |   |   |   |   [63] V4 <= 0
#> |   |   |   |   |   |   |   [64] V3 <= 6
#> |   |   |   |   |   |   |   |   [65] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [66] V5 > 2 *
#> |   |   |   |   |   |   |   [67] V3 > 6 *
#> |   |   |   |   |   |   [68] V4 > 0
#> |   |   |   |   |   |   |   [69] V5 <= 6
#> |   |   |   |   |   |   |   |   [70] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [71] V3 > 4 *
#> |   |   |   |   |   |   |   [72] V5 > 6 *
#> |   |   |   |   |   [73] V5 > 14 *
#> |   |   |   |   [74] V5 > 128 *
#> |   |   |   [75] V7 > 168 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 36
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 40 *
#> |   |   |   |   |   [8] V2 > 40
#> |   |   |   |   |   |   [9] V3 <= 10
#> |   |   |   |   |   |   |   [10] V7 <= 119 *
#> |   |   |   |   |   |   |   [11] V7 > 119 *
#> |   |   |   |   |   |   [12] V3 > 10 *
#> |   |   |   [13] V5 > 36
#> |   |   |   |   [14] V3 <= 4 *
#> |   |   |   |   [15] V3 > 4 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 161
#> |   |   |   |   [18] V3 <= 2
#> |   |   |   |   |   [19] V2 <= 62 *
#> |   |   |   |   |   [20] V2 > 62
#> |   |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   [23] V3 > 2
#> |   |   |   |   |   [24] V4 <= 0
#> |   |   |   |   |   |   [25] V5 <= 15
#> |   |   |   |   |   |   |   [26] V2 <= 73
#> |   |   |   |   |   |   |   |   [27] V2 <= 62 *
#> |   |   |   |   |   |   |   |   [28] V2 > 62 *
#> |   |   |   |   |   |   |   [29] V2 > 73 *
#> |   |   |   |   |   |   [30] V5 > 15
#> |   |   |   |   |   |   |   [31] V5 <= 77 *
#> |   |   |   |   |   |   |   [32] V5 > 77 *
#> |   |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V7 <= 127 *
#> |   |   |   |   |   |   |   [36] V7 > 127
#> |   |   |   |   |   |   |   |   [37] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [38] V5 > 6 *
#> |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   [40] V7 <= 146
#> |   |   |   |   |   |   |   |   [41] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [42] V3 <= 9
#> |   |   |   |   |   |   |   |   |   |   [43] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [44] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 9 *
#> |   |   |   |   |   |   |   |   [46] V3 > 13 *
#> |   |   |   |   |   |   |   [47] V7 > 146
#> |   |   |   |   |   |   |   |   [48] V3 <= 18
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 70 *
#> |   |   |   |   |   |   |   |   |   [50] V2 > 70 *
#> |   |   |   |   |   |   |   |   [51] V3 > 18 *
#> |   |   |   [52] V5 > 161
#> |   |   |   |   [53] V2 <= 58 *
#> |   |   |   |   [54] V2 > 58
#> |   |   |   |   |   [55] V2 <= 75 *
#> |   |   |   |   |   [56] V2 > 75 *
#> |   [57] V2 > 78
#> |   |   [58] V5 <= 169
#> |   |   |   [59] V4 <= 0
#> |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   [61] V6 > 0
#> |   |   |   |   |   [62] V5 <= 5 *
#> |   |   |   |   |   [63] V5 > 5
#> |   |   |   |   |   |   [64] V5 <= 29 *
#> |   |   |   |   |   |   [65] V5 > 29 *
#> |   |   |   [66] V4 > 0
#> |   |   |   |   [67] V2 <= 85
#> |   |   |   |   |   [68] V5 <= 1 *
#> |   |   |   |   |   [69] V5 > 1 *
#> |   |   |   |   [70] V2 > 85 *
#> |   |   [71] V5 > 169 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V3 <= 1
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0 *
#> |   |   |   [7] V3 > 1
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V2 <= 62 *
#> |   |   |   |   |   [10] V2 > 62
#> |   |   |   |   |   |   [11] V5 <= 15 *
#> |   |   |   |   |   |   [12] V5 > 15 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V7 <= 110
#> |   |   |   |   |   |   [15] V7 <= 102 *
#> |   |   |   |   |   |   [16] V7 > 102 *
#> |   |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   |   [18] V3 <= 4
#> |   |   |   |   |   |   |   [19] V5 <= 1
#> |   |   |   |   |   |   |   |   [20] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [21] V3 > 2
#> |   |   |   |   |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   |   |   |   |   [24] V5 > 1 *
#> |   |   |   |   |   |   [25] V3 > 4
#> |   |   |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   |   |   [27] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [28] V3 > 12 *
#> |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   [30] V3 <= 18
#> |   |   |   |   |   |   |   |   |   [31] V3 <= 11
#> |   |   |   |   |   |   |   |   |   |   [32] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   |   [33] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   |   |   [34] V7 > 135 *
#> |   |   |   |   |   |   |   |   |   |   [35] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 11 *
#> |   |   |   |   |   |   |   |   [37] V3 > 18 *
#> |   |   [38] V5 > 170
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V3 <= 9
#> |   |   |   |   |   [42] V2 <= 50 *
#> |   |   |   |   |   [43] V2 > 50 *
#> |   |   |   |   [44] V3 > 9 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 177
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V7 <= 112
#> |   |   |   |   |   [49] V5 <= 14 *
#> |   |   |   |   |   [50] V5 > 14 *
#> |   |   |   |   [51] V7 > 112
#> |   |   |   |   |   [52] V7 <= 131 *
#> |   |   |   |   |   [53] V7 > 131
#> |   |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   |   [56] V7 <= 157 *
#> |   |   |   |   |   |   |   [57] V7 > 157 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V3 <= 13
#> |   |   |   |   |   [60] V7 <= 147
#> |   |   |   |   |   |   [61] V2 <= 80 *
#> |   |   |   |   |   |   [62] V2 > 80 *
#> |   |   |   |   |   [63] V7 > 147 *
#> |   |   |   |   [64] V3 > 13 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 87
#> |   |   |   |   [5] V5 <= 170
#> |   |   |   |   |   [6] V7 <= 112 *
#> |   |   |   |   |   [7] V7 > 112
#> |   |   |   |   |   |   [8] V5 <= 16
#> |   |   |   |   |   |   |   [9] V3 <= 4 *
#> |   |   |   |   |   |   |   [10] V3 > 4 *
#> |   |   |   |   |   |   [11] V5 > 16 *
#> |   |   |   |   [12] V5 > 170 *
#> |   |   |   [13] V2 > 87 *
#> |   |   [14] V6 > 0
#> |   |   |   [15] V2 <= 56 *
#> |   |   |   [16] V2 > 56
#> |   |   |   |   [17] V5 <= 169
#> |   |   |   |   |   [18] V3 <= 6
#> |   |   |   |   |   |   [19] V5 <= 2 *
#> |   |   |   |   |   |   [20] V5 > 2
#> |   |   |   |   |   |   |   [21] V5 <= 5 *
#> |   |   |   |   |   |   |   [22] V5 > 5
#> |   |   |   |   |   |   |   |   [23] V7 <= 114 *
#> |   |   |   |   |   |   |   |   [24] V7 > 114 *
#> |   |   |   |   |   [25] V3 > 6
#> |   |   |   |   |   |   [26] V5 <= 11 *
#> |   |   |   |   |   |   [27] V5 > 11 *
#> |   |   |   |   [28] V5 > 169
#> |   |   |   |   |   [29] V3 <= 10 *
#> |   |   |   |   |   [30] V3 > 10 *
#> |   [31] V4 > 0
#> |   |   [32] V3 <= 26
#> |   |   |   [33] V2 <= 55
#> |   |   |   |   [34] V5 <= 4
#> |   |   |   |   |   [35] V3 <= 2 *
#> |   |   |   |   |   [36] V3 > 2
#> |   |   |   |   |   |   [37] V2 <= 42 *
#> |   |   |   |   |   |   [38] V2 > 42
#> |   |   |   |   |   |   |   [39] V2 <= 53 *
#> |   |   |   |   |   |   |   [40] V2 > 53 *
#> |   |   |   |   [41] V5 > 4 *
#> |   |   |   [42] V2 > 55
#> |   |   |   |   [43] V7 <= 124
#> |   |   |   |   |   [44] V2 <= 77
#> |   |   |   |   |   |   [45] V3 <= 12
#> |   |   |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   |   |   |   [48] V3 > 12 *
#> |   |   |   |   |   [49] V2 > 77 *
#> |   |   |   |   [50] V7 > 124
#> |   |   |   |   |   [51] V2 <= 81
#> |   |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   |   [53] V7 <= 170
#> |   |   |   |   |   |   |   |   [54] V7 <= 151 *
#> |   |   |   |   |   |   |   |   [55] V7 > 151 *
#> |   |   |   |   |   |   |   [56] V7 > 170 *
#> |   |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   |   [58] V3 <= 13
#> |   |   |   |   |   |   |   |   [59] V2 <= 73
#> |   |   |   |   |   |   |   |   |   [60] V5 <= 3
#> |   |   |   |   |   |   |   |   |   |   [61] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   |   [62] V2 > 69 *
#> |   |   |   |   |   |   |   |   |   [63] V5 > 3 *
#> |   |   |   |   |   |   |   |   [64] V2 > 73 *
#> |   |   |   |   |   |   |   [65] V3 > 13 *
#> |   |   |   |   |   [66] V2 > 81 *
#> |   |   [67] V3 > 26 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 115
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V2 <= 44 *
#> |   |   |   |   |   |   [10] V2 > 44 *
#> |   |   |   [11] V5 > 115
#> |   |   |   |   [12] V2 <= 49 *
#> |   |   |   |   [13] V2 > 49 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V5 <= 152
#> |   |   |   |   [16] V3 <= 2
#> |   |   |   |   |   [17] V3 <= 1 *
#> |   |   |   |   |   [18] V3 > 1 *
#> |   |   |   |   [19] V3 > 2
#> |   |   |   |   |   [20] V4 <= 0
#> |   |   |   |   |   |   [21] V2 <= 60 *
#> |   |   |   |   |   |   [22] V2 > 60
#> |   |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   |   [26] V5 <= 1
#> |   |   |   |   |   |   |   [27] V3 <= 7
#> |   |   |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   |   |   |   [30] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 4 *
#> |   |   |   |   |   |   |   [32] V3 > 7 *
#> |   |   |   |   |   |   [33] V5 > 1
#> |   |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   |   [35] V7 <= 124 *
#> |   |   |   |   |   |   |   |   [36] V7 > 124 *
#> |   |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   |   [38] V7 <= 141 *
#> |   |   |   |   |   |   |   |   [39] V7 > 141 *
#> |   |   |   [40] V5 > 152
#> |   |   |   |   [41] V2 <= 58 *
#> |   |   |   |   [42] V2 > 58
#> |   |   |   |   |   [43] V7 <= 130 *
#> |   |   |   |   |   [44] V7 > 130 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 177
#> |   |   |   [47] V4 <= 0
#> |   |   |   |   [48] V5 <= 2 *
#> |   |   |   |   [49] V5 > 2
#> |   |   |   |   |   [50] V5 <= 11
#> |   |   |   |   |   |   [51] V5 <= 6 *
#> |   |   |   |   |   |   [52] V5 > 6 *
#> |   |   |   |   |   [53] V5 > 11
#> |   |   |   |   |   |   [54] V5 <= 126
#> |   |   |   |   |   |   |   [55] V2 <= 87 *
#> |   |   |   |   |   |   |   [56] V2 > 87 *
#> |   |   |   |   |   |   [57] V5 > 126 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V2 <= 81
#> |   |   |   |   |   [60] V3 <= 14
#> |   |   |   |   |   |   [61] V3 <= 6 *
#> |   |   |   |   |   |   [62] V3 > 6 *
#> |   |   |   |   |   [63] V3 > 14 *
#> |   |   |   |   [64] V2 > 81 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V5 <= 170
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 11
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V5 > 11
#> |   |   |   |   |   [9] V3 <= 3 *
#> |   |   |   |   |   [10] V3 > 3 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V7 <= 130
#> |   |   |   |   |   [13] V2 <= 83
#> |   |   |   |   |   |   [14] V7 <= 110 *
#> |   |   |   |   |   |   [15] V7 > 110 *
#> |   |   |   |   |   [16] V2 > 83 *
#> |   |   |   |   [17] V7 > 130
#> |   |   |   |   |   [18] V5 <= 15 *
#> |   |   |   |   |   [19] V5 > 15 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V5 <= 8
#> |   |   |   |   [22] V7 <= 126
#> |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   [24] V3 > 2
#> |   |   |   |   |   |   [25] V2 <= 72
#> |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   [28] V2 > 72 *
#> |   |   |   |   [29] V7 > 126
#> |   |   |   |   |   [30] V3 <= 18
#> |   |   |   |   |   |   [31] V2 <= 55
#> |   |   |   |   |   |   |   [32] V6 <= 0 *
#> |   |   |   |   |   |   |   [33] V6 > 0 *
#> |   |   |   |   |   |   [34] V2 > 55
#> |   |   |   |   |   |   |   [35] V3 <= 2 *
#> |   |   |   |   |   |   |   [36] V3 > 2
#> |   |   |   |   |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [38] V2 <= 65 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 65 *
#> |   |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   |   [41] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [42] V7 > 147
#> |   |   |   |   |   |   |   |   |   |   [43] V2 <= 73 *
#> |   |   |   |   |   |   |   |   |   |   [44] V2 > 73 *
#> |   |   |   |   |   [45] V3 > 18 *
#> |   |   |   [46] V5 > 8
#> |   |   |   |   [47] V5 <= 11
#> |   |   |   |   |   [48] V7 <= 140
#> |   |   |   |   |   |   [49] V3 <= 14 *
#> |   |   |   |   |   |   [50] V3 > 14 *
#> |   |   |   |   |   [51] V7 > 140 *
#> |   |   |   |   [52] V5 > 11 *
#> |   [53] V5 > 170
#> |   |   [54] V6 <= 0 *
#> |   |   [55] V6 > 0
#> |   |   |   [56] V3 <= 10
#> |   |   |   |   [57] V7 <= 119 *
#> |   |   |   |   [58] V7 > 119 *
#> |   |   |   [59] V3 > 10 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 100 *
#> |   |   |   |   |   [10] V7 > 100
#> |   |   |   |   |   |   [11] V2 <= 83 *
#> |   |   |   |   |   |   [12] V2 > 83 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V5 <= 4 *
#> |   |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   |   [16] V7 <= 140
#> |   |   |   |   |   |   |   [17] V7 <= 120 *
#> |   |   |   |   |   |   |   [18] V7 > 120 *
#> |   |   |   |   |   |   [19] V7 > 140
#> |   |   |   |   |   |   |   [20] V5 <= 21 *
#> |   |   |   |   |   |   |   [21] V5 > 21 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 72
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V7 <= 120 *
#> |   |   |   |   |   [26] V7 > 120
#> |   |   |   |   |   |   [27] V7 <= 149
#> |   |   |   |   |   |   |   [28] V2 <= 66 *
#> |   |   |   |   |   |   |   [29] V2 > 66 *
#> |   |   |   |   |   |   [30] V7 > 149
#> |   |   |   |   |   |   |   [31] V2 <= 63 *
#> |   |   |   |   |   |   |   [32] V2 > 63 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V7 <= 110 *
#> |   |   |   |   |   [35] V7 > 110
#> |   |   |   |   |   |   [36] V7 <= 133
#> |   |   |   |   |   |   |   [37] V5 <= 5
#> |   |   |   |   |   |   |   |   [38] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [39] V3 > 5 *
#> |   |   |   |   |   |   |   [40] V5 > 5 *
#> |   |   |   |   |   |   [41] V7 > 133
#> |   |   |   |   |   |   |   [42] V7 <= 149 *
#> |   |   |   |   |   |   |   [43] V7 > 149
#> |   |   |   |   |   |   |   |   [44] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [45] V2 > 59
#> |   |   |   |   |   |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [47] V3 > 5 *
#> |   |   |   [48] V2 > 72
#> |   |   |   |   [49] V7 <= 147
#> |   |   |   |   |   [50] V5 <= 8
#> |   |   |   |   |   |   [51] V5 <= 2
#> |   |   |   |   |   |   |   [52] V7 <= 130 *
#> |   |   |   |   |   |   |   [53] V7 > 130 *
#> |   |   |   |   |   |   [54] V5 > 2 *
#> |   |   |   |   |   [55] V5 > 8 *
#> |   |   |   |   [56] V7 > 147
#> |   |   |   |   |   [57] V3 <= 15 *
#> |   |   |   |   |   [58] V3 > 15 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V2 <= 59 *
#> |   |   |   |   |   [8] V2 > 59
#> |   |   |   |   |   |   [9] V5 <= 13 *
#> |   |   |   |   |   |   [10] V5 > 13 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V2 <= 38 *
#> |   |   |   |   |   [14] V2 > 38
#> |   |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   |   [16] V5 <= 7 *
#> |   |   |   |   |   |   |   [17] V5 > 7 *
#> |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   [19] V7 <= 122 *
#> |   |   |   |   |   |   |   [20] V7 > 122 *
#> |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   [23] V5 <= 3
#> |   |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   |   [25] V3 > 3 *
#> |   |   |   |   |   |   [26] V5 > 3
#> |   |   |   |   |   |   |   [27] V2 <= 67
#> |   |   |   |   |   |   |   |   [28] V7 <= 123 *
#> |   |   |   |   |   |   |   |   [29] V7 > 123 *
#> |   |   |   |   |   |   |   [30] V2 > 67 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V7 <= 110 *
#> |   |   |   |   |   |   [33] V7 > 110
#> |   |   |   |   |   |   |   [34] V7 <= 160
#> |   |   |   |   |   |   |   |   [35] V3 <= 16
#> |   |   |   |   |   |   |   |   |   [36] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [37] V2 > 66 *
#> |   |   |   |   |   |   |   |   [38] V3 > 16 *
#> |   |   |   |   |   |   |   [39] V7 > 160 *
#> |   |   [40] V5 > 170
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 9
#> |   |   |   |   |   [44] V3 <= 5 *
#> |   |   |   |   |   [45] V3 > 5 *
#> |   |   |   |   [46] V3 > 9 *
#> |   [47] V2 > 72
#> |   |   [48] V5 <= 169
#> |   |   |   [49] V3 <= 7
#> |   |   |   |   [50] V6 <= 0
#> |   |   |   |   |   [51] V3 <= 3 *
#> |   |   |   |   |   [52] V3 > 3 *
#> |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   [54] V4 <= 0
#> |   |   |   |   |   |   [55] V3 <= 2 *
#> |   |   |   |   |   |   [56] V3 > 2
#> |   |   |   |   |   |   |   [57] V2 <= 80 *
#> |   |   |   |   |   |   |   [58] V2 > 80 *
#> |   |   |   |   |   [59] V4 > 0
#> |   |   |   |   |   |   [60] V3 <= 4 *
#> |   |   |   |   |   |   [61] V3 > 4 *
#> |   |   |   [62] V3 > 7
#> |   |   |   |   [63] V5 <= 11
#> |   |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   |   [65] V6 > 0
#> |   |   |   |   |   |   [66] V5 <= 7 *
#> |   |   |   |   |   |   [67] V5 > 7 *
#> |   |   |   |   [68] V5 > 11 *
#> |   |   [69] V5 > 169 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V2 <= 62
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   |   [9] V2 <= 59 *
#> |   |   |   |   |   |   [10] V2 > 59 *
#> |   |   |   |   [11] V2 > 62
#> |   |   |   |   |   [12] V7 <= 114
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   |   |   [15] V7 > 114
#> |   |   |   |   |   |   [16] V5 <= 11
#> |   |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   |   |   [19] V5 > 11
#> |   |   |   |   |   |   |   [20] V5 <= 90 *
#> |   |   |   |   |   |   |   [21] V5 > 90 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 78
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V7 <= 145
#> |   |   |   |   |   |   [26] V7 <= 111 *
#> |   |   |   |   |   |   [27] V7 > 111
#> |   |   |   |   |   |   |   [28] V2 <= 54 *
#> |   |   |   |   |   |   |   [29] V2 > 54
#> |   |   |   |   |   |   |   |   [30] V7 <= 123 *
#> |   |   |   |   |   |   |   |   [31] V7 > 123 *
#> |   |   |   |   |   [32] V7 > 145
#> |   |   |   |   |   |   [33] V3 <= 2 *
#> |   |   |   |   |   |   [34] V3 > 2
#> |   |   |   |   |   |   |   [35] V2 <= 55 *
#> |   |   |   |   |   |   |   [36] V2 > 55 *
#> |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   [38] V2 <= 60
#> |   |   |   |   |   |   [39] V3 <= 7
#> |   |   |   |   |   |   |   [40] V5 <= 0 *
#> |   |   |   |   |   |   |   [41] V5 > 0 *
#> |   |   |   |   |   |   [42] V3 > 7 *
#> |   |   |   |   |   [43] V2 > 60
#> |   |   |   |   |   |   [44] V7 <= 118 *
#> |   |   |   |   |   |   [45] V7 > 118
#> |   |   |   |   |   |   |   [46] V7 <= 160
#> |   |   |   |   |   |   |   |   [47] V3 <= 11
#> |   |   |   |   |   |   |   |   |   [48] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [49] V2 > 66 *
#> |   |   |   |   |   |   |   |   [50] V3 > 11 *
#> |   |   |   |   |   |   |   [51] V7 > 160 *
#> |   |   |   [52] V2 > 78
#> |   |   |   |   [53] V2 <= 86
#> |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V2 > 86 *
#> |   [57] V5 > 169
#> |   |   [58] V5 <= 179 *
#> |   |   [59] V5 > 179 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V2 <= 59 *
#> |   |   |   [5] V2 > 59
#> |   |   |   |   [6] V3 <= 2
#> |   |   |   |   |   [7] V7 <= 145 *
#> |   |   |   |   |   [8] V7 > 145 *
#> |   |   |   |   [9] V3 > 2
#> |   |   |   |   |   [10] V7 <= 112
#> |   |   |   |   |   |   [11] V7 <= 102 *
#> |   |   |   |   |   |   [12] V7 > 102 *
#> |   |   |   |   |   [13] V7 > 112
#> |   |   |   |   |   |   [14] V5 <= 11
#> |   |   |   |   |   |   |   [15] V3 <= 4 *
#> |   |   |   |   |   |   |   [16] V3 > 4 *
#> |   |   |   |   |   |   [17] V5 > 11
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   |   [20] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [21] V7 > 140 *
#> |   |   [22] V5 > 170
#> |   |   |   [23] V3 <= 11
#> |   |   |   |   [24] V7 <= 134 *
#> |   |   |   |   [25] V7 > 134
#> |   |   |   |   |   [26] V7 <= 153 *
#> |   |   |   |   |   [27] V7 > 153 *
#> |   |   |   [28] V3 > 11 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 62
#> |   |   |   [31] V7 <= 110 *
#> |   |   |   [32] V7 > 110
#> |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   [34] V3 <= 14
#> |   |   |   |   |   |   [35] V2 <= 51 *
#> |   |   |   |   |   |   [36] V2 > 51 *
#> |   |   |   |   |   [37] V3 > 14 *
#> |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   [39] V5 <= 2
#> |   |   |   |   |   |   [40] V2 <= 54 *
#> |   |   |   |   |   |   [41] V2 > 54 *
#> |   |   |   |   |   [42] V5 > 2 *
#> |   |   [43] V2 > 62
#> |   |   |   [44] V6 <= 0
#> |   |   |   |   [45] V2 <= 79
#> |   |   |   |   |   [46] V7 <= 110 *
#> |   |   |   |   |   [47] V7 > 110
#> |   |   |   |   |   |   [48] V7 <= 168
#> |   |   |   |   |   |   |   [49] V3 <= 5 *
#> |   |   |   |   |   |   |   [50] V3 > 5 *
#> |   |   |   |   |   |   [51] V7 > 168 *
#> |   |   |   |   [52] V2 > 79 *
#> |   |   |   [53] V6 > 0
#> |   |   |   |   [54] V3 <= 2 *
#> |   |   |   |   [55] V3 > 2
#> |   |   |   |   |   [56] V3 <= 10
#> |   |   |   |   |   |   [57] V3 <= 8
#> |   |   |   |   |   |   |   [58] V2 <= 76 *
#> |   |   |   |   |   |   |   [59] V2 > 76 *
#> |   |   |   |   |   |   [60] V3 > 8 *
#> |   |   |   |   |   [61] V3 > 10
#> |   |   |   |   |   |   [62] V2 <= 71 *
#> |   |   |   |   |   |   [63] V2 > 71
#> |   |   |   |   |   |   |   [64] V5 <= 4 *
#> |   |   |   |   |   |   |   [65] V5 > 4 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V5 <= 7
#> |   |   |   |   [5] V7 <= 108
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0 *
#> |   |   |   |   [8] V7 > 108 *
#> |   |   |   [9] V5 > 7
#> |   |   |   |   [10] V4 <= 0 *
#> |   |   |   |   [11] V4 > 0 *
#> |   |   [12] V7 > 112
#> |   |   |   [13] V2 <= 54
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V3 <= 2 *
#> |   |   |   |   |   [16] V3 > 2
#> |   |   |   |   |   |   [17] V2 <= 51 *
#> |   |   |   |   |   |   [18] V2 > 51 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   [22] V5 <= 1 *
#> |   |   |   |   |   |   [23] V5 > 1 *
#> |   |   |   [24] V2 > 54
#> |   |   |   |   [25] V5 <= 170
#> |   |   |   |   |   [26] V4 <= 0
#> |   |   |   |   |   |   [27] V2 <= 61 *
#> |   |   |   |   |   |   [28] V2 > 61
#> |   |   |   |   |   |   |   [29] V3 <= 6
#> |   |   |   |   |   |   |   |   [30] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [31] V5 > 4 *
#> |   |   |   |   |   |   |   [32] V3 > 6 *
#> |   |   |   |   |   [33] V4 > 0
#> |   |   |   |   |   |   [34] V7 <= 145
#> |   |   |   |   |   |   |   [35] V2 <= 68
#> |   |   |   |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [37] V6 > 0 *
#> |   |   |   |   |   |   |   [38] V2 > 68
#> |   |   |   |   |   |   |   |   [39] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [40] V2 > 71 *
#> |   |   |   |   |   |   [41] V7 > 145
#> |   |   |   |   |   |   |   [42] V3 <= 19
#> |   |   |   |   |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [44] V3 > 3
#> |   |   |   |   |   |   |   |   |   [45] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [46] V5 > 0
#> |   |   |   |   |   |   |   |   |   |   [47] V7 <= 151 *
#> |   |   |   |   |   |   |   |   |   |   [48] V7 > 151
#> |   |   |   |   |   |   |   |   |   |   |   [49] V7 <= 162 *
#> |   |   |   |   |   |   |   |   |   |   |   [50] V7 > 162 *
#> |   |   |   |   |   |   |   [51] V3 > 19 *
#> |   |   |   |   [52] V5 > 170
#> |   |   |   |   |   [53] V2 <= 59 *
#> |   |   |   |   |   [54] V2 > 59 *
#> |   [55] V2 > 78
#> |   |   [56] V6 <= 0
#> |   |   |   [57] V2 <= 87
#> |   |   |   |   [58] V7 <= 145 *
#> |   |   |   |   [59] V7 > 145 *
#> |   |   |   [60] V2 > 87 *
#> |   |   [61] V6 > 0
#> |   |   |   [62] V5 <= 128
#> |   |   |   |   [63] V5 <= 3
#> |   |   |   |   |   [64] V4 <= 0 *
#> |   |   |   |   |   [65] V4 > 0 *
#> |   |   |   |   [66] V5 > 3
#> |   |   |   |   |   [67] V5 <= 7 *
#> |   |   |   |   |   [68] V5 > 7 *
#> |   |   |   [69] V5 > 128 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 170
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2 *
#> |   |   |   [7] V5 > 170
#> |   |   |   |   [8] V2 <= 57
#> |   |   |   |   |   [9] V7 <= 121 *
#> |   |   |   |   |   [10] V7 > 121 *
#> |   |   |   |   [11] V2 > 57 *
#> |   |   [12] V4 > 0
#> |   |   |   [13] V2 <= 54
#> |   |   |   |   [14] V3 <= 7
#> |   |   |   |   |   [15] V7 <= 122 *
#> |   |   |   |   |   [16] V7 > 122 *
#> |   |   |   |   [17] V3 > 7
#> |   |   |   |   |   [18] V7 <= 140 *
#> |   |   |   |   |   [19] V7 > 140 *
#> |   |   |   [20] V2 > 54
#> |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   [23] V2 <= 58 *
#> |   |   |   |   |   [24] V2 > 58 *
#> |   [25] V2 > 62
#> |   |   [26] V7 <= 83 *
#> |   |   [27] V7 > 83
#> |   |   |   [28] V5 <= 169
#> |   |   |   |   [29] V4 <= 0
#> |   |   |   |   |   [30] V3 <= 7
#> |   |   |   |   |   |   [31] V5 <= 1 *
#> |   |   |   |   |   |   [32] V5 > 1
#> |   |   |   |   |   |   |   [33] V5 <= 5 *
#> |   |   |   |   |   |   |   [34] V5 > 5
#> |   |   |   |   |   |   |   |   [35] V5 <= 101
#> |   |   |   |   |   |   |   |   |   [36] V5 <= 12 *
#> |   |   |   |   |   |   |   |   |   [37] V5 > 12
#> |   |   |   |   |   |   |   |   |   |   [38] V5 <= 46 *
#> |   |   |   |   |   |   |   |   |   |   [39] V5 > 46 *
#> |   |   |   |   |   |   |   |   [40] V5 > 101 *
#> |   |   |   |   |   [41] V3 > 7
#> |   |   |   |   |   |   [42] V3 <= 11 *
#> |   |   |   |   |   |   [43] V3 > 11 *
#> |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   |   [46] V5 <= 4
#> |   |   |   |   |   |   |   [47] V7 <= 155
#> |   |   |   |   |   |   |   |   [48] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [49] V5 > 1 *
#> |   |   |   |   |   |   |   [50] V7 > 155 *
#> |   |   |   |   |   |   [51] V5 > 4
#> |   |   |   |   |   |   |   [52] V5 <= 9 *
#> |   |   |   |   |   |   |   [53] V5 > 9 *
#> |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   [55] V2 <= 74
#> |   |   |   |   |   |   |   [56] V5 <= 0 *
#> |   |   |   |   |   |   |   [57] V5 > 0 *
#> |   |   |   |   |   |   [58] V2 > 74
#> |   |   |   |   |   |   |   [59] V2 <= 77 *
#> |   |   |   |   |   |   |   [60] V2 > 77
#> |   |   |   |   |   |   |   |   [61] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [62] V3 > 11 *
#> |   |   |   [63] V5 > 169 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V7 <= 110 *
#> |   |   [4] V7 > 110
#> |   |   |   [5] V4 <= 0
#> |   |   |   |   [6] V7 <= 152 *
#> |   |   |   |   [7] V7 > 152 *
#> |   |   |   [8] V4 > 0
#> |   |   |   |   [9] V3 <= 5
#> |   |   |   |   |   [10] V3 <= 3 *
#> |   |   |   |   |   [11] V3 > 3 *
#> |   |   |   |   [12] V3 > 5 *
#> |   [13] V2 > 54
#> |   |   [14] V2 <= 72
#> |   |   |   [15] V3 <= 2
#> |   |   |   |   [16] V5 <= 10
#> |   |   |   |   |   [17] V5 <= 1 *
#> |   |   |   |   |   [18] V5 > 1 *
#> |   |   |   |   [19] V5 > 10 *
#> |   |   |   [20] V3 > 2
#> |   |   |   |   [21] V3 <= 12
#> |   |   |   |   |   [22] V5 <= 103
#> |   |   |   |   |   |   [23] V4 <= 0
#> |   |   |   |   |   |   |   [24] V6 <= 0 *
#> |   |   |   |   |   |   |   [25] V6 > 0 *
#> |   |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   |   [27] V5 <= 1
#> |   |   |   |   |   |   |   |   [28] V7 <= 149
#> |   |   |   |   |   |   |   |   |   [29] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [30] V3 > 7 *
#> |   |   |   |   |   |   |   |   [31] V7 > 149 *
#> |   |   |   |   |   |   |   [32] V5 > 1
#> |   |   |   |   |   |   |   |   [33] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [34] V5 > 5 *
#> |   |   |   |   |   [35] V5 > 103 *
#> |   |   |   |   [36] V3 > 12
#> |   |   |   |   |   [37] V7 <= 160
#> |   |   |   |   |   |   [38] V4 <= 0 *
#> |   |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   |   [40] V7 <= 130 *
#> |   |   |   |   |   |   |   [41] V7 > 130 *
#> |   |   |   |   |   [42] V7 > 160 *
#> |   |   [43] V2 > 72
#> |   |   |   [44] V6 <= 0
#> |   |   |   |   [45] V2 <= 87
#> |   |   |   |   |   [46] V5 <= 165
#> |   |   |   |   |   |   [47] V4 <= 0 *
#> |   |   |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   |   |   [49] V2 <= 79 *
#> |   |   |   |   |   |   |   [50] V2 > 79 *
#> |   |   |   |   |   [51] V5 > 165 *
#> |   |   |   |   [52] V2 > 87 *
#> |   |   |   [53] V6 > 0
#> |   |   |   |   [54] V2 <= 77
#> |   |   |   |   |   [55] V5 <= 8 *
#> |   |   |   |   |   [56] V5 > 8 *
#> |   |   |   |   [57] V2 > 77
#> |   |   |   |   |   [58] V7 <= 140
#> |   |   |   |   |   |   [59] V2 <= 83
#> |   |   |   |   |   |   |   [60] V5 <= 1 *
#> |   |   |   |   |   |   |   [61] V5 > 1 *
#> |   |   |   |   |   |   [62] V2 > 83
#> |   |   |   |   |   |   |   [63] V5 <= 74 *
#> |   |   |   |   |   |   |   [64] V5 > 74 *
#> |   |   |   |   |   [65] V7 > 140
#> |   |   |   |   |   |   [66] V4 <= 0 *
#> |   |   |   |   |   |   [67] V4 > 0 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V5 <= 45
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V7 <= 117 *
#> |   |   |   |   |   [8] V7 > 117
#> |   |   |   |   |   |   [9] V2 <= 42 *
#> |   |   |   |   |   |   [10] V2 > 42
#> |   |   |   |   |   |   |   [11] V2 <= 50 *
#> |   |   |   |   |   |   |   [12] V2 > 50 *
#> |   |   |   [13] V2 > 54
#> |   |   |   |   [14] V4 <= 0 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V6 <= 0 *
#> |   |   |   |   |   [17] V6 > 0 *
#> |   |   [18] V5 > 45
#> |   |   |   [19] V7 <= 145 *
#> |   |   |   [20] V7 > 145 *
#> |   [21] V2 > 60
#> |   |   [22] V2 <= 85
#> |   |   |   [23] V5 <= 165
#> |   |   |   |   [24] V4 <= 0
#> |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   [27] V3 > 3
#> |   |   |   |   |   |   |   [28] V2 <= 70 *
#> |   |   |   |   |   |   |   [29] V2 > 70 *
#> |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   [31] V5 <= 2 *
#> |   |   |   |   |   |   [32] V5 > 2
#> |   |   |   |   |   |   |   [33] V2 <= 81
#> |   |   |   |   |   |   |   |   [34] V2 <= 76
#> |   |   |   |   |   |   |   |   |   [35] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [36] V3 > 4 *
#> |   |   |   |   |   |   |   |   [37] V2 > 76 *
#> |   |   |   |   |   |   |   [38] V2 > 81 *
#> |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   [40] V5 <= 3
#> |   |   |   |   |   |   [41] V2 <= 72
#> |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [45] V3 > 3 *
#> |   |   |   |   |   |   [46] V2 > 72
#> |   |   |   |   |   |   |   [47] V2 <= 77 *
#> |   |   |   |   |   |   |   [48] V2 > 77 *
#> |   |   |   |   |   [49] V5 > 3
#> |   |   |   |   |   |   [50] V6 <= 0
#> |   |   |   |   |   |   |   [51] V3 <= 15
#> |   |   |   |   |   |   |   |   [52] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [53] V2 > 73 *
#> |   |   |   |   |   |   |   [54] V3 > 15 *
#> |   |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   |   [56] V2 <= 71 *
#> |   |   |   |   |   |   |   [57] V2 > 71 *
#> |   |   |   [58] V5 > 165 *
#> |   |   [59] V2 > 85
#> |   |   |   [60] V4 <= 0
#> |   |   |   |   [61] V7 <= 142
#> |   |   |   |   |   [62] V3 <= 5 *
#> |   |   |   |   |   [63] V3 > 5 *
#> |   |   |   |   [64] V7 > 142 *
#> |   |   |   [65] V4 > 0 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 150
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 13
#> |   |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   |   |   [9] V5 > 13 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V3 <= 3 *
#> |   |   |   |   |   [12] V3 > 3 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V7 <= 132
#> |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   [16] V3 > 3
#> |   |   |   |   |   |   [17] V3 <= 8
#> |   |   |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   |   [20] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [21] V5 > 0 *
#> |   |   |   |   |   |   [22] V3 > 8
#> |   |   |   |   |   |   |   [23] V6 <= 0 *
#> |   |   |   |   |   |   |   [24] V6 > 0 *
#> |   |   |   |   [25] V7 > 132
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V2 <= 60
#> |   |   |   |   |   |   |   [28] V2 <= 51 *
#> |   |   |   |   |   |   |   [29] V2 > 51 *
#> |   |   |   |   |   |   [30] V2 > 60
#> |   |   |   |   |   |   |   [31] V5 <= 9 *
#> |   |   |   |   |   |   |   [32] V5 > 9 *
#> |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   [34] V2 <= 54 *
#> |   |   |   |   |   |   [35] V2 > 54
#> |   |   |   |   |   |   |   [36] V7 <= 149 *
#> |   |   |   |   |   |   |   [37] V7 > 149
#> |   |   |   |   |   |   |   |   [38] V7 <= 162 *
#> |   |   |   |   |   |   |   |   [39] V7 > 162 *
#> |   |   [40] V5 > 150
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 7
#> |   |   |   |   |   [44] V7 <= 117 *
#> |   |   |   |   |   [45] V7 > 117 *
#> |   |   |   |   [46] V3 > 7 *
#> |   [47] V2 > 74
#> |   |   [48] V4 <= 0
#> |   |   |   [49] V6 <= 0
#> |   |   |   |   [50] V5 <= 177
#> |   |   |   |   |   [51] V2 <= 83 *
#> |   |   |   |   |   [52] V2 > 83 *
#> |   |   |   |   [53] V5 > 177 *
#> |   |   |   [54] V6 > 0
#> |   |   |   |   [55] V7 <= 112 *
#> |   |   |   |   [56] V7 > 112
#> |   |   |   |   |   [57] V5 <= 126
#> |   |   |   |   |   |   [58] V2 <= 84
#> |   |   |   |   |   |   |   [59] V7 <= 147 *
#> |   |   |   |   |   |   |   [60] V7 > 147 *
#> |   |   |   |   |   |   [61] V2 > 84 *
#> |   |   |   |   |   [62] V5 > 126 *
#> |   |   [63] V4 > 0
#> |   |   |   [64] V2 <= 79
#> |   |   |   |   [65] V2 <= 77 *
#> |   |   |   |   [66] V2 > 77 *
#> |   |   |   [67] V2 > 79
#> |   |   |   |   [68] V2 <= 81 *
#> |   |   |   |   [69] V2 > 81 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V2 <= 61
#> |   |   |   |   |   [6] V3 <= 2 *
#> |   |   |   |   |   [7] V3 > 2
#> |   |   |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   |   |   [10] V3 <= 4
#> |   |   |   |   |   |   |   |   [11] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [12] V3 > 3 *
#> |   |   |   |   |   |   |   [13] V3 > 4
#> |   |   |   |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [15] V2 <= 51 *
#> |   |   |   |   |   |   |   |   |   [16] V2 > 51 *
#> |   |   |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   |   |   [18] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   [19] V7 > 133 *
#> |   |   |   |   [20] V2 > 61
#> |   |   |   |   |   [21] V3 <= 3
#> |   |   |   |   |   |   [22] V3 <= 1 *
#> |   |   |   |   |   |   [23] V3 > 1 *
#> |   |   |   |   |   [24] V3 > 3
#> |   |   |   |   |   |   [25] V3 <= 8
#> |   |   |   |   |   |   |   [26] V5 <= 3 *
#> |   |   |   |   |   |   |   [27] V5 > 3 *
#> |   |   |   |   |   |   [28] V3 > 8
#> |   |   |   |   |   |   |   [29] V5 <= 9
#> |   |   |   |   |   |   |   |   [30] V3 <= 11 *
#> |   |   |   |   |   |   |   |   [31] V3 > 11 *
#> |   |   |   |   |   |   |   [32] V5 > 9
#> |   |   |   |   |   |   |   |   [33] V3 <= 15 *
#> |   |   |   |   |   |   |   |   [34] V3 > 15 *
#> |   |   |   [35] V5 > 15
#> |   |   |   |   [36] V2 <= 60 *
#> |   |   |   |   [37] V2 > 60 *
#> |   |   [38] V5 > 170
#> |   |   |   [39] V3 <= 9
#> |   |   |   |   [40] V7 <= 117 *
#> |   |   |   |   [41] V7 > 117 *
#> |   |   |   [42] V3 > 9 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V2 <= 85
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V5 <= 4 *
#> |   |   |   |   |   [48] V5 > 4
#> |   |   |   |   |   |   [49] V2 <= 79 *
#> |   |   |   |   |   |   [50] V2 > 79 *
#> |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   [53] V2 <= 79 *
#> |   |   |   |   |   |   [54] V2 > 79 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V7 <= 118 *
#> |   |   |   |   |   |   [57] V7 > 118
#> |   |   |   |   |   |   |   [58] V2 <= 77 *
#> |   |   |   |   |   |   |   [59] V2 > 77 *
#> |   |   |   [60] V2 > 85
#> |   |   |   |   [61] V7 <= 159
#> |   |   |   |   |   [62] V4 <= 0 *
#> |   |   |   |   |   [63] V4 > 0 *
#> |   |   |   |   [64] V7 > 159 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 130 *
#> |   |   |   |   |   [7] V7 > 130 *
#> |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V2 <= 57
#> |   |   |   |   |   |   [12] V2 <= 44 *
#> |   |   |   |   |   |   [13] V2 > 44 *
#> |   |   |   |   |   [14] V2 > 57
#> |   |   |   |   |   |   [15] V3 <= 5 *
#> |   |   |   |   |   |   [16] V3 > 5 *
#> |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   [18] V2 <= 54 *
#> |   |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   |   [20] V5 <= 3
#> |   |   |   |   |   |   |   [21] V3 <= 3 *
#> |   |   |   |   |   |   |   [22] V3 > 3 *
#> |   |   |   |   |   |   [23] V5 > 3 *
#> |   |   [24] V5 > 170
#> |   |   |   [25] V3 <= 9
#> |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   [27] V6 > 0 *
#> |   |   |   [28] V3 > 9 *
#> |   [29] V2 > 67
#> |   |   [30] V5 <= 169
#> |   |   |   [31] V2 <= 81
#> |   |   |   |   [32] V6 <= 0
#> |   |   |   |   |   [33] V3 <= 10
#> |   |   |   |   |   |   [34] V7 <= 124 *
#> |   |   |   |   |   |   [35] V7 > 124
#> |   |   |   |   |   |   |   [36] V5 <= 6 *
#> |   |   |   |   |   |   |   [37] V5 > 6 *
#> |   |   |   |   |   [38] V3 > 10 *
#> |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   [40] V4 <= 0
#> |   |   |   |   |   |   [41] V2 <= 73 *
#> |   |   |   |   |   |   [42] V2 > 73
#> |   |   |   |   |   |   |   [43] V7 <= 145 *
#> |   |   |   |   |   |   |   [44] V7 > 145 *
#> |   |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   |   [46] V2 <= 72 *
#> |   |   |   |   |   |   [47] V2 > 72
#> |   |   |   |   |   |   |   [48] V2 <= 75 *
#> |   |   |   |   |   |   |   [49] V2 > 75
#> |   |   |   |   |   |   |   |   [50] V7 <= 143 *
#> |   |   |   |   |   |   |   |   [51] V7 > 143 *
#> |   |   |   [52] V2 > 81
#> |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   [54] V5 <= 5 *
#> |   |   |   |   |   [55] V5 > 5
#> |   |   |   |   |   |   [56] V7 <= 139 *
#> |   |   |   |   |   |   [57] V7 > 139 *
#> |   |   |   |   [58] V4 > 0 *
#> |   |   [59] V5 > 169 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 7
#> |   |   |   |   |   [6] V2 <= 62 *
#> |   |   |   |   |   [7] V2 > 62
#> |   |   |   |   |   |   [8] V2 <= 65 *
#> |   |   |   |   |   |   [9] V2 > 65 *
#> |   |   |   |   [10] V3 > 7 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V7 <= 147
#> |   |   |   |   |   [13] V2 <= 54
#> |   |   |   |   |   |   [14] V7 <= 113 *
#> |   |   |   |   |   |   [15] V7 > 113 *
#> |   |   |   |   |   [16] V2 > 54
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V7 <= 127 *
#> |   |   |   |   |   |   |   [19] V7 > 127
#> |   |   |   |   |   |   |   |   [20] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [21] V3 > 5 *
#> |   |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   |   [23] V7 <= 136
#> |   |   |   |   |   |   |   |   [24] V7 <= 110 *
#> |   |   |   |   |   |   |   |   [25] V7 > 110 *
#> |   |   |   |   |   |   |   [26] V7 > 136 *
#> |   |   |   |   [27] V7 > 147
#> |   |   |   |   |   [28] V2 <= 59
#> |   |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   |   [30] V2 <= 53 *
#> |   |   |   |   |   |   |   [31] V2 > 53 *
#> |   |   |   |   |   |   [32] V6 > 0 *
#> |   |   |   |   |   [33] V2 > 59
#> |   |   |   |   |   |   [34] V3 <= 3 *
#> |   |   |   |   |   |   [35] V3 > 3
#> |   |   |   |   |   |   |   [36] V3 <= 16
#> |   |   |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [38] V6 > 0 *
#> |   |   |   |   |   |   |   [39] V3 > 16 *
#> |   |   [40] V5 > 169
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V3 <= 9
#> |   |   |   |   |   [44] V3 <= 3 *
#> |   |   |   |   |   [45] V3 > 3 *
#> |   |   |   |   [46] V3 > 9 *
#> |   [47] V2 > 74
#> |   |   [48] V7 <= 168
#> |   |   |   [49] V4 <= 0
#> |   |   |   |   [50] V6 <= 0
#> |   |   |   |   |   [51] V5 <= 165 *
#> |   |   |   |   |   [52] V5 > 165 *
#> |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   [54] V7 <= 149
#> |   |   |   |   |   |   [55] V5 <= 128
#> |   |   |   |   |   |   |   [56] V2 <= 81 *
#> |   |   |   |   |   |   |   [57] V2 > 81 *
#> |   |   |   |   |   |   [58] V5 > 128 *
#> |   |   |   |   |   [59] V7 > 149 *
#> |   |   |   [60] V4 > 0
#> |   |   |   |   [61] V2 <= 84
#> |   |   |   |   |   [62] V5 <= 3
#> |   |   |   |   |   |   [63] V3 <= 3 *
#> |   |   |   |   |   |   [64] V3 > 3 *
#> |   |   |   |   |   [65] V5 > 3 *
#> |   |   |   |   [66] V2 > 84 *
#> |   |   [67] V7 > 168
#> |   |   |   [68] V5 <= 118 *
#> |   |   |   [69] V5 > 118 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 115 *
#> |   |   |   |   [6] V5 > 115
#> |   |   |   |   |   [7] V2 <= 51 *
#> |   |   |   |   |   [8] V2 > 51 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 43 *
#> |   |   |   |   [11] V2 > 43
#> |   |   |   |   |   [12] V5 <= 0 *
#> |   |   |   |   |   [13] V5 > 0
#> |   |   |   |   |   |   [14] V2 <= 50 *
#> |   |   |   |   |   |   [15] V2 > 50 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V3 <= 1 *
#> |   |   |   [18] V3 > 1
#> |   |   |   |   [19] V5 <= 169
#> |   |   |   |   |   [20] V4 <= 0
#> |   |   |   |   |   |   [21] V2 <= 62 *
#> |   |   |   |   |   |   [22] V2 > 62
#> |   |   |   |   |   |   |   [23] V3 <= 10 *
#> |   |   |   |   |   |   |   [24] V3 > 10 *
#> |   |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   |   [26] V2 <= 72
#> |   |   |   |   |   |   |   [27] V5 <= 0
#> |   |   |   |   |   |   |   |   [28] V7 <= 145 *
#> |   |   |   |   |   |   |   |   [29] V7 > 145 *
#> |   |   |   |   |   |   |   [30] V5 > 0
#> |   |   |   |   |   |   |   |   [31] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [32] V5 > 2
#> |   |   |   |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [34] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   |   [35] V7 > 149 *
#> |   |   |   |   |   |   |   |   |   [36] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [37] V5 <= 10 *
#> |   |   |   |   |   |   |   |   |   |   [38] V5 > 10 *
#> |   |   |   |   |   |   [39] V2 > 72 *
#> |   |   |   |   [40] V5 > 169
#> |   |   |   |   |   [41] V3 <= 9 *
#> |   |   |   |   |   [42] V3 > 9 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 168
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V5 <= 2 *
#> |   |   |   |   [47] V5 > 2
#> |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   [49] V2 <= 83 *
#> |   |   |   |   |   |   [50] V2 > 83 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V7 <= 101 *
#> |   |   |   |   |   |   [53] V7 > 101
#> |   |   |   |   |   |   |   [54] V7 <= 130 *
#> |   |   |   |   |   |   |   [55] V7 > 130
#> |   |   |   |   |   |   |   |   [56] V2 <= 80 *
#> |   |   |   |   |   |   |   |   [57] V2 > 80 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V3 <= 4 *
#> |   |   |   |   [60] V3 > 4
#> |   |   |   |   |   [61] V7 <= 147
#> |   |   |   |   |   |   [62] V3 <= 13 *
#> |   |   |   |   |   |   [63] V3 > 13 *
#> |   |   |   |   |   [64] V7 > 147 *
#> |   |   [65] V5 > 168 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112 *
#> |   |   |   [5] V7 > 112
#> |   |   |   |   [6] V5 <= 150
#> |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   |   [9] V2 <= 59 *
#> |   |   |   |   |   |   [10] V2 > 59 *
#> |   |   |   |   [11] V5 > 150
#> |   |   |   |   |   [12] V3 <= 10
#> |   |   |   |   |   |   [13] V2 <= 52 *
#> |   |   |   |   |   |   [14] V2 > 52 *
#> |   |   |   |   |   [15] V3 > 10 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V5 <= 6
#> |   |   |   |   [18] V2 <= 65
#> |   |   |   |   |   [19] V7 <= 102 *
#> |   |   |   |   |   [20] V7 > 102
#> |   |   |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   |   |   [22] V5 <= 1 *
#> |   |   |   |   |   |   |   [23] V5 > 1 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V7 <= 141
#> |   |   |   |   |   |   |   |   [26] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [27] V5 > 0 *
#> |   |   |   |   |   |   |   [28] V7 > 141 *
#> |   |   |   |   [29] V2 > 65
#> |   |   |   |   |   [30] V7 <= 123 *
#> |   |   |   |   |   [31] V7 > 123
#> |   |   |   |   |   |   [32] V3 <= 4 *
#> |   |   |   |   |   |   [33] V3 > 4 *
#> |   |   |   [34] V5 > 6
#> |   |   |   |   [35] V2 <= 54 *
#> |   |   |   |   [36] V2 > 54
#> |   |   |   |   |   [37] V2 <= 65
#> |   |   |   |   |   |   [38] V3 <= 14 *
#> |   |   |   |   |   |   [39] V3 > 14 *
#> |   |   |   |   |   [40] V2 > 65 *
#> |   [41] V2 > 72
#> |   |   [42] V7 <= 106
#> |   |   |   [43] V4 <= 0
#> |   |   |   |   [44] V5 <= 62 *
#> |   |   |   |   [45] V5 > 62 *
#> |   |   |   [46] V4 > 0 *
#> |   |   [47] V7 > 106
#> |   |   |   [48] V5 <= 177
#> |   |   |   |   [49] V4 <= 0
#> |   |   |   |   |   [50] V7 <= 120 *
#> |   |   |   |   |   [51] V7 > 120
#> |   |   |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   |   |   [53] V3 > 4 *
#> |   |   |   |   [54] V4 > 0
#> |   |   |   |   |   [55] V5 <= 7
#> |   |   |   |   |   |   [56] V6 <= 0 *
#> |   |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   |   [58] V3 <= 5 *
#> |   |   |   |   |   |   |   [59] V3 > 5
#> |   |   |   |   |   |   |   |   [60] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [61] V7 > 150 *
#> |   |   |   |   |   [62] V5 > 7 *
#> |   |   |   [63] V5 > 177 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V2 <= 43
#> |   |   |   [4] V7 <= 150 *
#> |   |   |   [5] V7 > 150 *
#> |   |   [6] V2 > 43
#> |   |   |   [7] V7 <= 156
#> |   |   |   |   [8] V7 <= 130
#> |   |   |   |   |   [9] V3 <= 7 *
#> |   |   |   |   |   [10] V3 > 7 *
#> |   |   |   |   [11] V7 > 130 *
#> |   |   |   [12] V7 > 156 *
#> |   [13] V2 > 54
#> |   |   [14] V5 <= 170
#> |   |   |   [15] V2 <= 78
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   [18] V7 <= 145
#> |   |   |   |   |   |   |   [19] V2 <= 65 *
#> |   |   |   |   |   |   |   [20] V2 > 65 *
#> |   |   |   |   |   |   [21] V7 > 145 *
#> |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   [23] V2 <= 69
#> |   |   |   |   |   |   |   [24] V5 <= 7 *
#> |   |   |   |   |   |   |   [25] V5 > 7 *
#> |   |   |   |   |   |   [26] V2 > 69 *
#> |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   [28] V7 <= 124
#> |   |   |   |   |   |   [29] V5 <= 4 *
#> |   |   |   |   |   |   [30] V5 > 4
#> |   |   |   |   |   |   |   [31] V7 <= 110 *
#> |   |   |   |   |   |   |   [32] V7 > 110 *
#> |   |   |   |   |   [33] V7 > 124
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V3 <= 5 *
#> |   |   |   |   |   |   |   [36] V3 > 5
#> |   |   |   |   |   |   |   |   [37] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [38] V5 > 7 *
#> |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   [40] V7 <= 147 *
#> |   |   |   |   |   |   |   [41] V7 > 147
#> |   |   |   |   |   |   |   |   [42] V7 <= 153 *
#> |   |   |   |   |   |   |   |   [43] V7 > 153
#> |   |   |   |   |   |   |   |   |   [44] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [45] V5 > 2 *
#> |   |   |   [46] V2 > 78
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V4 <= 0 *
#> |   |   |   |   |   [49] V4 > 0 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   |   [52] V2 <= 81 *
#> |   |   |   |   |   |   [53] V2 > 81
#> |   |   |   |   |   |   |   [54] V3 <= 5 *
#> |   |   |   |   |   |   |   [55] V3 > 5 *
#> |   |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   |   [57] V3 <= 9 *
#> |   |   |   |   |   |   [58] V3 > 9 *
#> |   |   [59] V5 > 170
#> |   |   |   [60] V2 <= 83
#> |   |   |   |   [61] V6 <= 0 *
#> |   |   |   |   [62] V6 > 0
#> |   |   |   |   |   [63] V2 <= 67 *
#> |   |   |   |   |   [64] V2 > 67 *
#> |   |   |   [65] V2 > 83 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V7 <= 110 *
#> |   |   |   [5] V7 > 110
#> |   |   |   |   [6] V4 <= 0
#> |   |   |   |   |   [7] V3 <= 2 *
#> |   |   |   |   |   [8] V3 > 2
#> |   |   |   |   |   |   [9] V2 <= 51 *
#> |   |   |   |   |   |   [10] V2 > 51 *
#> |   |   |   |   [11] V4 > 0
#> |   |   |   |   |   [12] V5 <= 4
#> |   |   |   |   |   |   [13] V5 <= 0 *
#> |   |   |   |   |   |   [14] V5 > 0 *
#> |   |   |   |   |   [15] V5 > 4 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 170
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V2 <= 61 *
#> |   |   |   |   |   [20] V2 > 61
#> |   |   |   |   |   |   [21] V2 <= 66 *
#> |   |   |   |   |   |   [22] V2 > 66 *
#> |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   |   [25] V2 <= 70
#> |   |   |   |   |   |   |   [26] V7 <= 160
#> |   |   |   |   |   |   |   |   [27] V5 <= 6 *
#> |   |   |   |   |   |   |   |   [28] V5 > 6 *
#> |   |   |   |   |   |   |   [29] V7 > 160 *
#> |   |   |   |   |   |   [30] V2 > 70 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V2 <= 62
#> |   |   |   |   |   |   |   [33] V3 <= 4 *
#> |   |   |   |   |   |   |   [34] V3 > 4 *
#> |   |   |   |   |   |   [35] V2 > 62
#> |   |   |   |   |   |   |   [36] V7 <= 118 *
#> |   |   |   |   |   |   |   [37] V7 > 118
#> |   |   |   |   |   |   |   |   [38] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [39] V7 > 135
#> |   |   |   |   |   |   |   |   |   [40] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 149 *
#> |   |   |   [42] V5 > 170
#> |   |   |   |   [43] V2 <= 59 *
#> |   |   |   |   [44] V2 > 59 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 168
#> |   |   |   [47] V3 <= 7
#> |   |   |   |   [48] V4 <= 0
#> |   |   |   |   |   [49] V5 <= 114
#> |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   [52] V3 <= 2 *
#> |   |   |   |   |   |   |   [53] V3 > 2
#> |   |   |   |   |   |   |   |   [54] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [55] V3 > 3
#> |   |   |   |   |   |   |   |   |   [56] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [57] V3 > 4 *
#> |   |   |   |   |   [58] V5 > 114 *
#> |   |   |   |   [59] V4 > 0
#> |   |   |   |   |   [60] V2 <= 84 *
#> |   |   |   |   |   [61] V2 > 84 *
#> |   |   |   [62] V3 > 7
#> |   |   |   |   [63] V5 <= 10
#> |   |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   |   [65] V6 > 0 *
#> |   |   |   |   [66] V5 > 10 *
#> |   |   [67] V5 > 168 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 56
#> |   |   |   [4] V5 <= 36
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V7 <= 115 *
#> |   |   |   |   |   [8] V7 > 115
#> |   |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   |   [10] V2 <= 45 *
#> |   |   |   |   |   |   |   [11] V2 > 45 *
#> |   |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   |   [13] V2 <= 45 *
#> |   |   |   |   |   |   |   [14] V2 > 45 *
#> |   |   |   [15] V5 > 36
#> |   |   |   |   [16] V2 <= 49 *
#> |   |   |   |   [17] V2 > 49 *
#> |   |   [18] V2 > 56
#> |   |   |   [19] V5 <= 170
#> |   |   |   |   [20] V5 <= 15
#> |   |   |   |   |   [21] V7 <= 112
#> |   |   |   |   |   |   [22] V2 <= 65 *
#> |   |   |   |   |   |   [23] V2 > 65 *
#> |   |   |   |   |   [24] V7 > 112
#> |   |   |   |   |   |   [25] V3 <= 2
#> |   |   |   |   |   |   |   [26] V6 <= 0 *
#> |   |   |   |   |   |   |   [27] V6 > 0 *
#> |   |   |   |   |   |   [28] V3 > 2
#> |   |   |   |   |   |   |   [29] V5 <= 3
#> |   |   |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   |   |   |   [32] V5 <= 0
#> |   |   |   |   |   |   |   |   |   |   [33] V7 <= 153 *
#> |   |   |   |   |   |   |   |   |   |   [34] V7 > 153 *
#> |   |   |   |   |   |   |   |   |   [35] V5 > 0 *
#> |   |   |   |   |   |   |   [36] V5 > 3
#> |   |   |   |   |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [39] V7 > 149 *
#> |   |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   |   [41] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   [42] V2 > 67 *
#> |   |   |   |   [43] V5 > 15 *
#> |   |   |   [44] V5 > 170
#> |   |   |   |   [45] V2 <= 67 *
#> |   |   |   |   [46] V2 > 67 *
#> |   [47] V2 > 74
#> |   |   [48] V5 <= 177
#> |   |   |   [49] V4 <= 0
#> |   |   |   |   [50] V7 <= 112
#> |   |   |   |   |   [51] V7 <= 97 *
#> |   |   |   |   |   [52] V7 > 97 *
#> |   |   |   |   [53] V7 > 112
#> |   |   |   |   |   [54] V5 <= 11
#> |   |   |   |   |   |   [55] V5 <= 4 *
#> |   |   |   |   |   |   [56] V5 > 4 *
#> |   |   |   |   |   [57] V5 > 11
#> |   |   |   |   |   |   [58] V6 <= 0 *
#> |   |   |   |   |   |   [59] V6 > 0 *
#> |   |   |   [60] V4 > 0
#> |   |   |   |   [61] V5 <= 7
#> |   |   |   |   |   [62] V2 <= 79 *
#> |   |   |   |   |   [63] V2 > 79
#> |   |   |   |   |   |   [64] V2 <= 83 *
#> |   |   |   |   |   |   [65] V2 > 83 *
#> |   |   |   |   [66] V5 > 7 *
#> |   |   [67] V5 > 177 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 152
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 1 *
#> |   |   |   |   [6] V3 > 1
#> |   |   |   |   |   [7] V5 <= 15
#> |   |   |   |   |   |   [8] V3 <= 7
#> |   |   |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   |   |   |   [11] V3 > 7 *
#> |   |   |   |   |   [12] V5 > 15 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V2 <= 54
#> |   |   |   |   |   [15] V7 <= 116 *
#> |   |   |   |   |   [16] V7 > 116
#> |   |   |   |   |   |   [17] V6 <= 0 *
#> |   |   |   |   |   |   [18] V6 > 0 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   |   [21] V3 <= 5
#> |   |   |   |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   |   |   |   [23] V3 > 2 *
#> |   |   |   |   |   |   [24] V3 > 5
#> |   |   |   |   |   |   |   [25] V7 <= 149
#> |   |   |   |   |   |   |   |   [26] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [27] V5 > 7 *
#> |   |   |   |   |   |   |   [28] V7 > 149 *
#> |   |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   |   [30] V2 <= 72
#> |   |   |   |   |   |   |   [31] V2 <= 69
#> |   |   |   |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   |   |   |   [34] V7 <= 126 *
#> |   |   |   |   |   |   |   |   |   [35] V7 > 126
#> |   |   |   |   |   |   |   |   |   |   [36] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   |   [37] V7 > 149 *
#> |   |   |   |   |   |   |   [38] V2 > 69 *
#> |   |   |   |   |   |   [39] V2 > 72 *
#> |   |   [40] V5 > 152
#> |   |   |   [41] V6 <= 0 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V7 <= 140 *
#> |   |   |   |   [44] V7 > 140 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 169
#> |   |   |   [47] V2 <= 88
#> |   |   |   |   [48] V5 <= 12
#> |   |   |   |   |   [49] V6 <= 0
#> |   |   |   |   |   |   [50] V5 <= 4 *
#> |   |   |   |   |   |   [51] V5 > 4 *
#> |   |   |   |   |   [52] V6 > 0
#> |   |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   |   [54] V3 <= 4 *
#> |   |   |   |   |   |   |   [55] V3 > 4 *
#> |   |   |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   [59] V5 > 12
#> |   |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   |   [61] V6 > 0 *
#> |   |   |   [62] V2 > 88 *
#> |   |   [63] V5 > 169 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 14
#> |   |   |   [4] V2 <= 72
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V3 <= 6
#> |   |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   |   [8] V2 > 60 *
#> |   |   |   |   |   [9] V3 > 6 *
#> |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   [11] V2 <= 60
#> |   |   |   |   |   |   [12] V7 <= 110 *
#> |   |   |   |   |   |   [13] V7 > 110
#> |   |   |   |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   |   |   |   [15] V2 <= 41 *
#> |   |   |   |   |   |   |   |   [16] V2 > 41 *
#> |   |   |   |   |   |   |   [17] V6 > 0
#> |   |   |   |   |   |   |   |   [18] V7 <= 138 *
#> |   |   |   |   |   |   |   |   [19] V7 > 138 *
#> |   |   |   |   |   [20] V2 > 60
#> |   |   |   |   |   |   [21] V5 <= 2
#> |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   [23] V3 > 3
#> |   |   |   |   |   |   |   |   [24] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [25] V3 > 8 *
#> |   |   |   |   |   |   [26] V5 > 2
#> |   |   |   |   |   |   |   [27] V3 <= 17
#> |   |   |   |   |   |   |   |   [28] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [29] V5 > 8 *
#> |   |   |   |   |   |   |   [30] V3 > 17 *
#> |   |   |   [31] V2 > 72
#> |   |   |   |   [32] V7 <= 107 *
#> |   |   |   |   [33] V7 > 107
#> |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   [35] V5 <= 3 *
#> |   |   |   |   |   |   [36] V5 > 3 *
#> |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   [38] V4 <= 0 *
#> |   |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   |   [40] V7 <= 140
#> |   |   |   |   |   |   |   |   [41] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [42] V7 > 126 *
#> |   |   |   |   |   |   |   [43] V7 > 140 *
#> |   |   [44] V5 > 14
#> |   |   |   [45] V2 <= 58 *
#> |   |   |   [46] V2 > 58
#> |   |   |   |   [47] V6 <= 0
#> |   |   |   |   |   [48] V5 <= 125 *
#> |   |   |   |   |   [49] V5 > 125 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V2 <= 75 *
#> |   |   |   |   |   [52] V2 > 75 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 78
#> |   |   |   [4] V5 <= 152
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V5 <= 16
#> |   |   |   |   |   |   [8] V2 <= 62 *
#> |   |   |   |   |   |   [9] V2 > 62
#> |   |   |   |   |   |   |   [10] V5 <= 6 *
#> |   |   |   |   |   |   |   [11] V5 > 6 *
#> |   |   |   |   |   [12] V5 > 16 *
#> |   |   |   [13] V5 > 152
#> |   |   |   |   [14] V6 <= 0
#> |   |   |   |   |   [15] V3 <= 6
#> |   |   |   |   |   |   [16] V3 <= 2 *
#> |   |   |   |   |   |   [17] V3 > 2 *
#> |   |   |   |   |   [18] V3 > 6 *
#> |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   [20] V5 <= 179 *
#> |   |   |   |   |   [21] V5 > 179 *
#> |   |   [22] V2 > 78
#> |   |   |   [23] V5 <= 177
#> |   |   |   |   [24] V6 <= 0
#> |   |   |   |   |   [25] V2 <= 87 *
#> |   |   |   |   |   [26] V2 > 87 *
#> |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   [28] V2 <= 84 *
#> |   |   |   |   |   [29] V2 > 84 *
#> |   |   |   [30] V5 > 177 *
#> |   [31] V4 > 0
#> |   |   [32] V6 <= 0
#> |   |   |   [33] V5 <= 1
#> |   |   |   |   [34] V3 <= 2 *
#> |   |   |   |   [35] V3 > 2
#> |   |   |   |   |   [36] V2 <= 65 *
#> |   |   |   |   |   [37] V2 > 65 *
#> |   |   |   [38] V5 > 1
#> |   |   |   |   [39] V2 <= 57 *
#> |   |   |   |   [40] V2 > 57
#> |   |   |   |   |   [41] V2 <= 79
#> |   |   |   |   |   |   [42] V7 <= 142
#> |   |   |   |   |   |   |   [43] V5 <= 9 *
#> |   |   |   |   |   |   |   [44] V5 > 9 *
#> |   |   |   |   |   |   [45] V7 > 142 *
#> |   |   |   |   |   [46] V2 > 79 *
#> |   |   [47] V6 > 0
#> |   |   |   [48] V7 <= 110 *
#> |   |   |   [49] V7 > 110
#> |   |   |   |   [50] V5 <= 0
#> |   |   |   |   |   [51] V2 <= 60 *
#> |   |   |   |   |   [52] V2 > 60
#> |   |   |   |   |   |   [53] V7 <= 140 *
#> |   |   |   |   |   |   [54] V7 > 140 *
#> |   |   |   |   [55] V5 > 0
#> |   |   |   |   |   [56] V7 <= 162
#> |   |   |   |   |   |   [57] V2 <= 67
#> |   |   |   |   |   |   |   [58] V7 <= 133 *
#> |   |   |   |   |   |   |   [59] V7 > 133 *
#> |   |   |   |   |   |   [60] V2 > 67 *
#> |   |   |   |   |   [61] V7 > 162 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V2 <= 60
#> |   |   [3] V7 <= 110 *
#> |   |   [4] V7 > 110
#> |   |   |   [5] V2 <= 54
#> |   |   |   |   [6] V2 <= 40 *
#> |   |   |   |   [7] V2 > 40
#> |   |   |   |   |   [8] V2 <= 51
#> |   |   |   |   |   |   [9] V5 <= 3
#> |   |   |   |   |   |   |   [10] V2 <= 46 *
#> |   |   |   |   |   |   |   [11] V2 > 46 *
#> |   |   |   |   |   |   [12] V5 > 3
#> |   |   |   |   |   |   |   [13] V5 <= 11 *
#> |   |   |   |   |   |   |   [14] V5 > 11 *
#> |   |   |   |   |   [15] V2 > 51 *
#> |   |   |   [16] V2 > 54
#> |   |   |   |   [17] V5 <= 169
#> |   |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   |   [20] V2 <= 57 *
#> |   |   |   |   |   |   [21] V2 > 57 *
#> |   |   |   |   [22] V5 > 169 *
#> |   [23] V2 > 60
#> |   |   [24] V2 <= 78
#> |   |   |   [25] V7 <= 90 *
#> |   |   |   [26] V7 > 90
#> |   |   |   |   [27] V4 <= 0
#> |   |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   |   [29] V5 <= 170 *
#> |   |   |   |   |   |   [30] V5 > 170 *
#> |   |   |   |   |   [31] V6 > 0
#> |   |   |   |   |   |   [32] V3 <= 7
#> |   |   |   |   |   |   |   [33] V7 <= 150
#> |   |   |   |   |   |   |   |   [34] V2 <= 73 *
#> |   |   |   |   |   |   |   |   [35] V2 > 73 *
#> |   |   |   |   |   |   |   [36] V7 > 150 *
#> |   |   |   |   |   |   [37] V3 > 7 *
#> |   |   |   |   [38] V4 > 0
#> |   |   |   |   |   [39] V3 <= 1 *
#> |   |   |   |   |   [40] V3 > 1
#> |   |   |   |   |   |   [41] V5 <= 4
#> |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   [43] V6 > 0
#> |   |   |   |   |   |   |   |   [44] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [45] V3 <= 11
#> |   |   |   |   |   |   |   |   |   |   [46] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [47] V3 > 5 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 11 *
#> |   |   |   |   |   |   |   |   [49] V5 > 1 *
#> |   |   |   |   |   |   [50] V5 > 4
#> |   |   |   |   |   |   |   [51] V6 <= 0
#> |   |   |   |   |   |   |   |   [52] V3 <= 12 *
#> |   |   |   |   |   |   |   |   [53] V3 > 12 *
#> |   |   |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   |   |   [55] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [56] V5 > 9 *
#> |   |   [57] V2 > 78
#> |   |   |   [58] V2 <= 89
#> |   |   |   |   [59] V5 <= 177
#> |   |   |   |   |   [60] V5 <= 1
#> |   |   |   |   |   |   [61] V3 <= 6 *
#> |   |   |   |   |   |   [62] V3 > 6 *
#> |   |   |   |   |   [63] V5 > 1
#> |   |   |   |   |   |   [64] V4 <= 0
#> |   |   |   |   |   |   |   [65] V2 <= 82 *
#> |   |   |   |   |   |   |   [66] V2 > 82
#> |   |   |   |   |   |   |   |   [67] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [68] V5 > 8 *
#> |   |   |   |   |   |   [69] V4 > 0 *
#> |   |   |   |   [70] V5 > 177 *
#> |   |   |   [71] V2 > 89 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V3 <= 2
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V3 > 2
#> |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   [11] V7 <= 136
#> |   |   |   |   |   |   [12] V2 <= 64 *
#> |   |   |   |   |   |   [13] V2 > 64 *
#> |   |   |   |   |   [14] V7 > 136
#> |   |   |   |   |   |   [15] V2 <= 60 *
#> |   |   |   |   |   |   [16] V2 > 60 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V2 <= 54
#> |   |   |   |   |   |   [19] V7 <= 110 *
#> |   |   |   |   |   |   [20] V7 > 110
#> |   |   |   |   |   |   |   [21] V2 <= 42 *
#> |   |   |   |   |   |   |   [22] V2 > 42
#> |   |   |   |   |   |   |   |   [23] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [24] V7 > 120 *
#> |   |   |   |   |   [25] V2 > 54
#> |   |   |   |   |   |   [26] V7 <= 149
#> |   |   |   |   |   |   |   [27] V5 <= 1
#> |   |   |   |   |   |   |   |   [28] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [29] V3 > 8 *
#> |   |   |   |   |   |   |   [30] V5 > 1
#> |   |   |   |   |   |   |   |   [31] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [32] V5 > 3
#> |   |   |   |   |   |   |   |   |   [33] V6 <= 0
#> |   |   |   |   |   |   |   |   |   |   [34] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   |   [35] V3 > 10 *
#> |   |   |   |   |   |   |   |   |   [36] V6 > 0 *
#> |   |   |   |   |   |   [37] V7 > 149
#> |   |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   |   |   [40] V7 <= 158 *
#> |   |   |   |   |   |   |   |   [41] V7 > 158 *
#> |   |   [42] V2 > 74
#> |   |   |   [43] V7 <= 145
#> |   |   |   |   [44] V3 <= 11
#> |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   [47] V5 <= 6
#> |   |   |   |   |   |   |   [48] V2 <= 79 *
#> |   |   |   |   |   |   |   [49] V2 > 79 *
#> |   |   |   |   |   |   [50] V5 > 6 *
#> |   |   |   |   [51] V3 > 11 *
#> |   |   |   [52] V7 > 145
#> |   |   |   |   [53] V5 <= 12
#> |   |   |   |   |   [54] V5 <= 6
#> |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   [56] V6 > 0 *
#> |   |   |   |   |   [57] V5 > 6 *
#> |   |   |   |   [58] V5 > 12 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 16
#> |   |   |   |   |   |   [7] V3 <= 3 *
#> |   |   |   |   |   |   [8] V3 > 3 *
#> |   |   |   |   |   [9] V5 > 16 *
#> |   |   |   |   [10] V6 > 0
#> |   |   |   |   |   [11] V7 <= 136 *
#> |   |   |   |   |   [12] V7 > 136 *
#> |   |   |   [13] V4 > 0
#> |   |   |   |   [14] V7 <= 110
#> |   |   |   |   |   [15] V6 <= 0 *
#> |   |   |   |   |   [16] V6 > 0 *
#> |   |   |   |   [17] V7 > 110
#> |   |   |   |   |   [18] V5 <= 0 *
#> |   |   |   |   |   [19] V5 > 0
#> |   |   |   |   |   |   [20] V2 <= 54
#> |   |   |   |   |   |   |   [21] V3 <= 5 *
#> |   |   |   |   |   |   |   [22] V3 > 5 *
#> |   |   |   |   |   |   [23] V2 > 54
#> |   |   |   |   |   |   |   [24] V5 <= 2 *
#> |   |   |   |   |   |   |   [25] V5 > 2
#> |   |   |   |   |   |   |   |   [26] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [27] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [28] V7 > 138 *
#> |   |   |   |   |   |   |   |   [29] V5 > 6
#> |   |   |   |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   [32] V5 > 169
#> |   |   |   [33] V3 <= 10 *
#> |   |   |   [34] V3 > 10 *
#> |   [35] V2 > 70
#> |   |   [36] V4 <= 0
#> |   |   |   [37] V6 <= 0
#> |   |   |   |   [38] V5 <= 165
#> |   |   |   |   |   [39] V7 <= 120 *
#> |   |   |   |   |   [40] V7 > 120 *
#> |   |   |   |   [41] V5 > 165 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V5 <= 152
#> |   |   |   |   |   [44] V7 <= 112 *
#> |   |   |   |   |   [45] V7 > 112
#> |   |   |   |   |   |   [46] V2 <= 77 *
#> |   |   |   |   |   |   [47] V2 > 77 *
#> |   |   |   |   [48] V5 > 152 *
#> |   |   [49] V4 > 0
#> |   |   |   [50] V5 <= 7
#> |   |   |   |   [51] V2 <= 86
#> |   |   |   |   |   [52] V2 <= 75 *
#> |   |   |   |   |   [53] V2 > 75
#> |   |   |   |   |   |   [54] V7 <= 168
#> |   |   |   |   |   |   |   [55] V6 <= 0 *
#> |   |   |   |   |   |   |   [56] V6 > 0 *
#> |   |   |   |   |   |   [57] V7 > 168 *
#> |   |   |   |   [58] V2 > 86 *
#> |   |   |   [59] V5 > 7
#> |   |   |   |   [60] V6 <= 0 *
#> |   |   |   |   [61] V6 > 0 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V5 <= 16
#> |   |   |   |   [5] V2 <= 48
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0 *
#> |   |   |   |   [8] V2 > 48
#> |   |   |   |   |   [9] V3 <= 2
#> |   |   |   |   |   |   [10] V6 <= 0 *
#> |   |   |   |   |   |   [11] V6 > 0 *
#> |   |   |   |   |   [12] V3 > 2
#> |   |   |   |   |   |   [13] V4 <= 0
#> |   |   |   |   |   |   |   [14] V3 <= 7 *
#> |   |   |   |   |   |   |   [15] V3 > 7 *
#> |   |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   |   [18] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [19] V3 > 6
#> |   |   |   |   |   |   |   |   |   [20] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [21] V5 > 2
#> |   |   |   |   |   |   |   |   |   |   [22] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   |   [23] V3 > 12 *
#> |   |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   |   [25] V3 <= 11
#> |   |   |   |   |   |   |   |   |   [26] V3 <= 9
#> |   |   |   |   |   |   |   |   |   |   [27] V5 <= 1
#> |   |   |   |   |   |   |   |   |   |   |   [28] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   |   [29] V3 > 4 *
#> |   |   |   |   |   |   |   |   |   |   [30] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 9 *
#> |   |   |   |   |   |   |   |   [32] V3 > 11 *
#> |   |   |   [33] V5 > 16
#> |   |   |   |   [34] V5 <= 93 *
#> |   |   |   |   [35] V5 > 93 *
#> |   |   [36] V5 > 170
#> |   |   |   [37] V7 <= 117 *
#> |   |   |   [38] V7 > 117 *
#> |   [39] V2 > 74
#> |   |   [40] V5 <= 169
#> |   |   |   [41] V4 <= 0
#> |   |   |   |   [42] V6 <= 0
#> |   |   |   |   |   [43] V2 <= 87 *
#> |   |   |   |   |   [44] V2 > 87 *
#> |   |   |   |   [45] V6 > 0
#> |   |   |   |   |   [46] V3 <= 2 *
#> |   |   |   |   |   [47] V3 > 2
#> |   |   |   |   |   |   [48] V5 <= 11 *
#> |   |   |   |   |   |   [49] V5 > 11 *
#> |   |   |   [50] V4 > 0
#> |   |   |   |   [51] V2 <= 81
#> |   |   |   |   |   [52] V3 <= 12
#> |   |   |   |   |   |   [53] V2 <= 77 *
#> |   |   |   |   |   |   [54] V2 > 77 *
#> |   |   |   |   |   [55] V3 > 12 *
#> |   |   |   |   [56] V2 > 81 *
#> |   |   [57] V5 > 169 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 59
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 2 *
#> |   |   |   [5] V5 > 2
#> |   |   |   |   [6] V2 <= 55
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   |   [9] V2 > 55 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V5 <= 8
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V7 <= 170 *
#> |   |   |   |   |   [14] V7 > 170 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V2 <= 56
#> |   |   |   |   |   |   [17] V2 <= 44 *
#> |   |   |   |   |   |   [18] V2 > 44 *
#> |   |   |   |   |   [19] V2 > 56 *
#> |   |   |   [20] V5 > 8 *
#> |   [21] V2 > 59
#> |   |   [22] V5 <= 177
#> |   |   |   [23] V2 <= 74
#> |   |   |   |   [24] V4 <= 0
#> |   |   |   |   |   [25] V3 <= 6
#> |   |   |   |   |   |   [26] V3 <= 2 *
#> |   |   |   |   |   |   [27] V3 > 2 *
#> |   |   |   |   |   [28] V3 > 6 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V7 <= 102 *
#> |   |   |   |   |   [31] V7 > 102
#> |   |   |   |   |   |   [32] V3 <= 5
#> |   |   |   |   |   |   |   [33] V7 <= 140 *
#> |   |   |   |   |   |   |   [34] V7 > 140 *
#> |   |   |   |   |   |   [35] V3 > 5
#> |   |   |   |   |   |   |   [36] V7 <= 120 *
#> |   |   |   |   |   |   |   [37] V7 > 120
#> |   |   |   |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [39] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   [40] V5 > 8 *
#> |   |   |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   |   |   [42] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [43] V2 > 66 *
#> |   |   |   [44] V2 > 74
#> |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   [46] V4 <= 0 *
#> |   |   |   |   |   [47] V4 > 0
#> |   |   |   |   |   |   [48] V2 <= 81 *
#> |   |   |   |   |   |   [49] V2 > 81 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   [52] V5 > 0
#> |   |   |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   |   |   [54] V7 <= 101 *
#> |   |   |   |   |   |   |   [55] V7 > 101
#> |   |   |   |   |   |   |   |   [56] V7 <= 121 *
#> |   |   |   |   |   |   |   |   [57] V7 > 121
#> |   |   |   |   |   |   |   |   |   [58] V7 <= 145 *
#> |   |   |   |   |   |   |   |   |   [59] V7 > 145 *
#> |   |   |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   |   |   [61] V5 <= 7 *
#> |   |   |   |   |   |   |   [62] V5 > 7 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V2 <= 54
#> |   |   [3] V5 <= 36
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 152 *
#> |   |   |   |   [6] V7 > 152 *
#> |   |   |   [7] V6 > 0
#> |   |   |   |   [8] V5 <= 1 *
#> |   |   |   |   [9] V5 > 1 *
#> |   |   [10] V5 > 36
#> |   |   |   [11] V6 <= 0 *
#> |   |   |   [12] V6 > 0 *
#> |   [13] V2 > 54
#> |   |   [14] V5 <= 177
#> |   |   |   [15] V2 <= 81
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V2 <= 60 *
#> |   |   |   |   |   [18] V2 > 60
#> |   |   |   |   |   |   [19] V7 <= 150
#> |   |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   |   |   [22] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [23] V5 > 8 *
#> |   |   |   |   |   |   [24] V7 > 150 *
#> |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   [26] V2 <= 63
#> |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   [28] V3 <= 5 *
#> |   |   |   |   |   |   |   [29] V3 > 5 *
#> |   |   |   |   |   |   [30] V6 > 0
#> |   |   |   |   |   |   |   [31] V2 <= 58 *
#> |   |   |   |   |   |   |   [32] V2 > 58 *
#> |   |   |   |   |   [33] V2 > 63
#> |   |   |   |   |   |   [34] V7 <= 175
#> |   |   |   |   |   |   |   [35] V6 <= 0
#> |   |   |   |   |   |   |   |   [36] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [37] V2 > 66
#> |   |   |   |   |   |   |   |   |   [38] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [39] V3 > 10 *
#> |   |   |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   |   |   [41] V5 <= 8
#> |   |   |   |   |   |   |   |   |   [42] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   [43] V2 > 66
#> |   |   |   |   |   |   |   |   |   |   [44] V7 <= 119 *
#> |   |   |   |   |   |   |   |   |   |   [45] V7 > 119
#> |   |   |   |   |   |   |   |   |   |   |   [46] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   |   |   [47] V3 > 9 *
#> |   |   |   |   |   |   |   |   [48] V5 > 8 *
#> |   |   |   |   |   |   [49] V7 > 175 *
#> |   |   |   [50] V2 > 81
#> |   |   |   |   [51] V4 <= 0
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V2 <= 87 *
#> |   |   |   |   |   |   [55] V2 > 87 *
#> |   |   |   |   [56] V4 > 0 *
#> |   |   [57] V5 > 177 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 177
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V5 > 16
#> |   |   |   |   |   [9] V3 <= 6 *
#> |   |   |   |   |   [10] V3 > 6 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V2 <= 58 *
#> |   |   |   |   [13] V2 > 58
#> |   |   |   |   |   [14] V7 <= 140
#> |   |   |   |   |   |   [15] V3 <= 2 *
#> |   |   |   |   |   |   [16] V3 > 2
#> |   |   |   |   |   |   |   [17] V2 <= 84
#> |   |   |   |   |   |   |   |   [18] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [19] V3 > 7 *
#> |   |   |   |   |   |   |   [20] V2 > 84 *
#> |   |   |   |   |   [21] V7 > 140
#> |   |   |   |   |   |   [22] V2 <= 73 *
#> |   |   |   |   |   |   [23] V2 > 73 *
#> |   |   [24] V5 > 177 *
#> |   [25] V4 > 0
#> |   |   [26] V7 <= 175
#> |   |   |   [27] V2 <= 66
#> |   |   |   |   [28] V6 <= 0
#> |   |   |   |   |   [29] V7 <= 120 *
#> |   |   |   |   |   [30] V7 > 120
#> |   |   |   |   |   |   [31] V5 <= 6
#> |   |   |   |   |   |   |   [32] V7 <= 140 *
#> |   |   |   |   |   |   |   [33] V7 > 140 *
#> |   |   |   |   |   |   [34] V5 > 6 *
#> |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   [36] V5 <= 1
#> |   |   |   |   |   |   [37] V7 <= 130
#> |   |   |   |   |   |   |   [38] V3 <= 3 *
#> |   |   |   |   |   |   |   [39] V3 > 3 *
#> |   |   |   |   |   |   [40] V7 > 130 *
#> |   |   |   |   |   [41] V5 > 1
#> |   |   |   |   |   |   [42] V7 <= 147 *
#> |   |   |   |   |   |   [43] V7 > 147 *
#> |   |   |   [44] V2 > 66
#> |   |   |   |   [45] V2 <= 85
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V3 <= 10
#> |   |   |   |   |   |   |   [48] V5 <= 3 *
#> |   |   |   |   |   |   |   [49] V5 > 3 *
#> |   |   |   |   |   |   [50] V3 > 10 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V2 <= 74
#> |   |   |   |   |   |   |   [53] V3 <= 11 *
#> |   |   |   |   |   |   |   [54] V3 > 11 *
#> |   |   |   |   |   |   [55] V2 > 74
#> |   |   |   |   |   |   |   [56] V2 <= 80 *
#> |   |   |   |   |   |   |   [57] V2 > 80 *
#> |   |   |   |   [58] V2 > 85 *
#> |   |   [59] V7 > 175
#> |   |   |   [60] V3 <= 5 *
#> |   |   |   [61] V3 > 5 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V2 <= 80
#> |   |   |   [4] V5 <= 59
#> |   |   |   |   [5] V2 <= 60 *
#> |   |   |   |   [6] V2 > 60
#> |   |   |   |   |   [7] V3 <= 7 *
#> |   |   |   |   |   [8] V3 > 7 *
#> |   |   |   [9] V5 > 59 *
#> |   |   [10] V2 > 80
#> |   |   |   [11] V5 <= 29 *
#> |   |   |   [12] V5 > 29 *
#> |   [13] V7 > 112
#> |   |   [14] V2 <= 66
#> |   |   |   [15] V2 <= 54
#> |   |   |   |   [16] V2 <= 38 *
#> |   |   |   |   [17] V2 > 38
#> |   |   |   |   |   [18] V5 <= 147
#> |   |   |   |   |   |   [19] V6 <= 0
#> |   |   |   |   |   |   |   [20] V3 <= 5 *
#> |   |   |   |   |   |   |   [21] V3 > 5 *
#> |   |   |   |   |   |   [22] V6 > 0 *
#> |   |   |   |   |   [23] V5 > 147 *
#> |   |   |   [24] V2 > 54
#> |   |   |   |   [25] V4 <= 0
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V5 <= 170 *
#> |   |   |   |   |   |   [28] V5 > 170 *
#> |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   [30] V4 > 0
#> |   |   |   |   |   [31] V7 <= 146
#> |   |   |   |   |   |   [32] V3 <= 4 *
#> |   |   |   |   |   |   [33] V3 > 4
#> |   |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   |   [35] V6 > 0 *
#> |   |   |   |   |   [36] V7 > 146
#> |   |   |   |   |   |   [37] V7 <= 153 *
#> |   |   |   |   |   |   [38] V7 > 153
#> |   |   |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   |   |   [40] V6 > 0 *
#> |   |   [41] V2 > 66
#> |   |   |   [42] V5 <= 177
#> |   |   |   |   [43] V4 <= 0
#> |   |   |   |   |   [44] V7 <= 160
#> |   |   |   |   |   |   [45] V2 <= 70 *
#> |   |   |   |   |   |   [46] V2 > 70
#> |   |   |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   [49] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [50] V3 > 5 *
#> |   |   |   |   |   [51] V7 > 160 *
#> |   |   |   |   [52] V4 > 0
#> |   |   |   |   |   [53] V7 <= 147
#> |   |   |   |   |   |   [54] V2 <= 72
#> |   |   |   |   |   |   |   [55] V2 <= 68 *
#> |   |   |   |   |   |   |   [56] V2 > 68 *
#> |   |   |   |   |   |   [57] V2 > 72
#> |   |   |   |   |   |   |   [58] V5 <= 4 *
#> |   |   |   |   |   |   |   [59] V5 > 4 *
#> |   |   |   |   |   [60] V7 > 147
#> |   |   |   |   |   |   [61] V7 <= 162
#> |   |   |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   |   |   [63] V6 > 0 *
#> |   |   |   |   |   |   [64] V7 > 162
#> |   |   |   |   |   |   |   [65] V5 <= 2 *
#> |   |   |   |   |   |   |   [66] V5 > 2 *
#> |   |   |   [67] V5 > 177 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 170
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 111 *
#> |   |   |   |   [6] V7 > 111
#> |   |   |   |   |   [7] V7 <= 149
#> |   |   |   |   |   |   [8] V5 <= 6
#> |   |   |   |   |   |   |   [9] V4 <= 0 *
#> |   |   |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   |   |   [11] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [12] V2 > 66 *
#> |   |   |   |   |   |   [13] V5 > 6
#> |   |   |   |   |   |   |   [14] V4 <= 0 *
#> |   |   |   |   |   |   |   [15] V4 > 0 *
#> |   |   |   |   |   [16] V7 > 149
#> |   |   |   |   |   |   [17] V5 <= 9
#> |   |   |   |   |   |   |   [18] V5 <= 3 *
#> |   |   |   |   |   |   |   [19] V5 > 3 *
#> |   |   |   |   |   |   [20] V5 > 9 *
#> |   |   |   [21] V6 > 0
#> |   |   |   |   [22] V3 <= 2 *
#> |   |   |   |   [23] V3 > 2
#> |   |   |   |   |   [24] V3 <= 4
#> |   |   |   |   |   |   [25] V5 <= 0 *
#> |   |   |   |   |   |   [26] V5 > 0 *
#> |   |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   |   [28] V4 <= 0 *
#> |   |   |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   |   |   [30] V2 <= 66
#> |   |   |   |   |   |   |   |   [31] V3 <= 13
#> |   |   |   |   |   |   |   |   |   [32] V3 <= 7
#> |   |   |   |   |   |   |   |   |   |   [33] V3 <= 6 *
#> |   |   |   |   |   |   |   |   |   |   [34] V3 > 6 *
#> |   |   |   |   |   |   |   |   |   [35] V3 > 7 *
#> |   |   |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   |   |   |   [37] V2 > 66
#> |   |   |   |   |   |   |   |   [38] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [39] V2 > 69 *
#> |   |   [40] V5 > 170
#> |   |   |   [41] V3 <= 3
#> |   |   |   |   [42] V3 <= 2 *
#> |   |   |   |   [43] V3 > 2 *
#> |   |   |   [44] V3 > 3 *
#> |   [45] V2 > 74
#> |   |   [46] V5 <= 169
#> |   |   |   [47] V2 <= 86
#> |   |   |   |   [48] V4 <= 0
#> |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   |   [51] V2 <= 81
#> |   |   |   |   |   |   |   [52] V3 <= 6 *
#> |   |   |   |   |   |   |   [53] V3 > 6 *
#> |   |   |   |   |   |   [54] V2 > 81 *
#> |   |   |   |   [55] V4 > 0
#> |   |   |   |   |   [56] V2 <= 77 *
#> |   |   |   |   |   [57] V2 > 77
#> |   |   |   |   |   |   [58] V2 <= 78 *
#> |   |   |   |   |   |   [59] V2 > 78
#> |   |   |   |   |   |   |   [60] V7 <= 160
#> |   |   |   |   |   |   |   |   [61] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [62] V5 > 7 *
#> |   |   |   |   |   |   |   [63] V7 > 160 *
#> |   |   |   [64] V2 > 86
#> |   |   |   |   [65] V7 <= 139
#> |   |   |   |   |   [66] V2 <= 90 *
#> |   |   |   |   |   [67] V2 > 90 *
#> |   |   |   |   [68] V7 > 139 *
#> |   |   [69] V5 > 169 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V5 <= 15
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 4
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   |   [8] V5 <= 3 *
#> |   |   |   |   |   |   [9] V5 > 3 *
#> |   |   |   |   [10] V3 > 4
#> |   |   |   |   |   [11] V3 <= 6 *
#> |   |   |   |   |   [12] V3 > 6
#> |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   [14] V6 > 0 *
#> |   |   |   [15] V4 > 0
#> |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   [17] V2 <= 62
#> |   |   |   |   |   |   [18] V5 <= 3 *
#> |   |   |   |   |   |   [19] V5 > 3 *
#> |   |   |   |   |   [20] V2 > 62
#> |   |   |   |   |   |   [21] V2 <= 79
#> |   |   |   |   |   |   |   [22] V2 <= 73
#> |   |   |   |   |   |   |   |   [23] V7 <= 168
#> |   |   |   |   |   |   |   |   |   [24] V7 <= 133 *
#> |   |   |   |   |   |   |   |   |   [25] V7 > 133 *
#> |   |   |   |   |   |   |   |   [26] V7 > 168 *
#> |   |   |   |   |   |   |   [27] V2 > 73 *
#> |   |   |   |   |   |   [28] V2 > 79 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V7 <= 110 *
#> |   |   |   |   |   [31] V7 > 110
#> |   |   |   |   |   |   [32] V2 <= 74
#> |   |   |   |   |   |   |   [33] V2 <= 55
#> |   |   |   |   |   |   |   |   [34] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [35] V2 > 43 *
#> |   |   |   |   |   |   |   [36] V2 > 55
#> |   |   |   |   |   |   |   |   [37] V2 <= 68
#> |   |   |   |   |   |   |   |   |   [38] V7 <= 160
#> |   |   |   |   |   |   |   |   |   |   [39] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [40] V5 > 5 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 160 *
#> |   |   |   |   |   |   |   |   [42] V2 > 68 *
#> |   |   |   |   |   |   [43] V2 > 74
#> |   |   |   |   |   |   |   [44] V2 <= 80 *
#> |   |   |   |   |   |   |   [45] V2 > 80 *
#> |   |   [46] V5 > 15
#> |   |   |   [47] V5 <= 128
#> |   |   |   |   [48] V3 <= 6
#> |   |   |   |   |   [49] V5 <= 60 *
#> |   |   |   |   |   [50] V5 > 60 *
#> |   |   |   |   [51] V3 > 6 *
#> |   |   |   [52] V5 > 128 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V7 <= 112
#> |   |   |   [4] V2 <= 54 *
#> |   |   |   [5] V2 > 54
#> |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   [8] V2 <= 71 *
#> |   |   |   |   |   [9] V2 > 71 *
#> |   |   [10] V7 > 112
#> |   |   |   [11] V5 <= 170
#> |   |   |   |   [12] V2 <= 62 *
#> |   |   |   |   [13] V2 > 62
#> |   |   |   |   |   [14] V3 <= 7
#> |   |   |   |   |   |   [15] V2 <= 82
#> |   |   |   |   |   |   |   [16] V3 <= 4
#> |   |   |   |   |   |   |   |   [17] V5 <= 3 *
#> |   |   |   |   |   |   |   |   [18] V5 > 3 *
#> |   |   |   |   |   |   |   [19] V3 > 4 *
#> |   |   |   |   |   |   [20] V2 > 82
#> |   |   |   |   |   |   |   [21] V7 <= 130 *
#> |   |   |   |   |   |   |   [22] V7 > 130 *
#> |   |   |   |   |   [23] V3 > 7 *
#> |   |   |   [24] V5 > 170
#> |   |   |   |   [25] V2 <= 52 *
#> |   |   |   |   [26] V2 > 52 *
#> |   [27] V4 > 0
#> |   |   [28] V6 <= 0
#> |   |   |   [29] V5 <= 2
#> |   |   |   |   [30] V2 <= 71
#> |   |   |   |   |   [31] V2 <= 65
#> |   |   |   |   |   |   [32] V2 <= 48 *
#> |   |   |   |   |   |   [33] V2 > 48 *
#> |   |   |   |   |   [34] V2 > 65 *
#> |   |   |   |   [35] V2 > 71 *
#> |   |   |   [36] V5 > 2
#> |   |   |   |   [37] V5 <= 6 *
#> |   |   |   |   [38] V5 > 6
#> |   |   |   |   |   [39] V7 <= 110 *
#> |   |   |   |   |   [40] V7 > 110
#> |   |   |   |   |   |   [41] V3 <= 17
#> |   |   |   |   |   |   |   [42] V5 <= 8 *
#> |   |   |   |   |   |   |   [43] V5 > 8 *
#> |   |   |   |   |   |   [44] V3 > 17 *
#> |   |   [45] V6 > 0
#> |   |   |   [46] V7 <= 110
#> |   |   |   |   [47] V3 <= 5 *
#> |   |   |   |   [48] V3 > 5 *
#> |   |   |   [49] V7 > 110
#> |   |   |   |   [50] V7 <= 149
#> |   |   |   |   |   [51] V2 <= 74
#> |   |   |   |   |   |   [52] V2 <= 54 *
#> |   |   |   |   |   |   [53] V2 > 54
#> |   |   |   |   |   |   |   [54] V7 <= 136 *
#> |   |   |   |   |   |   |   [55] V7 > 136 *
#> |   |   |   |   |   [56] V2 > 74
#> |   |   |   |   |   |   [57] V7 <= 130 *
#> |   |   |   |   |   |   [58] V7 > 130 *
#> |   |   |   |   [59] V7 > 149
#> |   |   |   |   |   [60] V5 <= 2 *
#> |   |   |   |   |   [61] V5 > 2
#> |   |   |   |   |   |   [62] V7 <= 169 *
#> |   |   |   |   |   |   [63] V7 > 169 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                                 5.0+  32   5      1          0        1   121
#> 2                                 2.0+  33   2      0          2        0   150
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                               180.0+  35  10      1          9        0   106
#> 5                                115.0  38   2      0        115        0   150
#> 6                               180.0+  36   1      0        180        1   155
#> 7                               180.0+  35   0      0        180        1   119
#> 8                                 5.0+  36   5      1          0        1   115
#> 9                               180.0+  33   6      1          1        1   115
#> 10                              180.0+  38  16      1         10        0   160
#> 11                              180.0+  40  12      1          9        0   153
#> 12                              180.0+  42   3      1          1        1   130
#> 13                              180.0+  37   1      1          0        1   146
#> 14                                2.0+  40   2      1          1        1   148
#> 15                              180.0+  42   2      0        180        1   100
#> 16                                5.0+  38   5      1          3        0   125
#> 17                                2.0+  42   2      0          2        0   140
#> 18                              180.0+  40   6      0        180        1   138
#> 19                              180.0+  40  11      1         10        1   120
#> 20                              180.0+  42   2      0        180        0   100
#> 21                                 3.0  43   3      1          0        1   100
#> 22                              180.0+  41   2      1          1        0   166
#> 23                              180.0+  43   4      1          0        1   130
#> 24                              180.0+  42   4      0        180        0   162
#> 25                              180.0+  40   3      1          1        0   170
#> 26                              180.0+  42  12      1         10        1   170
#> 27                                2.0+  43   2      1          1        1   116
#> 28                              180.0+  42   2      0        180        1   124
#> 29                              155.0+  44   5      1          1        0   170
#> 30                              180.0+  45   3      0        180        1   154
#> 31                              180.0+  41  10      1          8        0   150
#> 32                              180.0+  41  13      1          1        0   140
#> 33                              180.0+  45   9      1          7        0   110
#> 34                              180.0+  45   6      0        180        1   170
#> 35                                5.0+  41   5      1          4        1   141
#> 36                              180.0+  43   2      0        180        1   140
#> 37                              180.0+  45   2      0        180        1   140
#> 38                              180.0+  48  15      0        180        1   160
#> 39                              180.0+  43  29      0        180        1   180
#> 40                              180.0+  45   4      1          0        0   124
#> 41                              180.0+  43  10      0        180        0   185
#> 42                              180.0+  46  13      1         10        0   100
#> 43                              180.0+  44   0      1          0        1    96
#> 44                              180.0+  47   4      1          3        1   160
#> 45                              180.0+  43   3      1          0        1   124
#> 46                              180.0+  45   8      1          0        1   117
#> 47                                5.0+  45   5      0          5        0   141
#> 48                              161.0+  46   2      1          1        1   122
#> 49                              180.0+  46   6      1          0        1   100
#> 50                              180.0+  44   4      1          0        1   114
#> 51                              180.0+  47   2      0        180        0   108
#> 52                              180.0+  45   5      0        180        1   190
#> 53                              180.0+  46   4      0        180        1   121
#> 54                              180.0+  44   2      0        180        0   142
#> 55                              177.0+  45   9      1          0        1   145
#> 56                              180.0+  47   3      1          1        1   120
#> 57                              180.0+  48   3      0        180        0   154
#> 58                              180.0+  47   9      1          6        0   170
#> 59                              180.0+  46   3      1          0        1   119
#> 60                              180.0+  49   4      0        180        0   117
#> 61                               10.0+  47  10      0         10        1   140
#> 62                              180.0+  48   2      1          0        0   184
#> 63                              180.0+  50   4      1          1        0   125
#> 64                              180.0+  50   6      1          2        1   140
#> 65                                 7.0  49   7      1          7        1   110
#> 66                              180.0+  46   3      1          1        1   140
#> 67                              180.0+  50   7      0        180        1   110
#> 68                                 2.0  49   2      0          2        0   105
#> 69                                 1.0  51   1      0          1        1   145
#> 70                              179.0+  49  15      1         11        1   160
#> 71                              179.0+  49  23      0        179        1   112
#> 72                              180.0+  52   2      0        180        1   170
#> 73                              180.0+  51   3      1          2        0   113
#> 74                              180.0+  50   1      1          0        0   150
#> 75                              180.0+  50   9      0        180        0   130
#> 76                              180.0+  51   8      0        180        1   140
#> 77                              180.0+  46   1      1          1        0   145
#> 78                                36.0  53   8      0         36        1   160
#> 79                               88.0+  48  17      1         10        0   111
#> 80                              180.0+  49  15      0        180        1   160
#> 81                              180.0+  53   7      1          0        0   199
#> 82                              180.0+  51   3      1          1        0   140
#> 83                              180.0+  53   8      1          7        0   160
#> 84                              180.0+  48   3      1          2        0   150
#> 85                              180.0+  51  25      1          1        0   202
#> 86                                4.0+  53   4      0          4        0   140
#> 87                              180.0+  48   6      0        180        0   160
#> 88                              152.0+  54  23      1         10        0   131
#> 89                              180.0+  54   9      1          1        0   130
#> 90                              180.0+  55   4      1          2        0   150
#> 91                              180.0+  52   4      0        180        1   180
#> 92                               13.0+  51  13      1         11        0   145
#> 93                              180.0+  54   4      1          0        1   121
#> 94                              180.0+  52   4      0        180        0   183
#> 95                              174.0+  50   3      0        174        1   153
#> 96                                28.0  55  28      1         13        1   160
#> 97                                 1.0  49   1      0          1        1   110
#> 98                              180.0+  50   7      1          1        0   156
#> 99                              180.0+  50   7      1          0        1   127
#> 100                             175.0+  52   5      0        175        1   117
#> 101                                2.0  55   2      0          2        0   145
#> 102                               7.0+  54   7      1          0        1   100
#> 103                             180.0+  56   3      0        180        1   193
#> 104                             180.0+  56   2      0        180        0   132
#> 105                             180.0+  55   5      1          4        1   120
#> 106                             180.0+  52   8      0        180        0   119
#> 107                             180.0+  54   3      0        180        1   180
#> 108                              16.0+  52  16      0         16        0   152
#> 109                             180.0+  53  10      1          9        0   172
#> 110                              15.0+  53  15      0         15        1    90
#> 111                             180.0+  55   6      1          5        1   138
#> 112                              12.0+  54  12      1          0        1   190
#> 113                             180.0+  54   3      0        180        0   128
#> 114                                2.0  55   1      0          2        0   130
#> 115                               3.0+  57   3      0          3        0   120
#> 116                             180.0+  54   7      1          2        0   129
#> 117                              140.0  57   5      1          3        1   138
#> 118                                1.0  57   1      0          1        1   100
#> 119                              165.0  56   4      1          0        1   140
#> 120                             180.0+  52   2      0        180        0   140
#> 121                             180.0+  56  14      1         11        0   130
#> 122                             180.0+  53   3      1          0        1   200
#> 123                             180.0+  57  10      0        180        1   170
#> 124                               8.0+  58   8      0          8        1   130
#> 125                             180.0+  54   5      0        180        1   108
#> 126                             180.0+  55   3      1          1        1   156
#> 127                             180.0+  53  21      1         13        1   130
#> 128                             180.0+  59   3      1          1        0   172
#> 129                             180.0+  57   4      0        180        1   119
#> 130                             180.0+  58   6      1          0        1    90
#> 131                             180.0+  53  15      1         10        1   130
#> 132                             171.0+  54  17      1          8        1   227
#> 133                               15.0  55   9      1          2        1   147
#> 134                             166.0+  55  13      0        166        1   140
#> 135                             180.0+  54  23      1          8        0   120
#> 136                             147.0+  53   4      0        147        1   145
#> 137                             180.0+  53   7      1          0        1   120
#> 138                               5.0+  55   5      0          5        1   131
#> 139                             180.0+  54   7      1          0        1   141
#> 140                               4.0+  56   4      0          4        0   164
#> 141                               9.0+  58   9      1          0        1   180
#> 142                                1.0  58   1      1          1        1   200
#> 143                             180.0+  55   5      1          0        0   140
#> 144                             180.0+  56   7      1          5        1   120
#> 145                             180.0+  59   9      1          1        1   125
#> 146                             180.0+  57   1      0        180        0   148
#> 147                             180.0+  60  11      1          9        0   106
#> 148                             180.0+  59   3      0        180        0   120
#> 149                             180.0+  58   4      1          0        1   160
#> 150                                2.0  57   2      0          2        1   120
#> 151                             180.0+  60   5      1          1        0   138
#> 152                             180.0+  57  10      1          9        0   103
#> 153                               64.0  59   6      1          0        1   140
#> 154                             180.0+  59   4      1          0        1   152
#> 155                             180.0+  58  26      1          0        1   189
#> 156                               9.0+  61   9      0          9        1   160
#> 157                             161.0+  58   8      0        161        1   140
#> 158                             171.0+  58  14      1          6        0   190
#> 159                             180.0+  61   4      1          3        0   151
#> 160                             180.0+  61   9      1          8        0   150
#> 161                                3.0  61   3      1          2        1   102
#> 162                                1.0  58   1      0          1        1   100
#> 163                             180.0+  57  13      1         10        0   110
#> 164                              10.0+  58  10      0         10        1   150
#> 165                             180.0+  57   4      1          3        0   138
#> 166                               17.0  61   3      0         17        0   143
#> 167                               45.0  56  14      0         45        0   130
#> 168                             180.0+  56  13      1          6        1   158
#> 169                             180.0+  56  18      1         11        1   165
#> 170                               9.0+  59   9      1          0        1    80
#> 171                             180.0+  55   4      1          3        1   160
#> 172                             172.0+  58  11      0        172        1   135
#> 173                             172.0+  60  12      1          0        1   114
#> 174                             180.0+  61   4      1          0        1   115
#> 175                                8.0  56   8      1          8        0   120
#> 176                             180.0+  59  11      1          8        1   190
#> 177                               1.0+  57   1      0          1        0   126
#> 178                               15.0  57  15      1         13        1   110
#> 179                             180.0+  59  10      0        180        0   160
#> 180                               77.0  61   8      0         77        0   120
#> 181                               8.0+  58   8      1          5        0   152
#> 182                             180.0+  62  10      1          0        1   153
#> 183                             180.0+  62   7      1          2        1   180
#> 184                             180.0+  57   3      1          0        0   100
#> 185                              170.0  61  18      0        170        0   140
#> 186                               94.0  61  28      1          7        0   133
#> 187                             180.0+  58   8      1          3        1   150
#> 188                              169.0  57   7      0        169        0   180
#> 189                             180.0+  59  13      1          2        0   198
#> 190                             180.0+  57  12      1          9        1   120
#> 191                             180.0+  62   4      1          0        0   160
#> 192                               3.0+  58   3      1          0        1   146
#> 193                             180.0+  62   4      1          3        0   173
#> 194                             180.0+  59   1      0        180        0   155
#> 195                             180.0+  59  16      1          9        1   133
#> 196                               28.0  63   6      0         28        1   120
#> 197                              13.0+  61  13      0         13        0   120
#> 198                                5.0  61   5      0          5        1   110
#> 199                               5.0+  61   5      0          5        1   160
#> 200                             180.0+  58  11      1          9        0   179
#> 201                             180.0+  57   2      1          1        0   159
#> 202                             180.0+  62  17      1         10        1   180
#> 203                                1.0  62   1      1          0        1   172
#> 204                             180.0+  58   7      0        180        1   150
#> 205                             180.0+  63   3      1          1        0   180
#> 206                             180.0+  63   1      0        180        1   130
#> 207                             180.0+  62   3      0        180        1   105
#> 208                             180.0+  63  15      1         10        1   126
#> 209                             180.0+  64   4      0        180        0   130
#> 210                               4.0+  63   4      1          1        0   155
#> 211                             180.0+  61   9      1          9        1   150
#> 212                                9.0  58   9      1          9        0   110
#> 213                               7.0+  62   7      0          7        0   150
#> 214                             180.0+  58   2      0        180        0   127
#> 215                             180.0+  59   4      0        180        0   196
#> 216                               84.0  60   7      1          5        1   141
#> 217                               7.0+  60   7      0          7        0   140
#> 218                             180.0+  59   5      1          1        0   148
#> 219                             180.0+  60   7      1          1        1    90
#> 220                             180.0+  65  13      0        180        1   100
#> 221                                1.0  63   1      0          1        0   162
#> 222                                1.0  63   1      0          1        0   130
#> 223                             180.0+  61  15      1         13        0   170
#> 224                               4.0+  59   4      0          4        0   149
#> 225                               3.0+  60   3      0          3        0   168
#> 226                              167.0  64  10      1          9        0   160
#> 227                               17.0  60   8      0         17        1   130
#> 228                             180.0+  61   6      1          1        1   117
#> 229                             180.0+  66   1      1          0        1   120
#> 230                             180.0+  64   6      1          0        1   140
#> 231                              14.0+  63  14      1          9        0   123
#> 232                               36.0  65  36      1         11        0   140
#> 233                               3.0+  66   3      1          1        0   127
#> 234                               88.0  61  10      1          2        1   194
#> 235                             180.0+  64  32      1          9        1   160
#> 236                               12.0  63  12      1          9        0   114
#> 237                             180.0+  63   7      0        180        0   120
#> 238                             180.0+  65   8      1          0        0   168
#> 239                                0.5  64   0      0          0        1    90
#> 240                             180.0+  60   6      0        180        0   130
#> 241                             180.0+  64   9      0        180        0   150
#> 242                             180.0+  61   4      0        180        1   113
#> 243                             180.0+  65   3      0        180        1   190
#> 244                             180.0+  64   7      0        180        1   120
#> 245                             180.0+  66   6      1          1        1   130
#> 246                               12.0  63  12      0         12        1   150
#> 247                             180.0+  62   3      1          1        1   199
#> 248                                9.0  65   6      0          9        0   112
#> 249                                3.0  65   3      1          0        1    80
#> 250                             180.0+  63   5      1          4        0   170
#> 251                              11.0+  67  11      0         11        1   100
#> 252                               2.0+  64   2      0          2        0   201
#> 253                             180.0+  66  16      1         11        1   169
#> 254                             180.0+  62   9      0        180        0   145
#> 255                             180.0+  61  14      1          5        0   140
#> 256                             180.0+  61  15      1         10        0   130
#> 257                               2.0+  63   2      1          0        0   140
#> 258                              103.0  64  19      1          8        1   160
#> 259                               15.0  65   8      1          0        1   140
#> 260                             180.0+  67   6      0        180        1   170
#> 261                             180.0+  65  15      1         11        1   160
#> 262                               5.0+  68   5      1          4        1   150
#> 263                             180.0+  64   6      1          0        1   125
#> 264                             179.0+  66   7      1          0        1   115
#> 265                             166.0+  66  13      1          0        0   118
#> 266                                3.0  65   3      0          3        0   105
#> 267                               0.5+  64   0      0          0        1   148
#> 268                             180.0+  67   4      1          3        0   130
#> 269                             180.0+  66   6      1          0        1   140
#> 270                             180.0+  68   1      0        180        1   166
#> 271                                8.0  67   8      1          1        1   130
#> 272                               16.0  63  10      0         16        1   160
#> 273                                1.0  64   1      0          1        1   120
#> 274                             180.0+  68  18      0        180        1   260
#> 275                               1.0+  63   1      1          0        1   155
#> 276                               18.0  63  10      0         18        1   130
#> 277                              11.0+  67  11      0         11        0   150
#> 278                               79.0  68  14      0         79        0   172
#> 279                             180.0+  66  11      1          0        0   100
#> 280                               15.0  69  12      0         15        1   140
#> 281                             180.0+  63   2      0        180        0   150
#> 282                             180.0+  65  11      1          6        0   130
#> 283                             174.0+  69  21      1         10        0   180
#> 284                             180.0+  66   9      1          8        0   130
#> 285                             180.0+  63   8      0        180        1   120
#> 286                               8.0+  65   8      1          0        1    90
#> 287                              175.0  69   1      1          0        0   170
#> 288                             180.0+  65   1      1          0        0   133
#> 289                             180.0+  67   7      1          4        1   130
#> 290                             180.0+  63   2      1          0        0    99
#> 291                                6.0  65   6      0          6        0    80
#> 292                             180.0+  65  10      1          1        1   148
#> 293                              19.0+  66  19      1         12        1   150
#> 294                               99.0  69   6      0         99        1   140
#> 295                             180.0+  65   4      1          1        0   130
#> 296                             179.0+  64   4      0        179        0   160
#> 297                              11.0+  64  11      0         11        0   125
#> 298                                0.5  64   0      1          0        1   118
#> 299                             152.0+  69   4      1          3        1   150
#> 300                             180.0+  65  13      1         12        1   130
#> 301                             180.0+  69  17      1         10        0   140
#> 302                               93.0  69   8      0         93        0   140
#> 303                              21.0+  64  21      0         21        1   155
#> 304                                1.0  65   1      0          1        1   120
#> 305                              18.0+  68  18      1          0        1   160
#> 306                              101.0  65   6      0        101        1   115
#> 307                                4.0  68   4      0          4        1   190
#> 308                              150.0  68   7      0        150        0   210
#> 309                             180.0+  71  20      1          0        1   160
#> 310                             180.0+  67   2      0        180        0   128
#> 311                             180.0+  66   9      1          3        1   151
#> 312                                1.0  66   1      1          1        1   165
#> 313                             180.0+  66   4      0        180        0   130
#> 314                             174.0+  67  10      1          9        0   200
#> 315                                6.0  67   6      1          4        0   130
#> 316                                0.5  69   0      0          0        1   148
#> 317                             180.0+  65   2      0        180        0   130
#> 318                             180.0+  68   7      1          0        1   150
#> 319                             180.0+  67  14      1         13        0   130
#> 320                             180.0+  69   8      0        180        1   180
#> 321                                2.0  66   2      0          2        1   228
#> 322                               5.0+  69   5      0          5        1   142
#> 323                              103.0  71   3      0        103        0   133
#> 324                             180.0+  70  22      1         13        0   103
#> 325                               36.0  67   1      0         36        1   104
#> 326                               5.0+  67   5      0          5        0   130
#> 327                             180.0+  68   6      0        180        0   145
#> 328                             180.0+  69   8      1          5        1   195
#> 329                               97.0  69   6      1          4        1   174
#> 330                                7.0  72   7      0          7        1   110
#> 331                               8.0+  69   8      1          7        1   108
#> 332                               2.0+  66   2      1          1        0   123
#> 333                             180.0+  69  19      0        180        0   130
#> 334                               18.0  68  18      0         18        1   100
#> 335                             172.0+  67  14      0        172        1   140
#> 336                             180.0+  69  11      1          0        1   120
#> 337                             180.0+  66   2      0        180        0   130
#> 338                                7.0  67   7      1          4        0   122
#> 339                             180.0+  69   4      1          3        0   132
#> 340                                7.0  68   2      0          7        1   130
#> 341                              13.0+  67  13      1          9        0   130
#> 342                             180.0+  70   9      0        180        1   142
#> 343                             180.0+  72   5      1          4        0   170
#> 344                               19.0  68   3      0         19        0   135
#> 345                               60.0  67   4      0         60        1   136
#> 346                               76.0  69   5      0         76        0   120
#> 347                             180.0+  67   8      1          0        1   130
#> 348                              10.0+  68  10      1          8        1   160
#> 349                             180.0+  66  24      1         13        0   130
#> 350                             180.0+  70  35      1          0        1   105
#> 351                              162.0  72  30      1          0        1   145
#> 352                               7.0+  70   7      0          7        0   102
#> 353                               7.0+  68   7      1          2        0   135
#> 354                              124.0  73  20      1          0        1   170
#> 355                                9.0  71   6      0          9        0   120
#> 356                             180.0+  69  10      1          6        1   120
#> 357                             180.0+  72  19      1          8        0   120
#> 358                             180.0+  67   8      0        180        1   170
#> 359                             180.0+  67   9      0        180        0   158
#> 360                              152.0  73  13      0        152        1   130
#> 361                             180.0+  70   5      0        180        0   150
#> 362                             180.0+  72   6      1          5        0   115
#> 363                             180.0+  68  23      0        180        1   220
#> 364                             180.0+  69   3      0        180        0   220
#> 365                             180.0+  71   3      1          2        0   150
#> 366                             180.0+  68   4      1          3        0   210
#> 367                             180.0+  73   6      0        180        1   117
#> 368                              16.0+  69  16      1         10        1   140
#> 369                             180.0+  68   7      0        180        1   130
#> 370                              16.0+  72  16      1          1        1   130
#> 371                             180.0+  69   1      1          0        0   155
#> 372                                6.0  73   6      1          0        1   270
#> 373                             180.0+  72   8      1          1        1   150
#> 374                               15.0  68  15      1         13        1   130
#> 375                              13.0+  70  13      1          9        0   100
#> 376                             180.0+  72   6      0        180        1   130
#> 377                             180.0+  73   0      0        180        1   161
#> 378                                2.0  69   2      1          0        1   110
#> 379                             180.0+  68   9      0        180        1   120
#> 380                               20.0  71  20      1         10        0   140
#> 381                                0.5  74   0      1          0        1    90
#> 382                             180.0+  73   3      1          0        1   136
#> 383                             180.0+  70   5      1          0        1   190
#> 384                             180.0+  71  17      1         11        0   160
#> 385                                8.0  71   8      1          7        0   149
#> 386                               87.0  73  10      1          8        0   106
#> 387                               12.0  69  12      1          1        1   149
#> 388                             180.0+  70  26      1         11        1   120
#> 389                               4.0+  74   4      0          4        0   120
#> 390                             180.0+  72   5      1          3        1   160
#> 391                             180.0+  70   3      0        180        1   154
#> 392                             180.0+  73   6      0        180        0   110
#> 393                             180.0+  71   7      1          2        0   143
#> 394                             180.0+  72   8      1          0        1   140
#> 395                             180.0+  73  17      1         11        0   140
#> 396                                2.0  69   2      1          1        1    80
#> 397                             180.0+  70   4      1          0        1   140
#> 398                             180.0+  74   7      1          0        1   117
#> 399                              10.0+  72  10      1          8        1   153
#> 400                             180.0+  69   7      0        180        1   144
#> 401                             180.0+  72  15      1         13        0   156
#> 402                               8.0+  70   8      0          8        0   120
#> 403                             179.0+  71  10      1          9        1   120
#> 404                             180.0+  73  10      1          9        1   146
#> 405                             180.0+  74  15      1          9        1   179
#> 406                               10.0  71   2      0         10        1   112
#> 407                               13.0  75  13      1          1        1   130
#> 408                             180.0+  71  11      1          8        0   110
#> 409                               4.0+  71   4      0          4        0   134
#> 410                                1.0  72   1      1          1        0   168
#> 411                               57.0  72   7      0         57        1   145
#> 412                             180.0+  73  10      0        180        0   162
#> 413                                5.0  73   5      1          3        1   112
#> 414                             180.0+  76  25      1         12        1   170
#> 415                               12.0  73  12      1         12        1   140
#> 416                             180.0+  72   2      0        180        0   120
#> 417                             180.0+  75   1      0        180        1   140
#> 418                             180.0+  72   4      1          0        1   197
#> 419                             180.0+  71   3      1          0        0   144
#> 420                             180.0+  73   5      0        180        0   126
#> 421                             180.0+  73   4      0        180        0   124
#> 422                             180.0+  76   3      1          0        1   120
#> 423                             177.0+  71  32      1         12        1   107
#> 424                             180.0+  72   3      0        180        0   160
#> 425                              11.0+  77  11      0         11        1   150
#> 426                             180.0+  75   3      1          1        0   180
#> 427                                7.0  72   7      1          2        0   142
#> 428                              15.0+  73  15      0         15        1   160
#> 429                             180.0+  71  16      0        180        0   140
#> 430                               10.0  73  10      1         10        0   124
#> 431                                3.0  74   3      0          3        1   128
#> 432                             180.0+  76   1      0        180        0   114
#> 433                             180.0+  74   2      1          1        0   140
#> 434                             180.0+  74  19      1          4        1   200
#> 435                                6.0  73   6      0          6        1   114
#> 436                             180.0+  75  23      1         14        1   110
#> 437                             180.0+  74   2      0        180        0   190
#> 438                               85.0  72   4      0         85        1   120
#> 439                             174.0+  76  13      1         10        0   110
#> 440                                0.5  75   0      0          0        1   130
#> 441                             180.0+  73  13      1         11        0   195
#> 442                               12.0  75  12      0         12        1   160
#> 443                             180.0+  76  13      1          8        1   148
#> 444                               46.0  75   4      1          2        1   188
#> 445                                4.0  76   4      0          4        1   155
#> 446                                1.0  75   1      0          1        1   125
#> 447                             180.0+  74   2      0        180        0   111
#> 448                               52.0  73   1      0         52        1   105
#> 449                             180.0+  72   5      0        180        0   120
#> 450                             180.0+  76  44      1         10        0   105
#> 451                             180.0+  76   5      0        180        0   185
#> 452                             180.0+  74  10      1          0        1   135
#> 453                             180.0+  76   5      1          0        1   167
#> 454                             180.0+  75   9      0        180        1   140
#> 455                               33.0  73  33      1         12        1   175
#> 456                                5.0  77   5      1          0        0   123
#> 457                             180.0+  77  12      1          9        1   100
#> 458                             180.0+  77  12      0        180        0   130
#> 459                               12.0  76  12      1         11        1   120
#> 460                             180.0+  78   5      1          0        1   170
#> 461                                3.0  75   3      1          1        1   171
#> 462                             180.0+  75   6      0        180        0   150
#> 463                             176.0+  74   2      1          0        1   130
#> 464                               18.0  78  18      0         18        1   144
#> 465                             180.0+  77   3      0        180        0   110
#> 466                               47.0  76  29      0         47        0    90
#> 467                             180.0+  73   8      1          1        1   162
#> 468                             180.0+  74   2      0        180        0   100
#> 469                                7.0  78   7      0          7        1   133
#> 470                               8.0+  78   8      1          6        1   110
#> 471                                7.0  74   7      0          7        0   161
#> 472                             180.0+  76  13      1          1        1   170
#> 473                             180.0+  79   6      0        180        0   170
#> 474                               10.0  80  10      1          6        1   147
#> 475                             180.0+  78   0      0        180        1   212
#> 476                              119.0  75   5      0        119        1   150
#> 477                               12.0  75  12      1          1        1   120
#> 478                             180.0+  78  15      0        180        1   270
#> 479                                8.0  80   8      0          8        1   120
#> 480                             180.0+  75  13      1          6        0   150
#> 481                             180.0+  74  10      1          8        0   135
#> 482                                1.0  76   1      0          1        1    83
#> 483                               80.0  79   4      0         80        0   145
#> 484                             180.0+  78  12      1          9        0   150
#> 485                             180.0+  78   2      1          1        0   130
#> 486                                2.0  77   2      1          0        1   143
#> 487                               11.0  76  11      1          0        0   120
#> 488                             152.0+  75  11      1          4        0   162
#> 489                                3.0  75   3      0          3        0     0
#> 490                               29.0  76   7      0         29        1   150
#> 491                               32.0  79   8      0         32        1   120
#> 492                                6.0  80   6      0          6        1   150
#> 493                             180.0+  78   6      1          0        1   240
#> 494                             180.0+  78  11      1          1        1   140
#> 495                             180.0+  79   2      1          0        1   121
#> 496                             180.0+  78  14      1          0        1   140
#> 497                               11.0  78  11      1          8        1   118
#> 498                                4.0  76   4      0          4        1   160
#> 499                                4.0  79   4      0          4        1   125
#> 500                              10.0+  76  10      1          8        0   180
#> 501                                6.0  77   6      0          6        1   107
#> 502                               3.0+  80   3      1          0        1   120
#> 503                             180.0+  78  11      0        180        1   135
#> 504                                1.0  76   1      0          1        1   140
#> 505                              171.0  77  31      1          3        1   161
#> 506                                1.0  76   1      0          1        1    90
#> 507                               43.0  78   7      1          0        1   110
#> 508                                3.0  79   3      0          3        0   120
#> 509                             180.0+  77   7      0        180        1   170
#> 510                                6.0  77   6      0          6        1   144
#> 511                              138.0  79   4      1          0        1   120
#> 512                             180.0+  81   1      0        180        0   120
#> 513                             180.0+  80  15      1         12        1   150
#> 514                               40.0  80  40      1          0        1   138
#> 515                               59.0  78   4      0         59        1   112
#> 516                               17.0  80  17      1         12        0   100
#> 517                              161.0  76   7      0        161        0   151
#> 518                              10.0+  79  10      0         10        1   120
#> 519                             180.0+  80  15      1          0        1    90
#> 520                               93.0  81   4      1          2        1   126
#> 521                              164.0  79  28      0        164        0   100
#> 522                              118.0  80   9      0        118        1   186
#> 523                             180.0+  78  32      0        180        1   130
#> 524                               37.0  79   1      0         37        1   140
#> 525                             180.0+  81   3      0        180        0   184
#> 526                               7.0+  78   7      0          7        1   147
#> 527                               5.0+  80   5      1          1        1   108
#> 528                             180.0+  78   4      0        180        0   175
#> 529                                3.0  79   3      0          3        1   101
#> 530                             171.0+  78  26      1          5        0   194
#> 531                             166.0+  76   1      0        166        0   131
#> 532                               71.0  81   4      1          1        1   104
#> 533                               3.0+  78   3      1          1        1   152
#> 534                               10.0  77  10      1          8        1   130
#> 535                               85.0  77   5      0         85        0   188
#> 536                               10.0  80   2      1          1        0   168
#> 537                               6.0+  79   6      0          6        0   152
#> 538                                6.0  80   6      1          0        1   119
#> 539                             180.0+  78  12      0        180        0   134
#> 540                              125.0  79   1      0        125        0   193
#> 541                             180.0+  84  22      1         10        0   180
#> 542                                4.0  79   4      0          4        1   121
#> 543                                6.0  80   6      0          6        1   110
#> 544                               9.0+  83   9      1          5        1   170
#> 545                             180.0+  83   5      0        180        0   148
#> 546                              103.0  83   4      0        103        0    97
#> 547                             180.0+  81  11      1          8        0   160
#> 548                                4.0  79   4      0          4        1   183
#> 549                             180.0+  78   9      1          4        1   120
#> 550                             180.0+  82   8      1          1        0   128
#> 551                             180.0+  79   1      0        180        1   170
#> 552                             180.0+  81  15      0        180        1   140
#> 553                               7.0+  80   7      1          0        1   146
#> 554                             180.0+  84   5      1          1        1    85
#> 555                               8.0+  83   8      0          8        0   115
#> 556                             180.0+  80  11      1          8        0   110
#> 557                             180.0+  80   8      1          7        0   160
#> 558                             180.0+  85   4      0        180        0    90
#> 559                             180.0+  81   2      1          1        0   198
#> 560                                2.0  83   2      0          2        1   155
#> 561                              128.0  82   6      0        128        1   100
#> 562                               62.0  82  23      1          0        0   110
#> 563                             180.0+  84   5      0        180        1   203
#> 564                                4.0  84   4      0          4        1    85
#> 565                                1.0  81   1      0          1        1   150
#> 566                               90.0  81   4      0         90        1   138
#> 567                             180.0+  79   9      1          8        0   150
#> 568                             180.0+  85   3      1          2        1   160
#> 569                                4.0  79   4      0          4        1    60
#> 570                               71.0  80   6      0         71        1   189
#> 571                                1.0  83   1      0          1        1   100
#> 572                               30.0  80  30      1         13        0   220
#> 573                             180.0+  79  14      1          0        0   110
#> 574                              114.0  83   3      0        114        0    98
#> 575                             180.0+  81  14      1         12        1   128
#> 576                              154.0  83   2      0        154        0   130
#> 577                                2.0  82   0      0          2        1   100
#> 578                             180.0+  83   1      0        180        0   160
#> 579                                1.0  81   1      0          1        1   145
#> 580                               12.0  81  12      0         12        1   163
#> 581                               5.0+  82   5      1          0        1   146
#> 582                               4.0+  81   4      0          4        0   160
#> 583                             180.0+  86  12      0        180        1   120
#> 584                               77.0  83  12      1          2        1   170
#> 585                             180.0+  81  19      1         14        0   120
#> 586                                3.0  82   3      1          2        0   130
#> 587                              126.0  83   7      0        126        0   135
#> 588                                8.0  86   8      0          8        1   132
#> 589                             180.0+  81  16      1          9        0   180
#> 590                              165.0  84   6      0        165        0   145
#> 591                             180.0+  82   9      0        180        1   134
#> 592                             180.0+  84   3      0        180        1   120
#> 593                             180.0+  81  13      0        180        0   152
#> 594                               3.0+  85   3      0          3        1   118
#> 595                             180.0+  81   2      1          0        1   118
#> 596                             180.0+  83   9      0        180        1   149
#> 597                               4.0+  83   4      0          4        0   130
#> 598                                5.0  87   2      0          5        1   137
#> 599                             180.0+  86  12      1          0        1   132
#> 600                              174.0  82  14      1         11        1   103
#> 601                               43.0  83  19      0         43        0   150
#> 602                             180.0+  84   3      1          2        0   125
#> 603                             180.0+  83  10      1          0        1   190
#> 604                                3.0  84   3      0          3        1   121
#> 605                               13.0  83  13      1         12        0   170
#> 606                             180.0+  84   7      1          2        0   148
#> 607                               38.0  86   4      0         38        1   122
#> 608                                4.0  82   4      0          4        0   130
#> 609                              177.0  86  13      0        177        0   163
#> 610                               3.0+  85   3      0          3        1   113
#> 611                               6.0+  86   6      0          6        1   117
#> 612                               62.0  84  13      0         62        1   100
#> 613                               6.0+  86   6      1          1        0   112
#> 614                               4.0+  88   4      0          4        0   100
#> 615                               20.0  83  20      1          3        1   150
#> 616                               65.0  83   9      0         65        1   150
#> 617                               11.0  86   9      1          7        1   142
#> 618                             180.0+  87   2      0        180        1   130
#> 619                               46.0  86   6      0         46        0   173
#> 620                              115.0  88   3      0        115        0   110
#> 621                             180.0+  88   2      0        180        1    68
#> 622                               3.0+  83   3      0          3        1   130
#> 623                               8.0+  87   8      0          8        1   157
#> 624                             180.0+  86  15      1          8        1   109
#> 625                                4.0  89   4      0          4        1   153
#> 626                               1.0+  87   1      0          1        0   170
#> 627                             180.0+  84   8      0        180        1   119
#> 628                               29.0  87  29      0         29        1    97
#> 629                             180.0+  84   0      0        180        1   136
#> 630                               46.0  89  10      0         46        1   170
#> 631                               14.0  90  14      0         14        1   100
#> 632                                8.0  91   8      0          8        0   100
#> 633                             180.0+  87   2      0        180        0   160
#> 634                               25.0  87   6      1          0        0   125
#> 635                                3.0  86   3      1          0        1    80
#> 636                               24.0  88   7      0         24        0   119
#> 637                               50.0  88   8      0         50        1   154
#> 638                               11.0  90  11      1         10        1   186
#> 639                              126.0  87   6      0        126        1   168
#> 640                             180.0+  86  10      0        180        1   137
#> 641                                4.0  90   4      1          0        0   121
#> 642                                1.0  91   1      0          1        1    74
#> 643                               36.0  87   5      0         36        1   150
#> 644                               89.0  90   5      1          0        1   125
#> 645                               75.0  88   3      1          2        0   159
#> 646                               3.0+  89   3      1          1        1   160
#> 647                                1.0  92   1      0          1        1   167
#> 648                               33.0  91   3      0         33        1   137
#> 649                              158.0  88   5      0        158        0   100
#> 650                               74.0  87   7      0         74        1   105
#> 651                              168.0  89   2      0        168        0   118
#> 652                              169.0  91   5      0        169        1   176
#> 653                               52.0  89  52      0         52        1   130
#> 654                                4.0  89   4      0          4        1   159
#> 655                                0.5  91   0      0          0        0     0
#> 656                             180.0+  89  14      0        180        1    84
#> 657                               50.0  94   6      0         50        0    78
#> 658                               1.0+  90   1      0          1        1   118
#> 659                             179.0+  93   8      0        179        1   110
#> 660                               8.0+  94   8      0          8        1   142
#> 661                               67.0  90   3      0         67        0   162
#> 662                               12.0  96   3      0         12        1    97
#> 663                                8.0  95   8      1          5        1   150
#> 664                               26.0  94   3      0         26        1   144
#> 665                               53.0  91  12      0         53        1   212
#> 666                                0.5  93   0      1          0        1   122
#> 667                               69.0  92   5      0         69        0   139
#> 668                                2.0  92   2      0          2        0   112
#> 669                             180.0+  93   4      0        180        1   135
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1
#>  [38] 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 0
#>  [75] 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1
#> [112] 0 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 1 1 0 1 1
#> [149] 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 0
#> [186] 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0
#> [223] 0 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1
#> [260] 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1
#> [297] 1 1 1 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1
#> [334] 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#> [371] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [408] 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 0 1
#> [445] 0 1 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1
#> [482] 0 0 1 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 0 1 1
#> [519] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1
#> [556] 1 1 1 0 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 1 1
#> [593] 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 0
#> [630] 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[2]]
#>   [1] 0 0 0 1 0 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1
#>  [38] 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 0 0
#>  [75] 1 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 0 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0
#> [112] 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [149] 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0 1
#> [186] 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1
#> [223] 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0
#> [260] 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0
#> [297] 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1
#> [334] 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1
#> [371] 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 0
#> [408] 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 1 1 0 1 0 1 0 0 0 0 1 0
#> [445] 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [482] 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 0 1 0 0 1
#> [519] 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1
#> [556] 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1
#> [593] 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0
#> [630] 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[3]]
#>   [1] 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0
#>  [38] 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1
#>  [75] 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1
#> [112] 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0 0 0 1 1 1 0 0
#> [149] 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1
#> [186] 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 0
#> [223] 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [260] 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1
#> [297] 0 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0
#> [334] 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0
#> [371] 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1
#> [408] 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1
#> [445] 1 0 0 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0
#> [482] 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1
#> [519] 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0
#> [556] 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1
#> [593] 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 1 1
#> [630] 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [667] 0 1 0 0
#> 
#> $weights[[4]]
#>   [1] 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0
#>  [38] 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 1 1
#>  [75] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1
#> [112] 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0
#> [149] 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0
#> [186] 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1
#> [223] 1 0 0 1 0 0 1 1 1 0 0 1 0 0 1 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0
#> [260] 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0
#> [297] 1 0 1 1 0 0 0 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0
#> [334] 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [371] 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1
#> [408] 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [445] 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0
#> [482] 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 0
#> [519] 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0
#> [556] 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [593] 1 0 1 0 0 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0 0 1 1 0 1
#> [630] 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1
#> [667] 0 1 1 0
#> 
#> $weights[[5]]
#>   [1] 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1
#>  [38] 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1
#>  [75] 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0
#> [112] 0 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1
#> [149] 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0
#> [186] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0
#> [223] 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 0 0 1 0
#> [260] 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0
#> [297] 1 1 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1
#> [334] 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 0 0 0
#> [371] 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 0 0 1 0 1 0 0 0 0 1
#> [408] 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1
#> [445] 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0
#> [482] 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 0 1
#> [519] 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1
#> [556] 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 1
#> [593] 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1
#> [630] 0 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[6]]
#>   [1] 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1
#>  [38] 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 0
#>  [75] 0 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0
#> [112] 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 1
#> [149] 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 0 0 0
#> [186] 0 0 1 0 0 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1
#> [223] 0 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1
#> [260] 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 0
#> [297] 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1
#> [334] 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1
#> [371] 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0
#> [408] 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 0 0 1 0 1 1 1 0
#> [445] 1 0 1 1 0 1 0 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0
#> [482] 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1
#> [519] 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1
#> [556] 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 0
#> [593] 0 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1
#> [630] 1 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1
#> [667] 0 1 0 1
#> 
#> $weights[[7]]
#>   [1] 0 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1
#>  [38] 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1
#>  [75] 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1
#> [112] 0 0 0 1 0 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0
#> [149] 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 0 0
#> [186] 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0
#> [223] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0
#> [260] 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0
#> [297] 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0
#> [334] 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0
#> [371] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0
#> [408] 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1
#> [445] 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1
#> [482] 1 0 1 1 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 0
#> [519] 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0
#> [556] 1 1 0 0 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0
#> [593] 1 0 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1
#> [630] 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[8]]
#>   [1] 0 1 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1
#>  [38] 0 0 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 1 1 0 0 0 1 1 0 1
#>  [75] 1 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0 1
#> [112] 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1
#> [149] 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0
#> [186] 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1
#> [223] 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 0
#> [260] 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1
#> [297] 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0
#> [334] 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0
#> [371] 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1
#> [408] 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [445] 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 0
#> [482] 1 0 0 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1
#> [519] 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1
#> [556] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1
#> [593] 1 0 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0
#> [630] 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[9]]
#>   [1] 0 1 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1
#>  [38] 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0
#>  [75] 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0
#> [112] 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 0
#> [149] 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1
#> [186] 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 1 1 0 1 1
#> [223] 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0
#> [260] 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0
#> [297] 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1
#> [334] 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 1
#> [371] 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1
#> [408] 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0
#> [445] 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1
#> [482] 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1
#> [519] 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 1 0
#> [556] 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0
#> [593] 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 1
#> [630] 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [667] 0 0 0 0
#> 
#> $weights[[10]]
#>   [1] 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 1 0 1 0 1 1 0
#>  [38] 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 0
#>  [75] 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0
#> [112] 1 0 1 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0
#> [149] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1
#> [186] 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0 0
#> [223] 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [260] 0 1 1 1 0 0 0 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0
#> [297] 1 1 1 0 1 1 0 1 0 0 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [334] 0 1 1 0 0 0 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1
#> [371] 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1
#> [408] 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0
#> [445] 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1
#> [482] 0 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 1 0 1
#> [519] 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 0 1 1
#> [556] 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1
#> [593] 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0
#> [630] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 1 0 0 1 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[11]]
#>   [1] 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1
#>  [38] 0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 1 0 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1
#>  [75] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 0 1
#> [112] 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 0 0 0 1 1 0 1 0 1
#> [149] 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0
#> [186] 1 0 1 1 1 0 0 1 0 1 0 0 0 0 1 0 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1
#> [223] 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [260] 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0
#> [297] 0 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0 0 1 0 0 0 0 0 0 0 0 1 0 1 1 1 0 0
#> [334] 1 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [371] 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 0 1 0 0 0
#> [408] 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0
#> [445] 1 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 0 1 0
#> [482] 1 0 0 1 0 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0 0
#> [519] 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [556] 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1
#> [593] 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 0 1 1 1 0 1 0
#> [630] 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[12]]
#>   [1] 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1
#>  [38] 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1
#>  [75] 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1
#> [112] 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1
#> [149] 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1
#> [186] 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [223] 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 1
#> [260] 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 0 0 0 0 1
#> [297] 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1
#> [334] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 1 0 1
#> [371] 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1
#> [408] 1 0 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [445] 1 0 1 1 1 1 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 0
#> [482] 1 1 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0
#> [519] 1 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0
#> [556] 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1
#> [593] 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 0 0 0
#> [630] 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0
#> [667] 0 1 0 1
#> 
#> $weights[[13]]
#>   [1] 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1
#>  [38] 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 0
#>  [75] 0 0 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0 0
#> [112] 1 0 0 1 1 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1
#> [149] 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1
#> [186] 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1
#> [223] 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [260] 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1
#> [297] 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0
#> [334] 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 0 0 1 1 1
#> [371] 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 0 1
#> [408] 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1
#> [445] 1 0 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [482] 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0
#> [519] 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0
#> [556] 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0
#> [593] 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1
#> [630] 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[14]]
#>   [1] 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 0
#>  [38] 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0
#>  [75] 1 0 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1
#> [112] 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0
#> [149] 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1
#> [186] 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1
#> [223] 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1
#> [260] 0 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [297] 1 1 0 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [334] 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 1 1 0
#> [371] 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 0 1
#> [408] 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1
#> [445] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1
#> [482] 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [519] 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [556] 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0
#> [593] 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0
#> [630] 0 1 1 0 1 1 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 0
#> [667] 1 0 0 1
#> 
#> $weights[[15]]
#>   [1] 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 0 1 1 0 0 0
#>  [38] 1 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0
#>  [75] 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0
#> [112] 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0
#> [149] 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 0
#> [186] 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [223] 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1
#> [260] 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1 0
#> [297] 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [334] 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1
#> [371] 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 1 1
#> [408] 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1 0 0 0
#> [445] 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0
#> [482] 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 1
#> [519] 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1
#> [556] 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [593] 0 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 1 1 0
#> [630] 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1
#> [667] 0 0 1 1
#> 
#> $weights[[16]]
#>   [1] 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1
#>  [38] 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0
#>  [75] 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0
#> [112] 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1
#> [149] 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1
#> [186] 0 0 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0 0 1 0 1 0 1 1
#> [223] 0 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1
#> [260] 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1
#> [297] 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [334] 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1
#> [371] 1 0 1 1 1 1 1 0 1 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1
#> [408] 1 0 1 0 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0
#> [445] 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 0
#> [482] 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1
#> [519] 0 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0 1
#> [556] 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [593] 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [630] 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[17]]
#>   [1] 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1
#>  [38] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1
#>  [75] 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 0 1 0 0 0
#> [112] 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1
#> [149] 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1
#> [186] 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1
#> [223] 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [260] 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1
#> [297] 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1
#> [334] 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1
#> [371] 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 1
#> [408] 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0
#> [445] 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0
#> [482] 1 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0
#> [519] 1 0 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1
#> [556] 1 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1
#> [593] 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1
#> [630] 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[18]]
#>   [1] 0 0 0 0 1 1 1 1 0 0 0 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 1
#>  [38] 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0
#>  [75] 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1
#> [112] 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0
#> [149] 1 1 1 1 0 1 0 0 1 0 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0
#> [186] 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0
#> [223] 0 1 0 1 0 1 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 0 1
#> [260] 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1
#> [297] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 0
#> [334] 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [371] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1
#> [408] 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 0 0 1 0 1 1 1
#> [445] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0
#> [482] 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1
#> [519] 0 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0
#> [556] 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 1 1 0 0
#> [593] 1 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 1 0 0 1 1
#> [630] 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[19]]
#>   [1] 0 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1
#>  [38] 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 1
#>  [75] 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1
#> [112] 1 0 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 0 0 1 0 1
#> [149] 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1
#> [186] 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 0
#> [223] 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1
#> [260] 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 0 1
#> [297] 1 1 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1
#> [334] 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0
#> [371] 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0
#> [408] 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1
#> [445] 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1
#> [482] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0
#> [519] 0 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 0 1 1 0
#> [556] 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [593] 0 1 0 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0
#> [630] 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 1 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[20]]
#>   [1] 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0
#>  [38] 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0
#>  [75] 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1 0
#> [112] 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1
#> [149] 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1
#> [186] 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1
#> [223] 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1
#> [260] 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 0
#> [297] 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [334] 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [371] 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0 1
#> [408] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 0 1 0 1
#> [445] 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [482] 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1
#> [519] 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 0 1
#> [556] 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0
#> [593] 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0
#> [630] 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[21]]
#>   [1] 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 0
#>  [38] 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0
#>  [75] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1
#> [112] 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1
#> [149] 1 0 0 1 0 0 0 0 1 0 1 1 1 0 0 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [186] 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 0 0
#> [223] 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0
#> [260] 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1
#> [297] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1
#> [334] 1 0 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0
#> [371] 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1
#> [408] 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1
#> [445] 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 0
#> [482] 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1
#> [519] 1 1 0 0 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1
#> [556] 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1
#> [593] 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1
#> [630] 1 0 1 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 0 0 0 0 0 0 0 1 1 1 1 0 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[22]]
#>   [1] 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0
#>  [38] 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1
#>  [75] 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0
#> [112] 1 1 1 1 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1
#> [149] 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0
#> [186] 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0
#> [223] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0
#> [260] 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1
#> [297] 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1
#> [334] 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1
#> [371] 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0
#> [408] 1 0 1 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1
#> [445] 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 1
#> [482] 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1
#> [519] 0 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 0
#> [556] 1 1 1 0 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1
#> [593] 0 1 0 1 0 0 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 1
#> [630] 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[23]]
#>   [1] 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1
#>  [38] 0 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 0 0 1 0
#>  [75] 1 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1
#> [112] 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0
#> [149] 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1
#> [186] 1 1 0 0 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0
#> [223] 1 1 1 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [260] 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1
#> [297] 1 1 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#> [334] 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0
#> [371] 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0
#> [408] 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0
#> [445] 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0
#> [482] 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1
#> [519] 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0
#> [556] 1 0 1 0 0 0 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0
#> [593] 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1
#> [630] 1 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1
#> [667] 1 1 0 0
#> 
#> $weights[[24]]
#>   [1] 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#>  [38] 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1
#>  [75] 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 0
#> [112] 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1
#> [149] 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1
#> [186] 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1 0 0 0 0 0
#> [223] 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0
#> [260] 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [297] 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0
#> [334] 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1
#> [371] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [408] 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0 0
#> [445] 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0
#> [482] 0 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1
#> [519] 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1
#> [556] 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1
#> [593] 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0
#> [630] 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[25]]
#>   [1] 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1
#>  [38] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1
#>  [75] 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 1
#> [112] 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1
#> [149] 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1
#> [186] 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1
#> [223] 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1
#> [260] 1 0 1 0 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0
#> [297] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0
#> [334] 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0
#> [371] 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0
#> [408] 0 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [445] 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1
#> [482] 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1
#> [519] 0 0 1 0 1 1 1 0 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [556] 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1
#> [593] 1 1 0 0 0 0 1 0 1 1 0 0 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 0 0 0 0 1 1 0 1 0 1
#> [630] 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [667] 0 0 0 1
#> 
#> $weights[[26]]
#>   [1] 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0
#>  [38] 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#>  [75] 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [112] 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 0 0 1 0
#> [149] 0 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1
#> [186] 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0
#> [223] 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [260] 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [297] 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0
#> [334] 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1
#> [371] 0 0 1 1 0 1 1 0 0 0 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 0 0 1 1
#> [408] 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0
#> [445] 0 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0 0 0 0 1
#> [482] 1 0 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0
#> [519] 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1
#> [556] 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [593] 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0
#> [630] 0 0 1 1 0 0 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[27]]
#>   [1] 0 0 1 1 0 1 1 0 0 1 0 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 0
#>  [38] 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#>  [75] 1 0 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1
#> [112] 1 0 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0
#> [149] 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 0 0
#> [186] 1 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1
#> [223] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 0 1 1 1 0
#> [260] 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0
#> [297] 1 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1
#> [334] 0 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0
#> [371] 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0
#> [408] 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0
#> [445] 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1
#> [482] 0 0 0 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1
#> [519] 0 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1
#> [556] 1 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1
#> [593] 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#> [630] 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 1 0 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[28]]
#>   [1] 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1
#>  [38] 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 1
#>  [75] 0 1 1 1 0 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1
#> [112] 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0
#> [149] 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0
#> [186] 1 0 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1
#> [223] 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1
#> [260] 0 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1
#> [297] 0 0 0 1 1 1 0 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 0 0
#> [334] 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1
#> [371] 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1
#> [408] 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1
#> [445] 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1
#> [482] 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 0 1 0 0 1 0 1 1
#> [519] 1 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1
#> [556] 0 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 0 1 0 1 1 0 0 1
#> [593] 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1
#> [630] 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0
#> [667] 0 0 1 0
#> 
#> $weights[[29]]
#>   [1] 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0
#>  [38] 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0
#>  [75] 1 1 0 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0
#> [112] 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1
#> [149] 1 0 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 0 0 1 0 0 0 0 1 0 1 0 0 1 1
#> [186] 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0
#> [223] 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1
#> [260] 1 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1
#> [297] 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0
#> [334] 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1
#> [371] 0 1 0 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 1 0 0 0 0 1 0 0 0 0 0 1 0 1 1 1 1 0
#> [408] 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [445] 1 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 0
#> [482] 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1
#> [519] 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1
#> [556] 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 1
#> [593] 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1
#> [630] 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1
#> [667] 1 1 1 1
#> 
#> $weights[[30]]
#>   [1] 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1
#>  [38] 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0
#>  [75] 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 0 1 1
#> [112] 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 0
#> [149] 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1
#> [186] 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [223] 1 1 1 0 1 0 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1
#> [260] 0 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1
#> [297] 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1
#> [334] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1
#> [371] 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1 0 1 1
#> [408] 0 0 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 0
#> [445] 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [482] 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1
#> [519] 1 1 1 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0
#> [556] 0 0 0 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [593] 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 0 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0
#> [630] 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[31]]
#>   [1] 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0
#>  [38] 1 0 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1
#>  [75] 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0
#> [112] 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0
#> [149] 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 0
#> [186] 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 1
#> [223] 0 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1
#> [260] 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [297] 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 1 0 1 0
#> [334] 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 0
#> [371] 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1
#> [408] 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1
#> [445] 0 0 1 1 0 0 0 1 1 0 0 1 0 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 0
#> [482] 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1
#> [519] 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1
#> [556] 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1
#> [593] 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1
#> [630] 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0
#> [667] 0 0 0 1
#> 
#> $weights[[32]]
#>   [1] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1
#>  [38] 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1
#>  [75] 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0
#> [112] 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1
#> [149] 0 0 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 0
#> [186] 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0
#> [223] 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0
#> [260] 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 0 0 1 1 0 1 1 1 0 0 1
#> [297] 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0
#> [334] 1 1 0 0 1 1 0 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0
#> [371] 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 0 1 0 0 0 0 1
#> [408] 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1
#> [445] 1 0 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1
#> [482] 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1
#> [519] 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1
#> [556] 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1
#> [593] 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1
#> [630] 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[33]]
#>   [1] 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1
#>  [38] 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1
#>  [75] 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [112] 1 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1
#> [149] 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [186] 1 1 0 0 1 0 0 1 1 0 0 0 1 1 0 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0
#> [223] 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0
#> [260] 0 1 0 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0
#> [297] 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1
#> [334] 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0
#> [371] 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0
#> [408] 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1
#> [445] 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0
#> [482] 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1
#> [519] 1 0 0 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 0 0 0
#> [556] 1 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1
#> [593] 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0
#> [630] 0 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[34]]
#>   [1] 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0
#>  [38] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1
#>  [75] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1
#> [112] 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1
#> [149] 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1
#> [186] 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1
#> [223] 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1
#> [260] 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0
#> [297] 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0
#> [334] 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1
#> [371] 1 1 1 1 0 1 1 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0 0
#> [408] 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 0
#> [445] 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0
#> [482] 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0
#> [519] 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0
#> [556] 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1
#> [593] 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1 0 0 1 0 1
#> [630] 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[35]]
#>   [1] 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 1 0 1 0 1 1 0 1
#>  [38] 1 0 1 1 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1
#>  [75] 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1
#> [112] 1 0 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1
#> [149] 0 1 0 0 1 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1
#> [186] 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0
#> [223] 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 1 1 1
#> [260] 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1
#> [297] 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1
#> [334] 0 0 1 0 0 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 0
#> [371] 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 1
#> [408] 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [445] 1 1 1 1 0 1 0 1 1 0 0 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 0 0 0 1 0 0 1 0 0 1 0
#> [482] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 0 1 0 0 0 1 0 1
#> [519] 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [556] 1 0 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1
#> [593] 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [630] 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[36]]
#>   [1] 1 1 1 0 0 1 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0
#>  [38] 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1
#>  [75] 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0
#> [112] 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1
#> [149] 1 1 1 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1
#> [186] 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1
#> [223] 1 1 1 1 0 1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0
#> [260] 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [297] 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1
#> [334] 1 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1
#> [371] 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1
#> [408] 0 0 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1
#> [445] 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0
#> [482] 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1
#> [519] 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 0 0
#> [556] 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0
#> [593] 0 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0
#> [630] 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 0 0 0
#> [667] 1 1 0 0
#> 
#> $weights[[37]]
#>   [1] 1 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#>  [38] 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0
#>  [75] 1 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [112] 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [149] 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 0 0 1 0 0 1 0
#> [186] 1 0 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1
#> [223] 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0
#> [260] 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1
#> [297] 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1
#> [334] 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1
#> [371] 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1
#> [408] 0 1 1 1 1 0 1 1 0 0 0 0 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1
#> [445] 0 1 0 0 1 0 0 0 0 1 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [482] 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1
#> [519] 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0
#> [556] 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1 1
#> [593] 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0
#> [630] 0 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1
#> [667] 1 1 0 1
#> 
#> $weights[[38]]
#>   [1] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0
#>  [38] 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0
#>  [75] 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1
#> [112] 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 0
#> [149] 0 0 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 0 1 0 1 0 0 1
#> [186] 0 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0
#> [223] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0
#> [260] 0 0 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1
#> [297] 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 0 1 0 0 0 1 0
#> [334] 0 0 1 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1
#> [371] 1 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1
#> [408] 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 0
#> [445] 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [482] 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [519] 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1
#> [556] 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0
#> [593] 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1
#> [630] 0 1 1 1 1 0 0 0 1 0 0 0 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[39]]
#>   [1] 1 0 0 1 0 0 1 0 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0
#>  [38] 1 0 1 0 1 1 0 1 0 1 0 0 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#>  [75] 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0
#> [112] 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1 0 1
#> [149] 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 1
#> [186] 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [223] 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [260] 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 0
#> [297] 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1
#> [334] 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0
#> [371] 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 0
#> [408] 0 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 1 1 0 0
#> [445] 0 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [482] 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 0 0 0
#> [519] 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1
#> [556] 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0 1
#> [593] 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [630] 1 0 1 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0
#> [667] 1 1 1 1
#> 
#> $weights[[40]]
#>   [1] 0 0 1 0 1 1 0 1 1 1 0 0 0 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1
#>  [38] 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1
#>  [75] 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1
#> [112] 0 1 1 0 1 1 1 1 1 0 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1
#> [149] 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1
#> [186] 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1
#> [223] 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1
#> [260] 0 0 0 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 1
#> [297] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0
#> [334] 1 1 1 0 0 0 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 0 1 0 0 1 1 1 1
#> [371] 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#> [408] 1 0 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1
#> [445] 1 0 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 0
#> [482] 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0 1 0 1 1
#> [519] 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1
#> [556] 0 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0
#> [593] 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1
#> [630] 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1
#> [667] 1 1 0 1
#> 
#> $weights[[41]]
#>   [1] 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 0 1
#>  [38] 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0
#>  [75] 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1
#> [112] 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1
#> [149] 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1
#> [186] 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1
#> [223] 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 0 0
#> [260] 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0
#> [297] 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1
#> [334] 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [371] 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1
#> [408] 0 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1
#> [445] 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1
#> [482] 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0
#> [519] 1 0 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [556] 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0
#> [593] 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 0
#> [630] 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [667] 1 0 0 1
#> 
#> $weights[[42]]
#>   [1] 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1
#>  [38] 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1
#>  [75] 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 1 0 1 0 1 1 0 0 1
#> [112] 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1
#> [149] 0 0 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [186] 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1
#> [223] 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0
#> [260] 0 1 0 1 0 1 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1
#> [297] 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1
#> [334] 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0
#> [371] 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1
#> [408] 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1
#> [445] 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1
#> [482] 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 1
#> [519] 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [556] 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 0 1
#> [593] 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 0
#> [630] 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[43]]
#>   [1] 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0
#>  [38] 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 0 0 1 0 0
#>  [75] 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1
#> [112] 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 0 0 0 0
#> [149] 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1
#> [186] 1 1 0 0 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1
#> [223] 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0
#> [260] 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1
#> [297] 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1
#> [334] 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [371] 1 1 0 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0
#> [408] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 1
#> [445] 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [482] 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 0 1
#> [519] 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [556] 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1
#> [593] 0 1 0 1 0 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 0 1 1 0 1 0 1 0 1 0 0 0
#> [630] 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1
#> [667] 1 1 0 0
#> 
#> $weights[[44]]
#>   [1] 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1
#>  [38] 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1
#>  [75] 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0 0 0 1
#> [112] 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1
#> [149] 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0
#> [186] 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0
#> [223] 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1
#> [260] 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 0
#> [297] 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [334] 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1
#> [371] 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1
#> [408] 0 0 1 0 1 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1
#> [445] 0 1 1 1 0 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1
#> [482] 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1
#> [519] 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 0 0 1
#> [556] 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1
#> [593] 1 1 0 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1
#> [630] 0 0 1 0 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 0 0 1 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[45]]
#>   [1] 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 0 1
#>  [38] 0 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0
#>  [75] 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1
#> [112] 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 0 1 1 1
#> [149] 0 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1
#> [186] 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1
#> [223] 1 1 0 1 1 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1
#> [260] 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0
#> [297] 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1
#> [334] 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1
#> [371] 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 0 1
#> [408] 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0
#> [445] 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 0 0 0 1 1 0 0 1 1 1 0 0 1 0 0 0 1 1 1
#> [482] 1 0 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1 1 1 1
#> [519] 0 0 0 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1
#> [556] 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1
#> [593] 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1
#> [630] 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[46]]
#>   [1] 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0
#>  [38] 1 0 0 1 1 0 0 1 0 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1
#>  [75] 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [112] 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1
#> [149] 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1
#> [186] 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0
#> [223] 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1
#> [260] 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1
#> [297] 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 0
#> [334] 1 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1
#> [371] 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 1 0 1 0
#> [408] 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0
#> [445] 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 0 0 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0
#> [482] 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1
#> [519] 0 1 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 1 0 0 1 1 0
#> [556] 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 0 1 1 0 1 1
#> [593] 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1
#> [630] 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0
#> [667] 1 1 1 0
#> 
#> $weights[[47]]
#>   [1] 1 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 0 0 0
#>  [38] 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0
#>  [75] 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 1 1 1 0 1
#> [112] 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1
#> [149] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1
#> [186] 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1
#> [223] 1 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 0
#> [260] 0 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [297] 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1
#> [334] 1 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0
#> [371] 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1
#> [408] 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0
#> [445] 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0
#> [482] 0 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1
#> [519] 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 0
#> [556] 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0
#> [593] 1 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1
#> [630] 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 0 0 1 0 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[48]]
#>   [1] 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1
#>  [38] 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 0 0 1 0 1
#>  [75] 0 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1
#> [112] 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1
#> [149] 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1
#> [186] 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1
#> [223] 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 1 0 0 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0
#> [260] 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 1
#> [297] 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0
#> [334] 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1
#> [371] 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [408] 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0
#> [445] 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0
#> [482] 1 1 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0 0 0
#> [519] 0 1 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1
#> [556] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0
#> [593] 1 1 0 0 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 0 0
#> [630] 1 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1
#> [667] 1 1 1 0
#> 
#> $weights[[49]]
#>   [1] 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 1 1 0 1 1 1 0 0 0 1 0 1
#>  [38] 1 1 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 0
#>  [75] 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1
#> [112] 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [149] 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1
#> [186] 0 1 1 1 0 1 1 1 1 0 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 1
#> [223] 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 1 0 1 1 0 1 0
#> [260] 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [297] 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0
#> [334] 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1
#> [371] 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1
#> [408] 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1
#> [445] 1 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1
#> [482] 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1
#> [519] 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1
#> [556] 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1
#> [593] 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 0
#> [630] 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1
#> [667] 0 0 1 0
#> 
#> $weights[[50]]
#>   [1] 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1
#>  [38] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1
#>  [75] 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0 0
#> [112] 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1
#> [149] 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [186] 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 0
#> [223] 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1
#> [260] 1 1 0 0 0 1 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1
#> [297] 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0
#> [334] 1 0 1 0 0 1 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0
#> [371] 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1
#> [408] 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0 0 0 1 1
#> [445] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1
#> [482] 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [519] 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1
#> [556] 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1
#> [593] 1 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1
#> [630] 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1
#> [667] 1 1 1 0
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1       5.0+
#> 2     2       2.0+
#> 3     3       5.0+
#> 4     4     180.0+
#> 5     5      115.0
#> 6     6     180.0+
#> 7     7     180.0+
#> 8     8       5.0+
#> 9     9     180.0+
#> 10   10     180.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13     180.0+
#> 14   14       2.0+
#> 15   15     180.0+
#> 16   16       5.0+
#> 17   17       2.0+
#> 18   18     180.0+
#> 19   19     180.0+
#> 20   20     180.0+
#> 21   21        3.0
#> 22   22     180.0+
#> 23   23     180.0+
#> 24   24     180.0+
#> 25   25     180.0+
#> 26   26     180.0+
#> 27   27       2.0+
#> 28   28     180.0+
#> 29   29     155.0+
#> 30   30     180.0+
#> 31   31     180.0+
#> 32   32     180.0+
#> 33   33     180.0+
#> 34   34     180.0+
#> 35   35       5.0+
#> 36   36     180.0+
#> 37   37     180.0+
#> 38   38     180.0+
#> 39   39     180.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44     180.0+
#> 45   45     180.0+
#> 46   46     180.0+
#> 47   47       5.0+
#> 48   48     161.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     180.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     177.0+
#> 56   56     180.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61      10.0+
#> 62   62     180.0+
#> 63   63     180.0+
#> 64   64     180.0+
#> 65   65        7.0
#> 66   66     180.0+
#> 67   67     180.0+
#> 68   68        2.0
#> 69   69        1.0
#> 70   70     179.0+
#> 71   71     179.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74     180.0+
#> 75   75     180.0+
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78       36.0
#> 79   79      88.0+
#> 80   80     180.0+
#> 81   81     180.0+
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86       4.0+
#> 87   87     180.0+
#> 88   88     152.0+
#> 89   89     180.0+
#> 90   90     180.0+
#> 91   91     180.0+
#> 92   92      13.0+
#> 93   93     180.0+
#> 94   94     180.0+
#> 95   95     174.0+
#> 96   96       28.0
#> 97   97        1.0
#> 98   98     180.0+
#> 99   99     180.0+
#> 100 100     175.0+
#> 101 101        2.0
#> 102 102       7.0+
#> 103 103     180.0+
#> 104 104     180.0+
#> 105 105     180.0+
#> 106 106     180.0+
#> 107 107     180.0+
#> 108 108      16.0+
#> 109 109     180.0+
#> 110 110      15.0+
#> 111 111     180.0+
#> 112 112      12.0+
#> 113 113     180.0+
#> 114 114        2.0
#> 115 115       3.0+
#> 116 116     180.0+
#> 117 117      140.0
#> 118 118        1.0
#> 119 119      165.0
#> 120 120     180.0+
#> 121 121     180.0+
#> 122 122     180.0+
#> 123 123     180.0+
#> 124 124       8.0+
#> 125 125     180.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128     180.0+
#> 129 129     180.0+
#> 130 130     180.0+
#> 131 131     180.0+
#> 132 132     171.0+
#> 133 133       15.0
#> 134 134     166.0+
#> 135 135     180.0+
#> 136 136     147.0+
#> 137 137     180.0+
#> 138 138       5.0+
#> 139 139     180.0+
#> 140 140       4.0+
#> 141 141       9.0+
#> 142 142        1.0
#> 143 143     180.0+
#> 144 144     180.0+
#> 145 145     180.0+
#> 146 146     180.0+
#> 147 147     180.0+
#> 148 148     180.0+
#> 149 149     180.0+
#> 150 150        2.0
#> 151 151     180.0+
#> 152 152     180.0+
#> 153 153       64.0
#> 154 154     180.0+
#> 155 155     180.0+
#> 156 156       9.0+
#> 157 157     161.0+
#> 158 158     171.0+
#> 159 159     180.0+
#> 160 160     180.0+
#> 161 161        3.0
#> 162 162        1.0
#> 163 163     180.0+
#> 164 164      10.0+
#> 165 165     180.0+
#> 166 166       17.0
#> 167 167       45.0
#> 168 168     180.0+
#> 169 169     180.0+
#> 170 170       9.0+
#> 171 171     180.0+
#> 172 172     172.0+
#> 173 173     172.0+
#> 174 174     180.0+
#> 175 175        8.0
#> 176 176     180.0+
#> 177 177       1.0+
#> 178 178       15.0
#> 179 179     180.0+
#> 180 180       77.0
#> 181 181       8.0+
#> 182 182     180.0+
#> 183 183     180.0+
#> 184 184     180.0+
#> 185 185      170.0
#> 186 186       94.0
#> 187 187     180.0+
#> 188 188      169.0
#> 189 189     180.0+
#> 190 190     180.0+
#> 191 191     180.0+
#> 192 192       3.0+
#> 193 193     180.0+
#> 194 194     180.0+
#> 195 195     180.0+
#> 196 196       28.0
#> 197 197      13.0+
#> 198 198        5.0
#> 199 199       5.0+
#> 200 200     180.0+
#> 201 201     180.0+
#> 202 202     180.0+
#> 203 203        1.0
#> 204 204     180.0+
#> 205 205     180.0+
#> 206 206     180.0+
#> 207 207     180.0+
#> 208 208     180.0+
#> 209 209     180.0+
#> 210 210       4.0+
#> 211 211     180.0+
#> 212 212        9.0
#> 213 213       7.0+
#> 214 214     180.0+
#> 215 215     180.0+
#> 216 216       84.0
#> 217 217       7.0+
#> 218 218     180.0+
#> 219 219     180.0+
#> 220 220     180.0+
#> 221 221        1.0
#> 222 222        1.0
#> 223 223     180.0+
#> 224 224       4.0+
#> 225 225       3.0+
#> 226 226      167.0
#> 227 227       17.0
#> 228 228     180.0+
#> 229 229     180.0+
#> 230 230     180.0+
#> 231 231      14.0+
#> 232 232       36.0
#> 233 233       3.0+
#> 234 234       88.0
#> 235 235     180.0+
#> 236 236       12.0
#> 237 237     180.0+
#> 238 238     180.0+
#> 239 239        0.5
#> 240 240     180.0+
#> 241 241     180.0+
#> 242 242     180.0+
#> 243 243     180.0+
#> 244 244     180.0+
#> 245 245     180.0+
#> 246 246       12.0
#> 247 247     180.0+
#> 248 248        9.0
#> 249 249        3.0
#> 250 250     180.0+
#> 251 251      11.0+
#> 252 252       2.0+
#> 253 253     180.0+
#> 254 254     180.0+
#> 255 255     180.0+
#> 256 256     180.0+
#> 257 257       2.0+
#> 258 258      103.0
#> 259 259       15.0
#> 260 260     180.0+
#> 261 261     180.0+
#> 262 262       5.0+
#> 263 263     180.0+
#> 264 264     179.0+
#> 265 265     166.0+
#> 266 266        3.0
#> 267 267       0.5+
#> 268 268     180.0+
#> 269 269     180.0+
#> 270 270     180.0+
#> 271 271        8.0
#> 272 272       16.0
#> 273 273        1.0
#> 274 274     180.0+
#> 275 275       1.0+
#> 276 276       18.0
#> 277 277      11.0+
#> 278 278       79.0
#> 279 279     180.0+
#> 280 280       15.0
#> 281 281     180.0+
#> 282 282     180.0+
#> 283 283     174.0+
#> 284 284     180.0+
#> 285 285     180.0+
#> 286 286       8.0+
#> 287 287      175.0
#> 288 288     180.0+
#> 289 289     180.0+
#> 290 290     180.0+
#> 291 291        6.0
#> 292 292     180.0+
#> 293 293      19.0+
#> 294 294       99.0
#> 295 295     180.0+
#> 296 296     179.0+
#> 297 297      11.0+
#> 298 298        0.5
#> 299 299     152.0+
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302       93.0
#> 303 303      21.0+
#> 304 304        1.0
#> 305 305      18.0+
#> 306 306      101.0
#> 307 307        4.0
#> 308 308      150.0
#> 309 309     180.0+
#> 310 310     180.0+
#> 311 311     180.0+
#> 312 312        1.0
#> 313 313     180.0+
#> 314 314     174.0+
#> 315 315        6.0
#> 316 316        0.5
#> 317 317     180.0+
#> 318 318     180.0+
#> 319 319     180.0+
#> 320 320     180.0+
#> 321 321        2.0
#> 322 322       5.0+
#> 323 323      103.0
#> 324 324     180.0+
#> 325 325       36.0
#> 326 326       5.0+
#> 327 327     180.0+
#> 328 328     180.0+
#> 329 329       97.0
#> 330 330        7.0
#> 331 331       8.0+
#> 332 332       2.0+
#> 333 333     180.0+
#> 334 334       18.0
#> 335 335     172.0+
#> 336 336     180.0+
#> 337 337     180.0+
#> 338 338        7.0
#> 339 339     180.0+
#> 340 340        7.0
#> 341 341      13.0+
#> 342 342     180.0+
#> 343 343     180.0+
#> 344 344       19.0
#> 345 345       60.0
#> 346 346       76.0
#> 347 347     180.0+
#> 348 348      10.0+
#> 349 349     180.0+
#> 350 350     180.0+
#> 351 351      162.0
#> 352 352       7.0+
#> 353 353       7.0+
#> 354 354      124.0
#> 355 355        9.0
#> 356 356     180.0+
#> 357 357     180.0+
#> 358 358     180.0+
#> 359 359     180.0+
#> 360 360      152.0
#> 361 361     180.0+
#> 362 362     180.0+
#> 363 363     180.0+
#> 364 364     180.0+
#> 365 365     180.0+
#> 366 366     180.0+
#> 367 367     180.0+
#> 368 368      16.0+
#> 369 369     180.0+
#> 370 370      16.0+
#> 371 371     180.0+
#> 372 372        6.0
#> 373 373     180.0+
#> 374 374       15.0
#> 375 375      13.0+
#> 376 376     180.0+
#> 377 377     180.0+
#> 378 378        2.0
#> 379 379     180.0+
#> 380 380       20.0
#> 381 381        0.5
#> 382 382     180.0+
#> 383 383     180.0+
#> 384 384     180.0+
#> 385 385        8.0
#> 386 386       87.0
#> 387 387       12.0
#> 388 388     180.0+
#> 389 389       4.0+
#> 390 390     180.0+
#> 391 391     180.0+
#> 392 392     180.0+
#> 393 393     180.0+
#> 394 394     180.0+
#> 395 395     180.0+
#> 396 396        2.0
#> 397 397     180.0+
#> 398 398     180.0+
#> 399 399      10.0+
#> 400 400     180.0+
#> 401 401     180.0+
#> 402 402       8.0+
#> 403 403     179.0+
#> 404 404     180.0+
#> 405 405     180.0+
#> 406 406       10.0
#> 407 407       13.0
#> 408 408     180.0+
#> 409 409       4.0+
#> 410 410        1.0
#> 411 411       57.0
#> 412 412     180.0+
#> 413 413        5.0
#> 414 414     180.0+
#> 415 415       12.0
#> 416 416     180.0+
#> 417 417     180.0+
#> 418 418     180.0+
#> 419 419     180.0+
#> 420 420     180.0+
#> 421 421     180.0+
#> 422 422     180.0+
#> 423 423     177.0+
#> 424 424     180.0+
#> 425 425      11.0+
#> 426 426     180.0+
#> 427 427        7.0
#> 428 428      15.0+
#> 429 429     180.0+
#> 430 430       10.0
#> 431 431        3.0
#> 432 432     180.0+
#> 433 433     180.0+
#> 434 434     180.0+
#> 435 435        6.0
#> 436 436     180.0+
#> 437 437     180.0+
#> 438 438       85.0
#> 439 439     174.0+
#> 440 440        0.5
#> 441 441     180.0+
#> 442 442       12.0
#> 443 443     180.0+
#> 444 444       46.0
#> 445 445        4.0
#> 446 446        1.0
#> 447 447     180.0+
#> 448 448       52.0
#> 449 449     180.0+
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452     180.0+
#> 453 453     180.0+
#> 454 454     180.0+
#> 455 455       33.0
#> 456 456        5.0
#> 457 457     180.0+
#> 458 458     180.0+
#> 459 459       12.0
#> 460 460     180.0+
#> 461 461        3.0
#> 462 462     180.0+
#> 463 463     176.0+
#> 464 464       18.0
#> 465 465     180.0+
#> 466 466       47.0
#> 467 467     180.0+
#> 468 468     180.0+
#> 469 469        7.0
#> 470 470       8.0+
#> 471 471        7.0
#> 472 472     180.0+
#> 473 473     180.0+
#> 474 474       10.0
#> 475 475     180.0+
#> 476 476      119.0
#> 477 477       12.0
#> 478 478     180.0+
#> 479 479        8.0
#> 480 480     180.0+
#> 481 481     180.0+
#> 482 482        1.0
#> 483 483       80.0
#> 484 484     180.0+
#> 485 485     180.0+
#> 486 486        2.0
#> 487 487       11.0
#> 488 488     152.0+
#> 489 489        3.0
#> 490 490       29.0
#> 491 491       32.0
#> 492 492        6.0
#> 493 493     180.0+
#> 494 494     180.0+
#> 495 495     180.0+
#> 496 496     180.0+
#> 497 497       11.0
#> 498 498        4.0
#> 499 499        4.0
#> 500 500      10.0+
#> 501 501        6.0
#> 502 502       3.0+
#> 503 503     180.0+
#> 504 504        1.0
#> 505 505      171.0
#> 506 506        1.0
#> 507 507       43.0
#> 508 508        3.0
#> 509 509     180.0+
#> 510 510        6.0
#> 511 511      138.0
#> 512 512     180.0+
#> 513 513     180.0+
#> 514 514       40.0
#> 515 515       59.0
#> 516 516       17.0
#> 517 517      161.0
#> 518 518      10.0+
#> 519 519     180.0+
#> 520 520       93.0
#> 521 521      164.0
#> 522 522      118.0
#> 523 523     180.0+
#> 524 524       37.0
#> 525 525     180.0+
#> 526 526       7.0+
#> 527 527       5.0+
#> 528 528     180.0+
#> 529 529        3.0
#> 530 530     171.0+
#> 531 531     166.0+
#> 532 532       71.0
#> 533 533       3.0+
#> 534 534       10.0
#> 535 535       85.0
#> 536 536       10.0
#> 537 537       6.0+
#> 538 538        6.0
#> 539 539     180.0+
#> 540 540      125.0
#> 541 541     180.0+
#> 542 542        4.0
#> 543 543        6.0
#> 544 544       9.0+
#> 545 545     180.0+
#> 546 546      103.0
#> 547 547     180.0+
#> 548 548        4.0
#> 549 549     180.0+
#> 550 550     180.0+
#> 551 551     180.0+
#> 552 552     180.0+
#> 553 553       7.0+
#> 554 554     180.0+
#> 555 555       8.0+
#> 556 556     180.0+
#> 557 557     180.0+
#> 558 558     180.0+
#> 559 559     180.0+
#> 560 560        2.0
#> 561 561      128.0
#> 562 562       62.0
#> 563 563     180.0+
#> 564 564        4.0
#> 565 565        1.0
#> 566 566       90.0
#> 567 567     180.0+
#> 568 568     180.0+
#> 569 569        4.0
#> 570 570       71.0
#> 571 571        1.0
#> 572 572       30.0
#> 573 573     180.0+
#> 574 574      114.0
#> 575 575     180.0+
#> 576 576      154.0
#> 577 577        2.0
#> 578 578     180.0+
#> 579 579        1.0
#> 580 580       12.0
#> 581 581       5.0+
#> 582 582       4.0+
#> 583 583     180.0+
#> 584 584       77.0
#> 585 585     180.0+
#> 586 586        3.0
#> 587 587      126.0
#> 588 588        8.0
#> 589 589     180.0+
#> 590 590      165.0
#> 591 591     180.0+
#> 592 592     180.0+
#> 593 593     180.0+
#> 594 594       3.0+
#> 595 595     180.0+
#> 596 596     180.0+
#> 597 597       4.0+
#> 598 598        5.0
#> 599 599     180.0+
#> 600 600      174.0
#> 601 601       43.0
#> 602 602     180.0+
#> 603 603     180.0+
#> 604 604        3.0
#> 605 605       13.0
#> 606 606     180.0+
#> 607 607       38.0
#> 608 608        4.0
#> 609 609      177.0
#> 610 610       3.0+
#> 611 611       6.0+
#> 612 612       62.0
#> 613 613       6.0+
#> 614 614       4.0+
#> 615 615       20.0
#> 616 616       65.0
#> 617 617       11.0
#> 618 618     180.0+
#> 619 619       46.0
#> 620 620      115.0
#> 621 621     180.0+
#> 622 622       3.0+
#> 623 623       8.0+
#> 624 624     180.0+
#> 625 625        4.0
#> 626 626       1.0+
#> 627 627     180.0+
#> 628 628       29.0
#> 629 629     180.0+
#> 630 630       46.0
#> 631 631       14.0
#> 632 632        8.0
#> 633 633     180.0+
#> 634 634       25.0
#> 635 635        3.0
#> 636 636       24.0
#> 637 637       50.0
#> 638 638       11.0
#> 639 639      126.0
#> 640 640     180.0+
#> 641 641        4.0
#> 642 642        1.0
#> 643 643       36.0
#> 644 644       89.0
#> 645 645       75.0
#> 646 646       3.0+
#> 647 647        1.0
#> 648 648       33.0
#> 649 649      158.0
#> 650 650       74.0
#> 651 651      168.0
#> 652 652      169.0
#> 653 653       52.0
#> 654 654        4.0
#> 655 655        0.5
#> 656 656     180.0+
#> 657 657       50.0
#> 658 658       1.0+
#> 659 659     179.0+
#> 660 660       8.0+
#> 661 661       67.0
#> 662 662       12.0
#> 663 663        8.0
#> 664 664       26.0
#> 665 665       53.0
#> 666 666        0.5
#> 667 667       69.0
#> 668 668        2.0
#> 669 669     180.0+
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
#> <bytecode: 0x55f4dcde7578>
#> <environment: 0x55f4e61afad8>
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
#> <bytecode: 0x55f4dcecf048>
#> <environment: 0x55f4e7c89a68>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f4dcec1860>
#> <environment: 0x55f4e7c89988>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f4dcecf048>
#> <environment: 0x55f4e7c898a8>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x55f4dcec1860>
#> <environment: 0x55f4e7c89758>
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
#> <bytecode: 0x55f4dcdbdeb0>
#> <environment: 0x55f4f91a0930>
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
#>   0.8519553 
```
