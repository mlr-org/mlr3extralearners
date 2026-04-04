# Competing Risks Cox Learner with Likelihood Based Boosting

Fits a competing risks Cox model using likelihood based boosting. Calls
[`CoxBoost::CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/CoxBoost.html)
or
[`CoxBoost::cv.CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/cv.CoxBoost.html)
from package [CoxBoost](https://CRAN.R-project.org/package=CoxBoost).
Predicts cumulative incidence functions (one CIF matrix per cause, rows
= observations, columns = times). If `times` are not provided for
prediction, the unique event times (across causes) from the training set
are used by default.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("cmprsk.coxboost")

## Meta Information

- Task type: “cmprsk”

- Predict Types: “cif”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3cmprsk](https://CRAN.R-project.org/package=mlr3cmprsk),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [CoxBoost](https://CRAN.R-project.org/package=CoxBoost)

## Parameters

|                 |           |         |                                |                       |
|-----------------|-----------|---------|--------------------------------|-----------------------|
| Id              | Type      | Default | Levels                         | Range                 |
| cv              | logical   | \-      | TRUE, FALSE                    | \-                    |
| maxstepno       | integer   | 100     |                                | \\\[0, \infty)\\      |
| K               | integer   | 10      |                                | \\\[2, \infty)\\      |
| type            | character | verweij | verweij, naive                 | \-                    |
| folds           | untyped   | NULL    |                                | \-                    |
| minstepno       | integer   | 50      |                                | \\\[0, \infty)\\      |
| start.penalty   | numeric   | \-      |                                | \\(-\infty, \infty)\\ |
| iter.max        | integer   | 10      |                                | \\\[1, \infty)\\      |
| upper.margin    | numeric   | 0.05    |                                | \\\[0, 1\]\\          |
| unpen.index     | untyped   | \-      |                                | \-                    |
| standardize     | logical   | TRUE    | TRUE, FALSE                    | \-                    |
| stepno          | integer   | 100     |                                | \\\[0, \infty)\\      |
| penalty         | numeric   | \-      |                                | \\(-\infty, \infty)\\ |
| criterion       | character | pscore  | pscore, score, hpscore, hscore | \-                    |
| stepsize.factor | numeric   | 1       |                                | \\(-\infty, \infty)\\ |
| sf.scheme       | character | sigmoid | sigmoid, linear                | \-                    |
| pendistmat      | untyped   | \-      |                                | \-                    |
| connected.index | untyped   | \-      |                                | \-                    |
| x.is.01         | logical   | FALSE   | TRUE, FALSE                    | \-                    |
| return.score    | logical   | TRUE    | TRUE, FALSE                    | \-                    |
| trace           | logical   | FALSE   | TRUE, FALSE                    | \-                    |
| cmprsk          | character | \-      | csh, ccsh                      | \-                    |
| coupled.strata  | logical   | TRUE    | TRUE, FALSE                    | \-                    |
| at.step         | untyped   | \-      |                                | \-                    |
| times           | untyped   | \-      |                                | \-                    |

## Custom mlr3 parameters

- `cv`: If `TRUE`, uses cross-validation with
  [`CoxBoost::cv.CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/cv.CoxBoost.html)
  to select the optimal number of boosting steps, then refits the final
  model using
  [`CoxBoost::CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/CoxBoost.html)
  with this value. Initialized to `FALSE` by default.

- `penalty`: If set to `"optimCoxBoostPenalty"`, uses
  [`CoxBoost::optimCoxBoostPenalty()`](https://rdrr.io/pkg/CoxBoost/man/optimCoxBoostPenalty.html)
  to determine the optimal penalty value and number of steps (via
  [`CoxBoost::cv.CoxBoost()`](https://rdrr.io/pkg/CoxBoost/man/cv.CoxBoost.html))
  for the final model.

## Initial parameter values

- `cmprsk`: Type of competing risks analysis. Initialized to `"csh"`
  (**cause-specific hazards**) which models each cause separately,
  treating other causes as censored. `"ccsh"` (**combined cause-specific
  hazards**) is another option which combines information across causes
  for variable selection using a joint criterion.

## References

Binder, Harald, Allignol, Arthur, Schumacher, Martin, Beyersmann, Jan
(2009). “Boosting for high-dimensional time-to-event data with competing
risks.” *Bioinformatics*, **25**(7), 890–896.

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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
[`mlr3cmprsk::LearnerCompRisks`](https://rdrr.io/pkg/mlr3cmprsk/man/LearnerCompRisks.html)
-\> `LearnerCompRisksCoxboost`

## Methods

### Public methods

- [`LearnerCompRisksCoxboost$new()`](#method-LearnerCompRisksCoxboost-new)

- [`LearnerCompRisksCoxboost$selected_features()`](#method-LearnerCompRisksCoxboost-selected_features)

- [`LearnerCompRisksCoxboost$clone()`](#method-LearnerCompRisksCoxboost-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerCompRisksCoxboost$new()

------------------------------------------------------------------------

### Method `selected_features()`

Returns the set of cause-specific selected features which have non-zero
coefficients. Calls the internal `coef.CoxBoost()` function.

#### Usage

    LearnerCompRisksCoxboost$selected_features(at_step = NULL, cause = 1)

#### Arguments

- `at_step`:

  (`integer(1)`)  
  Which boosting step to get the coefficients for. If no step is given
  (default), the final boosting step is used.

- `cause`:

  (`integer(1)`)  
  Integer value indicating the event of interest.

#### Returns

([`character()`](https://rdrr.io/r/base/character.html)) vector of
feature names.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerCompRisksCoxboost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("cmprsk.coxboost", stepno = 10)
print(learner)
#> 
#> ── <LearnerCompRisksCoxboost> (cmprsk.coxboost): Likelihood-based Boosting for C
#> • Model: -
#> • Parameters: cv=FALSE, stepno=10, cmprsk=csh
#> • Packages: mlr3, mlr3cmprsk, mlr3extralearners, and CoxBoost
#> • Predict Types: [cif]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: selected_features and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("pbc")
task$col_roles$feature = c("age", "chol", "copper", "platelet", "trig",
 "albumin", "alk.phos", "ast", "bili", "protime")

# Stratification based on event
task$set_col_roles(cols = "status", add_to = "stratum")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> cause '1':
#> 10 boosting steps resulting in 2 non-zero coefficients  
#> partial log-likelihood: -51.63405 
#> 
#> cause '2':
#> 10 boosting steps resulting in 7 non-zero coefficients  
#> partial log-likelihood: -293.6982 
print(learner$selected_features(cause = 1)) # for cause = 1
#> [1] "age"    "copper"
print(learner$selected_features(cause = 2)) # for cause = 2
#> [1] "age"      "copper"   "platelet" "albumin"  "ast"      "bili"     "protime" 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> cmprsk.auc 
#>  0.9139699 
```
