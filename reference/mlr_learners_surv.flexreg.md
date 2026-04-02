# Survival Flexible Parametric Learner

Flexible parametric learner. Calls
[`flexsurv::flexsurvreg()`](http://chjackson.github.io/flexsurv-dev/reference/flexsurvreg.md)
from [flexsurv](https://CRAN.R-project.org/package=flexsurv).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.flexreg")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”, “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [flexsurv](https://CRAN.R-project.org/package=flexsurv),
  [survival](https://CRAN.R-project.org/package=survival)

## Parameters

|               |           |         |                                                                                                                                        |                       |
|---------------|-----------|---------|----------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Id            | Type      | Default | Levels                                                                                                                                 | Range                 |
| formula       | untyped   | \-      |                                                                                                                                        | \-                    |
| anc           | untyped   | \-      |                                                                                                                                        | \-                    |
| bhazard       | untyped   | \-      |                                                                                                                                        | \-                    |
| rtrunc        | untyped   | \-      |                                                                                                                                        | \-                    |
| dist          | character | \-      | gengamma, gengamma.orig, genf, genf.orig, weibull, weibullph, gamma, exp, exponential, llogis, [...](https://rdrr.io/r/base/dots.html) | \-                    |
| inits         | untyped   | \-      |                                                                                                                                        | \-                    |
| fixedpars     | untyped   | \-      |                                                                                                                                        | \-                    |
| cl            | numeric   | 0.95    |                                                                                                                                        | \\\[0, 1\]\\          |
| hessian       | logical   | TRUE    | TRUE, FALSE                                                                                                                            | \-                    |
| hess.control  | untyped   | \-      |                                                                                                                                        | \-                    |
| maxiter       | integer   | 30      |                                                                                                                                        | \\(-\infty, \infty)\\ |
| rel.tolerance | numeric   | 1e-09   |                                                                                                                                        | \\(-\infty, \infty)\\ |
| toler.chol    | numeric   | 1e-10   |                                                                                                                                        | \\(-\infty, \infty)\\ |
| debug         | integer   | 0       |                                                                                                                                        | \\\[0, 1\]\\          |
| outer.max     | integer   | 10      |                                                                                                                                        | \\(-\infty, \infty)\\ |
| times         | untyped   | \-      |                                                                                                                                        | \-                    |

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    `predict.flexsurvreg(type = "lp", ...)`. The interpretation whether
    higher lp corresponds to higher risk or higher survival, depends on
    the distribution choice (see `dist` parameter documentation).

2.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    `predict.flexsurvreg(type = "survival", ...)`.

3.  `crank`: same as `lp`.

4.  `response`: mean survival time calculated using
    `predict.flexsurvreg(type = "response", ...)`.

## References

Jackson, H. C (2016). “flexsurv: A Platform for Parametric Survival
Modeling in R.” *Journal of Statistical Software*, **70**(8), 1–33.
[doi:10.18637/JSS.V070.I08](https://doi.org/10.18637/JSS.V070.I08) ,
<https://www.jstatsoft.org/index.php/jss/article/view/v070i08>.

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvFlexReg`

## Methods

### Public methods

- [`LearnerSurvFlexReg$new()`](#method-LearnerSurvFlexReg-new)

- [`LearnerSurvFlexReg$clone()`](#method-LearnerSurvFlexReg-clone)

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

    LearnerSurvFlexReg$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvFlexReg$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
library(survival)

# Define the task, split to train/test set
task = tsk("lung")
set.seed(42)
part = partition(task)

# Define the learner
learner = lrn("surv.flexreg",
  formula = survival::Surv(time, status) ~ age + ph.karno + sex,
  anc = list(shape = ~ sex), dist = "weibull")

# Train the learner on the training ids
learner$train(task, part$train)
print(learner$model)
#> Call:
#> flexsurv::flexsurvreg(formula = form, anc = list(shape = ~sex), 
#>     data = task$data(), dist = "weibull", sr.control = list(iter.max = 30, 
#>         rel.tolerance = 1e-09, toler.chol = 1e-10, debug = 0, 
#>         maxiter = 30, outer.max = 10))
#> 
#> Estimates: 
#>              data mean  est        L95%       U95%       se         exp(est) 
#> shape               NA   1.71e+00   1.23e+00   2.39e+00   2.92e-01         NA
#> scale               NA   5.69e+02   7.83e+01   4.14e+03   5.76e+02         NA
#> age           6.34e+01  -5.94e-03  -2.52e-02   1.34e-02   9.85e-03   9.94e-01
#> ph.karno      8.23e+01   3.50e-03  -9.80e-03   1.68e-02   6.79e-03   1.00e+00
#> sexm          6.19e-01  -3.40e-01  -6.60e-01  -1.98e-02   1.63e-01   7.12e-01
#> shape(sexm)   6.19e-01  -2.61e-01  -6.62e-01   1.39e-01   2.04e-01   7.70e-01
#>              L95%       U95%     
#> shape               NA         NA
#> scale               NA         NA
#> age           9.75e-01   1.01e+00
#> ph.karno      9.90e-01   1.02e+00
#> sexm          5.17e-01   9.80e-01
#> shape(sexm)   5.16e-01   1.15e+00
#> 
#> N = 113,  Events: 80,  Censored: 33
#> Total time at risk: 34858
#> Log-likelihood = -555.8109, df = 6
#> AIC = 1123.622
#> 

# Make predictions for the test rows
predictions = learner$predict(task, part$test)
print(predictions)
#> 
#> ── <PredictionSurv> for 55 observations: ───────────────────────────────────────
#>  row_ids time status     crank        lp response     distr
#>        7  166   TRUE -5.887394 -5.887394 331.9114 <list[1]>
#>        8  170   TRUE -5.946115 -5.946115 351.9852 <list[1]>
#>       11  707   TRUE -5.805575 -5.805575 305.8360 <list[1]>
#>      ---  ---    ---       ---       ---      ---       ---
#>      158  185  FALSE -5.909842 -5.909842 339.4465 <list[1]>
#>      160  183   TRUE -5.833310 -5.833310 314.4371 <list[1]>
#>      161  211  FALSE -6.173711 -6.173711 428.0021 <list[1]>

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.5970395 
```
