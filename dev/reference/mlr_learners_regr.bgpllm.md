# Regression Bayesian Gaussian Process LLM Learner

Bayesian Gaussian process regression with jumps to the limiting linear
model. Calls [`tgp::bgpllm()`](https://rdrr.io/pkg/tgp/man/btgp.html)
from [tgp](https://CRAN.R-project.org/package=tgp). For the predicted
mean ZZ.km and for the predicted variance ZZ.ks2 are chosen.

## Initial parameter values

- `verb` is initialized to `0` to silence printing.

- `pred.n` is initialized to `FALSE` to skip prediction during training.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.bgpllm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [tgp](https://CRAN.R-project.org/package=tgp)

## Parameters

|        |           |                     |                                      |                       |
|--------|-----------|---------------------|--------------------------------------|-----------------------|
| Id     | Type      | Default             | Levels                               | Range                 |
| meanfn | character | linear              | constant, linear                     | \-                    |
| bprior | character | bflat               | b0, b0not, bflat, bmle, bmznot, bmzt | \-                    |
| corr   | character | expsep              | exp, expsep, matern, sim             | \-                    |
| gamma  | untyped   | c(10, 0.2, 0.7)     |                                      | \-                    |
| BTE    | untyped   | c(2000L, 4000L, 2L) |                                      | \-                    |
| R      | integer   | 1                   |                                      | \\\[1, \infty)\\      |
| m0r1   | logical   | TRUE                | TRUE, FALSE                          | \-                    |
| itemps | untyped   | NULL                |                                      | \-                    |
| pred.n | logical   | \-                  | TRUE, FALSE                          | \-                    |
| krige  | logical   | TRUE                | TRUE, FALSE                          | \-                    |
| zcov   | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| Ds2x   | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| improv | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| nu     | numeric   | 1.5                 |                                      | \\(-\infty, \infty)\\ |
| trace  | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| verb   | integer   | \-                  |                                      | \\\[0, 4\]\\          |
| MAP    | logical   | TRUE                | TRUE, FALSE                          | \-                    |

## References

Gramacy RB (2007). “tgp: An R Package for Bayesian Nonstationary,
Semiparametric Nonlinear Regression and Design by Treed Gaussian Process
Models.” *Journal of Statistical Software*, **19**(9), 1–46.
[doi:10.18637/jss.v019.i09](https://doi.org/10.18637/jss.v019.i09) .

Gramacy RB, Taddy M (2010). “Categorical Inputs, Sensitivity Analysis,
Optimization and Importance Tempering with tgp Version 2, an R Package
for Treed Gaussian Process Models.” *Journal of Statistical Software*,
**33**(6), 1–48.
[doi:10.18637/jss.v033.i06](https://doi.org/10.18637/jss.v033.i06) .

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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBgpllm`

## Methods

### Public methods

- [`LearnerRegrBgpllm$new()`](#method-LearnerRegrBgpllm-new)

- [`LearnerRegrBgpllm$clone()`](#method-LearnerRegrBgpllm-clone)

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

    LearnerRegrBgpllm$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBgpllm$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.bgpllm")
print(learner)
#> 
#> ── <LearnerRegrBgpllm> (regr.bgpllm): Bayesian Gaussian Process with Limiting Li
#> • Model: -
#> • Parameters: pred.n=FALSE, verb=0
#> • Packages: mlr3, mlr3extralearners, and tgp
#> • Predict Types: [response] and se
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

print(learner$model)
#> 
#> This is a 'tgp' class object.  
#> It is basically a list with the following entries:
#> 
#>  [1] X        n        d        Z        nn       Xsplit   BTE      R       
#>  [9] linburn  g        dparams  itemps   bimprov  ess      gpcs     response
#> [17] improv   parts    trees    posts    params   m0r1    
#> 
#> See ?btgp for an explanation of the individual entries.  
#> See plot.tgp and tgp.trees for help with visualization.
#> 
#> The $trace field, if it exists, is of class 'tgptraces' 
#> and has its own print statement
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 22.75584 
```
