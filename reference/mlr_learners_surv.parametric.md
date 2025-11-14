# Survival Fully Parametric Learner

Parametric survival model. Calls
[`survivalmodels::parametric()`](https://rdrr.io/pkg/survivalmodels/man/parametric.html)
from package 'survivalmodels'.

## Details

This learner allows you to choose a **distribution** and a **model
form** to compose a predicted survival probability distribution
\\S(t)\\.

The predict method is implemented in
[`survivalmodels::predict.parametric()`](https://rdrr.io/pkg/survivalmodels/man/predict.parametric.html).
Our implementation is more efficient for composition to distributions
than
[`survival::predict.survreg()`](https://rdrr.io/pkg/survival/man/predict.survreg.html).

The available model forms with their respective survival functions, are
as follows:

- Accelerated Failure Time (`aft`) \$\$S(t) = S_0(\frac{t}{exp(lp)})\$\$

- Proportional Hazards (`ph`) \$\$S(t) = S_0(t)^{exp(lp)}\$\$

- Proportional Odds (`po`) \$\$S(t) = \frac{S_0(t)}{exp(-lp) +
  (1-exp(-lp)) S_0(t)}\$\$

- Tobit (`tobit`) \$\$S(t) = 1 - \Phi((t - lp)/s)\$\$

where \\S_0\\ is the estimated baseline survival distribution (in this
case with a given parametric form), \\lp\\ is the predicted linear
predictor, \\\Phi\\ is the cdf of a \\N(0, 1)\\ distribution, and \\s\\
is the fitted scale parameter.

Whilst any combination of distribution and model form is possible, this
does not mean it will necessarily create a sensible or interpretable
prediction. The following combinations are 'sensible' (we note that ones
mostly used in the literature):

- dist = "gaussian"; form = "tobit";

- dist = "weibull"; form = "ph"; (fairly used)

- dist = "exponential"; form = "ph";

- dist = "weibull"; form = "aft"; (fairly used, **default option**)

- dist = "exponential"; form = "aft";

- dist = "loglogistic"; form = "aft"; (fairly used)

- dist = "lognormal"; form = "aft";

- dist = "loglogistic"; form = "po";

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector of linear predictors (relative risk scores), one per
    test observation. `lp` is predicted using the formula \\lp =
    X\beta\\ where \\X\\ are the variables in the test data set and
    \\\beta\\ are the fitted coefficients.

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. The distribution
    `distr` is composed using the `lp` predictions and specifying a
    model form in the `form` hyper-parameter, see Details. The survival
    matrix uses the unique time points from the training set. The
    parameter `ntime` allows to adjust the granularity of these time
    points to any number (e.g. `150`).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.parametric")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [survival](https://CRAN.R-project.org/package=survival)

## Parameters

|               |           |         |                                                        |                       |
|---------------|-----------|---------|--------------------------------------------------------|-----------------------|
| Id            | Type      | Default | Levels                                                 | Range                 |
| form          | character | aft     | aft, ph, po, tobit                                     | \-                    |
| na.action     | untyped   | \-      |                                                        | \-                    |
| dist          | character | weibull | weibull, exponential, gaussian, lognormal, loglogistic | \-                    |
| parms         | untyped   | \-      |                                                        | \-                    |
| init          | untyped   | \-      |                                                        | \-                    |
| scale         | numeric   | 0       |                                                        | \\\[0, \infty)\\      |
| maxiter       | integer   | 30      |                                                        | \\(-\infty, \infty)\\ |
| rel.tolerance | numeric   | 1e-09   |                                                        | \\(-\infty, \infty)\\ |
| toler.chol    | numeric   | 1e-10   |                                                        | \\(-\infty, \infty)\\ |
| debug         | integer   | 0       |                                                        | \\\[0, 1\]\\          |
| outer.max     | integer   | 10      |                                                        | \\(-\infty, \infty)\\ |
| robust        | logical   | FALSE   | TRUE, FALSE                                            | \-                    |
| score         | logical   | FALSE   | TRUE, FALSE                                            | \-                    |
| cluster       | untyped   | \-      |                                                        | \-                    |
| ntime         | integer   | NULL    |                                                        | \\\[1, \infty)\\      |
| round_time    | integer   | 2       |                                                        | \\\[0, \infty)\\      |

## Installation

Package 'survivalmodels' is not on CRAN and has to be install from
GitHub via `remotes::install_github("RaphaelS1/survivalmodels")`.

## References

Kalbfleisch, D J, Prentice, L R (2011). *The statistical analysis of
failure time data*. John Wiley & Sons.

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
-\> `LearnerSurvParametric`

## Methods

### Public methods

- [`LearnerSurvParametric$new()`](#method-LearnerSurvParametric-new)

- [`LearnerSurvParametric$clone()`](#method-LearnerSurvParametric-clone)

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
[R6](https://r6.r-lib.org/reference/R6Class.html) class. returned `risk`
from survivalmodels is PH-style ie higher value =\> higher risk

#### Usage

    LearnerSurvParametric$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvParametric$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
