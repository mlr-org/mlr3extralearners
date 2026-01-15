# Regression Model-based Recursive Partitioning Learner

Model-based recursive partitioning algorithm. Calls
[`partykit::mob()`](https://rdrr.io/pkg/partykit/man/mob.html) from
[mob](https://CRAN.R-project.org/package=mob).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.mob")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [partykit](https://CRAN.R-project.org/package=partykit),
  [sandwich](https://CRAN.R-project.org/package=sandwich),
  [coin](https://CRAN.R-project.org/package=coin)

## Parameters

|             |           |          |                            |                       |
|-------------|-----------|----------|----------------------------|-----------------------|
| Id          | Type      | Default  | Levels                     | Range                 |
| rhs         | untyped   | \-       |                            | \-                    |
| fit         | untyped   | \-       |                            | \-                    |
| offset      | untyped   | \-       |                            | \-                    |
| cluster     | untyped   | \-       |                            | \-                    |
| alpha       | numeric   | 0.05     |                            | \\\[0, 1\]\\          |
| bonferroni  | logical   | TRUE     | TRUE, FALSE                | \-                    |
| minsize     | integer   | \-       |                            | \\\[1, \infty)\\      |
| minsplit    | integer   | \-       |                            | \\\[1, \infty)\\      |
| minbucket   | integer   | \-       |                            | \\\[1, \infty)\\      |
| maxdepth    | integer   | Inf      |                            | \\\[0, \infty)\\      |
| mtry        | integer   | Inf      |                            | \\\[0, \infty)\\      |
| trim        | numeric   | 0.1      |                            | \\\[0, \infty)\\      |
| breakties   | logical   | FALSE    | TRUE, FALSE                | \-                    |
| parm        | untyped   | \-       |                            | \-                    |
| dfsplit     | integer   | \-       |                            | \\\[0, \infty)\\      |
| prune       | untyped   | \-       |                            | \-                    |
| restart     | logical   | TRUE     | TRUE, FALSE                | \-                    |
| verbose     | logical   | FALSE    | TRUE, FALSE                | \-                    |
| caseweights | logical   | TRUE     | TRUE, FALSE                | \-                    |
| ytype       | character | vector   | vector, matrix, data.frame | \-                    |
| xtype       | character | matrix   | vector, matrix, data.frame | \-                    |
| terminal    | untyped   | "object" |                            | \-                    |
| inner       | untyped   | "object" |                            | \-                    |
| model       | logical   | TRUE     | TRUE, FALSE                | \-                    |
| numsplit    | character | left     | left, center               | \-                    |
| catsplit    | character | binary   | binary, multiway           | \-                    |
| vcov        | character | opg      | opg, info, sandwich        | \-                    |
| ordinal     | character | chisq    | chisq, max, L2             | \-                    |
| nrep        | integer   | 10000    |                            | \\\[0, \infty)\\      |
| applyfun    | untyped   | \-       |                            | \-                    |
| cores       | integer   | NULL     |                            | \\(-\infty, \infty)\\ |
| additional  | untyped   | \-       |                            | \-                    |
| predict_fun | untyped   | \-       |                            | \-                    |

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
-\> `LearnerRegrMob`

## Methods

### Public methods

- [`LearnerRegrMob$new()`](#method-LearnerRegrMob-new)

- [`LearnerRegrMob$clone()`](#method-LearnerRegrMob-clone)

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

    LearnerRegrMob$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrMob$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
library(mlr3)
lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
  lm(y ~ 1, ...)
}
learner = LearnerRegrMob$new()
learner$param_set$values$rhs = "."
learner$param_set$values$fit = lm_
learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")

predict_fun = function(object, newdata, task, .type) {
  preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
  cbind(preds$fit, preds$se.fit)
}
learner$param_set$values$predict_fun = predict_fun
task = tsk("mtcars")
ids = partition(task)
learner$train(task, row_ids = ids$train)
learner$predict(task, row_ids = ids$test)
#> 
#> ── <PredictionRegr> for 11 observations: ───────────────────────────────────────
#>  row_ids truth response
#>        1  21.0 16.33636
#>        2  21.0 16.33636
#>        4  21.4 16.33636
#>      ---   ---      ---
#>       27  26.0 25.66000
#>       28  30.4 25.66000
#>       29  15.8 16.33636
```
