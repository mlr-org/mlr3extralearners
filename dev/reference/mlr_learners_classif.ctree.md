# Classification Conditional Inference Tree Learner

Classification Partition Tree where a significance test is used to
determine the univariate splits. Calls
[`partykit::ctree()`](https://rdrr.io/pkg/partykit/man/ctree.html) from
[partykit](https://CRAN.R-project.org/package=partykit).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.ctree")

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

|                 |           |            |                                                   |                       |
|-----------------|-----------|------------|---------------------------------------------------|-----------------------|
| Id              | Type      | Default    | Levels                                            | Range                 |
| teststat        | character | quadratic  | quadratic, maximum                                | \-                    |
| splitstat       | character | quadratic  | quadratic, maximum                                | \-                    |
| splittest       | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| testtype        | character | Bonferroni | Bonferroni, MonteCarlo, Univariate, Teststatistic | \-                    |
| nmax            | untyped   | \-         |                                                   | \-                    |
| alpha           | numeric   | 0.05       |                                                   | \\\[0, 1\]\\          |
| mincriterion    | numeric   | 0.95       |                                                   | \\\[0, 1\]\\          |
| logmincriterion | numeric   | \-         |                                                   | \\(-\infty, \infty)\\ |
| minsplit        | integer   | 20         |                                                   | \\\[1, \infty)\\      |
| minbucket       | integer   | 7          |                                                   | \\\[1, \infty)\\      |
| minprob         | numeric   | 0.01       |                                                   | \\\[0, 1\]\\          |
| stump           | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| lookahead       | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| MIA             | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| nresample       | integer   | 9999       |                                                   | \\\[1, \infty)\\      |
| tol             | numeric   | \-         |                                                   | \\\[0, \infty)\\      |
| maxsurrogate    | integer   | 0          |                                                   | \\\[0, \infty)\\      |
| numsurrogate    | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| mtry            | integer   | Inf        |                                                   | \\\[0, \infty)\\      |
| maxdepth        | integer   | Inf        |                                                   | \\\[0, \infty)\\      |
| multiway        | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| splittry        | integer   | 2          |                                                   | \\\[0, \infty)\\      |
| intersplit      | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| majority        | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| caseweights     | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| maxvar          | integer   | \-         |                                                   | \\\[1, \infty)\\      |
| applyfun        | untyped   | \-         |                                                   | \-                    |
| cores           | integer   | NULL       |                                                   | \\(-\infty, \infty)\\ |
| saveinfo        | logical   | TRUE       | TRUE, FALSE                                       | \-                    |
| update          | logical   | FALSE      | TRUE, FALSE                                       | \-                    |
| splitflavour    | character | ctree      | ctree, exhaustive                                 | \-                    |
| cluster         | untyped   | \-         |                                                   | \-                    |
| scores          | untyped   | \-         |                                                   | \-                    |
| doFit           | logical   | TRUE       | TRUE, FALSE                                       | \-                    |
| maxpts          | integer   | 25000      |                                                   | \\(-\infty, \infty)\\ |
| abseps          | numeric   | 0.001      |                                                   | \\\[0, \infty)\\      |
| releps          | numeric   | 0          |                                                   | \\\[0, \infty)\\      |

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
-\> `LearnerClassifCTree`

## Methods

### Public methods

- [`LearnerClassifCTree$new()`](#method-LearnerClassifCTree-new)

- [`LearnerClassifCTree$clone()`](#method-LearnerClassifCTree-clone)

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

    LearnerClassifCTree$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifCTree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.ctree")
print(learner)
#> 
#> ── <LearnerClassifCTree> (classif.ctree): Conditional Inference Tree ───────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, partykit, sandwich, and coin
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Model formula:
#> Class ~ V1 + V10 + V11 + V12 + V13 + V14 + V15 + V16 + V17 + 
#>     V18 + V19 + V2 + V20 + V21 + V22 + V23 + V24 + V25 + V26 + 
#>     V27 + V28 + V29 + V3 + V30 + V31 + V32 + V33 + V34 + V35 + 
#>     V36 + V37 + V38 + V39 + V4 + V40 + V41 + V42 + V43 + V44 + 
#>     V45 + V46 + V47 + V48 + V49 + V5 + V50 + V51 + V52 + V53 + 
#>     V54 + V55 + V56 + V57 + V58 + V59 + V6 + V60 + V7 + V8 + 
#>     V9
#> 
#> Fitted party:
#> [1] root
#> |   [2] V12 <= 0.1654
#> |   |   [3] V47 <= 0.1587
#> |   |   |   [4] V28 <= 0.5014: M (n = 7, err = 42.9%)
#> |   |   |   [5] V28 > 0.5014: R (n = 33, err = 0.0%)
#> |   |   [6] V47 > 0.1587: M (n = 7, err = 28.6%)
#> |   [7] V12 > 0.1654: M (n = 92, err = 25.0%)
#> 
#> Number of inner nodes:    3
#> Number of terminal nodes: 4


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
