# Classification Conditional Random Forest Learner

A random forest based on conditional inference trees
([ctree](https://rdrr.io/pkg/partykit/man/ctree.html)). Calls
[`partykit::cforest()`](https://rdrr.io/pkg/partykit/man/cforest.html)
from [partykit](https://CRAN.R-project.org/package=partykit).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.cforest")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [partykit](https://CRAN.R-project.org/package=partykit),
  [sandwich](https://CRAN.R-project.org/package=sandwich),
  [coin](https://CRAN.R-project.org/package=coin)

## Parameters

|                 |           |              |                                                   |                       |
|-----------------|-----------|--------------|---------------------------------------------------|-----------------------|
| Id              | Type      | Default      | Levels                                            | Range                 |
| ntree           | integer   | 500          |                                                   | \\\[1, \infty)\\      |
| replace         | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| fraction        | numeric   | 0.632        |                                                   | \\\[0, 1\]\\          |
| mtry            | integer   | \-           |                                                   | \\\[0, \infty)\\      |
| mtryratio       | numeric   | \-           |                                                   | \\\[0, 1\]\\          |
| applyfun        | untyped   | \-           |                                                   | \-                    |
| cores           | integer   | NULL         |                                                   | \\(-\infty, \infty)\\ |
| trace           | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| cluster         | untyped   | \-           |                                                   | \-                    |
| scores          | untyped   | \-           |                                                   | \-                    |
| teststat        | character | quadratic    | quadratic, maximum                                | \-                    |
| splitstat       | character | quadratic    | quadratic, maximum                                | \-                    |
| splittest       | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| testtype        | character | Univariate   | Bonferroni, MonteCarlo, Univariate, Teststatistic | \-                    |
| nmax            | untyped   | \-           |                                                   | \-                    |
| pargs           | untyped   | \-           |                                                   | \-                    |
| alpha           | numeric   | 0.05         |                                                   | \\\[0, 1\]\\          |
| mincriterion    | numeric   | 0            |                                                   | \\\[0, 1\]\\          |
| logmincriterion | numeric   | 0            |                                                   | \\(-\infty, \infty)\\ |
| minsplit        | integer   | 20           |                                                   | \\\[1, \infty)\\      |
| minbucket       | integer   | 7            |                                                   | \\\[1, \infty)\\      |
| minprob         | numeric   | 0.01         |                                                   | \\\[0, 1\]\\          |
| stump           | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| lookahead       | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| MIA             | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| nresample       | integer   | 9999         |                                                   | \\\[1, \infty)\\      |
| tol             | numeric   | 1.490116e-08 |                                                   | \\\[0, \infty)\\      |
| maxsurrogate    | integer   | 0            |                                                   | \\\[0, \infty)\\      |
| numsurrogate    | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| maxdepth        | integer   | Inf          |                                                   | \\\[0, \infty)\\      |
| multiway        | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| splittry        | integer   | 2            |                                                   | \\\[0, \infty)\\      |
| intersplit      | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| majority        | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| caseweights     | logical   | TRUE         | TRUE, FALSE                                       | \-                    |
| saveinfo        | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| update          | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| splitflavour    | character | ctree        | ctree, exhaustive                                 | \-                    |
| maxvar          | integer   | \-           |                                                   | \\\[1, \infty)\\      |
| OOB             | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| simplify        | logical   | TRUE         | TRUE, FALSE                                       | \-                    |
| scale           | logical   | TRUE         | TRUE, FALSE                                       | \-                    |
| nperm           | integer   | 1            |                                                   | \\\[0, \infty)\\      |
| risk            | character | loglik       | loglik, misclassification                         | \-                    |
| conditional     | logical   | FALSE        | TRUE, FALSE                                       | \-                    |
| threshold       | numeric   | 0.2          |                                                   | \\(-\infty, \infty)\\ |

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
  <https://mlr3book.mlr-org.com/basics.html#learners>

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

sumny

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifCForest`

## Methods

### Public methods

- [`LearnerClassifCForest$new()`](#method-LearnerClassifCForest-new)

- [`LearnerClassifCForest$oob_error()`](#method-LearnerClassifCForest-oob_error)

- [`LearnerClassifCForest$clone()`](#method-LearnerClassifCForest-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifCForest$new()

------------------------------------------------------------------------

### Method `oob_error()`

The importance scores are calculated using
[`partykit::varimp()`](https://rdrr.io/pkg/partykit/man/varimp.html).

The out-of-bag error, calculated using the OOB predictions from
`partykit`.

#### Usage

    LearnerClassifCForest$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifCForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
task = tsk("iris")
learner = lrn("classif.cforest", ntree = 50)
splits = partition(task)
learner$train(task, splits$train)
pred = learner$predict(task, splits$test)
```
