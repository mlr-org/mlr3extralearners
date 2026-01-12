# Classification Least Squares Support Vector Machine Learner

Least squares support vector machine for classification. Calls
[`kernlab::lssvm()`](https://rdrr.io/pkg/kernlab/man/lssvm.html) from
[kernlab](https://CRAN.R-project.org/package=kernlab). Parameters
`sigma`, `degree`, `scale`, `offset`, `order`, `length`, `lambda`, and
`normalized` are added to make tuning `kpar` easier. If `kpar` is
provided then these new parameters are ignored. If none are provided
then the default "automatic" is used for `kpar`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.lssvm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [kernlab](https://CRAN.R-project.org/package=kernlab)

## Parameters

|            |           |             |                                                                                             |                       |
|------------|-----------|-------------|---------------------------------------------------------------------------------------------|-----------------------|
| Id         | Type      | Default     | Levels                                                                                      | Range                 |
| scaled     | untyped   | TRUE        |                                                                                             | \-                    |
| kernel     | character | rbfdot      | rbfdot, polydot, vanilladot, tanhdot, laplacedot, besseldot, anovadot, splinedot, stringdot | \-                    |
| sigma      | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| degree     | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| scale      | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| offset     | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| order      | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| length     | integer   | \-          |                                                                                             | \\\[0, \infty)\\      |
| lambda     | numeric   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| normalized | logical   | \-          | TRUE, FALSE                                                                                 | \-                    |
| kpar       | untyped   | "automatic" |                                                                                             | \-                    |
| tau        | numeric   | 0.01        |                                                                                             | \\(-\infty, \infty)\\ |
| reduced    | logical   | TRUE        | TRUE, FALSE                                                                                 | \-                    |
| rank       | integer   | \-          |                                                                                             | \\(-\infty, \infty)\\ |
| delta      | integer   | 40          |                                                                                             | \\(-\infty, \infty)\\ |
| tol        | numeric   | 1e-04       |                                                                                             | \\(-\infty, \infty)\\ |
| fit        | logical   | TRUE        | TRUE, FALSE                                                                                 | \-                    |
| na.action  | untyped   | na.omit     |                                                                                             | \-                    |
| coupler    | character | minpair     | minpair, pkpd                                                                               | \-                    |

## References

Karatzoglou, Alexandros, Smola, Alex, Hornik, Kurt, Zeileis, Achim
(2004). “kernlab-an S4 package for kernel methods in R.” *Journal of
statistical software*, **11**(9), 1–20.

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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifLSSVM`

## Methods

### Public methods

- [`LearnerClassifLSSVM$new()`](#method-LearnerClassifLSSVM-new)

- [`LearnerClassifLSSVM$clone()`](#method-LearnerClassifLSSVM-clone)

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

    LearnerClassifLSSVM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLSSVM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.lssvm")
print(learner)
#> 
#> ── <LearnerClassifLSSVM> (classif.lssvm): Support Vector Machine ───────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and kernlab
#> • Predict Types: [response]
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
#> Using automatic sigma estimation (sigest) for RBF or laplace kernel 

print(learner$model)
#> Least Squares Support Vector Machine object of class "lssvm" 
#> 
#> problem type : classification 
#>  parameter : tau = 0.01 
#> 
#> Gaussian Radial Basis kernel function. 
#>  Hyperparameter : sigma =  0.01285441427698 
#> 
#> Number of data points used for training : 46 
#> Training error : 0.007194 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
