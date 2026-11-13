# Regression Geographically Weighted Random Forest Learner

Geographically weighted random forest for regression. Calls
[`SpatialML::grf()`](https://rdrr.io/pkg/SpatialML/man/grf.html) from
package SpatialML.

The learner requires a spatial task with coordinates, e.g., a
`TaskRegrST` from package
[mlr3spatiotempcv](https://CRAN.R-project.org/package=mlr3spatiotempcv).

Predictions are computed with the
[`predict()`](https://rdrr.io/r/stats/predict.html) method of SpatialML
using only the local models, i.e., `local.w = 1` and `global.w = 0`.

## Initial parameter values

- `print.results` is set to `FALSE` and not exposed as a hyperparameter.
  This also disables the progress bar controlled by `progress`.

## Custom mlr3 parameters

- `min.node.size`, `max.depth`, `replace`, and `sample.fraction` are
  passed to
  [`ranger::ranger()`](http://imbs-hl.github.io/ranger/reference/ranger.md).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gwrf")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [SpatialML](https://CRAN.R-project.org/package=SpatialML)

## Parameters

|                 |           |          |                       |                  |
|-----------------|-----------|----------|-----------------------|------------------|
| Id              | Type      | Default  | Levels                | Range            |
| bw              | numeric   | \-       |                       | \\\[0, \infty)\\ |
| kernel          | character | adaptive | adaptive, fixed       | \-               |
| ntree           | integer   | 500      |                       | \\\[1, \infty)\\ |
| mtry            | integer   | \-       |                       | \\\[1, \infty)\\ |
| importance      | character | impurity | impurity, permutation | \-               |
| nthreads        | integer   | \-       |                       | \\\[1, \infty)\\ |
| geo.weighted    | logical   | TRUE     | TRUE, FALSE           | \-               |
| oob.fallback    | character | loo      | loo, inbag            | \-               |
| min.node.size   | integer   | 5        |                       | \\\[1, \infty)\\ |
| max.depth       | integer   | \-       |                       | \\\[0, \infty)\\ |
| replace         | logical   | TRUE     | TRUE, FALSE           | \-               |
| sample.fraction | numeric   | \-       |                       | \\\[0, 1\]\\     |

## References

Georganos, Stefanos, Grippa, Tais, Gadiaga N, Assane, Linard, Catherine,
Lennert, Moritz, Vanhuysse, Sabine, Mboga, Nicholus, Wolff, Eleonore,
Kalogirou, Stamatis (2021). “Geographical random forests: a spatial
extension of the random forest algorithm to address spatial
heterogeneity in remote sensing and population modelling.” *Geocarto
International*, **36**(2), 121–136.
[doi:10.1080/10106049.2019.1595177](https://doi.org/10.1080/10106049.2019.1595177)
.

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

Manh Hung LE

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGWRF`

## Methods

### Public methods

- [`LearnerRegrGWRF$new()`](#method-LearnerRegrGWRF-initialize)

- [`LearnerRegrGWRF$importance()`](#method-LearnerRegrGWRF-importance)

- [`LearnerRegrGWRF$oob_error()`](#method-LearnerRegrGWRF-oob_error)

- [`LearnerRegrGWRF$clone()`](#method-LearnerRegrGWRF-clone)

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

### `LearnerRegrGWRF$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrGWRF$new()

------------------------------------------------------------------------

### `LearnerRegrGWRF$importance()`

The importance scores are the column means of the slot
`Local.Variable.Importance`.

#### Usage

    LearnerRegrGWRF$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerRegrGWRF$oob_error()`

The OOB error is extracted from the global model slot
`Global.Model$prediction.error`.

#### Usage

    LearnerRegrGWRF$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### `LearnerRegrGWRF$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGWRF$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
