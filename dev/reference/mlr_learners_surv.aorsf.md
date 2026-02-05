# Accelerated Oblique Random Survival Forest Learner

Accelerated oblique random survival forest. Calls
[`aorsf::orsf()`](https://docs.ropensci.org/aorsf/reference/orsf.html)
from [aorsf](https://CRAN.R-project.org/package=aorsf). Note that
although the learner has the property `"missing"` and it can in
principle deal with missing values, the behaviour has to be configured
using the parameter `na_action`.

## Initial parameter values

- `n_thread`: This parameter is initialized to 1 (default is 0) to avoid
  conflicts with the mlr3 parallelization.

&nbsp;

- `mtry`:

  - This hyperparameter can alternatively be set via the added
    hyperparameter `mtry_ratio` as
    `mtry = max(ceiling(mtry_ratio * n_features), 1)`. Note that `mtry`
    and `mtry_ratio` are mutually exclusive.

## Prediction types

This learner returns three prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and (unique event) time points in columns.
    Calculated using the internal `predict.ObliqueForest()` function.

2.  `response`: the restricted mean survival time of each test
    observation, derived from the survival matrix prediction (`distr`).

3.  `crank`: the expected mortality using
    [`mlr3proba::surv_return()`](https://mlr3proba.mlr-org.com/reference/surv_return.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.aorsf")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “response”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [aorsf](https://CRAN.R-project.org/package=aorsf)

## Parameters

|                         |           |         |                              |                       |
|-------------------------|-----------|---------|------------------------------|-----------------------|
| Id                      | Type      | Default | Levels                       | Range                 |
| n_tree                  | integer   | 500     |                              | \\\[1, \infty)\\      |
| n_split                 | integer   | 5       |                              | \\\[1, \infty)\\      |
| n_retry                 | integer   | 3       |                              | \\\[0, \infty)\\      |
| n_thread                | integer   | \-      |                              | \\\[0, \infty)\\      |
| pred_aggregate          | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| pred_simplify           | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| oobag                   | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| mtry                    | integer   | NULL    |                              | \\\[1, \infty)\\      |
| mtry_ratio              | numeric   | \-      |                              | \\\[0, 1\]\\          |
| sample_with_replacement | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| sample_fraction         | numeric   | 0.632   |                              | \\\[0, 1\]\\          |
| control_type            | character | fast    | fast, cph, net, custom       | \-                    |
| control_custom_fun      | untyped   | \-      |                              | \-                    |
| split_rule              | character | logrank | logrank, cstat               | \-                    |
| control_fast_do_scale   | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| control_fast_ties       | character | efron   | efron, breslow               | \-                    |
| control_cph_ties        | character | efron   | efron, breslow               | \-                    |
| control_cph_eps         | numeric   | 1e-09   |                              | \\\[0, \infty)\\      |
| control_cph_iter_max    | integer   | 20      |                              | \\\[1, \infty)\\      |
| control_net_alpha       | numeric   | 0.5     |                              | \\(-\infty, \infty)\\ |
| control_net_df_target   | integer   | NULL    |                              | \\\[1, \infty)\\      |
| leaf_min_events         | integer   | 1       |                              | \\\[1, \infty)\\      |
| leaf_min_obs            | integer   | 5       |                              | \\\[1, \infty)\\      |
| split_min_events        | integer   | 5       |                              | \\\[1, \infty)\\      |
| split_min_obs           | integer   | 10      |                              | \\\[1, \infty)\\      |
| split_min_stat          | numeric   | NULL    |                              | \\\[0, \infty)\\      |
| oobag_pred_type         | character | risk    | none, surv, risk, chf, mort  | \-                    |
| importance              | character | anova   | none, anova, negate, permute | \-                    |
| importance_max_pvalue   | numeric   | 0.01    |                              | \\\[1e-04, 0.9999\]\\ |
| tree_seeds              | integer   | NULL    |                              | \\\[1, \infty)\\      |
| oobag_pred_horizon      | numeric   | NULL    |                              | \\\[0, \infty)\\      |
| oobag_eval_every        | integer   | NULL    |                              | \\\[1, \infty)\\      |
| oobag_fun               | untyped   | NULL    |                              | \-                    |
| attach_data             | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| verbose_progress        | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| na_action               | character | fail    | fail, impute_meanmode        | \-                    |

## References

Jaeger BC, Long DL, Long DM, Sims M, Szychowski JM, Min Y, Mcclure LA,
Howard G, Simon N (2019). “Oblique random survival forests.” *The Annals
of Applied Statistics*, **13**(3).
[doi:10.1214/19-aoas1261](https://doi.org/10.1214/19-aoas1261) .

Jaeger BC, Welden S, Lenoir K, Speiser JL, Segar MW, Pandey A, Pajewski
NM (2023). “Accelerated and interpretable oblique random survival
forests.” *Journal of Computational and Graphical Statistics*, 1–16.
[doi:10.1080/10618600.2023.2231048](https://doi.org/10.1080/10618600.2023.2231048)
.

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

bcjaeger

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvAorsf`

## Methods

### Public methods

- [`LearnerSurvAorsf$new()`](#method-LearnerSurvAorsf-new)

- [`LearnerSurvAorsf$oob_error()`](#method-LearnerSurvAorsf-oob_error)

- [`LearnerSurvAorsf$importance()`](#method-LearnerSurvAorsf-importance)

- [`LearnerSurvAorsf$clone()`](#method-LearnerSurvAorsf-clone)

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

    LearnerSurvAorsf$new()

------------------------------------------------------------------------

### Method `oob_error()`

OOB concordance error extracted from the model slot
`eval_oobag$stat_values`

#### Usage

    LearnerSurvAorsf$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model.

#### Usage

    LearnerSurvAorsf$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvAorsf$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.aorsf")
print(learner)
#> 
#> ── <LearnerSurvAorsf> (surv.aorsf): Oblique Random Forest ──────────────────────
#> • Model: -
#> • Parameters: n_thread=1
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and aorsf
#> • Predict Types: [crank], distr, and response
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, oob_error, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> ---------- Oblique random survival forest
#> 
#>      Linear combinations: Accelerated Cox regression
#>           N observations: 670
#>                 N events: 220
#>                  N trees: 500
#>       N predictors total: 6
#>    N predictors per node: 3
#>  Average leaves per tree: 40.224
#> Min observations in leaf: 5
#>       Min events in leaf: 1
#>           OOB stat value: 0.84
#>            OOB stat type: Harrell's C-index
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#> revascdays     revasc        los        age   stchange      sysbp 
#> 0.57762758 0.54537307 0.24134335 0.19714588 0.11599941 0.09193792 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8378683 
```
