# Classification MARS (Multivariate Adaptive Regression Splines) Learner

This is an alternative implementation of MARS (Multivariate Adaptive
Regression Splines). The classification problem is solved by 0-1
encoding of the two-class targets and setting the decision threshold to
p = 0.5 during the prediction phase. MARS is trademarked and thus not
used as the name. The name "earth" stands for "Enhanced Adaptive
Regression Through Hinges".

## Details

Methods for variance estimations are not yet implemented.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.earth")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [earth](https://CRAN.R-project.org/package=earth)

## Parameters

|                 |           |          |                                                                                                       |                       |
|-----------------|-----------|----------|-------------------------------------------------------------------------------------------------------|-----------------------|
| Id              | Type      | Default  | Levels                                                                                                | Range                 |
| wp              | untyped   | NULL     |                                                                                                       | \-                    |
| offset          | untyped   | NULL     |                                                                                                       | \-                    |
| keepxy          | logical   | FALSE    | TRUE, FALSE                                                                                           | \-                    |
| trace           | character | 0        | 0, .3, .5, 1, 2, 3, 4, 5                                                                              | \-                    |
| degree          | integer   | 1        |                                                                                                       | \\\[1, \infty)\\      |
| penalty         | numeric   | 2        |                                                                                                       | \\\[-1, \infty)\\     |
| nk              | untyped   | NULL     |                                                                                                       | \-                    |
| thresh          | numeric   | 0.001    |                                                                                                       | \\(-\infty, \infty)\\ |
| minspan         | numeric   | 0        |                                                                                                       | \\\[0, \infty)\\      |
| endspan         | numeric   | 0        |                                                                                                       | \\\[0, \infty)\\      |
| newvar.penalty  | numeric   | 0        |                                                                                                       | \\\[0, \infty)\\      |
| fast.k          | integer   | 20       |                                                                                                       | \\\[0, \infty)\\      |
| fast.beta       | integer   | 1        |                                                                                                       | \\\[0, 1\]\\          |
| linpreds        | untyped   | FALSE    |                                                                                                       | \-                    |
| allowed         | untyped   | \-       |                                                                                                       | \-                    |
| pmethod         | character | backward | backward, none, exhaustive, forward, seqrep, cv                                                       | \-                    |
| nprune          | integer   | \-       |                                                                                                       | \\\[0, \infty)\\      |
| nfold           | integer   | 0        |                                                                                                       | \\\[0, \infty)\\      |
| ncross          | integer   | 1        |                                                                                                       | \\\[0, \infty)\\      |
| stratify        | logical   | TRUE     | TRUE, FALSE                                                                                           | \-                    |
| varmod.method   | character | none     | none, const, lm, rlm, earth, gam, power, power0, x.lm, x.rlm, [...](https://rdrr.io/r/base/dots.html) | \-                    |
| varmod.exponent | numeric   | 1        |                                                                                                       | \\(-\infty, \infty)\\ |
| varmod.conv     | numeric   | 1        |                                                                                                       | \\\[0, 1\]\\          |
| varmod.clamp    | numeric   | 0.1      |                                                                                                       | \\(-\infty, \infty)\\ |
| varmod.minspan  | numeric   | -3       |                                                                                                       | \\(-\infty, \infty)\\ |
| Scale.y         | logical   | FALSE    | TRUE, FALSE                                                                                           | \-                    |
| Adjust.endspan  | numeric   | 2        |                                                                                                       | \\(-\infty, \infty)\\ |
| Auto.linpreds   | logical   | TRUE     | TRUE, FALSE                                                                                           | \-                    |
| Force.weights   | logical   | FALSE    | TRUE, FALSE                                                                                           | \-                    |
| Use.beta.cache  | logical   | TRUE     | TRUE, FALSE                                                                                           | \-                    |
| Force.xtx.prune | logical   | FALSE    | TRUE, FALSE                                                                                           | \-                    |
| Get.leverages   | logical   | TRUE     | TRUE, FALSE                                                                                           | \-                    |
| Exhaustive.tol  | numeric   | 1e-10    |                                                                                                       | \\(-\infty, \infty)\\ |

## References

Milborrow, Stephen, Hastie, T, Tibshirani, R (2014). “Earth:
multivariate adaptive regression spline models.” *R package version*,
**3**(7).

Friedman, H J (1991). “Multivariate adaptive regression splines.” *The
annals of statistics*, **19**(1), 1–67.

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

pkopper

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifEarth`

## Methods

### Public methods

- [`LearnerClassifEarth$new()`](#method-LearnerClassifEarth-new)

- [`LearnerClassifEarth$clone()`](#method-LearnerClassifEarth-clone)

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

    LearnerClassifEarth$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifEarth$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.earth")
print(learner)
#> 
#> ── <LearnerClassifEarth> (classif.earth): Multivariate Adaptive Splines ────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and earth
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: twoclass and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred

print(learner$model)
#> GLM (family binomial, link logit):
#>  nulldev  df       dev  df   devratio     AIC iters converged
#>  192.515 138   23.8725 124      0.876   53.87    10         1
#> 
#> Earth selected 15 of 21 terms, and 10 of 60 predictors
#> Termination condition: RSq changed by less than 0.001 at 21 terms
#> Importance: V49, V12, V23, V27, V44, V37, V11, V38, V39, V31, V1-unused, ...
#> Number of terms at each degree of interaction: 1 14 (additive model)
#> Earth GCV 0.09745576    RSS 8.483559    GRSq 0.6152679    RSq 0.7555525


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
