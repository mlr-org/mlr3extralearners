# Regression Priority Lasso Learner

Patient outcome prediction based on multi-omics data taking
practitioners’ preferences into account. Calls
[`prioritylasso::prioritylasso()`](https://rdrr.io/pkg/prioritylasso/man/prioritylasso.html)
from [prioritylasso](https://CRAN.R-project.org/package=prioritylasso).

## Initial parameter values

- `family` is set to `"gaussian"` and cannot be changed

- `type.measure` set to `"mse"` (cross-validation measure) and cannot be
  changed

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.priority_lasso")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [prioritylasso](https://CRAN.R-project.org/package=prioritylasso)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| blocks | untyped | \- |  | \- |
| max.coef | untyped | NULL |  | \- |
| block1.penalization | logical | TRUE | TRUE, FALSE | \- |
| lambda.type | character | lambda.min | lambda.min, lambda.1se | \- |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| cvoffset | logical | FALSE | TRUE, FALSE | \- |
| cvoffsetnfolds | integer | 10 |  | \\\[1, \infty)\\ |
| scale.y | logical | FALSE | TRUE, FALSE | \- |
| return.x | logical | TRUE | TRUE, FALSE | \- |
| lambda | untyped | NULL |  | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| type.gaussian | character | \- | covariance, naive | \- |
| include.allintercepts | logical | FALSE | TRUE, FALSE | \- |
| use.blocks | untyped | "all" |  | \- |
| adaptive.order | logical | FALSE | TRUE, FALSE | \- |

## Scope and supported arguments

This learner intentionally exposes a focused subset of training and
prediction arguments. It is designed to work well out of the box,
without requiring extensive parameter tuning. Some arguments from
`cv.glmnet()`, `glmnet()`, and `predict.prioritylasso()` are not
included, because they are not consistently supported or forwarded
through the full train/predict path (e.g. handling missing test data, or
performing relaxed lasso fits).

Please open an issue if there is a need for supporting more learner
parameters.

## Custom mlr3 parameters

- `adaptive.order`: if `TRUE`, the priority order of blocks is estimated
  from the data following Herrmann et al. (2021), instead of using the
  user-supplied block order. For each block, a Ridge regression
  (`alpha = 0`) is fit using `cv.glmnet()` on that block alone. The
  importance of a block is measured by the mean absolute coefficient
  (MAC) score at the `lambda.min` value (the lambda giving minimum
  cross-validation error). A penalty factor of `1 / MAC` is then
  assigned to each block. Blocks are sorted by increasing penalty
  factor, i.e., blocks with larger MAC (stronger average signal) receive
  higher priority (come first). Also, the block‑wise penalty factors are
  attached to the fitted model object as
  `learner$model$block.penalty.factors`.

This method is useful when no domain knowledge is available to specify
block priority. In this step, data are **standardized by default**
(`standardize = TRUE`), but this can be overridden by the learner's
`standardize` parameter. `lambda.min` is always used to derive the block
priority. Additional arguments such as `nfolds`, `type.measure`,
`weights` and `cox.ties` (if provided) are forwarded to each block‑wise
`cv.glmnet()` fit. The `max.coef` parameter, if supplied, it is
re‑ordered accordingly to align with the new block order.

This parameter is ignored when fewer than two blocks are provided. It
defaults to `FALSE` for backward compatibility.

## References

Simon K, Vindi J, Roman H, Tobias H, Anne-Laure B (2018).
“Priority-Lasso: a simple hierarchical approach to the prediction of
clinical outcome using multi-omics data.” *BMC Bioinformatics*, **19**.
[doi:10.1186/s12859-018-2344-6](https://doi.org/10.1186/s12859-018-2344-6)
.

Herrmann, M., Probst, P., Hornung, R., Jurinovic, V., Boulesteix, L. A
(2021). “Large-scale benchmark study of survival prediction methods
using multi-omics data.” *Briefings in Bioinformatics*, **22**(3), 1–15.
[doi:10.1093/BIB/BBAA167](https://doi.org/10.1093/BIB/BBAA167) .

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

HarutyunyanLiana

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrPriorityLasso`

## Methods

### Public methods

- [`LearnerRegrPriorityLasso$new()`](#method-LearnerRegrPriorityLasso-initialize)

- [`LearnerRegrPriorityLasso$selected_features()`](#method-LearnerRegrPriorityLasso-selected_features)

- [`LearnerRegrPriorityLasso$clone()`](#method-LearnerRegrPriorityLasso-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### `LearnerRegrPriorityLasso$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrPriorityLasso$new()

------------------------------------------------------------------------

### `LearnerRegrPriorityLasso$selected_features()`

Selected features when coef is positive

#### Usage

    LearnerRegrPriorityLasso$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### `LearnerRegrPriorityLasso$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrPriorityLasso$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Simulate regression data
set.seed(1L)
x = matrix(rnorm(50L * 500L), nrow = 50L, ncol = 500L)
data = as.data.frame(x)
data$y = rnorm(50L)

# Define a Task
task = mlr3::as_task_regr(data, target = "y")

# Create train and test set
ids = partition(task)

# Define the Learner and set parameter values
learner = lrn("regr.priority_lasso",
  blocks = list(bp1 = 1:75, bp2 = 76:200, bp3 = 201:500),
  max.coef = c(Inf, 8, 5),
  block1.penalization = TRUE,
  lambda.type = "lambda.min",
  standardize = TRUE,
  nfolds = 5,
  cvoffset = FALSE)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# Selected features
learner$selected_features()
#> [1] "V424" "V440"

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#>  regr.mse 
#> 0.3961006 
```
