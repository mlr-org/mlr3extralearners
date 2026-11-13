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
#> |   [2] V2 <= 79
#> |   |   [3] V2 <= 62
#> |   |   |   [4] V5 <= 169
#> |   |   |   |   [5] V5 <= 1
#> |   |   |   |   |   [6] V6 <= 0 *
#> |   |   |   |   |   [7] V6 > 0
#> |   |   |   |   |   |   [8] V2 <= 49 *
#> |   |   |   |   |   |   [9] V2 > 49 *
#> |   |   |   |   [10] V5 > 1
#> |   |   |   |   |   [11] V4 <= 0 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V7 <= 160
#> |   |   |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   |   |   [15] V6 > 0 *
#> |   |   |   |   |   |   [16] V7 > 160 *
#> |   |   |   [17] V5 > 169 *
#> |   |   [18] V2 > 62
#> |   |   |   [19] V4 <= 0
#> |   |   |   |   [20] V5 <= 171
#> |   |   |   |   |   [21] V6 <= 0 *
#> |   |   |   |   |   [22] V6 > 0
#> |   |   |   |   |   |   [23] V7 <= 144 *
#> |   |   |   |   |   |   [24] V7 > 144 *
#> |   |   |   |   [25] V5 > 171
#> |   |   |   |   |   [26] V3 <= 9
#> |   |   |   |   |   |   [27] V7 <= 170 *
#> |   |   |   |   |   |   [28] V7 > 170 *
#> |   |   |   |   |   [29] V3 > 9 *
#> |   |   |   [30] V4 > 0
#> |   |   |   |   [31] V2 <= 76
#> |   |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   |   [33] V3 > 3
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V5 <= 8 *
#> |   |   |   |   |   |   |   [36] V5 > 8 *
#> |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   [38] V7 <= 130 *
#> |   |   |   |   |   |   |   [39] V7 > 130
#> |   |   |   |   |   |   |   |   [40] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [41] V3 > 6 *
#> |   |   |   |   [42] V2 > 76 *
#> |   [43] V2 > 79
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V5 <= 13
#> |   |   |   |   [46] V3 <= 14
#> |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   |   [50] V4 > 0 *
#> |   |   |   |   [51] V3 > 14 *
#> |   |   |   [52] V5 > 13
#> |   |   |   |   [53] V5 <= 71 *
#> |   |   |   |   [54] V5 > 71 *
#> |   |   [55] V5 > 177 *
#> 
#> $nodes[[2]]
#> [1] root
#> |   [2] V2 <= 63
#> |   |   [3] V3 <= 1 *
#> |   |   [4] V3 > 1
#> |   |   |   [5] V3 <= 9
#> |   |   |   |   [6] V7 <= 106 *
#> |   |   |   |   [7] V7 > 106
#> |   |   |   |   |   [8] V5 <= 169
#> |   |   |   |   |   |   [9] V4 <= 0 *
#> |   |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   |   |   [12] V7 <= 140
#> |   |   |   |   |   |   |   |   |   [13] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   [14] V2 > 54 *
#> |   |   |   |   |   |   |   |   [15] V7 > 140
#> |   |   |   |   |   |   |   |   |   [16] V2 <= 50 *
#> |   |   |   |   |   |   |   |   |   [17] V2 > 50 *
#> |   |   |   |   |   |   |   [18] V5 > 3 *
#> |   |   |   |   |   [19] V5 > 169 *
#> |   |   |   [20] V3 > 9
#> |   |   |   |   [21] V4 <= 0 *
#> |   |   |   |   [22] V4 > 0
#> |   |   |   |   |   [23] V3 <= 13 *
#> |   |   |   |   |   [24] V3 > 13 *
#> |   [25] V2 > 63
#> |   |   [26] V5 <= 177
#> |   |   |   [27] V3 <= 13
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   [30] V5 <= 8 *
#> |   |   |   |   |   |   [31] V5 > 8 *
#> |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   [33] V7 <= 150
#> |   |   |   |   |   |   |   [34] V3 <= 7
#> |   |   |   |   |   |   |   |   [35] V2 <= 82
#> |   |   |   |   |   |   |   |   |   [36] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [37] V3 > 3 *
#> |   |   |   |   |   |   |   |   [38] V2 > 82 *
#> |   |   |   |   |   |   |   [39] V3 > 7 *
#> |   |   |   |   |   |   [40] V7 > 150 *
#> |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   [42] V2 <= 84
#> |   |   |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   |   |   [44] V5 <= 1 *
#> |   |   |   |   |   |   |   [45] V5 > 1 *
#> |   |   |   |   |   |   [46] V6 > 0
#> |   |   |   |   |   |   |   [47] V5 <= 7
#> |   |   |   |   |   |   |   |   [48] V5 <= 2
#> |   |   |   |   |   |   |   |   |   [49] V2 <= 77
#> |   |   |   |   |   |   |   |   |   |   [50] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [51] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [52] V2 > 77 *
#> |   |   |   |   |   |   |   |   [53] V5 > 2 *
#> |   |   |   |   |   |   |   [54] V5 > 7 *
#> |   |   |   |   |   [55] V2 > 84 *
#> |   |   |   [56] V3 > 13
#> |   |   |   |   [57] V4 <= 0 *
#> |   |   |   |   [58] V4 > 0
#> |   |   |   |   |   [59] V3 <= 19
#> |   |   |   |   |   |   [60] V7 <= 129 *
#> |   |   |   |   |   |   [61] V7 > 129 *
#> |   |   |   |   |   [62] V3 > 19 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[3]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V3 <= 3 *
#> |   |   |   |   |   [7] V3 > 3 *
#> |   |   |   |   [8] V2 > 62
#> |   |   |   |   |   [9] V6 <= 0 *
#> |   |   |   |   |   [10] V6 > 0 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   [13] V2 <= 43 *
#> |   |   |   |   |   [14] V2 > 43
#> |   |   |   |   |   |   [15] V7 <= 145
#> |   |   |   |   |   |   |   [16] V7 <= 129 *
#> |   |   |   |   |   |   |   [17] V7 > 129 *
#> |   |   |   |   |   |   [18] V7 > 145 *
#> |   |   |   |   [19] V2 > 54
#> |   |   |   |   |   [20] V5 <= 6
#> |   |   |   |   |   |   [21] V6 <= 0
#> |   |   |   |   |   |   |   [22] V2 <= 65 *
#> |   |   |   |   |   |   |   [23] V2 > 65 *
#> |   |   |   |   |   |   [24] V6 > 0
#> |   |   |   |   |   |   |   [25] V2 <= 67
#> |   |   |   |   |   |   |   |   [26] V3 <= 7
#> |   |   |   |   |   |   |   |   |   [27] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [28] V3 > 4 *
#> |   |   |   |   |   |   |   |   [29] V3 > 7 *
#> |   |   |   |   |   |   |   [30] V2 > 67 *
#> |   |   |   |   |   [31] V5 > 6
#> |   |   |   |   |   |   [32] V3 <= 10 *
#> |   |   |   |   |   |   [33] V3 > 10
#> |   |   |   |   |   |   |   [34] V3 <= 17
#> |   |   |   |   |   |   |   |   [35] V3 <= 13 *
#> |   |   |   |   |   |   |   |   [36] V3 > 13 *
#> |   |   |   |   |   |   |   [37] V3 > 17 *
#> |   |   [38] V5 > 171
#> |   |   |   [39] V3 <= 8
#> |   |   |   |   [40] V7 <= 177 *
#> |   |   |   |   [41] V7 > 177 *
#> |   |   |   [42] V3 > 8 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   [47] V3 <= 6 *
#> |   |   |   |   |   [48] V3 > 6 *
#> |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   [50] V2 <= 85
#> |   |   |   |   |   |   [51] V5 <= 6 *
#> |   |   |   |   |   |   [52] V5 > 6 *
#> |   |   |   |   |   [53] V2 > 85 *
#> |   |   |   [54] V4 > 0
#> |   |   |   |   [55] V3 <= 14
#> |   |   |   |   |   [56] V2 <= 84
#> |   |   |   |   |   |   [57] V7 <= 130 *
#> |   |   |   |   |   |   [58] V7 > 130 *
#> |   |   |   |   |   [59] V2 > 84 *
#> |   |   |   |   [60] V3 > 14 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[4]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 36
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 54
#> |   |   |   |   |   [9] V7 <= 120 *
#> |   |   |   |   |   [10] V7 > 120
#> |   |   |   |   |   |   [11] V2 <= 41 *
#> |   |   |   |   |   |   [12] V2 > 41
#> |   |   |   |   |   |   |   [13] V2 <= 46 *
#> |   |   |   |   |   |   |   [14] V2 > 46 *
#> |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   [16] V7 <= 102 *
#> |   |   |   |   |   [17] V7 > 102
#> |   |   |   |   |   |   [18] V3 <= 2 *
#> |   |   |   |   |   |   [19] V3 > 2
#> |   |   |   |   |   |   |   [20] V3 <= 5
#> |   |   |   |   |   |   |   |   [21] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [22] V3 > 4 *
#> |   |   |   |   |   |   |   [23] V3 > 5
#> |   |   |   |   |   |   |   |   [24] V7 <= 147
#> |   |   |   |   |   |   |   |   |   [25] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [26] V3 > 9 *
#> |   |   |   |   |   |   |   |   [27] V7 > 147 *
#> |   |   [28] V5 > 36
#> |   |   |   [29] V6 <= 0 *
#> |   |   |   [30] V6 > 0
#> |   |   |   |   [31] V7 <= 124 *
#> |   |   |   |   [32] V7 > 124 *
#> |   [33] V2 > 67
#> |   |   [34] V2 <= 88
#> |   |   |   [35] V5 <= 167
#> |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   [37] V6 <= 0
#> |   |   |   |   |   |   [38] V7 <= 130 *
#> |   |   |   |   |   |   [39] V7 > 130 *
#> |   |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   |   [41] V5 <= 4 *
#> |   |   |   |   |   |   [42] V5 > 4
#> |   |   |   |   |   |   |   [43] V5 <= 7 *
#> |   |   |   |   |   |   |   [44] V5 > 7 *
#> |   |   |   |   [45] V4 > 0
#> |   |   |   |   |   [46] V6 <= 0
#> |   |   |   |   |   |   [47] V7 <= 124 *
#> |   |   |   |   |   |   [48] V7 > 124
#> |   |   |   |   |   |   |   [49] V7 <= 165 *
#> |   |   |   |   |   |   |   [50] V7 > 165 *
#> |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   [52] V2 <= 74
#> |   |   |   |   |   |   |   [53] V7 <= 170
#> |   |   |   |   |   |   |   |   [54] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [55] V2 > 69 *
#> |   |   |   |   |   |   |   [56] V7 > 170 *
#> |   |   |   |   |   |   [57] V2 > 74
#> |   |   |   |   |   |   |   [58] V3 <= 13
#> |   |   |   |   |   |   |   |   [59] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [60] V3 > 5 *
#> |   |   |   |   |   |   |   [61] V3 > 13 *
#> |   |   |   [62] V5 > 167
#> |   |   |   |   [63] V2 <= 83
#> |   |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   |   [65] V6 > 0 *
#> |   |   |   |   [66] V2 > 83 *
#> |   |   [67] V2 > 88 *
#> 
#> $nodes[[5]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 124 *
#> |   |   |   |   [6] V7 > 124
#> |   |   |   |   |   [7] V2 <= 46 *
#> |   |   |   |   |   [8] V2 > 46 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V2 <= 43 *
#> |   |   |   |   [11] V2 > 43
#> |   |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   |   [14] V5 <= 0 *
#> |   |   |   |   |   |   [15] V5 > 0 *
#> |   |   [16] V2 > 54
#> |   |   |   [17] V5 <= 169
#> |   |   |   |   [18] V7 <= 114
#> |   |   |   |   |   [19] V2 <= 67 *
#> |   |   |   |   |   [20] V2 > 67 *
#> |   |   |   |   [21] V7 > 114
#> |   |   |   |   |   [22] V3 <= 12
#> |   |   |   |   |   |   [23] V5 <= 11
#> |   |   |   |   |   |   |   [24] V4 <= 0
#> |   |   |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   |   |   [27] V4 > 0
#> |   |   |   |   |   |   |   |   [28] V5 <= 3
#> |   |   |   |   |   |   |   |   |   [29] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [30] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [32] V6 > 0 *
#> |   |   |   |   |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   |   |   |   |   [34] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   [35] V5 > 8 *
#> |   |   |   |   |   |   [36] V5 > 11 *
#> |   |   |   |   |   [37] V3 > 12
#> |   |   |   |   |   |   [38] V3 <= 18
#> |   |   |   |   |   |   |   [39] V7 <= 150 *
#> |   |   |   |   |   |   |   [40] V7 > 150 *
#> |   |   |   |   |   |   [41] V3 > 18 *
#> |   |   |   [42] V5 > 169
#> |   |   |   |   [43] V3 <= 6
#> |   |   |   |   |   [44] V7 <= 170 *
#> |   |   |   |   |   [45] V7 > 170 *
#> |   |   |   |   [46] V3 > 6 *
#> |   [47] V2 > 74
#> |   |   [48] V5 <= 177
#> |   |   |   [49] V4 <= 0
#> |   |   |   |   [50] V7 <= 112 *
#> |   |   |   |   [51] V7 > 112
#> |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   [53] V5 <= 8 *
#> |   |   |   |   |   |   [54] V5 > 8 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V5 <= 6 *
#> |   |   |   |   |   |   [57] V5 > 6 *
#> |   |   |   [58] V4 > 0
#> |   |   |   |   [59] V7 <= 168
#> |   |   |   |   |   [60] V3 <= 6 *
#> |   |   |   |   |   [61] V3 > 6
#> |   |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   |   [63] V6 > 0
#> |   |   |   |   |   |   |   [64] V5 <= 1 *
#> |   |   |   |   |   |   |   [65] V5 > 1 *
#> |   |   |   |   [66] V7 > 168 *
#> |   |   [67] V5 > 177 *
#> 
#> $nodes[[6]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62 *
#> |   |   |   [5] V2 > 62
#> |   |   |   |   [6] V5 <= 164
#> |   |   |   |   |   [7] V2 <= 87
#> |   |   |   |   |   |   [8] V7 <= 112 *
#> |   |   |   |   |   |   [9] V7 > 112
#> |   |   |   |   |   |   |   [10] V5 <= 3 *
#> |   |   |   |   |   |   |   [11] V5 > 3
#> |   |   |   |   |   |   |   |   [12] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   |   |   |   [14] V5 <= 8 *
#> |   |   |   |   |   |   |   |   |   [15] V5 > 8 *
#> |   |   |   |   |   [16] V2 > 87 *
#> |   |   |   |   [17] V5 > 164 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V6 <= 0
#> |   |   |   |   [20] V2 <= 81
#> |   |   |   |   |   [21] V2 <= 62
#> |   |   |   |   |   |   [22] V7 <= 125 *
#> |   |   |   |   |   |   [23] V7 > 125
#> |   |   |   |   |   |   |   [24] V7 <= 150 *
#> |   |   |   |   |   |   |   [25] V7 > 150 *
#> |   |   |   |   |   [26] V2 > 62
#> |   |   |   |   |   |   [27] V7 <= 141
#> |   |   |   |   |   |   |   [28] V2 <= 69 *
#> |   |   |   |   |   |   |   [29] V2 > 69 *
#> |   |   |   |   |   |   [30] V7 > 141
#> |   |   |   |   |   |   |   [31] V3 <= 3 *
#> |   |   |   |   |   |   |   [32] V3 > 3 *
#> |   |   |   |   [33] V2 > 81 *
#> |   |   |   [34] V6 > 0
#> |   |   |   |   [35] V2 <= 72
#> |   |   |   |   |   [36] V2 <= 54
#> |   |   |   |   |   |   [37] V2 <= 43 *
#> |   |   |   |   |   |   [38] V2 > 43 *
#> |   |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   |   [40] V2 <= 69
#> |   |   |   |   |   |   |   [41] V3 <= 3 *
#> |   |   |   |   |   |   |   [42] V3 > 3
#> |   |   |   |   |   |   |   |   [43] V7 <= 135
#> |   |   |   |   |   |   |   |   |   [44] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   [45] V3 > 7 *
#> |   |   |   |   |   |   |   |   [46] V7 > 135
#> |   |   |   |   |   |   |   |   |   [47] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [48] V3 > 10 *
#> |   |   |   |   |   |   [49] V2 > 69 *
#> |   |   |   |   [50] V2 > 72
#> |   |   |   |   |   [51] V5 <= 0 *
#> |   |   |   |   |   [52] V5 > 0
#> |   |   |   |   |   |   [53] V2 <= 75 *
#> |   |   |   |   |   |   [54] V2 > 75 *
#> |   [55] V5 > 173 *
#> 
#> $nodes[[7]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 73
#> |   |   |   |   [5] V5 <= 2 *
#> |   |   |   |   [6] V5 > 2
#> |   |   |   |   |   [7] V7 <= 138 *
#> |   |   |   |   |   [8] V7 > 138
#> |   |   |   |   |   |   [9] V5 <= 10 *
#> |   |   |   |   |   |   [10] V5 > 10 *
#> |   |   |   [11] V2 > 73
#> |   |   |   |   [12] V7 <= 112 *
#> |   |   |   |   [13] V7 > 112
#> |   |   |   |   |   [14] V6 <= 0 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V5 <= 6 *
#> |   |   |   |   |   |   [17] V5 > 6
#> |   |   |   |   |   |   |   [18] V3 <= 6 *
#> |   |   |   |   |   |   |   [19] V3 > 6 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 104 *
#> |   |   |   [22] V7 > 104
#> |   |   |   |   [23] V5 <= 6
#> |   |   |   |   |   [24] V7 <= 131
#> |   |   |   |   |   |   [25] V2 <= 66
#> |   |   |   |   |   |   |   [26] V2 <= 61
#> |   |   |   |   |   |   |   |   [27] V7 <= 120 *
#> |   |   |   |   |   |   |   |   [28] V7 > 120 *
#> |   |   |   |   |   |   |   [29] V2 > 61 *
#> |   |   |   |   |   |   [30] V2 > 66
#> |   |   |   |   |   |   |   [31] V2 <= 79 *
#> |   |   |   |   |   |   |   [32] V2 > 79 *
#> |   |   |   |   |   [33] V7 > 131
#> |   |   |   |   |   |   [34] V6 <= 0
#> |   |   |   |   |   |   |   [35] V5 <= 1 *
#> |   |   |   |   |   |   |   [36] V5 > 1 *
#> |   |   |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   |   |   [38] V2 <= 54 *
#> |   |   |   |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   |   |   |   [40] V2 <= 72
#> |   |   |   |   |   |   |   |   |   [41] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [42] V7 > 149 *
#> |   |   |   |   |   |   |   |   [43] V2 > 72 *
#> |   |   |   |   [44] V5 > 6
#> |   |   |   |   |   [45] V7 <= 156
#> |   |   |   |   |   |   [46] V3 <= 10 *
#> |   |   |   |   |   |   [47] V3 > 10
#> |   |   |   |   |   |   |   [48] V2 <= 71
#> |   |   |   |   |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [50] V6 > 0 *
#> |   |   |   |   |   |   |   [51] V2 > 71 *
#> |   |   |   |   |   [52] V7 > 156
#> |   |   |   |   |   |   [53] V3 <= 13 *
#> |   |   |   |   |   |   [54] V3 > 13 *
#> |   [55] V5 > 173 *
#> 
#> $nodes[[8]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 63
#> |   |   |   |   [5] V4 <= 0
#> |   |   |   |   |   [6] V7 <= 139 *
#> |   |   |   |   |   [7] V7 > 139 *
#> |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   [9] V7 <= 102 *
#> |   |   |   |   |   [10] V7 > 102
#> |   |   |   |   |   |   [11] V5 <= 10
#> |   |   |   |   |   |   |   [12] V7 <= 184
#> |   |   |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [14] V7 <= 150
#> |   |   |   |   |   |   |   |   |   |   [15] V2 <= 48 *
#> |   |   |   |   |   |   |   |   |   |   [16] V2 > 48 *
#> |   |   |   |   |   |   |   |   |   [17] V7 > 150 *
#> |   |   |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [20] V3 > 4
#> |   |   |   |   |   |   |   |   |   |   [21] V3 <= 7 *
#> |   |   |   |   |   |   |   |   |   |   [22] V3 > 7 *
#> |   |   |   |   |   |   |   [23] V7 > 184 *
#> |   |   |   |   |   |   [24] V5 > 10 *
#> |   |   |   [25] V2 > 63
#> |   |   |   |   [26] V4 <= 0
#> |   |   |   |   |   [27] V7 <= 120 *
#> |   |   |   |   |   [28] V7 > 120 *
#> |   |   |   |   [29] V4 > 0
#> |   |   |   |   |   [30] V3 <= 3 *
#> |   |   |   |   |   [31] V3 > 3
#> |   |   |   |   |   |   [32] V2 <= 72
#> |   |   |   |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   |   [35] V7 <= 148 *
#> |   |   |   |   |   |   |   |   [36] V7 > 148 *
#> |   |   |   |   |   |   [37] V2 > 72 *
#> |   |   [38] V5 > 171
#> |   |   |   [39] V6 <= 0 *
#> |   |   |   [40] V6 > 0
#> |   |   |   |   [41] V7 <= 130 *
#> |   |   |   |   [42] V7 > 130 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V4 <= 0
#> |   |   |   |   [46] V5 <= 164
#> |   |   |   |   |   [47] V2 <= 85
#> |   |   |   |   |   |   [48] V5 <= 6 *
#> |   |   |   |   |   |   [49] V5 > 6
#> |   |   |   |   |   |   |   [50] V2 <= 79 *
#> |   |   |   |   |   |   |   [51] V2 > 79 *
#> |   |   |   |   |   [52] V2 > 85
#> |   |   |   |   |   |   [53] V2 <= 90 *
#> |   |   |   |   |   |   [54] V2 > 90 *
#> |   |   |   |   [55] V5 > 164 *
#> |   |   |   [56] V4 > 0
#> |   |   |   |   [57] V3 <= 11
#> |   |   |   |   |   [58] V2 <= 83
#> |   |   |   |   |   |   [59] V2 <= 77 *
#> |   |   |   |   |   |   [60] V2 > 77 *
#> |   |   |   |   |   [61] V2 > 83 *
#> |   |   |   |   [62] V3 > 11
#> |   |   |   |   |   [63] V7 <= 129 *
#> |   |   |   |   |   [64] V7 > 129 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[9]]
#> [1] root
#> |   [2] V5 <= 171
#> |   |   [3] V2 <= 76
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V5 <= 2 *
#> |   |   |   |   |   [7] V5 > 2 *
#> |   |   |   |   [8] V3 > 3
#> |   |   |   |   |   [9] V5 <= 11 *
#> |   |   |   |   |   [10] V5 > 11 *
#> |   |   |   [11] V4 > 0
#> |   |   |   |   [12] V7 <= 125
#> |   |   |   |   |   [13] V3 <= 15
#> |   |   |   |   |   |   [14] V2 <= 67
#> |   |   |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   |   |   [16] V3 > 3
#> |   |   |   |   |   |   |   |   [17] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [18] V3 > 10 *
#> |   |   |   |   |   |   [19] V2 > 67 *
#> |   |   |   |   |   [20] V3 > 15 *
#> |   |   |   |   [21] V7 > 125
#> |   |   |   |   |   [22] V5 <= 8
#> |   |   |   |   |   |   [23] V3 <= 5
#> |   |   |   |   |   |   |   [24] V5 <= 1
#> |   |   |   |   |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   |   |   |   |   [26] V3 > 2
#> |   |   |   |   |   |   |   |   |   [27] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [28] V3 > 3 *
#> |   |   |   |   |   |   |   [29] V5 > 1 *
#> |   |   |   |   |   |   [30] V3 > 5
#> |   |   |   |   |   |   |   [31] V2 <= 66
#> |   |   |   |   |   |   |   |   [32] V7 <= 147 *
#> |   |   |   |   |   |   |   |   [33] V7 > 147 *
#> |   |   |   |   |   |   |   [34] V2 > 66 *
#> |   |   |   |   |   [35] V5 > 8
#> |   |   |   |   |   |   [36] V3 <= 12 *
#> |   |   |   |   |   |   [37] V3 > 12 *
#> |   |   [38] V2 > 76
#> |   |   |   [39] V6 <= 0
#> |   |   |   |   [40] V5 <= 9
#> |   |   |   |   |   [41] V3 <= 5 *
#> |   |   |   |   |   [42] V3 > 5 *
#> |   |   |   |   [43] V5 > 9 *
#> |   |   |   [44] V6 > 0
#> |   |   |   |   [45] V3 <= 14
#> |   |   |   |   |   [46] V7 <= 104 *
#> |   |   |   |   |   [47] V7 > 104
#> |   |   |   |   |   |   [48] V2 <= 79 *
#> |   |   |   |   |   |   [49] V2 > 79
#> |   |   |   |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   |   |   |   [51] V7 <= 155 *
#> |   |   |   |   |   |   |   |   [52] V7 > 155 *
#> |   |   |   |   |   |   |   [53] V4 > 0 *
#> |   |   |   |   [54] V3 > 14 *
#> |   [55] V5 > 171
#> |   |   [56] V7 <= 156
#> |   |   |   [57] V7 <= 134 *
#> |   |   |   [58] V7 > 134
#> |   |   |   |   [59] V3 <= 8 *
#> |   |   |   |   [60] V3 > 8 *
#> |   |   [61] V7 > 156
#> |   |   |   [62] V7 <= 160 *
#> |   |   |   [63] V7 > 160
#> |   |   |   |   [64] V6 <= 0 *
#> |   |   |   |   [65] V6 > 0 *
#> 
#> $nodes[[10]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V3 <= 1
#> |   |   |   [4] V4 <= 0 *
#> |   |   |   [5] V4 > 0 *
#> |   |   [6] V3 > 1
#> |   |   |   [7] V5 <= 16
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V4 <= 0 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V7 <= 134
#> |   |   |   |   |   |   |   [12] V2 <= 72
#> |   |   |   |   |   |   |   |   [13] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [14] V3 > 8 *
#> |   |   |   |   |   |   |   [15] V2 > 72 *
#> |   |   |   |   |   |   [16] V7 > 134
#> |   |   |   |   |   |   |   [17] V3 <= 11
#> |   |   |   |   |   |   |   |   [18] V2 <= 73
#> |   |   |   |   |   |   |   |   |   [19] V7 <= 154 *
#> |   |   |   |   |   |   |   |   |   [20] V7 > 154 *
#> |   |   |   |   |   |   |   |   [21] V2 > 73 *
#> |   |   |   |   |   |   |   [22] V3 > 11 *
#> |   |   |   |   [23] V6 > 0
#> |   |   |   |   |   [24] V2 <= 74
#> |   |   |   |   |   |   [25] V2 <= 65
#> |   |   |   |   |   |   |   [26] V3 <= 3 *
#> |   |   |   |   |   |   |   [27] V3 > 3
#> |   |   |   |   |   |   |   |   [28] V2 <= 54
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 3 *
#> |   |   |   |   |   |   |   |   [31] V2 > 54
#> |   |   |   |   |   |   |   |   |   [32] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [33] V3 > 9 *
#> |   |   |   |   |   |   [34] V2 > 65
#> |   |   |   |   |   |   |   [35] V4 <= 0 *
#> |   |   |   |   |   |   |   [36] V4 > 0
#> |   |   |   |   |   |   |   |   [37] V7 <= 140
#> |   |   |   |   |   |   |   |   |   [38] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   [39] V2 > 69 *
#> |   |   |   |   |   |   |   |   [40] V7 > 140 *
#> |   |   |   |   |   [41] V2 > 74
#> |   |   |   |   |   |   [42] V3 <= 8
#> |   |   |   |   |   |   |   [43] V5 <= 1 *
#> |   |   |   |   |   |   |   [44] V5 > 1 *
#> |   |   |   |   |   |   [45] V3 > 8
#> |   |   |   |   |   |   |   [46] V7 <= 140 *
#> |   |   |   |   |   |   |   [47] V7 > 140 *
#> |   |   |   [48] V5 > 16
#> |   |   |   |   [49] V6 <= 0 *
#> |   |   |   |   [50] V6 > 0
#> |   |   |   |   |   [51] V5 <= 119 *
#> |   |   |   |   |   [52] V5 > 119 *
#> |   [53] V5 > 173 *
#> 
#> $nodes[[11]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 129 *
#> |   |   |   |   |   [7] V7 > 129 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V7 <= 110 *
#> |   |   |   |   |   [10] V7 > 110
#> |   |   |   |   |   |   [11] V3 <= 7 *
#> |   |   |   |   |   |   [12] V3 > 7 *
#> |   |   |   [13] V2 > 54
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V3 <= 2 *
#> |   |   |   |   |   [16] V3 > 2 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V2 <= 58
#> |   |   |   |   |   |   [19] V7 <= 140 *
#> |   |   |   |   |   |   [20] V7 > 140 *
#> |   |   |   |   |   [21] V2 > 58
#> |   |   |   |   |   |   [22] V6 <= 0
#> |   |   |   |   |   |   |   [23] V7 <= 140 *
#> |   |   |   |   |   |   |   [24] V7 > 140 *
#> |   |   |   |   |   |   [25] V6 > 0
#> |   |   |   |   |   |   |   [26] V3 <= 8 *
#> |   |   |   |   |   |   |   [27] V3 > 8 *
#> |   |   [28] V5 > 169 *
#> |   [29] V2 > 67
#> |   |   [30] V5 <= 171
#> |   |   |   [31] V5 <= 13
#> |   |   |   |   [32] V4 <= 0
#> |   |   |   |   |   [33] V5 <= 7
#> |   |   |   |   |   |   [34] V6 <= 0 *
#> |   |   |   |   |   |   [35] V6 > 0
#> |   |   |   |   |   |   |   [36] V2 <= 78 *
#> |   |   |   |   |   |   |   [37] V2 > 78 *
#> |   |   |   |   |   [38] V5 > 7 *
#> |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   [40] V2 <= 84
#> |   |   |   |   |   |   [41] V5 <= 9
#> |   |   |   |   |   |   |   [42] V7 <= 130
#> |   |   |   |   |   |   |   |   [43] V3 <= 11
#> |   |   |   |   |   |   |   |   |   [44] V2 <= 77 *
#> |   |   |   |   |   |   |   |   |   [45] V2 > 77 *
#> |   |   |   |   |   |   |   |   [46] V3 > 11 *
#> |   |   |   |   |   |   |   [47] V7 > 130
#> |   |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   |   [50] V7 <= 146 *
#> |   |   |   |   |   |   |   |   |   [51] V7 > 146 *
#> |   |   |   |   |   |   [52] V5 > 9
#> |   |   |   |   |   |   |   [53] V5 <= 10 *
#> |   |   |   |   |   |   |   [54] V5 > 10 *
#> |   |   |   |   |   [55] V2 > 84 *
#> |   |   |   [56] V5 > 13
#> |   |   |   |   [57] V6 <= 0
#> |   |   |   |   |   [58] V7 <= 120 *
#> |   |   |   |   |   [59] V7 > 120 *
#> |   |   |   |   [60] V6 > 0 *
#> |   |   [61] V5 > 171
#> |   |   |   [62] V2 <= 85
#> |   |   |   |   [63] V6 <= 0 *
#> |   |   |   |   [64] V6 > 0 *
#> |   |   |   [65] V2 > 85 *
#> 
#> $nodes[[12]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V2 <= 62
#> |   |   |   |   |   [7] V7 <= 135 *
#> |   |   |   |   |   [8] V7 > 135
#> |   |   |   |   |   |   [9] V7 <= 168
#> |   |   |   |   |   |   |   [10] V5 <= 99 *
#> |   |   |   |   |   |   |   [11] V5 > 99 *
#> |   |   |   |   |   |   [12] V7 > 168 *
#> |   |   |   |   [13] V2 > 62
#> |   |   |   |   |   [14] V5 <= 171 *
#> |   |   |   |   |   [15] V5 > 171 *
#> |   |   [16] V4 > 0
#> |   |   |   [17] V7 <= 129
#> |   |   |   |   [18] V3 <= 8
#> |   |   |   |   |   [19] V5 <= 0 *
#> |   |   |   |   |   [20] V5 > 0 *
#> |   |   |   |   [21] V3 > 8
#> |   |   |   |   |   [22] V6 <= 0 *
#> |   |   |   |   |   [23] V6 > 0 *
#> |   |   |   [24] V7 > 129
#> |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   [26] V3 > 2
#> |   |   |   |   |   [27] V2 <= 54
#> |   |   |   |   |   |   [28] V6 <= 0 *
#> |   |   |   |   |   |   [29] V6 > 0 *
#> |   |   |   |   |   [30] V2 > 54
#> |   |   |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   |   |   [32] V7 <= 160 *
#> |   |   |   |   |   |   |   [33] V7 > 160 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V3 <= 7
#> |   |   |   |   |   |   |   |   [36] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [37] V5 > 1 *
#> |   |   |   |   |   |   |   [38] V3 > 7
#> |   |   |   |   |   |   |   |   [39] V2 <= 67 *
#> |   |   |   |   |   |   |   |   [40] V2 > 67 *
#> |   [41] V2 > 72
#> |   |   [42] V5 <= 177
#> |   |   |   [43] V7 <= 114
#> |   |   |   |   [44] V3 <= 10 *
#> |   |   |   |   [45] V3 > 10 *
#> |   |   |   [46] V7 > 114
#> |   |   |   |   [47] V4 <= 0
#> |   |   |   |   |   [48] V2 <= 82
#> |   |   |   |   |   |   [49] V5 <= 6 *
#> |   |   |   |   |   |   [50] V5 > 6 *
#> |   |   |   |   |   [51] V2 > 82
#> |   |   |   |   |   |   [52] V7 <= 130 *
#> |   |   |   |   |   |   [53] V7 > 130
#> |   |   |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V7 <= 124 *
#> |   |   |   |   |   [58] V7 > 124
#> |   |   |   |   |   |   [59] V2 <= 81
#> |   |   |   |   |   |   |   [60] V3 <= 7 *
#> |   |   |   |   |   |   |   [61] V3 > 7
#> |   |   |   |   |   |   |   |   [62] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [63] V6 > 0 *
#> |   |   |   |   |   |   [64] V2 > 81 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[13]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V2 <= 62
#> |   |   |   [4] V3 <= 3
#> |   |   |   |   [5] V5 <= 17 *
#> |   |   |   |   [6] V5 > 17 *
#> |   |   |   [7] V3 > 3
#> |   |   |   |   [8] V5 <= 8
#> |   |   |   |   |   [9] V5 <= 2 *
#> |   |   |   |   |   [10] V5 > 2 *
#> |   |   |   |   [11] V5 > 8
#> |   |   |   |   |   [12] V5 <= 16 *
#> |   |   |   |   |   [13] V5 > 16 *
#> |   |   [14] V2 > 62
#> |   |   |   [15] V5 <= 177
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V2 <= 83
#> |   |   |   |   |   |   [18] V5 <= 7 *
#> |   |   |   |   |   |   [19] V5 > 7 *
#> |   |   |   |   |   [20] V2 > 83 *
#> |   |   |   |   [21] V4 > 0
#> |   |   |   |   |   [22] V2 <= 75
#> |   |   |   |   |   |   [23] V2 <= 71
#> |   |   |   |   |   |   |   [24] V5 <= 4 *
#> |   |   |   |   |   |   |   [25] V5 > 4 *
#> |   |   |   |   |   |   [26] V2 > 71 *
#> |   |   |   |   |   [27] V2 > 75 *
#> |   |   |   [28] V5 > 177 *
#> |   [29] V6 > 0
#> |   |   [30] V4 <= 0
#> |   |   |   [31] V5 <= 126
#> |   |   |   |   [32] V7 <= 139
#> |   |   |   |   |   [33] V5 <= 10
#> |   |   |   |   |   |   [34] V3 <= 2 *
#> |   |   |   |   |   |   [35] V3 > 2 *
#> |   |   |   |   |   [36] V5 > 10 *
#> |   |   |   |   [37] V7 > 139
#> |   |   |   |   |   [38] V7 <= 159 *
#> |   |   |   |   |   [39] V7 > 159 *
#> |   |   |   [40] V5 > 126
#> |   |   |   |   [41] V7 <= 154
#> |   |   |   |   |   [42] V7 <= 130 *
#> |   |   |   |   |   [43] V7 > 130 *
#> |   |   |   |   [44] V7 > 154 *
#> |   |   [45] V4 > 0
#> |   |   |   [46] V7 <= 90 *
#> |   |   |   [47] V7 > 90
#> |   |   |   |   [48] V2 <= 70
#> |   |   |   |   |   [49] V3 <= 3 *
#> |   |   |   |   |   [50] V3 > 3
#> |   |   |   |   |   |   [51] V2 <= 54 *
#> |   |   |   |   |   |   [52] V2 > 54
#> |   |   |   |   |   |   |   [53] V2 <= 56 *
#> |   |   |   |   |   |   |   [54] V2 > 56
#> |   |   |   |   |   |   |   |   [55] V7 <= 129 *
#> |   |   |   |   |   |   |   |   [56] V7 > 129
#> |   |   |   |   |   |   |   |   |   [57] V7 <= 150
#> |   |   |   |   |   |   |   |   |   |   [58] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   [59] V7 > 140 *
#> |   |   |   |   |   |   |   |   |   [60] V7 > 150 *
#> |   |   |   |   [61] V2 > 70
#> |   |   |   |   |   [62] V7 <= 130
#> |   |   |   |   |   |   [63] V3 <= 10 *
#> |   |   |   |   |   |   [64] V3 > 10 *
#> |   |   |   |   |   [65] V7 > 130
#> |   |   |   |   |   |   [66] V5 <= 1 *
#> |   |   |   |   |   |   [67] V5 > 1 *
#> 
#> $nodes[[14]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V3 <= 6
#> |   |   |   [4] V6 <= 0 *
#> |   |   |   [5] V6 > 0
#> |   |   |   |   [6] V3 <= 4
#> |   |   |   |   |   [7] V5 <= 4 *
#> |   |   |   |   |   [8] V5 > 4 *
#> |   |   |   |   [9] V3 > 4 *
#> |   |   [10] V3 > 6
#> |   |   |   [11] V2 <= 55 *
#> |   |   |   [12] V2 > 55
#> |   |   |   |   [13] V3 <= 11 *
#> |   |   |   |   [14] V3 > 11 *
#> |   [15] V7 > 112
#> |   |   [16] V2 <= 70
#> |   |   |   [17] V5 <= 169
#> |   |   |   |   [18] V4 <= 0
#> |   |   |   |   |   [19] V3 <= 1 *
#> |   |   |   |   |   [20] V3 > 1
#> |   |   |   |   |   |   [21] V5 <= 16
#> |   |   |   |   |   |   |   [22] V7 <= 145 *
#> |   |   |   |   |   |   |   [23] V7 > 145 *
#> |   |   |   |   |   |   [24] V5 > 16 *
#> |   |   |   |   [25] V4 > 0
#> |   |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   |   [27] V5 <= 1 *
#> |   |   |   |   |   |   [28] V5 > 1
#> |   |   |   |   |   |   |   [29] V2 <= 63
#> |   |   |   |   |   |   |   |   [30] V3 <= 8 *
#> |   |   |   |   |   |   |   |   [31] V3 > 8 *
#> |   |   |   |   |   |   |   [32] V2 > 63 *
#> |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   [34] V2 <= 54
#> |   |   |   |   |   |   |   [35] V2 <= 43 *
#> |   |   |   |   |   |   |   [36] V2 > 43 *
#> |   |   |   |   |   |   [37] V2 > 54
#> |   |   |   |   |   |   |   [38] V2 <= 60 *
#> |   |   |   |   |   |   |   [39] V2 > 60
#> |   |   |   |   |   |   |   |   [40] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [41] V2 > 66 *
#> |   |   |   [42] V5 > 169 *
#> |   |   [43] V2 > 70
#> |   |   |   [44] V2 <= 84
#> |   |   |   |   [45] V5 <= 173
#> |   |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   |   [47] V7 <= 150
#> |   |   |   |   |   |   |   [48] V2 <= 81 *
#> |   |   |   |   |   |   |   [49] V2 > 81 *
#> |   |   |   |   |   |   [50] V7 > 150 *
#> |   |   |   |   |   [51] V4 > 0
#> |   |   |   |   |   |   [52] V3 <= 9
#> |   |   |   |   |   |   |   [53] V3 <= 6
#> |   |   |   |   |   |   |   |   [54] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [55] V6 > 0 *
#> |   |   |   |   |   |   |   [56] V3 > 6 *
#> |   |   |   |   |   |   [57] V3 > 9
#> |   |   |   |   |   |   |   [58] V6 <= 0 *
#> |   |   |   |   |   |   |   [59] V6 > 0 *
#> |   |   |   |   [60] V5 > 173 *
#> |   |   |   [61] V2 > 84
#> |   |   |   |   [62] V5 <= 126
#> |   |   |   |   |   [63] V7 <= 130 *
#> |   |   |   |   |   [64] V7 > 130 *
#> |   |   |   |   [65] V5 > 126 *
#> 
#> $nodes[[15]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V2 <= 67
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V5 <= 3 *
#> |   |   |   |   [6] V5 > 3 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V3 <= 3
#> |   |   |   |   |   [9] V7 <= 119 *
#> |   |   |   |   |   [10] V7 > 119 *
#> |   |   |   |   [11] V3 > 3
#> |   |   |   |   |   [12] V2 <= 54
#> |   |   |   |   |   |   [13] V3 <= 6 *
#> |   |   |   |   |   |   [14] V3 > 6 *
#> |   |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   |   [16] V6 <= 0
#> |   |   |   |   |   |   |   [17] V7 <= 134 *
#> |   |   |   |   |   |   |   [18] V7 > 134 *
#> |   |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   |   [20] V2 <= 57 *
#> |   |   |   |   |   |   |   [21] V2 > 57
#> |   |   |   |   |   |   |   |   [22] V7 <= 126 *
#> |   |   |   |   |   |   |   |   [23] V7 > 126 *
#> |   |   [24] V2 > 67
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V7 <= 133 *
#> |   |   |   |   |   [28] V7 > 133 *
#> |   |   |   |   [29] V6 > 0
#> |   |   |   |   |   [30] V5 <= 62
#> |   |   |   |   |   |   [31] V5 <= 4 *
#> |   |   |   |   |   |   [32] V5 > 4
#> |   |   |   |   |   |   |   [33] V2 <= 79 *
#> |   |   |   |   |   |   |   [34] V2 > 79 *
#> |   |   |   |   |   [35] V5 > 62 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V2 <= 84
#> |   |   |   |   |   [38] V2 <= 78
#> |   |   |   |   |   |   [39] V5 <= 7
#> |   |   |   |   |   |   |   [40] V6 <= 0 *
#> |   |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   |   [42] V2 <= 69 *
#> |   |   |   |   |   |   |   |   [43] V2 > 69
#> |   |   |   |   |   |   |   |   |   [44] V2 <= 74 *
#> |   |   |   |   |   |   |   |   |   [45] V2 > 74 *
#> |   |   |   |   |   |   [46] V5 > 7
#> |   |   |   |   |   |   |   [47] V5 <= 8 *
#> |   |   |   |   |   |   |   [48] V5 > 8 *
#> |   |   |   |   |   [49] V2 > 78
#> |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   [51] V6 > 0 *
#> |   |   |   |   [52] V2 > 84 *
#> |   [53] V5 > 177 *
#> 
#> $nodes[[16]]
#> [1] root
#> |   [2] V2 <= 75
#> |   |   [3] V2 <= 60
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 1 *
#> |   |   |   |   |   [7] V5 > 1
#> |   |   |   |   |   |   [8] V4 <= 0 *
#> |   |   |   |   |   |   [9] V4 > 0
#> |   |   |   |   |   |   |   [10] V2 <= 51 *
#> |   |   |   |   |   |   |   [11] V2 > 51 *
#> |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   [13] V4 <= 0 *
#> |   |   |   |   |   [14] V4 > 0
#> |   |   |   |   |   |   [15] V7 <= 130
#> |   |   |   |   |   |   |   [16] V3 <= 3 *
#> |   |   |   |   |   |   |   [17] V3 > 3 *
#> |   |   |   |   |   |   [18] V7 > 130 *
#> |   |   |   [19] V5 > 99
#> |   |   |   |   [20] V2 <= 54 *
#> |   |   |   |   [21] V2 > 54 *
#> |   |   [22] V2 > 60
#> |   |   |   [23] V5 <= 171
#> |   |   |   |   [24] V5 <= 15
#> |   |   |   |   |   [25] V5 <= 2
#> |   |   |   |   |   |   [26] V3 <= 1 *
#> |   |   |   |   |   |   [27] V3 > 1
#> |   |   |   |   |   |   |   [28] V5 <= 0
#> |   |   |   |   |   |   |   |   [29] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [30] V7 > 130 *
#> |   |   |   |   |   |   |   [31] V5 > 0 *
#> |   |   |   |   |   [32] V5 > 2
#> |   |   |   |   |   |   [33] V3 <= 10
#> |   |   |   |   |   |   |   [34] V4 <= 0 *
#> |   |   |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   |   |   [36] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [37] V5 > 7 *
#> |   |   |   |   |   |   [38] V3 > 10
#> |   |   |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   |   |   [40] V6 > 0 *
#> |   |   |   |   [41] V5 > 15 *
#> |   |   |   [42] V5 > 171
#> |   |   |   |   [43] V7 <= 161 *
#> |   |   |   |   [44] V7 > 161 *
#> |   [45] V2 > 75
#> |   |   [46] V6 <= 0
#> |   |   |   [47] V5 <= 177
#> |   |   |   |   [48] V2 <= 80 *
#> |   |   |   |   [49] V2 > 80
#> |   |   |   |   |   [50] V5 <= 9 *
#> |   |   |   |   |   [51] V5 > 9 *
#> |   |   |   [52] V5 > 177 *
#> |   |   [53] V6 > 0
#> |   |   |   [54] V3 <= 6
#> |   |   |   |   [55] V5 <= 110
#> |   |   |   |   |   [56] V4 <= 0
#> |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   [59] V4 > 0 *
#> |   |   |   |   [60] V5 > 110 *
#> |   |   |   [61] V3 > 6
#> |   |   |   |   [62] V4 <= 0 *
#> |   |   |   |   [63] V4 > 0
#> |   |   |   |   |   [64] V2 <= 78 *
#> |   |   |   |   |   [65] V2 > 78 *
#> 
#> $nodes[[17]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V5 <= 0 *
#> |   |   |   |   [6] V5 > 0
#> |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   [8] V5 > 1
#> |   |   |   |   |   |   [9] V3 <= 5 *
#> |   |   |   |   |   |   [10] V3 > 5
#> |   |   |   |   |   |   |   [11] V5 <= 10 *
#> |   |   |   |   |   |   |   [12] V5 > 10 *
#> |   |   |   [13] V5 > 99 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V5 <= 36
#> |   |   |   |   [16] V4 <= 0
#> |   |   |   |   |   [17] V7 <= 145 *
#> |   |   |   |   |   [18] V7 > 145 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V2 <= 56 *
#> |   |   |   |   |   [21] V2 > 56
#> |   |   |   |   |   |   [22] V7 <= 118 *
#> |   |   |   |   |   |   [23] V7 > 118
#> |   |   |   |   |   |   |   [24] V5 <= 1 *
#> |   |   |   |   |   |   |   [25] V5 > 1
#> |   |   |   |   |   |   |   |   [26] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [27] V3 > 10 *
#> |   |   |   [28] V5 > 36
#> |   |   |   |   [29] V2 <= 58 *
#> |   |   |   |   [30] V2 > 58 *
#> |   [31] V2 > 67
#> |   |   [32] V6 <= 0
#> |   |   |   [33] V5 <= 171
#> |   |   |   |   [34] V7 <= 130
#> |   |   |   |   |   [35] V5 <= 8 *
#> |   |   |   |   |   [36] V5 > 8 *
#> |   |   |   |   [37] V7 > 130
#> |   |   |   |   |   [38] V4 <= 0 *
#> |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   [40] V2 <= 75 *
#> |   |   |   |   |   |   [41] V2 > 75 *
#> |   |   |   [42] V5 > 171 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V7 <= 198
#> |   |   |   |   [45] V5 <= 173
#> |   |   |   |   |   [46] V2 <= 76
#> |   |   |   |   |   |   [47] V4 <= 0 *
#> |   |   |   |   |   |   [48] V4 > 0
#> |   |   |   |   |   |   |   [49] V3 <= 13
#> |   |   |   |   |   |   |   |   [50] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [51] V2 > 71 *
#> |   |   |   |   |   |   |   [52] V3 > 13 *
#> |   |   |   |   |   [53] V2 > 76
#> |   |   |   |   |   |   [54] V3 <= 13
#> |   |   |   |   |   |   |   [55] V4 <= 0
#> |   |   |   |   |   |   |   |   [56] V3 <= 6
#> |   |   |   |   |   |   |   |   |   [57] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [58] V3 > 4 *
#> |   |   |   |   |   |   |   |   [59] V3 > 6 *
#> |   |   |   |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   |   |   |   [61] V2 <= 84 *
#> |   |   |   |   |   |   |   |   [62] V2 > 84 *
#> |   |   |   |   |   |   [63] V3 > 13 *
#> |   |   |   |   [64] V5 > 173 *
#> |   |   |   [65] V7 > 198 *
#> 
#> $nodes[[18]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V5 <= 1 *
#> |   |   |   |   |   [8] V5 > 1
#> |   |   |   |   |   |   [9] V2 <= 54 *
#> |   |   |   |   |   |   [10] V2 > 54 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V4 <= 0 *
#> |   |   |   |   [13] V4 > 0
#> |   |   |   |   |   [14] V2 <= 54
#> |   |   |   |   |   |   [15] V2 <= 43 *
#> |   |   |   |   |   |   [16] V2 > 43 *
#> |   |   |   |   |   [17] V2 > 54 *
#> |   |   [18] V5 > 169 *
#> |   [19] V2 > 62
#> |   |   [20] V5 <= 177
#> |   |   |   [21] V4 <= 0
#> |   |   |   |   [22] V3 <= 5
#> |   |   |   |   |   [23] V3 <= 2 *
#> |   |   |   |   |   [24] V3 > 2
#> |   |   |   |   |   |   [25] V2 <= 71 *
#> |   |   |   |   |   |   [26] V2 > 71
#> |   |   |   |   |   |   |   [27] V7 <= 121 *
#> |   |   |   |   |   |   |   [28] V7 > 121 *
#> |   |   |   |   [29] V3 > 5
#> |   |   |   |   |   [30] V3 <= 11
#> |   |   |   |   |   |   [31] V5 <= 11 *
#> |   |   |   |   |   |   [32] V5 > 11 *
#> |   |   |   |   |   [33] V3 > 11 *
#> |   |   |   [34] V4 > 0
#> |   |   |   |   [35] V7 <= 99 *
#> |   |   |   |   [36] V7 > 99
#> |   |   |   |   |   [37] V2 <= 74
#> |   |   |   |   |   |   [38] V6 <= 0
#> |   |   |   |   |   |   |   [39] V7 <= 140 *
#> |   |   |   |   |   |   |   [40] V7 > 140 *
#> |   |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   |   [42] V7 <= 132
#> |   |   |   |   |   |   |   |   [43] V7 <= 118 *
#> |   |   |   |   |   |   |   |   [44] V7 > 118 *
#> |   |   |   |   |   |   |   [45] V7 > 132
#> |   |   |   |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   |   |   [48] V2 > 74
#> |   |   |   |   |   |   [49] V7 <= 147
#> |   |   |   |   |   |   |   [50] V2 <= 78 *
#> |   |   |   |   |   |   |   [51] V2 > 78 *
#> |   |   |   |   |   |   [52] V7 > 147 *
#> |   |   [53] V5 > 177 *
#> 
#> $nodes[[19]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V7 <= 114
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V7 > 114
#> |   |   |   |   [8] V2 <= 62 *
#> |   |   |   |   [9] V2 > 62
#> |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   [11] V3 <= 6
#> |   |   |   |   |   |   |   [12] V3 <= 4 *
#> |   |   |   |   |   |   |   [13] V3 > 4 *
#> |   |   |   |   |   |   [14] V3 > 6 *
#> |   |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   |   [16] V2 <= 81
#> |   |   |   |   |   |   |   [17] V5 <= 12 *
#> |   |   |   |   |   |   |   [18] V5 > 12 *
#> |   |   |   |   |   |   [19] V2 > 81 *
#> |   |   [20] V5 > 173 *
#> |   [21] V4 > 0
#> |   |   [22] V3 <= 1 *
#> |   |   [23] V3 > 1
#> |   |   |   [24] V6 <= 0
#> |   |   |   |   [25] V7 <= 125
#> |   |   |   |   |   [26] V3 <= 4 *
#> |   |   |   |   |   [27] V3 > 4
#> |   |   |   |   |   |   [28] V7 <= 106 *
#> |   |   |   |   |   |   [29] V7 > 106 *
#> |   |   |   |   [30] V7 > 125
#> |   |   |   |   |   [31] V3 <= 11
#> |   |   |   |   |   |   [32] V2 <= 74
#> |   |   |   |   |   |   |   [33] V2 <= 60 *
#> |   |   |   |   |   |   |   [34] V2 > 60 *
#> |   |   |   |   |   |   [35] V2 > 74 *
#> |   |   |   |   |   [36] V3 > 11 *
#> |   |   |   [37] V6 > 0
#> |   |   |   |   [38] V2 <= 66
#> |   |   |   |   |   [39] V7 <= 102 *
#> |   |   |   |   |   [40] V7 > 102
#> |   |   |   |   |   |   [41] V3 <= 6
#> |   |   |   |   |   |   |   [42] V5 <= 1
#> |   |   |   |   |   |   |   |   [43] V3 <= 3 *
#> |   |   |   |   |   |   |   |   [44] V3 > 3 *
#> |   |   |   |   |   |   |   [45] V5 > 1 *
#> |   |   |   |   |   |   [46] V3 > 6
#> |   |   |   |   |   |   |   [47] V2 <= 55 *
#> |   |   |   |   |   |   |   [48] V2 > 55 *
#> |   |   |   |   [49] V2 > 66
#> |   |   |   |   |   [50] V2 <= 72
#> |   |   |   |   |   |   [51] V3 <= 13 *
#> |   |   |   |   |   |   [52] V3 > 13 *
#> |   |   |   |   |   [53] V2 > 72
#> |   |   |   |   |   |   [54] V3 <= 13
#> |   |   |   |   |   |   |   [55] V5 <= 1 *
#> |   |   |   |   |   |   |   [56] V5 > 1 *
#> |   |   |   |   |   |   [57] V3 > 13 *
#> 
#> $nodes[[20]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 126
#> |   |   |   |   [5] V2 <= 62
#> |   |   |   |   |   [6] V5 <= 8 *
#> |   |   |   |   |   [7] V5 > 8 *
#> |   |   |   |   [8] V2 > 62
#> |   |   |   |   |   [9] V6 <= 0
#> |   |   |   |   |   |   [10] V5 <= 11 *
#> |   |   |   |   |   |   [11] V5 > 11 *
#> |   |   |   |   |   [12] V6 > 0
#> |   |   |   |   |   |   [13] V7 <= 120 *
#> |   |   |   |   |   |   [14] V7 > 120
#> |   |   |   |   |   |   |   [15] V5 <= 12 *
#> |   |   |   |   |   |   |   [16] V5 > 12
#> |   |   |   |   |   |   |   |   [17] V5 <= 52 *
#> |   |   |   |   |   |   |   |   [18] V5 > 52 *
#> |   |   |   [19] V5 > 126 *
#> |   |   [20] V4 > 0
#> |   |   |   [21] V7 <= 96 *
#> |   |   |   [22] V7 > 96
#> |   |   |   |   [23] V6 <= 0
#> |   |   |   |   |   [24] V2 <= 66
#> |   |   |   |   |   |   [25] V2 <= 62
#> |   |   |   |   |   |   |   [26] V5 <= 7
#> |   |   |   |   |   |   |   |   [27] V2 <= 47 *
#> |   |   |   |   |   |   |   |   [28] V2 > 47
#> |   |   |   |   |   |   |   |   |   [29] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [30] V5 > 1 *
#> |   |   |   |   |   |   |   [31] V5 > 7 *
#> |   |   |   |   |   |   [32] V2 > 62 *
#> |   |   |   |   |   [33] V2 > 66
#> |   |   |   |   |   |   [34] V7 <= 124 *
#> |   |   |   |   |   |   [35] V7 > 124
#> |   |   |   |   |   |   |   [36] V3 <= 11
#> |   |   |   |   |   |   |   |   [37] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [38] V3 > 6 *
#> |   |   |   |   |   |   |   [39] V3 > 11 *
#> |   |   |   |   [40] V6 > 0
#> |   |   |   |   |   [41] V2 <= 71
#> |   |   |   |   |   |   [42] V2 <= 54
#> |   |   |   |   |   |   |   [43] V7 <= 120 *
#> |   |   |   |   |   |   |   [44] V7 > 120 *
#> |   |   |   |   |   |   [45] V2 > 54
#> |   |   |   |   |   |   |   [46] V3 <= 3 *
#> |   |   |   |   |   |   |   [47] V3 > 3
#> |   |   |   |   |   |   |   |   [48] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [49] V7 > 130
#> |   |   |   |   |   |   |   |   |   [50] V7 <= 149 *
#> |   |   |   |   |   |   |   |   |   [51] V7 > 149 *
#> |   |   |   |   |   [52] V2 > 71
#> |   |   |   |   |   |   [53] V5 <= 10
#> |   |   |   |   |   |   |   [54] V3 <= 11
#> |   |   |   |   |   |   |   |   [55] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [56] V3 > 5 *
#> |   |   |   |   |   |   |   [57] V3 > 11 *
#> |   |   |   |   |   |   [58] V5 > 10 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[21]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 54
#> |   |   |   |   |   [9] V2 <= 41 *
#> |   |   |   |   |   [10] V2 > 41
#> |   |   |   |   |   |   [11] V5 <= 3
#> |   |   |   |   |   |   |   [12] V7 <= 121 *
#> |   |   |   |   |   |   |   [13] V7 > 121
#> |   |   |   |   |   |   |   |   [14] V5 <= 0 *
#> |   |   |   |   |   |   |   |   [15] V5 > 0 *
#> |   |   |   |   |   |   [16] V5 > 3 *
#> |   |   |   |   [17] V2 > 54
#> |   |   |   |   |   [18] V7 <= 155
#> |   |   |   |   |   |   [19] V2 <= 56 *
#> |   |   |   |   |   |   [20] V2 > 56
#> |   |   |   |   |   |   |   [21] V2 <= 64
#> |   |   |   |   |   |   |   |   [22] V2 <= 59 *
#> |   |   |   |   |   |   |   |   [23] V2 > 59 *
#> |   |   |   |   |   |   |   [24] V2 > 64
#> |   |   |   |   |   |   |   |   [25] V2 <= 65 *
#> |   |   |   |   |   |   |   |   [26] V2 > 65 *
#> |   |   |   |   |   [27] V7 > 155 *
#> |   |   [28] V5 > 169
#> |   |   |   [29] V6 <= 0 *
#> |   |   |   [30] V6 > 0
#> |   |   |   |   [31] V2 <= 57 *
#> |   |   |   |   [32] V2 > 57 *
#> |   [33] V2 > 67
#> |   |   [34] V5 <= 177
#> |   |   |   [35] V2 <= 79
#> |   |   |   |   [36] V4 <= 0
#> |   |   |   |   |   [37] V7 <= 112 *
#> |   |   |   |   |   [38] V7 > 112
#> |   |   |   |   |   |   [39] V6 <= 0 *
#> |   |   |   |   |   |   [40] V6 > 0 *
#> |   |   |   |   [41] V4 > 0
#> |   |   |   |   |   [42] V3 <= 19
#> |   |   |   |   |   |   [43] V2 <= 69 *
#> |   |   |   |   |   |   [44] V2 > 69
#> |   |   |   |   |   |   |   [45] V7 <= 124 *
#> |   |   |   |   |   |   |   [46] V7 > 124
#> |   |   |   |   |   |   |   |   [47] V5 <= 9
#> |   |   |   |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [49] V3 > 3
#> |   |   |   |   |   |   |   |   |   |   [50] V7 <= 141 *
#> |   |   |   |   |   |   |   |   |   |   [51] V7 > 141 *
#> |   |   |   |   |   |   |   |   [52] V5 > 9 *
#> |   |   |   |   |   [53] V3 > 19 *
#> |   |   |   [54] V2 > 79
#> |   |   |   |   [55] V3 <= 10
#> |   |   |   |   |   [56] V3 <= 7
#> |   |   |   |   |   |   [57] V7 <= 159
#> |   |   |   |   |   |   |   [58] V5 <= 5
#> |   |   |   |   |   |   |   |   [59] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [60] V5 > 1 *
#> |   |   |   |   |   |   |   [61] V5 > 5 *
#> |   |   |   |   |   |   [62] V7 > 159 *
#> |   |   |   |   |   [63] V3 > 7 *
#> |   |   |   |   [64] V3 > 10 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[22]]
#> [1] root
#> |   [2] V2 <= 67
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V7 <= 154 *
#> |   |   |   |   |   [7] V7 > 154 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V5 <= 3 *
#> |   |   |   |   |   [10] V5 > 3 *
#> |   |   |   [11] V2 > 54
#> |   |   |   |   [12] V3 <= 1 *
#> |   |   |   |   [13] V3 > 1
#> |   |   |   |   |   [14] V5 <= 1
#> |   |   |   |   |   |   [15] V5 <= 0 *
#> |   |   |   |   |   |   [16] V5 > 0 *
#> |   |   |   |   |   [17] V5 > 1
#> |   |   |   |   |   |   [18] V4 <= 0 *
#> |   |   |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   |   [21] V6 > 0
#> |   |   |   |   |   |   |   |   [22] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [23] V3 > 9 *
#> |   |   [24] V5 > 169
#> |   |   |   [25] V2 <= 57 *
#> |   |   |   [26] V2 > 57
#> |   |   |   |   [27] V3 <= 7 *
#> |   |   |   |   [28] V3 > 7 *
#> |   [29] V2 > 67
#> |   |   [30] V5 <= 177
#> |   |   |   [31] V7 <= 104
#> |   |   |   |   [32] V3 <= 3 *
#> |   |   |   |   [33] V3 > 3 *
#> |   |   |   [34] V7 > 104
#> |   |   |   |   [35] V4 <= 0
#> |   |   |   |   |   [36] V5 <= 165
#> |   |   |   |   |   |   [37] V6 <= 0 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V2 <= 82
#> |   |   |   |   |   |   |   |   [40] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [41] V3 > 6 *
#> |   |   |   |   |   |   |   [42] V2 > 82 *
#> |   |   |   |   |   [43] V5 > 165 *
#> |   |   |   |   [44] V4 > 0
#> |   |   |   |   |   [45] V2 <= 84
#> |   |   |   |   |   |   [46] V3 <= 19
#> |   |   |   |   |   |   |   [47] V7 <= 165
#> |   |   |   |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [49] V5 <= 4 *
#> |   |   |   |   |   |   |   |   |   [50] V5 > 4 *
#> |   |   |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   |   |   [52] V2 <= 74 *
#> |   |   |   |   |   |   |   |   |   [53] V2 > 74 *
#> |   |   |   |   |   |   |   [54] V7 > 165 *
#> |   |   |   |   |   |   [55] V3 > 19 *
#> |   |   |   |   |   [56] V2 > 84 *
#> |   |   [57] V5 > 177 *
#> 
#> $nodes[[23]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V2 <= 63
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V7 <= 168
#> |   |   |   |   |   |   [8] V5 <= 16
#> |   |   |   |   |   |   |   [9] V2 <= 55 *
#> |   |   |   |   |   |   |   [10] V2 > 55 *
#> |   |   |   |   |   |   [11] V5 > 16 *
#> |   |   |   |   |   [12] V7 > 168 *
#> |   |   |   [13] V6 > 0
#> |   |   |   |   [14] V5 <= 99
#> |   |   |   |   |   [15] V4 <= 0 *
#> |   |   |   |   |   [16] V4 > 0
#> |   |   |   |   |   |   [17] V5 <= 1
#> |   |   |   |   |   |   |   [18] V3 <= 3 *
#> |   |   |   |   |   |   |   [19] V3 > 3 *
#> |   |   |   |   |   |   [20] V5 > 1 *
#> |   |   |   |   [21] V5 > 99 *
#> |   |   [22] V2 > 63
#> |   |   |   [23] V3 <= 3
#> |   |   |   |   [24] V5 <= 123
#> |   |   |   |   |   [25] V7 <= 118 *
#> |   |   |   |   |   [26] V7 > 118 *
#> |   |   |   |   [27] V5 > 123 *
#> |   |   |   [28] V3 > 3
#> |   |   |   |   [29] V3 <= 14
#> |   |   |   |   |   [30] V5 <= 171
#> |   |   |   |   |   |   [31] V4 <= 0 *
#> |   |   |   |   |   |   [32] V4 > 0
#> |   |   |   |   |   |   |   [33] V5 <= 0 *
#> |   |   |   |   |   |   |   [34] V5 > 0
#> |   |   |   |   |   |   |   |   [35] V7 <= 148 *
#> |   |   |   |   |   |   |   |   [36] V7 > 148 *
#> |   |   |   |   |   [37] V5 > 171 *
#> |   |   |   |   [38] V3 > 14 *
#> |   [39] V2 > 72
#> |   |   [40] V6 <= 0
#> |   |   |   [41] V7 <= 130
#> |   |   |   |   [42] V5 <= 114 *
#> |   |   |   |   [43] V5 > 114 *
#> |   |   |   [44] V7 > 130
#> |   |   |   |   [45] V5 <= 177
#> |   |   |   |   |   [46] V4 <= 0 *
#> |   |   |   |   |   [47] V4 > 0 *
#> |   |   |   |   [48] V5 > 177 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V5 <= 173
#> |   |   |   |   [51] V3 <= 13
#> |   |   |   |   |   [52] V4 <= 0
#> |   |   |   |   |   |   [53] V3 <= 5
#> |   |   |   |   |   |   |   [54] V7 <= 137 *
#> |   |   |   |   |   |   |   [55] V7 > 137 *
#> |   |   |   |   |   |   [56] V3 > 5 *
#> |   |   |   |   |   [57] V4 > 0
#> |   |   |   |   |   |   [58] V2 <= 81
#> |   |   |   |   |   |   |   [59] V3 <= 3 *
#> |   |   |   |   |   |   |   [60] V3 > 3 *
#> |   |   |   |   |   |   [61] V2 > 81 *
#> |   |   |   |   [62] V3 > 13 *
#> |   |   |   [63] V5 > 173 *
#> 
#> $nodes[[24]]
#> [1] root
#> |   [2] V7 <= 107
#> |   |   [3] V3 <= 6
#> |   |   |   [4] V5 <= 50
#> |   |   |   |   [5] V2 <= 65 *
#> |   |   |   |   [6] V2 > 65 *
#> |   |   |   [7] V5 > 50 *
#> |   |   [8] V3 > 6
#> |   |   |   [9] V5 <= 11 *
#> |   |   |   [10] V5 > 11 *
#> |   [11] V7 > 107
#> |   |   [12] V6 <= 0
#> |   |   |   [13] V5 <= 177
#> |   |   |   |   [14] V4 <= 0
#> |   |   |   |   |   [15] V2 <= 62 *
#> |   |   |   |   |   [16] V2 > 62
#> |   |   |   |   |   |   [17] V7 <= 130 *
#> |   |   |   |   |   |   [18] V7 > 130 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V2 <= 66
#> |   |   |   |   |   |   [21] V7 <= 123 *
#> |   |   |   |   |   |   [22] V7 > 123
#> |   |   |   |   |   |   |   [23] V5 <= 1 *
#> |   |   |   |   |   |   |   [24] V5 > 1 *
#> |   |   |   |   |   [25] V2 > 66
#> |   |   |   |   |   |   [26] V5 <= 5
#> |   |   |   |   |   |   |   [27] V2 <= 75 *
#> |   |   |   |   |   |   |   [28] V2 > 75 *
#> |   |   |   |   |   |   [29] V5 > 5 *
#> |   |   |   [30] V5 > 177 *
#> |   |   [31] V6 > 0
#> |   |   |   [32] V4 <= 0
#> |   |   |   |   [33] V2 <= 58 *
#> |   |   |   |   [34] V2 > 58
#> |   |   |   |   |   [35] V7 <= 189
#> |   |   |   |   |   |   [36] V3 <= 6
#> |   |   |   |   |   |   |   [37] V5 <= 169
#> |   |   |   |   |   |   |   |   [38] V7 <= 142 *
#> |   |   |   |   |   |   |   |   [39] V7 > 142 *
#> |   |   |   |   |   |   |   [40] V5 > 169 *
#> |   |   |   |   |   |   [41] V3 > 6
#> |   |   |   |   |   |   |   [42] V2 <= 79 *
#> |   |   |   |   |   |   |   [43] V2 > 79 *
#> |   |   |   |   |   [44] V7 > 189 *
#> |   |   |   [45] V4 > 0
#> |   |   |   |   [46] V2 <= 84
#> |   |   |   |   |   [47] V2 <= 54 *
#> |   |   |   |   |   [48] V2 > 54
#> |   |   |   |   |   |   [49] V2 <= 57 *
#> |   |   |   |   |   |   [50] V2 > 57
#> |   |   |   |   |   |   |   [51] V2 <= 76
#> |   |   |   |   |   |   |   |   [52] V7 <= 135
#> |   |   |   |   |   |   |   |   |   [53] V3 <= 8 *
#> |   |   |   |   |   |   |   |   |   [54] V3 > 8 *
#> |   |   |   |   |   |   |   |   [55] V7 > 135
#> |   |   |   |   |   |   |   |   |   [56] V7 <= 170
#> |   |   |   |   |   |   |   |   |   |   [57] V2 <= 67 *
#> |   |   |   |   |   |   |   |   |   |   [58] V2 > 67 *
#> |   |   |   |   |   |   |   |   |   [59] V7 > 170 *
#> |   |   |   |   |   |   |   [60] V2 > 76 *
#> |   |   |   |   [61] V2 > 84 *
#> 
#> $nodes[[25]]
#> [1] root
#> |   [2] V2 <= 59
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V6 <= 0
#> |   |   |   |   |   [6] V5 <= 3 *
#> |   |   |   |   |   [7] V5 > 3 *
#> |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   [9] V2 <= 43 *
#> |   |   |   |   |   [10] V2 > 43
#> |   |   |   |   |   |   [11] V5 <= 9 *
#> |   |   |   |   |   |   [12] V5 > 9 *
#> |   |   |   [13] V5 > 99 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V5 <= 169
#> |   |   |   |   [16] V4 <= 0 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V6 <= 0 *
#> |   |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   |   [20] V7 <= 129 *
#> |   |   |   |   |   |   [21] V7 > 129 *
#> |   |   |   [22] V5 > 169 *
#> |   [23] V2 > 59
#> |   |   [24] V5 <= 177
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V6 <= 0
#> |   |   |   |   |   [27] V7 <= 112 *
#> |   |   |   |   |   [28] V7 > 112
#> |   |   |   |   |   |   [29] V2 <= 81
#> |   |   |   |   |   |   |   [30] V7 <= 143 *
#> |   |   |   |   |   |   |   [31] V7 > 143 *
#> |   |   |   |   |   |   [32] V2 > 81 *
#> |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   [34] V2 <= 85
#> |   |   |   |   |   |   [35] V2 <= 67 *
#> |   |   |   |   |   |   [36] V2 > 67
#> |   |   |   |   |   |   |   [37] V7 <= 145
#> |   |   |   |   |   |   |   |   [38] V2 <= 78 *
#> |   |   |   |   |   |   |   |   [39] V2 > 78 *
#> |   |   |   |   |   |   |   [40] V7 > 145 *
#> |   |   |   |   |   [41] V2 > 85 *
#> |   |   |   [42] V4 > 0
#> |   |   |   |   [43] V7 <= 175
#> |   |   |   |   |   [44] V2 <= 84
#> |   |   |   |   |   |   [45] V3 <= 13
#> |   |   |   |   |   |   |   [46] V5 <= 8
#> |   |   |   |   |   |   |   |   [47] V7 <= 130
#> |   |   |   |   |   |   |   |   |   [48] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [49] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [50] V2 <= 74 *
#> |   |   |   |   |   |   |   |   |   |   [51] V2 > 74 *
#> |   |   |   |   |   |   |   |   [52] V7 > 130
#> |   |   |   |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [55] V7 <= 140 *
#> |   |   |   |   |   |   |   |   |   |   [56] V7 > 140 *
#> |   |   |   |   |   |   |   [57] V5 > 8 *
#> |   |   |   |   |   |   [58] V3 > 13
#> |   |   |   |   |   |   |   [59] V3 <= 21
#> |   |   |   |   |   |   |   |   [60] V5 <= 9 *
#> |   |   |   |   |   |   |   |   [61] V5 > 9 *
#> |   |   |   |   |   |   |   [62] V3 > 21 *
#> |   |   |   |   |   [63] V2 > 84 *
#> |   |   |   |   [64] V7 > 175 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[26]]
#> [1] root
#> |   [2] V6 <= 0
#> |   |   [3] V7 <= 118
#> |   |   |   [4] V2 <= 76 *
#> |   |   |   [5] V2 > 76 *
#> |   |   [6] V7 > 118
#> |   |   |   [7] V2 <= 81
#> |   |   |   |   [8] V4 <= 0
#> |   |   |   |   |   [9] V3 <= 7
#> |   |   |   |   |   |   [10] V5 <= 123 *
#> |   |   |   |   |   |   [11] V5 > 123
#> |   |   |   |   |   |   |   [12] V2 <= 73 *
#> |   |   |   |   |   |   |   [13] V2 > 73 *
#> |   |   |   |   |   [14] V3 > 7 *
#> |   |   |   |   [15] V4 > 0
#> |   |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   |   [17] V7 <= 129 *
#> |   |   |   |   |   |   [18] V7 > 129
#> |   |   |   |   |   |   |   [19] V5 <= 4 *
#> |   |   |   |   |   |   |   [20] V5 > 4 *
#> |   |   |   |   |   [21] V2 > 63
#> |   |   |   |   |   |   [22] V5 <= 1 *
#> |   |   |   |   |   |   [23] V5 > 1
#> |   |   |   |   |   |   |   [24] V5 <= 8 *
#> |   |   |   |   |   |   |   [25] V5 > 8 *
#> |   |   |   [26] V2 > 81 *
#> |   [27] V6 > 0
#> |   |   [28] V4 <= 0
#> |   |   |   [29] V7 <= 114
#> |   |   |   |   [30] V2 <= 69 *
#> |   |   |   |   [31] V2 > 69 *
#> |   |   |   [32] V7 > 114
#> |   |   |   |   [33] V5 <= 126
#> |   |   |   |   |   [34] V7 <= 130 *
#> |   |   |   |   |   [35] V7 > 130
#> |   |   |   |   |   |   [36] V2 <= 69 *
#> |   |   |   |   |   |   [37] V2 > 69
#> |   |   |   |   |   |   |   [38] V5 <= 12 *
#> |   |   |   |   |   |   |   [39] V5 > 12 *
#> |   |   |   |   [40] V5 > 126
#> |   |   |   |   |   [41] V2 <= 79
#> |   |   |   |   |   |   [42] V7 <= 140 *
#> |   |   |   |   |   |   [43] V7 > 140 *
#> |   |   |   |   |   [44] V2 > 79 *
#> |   |   [45] V4 > 0
#> |   |   |   [46] V2 <= 74
#> |   |   |   |   [47] V2 <= 54
#> |   |   |   |   |   [48] V7 <= 120 *
#> |   |   |   |   |   [49] V7 > 120 *
#> |   |   |   |   [50] V2 > 54
#> |   |   |   |   |   [51] V2 <= 65
#> |   |   |   |   |   |   [52] V3 <= 4 *
#> |   |   |   |   |   |   [53] V3 > 4
#> |   |   |   |   |   |   |   [54] V3 <= 6 *
#> |   |   |   |   |   |   |   [55] V3 > 6 *
#> |   |   |   |   |   [56] V2 > 65
#> |   |   |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   |   |   [58] V5 > 0
#> |   |   |   |   |   |   |   [59] V2 <= 68 *
#> |   |   |   |   |   |   |   [60] V2 > 68 *
#> |   |   |   [61] V2 > 74
#> |   |   |   |   [62] V3 <= 14
#> |   |   |   |   |   [63] V3 <= 10 *
#> |   |   |   |   |   [64] V3 > 10 *
#> |   |   |   |   [65] V3 > 14 *
#> 
#> $nodes[[27]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 58 *
#> |   |   |   |   [6] V2 > 58
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V2 <= 54
#> |   |   |   |   |   [11] V2 <= 43 *
#> |   |   |   |   |   [12] V2 > 43
#> |   |   |   |   |   |   [13] V5 <= 1 *
#> |   |   |   |   |   |   [14] V5 > 1 *
#> |   |   |   |   [15] V2 > 54
#> |   |   |   |   |   [16] V2 <= 63
#> |   |   |   |   |   |   [17] V6 <= 0
#> |   |   |   |   |   |   |   [18] V2 <= 61 *
#> |   |   |   |   |   |   |   [19] V2 > 61 *
#> |   |   |   |   |   |   [20] V6 > 0
#> |   |   |   |   |   |   |   [21] V7 <= 135 *
#> |   |   |   |   |   |   |   [22] V7 > 135 *
#> |   |   |   |   |   [23] V2 > 63
#> |   |   |   |   |   |   [24] V3 <= 3 *
#> |   |   |   |   |   |   [25] V3 > 3
#> |   |   |   |   |   |   |   [26] V7 <= 120 *
#> |   |   |   |   |   |   |   [27] V7 > 120
#> |   |   |   |   |   |   |   |   [28] V2 <= 66 *
#> |   |   |   |   |   |   |   |   [29] V2 > 66
#> |   |   |   |   |   |   |   |   |   [30] V3 <= 5 *
#> |   |   |   |   |   |   |   |   |   [31] V3 > 5
#> |   |   |   |   |   |   |   |   |   |   [32] V2 <= 69 *
#> |   |   |   |   |   |   |   |   |   |   [33] V2 > 69 *
#> |   |   [34] V2 > 74
#> |   |   |   [35] V4 <= 0
#> |   |   |   |   [36] V7 <= 112 *
#> |   |   |   |   [37] V7 > 112
#> |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   [39] V6 > 0
#> |   |   |   |   |   |   [40] V2 <= 79 *
#> |   |   |   |   |   |   [41] V2 > 79
#> |   |   |   |   |   |   |   [42] V5 <= 53 *
#> |   |   |   |   |   |   |   [43] V5 > 53 *
#> |   |   |   [44] V4 > 0
#> |   |   |   |   [45] V3 <= 4 *
#> |   |   |   |   [46] V3 > 4
#> |   |   |   |   |   [47] V6 <= 0 *
#> |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   [49] V5 <= 9 *
#> |   |   |   |   |   |   [50] V5 > 9 *
#> |   [51] V5 > 173 *
#> 
#> $nodes[[28]]
#> [1] root
#> |   [2] V2 <= 63
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V5 <= 12
#> |   |   |   |   [5] V3 <= 2 *
#> |   |   |   |   [6] V3 > 2
#> |   |   |   |   |   [7] V4 <= 0 *
#> |   |   |   |   |   [8] V4 > 0
#> |   |   |   |   |   |   [9] V5 <= 9
#> |   |   |   |   |   |   |   [10] V5 <= 6
#> |   |   |   |   |   |   |   |   [11] V7 <= 155
#> |   |   |   |   |   |   |   |   |   [12] V3 <= 6
#> |   |   |   |   |   |   |   |   |   |   [13] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   [14] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   |   [15] V2 <= 54 *
#> |   |   |   |   |   |   |   |   |   |   |   [16] V2 > 54 *
#> |   |   |   |   |   |   |   |   |   [17] V3 > 6 *
#> |   |   |   |   |   |   |   |   [18] V7 > 155 *
#> |   |   |   |   |   |   |   [19] V5 > 6 *
#> |   |   |   |   |   |   [20] V5 > 9 *
#> |   |   |   [21] V5 > 12 *
#> |   |   [22] V5 > 169 *
#> |   [23] V2 > 63
#> |   |   [24] V7 <= 145
#> |   |   |   [25] V5 <= 168
#> |   |   |   |   [26] V7 <= 98 *
#> |   |   |   |   [27] V7 > 98
#> |   |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   |   [29] V2 <= 82
#> |   |   |   |   |   |   |   [30] V2 <= 76
#> |   |   |   |   |   |   |   |   [31] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [32] V5 > 4 *
#> |   |   |   |   |   |   |   [33] V2 > 76 *
#> |   |   |   |   |   |   [34] V2 > 82 *
#> |   |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   |   [36] V3 <= 13
#> |   |   |   |   |   |   |   [37] V2 <= 66 *
#> |   |   |   |   |   |   |   [38] V2 > 66
#> |   |   |   |   |   |   |   |   [39] V7 <= 134
#> |   |   |   |   |   |   |   |   |   [40] V7 <= 121 *
#> |   |   |   |   |   |   |   |   |   [41] V7 > 121 *
#> |   |   |   |   |   |   |   |   [42] V7 > 134 *
#> |   |   |   |   |   |   [43] V3 > 13 *
#> |   |   |   [44] V5 > 168 *
#> |   |   [45] V7 > 145
#> |   |   |   [46] V5 <= 173
#> |   |   |   |   [47] V2 <= 81
#> |   |   |   |   |   [48] V2 <= 73
#> |   |   |   |   |   |   [49] V7 <= 170 *
#> |   |   |   |   |   |   [50] V7 > 170 *
#> |   |   |   |   |   [51] V2 > 73
#> |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   [53] V6 > 0 *
#> |   |   |   |   [54] V2 > 81 *
#> |   |   |   [55] V5 > 173 *
#> 
#> $nodes[[29]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V7 <= 130
#> |   |   |   |   [5] V2 <= 57 *
#> |   |   |   |   [6] V2 > 57
#> |   |   |   |   |   [7] V6 <= 0 *
#> |   |   |   |   |   [8] V6 > 0
#> |   |   |   |   |   |   [9] V2 <= 77 *
#> |   |   |   |   |   |   [10] V2 > 77 *
#> |   |   |   [11] V7 > 130
#> |   |   |   |   [12] V6 <= 0
#> |   |   |   |   |   [13] V5 <= 6 *
#> |   |   |   |   |   [14] V5 > 6 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V7 <= 160
#> |   |   |   |   |   |   [17] V7 <= 140 *
#> |   |   |   |   |   |   [18] V7 > 140
#> |   |   |   |   |   |   |   [19] V3 <= 6 *
#> |   |   |   |   |   |   |   [20] V3 > 6 *
#> |   |   |   |   |   [21] V7 > 160 *
#> |   |   [22] V5 > 169
#> |   |   |   [23] V3 <= 12
#> |   |   |   |   [24] V3 <= 1 *
#> |   |   |   |   [25] V3 > 1 *
#> |   |   |   [26] V3 > 12 *
#> |   [27] V4 > 0
#> |   |   [28] V5 <= 11
#> |   |   |   [29] V7 <= 149
#> |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   [31] V2 <= 69
#> |   |   |   |   |   |   [32] V7 <= 118 *
#> |   |   |   |   |   |   [33] V7 > 118
#> |   |   |   |   |   |   |   [34] V3 <= 8 *
#> |   |   |   |   |   |   |   [35] V3 > 8 *
#> |   |   |   |   |   [36] V2 > 69 *
#> |   |   |   |   [37] V6 > 0
#> |   |   |   |   |   [38] V2 <= 74
#> |   |   |   |   |   |   [39] V5 <= 8
#> |   |   |   |   |   |   |   [40] V5 <= 2
#> |   |   |   |   |   |   |   |   [41] V2 <= 54 *
#> |   |   |   |   |   |   |   |   [42] V2 > 54
#> |   |   |   |   |   |   |   |   |   [43] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   [44] V7 > 135 *
#> |   |   |   |   |   |   |   [45] V5 > 2 *
#> |   |   |   |   |   |   [46] V5 > 8 *
#> |   |   |   |   |   [47] V2 > 74
#> |   |   |   |   |   |   [48] V3 <= 10 *
#> |   |   |   |   |   |   [49] V3 > 10 *
#> |   |   |   [50] V7 > 149
#> |   |   |   |   [51] V7 <= 167
#> |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   [54] V2 <= 65 *
#> |   |   |   |   |   |   [55] V2 > 65 *
#> |   |   |   |   [56] V7 > 167
#> |   |   |   |   |   [57] V7 <= 199
#> |   |   |   |   |   |   [58] V2 <= 65 *
#> |   |   |   |   |   |   [59] V2 > 65
#> |   |   |   |   |   |   |   [60] V5 <= 5 *
#> |   |   |   |   |   |   |   [61] V5 > 5 *
#> |   |   |   |   |   [62] V7 > 199 *
#> |   |   [63] V5 > 11 *
#> 
#> $nodes[[30]]
#> [1] root
#> |   [2] V7 <= 85 *
#> |   [3] V7 > 85
#> |   |   [4] V5 <= 177
#> |   |   |   [5] V5 <= 15
#> |   |   |   |   [6] V2 <= 70
#> |   |   |   |   |   [7] V4 <= 0
#> |   |   |   |   |   |   [8] V5 <= 3 *
#> |   |   |   |   |   |   [9] V5 > 3 *
#> |   |   |   |   |   [10] V4 > 0
#> |   |   |   |   |   |   [11] V2 <= 54
#> |   |   |   |   |   |   |   [12] V3 <= 7
#> |   |   |   |   |   |   |   |   [13] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [14] V2 > 43
#> |   |   |   |   |   |   |   |   |   [15] V7 <= 129 *
#> |   |   |   |   |   |   |   |   |   [16] V7 > 129 *
#> |   |   |   |   |   |   |   [17] V3 > 7 *
#> |   |   |   |   |   |   [18] V2 > 54
#> |   |   |   |   |   |   |   [19] V7 <= 170
#> |   |   |   |   |   |   |   |   [20] V2 <= 57 *
#> |   |   |   |   |   |   |   |   [21] V2 > 57
#> |   |   |   |   |   |   |   |   |   [22] V5 <= 5
#> |   |   |   |   |   |   |   |   |   |   [23] V2 <= 63 *
#> |   |   |   |   |   |   |   |   |   |   [24] V2 > 63
#> |   |   |   |   |   |   |   |   |   |   |   [25] V3 <= 2 *
#> |   |   |   |   |   |   |   |   |   |   |   [26] V3 > 2
#> |   |   |   |   |   |   |   |   |   |   |   |   [27] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [28] V5 > 0 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 5
#> |   |   |   |   |   |   |   |   |   |   [30] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [31] V7 > 130 *
#> |   |   |   |   |   |   |   [32] V7 > 170 *
#> |   |   |   |   [33] V2 > 70
#> |   |   |   |   |   [34] V3 <= 6
#> |   |   |   |   |   |   [35] V7 <= 168
#> |   |   |   |   |   |   |   [36] V3 <= 1 *
#> |   |   |   |   |   |   |   [37] V3 > 1
#> |   |   |   |   |   |   |   |   [38] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [39] V4 > 0
#> |   |   |   |   |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   |   |   |   |   [41] V3 > 3 *
#> |   |   |   |   |   |   [42] V7 > 168 *
#> |   |   |   |   |   [43] V3 > 6
#> |   |   |   |   |   |   [44] V3 <= 13
#> |   |   |   |   |   |   |   [45] V5 <= 9
#> |   |   |   |   |   |   |   |   [46] V2 <= 78
#> |   |   |   |   |   |   |   |   |   [47] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [48] V5 > 1 *
#> |   |   |   |   |   |   |   |   [49] V2 > 78 *
#> |   |   |   |   |   |   |   [50] V5 > 9 *
#> |   |   |   |   |   |   [51] V3 > 13
#> |   |   |   |   |   |   |   [52] V5 <= 8 *
#> |   |   |   |   |   |   |   [53] V5 > 8 *
#> |   |   |   [54] V5 > 15
#> |   |   |   |   [55] V2 <= 60 *
#> |   |   |   |   [56] V2 > 60
#> |   |   |   |   |   [57] V5 <= 158
#> |   |   |   |   |   |   [58] V6 <= 0 *
#> |   |   |   |   |   |   [59] V6 > 0
#> |   |   |   |   |   |   |   [60] V2 <= 80 *
#> |   |   |   |   |   |   |   [61] V2 > 80 *
#> |   |   |   |   |   [62] V5 > 158 *
#> |   |   [63] V5 > 177 *
#> 
#> $nodes[[31]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V2 <= 74
#> |   |   |   [4] V7 <= 150
#> |   |   |   |   [5] V5 <= 123
#> |   |   |   |   |   [6] V2 <= 59 *
#> |   |   |   |   |   [7] V2 > 59
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120 *
#> |   |   |   |   [10] V5 > 123
#> |   |   |   |   |   [11] V7 <= 135 *
#> |   |   |   |   |   [12] V7 > 135 *
#> |   |   |   [13] V7 > 150
#> |   |   |   |   [14] V2 <= 52 *
#> |   |   |   |   [15] V2 > 52
#> |   |   |   |   |   [16] V5 <= 171 *
#> |   |   |   |   |   [17] V5 > 171 *
#> |   |   [18] V2 > 74
#> |   |   |   [19] V7 <= 112
#> |   |   |   |   [20] V2 <= 84 *
#> |   |   |   |   [21] V2 > 84 *
#> |   |   |   [22] V7 > 112
#> |   |   |   |   [23] V5 <= 177
#> |   |   |   |   |   [24] V7 <= 157
#> |   |   |   |   |   |   [25] V6 <= 0 *
#> |   |   |   |   |   |   [26] V6 > 0 *
#> |   |   |   |   |   [27] V7 > 157 *
#> |   |   |   |   [28] V5 > 177 *
#> |   [29] V4 > 0
#> |   |   [30] V2 <= 74
#> |   |   |   [31] V7 <= 102 *
#> |   |   |   [32] V7 > 102
#> |   |   |   |   [33] V7 <= 199
#> |   |   |   |   |   [34] V5 <= 0
#> |   |   |   |   |   |   [35] V3 <= 4 *
#> |   |   |   |   |   |   [36] V3 > 4 *
#> |   |   |   |   |   [37] V5 > 0
#> |   |   |   |   |   |   [38] V2 <= 63
#> |   |   |   |   |   |   |   [39] V7 <= 148
#> |   |   |   |   |   |   |   |   [40] V5 <= 2 *
#> |   |   |   |   |   |   |   |   [41] V5 > 2
#> |   |   |   |   |   |   |   |   |   [42] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [43] V6 > 0 *
#> |   |   |   |   |   |   |   [44] V7 > 148
#> |   |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [46] V6 > 0 *
#> |   |   |   |   |   |   [47] V2 > 63
#> |   |   |   |   |   |   |   [48] V6 <= 0
#> |   |   |   |   |   |   |   |   [49] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [50] V3 > 5 *
#> |   |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   |   [52] V3 <= 7 *
#> |   |   |   |   |   |   |   |   [53] V3 > 7 *
#> |   |   |   |   [54] V7 > 199 *
#> |   |   [55] V2 > 74
#> |   |   |   [56] V3 <= 13
#> |   |   |   |   [57] V5 <= 0 *
#> |   |   |   |   [58] V5 > 0
#> |   |   |   |   |   [59] V7 <= 127 *
#> |   |   |   |   |   [60] V7 > 127 *
#> |   |   |   [61] V3 > 13 *
#> 
#> $nodes[[32]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 173
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V7 <= 112 *
#> |   |   |   |   |   [10] V7 > 112
#> |   |   |   |   |   |   [11] V3 <= 4 *
#> |   |   |   |   |   |   [12] V3 > 4 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V7 <= 145
#> |   |   |   |   |   |   [15] V3 <= 8
#> |   |   |   |   |   |   |   [16] V5 <= 7 *
#> |   |   |   |   |   |   |   [17] V5 > 7 *
#> |   |   |   |   |   |   [18] V3 > 8 *
#> |   |   |   |   |   [19] V7 > 145
#> |   |   |   |   |   |   [20] V7 <= 160 *
#> |   |   |   |   |   |   [21] V7 > 160 *
#> |   |   [22] V5 > 173
#> |   |   |   [23] V3 <= 12 *
#> |   |   |   [24] V3 > 12 *
#> |   [25] V4 > 0
#> |   |   [26] V6 <= 0
#> |   |   |   [27] V2 <= 75
#> |   |   |   |   [28] V5 <= 7
#> |   |   |   |   |   [29] V3 <= 8
#> |   |   |   |   |   |   [30] V5 <= 2
#> |   |   |   |   |   |   |   [31] V3 <= 4
#> |   |   |   |   |   |   |   |   [32] V7 <= 134 *
#> |   |   |   |   |   |   |   |   [33] V7 > 134 *
#> |   |   |   |   |   |   |   [34] V3 > 4 *
#> |   |   |   |   |   |   [35] V5 > 2 *
#> |   |   |   |   |   [36] V3 > 8 *
#> |   |   |   |   [37] V5 > 7
#> |   |   |   |   |   [38] V2 <= 54 *
#> |   |   |   |   |   [39] V2 > 54
#> |   |   |   |   |   |   [40] V7 <= 124 *
#> |   |   |   |   |   |   [41] V7 > 124 *
#> |   |   |   [42] V2 > 75 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V3 <= 14
#> |   |   |   |   [45] V5 <= 1
#> |   |   |   |   |   [46] V7 <= 90 *
#> |   |   |   |   |   [47] V7 > 90
#> |   |   |   |   |   |   [48] V7 <= 149
#> |   |   |   |   |   |   |   [49] V2 <= 79
#> |   |   |   |   |   |   |   |   [50] V5 <= 0
#> |   |   |   |   |   |   |   |   |   [51] V7 <= 138 *
#> |   |   |   |   |   |   |   |   |   [52] V7 > 138 *
#> |   |   |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   |   |   [54] V2 > 79 *
#> |   |   |   |   |   |   [55] V7 > 149 *
#> |   |   |   |   [56] V5 > 1
#> |   |   |   |   |   [57] V7 <= 140
#> |   |   |   |   |   |   [58] V2 <= 71 *
#> |   |   |   |   |   |   [59] V2 > 71 *
#> |   |   |   |   |   [60] V7 > 140
#> |   |   |   |   |   |   [61] V2 <= 69 *
#> |   |   |   |   |   |   [62] V2 > 69 *
#> |   |   |   [63] V3 > 14
#> |   |   |   |   [64] V7 <= 130 *
#> |   |   |   |   [65] V7 > 130 *
#> 
#> $nodes[[33]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   [8] V2 <= 54
#> |   |   |   |   |   |   [9] V2 <= 43 *
#> |   |   |   |   |   |   [10] V2 > 43
#> |   |   |   |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   |   |   |   [12] V6 > 0 *
#> |   |   |   |   |   [13] V2 > 54
#> |   |   |   |   |   |   [14] V7 <= 160
#> |   |   |   |   |   |   |   [15] V6 <= 0
#> |   |   |   |   |   |   |   |   [16] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [17] V3 > 4 *
#> |   |   |   |   |   |   |   [18] V6 > 0
#> |   |   |   |   |   |   |   |   [19] V3 <= 4 *
#> |   |   |   |   |   |   |   |   [20] V3 > 4
#> |   |   |   |   |   |   |   |   |   [21] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   [22] V7 > 130 *
#> |   |   |   |   |   |   [23] V7 > 160 *
#> |   |   [24] V5 > 169 *
#> |   [25] V2 > 66
#> |   |   [26] V5 <= 169
#> |   |   |   [27] V5 <= 13
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V5 <= 4
#> |   |   |   |   |   |   [30] V6 <= 0 *
#> |   |   |   |   |   |   [31] V6 > 0 *
#> |   |   |   |   |   [32] V5 > 4
#> |   |   |   |   |   |   [33] V3 <= 6 *
#> |   |   |   |   |   |   [34] V3 > 6 *
#> |   |   |   |   [35] V4 > 0
#> |   |   |   |   |   [36] V5 <= 10
#> |   |   |   |   |   |   [37] V5 <= 0
#> |   |   |   |   |   |   |   [38] V7 <= 143
#> |   |   |   |   |   |   |   |   [39] V7 <= 121 *
#> |   |   |   |   |   |   |   |   [40] V7 > 121 *
#> |   |   |   |   |   |   |   [41] V7 > 143 *
#> |   |   |   |   |   |   [42] V5 > 0
#> |   |   |   |   |   |   |   [43] V5 <= 1 *
#> |   |   |   |   |   |   |   [44] V5 > 1
#> |   |   |   |   |   |   |   |   [45] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [46] V7 <= 141 *
#> |   |   |   |   |   |   |   |   |   [47] V7 > 141 *
#> |   |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   [50] V3 > 10 *
#> |   |   |   |   |   [51] V5 > 10 *
#> |   |   |   [52] V5 > 13
#> |   |   |   |   [53] V5 <= 69 *
#> |   |   |   |   [54] V5 > 69 *
#> |   |   [55] V5 > 169
#> |   |   |   [56] V2 <= 83
#> |   |   |   |   [57] V3 <= 10 *
#> |   |   |   |   [58] V3 > 10 *
#> |   |   |   [59] V2 > 83 *
#> 
#> $nodes[[34]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V2 <= 62 *
#> |   |   |   |   [6] V2 > 62
#> |   |   |   |   |   [7] V3 <= 5 *
#> |   |   |   |   |   [8] V3 > 5 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V2 <= 61 *
#> |   |   |   |   [11] V2 > 61
#> |   |   |   |   |   [12] V2 <= 69 *
#> |   |   |   |   |   [13] V2 > 69
#> |   |   |   |   |   |   [14] V5 <= 6 *
#> |   |   |   |   |   |   [15] V5 > 6
#> |   |   |   |   |   |   |   [16] V7 <= 112 *
#> |   |   |   |   |   |   |   [17] V7 > 112 *
#> |   |   [18] V4 > 0
#> |   |   |   [19] V5 <= 10
#> |   |   |   |   [20] V2 <= 84
#> |   |   |   |   |   [21] V2 <= 54
#> |   |   |   |   |   |   [22] V2 <= 43 *
#> |   |   |   |   |   |   [23] V2 > 43
#> |   |   |   |   |   |   |   [24] V2 <= 51
#> |   |   |   |   |   |   |   |   [25] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [26] V7 > 140 *
#> |   |   |   |   |   |   |   [27] V2 > 51 *
#> |   |   |   |   |   [28] V2 > 54
#> |   |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   |   [30] V5 <= 6
#> |   |   |   |   |   |   |   |   [31] V2 <= 74
#> |   |   |   |   |   |   |   |   |   [32] V7 <= 135 *
#> |   |   |   |   |   |   |   |   |   [33] V7 > 135 *
#> |   |   |   |   |   |   |   |   [34] V2 > 74 *
#> |   |   |   |   |   |   |   [35] V5 > 6
#> |   |   |   |   |   |   |   |   [36] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [37] V3 > 10 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V3 <= 10
#> |   |   |   |   |   |   |   |   [40] V5 <= 1
#> |   |   |   |   |   |   |   |   |   [41] V3 <= 4
#> |   |   |   |   |   |   |   |   |   |   [42] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   |   [43] V7 > 120 *
#> |   |   |   |   |   |   |   |   |   [44] V3 > 4 *
#> |   |   |   |   |   |   |   |   [45] V5 > 1
#> |   |   |   |   |   |   |   |   |   [46] V7 <= 125 *
#> |   |   |   |   |   |   |   |   |   [47] V7 > 125 *
#> |   |   |   |   |   |   |   [48] V3 > 10
#> |   |   |   |   |   |   |   |   [49] V2 <= 71 *
#> |   |   |   |   |   |   |   |   [50] V2 > 71 *
#> |   |   |   |   [51] V2 > 84 *
#> |   |   |   [52] V5 > 10
#> |   |   |   |   [53] V3 <= 14 *
#> |   |   |   |   [54] V3 > 14 *
#> |   [55] V5 > 177 *
#> 
#> $nodes[[35]]
#> [1] root
#> |   [2] V7 <= 110
#> |   |   [3] V5 <= 115
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V2 <= 70 *
#> |   |   |   |   [6] V2 > 70 *
#> |   |   |   [7] V4 > 0
#> |   |   |   |   [8] V2 <= 76 *
#> |   |   |   |   [9] V2 > 76 *
#> |   |   [10] V5 > 115 *
#> |   [11] V7 > 110
#> |   |   [12] V2 <= 73
#> |   |   |   [13] V5 <= 169
#> |   |   |   |   [14] V2 <= 54
#> |   |   |   |   |   [15] V5 <= 10
#> |   |   |   |   |   |   [16] V7 <= 120 *
#> |   |   |   |   |   |   [17] V7 > 120
#> |   |   |   |   |   |   |   [18] V2 <= 42 *
#> |   |   |   |   |   |   |   [19] V2 > 42
#> |   |   |   |   |   |   |   |   [20] V3 <= 6 *
#> |   |   |   |   |   |   |   |   [21] V3 > 6 *
#> |   |   |   |   |   [22] V5 > 10 *
#> |   |   |   |   [23] V2 > 54
#> |   |   |   |   |   [24] V2 <= 67
#> |   |   |   |   |   |   [25] V2 <= 57
#> |   |   |   |   |   |   |   [26] V3 <= 5 *
#> |   |   |   |   |   |   |   [27] V3 > 5 *
#> |   |   |   |   |   |   [28] V2 > 57
#> |   |   |   |   |   |   |   [29] V6 <= 0
#> |   |   |   |   |   |   |   |   [30] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [31] V2 <= 62 *
#> |   |   |   |   |   |   |   |   |   [32] V2 > 62 *
#> |   |   |   |   |   |   |   |   [33] V7 > 160 *
#> |   |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   |   [35] V4 <= 0 *
#> |   |   |   |   |   |   |   |   [36] V4 > 0
#> |   |   |   |   |   |   |   |   |   [37] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   [38] V3 > 4 *
#> |   |   |   |   |   [39] V2 > 67
#> |   |   |   |   |   |   [40] V5 <= 5
#> |   |   |   |   |   |   |   [41] V6 <= 0 *
#> |   |   |   |   |   |   |   [42] V6 > 0 *
#> |   |   |   |   |   |   [43] V5 > 5
#> |   |   |   |   |   |   |   [44] V4 <= 0 *
#> |   |   |   |   |   |   |   [45] V4 > 0 *
#> |   |   |   [46] V5 > 169
#> |   |   |   |   [47] V7 <= 180 *
#> |   |   |   |   [48] V7 > 180 *
#> |   |   [49] V2 > 73
#> |   |   |   [50] V2 <= 87
#> |   |   |   |   [51] V5 <= 167
#> |   |   |   |   |   [52] V6 <= 0
#> |   |   |   |   |   |   [53] V2 <= 81 *
#> |   |   |   |   |   |   [54] V2 > 81 *
#> |   |   |   |   |   [55] V6 > 0
#> |   |   |   |   |   |   [56] V7 <= 163
#> |   |   |   |   |   |   |   [57] V4 <= 0
#> |   |   |   |   |   |   |   |   [58] V2 <= 79 *
#> |   |   |   |   |   |   |   |   [59] V2 > 79 *
#> |   |   |   |   |   |   |   [60] V4 > 0
#> |   |   |   |   |   |   |   |   [61] V5 <= 1 *
#> |   |   |   |   |   |   |   |   [62] V5 > 1 *
#> |   |   |   |   |   |   [63] V7 > 163 *
#> |   |   |   |   [64] V5 > 167 *
#> |   |   |   [65] V2 > 87
#> |   |   |   |   [66] V2 <= 90 *
#> |   |   |   |   [67] V2 > 90 *
#> 
#> $nodes[[36]]
#> [1] root
#> |   [2] V5 <= 169
#> |   |   [3] V2 <= 66
#> |   |   |   [4] V5 <= 13
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 54
#> |   |   |   |   |   |   [8] V2 <= 40 *
#> |   |   |   |   |   |   [9] V2 > 40
#> |   |   |   |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   |   |   |   [11] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [12] V7 > 135 *
#> |   |   |   |   |   |   |   [13] V6 > 0 *
#> |   |   |   |   |   [14] V2 > 54
#> |   |   |   |   |   |   [15] V3 <= 3 *
#> |   |   |   |   |   |   [16] V3 > 3
#> |   |   |   |   |   |   |   [17] V3 <= 14
#> |   |   |   |   |   |   |   |   [18] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [19] V7 > 135
#> |   |   |   |   |   |   |   |   |   [20] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [21] V6 > 0 *
#> |   |   |   |   |   |   |   [22] V3 > 14 *
#> |   |   |   [23] V5 > 13 *
#> |   |   [24] V2 > 66
#> |   |   |   [25] V4 <= 0
#> |   |   |   |   [26] V7 <= 112
#> |   |   |   |   |   [27] V2 <= 81 *
#> |   |   |   |   |   [28] V2 > 81 *
#> |   |   |   |   [29] V7 > 112
#> |   |   |   |   |   [30] V3 <= 8
#> |   |   |   |   |   |   [31] V6 <= 0
#> |   |   |   |   |   |   |   [32] V5 <= 8 *
#> |   |   |   |   |   |   |   [33] V5 > 8 *
#> |   |   |   |   |   |   [34] V6 > 0
#> |   |   |   |   |   |   |   [35] V7 <= 130 *
#> |   |   |   |   |   |   |   [36] V7 > 130 *
#> |   |   |   |   |   [37] V3 > 8 *
#> |   |   |   [38] V4 > 0
#> |   |   |   |   [39] V2 <= 72
#> |   |   |   |   |   [40] V3 <= 3 *
#> |   |   |   |   |   [41] V3 > 3
#> |   |   |   |   |   |   [42] V7 <= 120 *
#> |   |   |   |   |   |   [43] V7 > 120
#> |   |   |   |   |   |   |   [44] V2 <= 69 *
#> |   |   |   |   |   |   |   [45] V2 > 69 *
#> |   |   |   |   [46] V2 > 72
#> |   |   |   |   |   [47] V5 <= 10
#> |   |   |   |   |   |   [48] V7 <= 124
#> |   |   |   |   |   |   |   [49] V7 <= 118 *
#> |   |   |   |   |   |   |   [50] V7 > 118 *
#> |   |   |   |   |   |   [51] V7 > 124
#> |   |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   |   |   [54] V3 <= 10 *
#> |   |   |   |   |   |   |   |   [55] V3 > 10 *
#> |   |   |   |   |   [56] V5 > 10 *
#> |   [57] V5 > 169
#> |   |   [58] V2 <= 83
#> |   |   |   [59] V7 <= 134 *
#> |   |   |   [60] V7 > 134
#> |   |   |   |   [61] V7 <= 140 *
#> |   |   |   |   [62] V7 > 140 *
#> |   |   [63] V2 > 83 *
#> 
#> $nodes[[37]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V7 <= 130
#> |   |   |   |   |   [6] V5 <= 4 *
#> |   |   |   |   |   [7] V5 > 4 *
#> |   |   |   |   [8] V7 > 130
#> |   |   |   |   |   [9] V5 <= 7 *
#> |   |   |   |   |   [10] V5 > 7 *
#> |   |   |   [11] V6 > 0
#> |   |   |   |   [12] V5 <= 4
#> |   |   |   |   |   [13] V2 <= 82 *
#> |   |   |   |   |   [14] V2 > 82 *
#> |   |   |   |   [15] V5 > 4
#> |   |   |   |   |   [16] V2 <= 58 *
#> |   |   |   |   |   [17] V2 > 58
#> |   |   |   |   |   |   [18] V7 <= 140
#> |   |   |   |   |   |   |   [19] V5 <= 10 *
#> |   |   |   |   |   |   |   [20] V5 > 10 *
#> |   |   |   |   |   |   [21] V7 > 140
#> |   |   |   |   |   |   |   [22] V5 <= 8 *
#> |   |   |   |   |   |   |   [23] V5 > 8 *
#> |   |   [24] V5 > 171
#> |   |   |   [25] V6 <= 0 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V3 <= 10 *
#> |   |   |   |   [28] V3 > 10 *
#> |   [29] V4 > 0
#> |   |   [30] V7 <= 93 *
#> |   |   [31] V7 > 93
#> |   |   |   [32] V6 <= 0
#> |   |   |   |   [33] V2 <= 71
#> |   |   |   |   |   [34] V7 <= 130
#> |   |   |   |   |   |   [35] V2 <= 54 *
#> |   |   |   |   |   |   [36] V2 > 54 *
#> |   |   |   |   |   [37] V7 > 130
#> |   |   |   |   |   |   [38] V2 <= 55 *
#> |   |   |   |   |   |   [39] V2 > 55 *
#> |   |   |   |   [40] V2 > 71
#> |   |   |   |   |   [41] V7 <= 141 *
#> |   |   |   |   |   [42] V7 > 141 *
#> |   |   |   [43] V6 > 0
#> |   |   |   |   [44] V2 <= 74
#> |   |   |   |   |   [45] V7 <= 112 *
#> |   |   |   |   |   [46] V7 > 112
#> |   |   |   |   |   |   [47] V7 <= 135
#> |   |   |   |   |   |   |   [48] V7 <= 120 *
#> |   |   |   |   |   |   |   [49] V7 > 120 *
#> |   |   |   |   |   |   [50] V7 > 135
#> |   |   |   |   |   |   |   [51] V5 <= 2
#> |   |   |   |   |   |   |   |   [52] V2 <= 55 *
#> |   |   |   |   |   |   |   |   [53] V2 > 55 *
#> |   |   |   |   |   |   |   [54] V5 > 2
#> |   |   |   |   |   |   |   |   [55] V5 <= 8 *
#> |   |   |   |   |   |   |   |   [56] V5 > 8 *
#> |   |   |   |   [57] V2 > 74
#> |   |   |   |   |   [58] V7 <= 150
#> |   |   |   |   |   |   [59] V2 <= 84 *
#> |   |   |   |   |   |   [60] V2 > 84 *
#> |   |   |   |   |   [61] V7 > 150 *
#> 
#> $nodes[[38]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V2 <= 42 *
#> |   |   |   |   [6] V2 > 42
#> |   |   |   |   |   [7] V3 <= 4 *
#> |   |   |   |   |   [8] V3 > 4 *
#> |   |   |   [9] V2 > 54
#> |   |   |   |   [10] V4 <= 0
#> |   |   |   |   |   [11] V2 <= 71
#> |   |   |   |   |   |   [12] V5 <= 171
#> |   |   |   |   |   |   |   [13] V5 <= 11 *
#> |   |   |   |   |   |   |   [14] V5 > 11 *
#> |   |   |   |   |   |   [15] V5 > 171 *
#> |   |   |   |   |   [16] V2 > 71 *
#> |   |   |   |   [17] V4 > 0
#> |   |   |   |   |   [18] V3 <= 2 *
#> |   |   |   |   |   [19] V3 > 2
#> |   |   |   |   |   |   [20] V5 <= 7
#> |   |   |   |   |   |   |   [21] V7 <= 132 *
#> |   |   |   |   |   |   |   [22] V7 > 132 *
#> |   |   |   |   |   |   [23] V5 > 7
#> |   |   |   |   |   |   |   [24] V5 <= 10 *
#> |   |   |   |   |   |   |   [25] V5 > 10 *
#> |   |   [26] V6 > 0
#> |   |   |   [27] V5 <= 99
#> |   |   |   |   [28] V4 <= 0
#> |   |   |   |   |   [29] V2 <= 61 *
#> |   |   |   |   |   [30] V2 > 61 *
#> |   |   |   |   [31] V4 > 0
#> |   |   |   |   |   [32] V2 <= 54
#> |   |   |   |   |   |   [33] V3 <= 3 *
#> |   |   |   |   |   |   [34] V3 > 3 *
#> |   |   |   |   |   [35] V2 > 54
#> |   |   |   |   |   |   [36] V7 <= 112 *
#> |   |   |   |   |   |   [37] V7 > 112
#> |   |   |   |   |   |   |   [38] V3 <= 5 *
#> |   |   |   |   |   |   |   [39] V3 > 5
#> |   |   |   |   |   |   |   |   [40] V3 <= 10
#> |   |   |   |   |   |   |   |   |   [41] V5 <= 2 *
#> |   |   |   |   |   |   |   |   |   [42] V5 > 2 *
#> |   |   |   |   |   |   |   |   [43] V3 > 10 *
#> |   |   |   [44] V5 > 99
#> |   |   |   |   [45] V2 <= 57 *
#> |   |   |   |   [46] V2 > 57 *
#> |   [47] V2 > 74
#> |   |   [48] V6 <= 0
#> |   |   |   [49] V5 <= 177
#> |   |   |   |   [50] V4 <= 0
#> |   |   |   |   |   [51] V7 <= 120 *
#> |   |   |   |   |   [52] V7 > 120 *
#> |   |   |   |   [53] V4 > 0
#> |   |   |   |   |   [54] V2 <= 79 *
#> |   |   |   |   |   [55] V2 > 79 *
#> |   |   |   [56] V5 > 177 *
#> |   |   [57] V6 > 0
#> |   |   |   [58] V3 <= 6
#> |   |   |   |   [59] V7 <= 112 *
#> |   |   |   |   [60] V7 > 112
#> |   |   |   |   |   [61] V4 <= 0
#> |   |   |   |   |   |   [62] V5 <= 110 *
#> |   |   |   |   |   |   [63] V5 > 110 *
#> |   |   |   |   |   [64] V4 > 0 *
#> |   |   |   [65] V3 > 6
#> |   |   |   |   [66] V2 <= 77 *
#> |   |   |   |   [67] V2 > 77
#> |   |   |   |   |   [68] V5 <= 62
#> |   |   |   |   |   |   [69] V4 <= 0 *
#> |   |   |   |   |   |   [70] V4 > 0 *
#> |   |   |   |   |   [71] V5 > 62 *
#> 
#> $nodes[[39]]
#> [1] root
#> |   [2] V2 <= 78
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V6 <= 0
#> |   |   |   |   [5] V5 <= 16
#> |   |   |   |   |   [6] V2 <= 49 *
#> |   |   |   |   |   [7] V2 > 49 *
#> |   |   |   |   [8] V5 > 16 *
#> |   |   |   [9] V6 > 0
#> |   |   |   |   [10] V7 <= 120 *
#> |   |   |   |   [11] V7 > 120
#> |   |   |   |   |   [12] V7 <= 140 *
#> |   |   |   |   |   [13] V7 > 140 *
#> |   |   [14] V2 > 54
#> |   |   |   [15] V7 <= 114
#> |   |   |   |   [16] V4 <= 0 *
#> |   |   |   |   [17] V4 > 0 *
#> |   |   |   [18] V7 > 114
#> |   |   |   |   [19] V2 <= 70
#> |   |   |   |   |   [20] V5 <= 171
#> |   |   |   |   |   |   [21] V3 <= 1 *
#> |   |   |   |   |   |   [22] V3 > 1
#> |   |   |   |   |   |   |   [23] V4 <= 0
#> |   |   |   |   |   |   |   |   [24] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [25] V7 > 150 *
#> |   |   |   |   |   |   |   [26] V4 > 0
#> |   |   |   |   |   |   |   |   [27] V3 <= 5
#> |   |   |   |   |   |   |   |   |   [28] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   [29] V5 > 1 *
#> |   |   |   |   |   |   |   |   [30] V3 > 5
#> |   |   |   |   |   |   |   |   |   [31] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [32] V6 > 0
#> |   |   |   |   |   |   |   |   |   |   [33] V2 <= 66 *
#> |   |   |   |   |   |   |   |   |   |   [34] V2 > 66 *
#> |   |   |   |   |   [35] V5 > 171
#> |   |   |   |   |   |   [36] V6 <= 0 *
#> |   |   |   |   |   |   [37] V6 > 0 *
#> |   |   |   |   [38] V2 > 70
#> |   |   |   |   |   [39] V5 <= 119
#> |   |   |   |   |   |   [40] V5 <= 13
#> |   |   |   |   |   |   |   [41] V5 <= 5
#> |   |   |   |   |   |   |   |   [42] V7 <= 143 *
#> |   |   |   |   |   |   |   |   [43] V7 > 143 *
#> |   |   |   |   |   |   |   [44] V5 > 5
#> |   |   |   |   |   |   |   |   [45] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [46] V6 > 0 *
#> |   |   |   |   |   |   [47] V5 > 13 *
#> |   |   |   |   |   [48] V5 > 119 *
#> |   [49] V2 > 78
#> |   |   [50] V2 <= 88
#> |   |   |   [51] V5 <= 177
#> |   |   |   |   [52] V7 <= 101 *
#> |   |   |   |   [53] V7 > 101
#> |   |   |   |   |   [54] V6 <= 0
#> |   |   |   |   |   |   [55] V4 <= 0 *
#> |   |   |   |   |   |   [56] V4 > 0 *
#> |   |   |   |   |   [57] V6 > 0
#> |   |   |   |   |   |   [58] V3 <= 9 *
#> |   |   |   |   |   |   [59] V3 > 9 *
#> |   |   |   [60] V5 > 177 *
#> |   |   [61] V2 > 88 *
#> 
#> $nodes[[40]]
#> [1] root
#> |   [2] V4 <= 0
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V7 <= 114
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V7 > 114
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 16
#> |   |   |   |   |   |   [10] V3 <= 2 *
#> |   |   |   |   |   |   [11] V3 > 2 *
#> |   |   |   |   |   [12] V5 > 16 *
#> |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   [14] V2 <= 61 *
#> |   |   |   |   |   [15] V2 > 61
#> |   |   |   |   |   |   [16] V7 <= 157
#> |   |   |   |   |   |   |   [17] V2 <= 77 *
#> |   |   |   |   |   |   |   [18] V2 > 77
#> |   |   |   |   |   |   |   |   [19] V7 <= 130 *
#> |   |   |   |   |   |   |   |   [20] V7 > 130 *
#> |   |   |   |   |   |   [21] V7 > 157 *
#> |   |   [22] V5 > 171
#> |   |   |   [23] V2 <= 83
#> |   |   |   |   [24] V3 <= 10
#> |   |   |   |   |   [25] V7 <= 183 *
#> |   |   |   |   |   [26] V7 > 183 *
#> |   |   |   |   [27] V3 > 10 *
#> |   |   |   [28] V2 > 83 *
#> |   [29] V4 > 0
#> |   |   [30] V5 <= 12
#> |   |   |   [31] V6 <= 0
#> |   |   |   |   [32] V2 <= 75
#> |   |   |   |   |   [33] V3 <= 5
#> |   |   |   |   |   |   [34] V3 <= 3 *
#> |   |   |   |   |   |   [35] V3 > 3 *
#> |   |   |   |   |   [36] V3 > 5
#> |   |   |   |   |   |   [37] V7 <= 160
#> |   |   |   |   |   |   |   [38] V7 <= 118 *
#> |   |   |   |   |   |   |   [39] V7 > 118 *
#> |   |   |   |   |   |   [40] V7 > 160 *
#> |   |   |   |   [41] V2 > 75 *
#> |   |   |   [42] V6 > 0
#> |   |   |   |   [43] V2 <= 72
#> |   |   |   |   |   [44] V2 <= 54
#> |   |   |   |   |   |   [45] V2 <= 43 *
#> |   |   |   |   |   |   [46] V2 > 43 *
#> |   |   |   |   |   [47] V2 > 54
#> |   |   |   |   |   |   [48] V3 <= 3 *
#> |   |   |   |   |   |   [49] V3 > 3
#> |   |   |   |   |   |   |   [50] V5 <= 1
#> |   |   |   |   |   |   |   |   [51] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [52] V3 > 5 *
#> |   |   |   |   |   |   |   [53] V5 > 1
#> |   |   |   |   |   |   |   |   [54] V2 <= 60 *
#> |   |   |   |   |   |   |   |   [55] V2 > 60 *
#> |   |   |   |   [56] V2 > 72
#> |   |   |   |   |   [57] V5 <= 1
#> |   |   |   |   |   |   [58] V3 <= 4 *
#> |   |   |   |   |   |   [59] V3 > 4 *
#> |   |   |   |   |   [60] V5 > 1 *
#> |   |   [61] V5 > 12 *
#> 
#> $nodes[[41]]
#> [1] root
#> |   [2] V2 <= 74
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V2 <= 54
#> |   |   |   |   [5] V5 <= 12
#> |   |   |   |   |   [6] V2 <= 43 *
#> |   |   |   |   |   [7] V2 > 43
#> |   |   |   |   |   |   [8] V3 <= 5 *
#> |   |   |   |   |   |   [9] V3 > 5 *
#> |   |   |   |   [10] V5 > 12 *
#> |   |   |   [11] V2 > 54
#> |   |   |   |   [12] V4 <= 0
#> |   |   |   |   |   [13] V2 <= 62 *
#> |   |   |   |   |   [14] V2 > 62
#> |   |   |   |   |   |   [15] V2 <= 65 *
#> |   |   |   |   |   |   [16] V2 > 65
#> |   |   |   |   |   |   |   [17] V5 <= 15 *
#> |   |   |   |   |   |   |   [18] V5 > 15 *
#> |   |   |   |   [19] V4 > 0
#> |   |   |   |   |   [20] V6 <= 0
#> |   |   |   |   |   |   [21] V3 <= 5
#> |   |   |   |   |   |   |   [22] V3 <= 3 *
#> |   |   |   |   |   |   |   [23] V3 > 3 *
#> |   |   |   |   |   |   [24] V3 > 5
#> |   |   |   |   |   |   |   [25] V3 <= 10 *
#> |   |   |   |   |   |   |   [26] V3 > 10 *
#> |   |   |   |   |   [27] V6 > 0
#> |   |   |   |   |   |   [28] V5 <= 0
#> |   |   |   |   |   |   |   [29] V3 <= 4 *
#> |   |   |   |   |   |   |   [30] V3 > 4 *
#> |   |   |   |   |   |   [31] V5 > 0
#> |   |   |   |   |   |   |   [32] V5 <= 3 *
#> |   |   |   |   |   |   |   [33] V5 > 3
#> |   |   |   |   |   |   |   |   [34] V7 <= 140 *
#> |   |   |   |   |   |   |   |   [35] V7 > 140 *
#> |   |   [36] V5 > 171
#> |   |   |   [37] V7 <= 183
#> |   |   |   |   [38] V7 <= 135
#> |   |   |   |   |   [39] V3 <= 6 *
#> |   |   |   |   |   [40] V3 > 6 *
#> |   |   |   |   [41] V7 > 135 *
#> |   |   |   [42] V7 > 183 *
#> |   [43] V2 > 74
#> |   |   [44] V5 <= 177
#> |   |   |   [45] V3 <= 6
#> |   |   |   |   [46] V4 <= 0
#> |   |   |   |   |   [47] V2 <= 86
#> |   |   |   |   |   |   [48] V5 <= 5 *
#> |   |   |   |   |   |   [49] V5 > 5 *
#> |   |   |   |   |   [50] V2 > 86 *
#> |   |   |   |   [51] V4 > 0 *
#> |   |   |   [52] V3 > 6
#> |   |   |   |   [53] V4 <= 0
#> |   |   |   |   |   [54] V3 <= 10 *
#> |   |   |   |   |   [55] V3 > 10 *
#> |   |   |   |   [56] V4 > 0
#> |   |   |   |   |   [57] V6 <= 0 *
#> |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   [59] V7 <= 140 *
#> |   |   |   |   |   |   [60] V7 > 140 *
#> |   |   [61] V5 > 177 *
#> 
#> $nodes[[42]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V5 <= 99
#> |   |   |   [4] V5 <= 15
#> |   |   |   |   [5] V3 <= 3
#> |   |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   |   [8] V7 <= 120 *
#> |   |   |   |   |   |   [9] V7 > 120 *
#> |   |   |   |   [10] V3 > 3
#> |   |   |   |   |   [11] V6 <= 0
#> |   |   |   |   |   |   [12] V7 <= 160
#> |   |   |   |   |   |   |   [13] V5 <= 3 *
#> |   |   |   |   |   |   |   [14] V5 > 3 *
#> |   |   |   |   |   |   [15] V7 > 160 *
#> |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   [17] V5 <= 1
#> |   |   |   |   |   |   |   [18] V3 <= 6 *
#> |   |   |   |   |   |   |   [19] V3 > 6 *
#> |   |   |   |   |   |   [20] V5 > 1
#> |   |   |   |   |   |   |   [21] V5 <= 7 *
#> |   |   |   |   |   |   |   [22] V5 > 7
#> |   |   |   |   |   |   |   |   [23] V5 <= 12 *
#> |   |   |   |   |   |   |   |   [24] V5 > 12 *
#> |   |   |   [25] V5 > 15 *
#> |   |   [26] V5 > 99
#> |   |   |   [27] V6 <= 0 *
#> |   |   |   [28] V6 > 0
#> |   |   |   |   [29] V3 <= 7 *
#> |   |   |   |   [30] V3 > 7 *
#> |   [31] V2 > 66
#> |   |   [32] V5 <= 167
#> |   |   |   [33] V2 <= 81
#> |   |   |   |   [34] V3 <= 1 *
#> |   |   |   |   [35] V3 > 1
#> |   |   |   |   |   [36] V5 <= 13
#> |   |   |   |   |   |   [37] V4 <= 0
#> |   |   |   |   |   |   |   [38] V6 <= 0 *
#> |   |   |   |   |   |   |   [39] V6 > 0 *
#> |   |   |   |   |   |   [40] V4 > 0
#> |   |   |   |   |   |   |   [41] V7 <= 108 *
#> |   |   |   |   |   |   |   [42] V7 > 108
#> |   |   |   |   |   |   |   |   [43] V6 <= 0
#> |   |   |   |   |   |   |   |   |   [44] V5 <= 8
#> |   |   |   |   |   |   |   |   |   |   [45] V5 <= 5 *
#> |   |   |   |   |   |   |   |   |   |   [46] V5 > 5 *
#> |   |   |   |   |   |   |   |   |   [47] V5 > 8 *
#> |   |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   |   [49] V7 <= 140
#> |   |   |   |   |   |   |   |   |   |   [50] V5 <= 3 *
#> |   |   |   |   |   |   |   |   |   |   [51] V5 > 3 *
#> |   |   |   |   |   |   |   |   |   [52] V7 > 140
#> |   |   |   |   |   |   |   |   |   |   [53] V7 <= 150 *
#> |   |   |   |   |   |   |   |   |   |   [54] V7 > 150
#> |   |   |   |   |   |   |   |   |   |   |   [55] V3 <= 10 *
#> |   |   |   |   |   |   |   |   |   |   |   [56] V3 > 10 *
#> |   |   |   |   |   [57] V5 > 13 *
#> |   |   |   [58] V2 > 81
#> |   |   |   |   [59] V6 <= 0 *
#> |   |   |   |   [60] V6 > 0
#> |   |   |   |   |   [61] V3 <= 4 *
#> |   |   |   |   |   [62] V3 > 4 *
#> |   |   [63] V5 > 167
#> |   |   |   [64] V2 <= 79
#> |   |   |   |   [65] V6 <= 0 *
#> |   |   |   |   [66] V6 > 0 *
#> |   |   |   [67] V2 > 79 *
#> 
#> $nodes[[43]]
#> [1] root
#> |   [2] V2 <= 70
#> |   |   [3] V2 <= 54
#> |   |   |   [4] V5 <= 99
#> |   |   |   |   [5] V6 <= 0 *
#> |   |   |   |   [6] V6 > 0
#> |   |   |   |   |   [7] V5 <= 4
#> |   |   |   |   |   |   [8] V7 <= 116 *
#> |   |   |   |   |   |   [9] V7 > 116 *
#> |   |   |   |   |   [10] V5 > 4 *
#> |   |   |   [11] V5 > 99 *
#> |   |   [12] V2 > 54
#> |   |   |   [13] V7 <= 118 *
#> |   |   |   [14] V7 > 118
#> |   |   |   |   [15] V4 <= 0
#> |   |   |   |   |   [16] V5 <= 171
#> |   |   |   |   |   |   [17] V3 <= 1 *
#> |   |   |   |   |   |   [18] V3 > 1
#> |   |   |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   |   |   [20] V6 > 0 *
#> |   |   |   |   |   [21] V5 > 171
#> |   |   |   |   |   |   [22] V3 <= 7 *
#> |   |   |   |   |   |   [23] V3 > 7 *
#> |   |   |   |   [24] V4 > 0
#> |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   [26] V5 <= 3 *
#> |   |   |   |   |   |   [27] V5 > 3 *
#> |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   [29] V3 <= 14
#> |   |   |   |   |   |   |   [30] V5 <= 0 *
#> |   |   |   |   |   |   |   [31] V5 > 0
#> |   |   |   |   |   |   |   |   [32] V3 <= 9 *
#> |   |   |   |   |   |   |   |   [33] V3 > 9 *
#> |   |   |   |   |   |   [34] V3 > 14 *
#> |   [35] V2 > 70
#> |   |   [36] V6 <= 0
#> |   |   |   [37] V7 <= 133
#> |   |   |   |   [38] V5 <= 164
#> |   |   |   |   |   [39] V4 <= 0 *
#> |   |   |   |   |   [40] V4 > 0 *
#> |   |   |   |   [41] V5 > 164 *
#> |   |   |   [42] V7 > 133
#> |   |   |   |   [43] V2 <= 82
#> |   |   |   |   |   [44] V5 <= 125
#> |   |   |   |   |   |   [45] V3 <= 7 *
#> |   |   |   |   |   |   [46] V3 > 7 *
#> |   |   |   |   |   [47] V5 > 125 *
#> |   |   |   |   [48] V2 > 82 *
#> |   |   [49] V6 > 0
#> |   |   |   [50] V4 <= 0
#> |   |   |   |   [51] V5 <= 173
#> |   |   |   |   |   [52] V5 <= 7
#> |   |   |   |   |   |   [53] V2 <= 80 *
#> |   |   |   |   |   |   [54] V2 > 80 *
#> |   |   |   |   |   [55] V5 > 7
#> |   |   |   |   |   |   [56] V3 <= 10
#> |   |   |   |   |   |   |   [57] V3 <= 5 *
#> |   |   |   |   |   |   |   [58] V3 > 5 *
#> |   |   |   |   |   |   [59] V3 > 10 *
#> |   |   |   |   [60] V5 > 173 *
#> |   |   |   [61] V4 > 0
#> |   |   |   |   [62] V2 <= 84
#> |   |   |   |   |   [63] V5 <= 5
#> |   |   |   |   |   |   [64] V3 <= 6 *
#> |   |   |   |   |   |   [65] V3 > 6 *
#> |   |   |   |   |   [66] V5 > 5 *
#> |   |   |   |   [67] V2 > 84 *
#> 
#> $nodes[[44]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V5 <= 169
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3 *
#> |   |   |   [7] V5 > 169
#> |   |   |   |   [8] V2 <= 56 *
#> |   |   |   |   [9] V2 > 56 *
#> |   |   [10] V4 > 0
#> |   |   |   [11] V7 <= 120
#> |   |   |   |   [12] V2 <= 46 *
#> |   |   |   |   [13] V2 > 46 *
#> |   |   |   [14] V7 > 120
#> |   |   |   |   [15] V7 <= 148
#> |   |   |   |   |   [16] V7 <= 135 *
#> |   |   |   |   |   [17] V7 > 135 *
#> |   |   |   |   [18] V7 > 148
#> |   |   |   |   |   [19] V6 <= 0 *
#> |   |   |   |   |   [20] V6 > 0 *
#> |   [21] V2 > 62
#> |   |   [22] V5 <= 177
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V5 <= 165
#> |   |   |   |   |   [25] V6 <= 0
#> |   |   |   |   |   |   [26] V5 <= 8 *
#> |   |   |   |   |   |   [27] V5 > 8 *
#> |   |   |   |   |   [28] V6 > 0
#> |   |   |   |   |   |   [29] V3 <= 2 *
#> |   |   |   |   |   |   [30] V3 > 2
#> |   |   |   |   |   |   |   [31] V5 <= 15
#> |   |   |   |   |   |   |   |   [32] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [33] V5 > 7 *
#> |   |   |   |   |   |   |   [34] V5 > 15 *
#> |   |   |   |   [35] V5 > 165 *
#> |   |   |   [36] V4 > 0
#> |   |   |   |   [37] V2 <= 84
#> |   |   |   |   |   [38] V2 <= 63 *
#> |   |   |   |   |   [39] V2 > 63
#> |   |   |   |   |   |   [40] V5 <= 11
#> |   |   |   |   |   |   |   [41] V6 <= 0
#> |   |   |   |   |   |   |   |   [42] V2 <= 76
#> |   |   |   |   |   |   |   |   |   [43] V3 <= 13
#> |   |   |   |   |   |   |   |   |   |   [44] V7 <= 130 *
#> |   |   |   |   |   |   |   |   |   |   [45] V7 > 130 *
#> |   |   |   |   |   |   |   |   |   [46] V3 > 13 *
#> |   |   |   |   |   |   |   |   [47] V2 > 76 *
#> |   |   |   |   |   |   |   [48] V6 > 0
#> |   |   |   |   |   |   |   |   [49] V7 <= 140
#> |   |   |   |   |   |   |   |   |   [50] V3 <= 8
#> |   |   |   |   |   |   |   |   |   |   [51] V7 <= 119 *
#> |   |   |   |   |   |   |   |   |   |   [52] V7 > 119 *
#> |   |   |   |   |   |   |   |   |   [53] V3 > 8 *
#> |   |   |   |   |   |   |   |   [54] V7 > 140
#> |   |   |   |   |   |   |   |   |   [55] V3 <= 9 *
#> |   |   |   |   |   |   |   |   |   [56] V3 > 9 *
#> |   |   |   |   |   |   [57] V5 > 11 *
#> |   |   |   |   [58] V2 > 84 *
#> |   |   [59] V5 > 177 *
#> 
#> $nodes[[45]]
#> [1] root
#> |   [2] V2 <= 66
#> |   |   [3] V6 <= 0
#> |   |   |   [4] V2 <= 55
#> |   |   |   |   [5] V4 <= 0 *
#> |   |   |   |   [6] V4 > 0
#> |   |   |   |   |   [7] V2 <= 48 *
#> |   |   |   |   |   [8] V2 > 48 *
#> |   |   |   [9] V2 > 55
#> |   |   |   |   [10] V5 <= 169
#> |   |   |   |   |   [11] V4 <= 0 *
#> |   |   |   |   |   [12] V4 > 0
#> |   |   |   |   |   |   [13] V5 <= 6 *
#> |   |   |   |   |   |   [14] V5 > 6 *
#> |   |   |   |   [15] V5 > 169 *
#> |   |   [16] V6 > 0
#> |   |   |   [17] V5 <= 36
#> |   |   |   |   [18] V2 <= 54
#> |   |   |   |   |   [19] V5 <= 3 *
#> |   |   |   |   |   [20] V5 > 3 *
#> |   |   |   |   [21] V2 > 54
#> |   |   |   |   |   [22] V4 <= 0 *
#> |   |   |   |   |   [23] V4 > 0
#> |   |   |   |   |   |   [24] V5 <= 0 *
#> |   |   |   |   |   |   [25] V5 > 0
#> |   |   |   |   |   |   |   [26] V5 <= 10 *
#> |   |   |   |   |   |   |   [27] V5 > 10 *
#> |   |   |   [28] V5 > 36
#> |   |   |   |   [29] V3 <= 4 *
#> |   |   |   |   [30] V3 > 4 *
#> |   [31] V2 > 66
#> |   |   [32] V5 <= 177
#> |   |   |   [33] V4 <= 0
#> |   |   |   |   [34] V7 <= 114 *
#> |   |   |   |   [35] V7 > 114
#> |   |   |   |   |   [36] V6 <= 0
#> |   |   |   |   |   |   [37] V7 <= 130 *
#> |   |   |   |   |   |   [38] V7 > 130
#> |   |   |   |   |   |   |   [39] V5 <= 7 *
#> |   |   |   |   |   |   |   [40] V5 > 7 *
#> |   |   |   |   |   [41] V6 > 0
#> |   |   |   |   |   |   [42] V5 <= 4 *
#> |   |   |   |   |   |   [43] V5 > 4
#> |   |   |   |   |   |   |   [44] V3 <= 10 *
#> |   |   |   |   |   |   |   [45] V3 > 10 *
#> |   |   |   [46] V4 > 0
#> |   |   |   |   [47] V7 <= 126
#> |   |   |   |   |   [48] V5 <= 0 *
#> |   |   |   |   |   [49] V5 > 0
#> |   |   |   |   |   |   [50] V3 <= 13 *
#> |   |   |   |   |   |   [51] V3 > 13 *
#> |   |   |   |   [52] V7 > 126
#> |   |   |   |   |   [53] V3 <= 17
#> |   |   |   |   |   |   [54] V2 <= 82
#> |   |   |   |   |   |   |   [55] V6 <= 0
#> |   |   |   |   |   |   |   |   [56] V5 <= 4 *
#> |   |   |   |   |   |   |   |   [57] V5 > 4 *
#> |   |   |   |   |   |   |   [58] V6 > 0
#> |   |   |   |   |   |   |   |   [59] V2 <= 68 *
#> |   |   |   |   |   |   |   |   [60] V2 > 68
#> |   |   |   |   |   |   |   |   |   [61] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [62] V5 > 0 *
#> |   |   |   |   |   |   [63] V2 > 82 *
#> |   |   |   |   |   [64] V3 > 17 *
#> |   |   [65] V5 > 177 *
#> 
#> $nodes[[46]]
#> [1] root
#> |   [2] V7 <= 112
#> |   |   [3] V3 <= 3
#> |   |   |   [4] V7 <= 90 *
#> |   |   |   [5] V7 > 90 *
#> |   |   [6] V3 > 3
#> |   |   |   [7] V4 <= 0
#> |   |   |   |   [8] V5 <= 158 *
#> |   |   |   |   [9] V5 > 158 *
#> |   |   |   [10] V4 > 0
#> |   |   |   |   [11] V6 <= 0 *
#> |   |   |   |   [12] V6 > 0 *
#> |   [13] V7 > 112
#> |   |   [14] V4 <= 0
#> |   |   |   [15] V6 <= 0
#> |   |   |   |   [16] V7 <= 140
#> |   |   |   |   |   [17] V5 <= 145
#> |   |   |   |   |   |   [18] V5 <= 11 *
#> |   |   |   |   |   |   [19] V5 > 11 *
#> |   |   |   |   |   [20] V5 > 145 *
#> |   |   |   |   [21] V7 > 140
#> |   |   |   |   |   [22] V2 <= 81
#> |   |   |   |   |   |   [23] V5 <= 171 *
#> |   |   |   |   |   |   [24] V5 > 171 *
#> |   |   |   |   |   [25] V2 > 81 *
#> |   |   |   [26] V6 > 0
#> |   |   |   |   [27] V5 <= 126
#> |   |   |   |   |   [28] V2 <= 61 *
#> |   |   |   |   |   [29] V2 > 61
#> |   |   |   |   |   |   [30] V2 <= 69 *
#> |   |   |   |   |   |   [31] V2 > 69
#> |   |   |   |   |   |   |   [32] V5 <= 15
#> |   |   |   |   |   |   |   |   [33] V3 <= 5 *
#> |   |   |   |   |   |   |   |   [34] V3 > 5 *
#> |   |   |   |   |   |   |   [35] V5 > 15 *
#> |   |   |   |   [36] V5 > 126
#> |   |   |   |   |   [37] V3 <= 6
#> |   |   |   |   |   |   [38] V2 <= 67 *
#> |   |   |   |   |   |   [39] V2 > 67 *
#> |   |   |   |   |   [40] V3 > 6 *
#> |   |   [41] V4 > 0
#> |   |   |   [42] V2 <= 76
#> |   |   |   |   [43] V5 <= 6
#> |   |   |   |   |   [44] V2 <= 54
#> |   |   |   |   |   |   [45] V2 <= 43 *
#> |   |   |   |   |   |   [46] V2 > 43
#> |   |   |   |   |   |   |   [47] V5 <= 1 *
#> |   |   |   |   |   |   |   [48] V5 > 1 *
#> |   |   |   |   |   [49] V2 > 54
#> |   |   |   |   |   |   [50] V5 <= 2
#> |   |   |   |   |   |   |   [51] V3 <= 2 *
#> |   |   |   |   |   |   |   [52] V3 > 2
#> |   |   |   |   |   |   |   |   [53] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [54] V6 > 0
#> |   |   |   |   |   |   |   |   |   [55] V7 <= 147 *
#> |   |   |   |   |   |   |   |   |   [56] V7 > 147 *
#> |   |   |   |   |   |   [57] V5 > 2 *
#> |   |   |   |   [58] V5 > 6
#> |   |   |   |   |   [59] V3 <= 13
#> |   |   |   |   |   |   [60] V7 <= 124 *
#> |   |   |   |   |   |   [61] V7 > 124 *
#> |   |   |   |   |   [62] V3 > 13 *
#> |   |   |   [63] V2 > 76
#> |   |   |   |   [64] V2 <= 84
#> |   |   |   |   |   [65] V2 <= 78 *
#> |   |   |   |   |   [66] V2 > 78 *
#> |   |   |   |   [67] V2 > 84 *
#> 
#> $nodes[[47]]
#> [1] root
#> |   [2] V2 <= 62
#> |   |   [3] V5 <= 169
#> |   |   |   [4] V3 <= 1 *
#> |   |   |   [5] V3 > 1
#> |   |   |   |   [6] V4 <= 0 *
#> |   |   |   |   [7] V4 > 0
#> |   |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   |   [9] V2 <= 55
#> |   |   |   |   |   |   |   [10] V2 <= 51 *
#> |   |   |   |   |   |   |   [11] V2 > 51 *
#> |   |   |   |   |   |   [12] V2 > 55 *
#> |   |   |   |   |   [13] V6 > 0
#> |   |   |   |   |   |   [14] V7 <= 148
#> |   |   |   |   |   |   |   [15] V2 <= 54 *
#> |   |   |   |   |   |   |   [16] V2 > 54 *
#> |   |   |   |   |   |   [17] V7 > 148 *
#> |   |   [18] V5 > 169
#> |   |   |   [19] V7 <= 135 *
#> |   |   |   [20] V7 > 135 *
#> |   [21] V2 > 62
#> |   |   [22] V5 <= 177
#> |   |   |   [23] V4 <= 0
#> |   |   |   |   [24] V5 <= 150
#> |   |   |   |   |   [25] V7 <= 114
#> |   |   |   |   |   |   [26] V5 <= 3 *
#> |   |   |   |   |   |   [27] V5 > 3 *
#> |   |   |   |   |   [28] V7 > 114
#> |   |   |   |   |   |   [29] V3 <= 11
#> |   |   |   |   |   |   |   [30] V6 <= 0
#> |   |   |   |   |   |   |   |   [31] V5 <= 11 *
#> |   |   |   |   |   |   |   |   [32] V5 > 11 *
#> |   |   |   |   |   |   |   [33] V6 > 0
#> |   |   |   |   |   |   |   |   [34] V5 <= 10
#> |   |   |   |   |   |   |   |   |   [35] V5 <= 4 *
#> |   |   |   |   |   |   |   |   |   [36] V5 > 4 *
#> |   |   |   |   |   |   |   |   [37] V5 > 10 *
#> |   |   |   |   |   |   [38] V3 > 11 *
#> |   |   |   |   [39] V5 > 150 *
#> |   |   |   [40] V4 > 0
#> |   |   |   |   [41] V2 <= 84
#> |   |   |   |   |   [42] V7 <= 124
#> |   |   |   |   |   |   [43] V5 <= 3
#> |   |   |   |   |   |   |   [44] V7 <= 109 *
#> |   |   |   |   |   |   |   [45] V7 > 109 *
#> |   |   |   |   |   |   [46] V5 > 3 *
#> |   |   |   |   |   [47] V7 > 124
#> |   |   |   |   |   |   [48] V3 <= 5
#> |   |   |   |   |   |   |   [49] V5 <= 2 *
#> |   |   |   |   |   |   |   [50] V5 > 2 *
#> |   |   |   |   |   |   [51] V3 > 5
#> |   |   |   |   |   |   |   [52] V6 <= 0 *
#> |   |   |   |   |   |   |   [53] V6 > 0
#> |   |   |   |   |   |   |   |   [54] V7 <= 170
#> |   |   |   |   |   |   |   |   |   [55] V3 <= 12 *
#> |   |   |   |   |   |   |   |   |   [56] V3 > 12 *
#> |   |   |   |   |   |   |   |   [57] V7 > 170 *
#> |   |   |   |   [58] V2 > 84 *
#> |   |   [59] V5 > 177 *
#> 
#> $nodes[[48]]
#> [1] root
#> |   [2] V5 <= 177
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V2 <= 62
#> |   |   |   |   [5] V5 <= 4 *
#> |   |   |   |   [6] V5 > 4 *
#> |   |   |   [7] V2 > 62
#> |   |   |   |   [8] V5 <= 165
#> |   |   |   |   |   [9] V7 <= 114
#> |   |   |   |   |   |   [10] V5 <= 7 *
#> |   |   |   |   |   |   [11] V5 > 7 *
#> |   |   |   |   |   [12] V7 > 114
#> |   |   |   |   |   |   [13] V6 <= 0
#> |   |   |   |   |   |   |   [14] V5 <= 8 *
#> |   |   |   |   |   |   |   [15] V5 > 8 *
#> |   |   |   |   |   |   [16] V6 > 0
#> |   |   |   |   |   |   |   [17] V3 <= 4 *
#> |   |   |   |   |   |   |   [18] V3 > 4
#> |   |   |   |   |   |   |   |   [19] V7 <= 154 *
#> |   |   |   |   |   |   |   |   [20] V7 > 154 *
#> |   |   |   |   [21] V5 > 165 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 86
#> |   |   |   |   [24] V5 <= 10
#> |   |   |   |   |   [25] V2 <= 54
#> |   |   |   |   |   |   [26] V7 <= 116 *
#> |   |   |   |   |   |   [27] V7 > 116
#> |   |   |   |   |   |   |   [28] V2 <= 42 *
#> |   |   |   |   |   |   |   [29] V2 > 42
#> |   |   |   |   |   |   |   |   [30] V7 <= 150 *
#> |   |   |   |   |   |   |   |   [31] V7 > 150 *
#> |   |   |   |   |   [32] V2 > 54
#> |   |   |   |   |   |   [33] V7 <= 149
#> |   |   |   |   |   |   |   [34] V2 <= 56 *
#> |   |   |   |   |   |   |   [35] V2 > 56
#> |   |   |   |   |   |   |   |   [36] V5 <= 6
#> |   |   |   |   |   |   |   |   |   [37] V2 <= 60 *
#> |   |   |   |   |   |   |   |   |   [38] V2 > 60
#> |   |   |   |   |   |   |   |   |   |   [39] V7 <= 104 *
#> |   |   |   |   |   |   |   |   |   |   [40] V7 > 104
#> |   |   |   |   |   |   |   |   |   |   |   [41] V3 <= 7
#> |   |   |   |   |   |   |   |   |   |   |   |   [42] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   |   |   [43] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   |   |   [44] V3 > 7 *
#> |   |   |   |   |   |   |   |   [45] V5 > 6
#> |   |   |   |   |   |   |   |   |   [46] V6 <= 0 *
#> |   |   |   |   |   |   |   |   |   [47] V6 > 0 *
#> |   |   |   |   |   |   [48] V7 > 149
#> |   |   |   |   |   |   |   [49] V5 <= 8
#> |   |   |   |   |   |   |   |   [50] V6 <= 0 *
#> |   |   |   |   |   |   |   |   [51] V6 > 0
#> |   |   |   |   |   |   |   |   |   [52] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [53] V5 > 0 *
#> |   |   |   |   |   |   |   [54] V5 > 8 *
#> |   |   |   |   [55] V5 > 10
#> |   |   |   |   |   [56] V7 <= 130 *
#> |   |   |   |   |   [57] V7 > 130 *
#> |   |   |   [58] V2 > 86 *
#> |   [59] V5 > 177 *
#> 
#> $nodes[[49]]
#> [1] root
#> |   [2] V2 <= 72
#> |   |   [3] V5 <= 171
#> |   |   |   [4] V4 <= 0
#> |   |   |   |   [5] V3 <= 3 *
#> |   |   |   |   [6] V3 > 3
#> |   |   |   |   |   [7] V2 <= 60 *
#> |   |   |   |   |   [8] V2 > 60 *
#> |   |   |   [9] V4 > 0
#> |   |   |   |   [10] V6 <= 0
#> |   |   |   |   |   [11] V3 <= 15
#> |   |   |   |   |   |   [12] V7 <= 118 *
#> |   |   |   |   |   |   [13] V7 > 118
#> |   |   |   |   |   |   |   [14] V2 <= 55 *
#> |   |   |   |   |   |   |   [15] V2 > 55
#> |   |   |   |   |   |   |   |   [16] V7 <= 127 *
#> |   |   |   |   |   |   |   |   [17] V7 > 127 *
#> |   |   |   |   |   [18] V3 > 15 *
#> |   |   |   |   [19] V6 > 0
#> |   |   |   |   |   [20] V3 <= 3 *
#> |   |   |   |   |   [21] V3 > 3
#> |   |   |   |   |   |   [22] V2 <= 60
#> |   |   |   |   |   |   |   [23] V5 <= 4
#> |   |   |   |   |   |   |   |   [24] V7 <= 135 *
#> |   |   |   |   |   |   |   |   [25] V7 > 135 *
#> |   |   |   |   |   |   |   [26] V5 > 4 *
#> |   |   |   |   |   |   [27] V2 > 60
#> |   |   |   |   |   |   |   [28] V2 <= 68 *
#> |   |   |   |   |   |   |   [29] V2 > 68 *
#> |   |   [30] V5 > 171
#> |   |   |   [31] V2 <= 57 *
#> |   |   |   [32] V2 > 57
#> |   |   |   |   [33] V6 <= 0 *
#> |   |   |   |   [34] V6 > 0 *
#> |   [35] V2 > 72
#> |   |   [36] V6 <= 0
#> |   |   |   [37] V5 <= 177
#> |   |   |   |   [38] V5 <= 8
#> |   |   |   |   |   [39] V4 <= 0 *
#> |   |   |   |   |   [40] V4 > 0 *
#> |   |   |   |   [41] V5 > 8 *
#> |   |   |   [42] V5 > 177 *
#> |   |   [43] V6 > 0
#> |   |   |   [44] V5 <= 173
#> |   |   |   |   [45] V2 <= 86
#> |   |   |   |   |   [46] V7 <= 104 *
#> |   |   |   |   |   [47] V7 > 104
#> |   |   |   |   |   |   [48] V3 <= 6
#> |   |   |   |   |   |   |   [49] V4 <= 0 *
#> |   |   |   |   |   |   |   [50] V4 > 0 *
#> |   |   |   |   |   |   [51] V3 > 6
#> |   |   |   |   |   |   |   [52] V3 <= 19
#> |   |   |   |   |   |   |   |   [53] V5 <= 5 *
#> |   |   |   |   |   |   |   |   [54] V5 > 5 *
#> |   |   |   |   |   |   |   [55] V3 > 19 *
#> |   |   |   |   [56] V2 > 86
#> |   |   |   |   |   [57] V2 <= 90 *
#> |   |   |   |   |   [58] V2 > 90 *
#> |   |   |   [59] V5 > 173 *
#> 
#> $nodes[[50]]
#> [1] root
#> |   [2] V5 <= 173
#> |   |   [3] V4 <= 0
#> |   |   |   [4] V7 <= 112
#> |   |   |   |   [5] V5 <= 10 *
#> |   |   |   |   [6] V5 > 10 *
#> |   |   |   [7] V7 > 112
#> |   |   |   |   [8] V6 <= 0
#> |   |   |   |   |   [9] V5 <= 16
#> |   |   |   |   |   |   [10] V5 <= 2 *
#> |   |   |   |   |   |   [11] V5 > 2
#> |   |   |   |   |   |   |   [12] V2 <= 70 *
#> |   |   |   |   |   |   |   [13] V2 > 70 *
#> |   |   |   |   |   [14] V5 > 16 *
#> |   |   |   |   [15] V6 > 0
#> |   |   |   |   |   [16] V2 <= 58 *
#> |   |   |   |   |   [17] V2 > 58
#> |   |   |   |   |   |   [18] V5 <= 4 *
#> |   |   |   |   |   |   [19] V5 > 4
#> |   |   |   |   |   |   |   [20] V7 <= 140 *
#> |   |   |   |   |   |   |   [21] V7 > 140 *
#> |   |   [22] V4 > 0
#> |   |   |   [23] V2 <= 74
#> |   |   |   |   [24] V3 <= 19
#> |   |   |   |   |   [25] V3 <= 1 *
#> |   |   |   |   |   [26] V3 > 1
#> |   |   |   |   |   |   [27] V6 <= 0
#> |   |   |   |   |   |   |   [28] V7 <= 124
#> |   |   |   |   |   |   |   |   [29] V5 <= 7 *
#> |   |   |   |   |   |   |   |   [30] V5 > 7 *
#> |   |   |   |   |   |   |   [31] V7 > 124
#> |   |   |   |   |   |   |   |   [32] V7 <= 160
#> |   |   |   |   |   |   |   |   |   [33] V7 <= 150
#> |   |   |   |   |   |   |   |   |   |   [34] V3 <= 4 *
#> |   |   |   |   |   |   |   |   |   |   [35] V3 > 4 *
#> |   |   |   |   |   |   |   |   |   [36] V7 > 150 *
#> |   |   |   |   |   |   |   |   [37] V7 > 160 *
#> |   |   |   |   |   |   [38] V6 > 0
#> |   |   |   |   |   |   |   [39] V2 <= 55
#> |   |   |   |   |   |   |   |   [40] V2 <= 43 *
#> |   |   |   |   |   |   |   |   [41] V2 > 43
#> |   |   |   |   |   |   |   |   |   [42] V7 <= 120 *
#> |   |   |   |   |   |   |   |   |   [43] V7 > 120 *
#> |   |   |   |   |   |   |   [44] V2 > 55
#> |   |   |   |   |   |   |   |   [45] V3 <= 6
#> |   |   |   |   |   |   |   |   |   [46] V5 <= 0 *
#> |   |   |   |   |   |   |   |   |   [47] V5 > 0 *
#> |   |   |   |   |   |   |   |   [48] V3 > 6
#> |   |   |   |   |   |   |   |   |   [49] V3 <= 11
#> |   |   |   |   |   |   |   |   |   |   [50] V5 <= 1 *
#> |   |   |   |   |   |   |   |   |   |   [51] V5 > 1 *
#> |   |   |   |   |   |   |   |   |   [52] V3 > 11 *
#> |   |   |   |   [53] V3 > 19 *
#> |   |   |   [54] V2 > 74
#> |   |   |   |   [55] V5 <= 6
#> |   |   |   |   |   [56] V7 <= 126 *
#> |   |   |   |   |   [57] V7 > 126 *
#> |   |   |   |   [58] V5 > 6 *
#> |   [59] V5 > 173 *
#> 
#> 
#> $data
#>     Surv(time, status, type = "right") age los revasc revascdays stchange sysbp
#> 1                               180.0+  28   9      0        180        1   107
#> 2                                 2.0+  33   2      0          2        0   150
#> 3                                 5.0+  35   5      1          2        0   172
#> 4                               180.0+  35  10      1          9        0   106
#> 5                               180.0+  35   2      0        180        0   121
#> 6                                 2.0+  35   2      1          1        1   112
#> 7                               180.0+  38  13      1          0        1   161
#> 8                                 12.0  38  12      1          8        1   120
#> 9                               180.0+  33   6      1          1        1   115
#> 10                              180.0+  38  16      1         10        0   160
#> 11                              180.0+  38  12      1         11        1    92
#> 12                              180.0+  42   3      1          1        1   130
#> 13                                2.0+  40   2      1          1        1   148
#> 14                                5.0+  38   5      1          3        0   125
#> 15                                2.0+  42   2      0          2        0   140
#> 16                              180.0+  40   6      0        180        1   138
#> 17                                 3.0  43   3      1          0        1   100
#> 18                              180.0+  41   2      1          1        0   166
#> 19                              180.0+  43   4      1          0        1   130
#> 20                              180.0+  42   4      0        180        0   162
#> 21                              180.0+  40   3      1          1        0   170
#> 22                              180.0+  42  12      1         10        1   170
#> 23                                2.0+  43   2      1          1        1   116
#> 24                              180.0+  42   2      0        180        1   124
#> 25                              155.0+  44   5      1          1        0   170
#> 26                              180.0+  45   3      0        180        1   154
#> 27                              180.0+  41  10      1          8        0   150
#> 28                              180.0+  44   3      0        180        0   141
#> 29                                5.0+  41   5      1          4        1   141
#> 30                              180.0+  44   2      1          1        1   150
#> 31                              180.0+  46  15      0        180        0   120
#> 32                              180.0+  46   2      1          1        0   126
#> 33                              180.0+  47   4      1          3        0   118
#> 34                              180.0+  48  15      0        180        1   160
#> 35                              180.0+  44   3      1          0        1   180
#> 36                              180.0+  46   7      1          2        0   166
#> 37                              180.0+  45   4      1          0        0   124
#> 38                              180.0+  43  10      0        180        0   185
#> 39                                6.0+  47   6      1          0        1   116
#> 40                              180.0+  46  13      1         10        0   100
#> 41                              180.0+  44   0      1          0        1    96
#> 42                              180.0+  47   4      1          3        1   160
#> 43                              180.0+  43   3      1          0        1   124
#> 44                              161.0+  46   2      1          1        1   122
#> 45                              180.0+  44   4      1          0        1   114
#> 46                              180.0+  47   2      0        180        0   108
#> 47                              180.0+  45   5      0        180        1   190
#> 48                                5.0+  46   5      1          3        0   130
#> 49                              180.0+  46   4      0        180        1   121
#> 50                              180.0+  46  15      0        180        1   120
#> 51                              177.0+  45   9      1          0        1   145
#> 52                              180.0+  47   3      1          1        1   120
#> 53                              180.0+  48   3      0        180        0   154
#> 54                              180.0+  47   9      1          6        0   170
#> 55                              180.0+  46   3      1          0        1   119
#> 56                               10.0+  47  10      0         10        1   140
#> 57                              180.0+  48   2      1          0        0   184
#> 58                              180.0+  50   4      1          1        0   125
#> 59                              180.0+  50   6      1          2        1   140
#> 60                              180.0+  46   3      1          1        1   140
#> 61                              180.0+  46   9      1          9        1   122
#> 62                              180.0+  50   7      0        180        1   110
#> 63                              179.0+  49  15      1         11        1   160
#> 64                              180.0+  47   2      0        180        0   150
#> 65                              179.0+  49  23      0        179        1   112
#> 66                              180.0+  50   7      1          0        1    92
#> 67                              180.0+  51   3      1          2        0   113
#> 68                              180.0+  50   1      1          0        0   150
#> 69                              180.0+  50   9      0        180        0   130
#> 70                              180.0+  47   8      0        180        0   160
#> 71                              180.0+  47   6      0        180        1   162
#> 72                              180.0+  51   8      0        180        1   140
#> 73                              180.0+  46   3      0        180        1   120
#> 74                              180.0+  50   4      1          1        0   150
#> 75                                36.0  53   8      0         36        1   160
#> 76                              180.0+  47   2      1          1        0   110
#> 77                              180.0+  49  15      0        180        1   160
#> 78                              180.0+  53   5      0        180        1   140
#> 79                              180.0+  54  17      1         12        1   102
#> 80                              180.0+  54   6      1          3        0   129
#> 81                                 5.0  50   2      0          5        1   106
#> 82                              180.0+  50  10      1          6        0   122
#> 83                              180.0+  50  14      1         13        0   170
#> 84                              180.0+  49   5      1          2        1   150
#> 85                              180.0+  48   6      0        180        0   160
#> 86                              180.0+  48  11      1         10        0   120
#> 87                                99.0  51  13      0         99        1   160
#> 88                              180.0+  54   9      1          0        1   138
#> 89                               16.0+  49  16      0         16        0   125
#> 90                              180.0+  55   3      1          1        0   150
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
#> 104                             180.0+  53   8      1          0        1   130
#> 105                             180.0+  50   7      1          0        1   127
#> 106                             180.0+  55   1      0        180        0   127
#> 107                                2.0  55   2      0          2        0   145
#> 108                               7.0+  54   7      1          0        1   100
#> 109                             180.0+  56   2      0        180        0   132
#> 110                             180.0+  55   5      1          4        1   120
#> 111                             180.0+  52   8      0        180        0   119
#> 112                             180.0+  53  18      1          9        1   150
#> 113                             180.0+  55   6      0        180        0   170
#> 114                              16.0+  52  16      0         16        0   152
#> 115                             180.0+  53  10      1          9        0   172
#> 116                              15.0+  53  15      0         15        1    90
#> 117                             180.0+  53   4      0        180        1   150
#> 118                             180.0+  55   6      0        180        1   100
#> 119                             180.0+  55   6      1          5        1   138
#> 120                             134.0+  55   2      0        134        1   140
#> 121                             180.0+  54   3      0        180        0   128
#> 122                                8.0  56   3      0          8        1   139
#> 123                                2.0  55   1      0          2        0   130
#> 124                             180.0+  54   7      1          2        0   129
#> 125                             180.0+  54   2      1          1        0   135
#> 126                             180.0+  52   9      1          3        0   170
#> 127                             180.0+  54   2      1          1        1   176
#> 128                              140.0  57   5      1          3        1   138
#> 129                             180.0+  57   1      0        180        1   156
#> 130                                1.0  57   1      0          1        1   100
#> 131                              165.0  56   4      1          0        1   140
#> 132                             180.0+  52   2      0        180        0   140
#> 133                             180.0+  55  11      1          7        0   104
#> 134                             180.0+  53   3      1          0        1   200
#> 135                             180.0+  57  10      0        180        1   170
#> 136                               8.0+  58   8      0          8        1   130
#> 137                             180.0+  54   5      0        180        1   108
#> 138                             180.0+  55   3      1          1        1   156
#> 139                             180.0+  53  21      1         13        1   130
#> 140                             180.0+  57   4      0        180        1   119
#> 141                             180.0+  58   6      1          0        1    90
#> 142                             180.0+  53  15      1         10        1   130
#> 143                               15.0  55   9      1          2        1   147
#> 144                               5.0+  56   5      0          5        1   150
#> 145                             180.0+  54  23      1          8        0   120
#> 146                               4.0+  57   4      1          2        1   185
#> 147                             180.0+  57  11      1         10        1   129
#> 148                             180.0+  54   7      1          0        1   141
#> 149                               4.0+  56   4      0          4        0   164
#> 150                               9.0+  58   9      1          0        1   180
#> 151                                1.0  58   1      1          1        1   200
#> 152                             180.0+  55   5      1          0        0   140
#> 153                             180.0+  59   9      1          1        1   125
#> 154                             180.0+  59   3      0        180        0   120
#> 155                             180.0+  60   5      1          1        0   138
#> 156                             180.0+  58  11      1          9        1   124
#> 157                             180.0+  55   5      1          0        1   160
#> 158                             180.0+  57  10      1          9        0   103
#> 159                               64.0  59   6      1          0        1   140
#> 160                             180.0+  58  26      1          0        1   189
#> 161                               9.0+  61   9      0          9        1   160
#> 162                             180.0+  58   4      1          3        0   120
#> 163                             180.0+  59   2      1          1        0   140
#> 164                             161.0+  58   8      0        161        1   140
#> 165                             171.0+  58  14      1          6        0   190
#> 166                                3.0  61   3      1          2        1   102
#> 167                             180.0+  61  20      1         13        0   130
#> 168                             180.0+  57  13      1         10        0   110
#> 169                              10.0+  58  10      0         10        1   150
#> 170                             180.0+  57   4      1          3        0   138
#> 171                             180.0+  57  11      0        180        1   150
#> 172                               17.0  61   3      0         17        0   143
#> 173                               3.0+  57   3      1          2        0   120
#> 174                               9.0+  59   9      1          0        1    80
#> 175                             180.0+  55   4      1          3        1   160
#> 176                             172.0+  58  11      0        172        1   135
#> 177                             172.0+  60  12      1          0        1   114
#> 178                               24.0  55   9      1          7        1   135
#> 179                             180.0+  61   4      1          0        1   115
#> 180                                8.0  56   8      1          8        0   120
#> 181                             180.0+  61  13      1         12        1   130
#> 182                             180.0+  59  11      1          8        1   190
#> 183                               1.0+  57   1      0          1        0   126
#> 184                               15.0  57  15      1         13        1   110
#> 185                             180.0+  58   5      1          1        1   135
#> 186                             180.0+  59  10      0        180        0   160
#> 187                               8.0+  58   8      1          5        0   152
#> 188                             180.0+  62   7      1          2        1   180
#> 189                             180.0+  57   3      1          0        0   100
#> 190                              169.0  57   7      0        169        0   180
#> 191                                7.0  61   7      0          7        1   150
#> 192                             180.0+  59  13      1          2        0   198
#> 193                             180.0+  57  12      1          9        1   120
#> 194                             180.0+  62   4      1          0        0   160
#> 195                             180.0+  59   1      0        180        0   155
#> 196                               28.0  63   6      0         28        1   120
#> 197                               18.0  57  18      1          9        1    93
#> 198                               5.0+  61   5      0          5        1   160
#> 199                             180.0+  58  11      1          9        0   179
#> 200                             180.0+  63   1      0        180        1   130
#> 201                             180.0+  61   7      0        180        0   135
#> 202                             180.0+  63   4      0        180        1   190
#> 203                             180.0+  63  15      1         10        1   126
#> 204                               4.0+  63   4      1          1        0   155
#> 205                             180.0+  59   8      0        180        1   140
#> 206                               7.0+  62   7      0          7        0   150
#> 207                               22.0  59   1      0         22        1   162
#> 208                             180.0+  59   4      0        180        0   196
#> 209                               84.0  60   7      1          5        1   141
#> 210                               7.0+  60   7      0          7        0   140
#> 211                             180.0+  59   5      1          1        0   148
#> 212                             180.0+  60   7      1          1        1    90
#> 213                             180.0+  65  13      0        180        1   100
#> 214                                1.0  63   1      0          1        0   162
#> 215                                1.0  63   1      0          1        0   130
#> 216                             180.0+  62   6      0        180        0   170
#> 217                             180.0+  61  15      1         13        0   170
#> 218                               4.0+  59   4      0          4        0   149
#> 219                               3.0+  60   3      0          3        0   168
#> 220                              167.0  64  10      1          9        0   160
#> 221                               6.0+  62   6      0          6        0   120
#> 222                             180.0+  63  12      1         10        0   200
#> 223                               17.0  60   8      0         17        1   130
#> 224                             180.0+  66   1      1          0        1   120
#> 225                             180.0+  64   6      1          0        1   140
#> 226                              14.0+  63  14      1          9        0   123
#> 227                               36.0  65  36      1         11        0   140
#> 228                             180.0+  63   4      1          3        0   162
#> 229                               3.0+  66   3      1          1        0   127
#> 230                               12.0  63  12      1          9        0   114
#> 231                             180.0+  63   7      0        180        0   120
#> 232                             180.0+  66   5      1          0        1   110
#> 233                             180.0+  65   8      1          0        0   168
#> 234                             180.0+  65  10      1          8        1   120
#> 235                             180.0+  60   6      0        180        0   130
#> 236                              12.0+  61  12      1         11        0   154
#> 237                             180.0+  61   4      0        180        1   113
#> 238                             180.0+  65   3      0        180        1   190
#> 239                             180.0+  63  16      1          7        1   110
#> 240                             180.0+  66   6      1          1        1   130
#> 241                             180.0+  62   3      1          1        1   199
#> 242                                9.0  65   6      0          9        0   112
#> 243                                3.0  65   3      1          0        1    80
#> 244                             180.0+  63   5      1          4        0   170
#> 245                             180.0+  63   2      1          1        0   180
#> 246                             180.0+  62  13      1         11        0   180
#> 247                              11.0+  67  11      0         11        1   100
#> 248                              18.0+  66  18      1          5        0   142
#> 249                             180.0+  62   9      0        180        0   145
#> 250                             180.0+  61  14      1          5        0   140
#> 251                             180.0+  63   9      1          8        1   160
#> 252                               3.0+  63   3      1          2        0   120
#> 253                               2.0+  63   2      1          0        0   140
#> 254                               15.0  65   8      1          0        1   140
#> 255                             180.0+  67   6      0        180        1   170
#> 256                             180.0+  65  15      1         11        1   160
#> 257                             166.0+  66  13      1          0        0   118
#> 258                              14.0+  64  14      1         13        1   150
#> 259                                3.0  65   3      0          3        0   105
#> 260                               0.5+  64   0      0          0        1   148
#> 261                             180.0+  67   4      1          3        0   130
#> 262                             180.0+  66   6      1          0        1   140
#> 263                             175.0+  65   2      1          1        1   170
#> 264                             180.0+  64  10      1          9        1   110
#> 265                                8.0  67   8      1          1        1   130
#> 266                                5.0  68   5      0          5        1    90
#> 267                               16.0  63  10      0         16        1   160
#> 268                             180.0+  66  14      0        180        0   130
#> 269                                1.0  64   1      0          1        1   120
#> 270                             180.0+  68  18      0        180        1   260
#> 271                             180.0+  65  17      1         14        1   100
#> 272                             123.0+  65  18      1          3        0   120
#> 273                               1.0+  63   1      1          0        1   155
#> 274                               18.0  63  10      0         18        1   130
#> 275                             180.0+  68  11      0        180        0   160
#> 276                               79.0  68  14      0         79        0   172
#> 277                             180.0+  66  11      1          0        0   100
#> 278                               4.0+  65   4      1          2        1   145
#> 279                               15.0  69  12      0         15        1   140
#> 280                             180.0+  66  15      1         13        1   160
#> 281                             180.0+  69   6      0        180        1   100
#> 282                             180.0+  66   9      1          8        0   130
#> 283                             180.0+  63   8      0        180        1   120
#> 284                             180.0+  68  14      1         13        1   140
#> 285                               8.0+  65   8      1          0        1    90
#> 286                                3.0  66   3      0          3        1   138
#> 287                              175.0  69   1      1          0        0   170
#> 288                             180.0+  67   1      0        180        1   160
#> 289                               10.0  68  10      1         10        1   150
#> 290                             180.0+  67   7      1          4        1   130
#> 291                             180.0+  63   2      1          0        0    99
#> 292                             180.0+  67   2      0        180        0   184
#> 293                             180.0+  65  10      1          1        1   148
#> 294                              19.0+  66  19      1         12        1   150
#> 295                             180.0+  65   4      1          1        0   130
#> 296                             180.0+  66   4      0        180        1   130
#> 297                              11.0+  64  11      0         11        0   125
#> 298                                0.5  64   0      1          0        1   118
#> 299                               7.0+  66   7      1          5        1   131
#> 300                             180.0+  66   4      0        180        0   177
#> 301                             180.0+  68   4      1          0        1   160
#> 302                             152.0+  69   4      1          3        1   150
#> 303                               93.0  69   8      0         93        0   140
#> 304                             180.0+  66   6      0        180        0   140
#> 305                                1.0  65   1      0          1        1   120
#> 306                              18.0+  68  18      1          0        1   160
#> 307                                4.0  68   4      0          4        1   190
#> 308                                5.0  71   3      0          5        0   112
#> 309                              150.0  68   7      0        150        0   210
#> 310                             180.0+  71  20      1          0        1   160
#> 311                             180.0+  67   2      0        180        0   128
#> 312                                1.0  66   1      1          1        1   165
#> 313                              171.0  70  14      0        171        0   166
#> 314                                6.0  67   6      1          4        0   130
#> 315                                0.5  69   0      0          0        1   148
#> 316                             180.0+  65   2      0        180        0   130
#> 317                              14.0+  65  14      1         13        1   150
#> 318                             180.0+  69   8      0        180        1   180
#> 319                               7.0+  71   7      0          7        0   230
#> 320                                2.0  66   2      0          2        1   228
#> 321                               5.0+  69   5      0          5        1   142
#> 322                              103.0  71   3      0        103        0   133
#> 323                               36.0  67   1      0         36        1   104
#> 324                               5.0+  67   5      0          5        0   130
#> 325                             180.0+  69   8      1          5        1   195
#> 326                               97.0  69   6      1          4        1   174
#> 327                             180.0+  72   3      1          0        1   132
#> 328                                7.0  72   7      0          7        1   110
#> 329                               8.0+  69   8      1          7        1   108
#> 330                               2.0+  66   2      1          1        0   123
#> 331                             180.0+  69  19      0        180        0   130
#> 332                               18.0  68  18      0         18        1   100
#> 333                             172.0+  67  14      0        172        1   140
#> 334                             180.0+  69  11      1          0        1   120
#> 335                             180.0+  69   4      1          3        0   132
#> 336                               8.0+  69   8      1          2        0   121
#> 337                              123.0  70   3      0        123        0   130
#> 338                             180.0+  72   5      1          4        0   170
#> 339                               51.0  67  22      1          1        1   140
#> 340                             180.0+  67  12      1          8        0   120
#> 341                                1.0  69   1      0          1        1   110
#> 342                               76.0  69   5      0         76        0   120
#> 343                             180.0+  67   8      1          0        1   130
#> 344                              132.0  72  13      1         11        1   195
#> 345                              10.0+  68  10      1          8        1   160
#> 346                             180.0+  66  24      1         13        0   130
#> 347                             180.0+  70  35      1          0        1   105
#> 348                               7.0+  70   7      0          7        0   102
#> 349                               7.0+  68   7      1          2        0   135
#> 350                                9.0  71   6      0          9        0   120
#> 351                             180.0+  69  10      1          6        1   120
#> 352                             180.0+  70  11      0        180        1   210
#> 353                             180.0+  72  19      1          8        0   120
#> 354                               12.0  72  12      1         10        0   170
#> 355                             180.0+  67   5      1          0        1   147
#> 356                             180.0+  67   9      0        180        0   158
#> 357                             180.0+  70   5      0        180        0   150
#> 358                               76.0  67   4      1          1        0   134
#> 359                             173.0+  71   1      0        173        1   188
#> 360                             180.0+  70   3      0        180        0   121
#> 361                             180.0+  69   3      0        180        0   220
#> 362                             180.0+  71   3      1          2        0   150
#> 363                               28.0  72   5      0         28        0   120
#> 364                              16.0+  69  16      1         10        1   140
#> 365                             180.0+  68   7      0        180        1   130
#> 366                              16.0+  72  16      1          1        1   130
#> 367                             180.0+  70   4      0        180        0   180
#> 368                                6.0  73   6      1          0        1   270
#> 369                             180.0+  72   8      1          1        1   150
#> 370                               3.0+  70   3      0          3        1   159
#> 371                             180.0+  72   6      0        180        1   130
#> 372                             180.0+  73   0      0        180        1   161
#> 373                                2.0  69   2      1          0        1   110
#> 374                               3.0+  71   3      1          1        0   150
#> 375                             180.0+  71  15      1         11        0   165
#> 376                               20.0  74  20      0         20        1   180
#> 377                             180.0+  68   9      0        180        1   120
#> 378                               20.0  71  20      1         10        0   140
#> 379                             180.0+  70   5      1          0        1   190
#> 380                             180.0+  71  17      1         11        0   160
#> 381                                3.0  71   3      1          2        1   190
#> 382                               87.0  73  10      1          8        0   106
#> 383                               12.0  69  12      1          1        1   149
#> 384                             180.0+  70  26      1         11        1   120
#> 385                             180.0+  73   6      0        180        0   110
#> 386                                3.0  74   3      0          3        1   150
#> 387                             180.0+  73  17      1         11        0   140
#> 388                              175.0  71  13      1          8        0   121
#> 389                                2.0  69   2      1          1        1    80
#> 390                             180.0+  70   4      1          0        1   140
#> 391                              14.0+  71  14      1         13        1   170
#> 392                             180.0+  74   7      1          0        1   117
#> 393                             180.0+  69   7      0        180        1   144
#> 394                             180.0+  72  15      1         13        0   156
#> 395                               8.0+  70   8      0          8        0   120
#> 396                             179.0+  71  10      1          9        1   120
#> 397                             180.0+  75   2      1          1        0   145
#> 398                              159.0  72  10      1          9        1   160
#> 399                             180.0+  74  15      1          9        1   179
#> 400                               10.0  71   2      0         10        1   112
#> 401                             180.0+  75   9      1          7        0   140
#> 402                               13.0  75  13      1          1        1   130
#> 403                             180.0+  71  11      1          8        0   110
#> 404                               4.0+  71   4      0          4        0   134
#> 405                             180.0+  72  15      1         12        1   120
#> 406                               10.0  73  10      1          8        0   120
#> 407                                1.0  72   1      1          1        0   168
#> 408                             180.0+  73  10      0        180        0   162
#> 409                               11.0  72  11      0         11        1   140
#> 410                               3.0+  70   3      0          3        0   150
#> 411                                5.0  73   5      1          3        1   112
#> 412                             180.0+  76  25      1         12        1   170
#> 413                             180.0+  72   2      0        180        0   120
#> 414                             180.0+  72   4      1          0        1   197
#> 415                             180.0+  71   3      1          0        0   144
#> 416                             180.0+  73   4      0        180        0   124
#> 417                               34.0  74  34      1          8        1   233
#> 418                             177.0+  71  32      1         12        1   107
#> 419                             180.0+  72   5      0        180        0   154
#> 420                              15.0+  73  15      0         15        1   160
#> 421                               10.0  73  10      1         10        0   124
#> 422                             180.0+  74   7      0        180        1   150
#> 423                                3.0  74   3      0          3        1   128
#> 424                             180.0+  74   2      1          1        0   140
#> 425                             180.0+  74  19      1          4        1   200
#> 426                                6.0  73   6      0          6        1   114
#> 427                             180.0+  74   2      0        180        0   190
#> 428                             180.0+  72   4      1          3        0   160
#> 429                              17.0+  76  17      1          0        1   200
#> 430                             180.0+  73   4      1          3        1   125
#> 431                                4.0  75   4      1          0        1   122
#> 432                                7.0  75   7      0          7        0   190
#> 433                             180.0+  73  13      1         11        0   195
#> 434                               12.0  75  12      0         12        1   160
#> 435                             180.0+  74   8      1          0        1   105
#> 436                             180.0+  74   6      0        180        0   160
#> 437                             180.0+  74   2      0        180        0   111
#> 438                               52.0  73   1      0         52        1   105
#> 439                             180.0+  73   0      0        180        0   156
#> 440                             180.0+  72   5      0        180        0   120
#> 441                               12.0  78  12      1         11        1   160
#> 442                             180.0+  76  44      1         10        0   105
#> 443                             180.0+  76   5      0        180        0   185
#> 444                             180.0+  76   5      1          0        1   167
#> 445                                8.0  74   8      1          8        1   170
#> 446                             180.0+  75   9      0        180        1   140
#> 447                               33.0  73  33      1         12        1   175
#> 448                                5.0  77   5      1          0        0   123
#> 449                             180.0+  77  12      1          9        1   100
#> 450                             180.0+  73  10      1          9        0   146
#> 451                             180.0+  77  12      0        180        0   130
#> 452                                1.0  77   1      1          0        1    90
#> 453                               12.0  76  12      1         11        1   120
#> 454                             180.0+  78   5      1          0        1   170
#> 455                               7.0+  73   7      1          0        0   174
#> 456                             168.0+  74   9      1          8        0   200
#> 457                             180.0+  75   6      0        180        0   150
#> 458                             176.0+  74   2      1          0        1   130
#> 459                             180.0+  77   3      0        180        0   110
#> 460                             180.0+  73   8      1          1        1   162
#> 461                             180.0+  74   2      0        180        0   100
#> 462                                7.0  78   7      0          7        1   133
#> 463                                7.0  74   7      0          7        0   161
#> 464                               32.0  78  32      1          9        1   198
#> 465                             180.0+  79   6      0        180        0   170
#> 466                               10.0  80  10      1          6        1   147
#> 467                             180.0+  78   0      0        180        1   212
#> 468                              172.0  78  13      1          5        0   130
#> 469                              119.0  75   5      0        119        1   150
#> 470                               12.0  75  12      1          1        1   120
#> 471                             180.0+  78  15      0        180        1   270
#> 472                             180.0+  74  10      1          8        0   135
#> 473                                1.0  76   1      0          1        1    83
#> 474                             180.0+  78  12      1          9        0   150
#> 475                               4.0+  75   4      1          0        0   212
#> 476                                2.0  77   2      1          0        1   143
#> 477                             180.0+  78  10      0        180        1   130
#> 478                               11.0  76  11      1          0        0   120
#> 479                                3.0  75   3      0          3        0     0
#> 480                               24.0  77  24      0         24        1   160
#> 481                               32.0  79   8      0         32        1   120
#> 482                               23.0  80   9      0         23        1   128
#> 483                                6.0  80   6      0          6        1   150
#> 484                             180.0+  78   6      1          0        1   240
#> 485                               3.0+  76   3      1          0        1   140
#> 486                             180.0+  78  11      1          1        1   140
#> 487                             180.0+  79  11      0        180        0   160
#> 488                             180.0+  79   2      1          0        1   121
#> 489                             180.0+  78  14      1          0        1   140
#> 490                                1.0  81   1      0          1        0   130
#> 491                               11.0  78  11      1          8        1   118
#> 492                                4.0  76   4      0          4        1   160
#> 493                             180.0+  76  12      1         10        1   127
#> 494                                6.0  77   6      0          6        1   107
#> 495                               3.0+  80   3      1          0        1   120
#> 496                               2.0+  75   2      1          1        1   204
#> 497                              171.0  77  31      1          3        1   161
#> 498                                1.0  76   1      0          1        1    90
#> 499                             180.0+  77   7      0        180        1   170
#> 500                                6.0  77   6      0          6        1   144
#> 501                             180.0+  81   1      0        180        0   120
#> 502                             180.0+  80  15      1         12        1   150
#> 503                               71.0  77   9      1          4        0   141
#> 504                                8.0  82   5      0          8        1   120
#> 505                               59.0  78   4      0         59        1   112
#> 506                               17.0  80  17      1         12        0   100
#> 507                              10.0+  79  10      0         10        1   120
#> 508                             180.0+  80  15      1          0        1    90
#> 509                               93.0  81   4      1          2        1   126
#> 510                              164.0  79  28      0        164        0   100
#> 511                              118.0  80   9      0        118        1   186
#> 512                              173.0  80   6      0        173        1   160
#> 513                             180.0+  78  32      0        180        1   130
#> 514                             180.0+  81   3      0        180        0   184
#> 515                               7.0+  78   7      0          7        1   147
#> 516                               5.0+  80   5      1          1        1   108
#> 517                             180.0+  78   4      0        180        0   175
#> 518                                3.0  79   3      0          3        1   101
#> 519                             171.0+  78  26      1          5        0   194
#> 520                             166.0+  76   1      0        166        0   131
#> 521                               71.0  81   4      1          1        1   104
#> 522                              20.0+  78  20      1          0        1   109
#> 523                                1.0  80   1      0          1        0   100
#> 524                               10.0  77  10      1          8        1   130
#> 525                               85.0  77   5      0         85        0   188
#> 526                               10.0  80   2      1          1        0   168
#> 527                               6.0+  79   6      0          6        0   152
#> 528                                6.0  80   6      1          0        1   119
#> 529                             180.0+  78   2      0        180        0   148
#> 530                                5.0  80   5      0          5        1   130
#> 531                                1.0  82   1      1          0        1    82
#> 532                             180.0+  79  10      0        180        1   150
#> 533                             180.0+  77   4      0        180        1    98
#> 534                              108.0  81   1      0        108        0   129
#> 535                             180.0+  78  12      0        180        0   134
#> 536                              125.0  79   1      0        125        0   193
#> 537                             180.0+  82  21      1          2        0   155
#> 538                                4.0  79   4      0          4        1   121
#> 539                                6.0  80   6      0          6        1   110
#> 540                               9.0+  83   9      1          5        1   170
#> 541                             180.0+  82   5      0        180        0   110
#> 542                             180.0+  79   7      1          6        0   130
#> 543                              103.0  83   4      0        103        0    97
#> 544                             180.0+  81  11      1          8        0   160
#> 545                               70.0  78  23      1         10        1   145
#> 546                                4.0  79   4      0          4        1   183
#> 547                             180.0+  78   9      1          4        1   120
#> 548                             180.0+  79   1      0        180        1   170
#> 549                             180.0+  81  15      0        180        1   140
#> 550                             180.0+  84   5      1          1        1    85
#> 551                               20.0  81  20      1          9        0   170
#> 552                               8.0+  83   8      0          8        0   115
#> 553                               16.0  81  16      0         16        1   110
#> 554                             180.0+  80  11      1          8        0   110
#> 555                             180.0+  81   8      0        180        0   146
#> 556                             180.0+  80   8      1          7        0   160
#> 557                             177.0+  79   7      0        177        0   197
#> 558                             180.0+  85   4      0        180        0    90
#> 559                             180.0+  81   2      1          1        0   198
#> 560                                2.0  83   2      0          2        1   155
#> 561                              167.0  84   4      0        167        0   198
#> 562                               3.0+  80   3      1          1        1   230
#> 563                               62.0  82  23      1          0        0   110
#> 564                             180.0+  84   5      0        180        1   203
#> 565                                4.0  84   4      0          4        1    85
#> 566                             180.0+  83   3      0        180        0   174
#> 567                               90.0  81   4      0         90        1   138
#> 568                             180.0+  80  13      1          8        1   140
#> 569                                4.0  79   4      0          4        1    60
#> 570                               71.0  80   6      0         71        1   189
#> 571                                1.0  83   1      0          1        1   100
#> 572                               19.0  82  19      0         19        0   120
#> 573                              114.0  83   3      0        114        0    98
#> 574                             180.0+  81  14      1         12        1   128
#> 575                              154.0  83   2      0        154        0   130
#> 576                                2.0  82   0      0          2        1   100
#> 577                             180.0+  83   1      0        180        0   160
#> 578                               4.0+  81   4      0          4        0   175
#> 579                             180.0+  84  15      1         13        1   110
#> 580                                1.0  81   1      0          1        1   145
#> 581                               12.0  81  12      0         12        1   163
#> 582                              16.0+  82  16      1          8        0   103
#> 583                               5.0+  82   5      1          0        1   146
#> 584                                3.0  82   3      1          2        0   130
#> 585                              126.0  83   7      0        126        0   135
#> 586                                8.0  86   8      0          8        1   132
#> 587                             180.0+  81  16      1          9        0   180
#> 588                              165.0  84   6      0        165        0   145
#> 589                                3.0  86   3      0          3        1   140
#> 590                             180.0+  84   3      0        180        1   120
#> 591                             180.0+  81   2      1          0        1   118
#> 592                             180.0+  81   4      0        180        0   160
#> 593                             180.0+  83   9      0        180        1   149
#> 594                             180.0+  82   1      0        180        1   193
#> 595                               4.0+  83   4      0          4        0   130
#> 596                                5.0  87   2      0          5        1   137
#> 597                                6.0  86   6      1          0        1   140
#> 598                               43.0  83  19      0         43        0   150
#> 599                             180.0+  84   3      1          2        0   125
#> 600                               14.0  88  14      1          3        1   130
#> 601                                3.0  84   3      0          3        1   121
#> 602                               13.0  83  13      1         12        0   170
#> 603                             180.0+  84   7      1          2        0   148
#> 604                               92.0  84   9      0         92        1   110
#> 605                               38.0  86   4      0         38        1   122
#> 606                                4.0  82   4      0          4        0   130
#> 607                              177.0  86  13      0        177        0   163
#> 608                               6.0+  86   6      0          6        1   117
#> 609                               62.0  84  13      0         62        1   100
#> 610                               6.0+  86   6      1          1        0   112
#> 611                               4.0+  88   4      0          4        0   100
#> 612                               22.0  85  22      0         22        1   184
#> 613                               11.0  86   9      1          7        1   142
#> 614                               46.0  86   6      0         46        0   173
#> 615                              115.0  88   3      0        115        0   110
#> 616                             180.0+  88   2      0        180        1    68
#> 617                               3.0+  83   3      0          3        1   130
#> 618                               8.0+  87   8      0          8        1   157
#> 619                             180.0+  86  15      1          8        1   109
#> 620                              119.0  89   5      0        119        1   140
#> 621                               1.0+  87   1      0          1        0   170
#> 622                             180.0+  84   8      0        180        1   119
#> 623                                8.0  85   8      0          8        1   136
#> 624                              110.0  84   2      0        110        1   174
#> 625                               29.0  87  29      0         29        1    97
#> 626                             180.0+  84   0      0        180        1   136
#> 627                               14.0  90  14      0         14        1   100
#> 628                               1.0+  88   1      0          1        0   135
#> 629                             180.0+  86   4      0        180        1   145
#> 630                             180.0+  87   2      0        180        0   160
#> 631                               25.0  87   6      1          0        0   125
#> 632                              145.0  91  10      0        145        0   135
#> 633                                3.0  86   3      1          0        1    80
#> 634                               50.0  88   8      0         50        1   154
#> 635                               11.0  90  11      1         10        1   186
#> 636                              126.0  87   6      0        126        1   168
#> 637                             180.0+  86  10      0        180        1   137
#> 638                                4.0  90   4      1          0        0   121
#> 639                             178.0+  87  43      0        178        1   130
#> 640                               36.0  87   5      0         36        1   150
#> 641                               89.0  90   5      1          0        1   125
#> 642                               75.0  88   3      1          2        0   159
#> 643                                1.0  92   1      0          1        1   167
#> 644                               33.0  91   3      0         33        1   137
#> 645                              158.0  88   5      0        158        0   100
#> 646                             180.0+  89  12      1          0        1   130
#> 647                              168.0  89   2      0        168        0   118
#> 648                              169.0  91   5      0        169        1   176
#> 649                               52.0  89  52      0         52        1   130
#> 650                                7.0  92   7      0          7        1   110
#> 651                                4.0  89   4      0          4        1   159
#> 652                             180.0+  89  14      0        180        1    84
#> 653                             180.0+  90  18      0        180        0   188
#> 654                                4.0  91   4      1          0        1   120
#> 655                             180.0+  90  19      1         11        1   129
#> 656                               50.0  94   6      0         50        0    78
#> 657                               1.0+  90   1      0          1        1   118
#> 658                             179.0+  93   8      0        179        1   110
#> 659                               8.0+  94   8      0          8        1   142
#> 660                             180.0+  91   1      0        180        0   158
#> 661                               67.0  90   3      0         67        0   162
#> 662                                8.0  95   8      1          5        1   150
#> 663                               26.0  94   3      0         26        1   144
#> 664                               53.0  91  12      0         53        1   212
#> 665                               7.0+  91   7      0          7        0   135
#> 666                                0.5  93   0      1          0        1   122
#> 667                               69.0  92   5      0         69        0   139
#> 668                                2.0  92   2      0          2        0   112
#> 669                                3.0  96   3      1          0        1   104
#> 670                              15.0+  96  15      1          0        1   140
#> 
#> $weights
#> $weights[[1]]
#>   [1] 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0
#>  [38] 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 0 0 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1
#>  [75] 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1
#> [112] 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1
#> [149] 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 0 0 0 1 1 1 0 1 0 1 1 1 0 0 0 1
#> [186] 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [223] 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0
#> [260] 1 0 0 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0
#> [297] 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 1 1 0 0 1 0 1 0 0 0 1 1 0 1 1 0 0 0 0 0 0 1
#> [334] 0 0 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [371] 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1
#> [408] 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1
#> [445] 0 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1
#> [482] 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 1 1 1 0 1 0 1
#> [519] 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [556] 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0
#> [593] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 0 0 1 0 1 1 0
#> [630] 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 0
#> [667] 0 0 0 1
#> 
#> $weights[[2]]
#>   [1] 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0
#>  [38] 0 0 0 0 1 0 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 0 1
#>  [75] 0 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 1 1 0 1 0 0 1 0 0 0 1
#> [112] 1 1 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [149] 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1
#> [186] 0 0 0 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 0
#> [223] 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0
#> [260] 0 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 0
#> [297] 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1
#> [334] 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> [371] 0 0 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1
#> [408] 0 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1
#> [445] 1 1 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0
#> [482] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0
#> [519] 1 0 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [556] 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0
#> [593] 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 0
#> [630] 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[3]]
#>   [1] 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1 0 1 1 0
#>  [38] 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 1 1 0 0 1
#>  [75] 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1
#> [112] 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0
#> [149] 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1
#> [186] 0 1 1 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1
#> [223] 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#> [260] 1 0 0 1 0 1 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0 1 0 1
#> [297] 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 1
#> [334] 1 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 0 1
#> [371] 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0
#> [408] 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1
#> [445] 1 0 1 1 1 0 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0
#> [482] 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1
#> [519] 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [556] 1 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1
#> [593] 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 0 0 1
#> [630] 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0
#> [667] 1 0 1 1
#> 
#> $weights[[4]]
#>   [1] 1 0 1 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1
#>  [38] 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 0
#>  [75] 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 0 0 1 1
#> [112] 1 0 0 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1
#> [149] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [186] 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1
#> [223] 0 1 1 0 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0
#> [260] 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 0 0
#> [297] 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [334] 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 0
#> [371] 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1
#> [408] 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1
#> [445] 0 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 0 1 1 1 0 1 1
#> [482] 1 0 0 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1
#> [519] 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0
#> [556] 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 1 1
#> [593] 1 1 1 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0
#> [630] 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 0 0 0
#> [667] 0 1 1 0
#> 
#> $weights[[5]]
#>   [1] 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1
#>  [38] 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1
#>  [75] 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1
#> [112] 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1
#> [149] 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 1 1 1 1 1
#> [186] 0 1 0 0 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0
#> [223] 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1
#> [260] 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1
#> [297] 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1
#> [334] 0 1 1 0 0 1 0 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0
#> [371] 1 0 0 0 0 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0
#> [408] 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0
#> [445] 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0
#> [482] 1 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0
#> [519] 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1
#> [556] 0 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0
#> [593] 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1
#> [630] 1 1 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[6]]
#>   [1] 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 1
#>  [38] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0
#>  [75] 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 0 0 0 1 0 0 0
#> [112] 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1
#> [149] 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1
#> [186] 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1
#> [223] 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0
#> [260] 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1
#> [297] 0 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0
#> [334] 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0
#> [371] 1 1 1 0 1 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1
#> [408] 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0
#> [445] 0 1 1 0 0 1 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1
#> [482] 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 1 0 0 1 1 0 0
#> [519] 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1
#> [556] 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [593] 0 0 0 0 1 1 0 1 1 1 0 1 0 0 0 0 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1
#> [630] 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0
#> [667] 1 0 0 1
#> 
#> $weights[[7]]
#>   [1] 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1
#>  [38] 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1
#>  [75] 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1
#> [112] 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1
#> [149] 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1
#> [186] 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0
#> [223] 1 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0
#> [260] 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1
#> [297] 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [334] 0 0 0 1 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1
#> [371] 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [408] 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 0
#> [445] 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1 1
#> [482] 0 0 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1
#> [519] 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 1
#> [556] 0 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0
#> [593] 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0
#> [630] 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[8]]
#>   [1] 1 1 1 1 0 0 0 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1
#>  [38] 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1
#>  [75] 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0
#> [112] 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1
#> [149] 1 1 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1
#> [186] 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0
#> [223] 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 1 1 0 1
#> [260] 0 1 1 1 0 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1
#> [297] 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1
#> [334] 1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0 1
#> [371] 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 0 0 0 0 1 0 1 1
#> [408] 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 0 1
#> [445] 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0
#> [482] 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0
#> [519] 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0
#> [556] 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0
#> [593] 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1
#> [630] 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[9]]
#>   [1] 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0
#>  [38] 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 0
#>  [75] 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1
#> [112] 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [149] 1 0 0 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1
#> [186] 0 0 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1
#> [223] 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 1 1
#> [260] 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1
#> [297] 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1
#> [334] 0 0 1 0 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1
#> [371] 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1
#> [408] 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0
#> [445] 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1
#> [482] 1 0 0 1 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [519] 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#> [556] 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 0
#> [593] 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1
#> [630] 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 1 0
#> [667] 0 1 1 0
#> 
#> $weights[[10]]
#>   [1] 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0
#>  [38] 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1
#>  [75] 1 1 0 1 1 1 1 0 0 0 0 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0
#> [112] 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 0 1 0
#> [149] 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1
#> [186] 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0
#> [223] 0 1 0 1 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1
#> [260] 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1
#> [297] 1 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 1 0 0 0 1
#> [334] 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1
#> [371] 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 0 1 1
#> [408] 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 0
#> [445] 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0
#> [482] 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1
#> [519] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1
#> [556] 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0
#> [593] 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0
#> [630] 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[11]]
#>   [1] 0 1 1 0 1 0 0 0 0 1 1 0 1 0 1 0 1 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 1 0 1 1 0
#>  [38] 0 0 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1
#>  [75] 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0
#> [112] 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0
#> [149] 0 0 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 0
#> [186] 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0
#> [223] 0 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0
#> [260] 1 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 0
#> [297] 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0
#> [334] 0 1 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1
#> [371] 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1
#> [408] 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1
#> [445] 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1
#> [482] 1 1 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0
#> [519] 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0
#> [556] 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0
#> [593] 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1
#> [630] 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0
#> [667] 0 1 1 1
#> 
#> $weights[[12]]
#>   [1] 0 1 0 0 0 0 1 0 1 0 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0
#>  [38] 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 1 1
#>  [75] 1 0 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1
#> [112] 1 0 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1
#> [149] 1 1 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1
#> [186] 1 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 0
#> [223] 0 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 1
#> [260] 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1
#> [297] 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0
#> [334] 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0
#> [371] 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [408] 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 0
#> [445] 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0
#> [482] 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1
#> [519] 1 1 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 0 1
#> [556] 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1
#> [593] 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1
#> [630] 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0
#> [667] 0 0 1 1
#> 
#> $weights[[13]]
#>   [1] 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1
#>  [38] 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 0
#>  [75] 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1
#> [112] 0 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 0 0 1 1 1 0 1 0
#> [149] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [186] 1 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1
#> [223] 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1
#> [260] 0 1 1 0 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 0 1 1
#> [297] 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 1 1 0 0
#> [334] 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1
#> [371] 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0 0 0 1 1
#> [408] 0 1 1 1 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 1 0
#> [445] 1 0 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1
#> [482] 1 0 0 1 0 1 0 0 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1
#> [519] 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1
#> [556] 0 1 1 0 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 1 1
#> [593] 1 0 0 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1
#> [630] 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[14]]
#>   [1] 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0
#>  [38] 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1
#>  [75] 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 1 0 0 0 1 0 1 0 1
#> [112] 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1
#> [149] 0 0 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0
#> [186] 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0
#> [223] 0 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1
#> [260] 1 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0
#> [297] 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 0
#> [334] 1 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1
#> [371] 1 0 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1
#> [408] 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 0 0 1 1
#> [445] 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 0 1
#> [482] 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> [519] 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1
#> [556] 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 0
#> [593] 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0
#> [630] 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1
#> [667] 0 0 0 0
#> 
#> $weights[[15]]
#>   [1] 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1
#>  [38] 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1
#>  [75] 0 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 0 0 1 0 1 0 0
#> [112] 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [149] 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [186] 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1 1 0
#> [223] 1 0 1 1 1 0 1 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0
#> [260] 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1
#> [297] 1 1 0 0 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [334] 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1
#> [371] 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1
#> [408] 0 0 1 0 0 1 1 1 0 1 0 1 0 1 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1
#> [445] 1 1 0 0 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 1 0 1 1
#> [482] 0 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0
#> [519] 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0
#> [556] 1 1 0 0 1 0 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0
#> [593] 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1
#> [630] 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[16]]
#>   [1] 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1
#>  [38] 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1
#>  [75] 0 0 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [112] 0 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0
#> [149] 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 0 0 0 0 0
#> [186] 0 1 1 1 0 0 1 0 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [223] 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1
#> [260] 0 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 0 0 0 0 0 0 1 1 0 0 1 0 1 1 1 0 1 0 1 0
#> [297] 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0
#> [334] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 0 0 1 0 0
#> [371] 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1
#> [408] 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0
#> [445] 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 1 1 0 0 1 1 0 1 0
#> [482] 1 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1
#> [519] 1 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 0 0 1 1 0
#> [556] 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 0 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1
#> [593] 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1
#> [630] 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[17]]
#>   [1] 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1
#>  [38] 1 0 0 1 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1
#>  [75] 0 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0
#> [112] 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 1 1 1 1 0 0
#> [149] 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0
#> [186] 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0
#> [223] 0 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1
#> [260] 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 1
#> [297] 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1
#> [334] 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1
#> [371] 1 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 1 1 0 0 0
#> [408] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1
#> [445] 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1
#> [482] 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1
#> [519] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1
#> [556] 0 1 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 1 0 0 1
#> [593] 1 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 0
#> [630] 1 0 0 0 0 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1
#> [667] 1 0 1 0
#> 
#> $weights[[18]]
#>   [1] 0 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1
#>  [38] 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0
#>  [75] 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1
#> [112] 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0
#> [149] 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1
#> [186] 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 1 0 0
#> [223] 1 1 0 1 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1
#> [260] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0
#> [297] 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 1 0 1 1 1
#> [334] 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1
#> [371] 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 1
#> [408] 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1
#> [445] 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1
#> [482] 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1
#> [519] 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0
#> [556] 1 0 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0 0 0 0 1 0 1
#> [593] 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 0 1
#> [630] 1 1 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0
#> [667] 1 1 0 0
#> 
#> $weights[[19]]
#>   [1] 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 0 1 1 1 0 1 1
#>  [38] 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 0 1
#>  [75] 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1
#> [112] 1 0 0 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0
#> [149] 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0
#> [186] 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 1 1
#> [223] 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1
#> [260] 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 0 1 0 1 1
#> [297] 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0
#> [334] 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1
#> [371] 0 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [408] 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0
#> [445] 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0
#> [482] 1 0 0 0 1 1 0 0 1 0 1 0 0 1 1 0 0 1 1 0 0 0 0 1 1 0 0 1 0 1 1 0 1 0 0 1 1
#> [519] 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1
#> [556] 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 0
#> [593] 1 0 0 0 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0 0 0 1 1
#> [630] 0 1 0 0 0 0 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1
#> [667] 1 0 1 1
#> 
#> $weights[[20]]
#>   [1] 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 0 1 1 1
#>  [38] 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 0 0 0
#>  [75] 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [112] 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0
#> [149] 0 0 1 1 1 1 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0
#> [186] 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 0 1 1
#> [223] 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1
#> [260] 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1
#> [297] 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 0
#> [334] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 1 1 1 1 0 0
#> [371] 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 0
#> [408] 1 1 1 0 0 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1
#> [445] 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 0
#> [482] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 0
#> [519] 1 1 1 1 0 1 0 0 0 0 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1
#> [556] 1 1 1 0 1 1 0 0 0 0 1 1 0 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0
#> [593] 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 1
#> [630] 0 0 1 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [667] 1 0 0 0
#> 
#> $weights[[21]]
#>   [1] 0 1 1 0 0 1 1 0 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 0 1 1 0
#>  [38] 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1
#>  [75] 0 0 0 1 0 0 0 1 1 0 1 1 0 1 0 0 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1
#> [112] 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 0 0
#> [149] 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1
#> [186] 1 0 1 0 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [223] 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0
#> [260] 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1
#> [297] 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1
#> [371] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0
#> [408] 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 0 0 1 0 0 1 0 1 1
#> [445] 0 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 0 0 0 1 1 0
#> [482] 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1
#> [519] 1 1 0 1 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 1
#> [556] 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1
#> [593] 1 0 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1
#> [630] 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1
#> [667] 1 0 0 0
#> 
#> $weights[[22]]
#>   [1] 0 0 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1
#>  [38] 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0
#>  [75] 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1
#> [112] 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0
#> [149] 0 0 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 0 1 0 1 0 0 1 1 0 1 0 1 0 1 0 1
#> [186] 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1
#> [223] 1 1 1 1 0 0 0 0 1 0 0 0 1 0 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0
#> [260] 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 0 1 1
#> [297] 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 0 1
#> [334] 0 1 1 0 1 1 1 0 0 1 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0
#> [371] 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1
#> [408] 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 0 0 1 0 0 0 1 0
#> [445] 1 0 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0
#> [482] 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1
#> [519] 1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0
#> [556] 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1
#> [593] 0 1 0 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1
#> [630] 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0
#> [667] 1 0 1 0
#> 
#> $weights[[23]]
#>   [1] 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 0
#>  [38] 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1
#>  [75] 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0
#> [112] 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1
#> [149] 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 0 1 0 1 0 1
#> [186] 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 0 0 0 0 0 1 1 0 1
#> [223] 0 1 0 1 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 1 0 1
#> [260] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1
#> [297] 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1
#> [334] 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1
#> [371] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 1 0 1 0 0
#> [408] 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0
#> [445] 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1
#> [482] 1 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1
#> [519] 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1 0 1
#> [556] 1 0 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 0 0 1 1
#> [593] 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0
#> [630] 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 0 0 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[24]]
#>   [1] 0 1 1 1 1 0 1 0 1 1 1 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 1 1 0 0 1 1 0 1 0 0 1
#>  [38] 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1
#>  [75] 0 1 1 0 0 0 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#> [112] 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 0 0
#> [149] 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [186] 1 0 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0
#> [223] 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1
#> [260] 0 0 1 0 0 1 0 0 0 1 0 0 1 1 1 0 0 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1
#> [297] 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1
#> [334] 1 0 0 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0
#> [371] 0 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1
#> [408] 0 0 1 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1
#> [445] 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 0 0
#> [482] 0 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1
#> [519] 1 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 0 1 0
#> [556] 1 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1
#> [593] 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1
#> [630] 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1
#> [667] 1 1 1 0
#> 
#> $weights[[25]]
#>   [1] 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1 0
#>  [38] 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 0 1 0
#>  [75] 1 0 1 1 0 1 0 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 0
#> [112] 0 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0
#> [149] 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0
#> [186] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0
#> [223] 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1
#> [260] 1 0 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1
#> [297] 1 0 1 0 0 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 1 0
#> [334] 0 0 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1
#> [371] 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 1 0 0 0 1 1 0
#> [408] 0 0 1 0 0 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 0 0 1
#> [445] 1 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0
#> [482] 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1
#> [519] 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 0 1 0
#> [556] 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1
#> [593] 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1
#> [630] 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 0 1 0 1 1 1 0 0 0
#> [667] 0 1 0 1
#> 
#> $weights[[26]]
#>   [1] 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1
#>  [38] 0 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0
#>  [75] 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1
#> [112] 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0 0
#> [149] 0 0 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 1 0 0 1 1
#> [186] 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 1 0 1 1 0 1 1 0 0
#> [223] 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 1 1
#> [260] 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0
#> [297] 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1
#> [334] 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 0 1 0
#> [371] 0 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 0 1
#> [408] 0 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1 1 0
#> [445] 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 0 1 0
#> [482] 1 0 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0
#> [519] 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1
#> [556] 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1
#> [593] 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [630] 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1
#> [667] 1 1 1 1
#> 
#> $weights[[27]]
#>   [1] 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0
#>  [38] 0 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1
#>  [75] 1 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1
#> [112] 1 1 0 0 0 0 1 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1
#> [149] 0 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1
#> [186] 1 1 0 1 0 1 1 1 0 0 0 0 0 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 1
#> [223] 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 0
#> [260] 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0
#> [297] 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1
#> [334] 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 0 0 1 0
#> [371] 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1
#> [408] 0 1 1 0 0 1 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1
#> [445] 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 0
#> [482] 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1
#> [519] 0 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1
#> [556] 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> [593] 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1
#> [630] 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1
#> [667] 1 1 0 0
#> 
#> $weights[[28]]
#>   [1] 0 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
#>  [38] 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0
#>  [75] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1
#> [112] 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 0 0 0 1
#> [149] 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 0
#> [186] 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 0 0 0 0 1 1
#> [223] 1 1 1 1 1 0 0 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1
#> [260] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 0
#> [297] 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 0
#> [334] 0 0 1 0 1 1 0 1 1 0 1 0 0 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1
#> [371] 0 1 1 1 1 0 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0
#> [408] 1 1 0 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 1
#> [445] 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1
#> [482] 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0
#> [519] 0 1 0 0 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1
#> [556] 0 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0
#> [593] 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0
#> [630] 1 0 0 1 0 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1
#> [667] 1 0 0 1
#> 
#> $weights[[29]]
#>   [1] 0 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0
#>  [38] 1 0 1 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0
#>  [75] 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 0 0
#> [112] 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0
#> [149] 0 0 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1
#> [186] 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 0 1
#> [223] 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0
#> [260] 1 1 1 1 0 0 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
#> [297] 0 0 0 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1
#> [334] 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
#> [371] 0 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1
#> [408] 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 1
#> [445] 1 1 0 0 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0
#> [482] 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 0 1 0 0 0
#> [519] 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 1 0 1 1 0
#> [556] 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 0 0
#> [593] 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1
#> [630] 1 0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[30]]
#>   [1] 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 1
#>  [38] 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0
#>  [75] 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0
#> [112] 0 1 0 0 1 0 0 0 1 1 0 0 1 0 1 1 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 0
#> [149] 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 1
#> [186] 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1
#> [223] 1 1 1 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1
#> [260] 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1
#> [297] 0 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0
#> [334] 1 0 0 1 1 0 1 1 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0
#> [371] 1 1 1 0 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1
#> [408] 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0
#> [445] 0 1 0 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [482] 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 1
#> [519] 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1
#> [556] 1 1 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1
#> [593] 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 1
#> [630] 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[31]]
#>   [1] 0 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 0
#>  [38] 0 0 0 0 0 1 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1
#>  [75] 0 1 0 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 0 0 0 0
#> [112] 1 0 1 0 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1
#> [149] 1 1 1 1 0 1 0 1 0 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 0
#> [186] 1 1 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [223] 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 0
#> [260] 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1
#> [297] 0 0 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 1
#> [334] 1 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0
#> [371] 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1
#> [408] 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
#> [445] 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 0
#> [482] 1 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1
#> [519] 1 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 0 0 1 1 0
#> [556] 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1
#> [593] 0 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 1
#> [630] 0 0 0 0 1 0 0 0 1 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[32]]
#>   [1] 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1
#>  [38] 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 0 0 1 1 0 0 1
#>  [75] 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 0 1 0
#> [112] 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1
#> [149] 1 1 0 0 0 1 0 0 0 0 0 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1
#> [186] 0 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 1 1
#> [223] 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1
#> [260] 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0
#> [297] 0 0 1 0 0 1 0 1 1 0 1 1 1 0 0 0 1 0 1 1 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 1 0
#> [334] 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 0
#> [371] 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0
#> [408] 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0
#> [445] 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 0 0 1 0 0 1
#> [482] 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 0 0 1 1 0 1
#> [519] 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0
#> [556] 1 1 0 0 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 1 0
#> [593] 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0
#> [630] 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[33]]
#>   [1] 0 1 1 0 1 1 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 1
#>  [38] 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 0 0
#>  [75] 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0
#> [112] 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1
#> [149] 1 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 1
#> [186] 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 1 1 1 0 1
#> [223] 1 1 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1
#> [260] 1 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 1 1
#> [297] 0 0 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1
#> [334] 1 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1
#> [371] 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0
#> [408] 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1
#> [445] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 1
#> [482] 0 0 0 1 1 1 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 0 1 1
#> [519] 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1
#> [556] 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0
#> [593] 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0
#> [630] 1 0 1 1 1 0 0 0 0 1 0 1 0 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 1 0 0 1 1 0
#> [667] 1 1 0 1
#> 
#> $weights[[34]]
#>   [1] 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0
#>  [38] 0 0 0 1 1 1 0 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1
#>  [75] 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [112] 0 1 0 0 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 0 0
#> [149] 1 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1 0
#> [186] 1 0 0 0 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1
#> [223] 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 1 0 1 1 0 1 1 0
#> [260] 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1
#> [297] 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 1 0
#> [334] 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 0 1 1 0 1 0 0 1 1 0
#> [371] 1 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 0
#> [408] 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1
#> [445] 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0
#> [482] 0 1 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 1 0 1
#> [519] 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 1 0 0 1 1
#> [556] 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 1
#> [593] 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1
#> [630] 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1
#> [667] 0 1 0 0
#> 
#> $weights[[35]]
#>   [1] 1 1 0 0 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 0
#>  [38] 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1
#>  [75] 1 0 1 0 0 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1
#> [112] 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1
#> [149] 1 0 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1
#> [186] 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 1 0 1
#> [223] 1 1 0 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1
#> [260] 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0
#> [297] 1 0 1 0 1 0 0 1 0 1 0 0 0 1 1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0
#> [334] 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 0 0 1
#> [371] 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 1 1 0
#> [408] 1 1 1 0 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0
#> [445] 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 0 0 1
#> [482] 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 0 1
#> [519] 0 0 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1 0 0 0 1 1 0 1 1 0 1
#> [556] 1 1 0 0 0 1 0 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [593] 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 1 1 0 0 1
#> [630] 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0
#> [667] 1 1 1 0
#> 
#> $weights[[36]]
#>   [1] 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1
#>  [38] 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 0 1 1
#>  [75] 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 1
#> [112] 1 1 0 1 1 0 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0
#> [149] 0 1 1 0 0 0 1 1 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 1
#> [186] 1 0 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1
#> [223] 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 1 1 1 0 0 1 0 1 1 1 0 1 0 0 1 0 0
#> [260] 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1
#> [297] 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 1
#> [334] 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1
#> [371] 1 0 1 0 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0 1 1 1 1 0 1 0 1
#> [408] 1 1 0 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 0 1 0
#> [445] 0 1 0 1 0 0 1 0 0 0 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1
#> [482] 0 1 1 1 0 1 0 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 1 0 1 1 1
#> [519] 0 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0
#> [556] 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0
#> [593] 1 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 1
#> [630] 1 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0
#> [667] 1 1 0 1
#> 
#> $weights[[37]]
#>   [1] 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 0
#>  [38] 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 0 0
#>  [75] 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1
#> [112] 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 1 1 1 1
#> [149] 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1
#> [186] 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 0 1 0
#> [223] 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1
#> [260] 0 0 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1
#> [297] 0 1 1 0 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 1 1 0 0 0
#> [334] 0 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 0
#> [371] 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1
#> [408] 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1
#> [445] 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1
#> [482] 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 0 1 1 1 1 0 0
#> [519] 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1
#> [556] 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 1 0 1
#> [593] 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1
#> [630] 1 1 1 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 0 1 0
#> [667] 1 1 1 1
#> 
#> $weights[[38]]
#>   [1] 0 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#>  [38] 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1
#>  [75] 0 1 1 0 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1
#> [112] 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1
#> [149] 0 1 0 1 0 1 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1
#> [186] 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0
#> [223] 1 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0
#> [260] 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1
#> [297] 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1
#> [334] 0 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 1 0 0
#> [371] 1 0 1 0 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 1
#> [408] 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 0 0 1 0 1 0 0
#> [445] 0 0 1 1 1 0 1 1 1 0 0 1 0 1 0 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 1
#> [482] 0 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 1 0 1 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 0
#> [519] 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1
#> [556] 1 1 0 1 0 0 0 1 1 1 0 0 1 0 1 1 1 0 0 0 1 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1
#> [593] 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1
#> [630] 1 0 0 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 0 1 0 1 1
#> [667] 0 1 1 1
#> 
#> $weights[[39]]
#>   [1] 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1
#>  [38] 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0
#>  [75] 1 0 1 0 1 1 0 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0
#> [112] 0 0 0 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0
#> [149] 1 0 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 1 0 1 0 0
#> [186] 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 0
#> [223] 0 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1
#> [260] 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0
#> [297] 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 1 0 0 0 1 1 1
#> [334] 1 1 0 0 1 1 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0
#> [371] 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 0 0 0 0
#> [408] 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 0 1 0
#> [445] 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [482] 0 0 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 1 1 1 1 0 0 1
#> [519] 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 1
#> [556] 1 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 1
#> [593] 1 0 0 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 0
#> [630] 1 1 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 0 0 1 1 1 1 0 1
#> [667] 0 1 1 0
#> 
#> $weights[[40]]
#>   [1] 1 1 1 1 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 1 1
#>  [38] 0 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 1 0 1 1
#>  [75] 1 0 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 0 0 0 0 1 1 0 1 1 0 1 1
#> [112] 1 0 1 0 1 1 0 0 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0
#> [149] 1 0 1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 0 1
#> [186] 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 0 1 1 1 0 1
#> [223] 1 0 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 0 0 1 0 1 1 1 0 0
#> [260] 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 0 1 0
#> [297] 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1
#> [334] 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 0
#> [371] 1 1 0 1 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0
#> [408] 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 0 1
#> [445] 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1
#> [482] 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 0 1
#> [519] 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 0
#> [556] 0 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 1
#> [593] 1 1 0 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0
#> [630] 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1
#> [667] 1 0 1 1
#> 
#> $weights[[41]]
#>   [1] 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 0 0 0 1
#>  [38] 0 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 0 1
#>  [75] 1 0 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 0 0 1 0 0
#> [112] 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1
#> [149] 0 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1 0 0 0 1 0 1 1 1 1
#> [186] 1 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 0
#> [223] 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [260] 0 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1
#> [297] 1 1 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0
#> [334] 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 1 0 1
#> [371] 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0
#> [408] 1 1 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 0
#> [445] 1 0 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 0 0
#> [482] 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0
#> [519] 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 1
#> [556] 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 1 0 1 1 0 0 1
#> [593] 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1
#> [630] 1 1 0 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1
#> [667] 0 1 1 1
#> 
#> $weights[[42]]
#>   [1] 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 0 0
#>  [38] 1 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0
#>  [75] 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1
#> [112] 1 0 0 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1
#> [149] 0 1 1 0 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1
#> [186] 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1
#> [223] 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 0 0 1 1
#> [260] 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1
#> [297] 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1
#> [334] 0 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 1 1
#> [371] 1 1 1 0 0 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1
#> [408] 1 0 1 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0
#> [445] 1 1 1 1 1 1 1 1 0 1 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1
#> [482] 0 1 1 1 1 0 1 1 0 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 1 1
#> [519] 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 0 1 1 1
#> [556] 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 1 0
#> [593] 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0
#> [630] 0 1 0 1 0 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1
#> [667] 0 1 0 1
#> 
#> $weights[[43]]
#>   [1] 1 1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1
#>  [38] 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1
#>  [75] 1 0 0 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 0 0 1 1 1 1
#> [112] 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 1 0 1 0 1 1 0 1 1 1
#> [149] 1 0 0 1 0 0 0 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1
#> [186] 0 1 1 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0 1 1 0 0 1 1 1 1 1
#> [223] 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 0
#> [260] 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 0 0 0 1 1 0 0 1 1 0 1 0 0 0 1 1 0 0 1 1 1
#> [297] 1 1 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1
#> [334] 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1 0 1 0 1
#> [371] 1 0 0 1 0 1 1 0 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 0 1 0
#> [408] 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0
#> [445] 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1
#> [482] 1 0 1 1 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0
#> [519] 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 0 1
#> [556] 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1
#> [593] 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1 0
#> [630] 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 1 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[44]]
#>   [1] 1 0 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 0 1 0 1 0 0 0 1 0 0 1 1 0 1 1 1 1 1
#>  [38] 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1
#>  [75] 0 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 0 1
#> [112] 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0
#> [149] 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 1 1 0 0 0 1 0 1 1 1
#> [186] 1 1 0 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1
#> [223] 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 1 1 1 1 1 0 0 1
#> [260] 0 1 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0
#> [297] 0 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 0 1
#> [334] 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1
#> [371] 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 1
#> [408] 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0
#> [445] 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 0 1 1 0
#> [482] 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1 0
#> [519] 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 0 0 0
#> [556] 1 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1
#> [593] 1 0 0 1 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1
#> [630] 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0 1
#> [667] 0 0 1 1
#> 
#> $weights[[45]]
#>   [1] 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 1 1 0 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 1
#>  [38] 0 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1
#>  [75] 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1
#> [112] 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 0
#> [149] 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0
#> [186] 0 1 0 0 1 0 0 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 1 1 0 1 0 1
#> [223] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 0 1 1 1 1 0 1 1 1
#> [260] 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [297] 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0
#> [334] 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1
#> [371] 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 1 0 1 1 0 1
#> [408] 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1
#> [445] 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 0 0 0 1 1 1 1 1 1 0
#> [482] 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0
#> [519] 1 1 0 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 0
#> [556] 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1
#> [593] 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0
#> [630] 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0
#> [667] 1 0 1 0
#> 
#> $weights[[46]]
#>   [1] 1 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 1 1 1 0 1
#>  [38] 0 0 0 1 0 1 0 0 0 1 1 1 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 1 1 1 0
#>  [75] 1 0 1 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1
#> [112] 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1
#> [149] 1 1 1 0 1 1 0 0 1 1 1 0 1 0 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 1
#> [186] 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 1 0 0 0 1 1 1 0 0 1 0 1 0
#> [223] 1 0 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1
#> [260] 1 1 0 1 0 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1
#> [297] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0
#> [334] 0 0 0 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 1 1 0 1
#> [371] 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 1 1 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 1 1 1
#> [408] 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1
#> [445] 1 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 1
#> [482] 1 1 0 1 0 1 1 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 0
#> [519] 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1
#> [556] 0 1 1 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1
#> [593] 0 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1 1 0 0
#> [630] 1 1 1 1 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 0 0 1
#> [667] 0 0 1 0
#> 
#> $weights[[47]]
#>   [1] 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0
#>  [38] 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0
#>  [75] 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 1 1
#> [112] 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0
#> [149] 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0
#> [186] 1 1 1 1 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1
#> [223] 0 1 0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 0 0 1 1
#> [260] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 0 1 1 0 1 1 0 1 0 0 1 1 1
#> [297] 1 1 1 1 0 1 1 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1 1 1 1
#> [334] 0 1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [371] 1 0 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 0
#> [408] 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1
#> [445] 0 1 1 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 1 1 1
#> [482] 1 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 0 0 0 0 1 0 1 1 0 1 1
#> [519] 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1
#> [556] 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 1 0 0 1 1 1 0 0 1 1 1
#> [593] 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1
#> [630] 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1
#> [667] 0 1 0 1
#> 
#> $weights[[48]]
#>   [1] 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1
#>  [38] 0 1 0 0 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0
#>  [75] 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0
#> [112] 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1
#> [149] 1 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1
#> [186] 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 0
#> [223] 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 1
#> [260] 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0 1
#> [297] 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1
#> [334] 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 0 1 0 1 0
#> [371] 1 1 0 0 1 0 0 1 0 0 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0
#> [408] 0 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0 0 1 1 1 0 0 0 1 1
#> [445] 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1
#> [482] 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1
#> [519] 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 0 1 0
#> [556] 1 1 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 1
#> [593] 1 0 1 0 0 0 1 0 1 1 1 0 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 1 1
#> [630] 1 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1
#> [667] 0 0 1 0
#> 
#> $weights[[49]]
#>   [1] 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0
#>  [38] 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0
#>  [75] 1 1 0 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 0 1 0 0 0 1 1 0 1 1 0 1 0 1 1 0
#> [112] 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 1 1
#> [149] 1 1 1 1 1 1 0 1 0 0 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 0 0 1 1
#> [186] 0 0 1 1 0 1 0 0 1 0 0 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0
#> [223] 0 1 1 0 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1
#> [260] 0 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0
#> [297] 0 0 1 0 1 1 1 1 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 1 1 1 0 1
#> [334] 1 1 0 1 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 1
#> [371] 1 0 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0
#> [408] 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1
#> [445] 1 1 1 1 0 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0
#> [482] 0 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1
#> [519] 0 1 1 0 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 1 1 0 1 0
#> [556] 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0 1
#> [593] 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1
#> [630] 0 0 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1
#> [667] 1 1 0 0
#> 
#> $weights[[50]]
#>   [1] 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1
#>  [38] 1 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1
#>  [75] 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0 1 1
#> [112] 0 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 1 1 0
#> [149] 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0 0
#> [186] 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [223] 1 1 0 1 1 1 0 1 0 0 0 1 0 1 0 0 0 1 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1
#> [260] 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0
#> [297] 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 0 0
#> [334] 0 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0 0 1 0 0 1 0 1 1 0 0 1 1 1
#> [371] 1 1 0 0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1 1
#> [408] 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 0 1 0
#> [445] 0 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 1 0 0
#> [482] 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1
#> [519] 0 0 0 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0 0 1 1 1 0 1 1
#> [556] 0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 1 1 1
#> [593] 1 1 1 0 0 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 0 0 1 1 0 0 0 1 1
#> [630] 0 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1
#> [667] 0 0 0 1
#> 
#> 
#> $fitted
#>     idx (response)
#> 1     1     180.0+
#> 2     2       2.0+
#> 3     3       5.0+
#> 4     4     180.0+
#> 5     5     180.0+
#> 6     6       2.0+
#> 7     7     180.0+
#> 8     8       12.0
#> 9     9     180.0+
#> 10   10     180.0+
#> 11   11     180.0+
#> 12   12     180.0+
#> 13   13       2.0+
#> 14   14       5.0+
#> 15   15       2.0+
#> 16   16     180.0+
#> 17   17        3.0
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
#> 39   39       6.0+
#> 40   40     180.0+
#> 41   41     180.0+
#> 42   42     180.0+
#> 43   43     180.0+
#> 44   44     161.0+
#> 45   45     180.0+
#> 46   46     180.0+
#> 47   47     180.0+
#> 48   48       5.0+
#> 49   49     180.0+
#> 50   50     180.0+
#> 51   51     177.0+
#> 52   52     180.0+
#> 53   53     180.0+
#> 54   54     180.0+
#> 55   55     180.0+
#> 56   56      10.0+
#> 57   57     180.0+
#> 58   58     180.0+
#> 59   59     180.0+
#> 60   60     180.0+
#> 61   61     180.0+
#> 62   62     180.0+
#> 63   63     179.0+
#> 64   64     180.0+
#> 65   65     179.0+
#> 66   66     180.0+
#> 67   67     180.0+
#> 68   68     180.0+
#> 69   69     180.0+
#> 70   70     180.0+
#> 71   71     180.0+
#> 72   72     180.0+
#> 73   73     180.0+
#> 74   74     180.0+
#> 75   75       36.0
#> 76   76     180.0+
#> 77   77     180.0+
#> 78   78     180.0+
#> 79   79     180.0+
#> 80   80     180.0+
#> 81   81        5.0
#> 82   82     180.0+
#> 83   83     180.0+
#> 84   84     180.0+
#> 85   85     180.0+
#> 86   86     180.0+
#> 87   87       99.0
#> 88   88     180.0+
#> 89   89      16.0+
#> 90   90     180.0+
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
#> 108 108       7.0+
#> 109 109     180.0+
#> 110 110     180.0+
#> 111 111     180.0+
#> 112 112     180.0+
#> 113 113     180.0+
#> 114 114      16.0+
#> 115 115     180.0+
#> 116 116      15.0+
#> 117 117     180.0+
#> 118 118     180.0+
#> 119 119     180.0+
#> 120 120     134.0+
#> 121 121     180.0+
#> 122 122        8.0
#> 123 123        2.0
#> 124 124     180.0+
#> 125 125     180.0+
#> 126 126     180.0+
#> 127 127     180.0+
#> 128 128      140.0
#> 129 129     180.0+
#> 130 130        1.0
#> 131 131      165.0
#> 132 132     180.0+
#> 133 133     180.0+
#> 134 134     180.0+
#> 135 135     180.0+
#> 136 136       8.0+
#> 137 137     180.0+
#> 138 138     180.0+
#> 139 139     180.0+
#> 140 140     180.0+
#> 141 141     180.0+
#> 142 142     180.0+
#> 143 143       15.0
#> 144 144       5.0+
#> 145 145     180.0+
#> 146 146       4.0+
#> 147 147     180.0+
#> 148 148     180.0+
#> 149 149       4.0+
#> 150 150       9.0+
#> 151 151        1.0
#> 152 152     180.0+
#> 153 153     180.0+
#> 154 154     180.0+
#> 155 155     180.0+
#> 156 156     180.0+
#> 157 157     180.0+
#> 158 158     180.0+
#> 159 159       64.0
#> 160 160     180.0+
#> 161 161       9.0+
#> 162 162     180.0+
#> 163 163     180.0+
#> 164 164     161.0+
#> 165 165     171.0+
#> 166 166        3.0
#> 167 167     180.0+
#> 168 168     180.0+
#> 169 169      10.0+
#> 170 170     180.0+
#> 171 171     180.0+
#> 172 172       17.0
#> 173 173       3.0+
#> 174 174       9.0+
#> 175 175     180.0+
#> 176 176     172.0+
#> 177 177     172.0+
#> 178 178       24.0
#> 179 179     180.0+
#> 180 180        8.0
#> 181 181     180.0+
#> 182 182     180.0+
#> 183 183       1.0+
#> 184 184       15.0
#> 185 185     180.0+
#> 186 186     180.0+
#> 187 187       8.0+
#> 188 188     180.0+
#> 189 189     180.0+
#> 190 190      169.0
#> 191 191        7.0
#> 192 192     180.0+
#> 193 193     180.0+
#> 194 194     180.0+
#> 195 195     180.0+
#> 196 196       28.0
#> 197 197       18.0
#> 198 198       5.0+
#> 199 199     180.0+
#> 200 200     180.0+
#> 201 201     180.0+
#> 202 202     180.0+
#> 203 203     180.0+
#> 204 204       4.0+
#> 205 205     180.0+
#> 206 206       7.0+
#> 207 207       22.0
#> 208 208     180.0+
#> 209 209       84.0
#> 210 210       7.0+
#> 211 211     180.0+
#> 212 212     180.0+
#> 213 213     180.0+
#> 214 214        1.0
#> 215 215        1.0
#> 216 216     180.0+
#> 217 217     180.0+
#> 218 218       4.0+
#> 219 219       3.0+
#> 220 220      167.0
#> 221 221       6.0+
#> 222 222     180.0+
#> 223 223       17.0
#> 224 224     180.0+
#> 225 225     180.0+
#> 226 226      14.0+
#> 227 227       36.0
#> 228 228     180.0+
#> 229 229       3.0+
#> 230 230       12.0
#> 231 231     180.0+
#> 232 232     180.0+
#> 233 233     180.0+
#> 234 234     180.0+
#> 235 235     180.0+
#> 236 236      12.0+
#> 237 237     180.0+
#> 238 238     180.0+
#> 239 239     180.0+
#> 240 240     180.0+
#> 241 241     180.0+
#> 242 242        9.0
#> 243 243        3.0
#> 244 244     180.0+
#> 245 245     180.0+
#> 246 246     180.0+
#> 247 247      11.0+
#> 248 248      18.0+
#> 249 249     180.0+
#> 250 250     180.0+
#> 251 251     180.0+
#> 252 252       3.0+
#> 253 253       2.0+
#> 254 254       15.0
#> 255 255     180.0+
#> 256 256     180.0+
#> 257 257     166.0+
#> 258 258      14.0+
#> 259 259        3.0
#> 260 260       0.5+
#> 261 261     180.0+
#> 262 262     180.0+
#> 263 263     175.0+
#> 264 264     180.0+
#> 265 265        8.0
#> 266 266        5.0
#> 267 267       16.0
#> 268 268     180.0+
#> 269 269        1.0
#> 270 270     180.0+
#> 271 271     180.0+
#> 272 272     123.0+
#> 273 273       1.0+
#> 274 274       18.0
#> 275 275     180.0+
#> 276 276       79.0
#> 277 277     180.0+
#> 278 278       4.0+
#> 279 279       15.0
#> 280 280     180.0+
#> 281 281     180.0+
#> 282 282     180.0+
#> 283 283     180.0+
#> 284 284     180.0+
#> 285 285       8.0+
#> 286 286        3.0
#> 287 287      175.0
#> 288 288     180.0+
#> 289 289       10.0
#> 290 290     180.0+
#> 291 291     180.0+
#> 292 292     180.0+
#> 293 293     180.0+
#> 294 294      19.0+
#> 295 295     180.0+
#> 296 296     180.0+
#> 297 297      11.0+
#> 298 298        0.5
#> 299 299       7.0+
#> 300 300     180.0+
#> 301 301     180.0+
#> 302 302     152.0+
#> 303 303       93.0
#> 304 304     180.0+
#> 305 305        1.0
#> 306 306      18.0+
#> 307 307        4.0
#> 308 308        5.0
#> 309 309      150.0
#> 310 310     180.0+
#> 311 311     180.0+
#> 312 312        1.0
#> 313 313      171.0
#> 314 314        6.0
#> 315 315        0.5
#> 316 316     180.0+
#> 317 317      14.0+
#> 318 318     180.0+
#> 319 319       7.0+
#> 320 320        2.0
#> 321 321       5.0+
#> 322 322      103.0
#> 323 323       36.0
#> 324 324       5.0+
#> 325 325     180.0+
#> 326 326       97.0
#> 327 327     180.0+
#> 328 328        7.0
#> 329 329       8.0+
#> 330 330       2.0+
#> 331 331     180.0+
#> 332 332       18.0
#> 333 333     172.0+
#> 334 334     180.0+
#> 335 335     180.0+
#> 336 336       8.0+
#> 337 337      123.0
#> 338 338     180.0+
#> 339 339       51.0
#> 340 340     180.0+
#> 341 341        1.0
#> 342 342       76.0
#> 343 343     180.0+
#> 344 344      132.0
#> 345 345      10.0+
#> 346 346     180.0+
#> 347 347     180.0+
#> 348 348       7.0+
#> 349 349       7.0+
#> 350 350        9.0
#> 351 351     180.0+
#> 352 352     180.0+
#> 353 353     180.0+
#> 354 354       12.0
#> 355 355     180.0+
#> 356 356     180.0+
#> 357 357     180.0+
#> 358 358       76.0
#> 359 359     173.0+
#> 360 360     180.0+
#> 361 361     180.0+
#> 362 362     180.0+
#> 363 363       28.0
#> 364 364      16.0+
#> 365 365     180.0+
#> 366 366      16.0+
#> 367 367     180.0+
#> 368 368        6.0
#> 369 369     180.0+
#> 370 370       3.0+
#> 371 371     180.0+
#> 372 372     180.0+
#> 373 373        2.0
#> 374 374       3.0+
#> 375 375     180.0+
#> 376 376       20.0
#> 377 377     180.0+
#> 378 378       20.0
#> 379 379     180.0+
#> 380 380     180.0+
#> 381 381        3.0
#> 382 382       87.0
#> 383 383       12.0
#> 384 384     180.0+
#> 385 385     180.0+
#> 386 386        3.0
#> 387 387     180.0+
#> 388 388      175.0
#> 389 389        2.0
#> 390 390     180.0+
#> 391 391      14.0+
#> 392 392     180.0+
#> 393 393     180.0+
#> 394 394     180.0+
#> 395 395       8.0+
#> 396 396     179.0+
#> 397 397     180.0+
#> 398 398      159.0
#> 399 399     180.0+
#> 400 400       10.0
#> 401 401     180.0+
#> 402 402       13.0
#> 403 403     180.0+
#> 404 404       4.0+
#> 405 405     180.0+
#> 406 406       10.0
#> 407 407        1.0
#> 408 408     180.0+
#> 409 409       11.0
#> 410 410       3.0+
#> 411 411        5.0
#> 412 412     180.0+
#> 413 413     180.0+
#> 414 414     180.0+
#> 415 415     180.0+
#> 416 416     180.0+
#> 417 417       34.0
#> 418 418     177.0+
#> 419 419     180.0+
#> 420 420      15.0+
#> 421 421       10.0
#> 422 422     180.0+
#> 423 423        3.0
#> 424 424     180.0+
#> 425 425     180.0+
#> 426 426        6.0
#> 427 427     180.0+
#> 428 428     180.0+
#> 429 429      17.0+
#> 430 430     180.0+
#> 431 431        4.0
#> 432 432        7.0
#> 433 433     180.0+
#> 434 434       12.0
#> 435 435     180.0+
#> 436 436     180.0+
#> 437 437     180.0+
#> 438 438       52.0
#> 439 439     180.0+
#> 440 440     180.0+
#> 441 441       12.0
#> 442 442     180.0+
#> 443 443     180.0+
#> 444 444     180.0+
#> 445 445        8.0
#> 446 446     180.0+
#> 447 447       33.0
#> 448 448        5.0
#> 449 449     180.0+
#> 450 450     180.0+
#> 451 451     180.0+
#> 452 452        1.0
#> 453 453       12.0
#> 454 454     180.0+
#> 455 455       7.0+
#> 456 456     168.0+
#> 457 457     180.0+
#> 458 458     176.0+
#> 459 459     180.0+
#> 460 460     180.0+
#> 461 461     180.0+
#> 462 462        7.0
#> 463 463        7.0
#> 464 464       32.0
#> 465 465     180.0+
#> 466 466       10.0
#> 467 467     180.0+
#> 468 468      172.0
#> 469 469      119.0
#> 470 470       12.0
#> 471 471     180.0+
#> 472 472     180.0+
#> 473 473        1.0
#> 474 474     180.0+
#> 475 475       4.0+
#> 476 476        2.0
#> 477 477     180.0+
#> 478 478       11.0
#> 479 479        3.0
#> 480 480       24.0
#> 481 481       32.0
#> 482 482       23.0
#> 483 483        6.0
#> 484 484     180.0+
#> 485 485       3.0+
#> 486 486     180.0+
#> 487 487     180.0+
#> 488 488     180.0+
#> 489 489     180.0+
#> 490 490        1.0
#> 491 491       11.0
#> 492 492        4.0
#> 493 493     180.0+
#> 494 494        6.0
#> 495 495       3.0+
#> 496 496       2.0+
#> 497 497      171.0
#> 498 498        1.0
#> 499 499     180.0+
#> 500 500        6.0
#> 501 501     180.0+
#> 502 502     180.0+
#> 503 503       71.0
#> 504 504        8.0
#> 505 505       59.0
#> 506 506       17.0
#> 507 507      10.0+
#> 508 508     180.0+
#> 509 509       93.0
#> 510 510      164.0
#> 511 511      118.0
#> 512 512      173.0
#> 513 513     180.0+
#> 514 514     180.0+
#> 515 515       7.0+
#> 516 516       5.0+
#> 517 517     180.0+
#> 518 518        3.0
#> 519 519     171.0+
#> 520 520     166.0+
#> 521 521       71.0
#> 522 522      20.0+
#> 523 523        1.0
#> 524 524       10.0
#> 525 525       85.0
#> 526 526       10.0
#> 527 527       6.0+
#> 528 528        6.0
#> 529 529     180.0+
#> 530 530        5.0
#> 531 531        1.0
#> 532 532     180.0+
#> 533 533     180.0+
#> 534 534      108.0
#> 535 535     180.0+
#> 536 536      125.0
#> 537 537     180.0+
#> 538 538        4.0
#> 539 539        6.0
#> 540 540       9.0+
#> 541 541     180.0+
#> 542 542     180.0+
#> 543 543      103.0
#> 544 544     180.0+
#> 545 545       70.0
#> 546 546        4.0
#> 547 547     180.0+
#> 548 548     180.0+
#> 549 549     180.0+
#> 550 550     180.0+
#> 551 551       20.0
#> 552 552       8.0+
#> 553 553       16.0
#> 554 554     180.0+
#> 555 555     180.0+
#> 556 556     180.0+
#> 557 557     177.0+
#> 558 558     180.0+
#> 559 559     180.0+
#> 560 560        2.0
#> 561 561      167.0
#> 562 562       3.0+
#> 563 563       62.0
#> 564 564     180.0+
#> 565 565        4.0
#> 566 566     180.0+
#> 567 567       90.0
#> 568 568     180.0+
#> 569 569        4.0
#> 570 570       71.0
#> 571 571        1.0
#> 572 572       19.0
#> 573 573      114.0
#> 574 574     180.0+
#> 575 575      154.0
#> 576 576        2.0
#> 577 577     180.0+
#> 578 578       4.0+
#> 579 579     180.0+
#> 580 580        1.0
#> 581 581       12.0
#> 582 582      16.0+
#> 583 583       5.0+
#> 584 584        3.0
#> 585 585      126.0
#> 586 586        8.0
#> 587 587     180.0+
#> 588 588      165.0
#> 589 589        3.0
#> 590 590     180.0+
#> 591 591     180.0+
#> 592 592     180.0+
#> 593 593     180.0+
#> 594 594     180.0+
#> 595 595       4.0+
#> 596 596        5.0
#> 597 597        6.0
#> 598 598       43.0
#> 599 599     180.0+
#> 600 600       14.0
#> 601 601        3.0
#> 602 602       13.0
#> 603 603     180.0+
#> 604 604       92.0
#> 605 605       38.0
#> 606 606        4.0
#> 607 607      177.0
#> 608 608       6.0+
#> 609 609       62.0
#> 610 610       6.0+
#> 611 611       4.0+
#> 612 612       22.0
#> 613 613       11.0
#> 614 614       46.0
#> 615 615      115.0
#> 616 616     180.0+
#> 617 617       3.0+
#> 618 618       8.0+
#> 619 619     180.0+
#> 620 620      119.0
#> 621 621       1.0+
#> 622 622     180.0+
#> 623 623        8.0
#> 624 624      110.0
#> 625 625       29.0
#> 626 626     180.0+
#> 627 627       14.0
#> 628 628       1.0+
#> 629 629     180.0+
#> 630 630     180.0+
#> 631 631       25.0
#> 632 632      145.0
#> 633 633        3.0
#> 634 634       50.0
#> 635 635       11.0
#> 636 636      126.0
#> 637 637     180.0+
#> 638 638        4.0
#> 639 639     178.0+
#> 640 640       36.0
#> 641 641       89.0
#> 642 642       75.0
#> 643 643        1.0
#> 644 644       33.0
#> 645 645      158.0
#> 646 646     180.0+
#> 647 647      168.0
#> 648 648      169.0
#> 649 649       52.0
#> 650 650        7.0
#> 651 651        4.0
#> 652 652     180.0+
#> 653 653     180.0+
#> 654 654        4.0
#> 655 655     180.0+
#> 656 656       50.0
#> 657 657       1.0+
#> 658 658     179.0+
#> 659 659       8.0+
#> 660 660     180.0+
#> 661 661       67.0
#> 662 662        8.0
#> 663 663       26.0
#> 664 664       53.0
#> 665 665       7.0+
#> 666 666        0.5
#> 667 667       69.0
#> 668 668        2.0
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
#> <bytecode: 0x5f2acce3b2b0>
#> <environment: 0x5f2acce3b748>
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
#> <bytecode: 0x5f2ac8d1bbe0>
#> <environment: 0x5f2acde2aef0>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5f2ac8d19dd8>
#> <environment: 0x5f2acde2afd0>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5f2ac8d1bbe0>
#> <environment: 0x5f2acde2b0b0>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x5f2ac8d19dd8>
#> <environment: 0x5f2acde2b200>
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
#> <bytecode: 0x5f2ac8cd6768>
#> <environment: 0x5f2acddd4a48>
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
#>   0.8468577 
```
