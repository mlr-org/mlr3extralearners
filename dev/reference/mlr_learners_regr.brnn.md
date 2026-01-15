# Regression Neural Network Learner

Bayesian regularization for feed-forward neural networks. Calls
[brnn::brnn](https://rdrr.io/pkg/brnn/man/brnn.html) from
[brnn](https://CRAN.R-project.org/package=brnn).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.brnn")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [brnn](https://CRAN.R-project.org/package=brnn)

## Parameters

|             |         |         |             |                       |
|-------------|---------|---------|-------------|-----------------------|
| Id          | Type    | Default | Levels      | Range                 |
| change      | numeric | 0.001   |             | \\(-\infty, \infty)\\ |
| cores       | integer | 1       |             | \\\[1, \infty)\\      |
| epochs      | integer | 1000    |             | \\\[1, \infty)\\      |
| min_grad    | numeric | 1e-10   |             | \\(-\infty, \infty)\\ |
| Monte_Carlo | logical | FALSE   | TRUE, FALSE | \-                    |
| mu          | numeric | 0.005   |             | \\(-\infty, \infty)\\ |
| mu_dec      | numeric | 0.1     |             | \\(-\infty, \infty)\\ |
| mu_inc      | numeric | 10      |             | \\(-\infty, \infty)\\ |
| mu_max      | numeric | 1e+10   |             | \\(-\infty, \infty)\\ |
| neurons     | integer | 2       |             | \\\[1, \infty)\\      |
| normalize   | logical | TRUE    | TRUE, FALSE | \-                    |
| samples     | integer | 40      |             | \\\[1, \infty)\\      |
| tol         | numeric | 1e-06   |             | \\(-\infty, \infty)\\ |
| verbose     | logical | FALSE   | TRUE, FALSE | \-                    |

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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBrnn`

## Methods

### Public methods

- [`LearnerRegrBrnn$new()`](#method-LearnerRegrBrnn-new)

- [`LearnerRegrBrnn$clone()`](#method-LearnerRegrBrnn-clone)

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

    LearnerRegrBrnn$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBrnn$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.brnn")
print(learner)
#> 
#> ── <LearnerRegrBrnn> (regr.brnn): Bayesian regularization for feed-forward neura
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and brnn
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Number of parameters (weights and biases) to estimate: 24 
#> Nguyen-Widrow method
#> Scaling factor= 0.7234904 
#> gamma= 9.2324     alpha= 2.3757   beta= 12.1729 

print(learner$model)
#> A Bayesian regularized neural network 
#> 10 - 2 - 1 with 24 weights, biases and connection strengths
#> Inputs and output were  normalized
#> Training finished because  Changes in F= beta*SCE + alpha*Ew in last 3 iterations less than 0.001 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  25.1501 
```
