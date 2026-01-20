# Generalized Linear Regression

Generalized linear model. Calls
[`stats::glm()`](https://rdrr.io/r/stats/glm.html) from base package
'stats'. For logistic regression please use
[`mlr_learners_classif.log_reg`](https://mlr3learners.mlr-org.com/reference/mlr_learners_classif.log_reg.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.glm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  'stats'

## Parameters

|                 |           |          |                                                                       |                       |
|-----------------|-----------|----------|-----------------------------------------------------------------------|-----------------------|
| Id              | Type      | Default  | Levels                                                                | Range                 |
| singular.ok     | logical   | TRUE     | TRUE, FALSE                                                           | \-                    |
| x               | logical   | FALSE    | TRUE, FALSE                                                           | \-                    |
| y               | logical   | TRUE     | TRUE, FALSE                                                           | \-                    |
| model           | logical   | TRUE     | TRUE, FALSE                                                           | \-                    |
| etastart        | untyped   | \-       |                                                                       | \-                    |
| mustart         | untyped   | \-       |                                                                       | \-                    |
| start           | untyped   | NULL     |                                                                       | \-                    |
| family          | character | gaussian | gaussian, poisson, quasipoisson, Gamma, inverse.gaussian              | \-                    |
| na.action       | character | \-       | na.omit, na.pass, na.fail, na.exclude                                 | \-                    |
| link            | character | \-       | logit, probit, cauchit, cloglog, identity, log, sqrt, 1/mu^2, inverse | \-                    |
| epsilon         | numeric   | 1e-08    |                                                                       | \\(-\infty, \infty)\\ |
| maxit           | numeric   | 25       |                                                                       | \\(-\infty, \infty)\\ |
| trace           | logical   | FALSE    | TRUE, FALSE                                                           | \-                    |
| dispersion      | untyped   | NULL     |                                                                       | \-                    |
| type            | character | link     | response, link, terms                                                 | \-                    |
| use_pred_offset | logical   | TRUE     | TRUE, FALSE                                                           | \-                    |

## Initial parameter values

- `type`

  - Actual default: `"link"`

  - Adjusted default: `"response"`

  - Reason for change: Response scale more natural for predictions.

## Offset

If a `Task` has a column with the role `offset`, it will automatically
be used during training. The offset is incorporated through the formula
interface to ensure compatibility with
[`stats::glm()`](https://rdrr.io/r/stats/glm.html). We add it to the
model formula as `offset(<column_name>)` and also include it in the
training data. During prediction, the default behavior is to use the
offset column from the test set (enabled by `use_pred_offset = TRUE`).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

## References

Hosmer Jr, W D, Lemeshow, Stanley, Sturdivant, X R (2013). *Applied
logistic regression*, volume 398. John Wiley & Sons.

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

salauer

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGlm`

## Methods

### Public methods

- [`LearnerRegrGlm$new()`](#method-LearnerRegrGlm-new)

- [`LearnerRegrGlm$clone()`](#method-LearnerRegrGlm-clone)

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

    LearnerRegrGlm$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGlm$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.glm")
print(learner)
#> 
#> ── <LearnerRegrGlm> (regr.glm): Generalized Linear Regression ──────────────────
#> • Model: -
#> • Parameters: family=gaussian, type=response, use_pred_offset=TRUE
#> • Packages: mlr3, mlr3extralearners, and stats
#> • Predict Types: [response] and se
#> • Feature Types: logical, integer, numeric, character, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: offset and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:  stats::glm(formula = form, family = structure(list(family = "gaussian", 
#>     link = "identity", linkfun = function (mu) 
#>     mu, linkinv = function (eta) 
#>     eta, variance = function (mu) 
#>     rep.int(1, length(mu)), dev.resids = function (y, mu, wt) 
#>     wt * ((y - mu)^2), aic = function (y, n, mu, wt, dev) 
#>     {
#>         nobs <- length(y)
#>         nobs * (log(dev/nobs * 2 * pi) + 1) + 2 - sum(log(wt))
#>     }, mu.eta = function (eta) 
#>     rep.int(1, length(eta)), initialize = expression({
#>         n <- rep.int(1, nobs)
#>         if (is.null(etastart) && is.null(start) && is.null(mustart) && 
#>             ((family$link == "inverse" && any(y == 0)) || (family$link == 
#>                 "log" && any(y <= 0)))) 
#>             stop("cannot find valid starting values: please specify some")
#>         mustart <- y
#>     }), validmu = function (mu) 
#>     TRUE, valideta = function (eta) 
#>     TRUE, dispersion = NA_real_), class = "family"), data = data)
#> 
#> Coefficients:
#> (Intercept)           am         carb          cyl         disp         drat  
#>    30.60469      3.31572      0.42583     -1.04809      0.03087     -1.51732  
#>        gear           hp         qsec           vs           wt  
#>     0.06741     -0.04084      0.56537      0.94409     -3.87424  
#> 
#> Degrees of Freedom: 20 Total (i.e. Null);  10 Residual
#> Null Deviance:       646.4 
#> Residual Deviance: 88.72     AIC: 113.9


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.29573 
```
