# Regression Bayesian Treed Gaussian Process LLM Learner

Bayesian treed Gaussian process with jumps to the limiting linear model.
Calls [`tgp::btgpllm()`](https://rdrr.io/pkg/tgp/man/btgp.html) from
[tgp](https://CRAN.R-project.org/package=tgp). For the predicted mean
ZZ.km and for the predicted variance ZZ.ks2 are chosen.

Factor features are one-hot encoded with reference encoding before
fitting. If factors are present, `basemax` is set to the number of
non-factor features so that tree proposals account for the numeric part
of the design.

## Initial parameter values

- `verb` is initialized to `0` to silence printing.

- `pred.n` is initialized to `FALSE` to skip prediction during training.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.btgpllm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [tgp](https://CRAN.R-project.org/package=tgp)

## Parameters

|         |           |                     |                                      |                       |
|---------|-----------|---------------------|--------------------------------------|-----------------------|
| Id      | Type      | Default             | Levels                               | Range                 |
| meanfn  | character | linear              | constant, linear                     | \-                    |
| bprior  | character | bflat               | b0, b0not, bflat, bmle, bmznot, bmzt | \-                    |
| corr    | character | expsep              | exp, expsep, matern, sim             | \-                    |
| tree    | untyped   | c(0.5, 2)           |                                      | \-                    |
| gamma   | untyped   | c(10, 0.2, 0.7)     |                                      | \-                    |
| BTE     | untyped   | c(2000L, 7000L, 2L) |                                      | \-                    |
| R       | integer   | 1                   |                                      | \\\[1, \infty)\\      |
| m0r1    | logical   | TRUE                | TRUE, FALSE                          | \-                    |
| linburn | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| itemps  | untyped   | NULL                |                                      | \-                    |
| pred.n  | logical   | \-                  | TRUE, FALSE                          | \-                    |
| krige   | logical   | TRUE                | TRUE, FALSE                          | \-                    |
| zcov    | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| Ds2x    | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| improv  | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| nu      | numeric   | 1.5                 |                                      | \\(-\infty, \infty)\\ |
| MAP     | logical   | TRUE                | TRUE, FALSE                          | \-                    |
| trace   | logical   | FALSE               | TRUE, FALSE                          | \-                    |
| verb    | integer   | \-                  |                                      | \\\[0, 4\]\\          |

## References

Gramacy RB (2007). “tgp: An R Package for Bayesian Nonstationary,
Semiparametric Nonlinear Regression and Design by Treed Gaussian Process
Models.” *Journal of Statistical Software*, **19**(9), 1–46.
[doi:10.18637/jss.v019.i09](https://doi.org/10.18637/jss.v019.i09) .

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
-\> `LearnerRegrBtgpllm`

## Methods

### Public methods

- [`LearnerRegrBtgpllm$new()`](#method-LearnerRegrBtgpllm-new)

- [`LearnerRegrBtgpllm$clone()`](#method-LearnerRegrBtgpllm-clone)

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

    LearnerRegrBtgpllm$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBtgpllm$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.btgpllm")
print(learner)
#> 
#> ── <LearnerRegrBtgpllm> (regr.btgpllm): Bayesian Treed Gaussian Process with Lim
#> • Model: -
#> • Parameters: pred.n=FALSE, verb=1
#> • Packages: mlr3, mlr3extralearners, and tgp
#> • Predict Types: [response] and se
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> 
#> burn in:
#> r=1000 d=[0/0.865449 0/1.62761 0/1.73326 0/0.0203155 0/1.24351 0/0.939477 0.0589809 0/0.68676 0/0.762728 0/0.742239]; n=21
#> r=2000 d=[0/0.729075 0/0.9219 0/0.436532 0/0.0211686 0/1.06372 0/1.28267 0.0547909 0/0.634479 0.483966 0/1.42794]; n=21
#> 
#> Sampling @ nn=0 pred locs:
#> r=1000 d=[0/0.599486 0/1.43333 0/1.03909 0/0.225077 0/1.15175 0/1.09938 0/0.719927 0.0138611 0/1.09109 0.0148817]; mh=1 n=21
#> r=2000 d=[0.102836 1.04416 0/0.889724 0.0617445 1.45731 0.800126 0.184524 0.112312 0.591983 0.0914127]; mh=1 n=21
#> r=3000 d=[0.0266601 0/0.99763 0.965474 0.0389575 0.547027 0/1.0054 0/0.827054 0.0663265 1.47163 0/0.822583]; mh=1 n=21
#> r=4000 d=[0.0399052 0/0.913824 0/0.70111 0.279279 0/0.959669 0/0.619421 0.536289 0.0297568 0/0.926243 0/1.2954]; mh=1 n=21
#> r=5000 d=[0.0116637 0.223339 0.0367976 0.0118841 0/1.56214 0/0.561514 0/0.927777 0.00898454 0/0.725431 0/0.249913]; mh=1 n=21
#> Grow: 0%, 
#> 

print(learner$model)
#> $model
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
#> 
#> $factor_levels
#> list()
#> 
#> $column_names
#>  [1] "am"   "carb" "cyl"  "disp" "drat" "gear" "hp"   "qsec" "vs"   "wt"  
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> 
#> Kriging @ nn=11 predictive locs:
#> 

# Score the predictions
predictions$score()
#> regr.mse 
#> 29.71863 
```
