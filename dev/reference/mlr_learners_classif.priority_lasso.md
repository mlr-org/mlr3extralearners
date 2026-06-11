# Classification Priority Lasso Learner

Patient outcome prediction based on multi-omics data, taking
practitioners' preferences into account. Calls
[`prioritylasso::prioritylasso()`](https://rdrr.io/pkg/prioritylasso/man/prioritylasso.html)
from [prioritylasso](https://CRAN.R-project.org/package=prioritylasso).
Only binary classification is supported.

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

## Initial parameter values

- `family` is set to `"binomial"` and cannot be changed

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.priority_lasso")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [prioritylasso](https://CRAN.R-project.org/package=prioritylasso)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| type.measure | character | \- | class, auc | \- |
| blocks | untyped | \- |  | \- |
| max.coef | untyped | NULL |  | \- |
| block1.penalization | logical | TRUE | TRUE, FALSE | \- |
| lambda.type | character | lambda.min | lambda.min, lambda.1se | \- |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| cvoffset | logical | FALSE | TRUE, FALSE | \- |
| cvoffsetnfolds | integer | 10 |  | \\\[1, \infty)\\ |
| return.x | logical | TRUE | TRUE, FALSE | \- |
| lambda | untyped | NULL |  | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| type.logistic | character | Newton | Newton, modified.Newton | \- |
| include.allintercepts | logical | FALSE | TRUE, FALSE | \- |
| use.blocks | untyped | "all" |  | \- |

## References

Simon K, Vindi J, Roman H, Tobias H, Anne-Laure B (2018).
“Priority-Lasso: a simple hierarchical approach to the prediction of
clinical outcome using multi-omics data.” *BMC Bioinformatics*, **19**.
[doi:10.1186/s12859-018-2344-6](https://doi.org/10.1186/s12859-018-2344-6)
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

HarutyunyanLiana

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifPriorityLasso`

## Methods

### Public methods

- [`LearnerClassifPriorityLasso$new()`](#method-LearnerClassifPriorityLasso-initialize)

- [`LearnerClassifPriorityLasso$selected_features()`](#method-LearnerClassifPriorityLasso-selected_features)

- [`LearnerClassifPriorityLasso$clone()`](#method-LearnerClassifPriorityLasso-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### `LearnerClassifPriorityLasso$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifPriorityLasso$new()

------------------------------------------------------------------------

### `LearnerClassifPriorityLasso$selected_features()`

Selected features, i.e. those where the coefficient is non-zero.

#### Usage

    LearnerClassifPriorityLasso$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### `LearnerClassifPriorityLasso$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifPriorityLasso$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define a Task
task = mlr3::as_task_classif(prioritylasso::pl_data, target = "pl_out")

# Create train and test set
ids = partition(task)

# Define the Learner and set parameter values
learner = lrn("classif.priority_lasso", type.measure = "auc", standardize = FALSE,
  blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028),
  max.coef = c(Inf, Inf, 10, 10))
print(learner)
#> 
#> ── <LearnerClassifPriorityLasso> (classif.priority_lasso): Priority Lasso ──────
#> • Model: -
#> • Parameters: type.measure=auc, blocks=<list>, max.coef=Inf,Inf,10,10,
#> standardize=FALSE
#> • Packages: mlr3 and prioritylasso
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: selected_features, twoclass, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Train the learner
learner$train(task, row_ids = ids$train)

# Selected features
learner$selected_features()
#>  [1] "b1.1"   "b1.2"   "b1.3"   "b1.4"   "b2.1"   "b2.2"   "b2.3"   "b3.16" 
#>  [9] "b3.19"  "b3.2"   "b3.4"   "b3.7"   "b3.8"   "b4.140" "b4.164" "b4.573"
#> [17] "b4.607" "b4.839" "b4.885" "b4.977"

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3484848 
```
