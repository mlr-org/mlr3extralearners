# Generalized Additive Quantile Regression Model for Multiple Quantiles

Quantile Regression with generalized additive models for fitting a
learner on multiple quantiles simultaneously. Calls
[`qgam::mqgam()`](https://rdrr.io/pkg/qgam/man/mqgam.html) from package
[qgam](https://CRAN.R-project.org/package=qgam).

## Form

For the `form` parameter, a gam formula specific to the
[Task](https://mlr3.mlr-org.com/reference/Task.html) is required (see
example and
[`?mgcv::formula.gam`](https://rdrr.io/pkg/mgcv/man/formula.gam.html)).
If no formula is provided, a fallback formula using all features in the
task is used that will make the Learner behave like Linear Quantile
Regression. The features specified in the formula need to be the same as
columns with col_roles "feature" in the task.

## Quantile

The quantiles for the Learner, i.e. `qu` parameter from
[`qgam::mqgam()`](https://rdrr.io/pkg/qgam/man/mqgam.html), is set using
the values specified in `learner$quantiles`. The response quantile can
be specified using `learner$quantile_response`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.mqgam")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”, “quantiles”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [qgam](https://CRAN.R-project.org/package=qgam)

## Parameters

|           |         |            |             |                       |
|-----------|---------|------------|-------------|-----------------------|
| Id        | Type    | Default    | Levels      | Range                 |
| form      | untyped | \-         |             | \-                    |
| lsig      | numeric | \-         |             | \\(-\infty, \infty)\\ |
| err       | numeric | \-         |             | \\\[0, 1\]\\          |
| cluster   | untyped | NULL       |             | \-                    |
| multicore | logical | \-         | TRUE, FALSE | \-                    |
| ncores    | numeric | \-         |             | \\(-\infty, \infty)\\ |
| paropts   | untyped | list()     |             | \-                    |
| link      | untyped | "identity" |             | \-                    |
| argGam    | untyped | \-         |             | \-                    |
| discrete  | logical | FALSE      | TRUE, FALSE | \-                    |

## References

Fasiolo, Matteo, Wood, N. S, Zaffran, Margaux, Nedellec, Raphael, Goude,
Yannig (2017). “Fast Calibrated Additive Quantile Regression.” *Journal
of the American Statistical Association*, **116**, 1402–1412.
[doi:10.1080/01621459.2020.1725521](https://doi.org/10.1080/01621459.2020.1725521)
.

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

lona-k

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrMQGam`

## Methods

### Public methods

- [`LearnerRegrMQGam$new()`](#method-LearnerRegrMQGam-new)

- [`LearnerRegrMQGam$clone()`](#method-LearnerRegrMQGam-clone)

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

    LearnerRegrMQGam$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrMQGam$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
