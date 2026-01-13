# Regression BART (Bayesian Additive Regression Trees) Learner

Bayesian Additive Regression Trees are similar to gradient boosting
algorithms. Calls
[`dbarts::bart()`](https://rdrr.io/pkg/dbarts/man/bart.html) from
[dbarts](https://CRAN.R-project.org/package=dbarts).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.bart")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [dbarts](https://CRAN.R-project.org/package=dbarts)

## Parameters

|               |         |         |             |                       |
|---------------|---------|---------|-------------|-----------------------|
| Id            | Type    | Default | Levels      | Range                 |
| ntree         | integer | 200     |             | \\\[1, \infty)\\      |
| sigest        | untyped | NULL    |             | \-                    |
| sigdf         | integer | 3       |             | \\\[1, \infty)\\      |
| sigquant      | numeric | 0.9     |             | \\\[0, 1\]\\          |
| k             | numeric | 2       |             | \\\[0, \infty)\\      |
| power         | numeric | 2       |             | \\\[0, \infty)\\      |
| base          | numeric | 0.95    |             | \\\[0, 1\]\\          |
| ndpost        | integer | 1000    |             | \\\[1, \infty)\\      |
| nskip         | integer | 100     |             | \\\[0, \infty)\\      |
| printevery    | integer | 100     |             | \\\[0, \infty)\\      |
| keepevery     | integer | 1       |             | \\\[1, \infty)\\      |
| keeptrainfits | logical | TRUE    | TRUE, FALSE | \-                    |
| usequants     | logical | FALSE   | TRUE, FALSE | \-                    |
| numcut        | integer | 100     |             | \\\[1, \infty)\\      |
| printcutoffs  | integer | 0       |             | \\(-\infty, \infty)\\ |
| verbose       | logical | FALSE   | TRUE, FALSE | \-                    |
| nthread       | integer | 1       |             | \\(-\infty, \infty)\\ |
| keeptrees     | logical | FALSE   | TRUE, FALSE | \-                    |
| keepcall      | logical | TRUE    | TRUE, FALSE | \-                    |
| sampleronly   | logical | FALSE   | TRUE, FALSE | \-                    |
| seed          | integer | NA      |             | \\(-\infty, \infty)\\ |
| proposalprobs | untyped | NULL    |             | \-                    |
| splitprobs    | untyped | NULL    |             | \-                    |
| keepsampler   | logical | \-      | TRUE, FALSE | \-                    |
| n.threads     | integer | \-      |             | \\(-\infty, \infty)\\ |

## Custom mlr3 parameters

- Parameter: `offset`

  - The parameter is removed, because only
    [`dbarts::bart2`](https://rdrr.io/pkg/dbarts/man/bart.html) allows
    an offset during training, and therefore the offset parameter in
    `dbarts:::predict.bart` is irrelevant for `dbarts::dbart`.

- Parameter: `nchain`, `combineChains`, `combinechains`

  - The parameters are removed as parallelization of multiple models is
    handled by future.

## Initial parameter values

- `keeptrees` is initialized to `TRUE` because it is required for
  prediction.

## References

Sparapani, Rodney, Spanbauer, Charles, McCulloch, Robert (2021).
“Nonparametric machine learning and efficient computation with bayesian
additive regression trees: the BART R package.” *Journal of Statistical
Software*, **97**, 1–66.

Chipman, A H, George, I E, McCulloch, E R (2010). “BART: Bayesian
additive regression trees.” *The Annals of Applied Statistics*,
**4**(1), 266–298.

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

ck37

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBart`

## Methods

### Public methods

- [`LearnerRegrBart$new()`](#method-LearnerRegrBart-new)

- [`LearnerRegrBart$clone()`](#method-LearnerRegrBart-clone)

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

    LearnerRegrBart$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBart$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.bart")
print(learner)
#> 
#> ── <LearnerRegrBart> (regr.bart): Bayesian Additive Regression Trees ───────────
#> • Model: -
#> • Parameters: keeptrees=TRUE
#> • Packages: mlr3, mlr3extralearners, and dbarts
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> 
#> Running BART with numeric y
#> 
#> number of trees: 200
#> number of chains: 1, default number of threads 1
#> tree thinning rate: 1
#> Prior:
#>  k prior fixed to 2.000000
#>  degrees of freedom in sigma prior: 3.000000
#>  quantile in sigma prior: 0.900000
#>  scale in sigma prior: 0.001820
#>  power and base for tree prior: 2.000000 0.950000
#>  use quantiles for rule cut points: false
#>  proposal probabilities: birth/death 0.50, swap 0.10, change 0.40; birth 0.50
#> data:
#>  number of training observations: 21
#>  number of test observations: 0
#>  number of explanatory variables: 10
#>  init sigma: 1.894648, curr sigma: 1.894648
#> 
#> Cutoff rules c in x<=c vs x>c
#> Number of cutoffs: (var: number of possible c):
#> (1: 100) (2: 100) (3: 100) (4: 100) (5: 100) 
#> (6: 100) (7: 100) (8: 100) (9: 100) (10: 100) 
#> 
#> Running mcmc loop:
#> iteration: 100 (of 1000)
#> iteration: 200 (of 1000)
#> iteration: 300 (of 1000)
#> iteration: 400 (of 1000)
#> iteration: 500 (of 1000)
#> iteration: 600 (of 1000)
#> iteration: 700 (of 1000)
#> iteration: 800 (of 1000)
#> iteration: 900 (of 1000)
#> iteration: 1000 (of 1000)
#> total seconds in loop: 0.270635
#> 
#> Tree sizes, last iteration:
#> [1] 3 1 3 2 2 3 2 2 3 1 2 2 3 2 2 2 2 2 
#> 2 2 2 2 2 2 1 2 2 1 3 2 2 3 4 2 2 1 3 2 
#> 2 2 2 3 2 2 2 2 2 3 3 3 2 2 2 1 3 2 3 3 
#> 3 3 2 2 2 3 2 2 2 2 3 2 2 3 1 2 2 4 3 4 
#> 3 2 2 3 2 3 2 2 2 2 3 1 2 2 1 2 3 3 2 2 
#> 2 2 2 2 2 2 2 2 3 2 6 2 3 2 2 2 2 2 2 2 
#> 3 2 2 2 4 2 3 3 2 3 2 5 3 2 2 2 3 4 2 2 
#> 4 2 3 2 2 2 2 2 1 3 2 2 1 3 2 2 2 3 3 2 
#> 2 3 3 2 3 2 2 2 2 2 2 3 3 4 2 1 1 1 2 2 
#> 2 2 3 2 2 2 2 3 1 3 5 2 2 3 2 1 2 2 2 2 
#> 2 2 
#> 
#> Variable Usage, last iteration (var:count):
#> (1: 17) (2: 27) (3: 20) (4: 19) (5: 35) 
#> (6: 24) (7: 22) (8: 27) (9: 33) (10: 33) 
#> 
#> DONE BART
#> 

print(learner$model)
#> 
#> Call:
#> dbarts::bart(x.train = data, y.train = outcome, keeptrees = TRUE)
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.84714 
```
