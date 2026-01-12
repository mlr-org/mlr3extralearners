# Regression Conditional Random Forest Learner

A random forest based on conditional inference trees
([ctree](https://rdrr.io/pkg/partykit/man/ctree.html)). Calls
[`partykit::cforest()`](https://rdrr.io/pkg/partykit/man/cforest.html)
from [partykit](https://CRAN.R-project.org/package=partykit).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.cforest")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

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
| maxvar          | integer   | \-           |                                                   | \\\[1, \infty)\\      |
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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrCForest`

## Methods

### Public methods

- [`LearnerRegrCForest$new()`](#method-LearnerRegrCForest-new)

- [`LearnerRegrCForest$oob_error()`](#method-LearnerRegrCForest-oob_error)

- [`LearnerRegrCForest$clone()`](#method-LearnerRegrCForest-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrCForest$new()

------------------------------------------------------------------------

### Method `oob_error()`

The out-of-bag error, calculated using the OOB predictions from
`partykit`.

#### Usage

    LearnerRegrCForest$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrCForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.cforest")
print(learner)
#> 
#> ── <LearnerRegrCForest> (regr.cforest): Conditional Random Forest ──────────────
#> • Model: -
#> • Parameters: teststat=quadratic, testtype=Univariate, mincriterion=0,
#> saveinfo=FALSE
#> • Packages: mlr3, mlr3extralearners, partykit, sandwich, and coin
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: oob_error and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $nodes
#> $nodes[[1]]
#> [1] root * 
#> 
#> $nodes[[2]]
#> [1] root * 
#> 
#> $nodes[[3]]
#> [1] root * 
#> 
#> $nodes[[4]]
#> [1] root * 
#> 
#> $nodes[[5]]
#> [1] root * 
#> 
#> $nodes[[6]]
#> [1] root * 
#> 
#> $nodes[[7]]
#> [1] root * 
#> 
#> $nodes[[8]]
#> [1] root * 
#> 
#> $nodes[[9]]
#> [1] root * 
#> 
#> $nodes[[10]]
#> [1] root * 
#> 
#> $nodes[[11]]
#> [1] root * 
#> 
#> $nodes[[12]]
#> [1] root * 
#> 
#> $nodes[[13]]
#> [1] root * 
#> 
#> $nodes[[14]]
#> [1] root * 
#> 
#> $nodes[[15]]
#> [1] root * 
#> 
#> $nodes[[16]]
#> [1] root * 
#> 
#> $nodes[[17]]
#> [1] root * 
#> 
#> $nodes[[18]]
#> [1] root * 
#> 
#> $nodes[[19]]
#> [1] root * 
#> 
#> $nodes[[20]]
#> [1] root * 
#> 
#> $nodes[[21]]
#> [1] root * 
#> 
#> $nodes[[22]]
#> [1] root * 
#> 
#> $nodes[[23]]
#> [1] root * 
#> 
#> $nodes[[24]]
#> [1] root * 
#> 
#> $nodes[[25]]
#> [1] root * 
#> 
#> $nodes[[26]]
#> [1] root * 
#> 
#> $nodes[[27]]
#> [1] root * 
#> 
#> $nodes[[28]]
#> [1] root * 
#> 
#> $nodes[[29]]
#> [1] root * 
#> 
#> $nodes[[30]]
#> [1] root * 
#> 
#> $nodes[[31]]
#> [1] root * 
#> 
#> $nodes[[32]]
#> [1] root * 
#> 
#> $nodes[[33]]
#> [1] root * 
#> 
#> $nodes[[34]]
#> [1] root * 
#> 
#> $nodes[[35]]
#> [1] root * 
#> 
#> $nodes[[36]]
#> [1] root * 
#> 
#> $nodes[[37]]
#> [1] root * 
#> 
#> $nodes[[38]]
#> [1] root * 
#> 
#> $nodes[[39]]
#> [1] root * 
#> 
#> $nodes[[40]]
#> [1] root * 
#> 
#> $nodes[[41]]
#> [1] root * 
#> 
#> $nodes[[42]]
#> [1] root * 
#> 
#> $nodes[[43]]
#> [1] root * 
#> 
#> $nodes[[44]]
#> [1] root * 
#> 
#> $nodes[[45]]
#> [1] root * 
#> 
#> $nodes[[46]]
#> [1] root * 
#> 
#> $nodes[[47]]
#> [1] root * 
#> 
#> $nodes[[48]]
#> [1] root * 
#> 
#> $nodes[[49]]
#> [1] root * 
#> 
#> $nodes[[50]]
#> [1] root * 
#> 
#> $nodes[[51]]
#> [1] root * 
#> 
#> $nodes[[52]]
#> [1] root * 
#> 
#> $nodes[[53]]
#> [1] root * 
#> 
#> $nodes[[54]]
#> [1] root * 
#> 
#> $nodes[[55]]
#> [1] root * 
#> 
#> $nodes[[56]]
#> [1] root * 
#> 
#> $nodes[[57]]
#> [1] root * 
#> 
#> $nodes[[58]]
#> [1] root * 
#> 
#> $nodes[[59]]
#> [1] root * 
#> 
#> $nodes[[60]]
#> [1] root * 
#> 
#> $nodes[[61]]
#> [1] root * 
#> 
#> $nodes[[62]]
#> [1] root * 
#> 
#> $nodes[[63]]
#> [1] root * 
#> 
#> $nodes[[64]]
#> [1] root * 
#> 
#> $nodes[[65]]
#> [1] root * 
#> 
#> $nodes[[66]]
#> [1] root * 
#> 
#> $nodes[[67]]
#> [1] root * 
#> 
#> $nodes[[68]]
#> [1] root * 
#> 
#> $nodes[[69]]
#> [1] root * 
#> 
#> $nodes[[70]]
#> [1] root * 
#> 
#> $nodes[[71]]
#> [1] root * 
#> 
#> $nodes[[72]]
#> [1] root * 
#> 
#> $nodes[[73]]
#> [1] root * 
#> 
#> $nodes[[74]]
#> [1] root * 
#> 
#> $nodes[[75]]
#> [1] root * 
#> 
#> $nodes[[76]]
#> [1] root * 
#> 
#> $nodes[[77]]
#> [1] root * 
#> 
#> $nodes[[78]]
#> [1] root * 
#> 
#> $nodes[[79]]
#> [1] root * 
#> 
#> $nodes[[80]]
#> [1] root * 
#> 
#> $nodes[[81]]
#> [1] root * 
#> 
#> $nodes[[82]]
#> [1] root * 
#> 
#> $nodes[[83]]
#> [1] root * 
#> 
#> $nodes[[84]]
#> [1] root * 
#> 
#> $nodes[[85]]
#> [1] root * 
#> 
#> $nodes[[86]]
#> [1] root * 
#> 
#> $nodes[[87]]
#> [1] root * 
#> 
#> $nodes[[88]]
#> [1] root * 
#> 
#> $nodes[[89]]
#> [1] root * 
#> 
#> $nodes[[90]]
#> [1] root * 
#> 
#> $nodes[[91]]
#> [1] root * 
#> 
#> $nodes[[92]]
#> [1] root * 
#> 
#> $nodes[[93]]
#> [1] root * 
#> 
#> $nodes[[94]]
#> [1] root * 
#> 
#> $nodes[[95]]
#> [1] root * 
#> 
#> $nodes[[96]]
#> [1] root * 
#> 
#> $nodes[[97]]
#> [1] root * 
#> 
#> $nodes[[98]]
#> [1] root * 
#> 
#> $nodes[[99]]
#> [1] root * 
#> 
#> $nodes[[100]]
#> [1] root * 
#> 
#> $nodes[[101]]
#> [1] root * 
#> 
#> $nodes[[102]]
#> [1] root * 
#> 
#> $nodes[[103]]
#> [1] root * 
#> 
#> $nodes[[104]]
#> [1] root * 
#> 
#> $nodes[[105]]
#> [1] root * 
#> 
#> $nodes[[106]]
#> [1] root * 
#> 
#> $nodes[[107]]
#> [1] root * 
#> 
#> $nodes[[108]]
#> [1] root * 
#> 
#> $nodes[[109]]
#> [1] root * 
#> 
#> $nodes[[110]]
#> [1] root * 
#> 
#> $nodes[[111]]
#> [1] root * 
#> 
#> $nodes[[112]]
#> [1] root * 
#> 
#> $nodes[[113]]
#> [1] root * 
#> 
#> $nodes[[114]]
#> [1] root * 
#> 
#> $nodes[[115]]
#> [1] root * 
#> 
#> $nodes[[116]]
#> [1] root * 
#> 
#> $nodes[[117]]
#> [1] root * 
#> 
#> $nodes[[118]]
#> [1] root * 
#> 
#> $nodes[[119]]
#> [1] root * 
#> 
#> $nodes[[120]]
#> [1] root * 
#> 
#> $nodes[[121]]
#> [1] root * 
#> 
#> $nodes[[122]]
#> [1] root * 
#> 
#> $nodes[[123]]
#> [1] root * 
#> 
#> $nodes[[124]]
#> [1] root * 
#> 
#> $nodes[[125]]
#> [1] root * 
#> 
#> $nodes[[126]]
#> [1] root * 
#> 
#> $nodes[[127]]
#> [1] root * 
#> 
#> $nodes[[128]]
#> [1] root * 
#> 
#> $nodes[[129]]
#> [1] root * 
#> 
#> $nodes[[130]]
#> [1] root * 
#> 
#> $nodes[[131]]
#> [1] root * 
#> 
#> $nodes[[132]]
#> [1] root * 
#> 
#> $nodes[[133]]
#> [1] root * 
#> 
#> $nodes[[134]]
#> [1] root * 
#> 
#> $nodes[[135]]
#> [1] root * 
#> 
#> $nodes[[136]]
#> [1] root * 
#> 
#> $nodes[[137]]
#> [1] root * 
#> 
#> $nodes[[138]]
#> [1] root * 
#> 
#> $nodes[[139]]
#> [1] root * 
#> 
#> $nodes[[140]]
#> [1] root * 
#> 
#> $nodes[[141]]
#> [1] root * 
#> 
#> $nodes[[142]]
#> [1] root * 
#> 
#> $nodes[[143]]
#> [1] root * 
#> 
#> $nodes[[144]]
#> [1] root * 
#> 
#> $nodes[[145]]
#> [1] root * 
#> 
#> $nodes[[146]]
#> [1] root * 
#> 
#> $nodes[[147]]
#> [1] root * 
#> 
#> $nodes[[148]]
#> [1] root * 
#> 
#> $nodes[[149]]
#> [1] root * 
#> 
#> $nodes[[150]]
#> [1] root * 
#> 
#> $nodes[[151]]
#> [1] root * 
#> 
#> $nodes[[152]]
#> [1] root * 
#> 
#> $nodes[[153]]
#> [1] root * 
#> 
#> $nodes[[154]]
#> [1] root * 
#> 
#> $nodes[[155]]
#> [1] root * 
#> 
#> $nodes[[156]]
#> [1] root * 
#> 
#> $nodes[[157]]
#> [1] root * 
#> 
#> $nodes[[158]]
#> [1] root * 
#> 
#> $nodes[[159]]
#> [1] root * 
#> 
#> $nodes[[160]]
#> [1] root * 
#> 
#> $nodes[[161]]
#> [1] root * 
#> 
#> $nodes[[162]]
#> [1] root * 
#> 
#> $nodes[[163]]
#> [1] root * 
#> 
#> $nodes[[164]]
#> [1] root * 
#> 
#> $nodes[[165]]
#> [1] root * 
#> 
#> $nodes[[166]]
#> [1] root * 
#> 
#> $nodes[[167]]
#> [1] root * 
#> 
#> $nodes[[168]]
#> [1] root * 
#> 
#> $nodes[[169]]
#> [1] root * 
#> 
#> $nodes[[170]]
#> [1] root * 
#> 
#> $nodes[[171]]
#> [1] root * 
#> 
#> $nodes[[172]]
#> [1] root * 
#> 
#> $nodes[[173]]
#> [1] root * 
#> 
#> $nodes[[174]]
#> [1] root * 
#> 
#> $nodes[[175]]
#> [1] root * 
#> 
#> $nodes[[176]]
#> [1] root * 
#> 
#> $nodes[[177]]
#> [1] root * 
#> 
#> $nodes[[178]]
#> [1] root * 
#> 
#> $nodes[[179]]
#> [1] root * 
#> 
#> $nodes[[180]]
#> [1] root * 
#> 
#> $nodes[[181]]
#> [1] root * 
#> 
#> $nodes[[182]]
#> [1] root * 
#> 
#> $nodes[[183]]
#> [1] root * 
#> 
#> $nodes[[184]]
#> [1] root * 
#> 
#> $nodes[[185]]
#> [1] root * 
#> 
#> $nodes[[186]]
#> [1] root * 
#> 
#> $nodes[[187]]
#> [1] root * 
#> 
#> $nodes[[188]]
#> [1] root * 
#> 
#> $nodes[[189]]
#> [1] root * 
#> 
#> $nodes[[190]]
#> [1] root * 
#> 
#> $nodes[[191]]
#> [1] root * 
#> 
#> $nodes[[192]]
#> [1] root * 
#> 
#> $nodes[[193]]
#> [1] root * 
#> 
#> $nodes[[194]]
#> [1] root * 
#> 
#> $nodes[[195]]
#> [1] root * 
#> 
#> $nodes[[196]]
#> [1] root * 
#> 
#> $nodes[[197]]
#> [1] root * 
#> 
#> $nodes[[198]]
#> [1] root * 
#> 
#> $nodes[[199]]
#> [1] root * 
#> 
#> $nodes[[200]]
#> [1] root * 
#> 
#> $nodes[[201]]
#> [1] root * 
#> 
#> $nodes[[202]]
#> [1] root * 
#> 
#> $nodes[[203]]
#> [1] root * 
#> 
#> $nodes[[204]]
#> [1] root * 
#> 
#> $nodes[[205]]
#> [1] root * 
#> 
#> $nodes[[206]]
#> [1] root * 
#> 
#> $nodes[[207]]
#> [1] root * 
#> 
#> $nodes[[208]]
#> [1] root * 
#> 
#> $nodes[[209]]
#> [1] root * 
#> 
#> $nodes[[210]]
#> [1] root * 
#> 
#> $nodes[[211]]
#> [1] root * 
#> 
#> $nodes[[212]]
#> [1] root * 
#> 
#> $nodes[[213]]
#> [1] root * 
#> 
#> $nodes[[214]]
#> [1] root * 
#> 
#> $nodes[[215]]
#> [1] root * 
#> 
#> $nodes[[216]]
#> [1] root * 
#> 
#> $nodes[[217]]
#> [1] root * 
#> 
#> $nodes[[218]]
#> [1] root * 
#> 
#> $nodes[[219]]
#> [1] root * 
#> 
#> $nodes[[220]]
#> [1] root * 
#> 
#> $nodes[[221]]
#> [1] root * 
#> 
#> $nodes[[222]]
#> [1] root * 
#> 
#> $nodes[[223]]
#> [1] root * 
#> 
#> $nodes[[224]]
#> [1] root * 
#> 
#> $nodes[[225]]
#> [1] root * 
#> 
#> $nodes[[226]]
#> [1] root * 
#> 
#> $nodes[[227]]
#> [1] root * 
#> 
#> $nodes[[228]]
#> [1] root * 
#> 
#> $nodes[[229]]
#> [1] root * 
#> 
#> $nodes[[230]]
#> [1] root * 
#> 
#> $nodes[[231]]
#> [1] root * 
#> 
#> $nodes[[232]]
#> [1] root * 
#> 
#> $nodes[[233]]
#> [1] root * 
#> 
#> $nodes[[234]]
#> [1] root * 
#> 
#> $nodes[[235]]
#> [1] root * 
#> 
#> $nodes[[236]]
#> [1] root * 
#> 
#> $nodes[[237]]
#> [1] root * 
#> 
#> $nodes[[238]]
#> [1] root * 
#> 
#> $nodes[[239]]
#> [1] root * 
#> 
#> $nodes[[240]]
#> [1] root * 
#> 
#> $nodes[[241]]
#> [1] root * 
#> 
#> $nodes[[242]]
#> [1] root * 
#> 
#> $nodes[[243]]
#> [1] root * 
#> 
#> $nodes[[244]]
#> [1] root * 
#> 
#> $nodes[[245]]
#> [1] root * 
#> 
#> $nodes[[246]]
#> [1] root * 
#> 
#> $nodes[[247]]
#> [1] root * 
#> 
#> $nodes[[248]]
#> [1] root * 
#> 
#> $nodes[[249]]
#> [1] root * 
#> 
#> $nodes[[250]]
#> [1] root * 
#> 
#> $nodes[[251]]
#> [1] root * 
#> 
#> $nodes[[252]]
#> [1] root * 
#> 
#> $nodes[[253]]
#> [1] root * 
#> 
#> $nodes[[254]]
#> [1] root * 
#> 
#> $nodes[[255]]
#> [1] root * 
#> 
#> $nodes[[256]]
#> [1] root * 
#> 
#> $nodes[[257]]
#> [1] root * 
#> 
#> $nodes[[258]]
#> [1] root * 
#> 
#> $nodes[[259]]
#> [1] root * 
#> 
#> $nodes[[260]]
#> [1] root * 
#> 
#> $nodes[[261]]
#> [1] root * 
#> 
#> $nodes[[262]]
#> [1] root * 
#> 
#> $nodes[[263]]
#> [1] root * 
#> 
#> $nodes[[264]]
#> [1] root * 
#> 
#> $nodes[[265]]
#> [1] root * 
#> 
#> $nodes[[266]]
#> [1] root * 
#> 
#> $nodes[[267]]
#> [1] root * 
#> 
#> $nodes[[268]]
#> [1] root * 
#> 
#> $nodes[[269]]
#> [1] root * 
#> 
#> $nodes[[270]]
#> [1] root * 
#> 
#> $nodes[[271]]
#> [1] root * 
#> 
#> $nodes[[272]]
#> [1] root * 
#> 
#> $nodes[[273]]
#> [1] root * 
#> 
#> $nodes[[274]]
#> [1] root * 
#> 
#> $nodes[[275]]
#> [1] root * 
#> 
#> $nodes[[276]]
#> [1] root * 
#> 
#> $nodes[[277]]
#> [1] root * 
#> 
#> $nodes[[278]]
#> [1] root * 
#> 
#> $nodes[[279]]
#> [1] root * 
#> 
#> $nodes[[280]]
#> [1] root * 
#> 
#> $nodes[[281]]
#> [1] root * 
#> 
#> $nodes[[282]]
#> [1] root * 
#> 
#> $nodes[[283]]
#> [1] root * 
#> 
#> $nodes[[284]]
#> [1] root * 
#> 
#> $nodes[[285]]
#> [1] root * 
#> 
#> $nodes[[286]]
#> [1] root * 
#> 
#> $nodes[[287]]
#> [1] root * 
#> 
#> $nodes[[288]]
#> [1] root * 
#> 
#> $nodes[[289]]
#> [1] root * 
#> 
#> $nodes[[290]]
#> [1] root * 
#> 
#> $nodes[[291]]
#> [1] root * 
#> 
#> $nodes[[292]]
#> [1] root * 
#> 
#> $nodes[[293]]
#> [1] root * 
#> 
#> $nodes[[294]]
#> [1] root * 
#> 
#> $nodes[[295]]
#> [1] root * 
#> 
#> $nodes[[296]]
#> [1] root * 
#> 
#> $nodes[[297]]
#> [1] root * 
#> 
#> $nodes[[298]]
#> [1] root * 
#> 
#> $nodes[[299]]
#> [1] root * 
#> 
#> $nodes[[300]]
#> [1] root * 
#> 
#> $nodes[[301]]
#> [1] root * 
#> 
#> $nodes[[302]]
#> [1] root * 
#> 
#> $nodes[[303]]
#> [1] root * 
#> 
#> $nodes[[304]]
#> [1] root * 
#> 
#> $nodes[[305]]
#> [1] root * 
#> 
#> $nodes[[306]]
#> [1] root * 
#> 
#> $nodes[[307]]
#> [1] root * 
#> 
#> $nodes[[308]]
#> [1] root * 
#> 
#> $nodes[[309]]
#> [1] root * 
#> 
#> $nodes[[310]]
#> [1] root * 
#> 
#> $nodes[[311]]
#> [1] root * 
#> 
#> $nodes[[312]]
#> [1] root * 
#> 
#> $nodes[[313]]
#> [1] root * 
#> 
#> $nodes[[314]]
#> [1] root * 
#> 
#> $nodes[[315]]
#> [1] root * 
#> 
#> $nodes[[316]]
#> [1] root * 
#> 
#> $nodes[[317]]
#> [1] root * 
#> 
#> $nodes[[318]]
#> [1] root * 
#> 
#> $nodes[[319]]
#> [1] root * 
#> 
#> $nodes[[320]]
#> [1] root * 
#> 
#> $nodes[[321]]
#> [1] root * 
#> 
#> $nodes[[322]]
#> [1] root * 
#> 
#> $nodes[[323]]
#> [1] root * 
#> 
#> $nodes[[324]]
#> [1] root * 
#> 
#> $nodes[[325]]
#> [1] root * 
#> 
#> $nodes[[326]]
#> [1] root * 
#> 
#> $nodes[[327]]
#> [1] root * 
#> 
#> $nodes[[328]]
#> [1] root * 
#> 
#> $nodes[[329]]
#> [1] root * 
#> 
#> $nodes[[330]]
#> [1] root * 
#> 
#> $nodes[[331]]
#> [1] root * 
#> 
#> $nodes[[332]]
#> [1] root * 
#> 
#> $nodes[[333]]
#> [1] root * 
#> 
#> $nodes[[334]]
#> [1] root * 
#> 
#> $nodes[[335]]
#> [1] root * 
#> 
#> $nodes[[336]]
#> [1] root * 
#> 
#> $nodes[[337]]
#> [1] root * 
#> 
#> $nodes[[338]]
#> [1] root * 
#> 
#> $nodes[[339]]
#> [1] root * 
#> 
#> $nodes[[340]]
#> [1] root * 
#> 
#> $nodes[[341]]
#> [1] root * 
#> 
#> $nodes[[342]]
#> [1] root * 
#> 
#> $nodes[[343]]
#> [1] root * 
#> 
#> $nodes[[344]]
#> [1] root * 
#> 
#> $nodes[[345]]
#> [1] root * 
#> 
#> $nodes[[346]]
#> [1] root * 
#> 
#> $nodes[[347]]
#> [1] root * 
#> 
#> $nodes[[348]]
#> [1] root * 
#> 
#> $nodes[[349]]
#> [1] root * 
#> 
#> $nodes[[350]]
#> [1] root * 
#> 
#> $nodes[[351]]
#> [1] root * 
#> 
#> $nodes[[352]]
#> [1] root * 
#> 
#> $nodes[[353]]
#> [1] root * 
#> 
#> $nodes[[354]]
#> [1] root * 
#> 
#> $nodes[[355]]
#> [1] root * 
#> 
#> $nodes[[356]]
#> [1] root * 
#> 
#> $nodes[[357]]
#> [1] root * 
#> 
#> $nodes[[358]]
#> [1] root * 
#> 
#> $nodes[[359]]
#> [1] root * 
#> 
#> $nodes[[360]]
#> [1] root * 
#> 
#> $nodes[[361]]
#> [1] root * 
#> 
#> $nodes[[362]]
#> [1] root * 
#> 
#> $nodes[[363]]
#> [1] root * 
#> 
#> $nodes[[364]]
#> [1] root * 
#> 
#> $nodes[[365]]
#> [1] root * 
#> 
#> $nodes[[366]]
#> [1] root * 
#> 
#> $nodes[[367]]
#> [1] root * 
#> 
#> $nodes[[368]]
#> [1] root * 
#> 
#> $nodes[[369]]
#> [1] root * 
#> 
#> $nodes[[370]]
#> [1] root * 
#> 
#> $nodes[[371]]
#> [1] root * 
#> 
#> $nodes[[372]]
#> [1] root * 
#> 
#> $nodes[[373]]
#> [1] root * 
#> 
#> $nodes[[374]]
#> [1] root * 
#> 
#> $nodes[[375]]
#> [1] root * 
#> 
#> $nodes[[376]]
#> [1] root * 
#> 
#> $nodes[[377]]
#> [1] root * 
#> 
#> $nodes[[378]]
#> [1] root * 
#> 
#> $nodes[[379]]
#> [1] root * 
#> 
#> $nodes[[380]]
#> [1] root * 
#> 
#> $nodes[[381]]
#> [1] root * 
#> 
#> $nodes[[382]]
#> [1] root * 
#> 
#> $nodes[[383]]
#> [1] root * 
#> 
#> $nodes[[384]]
#> [1] root * 
#> 
#> $nodes[[385]]
#> [1] root * 
#> 
#> $nodes[[386]]
#> [1] root * 
#> 
#> $nodes[[387]]
#> [1] root * 
#> 
#> $nodes[[388]]
#> [1] root * 
#> 
#> $nodes[[389]]
#> [1] root * 
#> 
#> $nodes[[390]]
#> [1] root * 
#> 
#> $nodes[[391]]
#> [1] root * 
#> 
#> $nodes[[392]]
#> [1] root * 
#> 
#> $nodes[[393]]
#> [1] root * 
#> 
#> $nodes[[394]]
#> [1] root * 
#> 
#> $nodes[[395]]
#> [1] root * 
#> 
#> $nodes[[396]]
#> [1] root * 
#> 
#> $nodes[[397]]
#> [1] root * 
#> 
#> $nodes[[398]]
#> [1] root * 
#> 
#> $nodes[[399]]
#> [1] root * 
#> 
#> $nodes[[400]]
#> [1] root * 
#> 
#> $nodes[[401]]
#> [1] root * 
#> 
#> $nodes[[402]]
#> [1] root * 
#> 
#> $nodes[[403]]
#> [1] root * 
#> 
#> $nodes[[404]]
#> [1] root * 
#> 
#> $nodes[[405]]
#> [1] root * 
#> 
#> $nodes[[406]]
#> [1] root * 
#> 
#> $nodes[[407]]
#> [1] root * 
#> 
#> $nodes[[408]]
#> [1] root * 
#> 
#> $nodes[[409]]
#> [1] root * 
#> 
#> $nodes[[410]]
#> [1] root * 
#> 
#> $nodes[[411]]
#> [1] root * 
#> 
#> $nodes[[412]]
#> [1] root * 
#> 
#> $nodes[[413]]
#> [1] root * 
#> 
#> $nodes[[414]]
#> [1] root * 
#> 
#> $nodes[[415]]
#> [1] root * 
#> 
#> $nodes[[416]]
#> [1] root * 
#> 
#> $nodes[[417]]
#> [1] root * 
#> 
#> $nodes[[418]]
#> [1] root * 
#> 
#> $nodes[[419]]
#> [1] root * 
#> 
#> $nodes[[420]]
#> [1] root * 
#> 
#> $nodes[[421]]
#> [1] root * 
#> 
#> $nodes[[422]]
#> [1] root * 
#> 
#> $nodes[[423]]
#> [1] root * 
#> 
#> $nodes[[424]]
#> [1] root * 
#> 
#> $nodes[[425]]
#> [1] root * 
#> 
#> $nodes[[426]]
#> [1] root * 
#> 
#> $nodes[[427]]
#> [1] root * 
#> 
#> $nodes[[428]]
#> [1] root * 
#> 
#> $nodes[[429]]
#> [1] root * 
#> 
#> $nodes[[430]]
#> [1] root * 
#> 
#> $nodes[[431]]
#> [1] root * 
#> 
#> $nodes[[432]]
#> [1] root * 
#> 
#> $nodes[[433]]
#> [1] root * 
#> 
#> $nodes[[434]]
#> [1] root * 
#> 
#> $nodes[[435]]
#> [1] root * 
#> 
#> $nodes[[436]]
#> [1] root * 
#> 
#> $nodes[[437]]
#> [1] root * 
#> 
#> $nodes[[438]]
#> [1] root * 
#> 
#> $nodes[[439]]
#> [1] root * 
#> 
#> $nodes[[440]]
#> [1] root * 
#> 
#> $nodes[[441]]
#> [1] root * 
#> 
#> $nodes[[442]]
#> [1] root * 
#> 
#> $nodes[[443]]
#> [1] root * 
#> 
#> $nodes[[444]]
#> [1] root * 
#> 
#> $nodes[[445]]
#> [1] root * 
#> 
#> $nodes[[446]]
#> [1] root * 
#> 
#> $nodes[[447]]
#> [1] root * 
#> 
#> $nodes[[448]]
#> [1] root * 
#> 
#> $nodes[[449]]
#> [1] root * 
#> 
#> $nodes[[450]]
#> [1] root * 
#> 
#> $nodes[[451]]
#> [1] root * 
#> 
#> $nodes[[452]]
#> [1] root * 
#> 
#> $nodes[[453]]
#> [1] root * 
#> 
#> $nodes[[454]]
#> [1] root * 
#> 
#> $nodes[[455]]
#> [1] root * 
#> 
#> $nodes[[456]]
#> [1] root * 
#> 
#> $nodes[[457]]
#> [1] root * 
#> 
#> $nodes[[458]]
#> [1] root * 
#> 
#> $nodes[[459]]
#> [1] root * 
#> 
#> $nodes[[460]]
#> [1] root * 
#> 
#> $nodes[[461]]
#> [1] root * 
#> 
#> $nodes[[462]]
#> [1] root * 
#> 
#> $nodes[[463]]
#> [1] root * 
#> 
#> $nodes[[464]]
#> [1] root * 
#> 
#> $nodes[[465]]
#> [1] root * 
#> 
#> $nodes[[466]]
#> [1] root * 
#> 
#> $nodes[[467]]
#> [1] root * 
#> 
#> $nodes[[468]]
#> [1] root * 
#> 
#> $nodes[[469]]
#> [1] root * 
#> 
#> $nodes[[470]]
#> [1] root * 
#> 
#> $nodes[[471]]
#> [1] root * 
#> 
#> $nodes[[472]]
#> [1] root * 
#> 
#> $nodes[[473]]
#> [1] root * 
#> 
#> $nodes[[474]]
#> [1] root * 
#> 
#> $nodes[[475]]
#> [1] root * 
#> 
#> $nodes[[476]]
#> [1] root * 
#> 
#> $nodes[[477]]
#> [1] root * 
#> 
#> $nodes[[478]]
#> [1] root * 
#> 
#> $nodes[[479]]
#> [1] root * 
#> 
#> $nodes[[480]]
#> [1] root * 
#> 
#> $nodes[[481]]
#> [1] root * 
#> 
#> $nodes[[482]]
#> [1] root * 
#> 
#> $nodes[[483]]
#> [1] root * 
#> 
#> $nodes[[484]]
#> [1] root * 
#> 
#> $nodes[[485]]
#> [1] root * 
#> 
#> $nodes[[486]]
#> [1] root * 
#> 
#> $nodes[[487]]
#> [1] root * 
#> 
#> $nodes[[488]]
#> [1] root * 
#> 
#> $nodes[[489]]
#> [1] root * 
#> 
#> $nodes[[490]]
#> [1] root * 
#> 
#> $nodes[[491]]
#> [1] root * 
#> 
#> $nodes[[492]]
#> [1] root * 
#> 
#> $nodes[[493]]
#> [1] root * 
#> 
#> $nodes[[494]]
#> [1] root * 
#> 
#> $nodes[[495]]
#> [1] root * 
#> 
#> $nodes[[496]]
#> [1] root * 
#> 
#> $nodes[[497]]
#> [1] root * 
#> 
#> $nodes[[498]]
#> [1] root * 
#> 
#> $nodes[[499]]
#> [1] root * 
#> 
#> $nodes[[500]]
#> [1] root * 
#> 
#> 
#> $data
#>     mpg am carb cyl  disp drat gear  hp  qsec vs    wt
#> 1  21.0  1    4   6 160.0 3.90    4 110 17.02  0 2.875
#> 2  21.4  0    1   6 258.0 3.08    3 110 19.44  1 3.215
#> 3  14.3  0    4   8 360.0 3.21    3 245 15.84  0 3.570
#> 4  22.8  0    2   4 140.8 3.92    4  95 22.90  1 3.150
#> 5  16.4  0    3   8 275.8 3.07    3 180 17.40  0 4.070
#> 6  17.3  0    3   8 275.8 3.07    3 180 17.60  0 3.730
#> 7  15.2  0    3   8 275.8 3.07    3 180 18.00  0 3.780
#> 8  10.4  0    4   8 472.0 2.93    3 205 17.98  0 5.250
#> 9  10.4  0    4   8 460.0 3.00    3 215 17.82  0 5.424
#> 10 14.7  0    4   8 440.0 3.23    3 230 17.42  0 5.345
#> 11 32.4  1    1   4  78.7 4.08    4  66 19.47  1 2.200
#> 12 30.4  1    2   4  75.7 4.93    4  52 18.52  1 1.615
#> 13 21.5  0    1   4 120.1 3.70    3  97 20.01  1 2.465
#> 14 15.5  0    2   8 318.0 2.76    3 150 16.87  0 3.520
#> 15 15.2  0    2   8 304.0 3.15    3 150 17.30  0 3.435
#> 16 13.3  0    4   8 350.0 3.73    3 245 15.41  0 3.840
#> 17 19.2  0    2   8 400.0 3.08    3 175 17.05  0 3.845
#> 18 27.3  1    1   4  79.0 4.08    4  66 18.90  1 1.935
#> 19 30.4  1    2   4  95.1 3.77    5 113 16.90  1 1.513
#> 20 15.8  1    4   8 351.0 4.22    5 264 14.50  0 3.170
#> 21 21.4  1    2   4 121.0 4.11    4 109 18.60  1 2.780
#> 
#> $weights
#> $weights[[1]]
#>  [1] 1 0 1 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 1 0
#> 
#> $weights[[2]]
#>  [1] 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0
#> 
#> $weights[[3]]
#>  [1] 0 0 0 0 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1
#> 
#> $weights[[4]]
#>  [1] 0 1 1 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1 0 1
#> 
#> $weights[[5]]
#>  [1] 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1
#> 
#> $weights[[6]]
#>  [1] 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 0
#> 
#> $weights[[7]]
#>  [1] 1 0 1 0 1 1 1 0 0 0 1 1 1 1 0 1 0 0 1 1 1
#> 
#> $weights[[8]]
#>  [1] 1 1 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1
#> 
#> $weights[[9]]
#>  [1] 0 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 0 1
#> 
#> $weights[[10]]
#>  [1] 0 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1 0 1 1 1 1
#> 
#> $weights[[11]]
#>  [1] 0 0 1 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 0 1 1
#> 
#> $weights[[12]]
#>  [1] 0 0 0 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 0 1
#> 
#> $weights[[13]]
#>  [1] 0 1 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 1 0 1 1
#> 
#> $weights[[14]]
#>  [1] 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 0 0 0
#> 
#> $weights[[15]]
#>  [1] 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 1 0
#> 
#> $weights[[16]]
#>  [1] 1 1 0 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 1 1 1
#> 
#> $weights[[17]]
#>  [1] 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 1 1 1 0 0 1
#> 
#> $weights[[18]]
#>  [1] 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 0 1 1
#> 
#> $weights[[19]]
#>  [1] 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1
#> 
#> $weights[[20]]
#>  [1] 0 0 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 1
#> 
#> $weights[[21]]
#>  [1] 0 1 0 1 1 0 0 1 1 0 1 1 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[22]]
#>  [1] 1 1 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0 1
#> 
#> $weights[[23]]
#>  [1] 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 0
#> 
#> $weights[[24]]
#>  [1] 0 0 1 1 1 0 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1
#> 
#> $weights[[25]]
#>  [1] 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 0 0 1 0 1
#> 
#> $weights[[26]]
#>  [1] 1 1 1 1 1 1 0 0 1 0 1 0 1 0 0 1 0 1 1 0 1
#> 
#> $weights[[27]]
#>  [1] 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1
#> 
#> $weights[[28]]
#>  [1] 0 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 0 1 0
#> 
#> $weights[[29]]
#>  [1] 0 1 1 0 1 1 0 0 1 1 1 0 0 0 1 1 0 1 1 1 1
#> 
#> $weights[[30]]
#>  [1] 0 1 1 1 0 1 1 1 0 0 1 0 0 1 0 1 0 1 1 1 1
#> 
#> $weights[[31]]
#>  [1] 0 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 1 1 1 1 0
#> 
#> $weights[[32]]
#>  [1] 1 0 0 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 1
#> 
#> $weights[[33]]
#>  [1] 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 1 1 1
#> 
#> $weights[[34]]
#>  [1] 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 0 0 1 0 0 0
#> 
#> $weights[[35]]
#>  [1] 1 1 0 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 0 1 0
#> 
#> $weights[[36]]
#>  [1] 1 1 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1 0 1 0 1
#> 
#> $weights[[37]]
#>  [1] 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 1 1
#> 
#> $weights[[38]]
#>  [1] 1 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 0
#> 
#> $weights[[39]]
#>  [1] 1 0 0 0 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 1 1
#> 
#> $weights[[40]]
#>  [1] 1 0 0 0 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 0
#> 
#> $weights[[41]]
#>  [1] 0 1 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1 1 1 0 0
#> 
#> $weights[[42]]
#>  [1] 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1
#> 
#> $weights[[43]]
#>  [1] 0 0 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 0 1
#> 
#> $weights[[44]]
#>  [1] 1 0 0 0 0 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 0
#> 
#> $weights[[45]]
#>  [1] 1 0 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0
#> 
#> $weights[[46]]
#>  [1] 1 1 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 0
#> 
#> $weights[[47]]
#>  [1] 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 1 0 1 1 1
#> 
#> $weights[[48]]
#>  [1] 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1
#> 
#> $weights[[49]]
#>  [1] 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1
#> 
#> $weights[[50]]
#>  [1] 0 0 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 1 1 1
#> 
#> $weights[[51]]
#>  [1] 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 1 0 1 0 0
#> 
#> $weights[[52]]
#>  [1] 0 0 0 1 1 0 1 1 0 1 0 1 1 0 1 0 1 1 1 1 1
#> 
#> $weights[[53]]
#>  [1] 0 1 1 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 0
#> 
#> $weights[[54]]
#>  [1] 0 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0 1 0 0 1 1
#> 
#> $weights[[55]]
#>  [1] 0 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 1
#> 
#> $weights[[56]]
#>  [1] 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0
#> 
#> $weights[[57]]
#>  [1] 0 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1
#> 
#> $weights[[58]]
#>  [1] 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1
#> 
#> $weights[[59]]
#>  [1] 1 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1
#> 
#> $weights[[60]]
#>  [1] 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 0 1 1 1 1 0
#> 
#> $weights[[61]]
#>  [1] 1 1 0 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 1 1
#> 
#> $weights[[62]]
#>  [1] 0 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 1 1
#> 
#> $weights[[63]]
#>  [1] 0 0 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1
#> 
#> $weights[[64]]
#>  [1] 0 0 0 1 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[65]]
#>  [1] 1 0 1 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1
#> 
#> $weights[[66]]
#>  [1] 0 0 1 1 1 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1
#> 
#> $weights[[67]]
#>  [1] 1 0 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0
#> 
#> $weights[[68]]
#>  [1] 1 1 0 1 0 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1
#> 
#> $weights[[69]]
#>  [1] 1 1 0 0 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 1
#> 
#> $weights[[70]]
#>  [1] 1 1 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 0
#> 
#> $weights[[71]]
#>  [1] 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0 1 1
#> 
#> $weights[[72]]
#>  [1] 1 1 1 0 1 0 0 0 1 1 1 0 1 1 1 1 0 0 0 1 1
#> 
#> $weights[[73]]
#>  [1] 1 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 1 1 0 0 1
#> 
#> $weights[[74]]
#>  [1] 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0
#> 
#> $weights[[75]]
#>  [1] 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 0
#> 
#> $weights[[76]]
#>  [1] 1 0 0 1 1 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1
#> 
#> $weights[[77]]
#>  [1] 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 0 0
#> 
#> $weights[[78]]
#>  [1] 0 0 0 1 1 1 1 0 1 1 1 1 0 0 1 1 0 1 1 0 1
#> 
#> $weights[[79]]
#>  [1] 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 0 1 0 1 1
#> 
#> $weights[[80]]
#>  [1] 0 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0
#> 
#> $weights[[81]]
#>  [1] 1 0 0 1 1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 1 1
#> 
#> $weights[[82]]
#>  [1] 1 1 0 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1
#> 
#> $weights[[83]]
#>  [1] 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1
#> 
#> $weights[[84]]
#>  [1] 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0
#> 
#> $weights[[85]]
#>  [1] 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 0 1
#> 
#> $weights[[86]]
#>  [1] 1 1 0 0 0 1 0 1 1 0 1 1 0 0 1 1 1 1 1 0 1
#> 
#> $weights[[87]]
#>  [1] 1 1 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 0 1 0 0
#> 
#> $weights[[88]]
#>  [1] 1 1 1 1 0 0 0 1 0 0 1 0 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[89]]
#>  [1] 0 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0
#> 
#> $weights[[90]]
#>  [1] 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 0 0 1 1 1 1
#> 
#> $weights[[91]]
#>  [1] 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 1 1 0 1 0 0
#> 
#> $weights[[92]]
#>  [1] 1 1 0 1 0 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 0
#> 
#> $weights[[93]]
#>  [1] 1 1 0 1 1 1 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1
#> 
#> $weights[[94]]
#>  [1] 1 1 1 0 0 1 0 1 1 1 1 1 0 1 0 0 1 0 0 1 1
#> 
#> $weights[[95]]
#>  [1] 0 0 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1
#> 
#> $weights[[96]]
#>  [1] 1 0 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 0 1 1
#> 
#> $weights[[97]]
#>  [1] 0 1 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[98]]
#>  [1] 0 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0
#> 
#> $weights[[99]]
#>  [1] 1 0 1 1 1 0 1 1 1 0 1 1 0 1 1 0 0 0 0 1 1
#> 
#> $weights[[100]]
#>  [1] 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1
#> 
#> $weights[[101]]
#>  [1] 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1 0 1
#> 
#> $weights[[102]]
#>  [1] 0 0 0 1 1 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0 1
#> 
#> $weights[[103]]
#>  [1] 1 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[104]]
#>  [1] 1 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 1 1
#> 
#> $weights[[105]]
#>  [1] 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 0 0 1
#> 
#> $weights[[106]]
#>  [1] 1 1 1 1 1 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 1
#> 
#> $weights[[107]]
#>  [1] 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0
#> 
#> $weights[[108]]
#>  [1] 1 0 1 0 1 1 1 0 1 0 0 0 1 0 1 1 1 0 1 1 1
#> 
#> $weights[[109]]
#>  [1] 1 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 0 1
#> 
#> $weights[[110]]
#>  [1] 1 1 1 0 1 0 1 0 0 1 1 1 1 1 0 1 0 0 1 0 1
#> 
#> $weights[[111]]
#>  [1] 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 0
#> 
#> $weights[[112]]
#>  [1] 0 1 1 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0
#> 
#> $weights[[113]]
#>  [1] 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1 1 1 0 0 1 1
#> 
#> $weights[[114]]
#>  [1] 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 1 0 0
#> 
#> $weights[[115]]
#>  [1] 0 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1
#> 
#> $weights[[116]]
#>  [1] 0 0 1 0 1 0 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1
#> 
#> $weights[[117]]
#>  [1] 0 1 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0
#> 
#> $weights[[118]]
#>  [1] 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 1 0 0 0
#> 
#> $weights[[119]]
#>  [1] 1 1 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1
#> 
#> $weights[[120]]
#>  [1] 1 0 0 1 0 1 0 1 1 1 1 0 0 0 1 1 0 1 1 1 1
#> 
#> $weights[[121]]
#>  [1] 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 1
#> 
#> $weights[[122]]
#>  [1] 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1
#> 
#> $weights[[123]]
#>  [1] 0 1 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 1 0 1 1
#> 
#> $weights[[124]]
#>  [1] 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1
#> 
#> $weights[[125]]
#>  [1] 0 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1 1 0 0
#> 
#> $weights[[126]]
#>  [1] 1 0 0 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 1
#> 
#> $weights[[127]]
#>  [1] 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0
#> 
#> $weights[[128]]
#>  [1] 1 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 0
#> 
#> $weights[[129]]
#>  [1] 1 1 1 1 0 1 0 1 1 0 0 0 1 1 0 0 1 1 1 0 1
#> 
#> $weights[[130]]
#>  [1] 0 1 0 0 0 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0
#> 
#> $weights[[131]]
#>  [1] 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 1 1 0 0
#> 
#> $weights[[132]]
#>  [1] 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 1
#> 
#> $weights[[133]]
#>  [1] 1 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 0 1 0 1 1
#> 
#> $weights[[134]]
#>  [1] 0 1 0 0 0 1 1 1 1 0 1 0 1 1 0 1 1 1 0 1 1
#> 
#> $weights[[135]]
#>  [1] 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1
#> 
#> $weights[[136]]
#>  [1] 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0
#> 
#> $weights[[137]]
#>  [1] 0 0 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0
#> 
#> $weights[[138]]
#>  [1] 1 1 0 1 1 0 0 1 0 0 1 0 1 0 1 0 1 1 1 1 1
#> 
#> $weights[[139]]
#>  [1] 0 0 1 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 1 0 1
#> 
#> $weights[[140]]
#>  [1] 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1
#> 
#> $weights[[141]]
#>  [1] 1 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 1
#> 
#> $weights[[142]]
#>  [1] 0 0 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[143]]
#>  [1] 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 1
#> 
#> $weights[[144]]
#>  [1] 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0
#> 
#> $weights[[145]]
#>  [1] 1 1 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 0
#> 
#> $weights[[146]]
#>  [1] 1 0 1 1 0 1 0 0 1 1 1 1 1 0 0 1 1 0 1 1 0
#> 
#> $weights[[147]]
#>  [1] 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[148]]
#>  [1] 0 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 1
#> 
#> $weights[[149]]
#>  [1] 1 0 1 1 1 1 1 1 0 1 0 1 0 0 1 0 1 0 0 1 1
#> 
#> $weights[[150]]
#>  [1] 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1
#> 
#> $weights[[151]]
#>  [1] 1 1 0 0 1 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0
#> 
#> $weights[[152]]
#>  [1] 1 0 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0
#> 
#> $weights[[153]]
#>  [1] 1 1 0 1 1 1 0 1 1 1 1 0 1 0 0 1 0 0 1 1 0
#> 
#> $weights[[154]]
#>  [1] 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 1 0 0 0
#> 
#> $weights[[155]]
#>  [1] 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 1
#> 
#> $weights[[156]]
#>  [1] 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1
#> 
#> $weights[[157]]
#>  [1] 1 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0
#> 
#> $weights[[158]]
#>  [1] 1 1 0 1 0 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 0
#> 
#> $weights[[159]]
#>  [1] 1 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 0 1
#> 
#> $weights[[160]]
#>  [1] 1 1 0 0 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0
#> 
#> $weights[[161]]
#>  [1] 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 0 1 1 1 0 1
#> 
#> $weights[[162]]
#>  [1] 1 0 1 0 1 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1
#> 
#> $weights[[163]]
#>  [1] 0 0 1 1 0 1 1 0 1 1 0 1 0 1 1 1 1 1 1 0 0
#> 
#> $weights[[164]]
#>  [1] 1 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 0 1 1 1 1
#> 
#> $weights[[165]]
#>  [1] 0 1 1 0 1 1 0 1 1 1 1 0 1 0 0 0 1 0 1 1 1
#> 
#> $weights[[166]]
#>  [1] 0 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1 0
#> 
#> $weights[[167]]
#>  [1] 0 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 1 1
#> 
#> $weights[[168]]
#>  [1] 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 1 1
#> 
#> $weights[[169]]
#>  [1] 1 1 0 0 0 1 1 0 1 1 1 1 1 1 0 1 0 1 0 1 0
#> 
#> $weights[[170]]
#>  [1] 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0
#> 
#> $weights[[171]]
#>  [1] 0 0 1 1 0 1 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0
#> 
#> $weights[[172]]
#>  [1] 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[173]]
#>  [1] 1 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1
#> 
#> $weights[[174]]
#>  [1] 0 1 1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 0
#> 
#> $weights[[175]]
#>  [1] 0 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0
#> 
#> $weights[[176]]
#>  [1] 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1
#> 
#> $weights[[177]]
#>  [1] 1 0 0 0 0 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[178]]
#>  [1] 1 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 0 1 0 1 1
#> 
#> $weights[[179]]
#>  [1] 1 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0
#> 
#> $weights[[180]]
#>  [1] 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 0 0 1
#> 
#> $weights[[181]]
#>  [1] 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 1 1
#> 
#> $weights[[182]]
#>  [1] 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 0 1 1
#> 
#> $weights[[183]]
#>  [1] 1 0 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1
#> 
#> $weights[[184]]
#>  [1] 0 0 0 0 1 1 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1
#> 
#> $weights[[185]]
#>  [1] 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 1 1 0 1 1 0
#> 
#> $weights[[186]]
#>  [1] 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 1 0
#> 
#> $weights[[187]]
#>  [1] 1 1 0 1 1 0 1 0 1 0 1 0 0 1 1 1 0 0 1 1 1
#> 
#> $weights[[188]]
#>  [1] 0 1 1 1 1 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1
#> 
#> $weights[[189]]
#>  [1] 0 1 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 1
#> 
#> $weights[[190]]
#>  [1] 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[191]]
#>  [1] 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1 0
#> 
#> $weights[[192]]
#>  [1] 1 0 0 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0
#> 
#> $weights[[193]]
#>  [1] 0 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1
#> 
#> $weights[[194]]
#>  [1] 1 1 0 1 1 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 1
#> 
#> $weights[[195]]
#>  [1] 1 0 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[196]]
#>  [1] 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 1 1
#> 
#> $weights[[197]]
#>  [1] 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1
#> 
#> $weights[[198]]
#>  [1] 0 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 0 1 1 1 1
#> 
#> $weights[[199]]
#>  [1] 0 1 1 1 0 1 0 1 1 0 1 0 1 1 0 0 1 1 1 1 0
#> 
#> $weights[[200]]
#>  [1] 0 1 0 1 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1
#> 
#> $weights[[201]]
#>  [1] 1 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 0 1 1 0 1
#> 
#> $weights[[202]]
#>  [1] 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1
#> 
#> $weights[[203]]
#>  [1] 1 0 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 0
#> 
#> $weights[[204]]
#>  [1] 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0
#> 
#> $weights[[205]]
#>  [1] 0 1 0 0 1 1 0 0 1 1 1 0 1 0 1 1 1 1 1 0 1
#> 
#> $weights[[206]]
#>  [1] 0 0 1 1 0 1 0 0 1 1 1 0 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[207]]
#>  [1] 1 1 0 0 1 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1
#> 
#> $weights[[208]]
#>  [1] 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 0 1 0 0
#> 
#> $weights[[209]]
#>  [1] 1 1 1 1 1 1 1 0 1 0 0 1 1 0 0 0 1 0 1 1 0
#> 
#> $weights[[210]]
#>  [1] 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 1 1 0 1
#> 
#> $weights[[211]]
#>  [1] 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 1 0
#> 
#> $weights[[212]]
#>  [1] 0 1 0 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 1 0
#> 
#> $weights[[213]]
#>  [1] 0 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1
#> 
#> $weights[[214]]
#>  [1] 0 0 1 0 1 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1
#> 
#> $weights[[215]]
#>  [1] 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1
#> 
#> $weights[[216]]
#>  [1] 1 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 1 1 0 1 1
#> 
#> $weights[[217]]
#>  [1] 0 0 1 0 0 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1
#> 
#> $weights[[218]]
#>  [1] 0 1 0 1 1 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0
#> 
#> $weights[[219]]
#>  [1] 1 0 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1 0 1 1 0
#> 
#> $weights[[220]]
#>  [1] 1 0 1 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 0 1 1
#> 
#> $weights[[221]]
#>  [1] 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 1 0
#> 
#> $weights[[222]]
#>  [1] 0 0 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1
#> 
#> $weights[[223]]
#>  [1] 1 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 1 1 1
#> 
#> $weights[[224]]
#>  [1] 1 1 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 1 1 0
#> 
#> $weights[[225]]
#>  [1] 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0
#> 
#> $weights[[226]]
#>  [1] 0 0 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0
#> 
#> $weights[[227]]
#>  [1] 0 1 0 1 0 1 0 1 1 1 1 1 1 0 1 1 1 0 0 1 0
#> 
#> $weights[[228]]
#>  [1] 1 0 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 0 1
#> 
#> $weights[[229]]
#>  [1] 1 1 1 1 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1
#> 
#> $weights[[230]]
#>  [1] 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1
#> 
#> $weights[[231]]
#>  [1] 1 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1 0
#> 
#> $weights[[232]]
#>  [1] 0 0 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 1 1
#> 
#> $weights[[233]]
#>  [1] 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1
#> 
#> $weights[[234]]
#>  [1] 0 0 0 0 0 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1
#> 
#> $weights[[235]]
#>  [1] 1 1 1 0 0 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 0
#> 
#> $weights[[236]]
#>  [1] 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 0
#> 
#> $weights[[237]]
#>  [1] 1 1 1 0 0 1 1 1 1 0 1 1 0 1 1 0 1 1 0 0 0
#> 
#> $weights[[238]]
#>  [1] 0 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 1 0 1 0 1
#> 
#> $weights[[239]]
#>  [1] 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1
#> 
#> $weights[[240]]
#>  [1] 0 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1
#> 
#> $weights[[241]]
#>  [1] 0 0 1 1 0 1 1 1 1 1 1 0 1 0 0 1 0 0 1 1 1
#> 
#> $weights[[242]]
#>  [1] 1 1 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 0 1 1 1
#> 
#> $weights[[243]]
#>  [1] 1 1 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1 1 1 0
#> 
#> $weights[[244]]
#>  [1] 1 1 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 1 0 0 0
#> 
#> $weights[[245]]
#>  [1] 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1
#> 
#> $weights[[246]]
#>  [1] 0 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0
#> 
#> $weights[[247]]
#>  [1] 1 0 1 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 0 0
#> 
#> $weights[[248]]
#>  [1] 1 0 1 1 0 1 1 1 0 1 0 1 1 0 1 0 1 0 1 0 1
#> 
#> $weights[[249]]
#>  [1] 1 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0
#> 
#> $weights[[250]]
#>  [1] 0 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 0 1 1
#> 
#> $weights[[251]]
#>  [1] 0 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[252]]
#>  [1] 1 1 1 1 0 1 1 0 1 1 1 0 1 1 0 1 0 1 0 0 0
#> 
#> $weights[[253]]
#>  [1] 0 1 0 0 1 1 0 1 1 1 0 0 0 1 1 1 0 1 1 1 1
#> 
#> $weights[[254]]
#>  [1] 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0
#> 
#> $weights[[255]]
#>  [1] 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 1
#> 
#> $weights[[256]]
#>  [1] 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 1 0 1 0 1 0
#> 
#> $weights[[257]]
#>  [1] 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 1 1 1
#> 
#> $weights[[258]]
#>  [1] 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 0 0 1 1
#> 
#> $weights[[259]]
#>  [1] 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0
#> 
#> $weights[[260]]
#>  [1] 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0
#> 
#> $weights[[261]]
#>  [1] 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 0 1 1 0
#> 
#> $weights[[262]]
#>  [1] 1 0 0 1 1 0 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1
#> 
#> $weights[[263]]
#>  [1] 1 1 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1
#> 
#> $weights[[264]]
#>  [1] 1 0 0 0 1 1 0 0 1 0 1 1 0 1 1 1 1 0 1 1 1
#> 
#> $weights[[265]]
#>  [1] 0 0 1 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
#> 
#> $weights[[266]]
#>  [1] 1 1 1 0 1 1 1 0 0 0 1 0 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[267]]
#>  [1] 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 1 0 0
#> 
#> $weights[[268]]
#>  [1] 0 0 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1
#> 
#> $weights[[269]]
#>  [1] 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1 0 0
#> 
#> $weights[[270]]
#>  [1] 1 0 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1
#> 
#> $weights[[271]]
#>  [1] 0 0 1 1 1 1 1 1 1 0 0 1 1 1 0 1 1 0 0 0 1
#> 
#> $weights[[272]]
#>  [1] 1 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 0 1 1 1
#> 
#> $weights[[273]]
#>  [1] 0 1 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 0 1
#> 
#> $weights[[274]]
#>  [1] 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0
#> 
#> $weights[[275]]
#>  [1] 0 1 1 1 0 1 0 1 0 0 1 1 1 0 1 0 1 1 1 0 1
#> 
#> $weights[[276]]
#>  [1] 1 0 1 1 1 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 0
#> 
#> $weights[[277]]
#>  [1] 0 1 1 0 0 1 0 1 1 1 1 1 1 0 1 1 1 1 0 0 0
#> 
#> $weights[[278]]
#>  [1] 1 0 1 0 0 1 1 1 0 1 0 0 1 1 1 1 1 1 0 1 0
#> 
#> $weights[[279]]
#>  [1] 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0
#> 
#> $weights[[280]]
#>  [1] 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1
#> 
#> $weights[[281]]
#>  [1] 1 1 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0 0 0 1 0
#> 
#> $weights[[282]]
#>  [1] 1 0 1 1 0 1 0 0 1 1 0 0 1 1 1 1 1 0 0 1 1
#> 
#> $weights[[283]]
#>  [1] 1 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0
#> 
#> $weights[[284]]
#>  [1] 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1
#> 
#> $weights[[285]]
#>  [1] 1 1 1 0 1 1 1 0 0 0 1 0 1 0 0 1 1 0 1 1 1
#> 
#> $weights[[286]]
#>  [1] 1 1 0 1 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 0 1
#> 
#> $weights[[287]]
#>  [1] 0 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 1
#> 
#> $weights[[288]]
#>  [1] 1 1 1 1 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0
#> 
#> $weights[[289]]
#>  [1] 0 0 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1
#> 
#> $weights[[290]]
#>  [1] 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 0 1 0 1
#> 
#> $weights[[291]]
#>  [1] 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0 1
#> 
#> $weights[[292]]
#>  [1] 1 1 0 1 0 0 0 1 1 1 1 1 1 0 1 1 0 1 0 1 0
#> 
#> $weights[[293]]
#>  [1] 1 0 0 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 1 1
#> 
#> $weights[[294]]
#>  [1] 1 1 1 1 1 1 1 0 0 1 0 1 0 0 1 0 1 1 0 1 0
#> 
#> $weights[[295]]
#>  [1] 0 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1
#> 
#> $weights[[296]]
#>  [1] 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 0 0 1 1
#> 
#> $weights[[297]]
#>  [1] 1 0 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[298]]
#>  [1] 1 0 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 1 1
#> 
#> $weights[[299]]
#>  [1] 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0
#> 
#> $weights[[300]]
#>  [1] 0 1 1 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 1
#> 
#> $weights[[301]]
#>  [1] 1 0 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[302]]
#>  [1] 1 1 0 1 0 1 1 1 0 0 1 0 1 0 0 1 0 1 1 1 1
#> 
#> $weights[[303]]
#>  [1] 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0
#> 
#> $weights[[304]]
#>  [1] 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 1 1
#> 
#> $weights[[305]]
#>  [1] 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0
#> 
#> $weights[[306]]
#>  [1] 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 0 0
#> 
#> $weights[[307]]
#>  [1] 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 0 0 0 0 1
#> 
#> $weights[[308]]
#>  [1] 0 1 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 1 1 0
#> 
#> $weights[[309]]
#>  [1] 1 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1
#> 
#> $weights[[310]]
#>  [1] 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1
#> 
#> $weights[[311]]
#>  [1] 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 0 0 1 0 1
#> 
#> $weights[[312]]
#>  [1] 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 0 1 0 0 1
#> 
#> $weights[[313]]
#>  [1] 0 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0
#> 
#> $weights[[314]]
#>  [1] 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0
#> 
#> $weights[[315]]
#>  [1] 1 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0
#> 
#> $weights[[316]]
#>  [1] 1 1 0 1 0 1 0 1 0 1 1 1 0 1 0 1 1 1 0 0 1
#> 
#> $weights[[317]]
#>  [1] 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 0 0 0 0
#> 
#> $weights[[318]]
#>  [1] 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 1 0 1 1 1
#> 
#> $weights[[319]]
#>  [1] 1 0 1 0 0 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 0
#> 
#> $weights[[320]]
#>  [1] 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 1 1 1 0 0
#> 
#> $weights[[321]]
#>  [1] 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 0
#> 
#> $weights[[322]]
#>  [1] 0 1 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0
#> 
#> $weights[[323]]
#>  [1] 0 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[324]]
#>  [1] 0 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 1 1
#> 
#> $weights[[325]]
#>  [1] 1 1 1 1 0 1 1 0 1 1 0 0 0 1 1 1 0 0 1 1 0
#> 
#> $weights[[326]]
#>  [1] 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 1 1
#> 
#> $weights[[327]]
#>  [1] 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 0
#> 
#> $weights[[328]]
#>  [1] 1 0 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0
#> 
#> $weights[[329]]
#>  [1] 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 1 0 1 0
#> 
#> $weights[[330]]
#>  [1] 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 0
#> 
#> $weights[[331]]
#>  [1] 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1
#> 
#> $weights[[332]]
#>  [1] 1 1 1 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 0 1
#> 
#> $weights[[333]]
#>  [1] 0 1 1 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1
#> 
#> $weights[[334]]
#>  [1] 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 1 0 1 0
#> 
#> $weights[[335]]
#>  [1] 1 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 1
#> 
#> $weights[[336]]
#>  [1] 1 0 0 1 1 1 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1
#> 
#> $weights[[337]]
#>  [1] 1 0 1 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1
#> 
#> $weights[[338]]
#>  [1] 1 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 0 1 1 1 0
#> 
#> $weights[[339]]
#>  [1] 1 0 0 1 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 0
#> 
#> $weights[[340]]
#>  [1] 1 1 0 0 1 1 0 0 1 0 0 1 0 1 1 0 1 1 1 1 1
#> 
#> $weights[[341]]
#>  [1] 0 0 1 1 1 0 1 0 1 1 0 1 1 0 0 1 1 1 0 1 1
#> 
#> $weights[[342]]
#>  [1] 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 0 0 1
#> 
#> $weights[[343]]
#>  [1] 1 0 1 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1 1 0 1
#> 
#> $weights[[344]]
#>  [1] 0 1 1 1 1 1 1 0 0 1 0 1 0 0 1 1 1 0 1 1 0
#> 
#> $weights[[345]]
#>  [1] 1 0 1 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 1 1 1
#> 
#> $weights[[346]]
#>  [1] 1 0 1 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 1
#> 
#> $weights[[347]]
#>  [1] 1 1 1 1 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 0 1
#> 
#> $weights[[348]]
#>  [1] 1 0 1 0 1 0 1 1 1 1 0 1 1 0 0 1 0 1 1 0 1
#> 
#> $weights[[349]]
#>  [1] 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1
#> 
#> $weights[[350]]
#>  [1] 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0
#> 
#> $weights[[351]]
#>  [1] 0 1 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 1 1 1 0
#> 
#> $weights[[352]]
#>  [1] 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 0
#> 
#> $weights[[353]]
#>  [1] 0 0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 0
#> 
#> $weights[[354]]
#>  [1] 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0
#> 
#> $weights[[355]]
#>  [1] 0 1 1 0 1 0 1 1 1 1 0 1 0 0 0 1 1 1 0 1 1
#> 
#> $weights[[356]]
#>  [1] 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[357]]
#>  [1] 1 1 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0
#> 
#> $weights[[358]]
#>  [1] 1 1 1 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 0
#> 
#> $weights[[359]]
#>  [1] 1 0 0 1 1 1 0 1 1 1 0 1 0 0 1 1 1 0 0 1 1
#> 
#> $weights[[360]]
#>  [1] 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 1 1 1 1
#> 
#> $weights[[361]]
#>  [1] 0 1 1 1 1 0 1 0 1 0 1 1 1 0 1 0 1 1 0 0 1
#> 
#> $weights[[362]]
#>  [1] 1 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 1 0
#> 
#> $weights[[363]]
#>  [1] 1 1 0 1 1 0 1 1 1 1 0 1 1 1 1 0 0 1 0 0 0
#> 
#> $weights[[364]]
#>  [1] 1 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0
#> 
#> $weights[[365]]
#>  [1] 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 1 1 0 1 0 1
#> 
#> $weights[[366]]
#>  [1] 1 1 1 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1 0 1 0
#> 
#> $weights[[367]]
#>  [1] 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 0 0 1 1
#> 
#> $weights[[368]]
#>  [1] 1 1 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 0 0
#> 
#> $weights[[369]]
#>  [1] 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 1 0 1 1 1 1
#> 
#> $weights[[370]]
#>  [1] 1 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 0 0
#> 
#> $weights[[371]]
#>  [1] 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 0 0 0 1
#> 
#> $weights[[372]]
#>  [1] 1 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1
#> 
#> $weights[[373]]
#>  [1] 1 0 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[374]]
#>  [1] 0 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1
#> 
#> $weights[[375]]
#>  [1] 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1
#> 
#> $weights[[376]]
#>  [1] 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 0 1
#> 
#> $weights[[377]]
#>  [1] 1 0 1 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 1 0
#> 
#> $weights[[378]]
#>  [1] 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 1 1 0
#> 
#> $weights[[379]]
#>  [1] 1 1 1 1 0 1 0 1 0 0 1 0 0 0 1 0 1 1 1 1 1
#> 
#> $weights[[380]]
#>  [1] 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1
#> 
#> $weights[[381]]
#>  [1] 0 1 0 0 1 1 1 0 1 1 0 1 1 0 1 1 0 0 1 1 1
#> 
#> $weights[[382]]
#>  [1] 0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 1 0
#> 
#> $weights[[383]]
#>  [1] 0 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1
#> 
#> $weights[[384]]
#>  [1] 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[385]]
#>  [1] 1 1 0 1 1 1 0 1 0 1 0 0 0 1 1 0 1 0 1 1 1
#> 
#> $weights[[386]]
#>  [1] 1 0 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0
#> 
#> $weights[[387]]
#>  [1] 1 0 1 1 1 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 0
#> 
#> $weights[[388]]
#>  [1] 0 1 1 1 1 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0
#> 
#> $weights[[389]]
#>  [1] 1 0 1 1 1 0 1 1 1 1 1 0 1 0 0 1 0 1 1 0 0
#> 
#> $weights[[390]]
#>  [1] 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1
#> 
#> $weights[[391]]
#>  [1] 1 0 1 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1
#> 
#> $weights[[392]]
#>  [1] 1 1 0 0 1 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 0
#> 
#> $weights[[393]]
#>  [1] 1 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 0 1
#> 
#> $weights[[394]]
#>  [1] 0 1 1 1 1 1 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1
#> 
#> $weights[[395]]
#>  [1] 0 1 1 1 0 0 1 0 1 0 1 1 1 1 1 1 0 0 0 1 1
#> 
#> $weights[[396]]
#>  [1] 1 1 0 0 0 1 0 1 0 1 1 1 0 1 1 1 1 0 0 1 1
#> 
#> $weights[[397]]
#>  [1] 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1
#> 
#> $weights[[398]]
#>  [1] 1 1 1 1 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 0
#> 
#> $weights[[399]]
#>  [1] 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0
#> 
#> $weights[[400]]
#>  [1] 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 0 1 0 1 0 0
#> 
#> $weights[[401]]
#>  [1] 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 1 1 1 0 0 1
#> 
#> $weights[[402]]
#>  [1] 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 1
#> 
#> $weights[[403]]
#>  [1] 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1
#> 
#> $weights[[404]]
#>  [1] 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[405]]
#>  [1] 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 1 0 0 1 1 0
#> 
#> $weights[[406]]
#>  [1] 0 1 1 1 0 0 1 0 1 1 0 1 0 1 0 1 1 1 1 0 1
#> 
#> $weights[[407]]
#>  [1] 0 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 1 1 1 0
#> 
#> $weights[[408]]
#>  [1] 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 0 0
#> 
#> $weights[[409]]
#>  [1] 0 1 1 1 1 1 1 0 0 0 0 1 0 1 1 1 0 1 0 1 1
#> 
#> $weights[[410]]
#>  [1] 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 1 1 1 1 0 1
#> 
#> $weights[[411]]
#>  [1] 0 1 0 0 1 1 0 1 0 1 1 0 1 1 1 1 1 1 1 0 0
#> 
#> $weights[[412]]
#>  [1] 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 1 1
#> 
#> $weights[[413]]
#>  [1] 1 1 1 1 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1
#> 
#> $weights[[414]]
#>  [1] 0 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 1 1 1 0
#> 
#> $weights[[415]]
#>  [1] 1 0 1 0 0 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0
#> 
#> $weights[[416]]
#>  [1] 0 1 0 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0
#> 
#> $weights[[417]]
#>  [1] 0 0 1 0 1 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1
#> 
#> $weights[[418]]
#>  [1] 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 0 0 1 0 0
#> 
#> $weights[[419]]
#>  [1] 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1
#> 
#> $weights[[420]]
#>  [1] 1 1 0 1 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 1
#> 
#> $weights[[421]]
#>  [1] 1 1 0 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 1 0 0
#> 
#> $weights[[422]]
#>  [1] 1 1 1 1 1 1 0 1 1 0 1 0 1 0 1 1 0 0 1 0 0
#> 
#> $weights[[423]]
#>  [1] 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 1 1 0 0 1 1
#> 
#> $weights[[424]]
#>  [1] 1 0 0 0 1 1 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1
#> 
#> $weights[[425]]
#>  [1] 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 0 1 1 0 0
#> 
#> $weights[[426]]
#>  [1] 1 1 1 1 1 1 1 0 1 0 1 1 0 1 0 1 0 0 0 1 0
#> 
#> $weights[[427]]
#>  [1] 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1 0 1 0 1 1
#> 
#> $weights[[428]]
#>  [1] 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0
#> 
#> $weights[[429]]
#>  [1] 1 0 1 1 0 1 1 1 0 0 0 1 1 0 1 1 0 1 1 0 1
#> 
#> $weights[[430]]
#>  [1] 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 1
#> 
#> $weights[[431]]
#>  [1] 0 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 0 1 1
#> 
#> $weights[[432]]
#>  [1] 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1
#> 
#> $weights[[433]]
#>  [1] 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 0 0 0 1 1
#> 
#> $weights[[434]]
#>  [1] 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 0 1 1
#> 
#> $weights[[435]]
#>  [1] 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 0 0 1 1 1
#> 
#> $weights[[436]]
#>  [1] 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1 1 1
#> 
#> $weights[[437]]
#>  [1] 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1
#> 
#> $weights[[438]]
#>  [1] 0 0 1 0 0 1 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1
#> 
#> $weights[[439]]
#>  [1] 1 1 0 0 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0
#> 
#> $weights[[440]]
#>  [1] 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 0 1 0 1 1 0
#> 
#> $weights[[441]]
#>  [1] 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1
#> 
#> $weights[[442]]
#>  [1] 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 1 0 1 1 0
#> 
#> $weights[[443]]
#>  [1] 1 1 0 0 1 1 1 0 1 0 1 0 1 1 1 0 1 0 0 1 1
#> 
#> $weights[[444]]
#>  [1] 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 1 1 1 0
#> 
#> $weights[[445]]
#>  [1] 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 0 1 0 1
#> 
#> $weights[[446]]
#>  [1] 1 0 1 0 1 1 0 1 1 0 1 0 0 1 0 0 1 1 1 1 1
#> 
#> $weights[[447]]
#>  [1] 1 1 0 1 0 0 1 1 1 1 0 1 1 0 0 0 1 0 1 1 1
#> 
#> $weights[[448]]
#>  [1] 1 1 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 0 1 1 0
#> 
#> $weights[[449]]
#>  [1] 0 0 1 1 1 0 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1
#> 
#> $weights[[450]]
#>  [1] 0 1 1 0 0 0 0 1 1 0 0 1 1 1 1 1 0 1 1 1 1
#> 
#> $weights[[451]]
#>  [1] 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 0 0 1 0 0 0
#> 
#> $weights[[452]]
#>  [1] 0 0 1 1 0 0 1 1 0 1 1 1 1 1 1 1 0 1 0 1 0
#> 
#> $weights[[453]]
#>  [1] 1 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 1 1 1 1
#> 
#> $weights[[454]]
#>  [1] 1 0 0 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 0 0 1
#> 
#> $weights[[455]]
#>  [1] 0 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 0 0 1 1 0
#> 
#> $weights[[456]]
#>  [1] 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 1 0
#> 
#> $weights[[457]]
#>  [1] 1 1 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 0
#> 
#> $weights[[458]]
#>  [1] 1 1 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1 0 0 0 0
#> 
#> $weights[[459]]
#>  [1] 1 1 1 1 0 1 0 0 1 1 0 0 0 1 1 0 1 1 1 0 1
#> 
#> $weights[[460]]
#>  [1] 1 1 1 0 1 0 0 1 1 1 1 1 0 1 0 1 0 1 0 1 0
#> 
#> $weights[[461]]
#>  [1] 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 0 0 1 0
#> 
#> $weights[[462]]
#>  [1] 0 1 1 1 1 1 0 1 1 1 0 1 1 0 1 0 0 1 0 1 0
#> 
#> $weights[[463]]
#>  [1] 0 1 1 1 1 0 1 0 1 1 0 1 0 0 1 1 1 1 0 1 0
#> 
#> $weights[[464]]
#>  [1] 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 0 0 1 1 0 0
#> 
#> $weights[[465]]
#>  [1] 1 0 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 1 1 0 1
#> 
#> $weights[[466]]
#>  [1] 1 1 1 1 0 1 1 0 0 1 0 0 0 0 1 1 0 1 1 1 1
#> 
#> $weights[[467]]
#>  [1] 1 0 1 0 1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1
#> 
#> $weights[[468]]
#>  [1] 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1
#> 
#> $weights[[469]]
#>  [1] 1 1 1 1 0 0 0 1 0 0 1 1 1 1 1 0 1 0 1 1 0
#> 
#> $weights[[470]]
#>  [1] 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 1
#> 
#> $weights[[471]]
#>  [1] 0 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 0 1
#> 
#> $weights[[472]]
#>  [1] 1 1 0 1 1 0 1 1 0 0 1 1 1 0 1 0 0 0 1 1 1
#> 
#> $weights[[473]]
#>  [1] 0 0 1 0 1 0 1 1 0 1 0 0 1 1 1 1 1 1 0 1 1
#> 
#> $weights[[474]]
#>  [1] 1 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 1
#> 
#> $weights[[475]]
#>  [1] 1 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 1 0
#> 
#> $weights[[476]]
#>  [1] 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1
#> 
#> $weights[[477]]
#>  [1] 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 0 1 0 1 0 0
#> 
#> $weights[[478]]
#>  [1] 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1 0 0 1 1 1 0
#> 
#> $weights[[479]]
#>  [1] 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 0 0 0 0 1 0
#> 
#> $weights[[480]]
#>  [1] 1 0 0 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 0
#> 
#> $weights[[481]]
#>  [1] 0 1 1 1 1 1 0 0 1 1 0 1 0 0 1 1 1 1 0 1 0
#> 
#> $weights[[482]]
#>  [1] 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 1 1
#> 
#> $weights[[483]]
#>  [1] 1 0 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 0
#> 
#> $weights[[484]]
#>  [1] 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 1 1 1 1 1 1
#> 
#> $weights[[485]]
#>  [1] 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 0 1 1 1 1 0
#> 
#> $weights[[486]]
#>  [1] 0 0 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 0 1 0 0
#> 
#> $weights[[487]]
#>  [1] 1 1 1 1 0 1 1 0 0 0 0 1 0 1 1 1 1 0 1 0 1
#> 
#> $weights[[488]]
#>  [1] 0 1 0 0 1 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0
#> 
#> $weights[[489]]
#>  [1] 1 1 0 0 0 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1
#> 
#> $weights[[490]]
#>  [1] 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1
#> 
#> $weights[[491]]
#>  [1] 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1
#> 
#> $weights[[492]]
#>  [1] 0 0 0 0 1 0 1 1 1 1 1 1 1 1 0 1 0 1 1 0 1
#> 
#> $weights[[493]]
#>  [1] 1 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 1 1 1 1 0
#> 
#> $weights[[494]]
#>  [1] 1 0 1 1 0 1 1 1 1 0 1 1 0 0 1 1 0 0 1 0 1
#> 
#> $weights[[495]]
#>  [1] 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0
#> 
#> $weights[[496]]
#>  [1] 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 1
#> 
#> $weights[[497]]
#>  [1] 0 1 1 1 0 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1
#> 
#> $weights[[498]]
#>  [1] 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 0 0 1 0 1 0
#> 
#> $weights[[499]]
#>  [1] 1 0 1 0 0 0 1 1 1 1 1 1 1 0 1 1 0 0 0 1 1
#> 
#> $weights[[500]]
#>  [1] 1 1 1 0 0 0 1 0 0 1 1 1 0 1 1 1 0 1 1 0 1
#> 
#> 
#> $fitted
#>    idx (response)
#> 1    1       21.0
#> 2    2       21.4
#> 3    3       14.3
#> 4    4       22.8
#> 5    5       16.4
#> 6    6       17.3
#> 7    7       15.2
#> 8    8       10.4
#> 9    9       10.4
#> 10  10       14.7
#> 11  11       32.4
#> 12  12       30.4
#> 13  13       21.5
#> 14  14       15.5
#> 15  15       15.2
#> 16  16       13.3
#> 17  17       19.2
#> 18  18       27.3
#> 19  19       30.4
#> 20  20       15.8
#> 21  21       21.4
#> 
#> $terms
#> mpg ~ am + carb + cyl + disp + drat + gear + hp + qsec + vs + 
#>     wt
#> attr(,"variables")
#> list(mpg, am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)
#> attr(,"factors")
#>      am carb cyl disp drat gear hp qsec vs wt
#> mpg   0    0   0    0    0    0  0    0  0  0
#> am    1    0   0    0    0    0  0    0  0  0
#> carb  0    1   0    0    0    0  0    0  0  0
#> cyl   0    0   1    0    0    0  0    0  0  0
#> disp  0    0   0    1    0    0  0    0  0  0
#> drat  0    0   0    0    1    0  0    0  0  0
#> gear  0    0   0    0    0    1  0    0  0  0
#> hp    0    0   0    0    0    0  1    0  0  0
#> qsec  0    0   0    0    0    0  0    1  0  0
#> vs    0    0   0    0    0    0  0    0  1  0
#> wt    0    0   0    0    0    0  0    0  0  1
#> attr(,"term.labels")
#>  [1] "am"   "carb" "cyl"  "disp" "drat" "gear" "hp"   "qsec" "vs"   "wt"  
#> attr(,"order")
#>  [1] 1 1 1 1 1 1 1 1 1 1
#> attr(,"intercept")
#> [1] 1
#> attr(,"response")
#> [1] 1
#> attr(,"Formula_with_dot")
#> mpg ~ .
#> NULL
#> attr(,"Formula_without_dot")
#> mpg ~ am + carb + cyl + disp + drat + gear + hp + qsec + vs + 
#>     wt
#> NULL
#> attr(,"dot")
#> [1] "sequential"
#> 
#> $info
#> $info$call
#> partykit::cforest(formula = task$formula(), data = task$data(), 
#>     weights = self$.__enclos_env__$private$.get_weights(task), 
#>     control = control, perturb = perturb)
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
#> [1] 4
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
#> {
#>     FUN <- match.fun(FUN)
#>     if (!is.vector(X) || is.object(X)) 
#>         X <- as.list(X)
#>     .Internal(lapply(X, FUN))
#> }
#> <bytecode: 0x558b59eb2200>
#> <environment: namespace:base>
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
#> <bytecode: 0x558b6d4790d0>
#> <environment: 0x558b780f5af8>
#> 
#> $info$control$splitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x558b6d47b300>
#> <environment: 0x558b780f5bd8>
#> 
#> $info$control$svselectfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .select(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x558b6d4790d0>
#> <environment: 0x558b780f5cb8>
#> 
#> $info$control$svsplitfun
#> function (model, trafo, data, subset, weights, whichvar, ctrl) 
#> {
#>     args <- list(...)
#>     ctrl[names(args)] <- args
#>     .split(model, trafo, data, subset, weights, whichvar, ctrl, 
#>         FUN = .ctree_test)
#> }
#> <bytecode: 0x558b6d47b300>
#> <environment: 0x558b780f5e08>
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
#> <bytecode: 0x558b71e49cf8>
#> <environment: 0x558b780e6fd0>
#> 
#> $predictf
#> ~am + carb + cyl + disp + drat + gear + hp + qsec + vs + wt
#> attr(,"variables")
#> list(am, carb, cyl, disp, drat, gear, hp, qsec, vs, wt)
#> attr(,"factors")
#>      am carb cyl disp drat gear hp qsec vs wt
#> am    1    0   0    0    0    0  0    0  0  0
#> carb  0    1   0    0    0    0  0    0  0  0
#> cyl   0    0   1    0    0    0  0    0  0  0
#> disp  0    0   0    1    0    0  0    0  0  0
#> drat  0    0   0    0    1    0  0    0  0  0
#> gear  0    0   0    0    0    1  0    0  0  0
#> hp    0    0   0    0    0    0  1    0  0  0
#> qsec  0    0   0    0    0    0  0    1  0  0
#> vs    0    0   0    0    0    0  0    0  1  0
#> wt    0    0   0    0    0    0  0    0  0  1
#> attr(,"term.labels")
#>  [1] "am"   "carb" "cyl"  "disp" "drat" "gear" "hp"   "qsec" "vs"   "wt"  
#> attr(,"order")
#>  [1] 1 1 1 1 1 1 1 1 1 1
#> attr(,"intercept")
#> [1] 1
#> attr(,"response")
#> [1] 0
#> attr(,"Formula_with_dot")
#> mpg ~ .
#> NULL
#> attr(,"Formula_without_dot")
#> mpg ~ am + carb + cyl + disp + drat + gear + hp + qsec + vs + 
#>     wt
#> NULL
#> attr(,"dot")
#> [1] "sequential"
#> 
#> attr(,"class")
#> [1] "cforest"      "constparties" "parties"     


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 29.24926 
```
