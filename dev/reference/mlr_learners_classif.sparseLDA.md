# Sparse Discriminant Analysis

Sparse Linear Discriminant Analysis for classification. Calls
[`sparseLDA::sda()`](https://rdrr.io/pkg/sparseLDA/man/sda.html) from
[sparseLDA](https://CRAN.R-project.org/package=sparseLDA).

## Custom mlr3 parameters

- `Q` is set internally to `min(n_features, n_classes - 1)` when not
  supplied.

- `stop` is not exposed because it depends on the task.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.sparseLDA")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [sparseLDA](https://CRAN.R-project.org/package=sparseLDA),
  [MASS](https://CRAN.R-project.org/package=MASS),
  [elasticnet](https://CRAN.R-project.org/package=elasticnet)

## Parameters

|        |         |         |             |                  |
|--------|---------|---------|-------------|------------------|
| Id     | Type    | Default | Levels      | Range            |
| lambda | numeric | 1e-06   |             | \\\[0, \infty)\\ |
| maxIte | integer | 100     |             | \\\[0, \infty)\\ |
| tol    | numeric | 1e-06   |             | \\\[0, \infty)\\ |
| trace  | logical | FALSE   | TRUE, FALSE | \-               |

## References

Clemmensen, Line, Hastie, Trevor, Witten, Daniela, Ersboll, Bjarne
(2011). “Sparse discriminant analysis.” *Journal of the American
Statistical Association*, **106**(496), 1519–1531.
[doi:10.1198/jasa.2011.tm09728](https://doi.org/10.1198/jasa.2011.tm09728)
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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifSparseLDA`

## Methods

### Public methods

- [`LearnerClassifSparseLDA$new()`](#method-LearnerClassifSparseLDA-new)

- [`LearnerClassifSparseLDA$clone()`](#method-LearnerClassifSparseLDA-clone)

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

    LearnerClassifSparseLDA$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifSparseLDA$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.sparseLDA")
print(learner)
#> 
#> ── <LearnerClassifSparseLDA> (classif.sparseLDA): Sparse Discriminant Analysis ─
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, sparseLDA, MASS, and elasticnet
#> • Predict Types: [response] and prob
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#> sda.default(x = x, y = y, Q = 1L)
#> 
#> lambda = 1e-06 
#> stop = 60 variables 
#> classes = M, R 
#> 
#> Top 5 predictors (out of 60):
#>  V21, V38, V47, V23, V22


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
