# Classification Discriminant Analysis Learner

Mixture Discriminant Analysis. Calls
[`mda::mda()`](https://rdrr.io/pkg/mda/man/mda.html) from
[mda](https://CRAN.R-project.org/package=mda).

## Initial parameter values

- `keep.fitted`: Set to `FALSE` by default for speed.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.mda")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mda](https://CRAN.R-project.org/package=mda)

## Parameters

|              |           |                   |                                 |                       |
|--------------|-----------|-------------------|---------------------------------|-----------------------|
| Id           | Type      | Default           | Levels                          | Range                 |
| criterion    | character | misclassification | misclassification, deviance     | \-                    |
| dimension    | integer   | \-                |                                 | \\\[1, \infty)\\      |
| eps          | numeric   | 2.220446e-16      |                                 | \\\[0, \infty)\\      |
| iter         | integer   | 5                 |                                 | \\\[1, \infty)\\      |
| keep.fitted  | logical   | TRUE              | TRUE, FALSE                     | \-                    |
| method       | character | polyreg           | polyreg, mars, bruto, gen.ridge | \-                    |
| prior        | numeric   | \-                |                                 | \\\[0, 1\]\\          |
| start.method | character | kmeans            | kmeans, lvq                     | \-                    |
| sub.df       | integer   | \-                |                                 | \\\[1, \infty)\\      |
| subclasses   | integer   | 2                 |                                 | \\(-\infty, \infty)\\ |
| tot.df       | integer   | \-                |                                 | \\\[1, \infty)\\      |
| trace        | logical   | FALSE             | TRUE, FALSE                     | \-                    |
| tries        | integer   | 5                 |                                 | \\\[1, \infty)\\      |
| weights      | untyped   | \-                |                                 | \-                    |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifMda`

## Methods

### Public methods

- [`LearnerClassifMda$new()`](#method-LearnerClassifMda-new)

- [`LearnerClassifMda$clone()`](#method-LearnerClassifMda-clone)

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

    LearnerClassifMda$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifMda$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.mda")
print(learner)
#> 
#> ── <LearnerClassifMda> (classif.mda): Mixture Discriminant Analysis ────────────
#> • Model: -
#> • Parameters: keep.fitted=FALSE
#> • Packages: mlr3 and mda
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
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
#> Call:
#> mda::mda(formula = formula, data = data, keep.fitted = FALSE)
#> 
#> Dimension: 5 
#> 
#> Percent Between-Group Variance Explained:
#>     v1     v2     v3     v4     v5 
#>  47.08  69.05  89.22  95.54 100.00 
#> 
#> Degrees of Freedom (per dimension): 61 
#> 
#> Training Misclassification Error: 0.01439 ( N = 139 )
#> 
#> Deviance: 5.006 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
