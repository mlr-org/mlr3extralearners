# Classification BART (Bayesian Additive Regression Trees) Learner

Bayesian Additive Regression Trees are similar to gradient boosting
algorithms. The classification problem is solved by 0-1 encoding of the
two-class targets and setting the decision threshold to p = 0.5 during
the prediction phase. Calls
[`dbarts::bart()`](https://rdrr.io/pkg/dbarts/man/bart.html) from
[dbarts](https://CRAN.R-project.org/package=dbarts).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.bart")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [dbarts](https://CRAN.R-project.org/package=dbarts)

## Parameters

|               |         |         |             |                       |
|---------------|---------|---------|-------------|-----------------------|
| Id            | Type    | Default | Levels      | Range                 |
| ntree         | integer | 200     |             | \\\[1, \infty)\\      |
| k             | numeric | 2       |             | \\\[0, \infty)\\      |
| power         | numeric | 2       |             | \\\[0, \infty)\\      |
| base          | numeric | 0.95    |             | \\\[0, 1\]\\          |
| binaryOffset  | numeric | 0       |             | \\(-\infty, \infty)\\ |
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
| keepcall      | logical | TRUE    | TRUE, FALSE | \-                    |
| sampleronly   | logical | FALSE   | TRUE, FALSE | \-                    |
| seed          | integer | NA      |             | \\(-\infty, \infty)\\ |
| proposalprobs | untyped | NULL    |             | \-                    |
| splitprobs    | untyped | NULL    |             | \-                    |
| keepsampler   | logical | \-      | TRUE, FALSE | \-                    |
| n.threads     | integer | \-      |             | \\(-\infty, \infty)\\ |

## Parameter Changes

- Parameter: keeptrees

- Original: FALSE

- New: TRUE

- Reason: Required for prediction

- Parameter: offset

- The parameter is removed, because only
  [`dbarts::bart2`](https://rdrr.io/pkg/dbarts/man/bart.html) allows an
  offset during training, and therefore the offset parameter in
  `dbarts:::predict.bart` is irrelevant for `dbarts::dbart`.

- Parameter: nchain, combineChains, combinechains

- The parameters are removed as parallelization of multiple models is
  handled by future.

- Parameter: sigest, sigdf, sigquant, keeptres

- Regression only.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifBart`

## Methods

### Public methods

- [`LearnerClassifBart$new()`](#method-LearnerClassifBart-new)

- [`LearnerClassifBart$clone()`](#method-LearnerClassifBart-clone)

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

    LearnerClassifBart$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifBart$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.bart")
print(learner)
#> 
#> ── <LearnerClassifBart> (classif.bart): Bayesian Additive Regression Trees ─────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and dbarts
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: twoclass and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> 
#> Running BART with binary y
#> 
#> number of trees: 200
#> number of chains: 1, default number of threads 1
#> tree thinning rate: 1
#> Prior:
#>  k prior fixed to 2.000000
#>  power and base for tree prior: 2.000000 0.950000
#>  use quantiles for rule cut points: false
#>  proposal probabilities: birth/death 0.50, swap 0.10, change 0.40; birth 0.50
#> data:
#>  number of training observations: 139
#>  number of test observations: 0
#>  number of explanatory variables: 60
#> 
#> Cutoff rules c in x<=c vs x>c
#> Number of cutoffs: (var: number of possible c):
#> (1: 100) (2: 100) (3: 100) (4: 100) (5: 100) 
#> (6: 100) (7: 100) (8: 100) (9: 100) (10: 100) 
#> (11: 100) (12: 100) (13: 100) (14: 100) (15: 100) 
#> (16: 100) (17: 100) (18: 100) (19: 100) (20: 100) 
#> (21: 100) (22: 100) (23: 100) (24: 100) (25: 100) 
#> (26: 100) (27: 100) (28: 100) (29: 100) (30: 100) 
#> (31: 100) (32: 100) (33: 100) (34: 100) (35: 100) 
#> (36: 100) (37: 100) (38: 100) (39: 100) (40: 100) 
#> (41: 100) (42: 100) (43: 100) (44: 100) (45: 100) 
#> (46: 100) (47: 100) (48: 100) (49: 100) (50: 100) 
#> (51: 100) (52: 100) (53: 100) (54: 100) (55: 100) 
#> (56: 100) (57: 100) (58: 100) (59: 100) (60: 100) 
#> 
#> offsets:
#>  reg : 0.00 0.00 0.00 0.00 0.00
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
#> total seconds in loop: 0.471021
#> 
#> Tree sizes, last iteration:
#> [1] 3 2 3 2 2 2 2 2 1 1 3 1 2 1 2 2 3 3 
#> 3 2 4 2 2 3 2 2 2 3 2 2 2 2 2 2 2 1 2 2 
#> 2 2 2 2 2 3 2 2 2 1 2 1 2 2 2 4 2 2 2 2 
#> 2 2 2 3 3 3 2 2 3 2 3 3 2 1 3 2 2 2 2 2 
#> 2 3 2 2 4 3 3 2 2 1 4 3 2 2 2 3 2 2 3 2 
#> 2 3 3 3 2 5 1 2 2 2 2 2 3 2 1 2 2 3 2 3 
#> 2 2 2 3 3 5 2 2 2 3 2 3 4 3 2 2 2 2 4 2 
#> 2 3 2 3 3 2 4 3 1 2 2 3 2 2 4 3 3 2 2 3 
#> 2 4 2 2 2 3 2 2 4 3 3 2 3 2 3 2 2 2 1 2 
#> 2 3 2 2 2 2 2 2 2 2 3 2 2 2 2 2 2 2 4 2 
#> 2 2 
#> 
#> Variable Usage, last iteration (var:count):
#> (1: 5) (2: 6) (3: 2) (4: 2) (5: 7) 
#> (6: 2) (7: 2) (8: 2) (9: 7) (10: 7) 
#> (11: 5) (12: 3) (13: 5) (14: 6) (15: 6) 
#> (16: 4) (17: 4) (18: 7) (19: 6) (20: 4) 
#> (21: 6) (22: 4) (23: 4) (24: 4) (25: 6) 
#> (26: 4) (27: 9) (28: 11) (29: 2) (30: 9) 
#> (31: 5) (32: 1) (33: 4) (34: 2) (35: 6) 
#> (36: 2) (37: 3) (38: 5) (39: 3) (40: 4) 
#> (41: 5) (42: 3) (43: 6) (44: 5) (45: 3) 
#> (46: 7) (47: 1) (48: 4) (49: 6) (50: 2) 
#> (51: 3) (52: 2) (53: 5) (54: 4) (55: 2) 
#> (56: 3) (57: 3) (58: 4) (59: 6) (60: 3) 
#> 
#> DONE BART
#> 

print(learner$model)
#> 
#> Call:
#> dbarts::bart(x.train = x_train, y.train = y_train, keeptrees = TRUE)
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
