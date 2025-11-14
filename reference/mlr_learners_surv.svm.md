# Survival Support Vector Machine Learner

Survival support vector machine. Calls
[`survivalsvm::survivalsvm()`](https://rdrr.io/pkg/survivalsvm/man/survivalsvm.html)
from [survivalsvm](https://CRAN.R-project.org/package=survivalsvm).

## Details

Four possible SVMs can be implemented, dependent on the `type`
parameter. These correspond to predicting the survival time via
regression (`regression`), predicting a continuous rank (`vanbelle1`,
`vanbelle2`), or a hybrid of the two (`hybrid`). Whichever `type` is
chosen determines how the `crank` predict type is calculated, but in any
case all can be considered a valid continuous ranking.

`makediff3` is recommended when using `type = "hybrid"`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.svm")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “response”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [survivalsvm](https://CRAN.R-project.org/package=survivalsvm)

## Parameters

|             |           |            |                                                 |                       |
|-------------|-----------|------------|-------------------------------------------------|-----------------------|
| Id          | Type      | Default    | Levels                                          | Range                 |
| type        | character | regression | regression, vanbelle1, vanbelle2, hybrid        | \-                    |
| diff.meth   | character | \-         | makediff1, makediff2, makediff3                 | \-                    |
| gamma       | numeric   | NULL       |                                                 | \\(-\infty, \infty)\\ |
| mu          | numeric   | NULL       |                                                 | \\(-\infty, \infty)\\ |
| opt.meth    | character | quadprog   | quadprog, ipop                                  | \-                    |
| kernel      | character | lin_kernel | lin_kernel, add_kernel, rbf_kernel, poly_kernel | \-                    |
| kernel.pars | untyped   | \-         |                                                 | \-                    |
| sgf.sv      | integer   | 5          |                                                 | \\\[0, \infty)\\      |
| sigf        | integer   | 7          |                                                 | \\\[0, \infty)\\      |
| maxiter     | integer   | 20         |                                                 | \\\[0, \infty)\\      |
| margin      | numeric   | 0.05       |                                                 | \\\[0, \infty)\\      |
| bound       | numeric   | 10         |                                                 | \\\[0, \infty)\\      |
| eig.tol     | numeric   | 1e-06      |                                                 | \\\[0, \infty)\\      |
| conv.tol    | numeric   | 1e-07      |                                                 | \\\[0, \infty)\\      |
| posd.tol    | numeric   | 1e-08      |                                                 | \\\[0, \infty)\\      |

## Prediction types

This learner returns up to two prediction types:

1.  `crank`: a vector containing the continuous ranking scores, where
    each score corresponds to a specific test observation.

2.  `response`: the survival time of each test observation, equal to
    `-crank`. This prediction type if only available for `"type"` equal
    to `regression` or `hybrid`.

## Custom mlr3 parameters

- `gamma`, `mu` have replaced `gamma.mu` so that it's easier to tune
  these separately. `mu` is only used when `type = "hybrid"`.

## References

Van Belle, Vanya, Pelckmans, Kristiaan, Van Huffel, Sabine, Suykens, AK
J (2011). “Improved performance on high-dimensional survival data by
application of Survival-SVM.” *Bioinformatics*, **27**(1), 87–94.

Van Belle, Vanya, Pelckmans, Kristiaan, Van Huffel, Sabine, Suykens, AK
J (2011). “Support vector methods for survival analysis: a comparison
between ranking and regression approaches.” *Artificial intelligence in
medicine*, **53**(2), 107–118.

Shivaswamy, K P, Chu, Wei, Jansche, Martin (2007). “A support vector
approach to censored targets.” In *Seventh IEEE international conference
on data mining (ICDM 2007)*, 655–660. IEEE.

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
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvSVM`

## Methods

### Public methods

- [`LearnerSurvSVM$new()`](#method-LearnerSurvSVM-new)

- [`LearnerSurvSVM$clone()`](#method-LearnerSurvSVM-clone)

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

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvSVM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvSVM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
set.seed(123)
# Define the Learner and set parameter values
learner = lrn("surv.svm", gamma = 0.1)
print(learner)
#> 
#> ── <LearnerSurvSVM> (surv.svm): Survival Support Vector Machine ────────────────
#> • Model: -
#> • Parameters: gamma=0.1
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and survivalsvm
#> • Predict Types: [crank] and response
#> • Feature Types: logical, integer, numeric, character, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("rats")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# print the model
print(learner$model)
#> 
#> survivalsvm result
#> 
#> Call:
#> 
#>  survivalsvm::survivalsvm(formula = task$formula(), data = task$data(), gamma.mu = gamma.mu) 
#> 
#> Survival svm approach              : regression 
#> Type of Kernel                     : lin_kernel 
#> Optimization solver used           : quadprog 
#> Number of support vectors retained : 11 
#> survivalsvm version                : 0.0.6 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>    0.493932 
```
