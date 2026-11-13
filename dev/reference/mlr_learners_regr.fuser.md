# Fused Lasso Regression Learner

Fused lasso regression over subsets of the data. One linear model is
fitted per subset, and an L2 fusion penalty shares information between
the coefficients of the subsets. Calls
[`fuser::generateBlockDiagonalMatrices()`](https://rdrr.io/pkg/fuser/man/generateBlockDiagonalMatrices.html)
and
[`fuser::fusedL2DescentGLMNet()`](https://rdrr.io/pkg/fuser/man/fusedL2DescentGLMNet.html)
from [fuser](https://CRAN.R-project.org/package=fuser).

## Subsets

The learner requires a task with exactly one column with the column role
`"subset"`, which assigns each row to a subset. The `"subset"` role is
registered by
[mlr3resampling](https://CRAN.R-project.org/package=mlr3resampling), so
that package has to be loaded before the role can be set, e.g. with
`task$set_col_roles("column", roles = "subset")`. There must be at least
two subsets in the training data, and predictions are only possible for
subsets that were present during training. The `"group"` role is not
used because mlr3 keeps the rows of a group together when resampling, so
that the test set would only contain subsets that the model has not
seen.

## Initial parameter values

- `lambda` is initialized to 0.01, because the upstream function has no
  default for it. The value should be tuned.

- `scaling` is initialized to `FALSE`, the upstream default is `TRUE`.
  With scaling, the features and the target of each subset are divided
  by the number of rows of the subset, so that a suitable `lambda`
  depends strongly on the number of rows and the initial value would
  shrink all coefficients to zero on all but very small data sets.

## Custom mlr3 parameters

- `G` is the matrix of pairwise fusion strengths between the subsets.
  Rows and columns are aligned with the subset names, which are
  converted to character and sorted. If `G` is not set, all pairs of
  subsets are fused with strength 1.

- `intercept` fits one unpenalized intercept per subset if `TRUE`. The
  intercept that
  [`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html)
  would fit across all subsets is always disabled, because the upstream
  function discards it.

- `lambda` must be a single value, the upstream function accepts a
  vector.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.fuser")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [fuser](https://CRAN.R-project.org/package=fuser),
  [mlr3resampling](https://CRAN.R-project.org/package=mlr3resampling)

## Parameters

|                 |         |         |             |                  |
|-----------------|---------|---------|-------------|------------------|
| Id              | Type    | Default | Levels      | Range            |
| G               | untyped | NULL    |             | \-               |
| gamma           | numeric | 1       |             | \\\[0, \infty)\\ |
| intercept       | logical | FALSE   | TRUE, FALSE | \-               |
| lambda          | numeric | \-      |             | \\\[0, \infty)\\ |
| penalty.factors | untyped | \-      |             | \-               |
| scaling         | logical | TRUE    | TRUE, FALSE | \-               |

## References

Dondelinger, Frank, Mukherjee, Sach, Initiative TADN (2020). “The joint
lasso: high-dimensional regression for group structured data.”
*Biostatistics*, **21**(2), 219–235.
[doi:10.1093/biostatistics/kxy035](https://doi.org/10.1093/biostatistics/kxy035)
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

EngineerDanny

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrFuser`

## Methods

### Public methods

- [`LearnerRegrFuser$new()`](#method-LearnerRegrFuser-initialize)

- [`LearnerRegrFuser$clone()`](#method-LearnerRegrFuser-clone)

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

### `LearnerRegrFuser$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrFuser$new()

------------------------------------------------------------------------

### `LearnerRegrFuser$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrFuser$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Load mlr3resampling to register the "subset" column role
library(mlr3resampling)

# Define the Learner
learner = lrn("regr.fuser", lambda = 0.001, gamma = 0.01)
print(learner)
#> 
#> ── <LearnerRegrFuser> (regr.fuser): Fused Lasso ────────────────────────────────
#> • Model: -
#> • Parameters: gamma=0.01, lambda=0.001, scaling=FALSE
#> • Packages: mlr3, mlr3extralearners, fuser, and mlr3resampling
#> • Predict Types: [response]
#> • Feature Types: logical, integer, and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task, the number of cylinders assigns the rows to subsets
task = tsk("mtcars")
task$set_col_roles("cyl", roles = "subset")

# Create train and test set, each subset is present in both sets
task$col_roles$stratum = "cyl"
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# Coefficients per subset
print(learner$model)
#>               4          6           8
#> am    0.0000000 0.05363562  0.00000000
#> carb  0.0000000 0.00000000 -0.86450928
#> disp -0.3722174 0.03323174 -0.01917684
#> drat  0.0000000 0.00000000  0.00000000
#> gear  0.0000000 0.00000000  0.00000000
#> hp    0.2390776 0.12057959  0.04193196
#> qsec  2.2424216 0.00000000  0.95029334
#> vs    0.0000000 0.00000000  0.00000000
#> wt    0.0000000 0.00000000  0.00000000

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 55.51993 
```
