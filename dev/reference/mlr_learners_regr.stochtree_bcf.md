# Stochastic Tree Ensemble Bayesian Causal Forest Regression Learner

Bayesian causal forest (BCF) sampled with MCMC, optionally warm-started
with the grow-from-root algorithm of accelerated BCF (XBCF). Calls
[`stochtree::bcf()`](https://rdrr.io/pkg/stochtree/man/bcf.html) from
[stochtree](https://CRAN.R-project.org/package=stochtree).

The model decomposes the outcome into a prognostic forest and a
treatment effect forest, i.e., `y = mu(x) + tau(x) * z`, where `z` is
the treatment. As mlr3 has no task type for causal inference, the
treatment is a feature of the regression task that is selected with the
`treatment` parameter. The learner predicts the outcome given the
covariates and the observed treatment, so resampling and tuning evaluate
the outcome prediction and not the treatment effect. The estimated
conditional average treatment effect is returned by the
`$treatment_effect()` method.

The `"se"` predict type returns the posterior standard deviation of the
conditional mean. Propensity scores are estimated internally by
[`stochtree::bcf()`](https://rdrr.io/pkg/stochtree/man/bcf.html). Random
effects are not supported.

## Custom mlr3 parameters

- `treatment`: Name of the feature that contains the treatment. The
  feature must be logical, integer, or numeric, and is passed as
  `Z_train` to
  [`stochtree::bcf()`](https://rdrr.io/pkg/stochtree/man/bcf.html). All
  other features are used as covariates. This parameter is required.

- [`stochtree::bcf()`](https://rdrr.io/pkg/stochtree/man/bcf.html) takes
  most of its parameters in the lists `general_params`,
  `prognostic_forest_params`, `treatment_effect_forest_params`, and
  `variance_forest_params`. The entries of these lists are exposed as
  individual hyperparameters. The entries of `general_params` keep their
  names. The entries of the forest lists that occur in more than one
  list are prefixed with `prognostic_`, `treatment_`, and `variance_`,
  e.g., `prognostic_num_trees`, `treatment_num_trees`, and
  `variance_num_trees`. All other entries of the forest lists keep their
  names.

- `random_seed`: If not set, the seed of the C++ random number generator
  is drawn from R's random number generator. Upstream seeds from
  `std::random_device` in this case.

## Reproducibility

[`stochtree::bcf()`](https://rdrr.io/pkg/stochtree/man/bcf.html)
estimates the propensity scores with an internal BART model that is
always seeded from `std::random_device`. Results are therefore only
reproducible with [`set.seed()`](https://rdrr.io/r/base/Random.html) or
`random_seed` when `propensity_covariate` is `"none"`, in which case no
propensity model is fitted.

- `observation_weights` is not exposed as a hyperparameter. Observation
  weights are taken from the task instead, see the `weights` property.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.stochtree_bcf")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [stochtree](https://CRAN.R-project.org/package=stochtree)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| treatment | untyped | \- |  | \- |
| num_gfr | integer | 5 |  | \\\[0, \infty)\\ |
| num_burnin | integer | 0 |  | \\\[0, \infty)\\ |
| num_mcmc | integer | 100 |  | \\\[0, \infty)\\ |
| cutpoint_grid_size | integer | 100 |  | \\\[1, \infty)\\ |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| sample_sigma2_global | logical | TRUE | TRUE, FALSE | \- |
| sigma2_global_init | numeric | \- |  | \\\[0, \infty)\\ |
| sigma2_global_shape | numeric | 0 |  | \\\[0, \infty)\\ |
| sigma2_global_scale | numeric | 0 |  | \\\[0, \infty)\\ |
| variable_weights | untyped | NULL |  | \- |
| propensity_covariate | character | prognostic | none, prognostic, treatment_effect, both | \- |
| adaptive_coding | logical | FALSE | TRUE, FALSE | \- |
| control_coding_init | numeric | -0.5 |  | \\(-\infty, \infty)\\ |
| treated_coding_init | numeric | 0.5 |  | \\(-\infty, \infty)\\ |
| random_seed | integer | \- |  | \\\[0, \infty)\\ |
| keep_burnin | logical | FALSE | TRUE, FALSE | \- |
| keep_gfr | logical | FALSE | TRUE, FALSE | \- |
| keep_every | integer | 1 |  | \\\[1, \infty)\\ |
| num_chains | integer | 1 |  | \\\[1, \infty)\\ |
| verbose | logical | FALSE | TRUE, FALSE | \- |
| num_threads | integer | 1 |  | \\\[1, \infty)\\ |
| prognostic_num_trees | integer | 250 |  | \\\[0, \infty)\\ |
| prognostic_alpha | numeric | 0.95 |  | \\\[0, 1\]\\ |
| prognostic_beta | numeric | 2 |  | \\\[0, \infty)\\ |
| prognostic_min_samples_leaf | integer | 5 |  | \\\[1, \infty)\\ |
| prognostic_max_depth | integer | 10 |  | \\\[-1, \infty)\\ |
| prognostic_sample_sigma2_leaf | logical | TRUE | TRUE, FALSE | \- |
| prognostic_sigma2_leaf_init | numeric | \- |  | \\\[0, \infty)\\ |
| prognostic_sigma2_leaf_shape | numeric | 3 |  | \\\[0, \infty)\\ |
| prognostic_sigma2_leaf_scale | numeric | \- |  | \\\[0, \infty)\\ |
| prognostic_keep_vars | untyped | NULL |  | \- |
| prognostic_drop_vars | untyped | NULL |  | \- |
| prognostic_num_features_subsample | integer | \- |  | \\\[1, \infty)\\ |
| treatment_num_trees | integer | 100 |  | \\\[0, \infty)\\ |
| treatment_alpha | numeric | 0.25 |  | \\\[0, 1\]\\ |
| treatment_beta | numeric | 3 |  | \\\[0, \infty)\\ |
| treatment_min_samples_leaf | integer | 5 |  | \\\[1, \infty)\\ |
| treatment_max_depth | integer | 5 |  | \\\[-1, \infty)\\ |
| treatment_sample_sigma2_leaf | logical | FALSE | TRUE, FALSE | \- |
| treatment_sigma2_leaf_init | numeric | \- |  | \\\[0, \infty)\\ |
| treatment_sigma2_leaf_shape | numeric | 3 |  | \\\[0, \infty)\\ |
| treatment_sigma2_leaf_scale | numeric | \- |  | \\\[0, \infty)\\ |
| treatment_keep_vars | untyped | NULL |  | \- |
| treatment_drop_vars | untyped | NULL |  | \- |
| treatment_num_features_subsample | integer | \- |  | \\\[1, \infty)\\ |
| sample_intercept | logical | TRUE | TRUE, FALSE | \- |
| tau_0_prior_var | numeric | \- |  | \\\[0, \infty)\\ |
| variance_num_trees | integer | 0 |  | \\\[0, \infty)\\ |
| variance_alpha | numeric | 0.95 |  | \\\[0, 1\]\\ |
| variance_beta | numeric | 2 |  | \\\[0, \infty)\\ |
| variance_min_samples_leaf | integer | 5 |  | \\\[1, \infty)\\ |
| variance_max_depth | integer | 10 |  | \\\[-1, \infty)\\ |
| variance_keep_vars | untyped | NULL |  | \- |
| variance_drop_vars | untyped | NULL |  | \- |
| variance_num_features_subsample | integer | \- |  | \\\[1, \infty)\\ |
| leaf_prior_calibration_param | numeric | 1.5 |  | \\\[0, \infty)\\ |
| variance_forest_init | numeric | \- |  | \\(-\infty, \infty)\\ |
| var_forest_prior_shape | numeric | \- |  | \\\[0, \infty)\\ |
| var_forest_prior_scale | numeric | \- |  | \\\[0, \infty)\\ |

## Saving a Learner

The fitted model holds pointers to C++ objects. In order to save a
trained learner, or to use it with encapsulation or parallelization, the
model is marshaled to a JSON string with
[`stochtree::saveBARTModelToJsonString()`](https://rdrr.io/pkg/stochtree/man/BARTSerialization.html).
Call `$marshal()` before saving the learner with
[`saveRDS()`](https://rdrr.io/r/base/readRDS.html) and `$unmarshal()`
after reading it.

## References

Hahn, Richard P, Murray, S. J, Carvalho, M. C (2020). “Bayesian
Regression Tree Models for Causal Inference: Regularization,
Confounding, and Heterogeneous Effects (with Discussion).” *Bayesian
Analysis*, **15**(3), 965–1056.
[doi:10.1214/19-BA1195](https://doi.org/10.1214/19-BA1195) .

Krantsevich, Nikolay, He, Jingyu, Hahn, Richard P (2023). “Stochastic
Tree Ensembles for Estimating Heterogeneous Effects.” In *Proceedings of
The 26th International Conference on Artificial Intelligence and
Statistics*, volume 206 series Proceedings of Machine Learning Research,
6120–6131.

Herren, Drew, Hahn, Richard, Murray, Jared, Carvalho, Carlos, He, Jingyu
(2026). *stochtree: Stochastic Tree Ensembles (XBART and BART) for
Supervised Learning and Causal Inference*.
[doi:10.32614/CRAN.package.stochtree](https://doi.org/10.32614/CRAN.package.stochtree)
. R package version 0.4.5.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrStochtreeBCF`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrStochtreeBCF$new()`](#method-LearnerRegrStochtreeBCF-initialize)

- [`LearnerRegrStochtreeBCF$treatment_effect()`](#method-LearnerRegrStochtreeBCF-treatment_effect)

- [`LearnerRegrStochtreeBCF$marshal()`](#method-LearnerRegrStochtreeBCF-marshal)

- [`LearnerRegrStochtreeBCF$unmarshal()`](#method-LearnerRegrStochtreeBCF-unmarshal)

- [`LearnerRegrStochtreeBCF$clone()`](#method-LearnerRegrStochtreeBCF-clone)

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

### `LearnerRegrStochtreeBCF$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrStochtreeBCF$new()

------------------------------------------------------------------------

### `LearnerRegrStochtreeBCF$treatment_effect()`

Estimates the conditional average treatment effect `tau(x)`.

#### Usage

    LearnerRegrStochtreeBCF$treatment_effect(task, row_ids = NULL)

#### Arguments

- `task`:

  ([mlr3::TaskRegr](https://mlr3.mlr-org.com/reference/TaskRegr.html))  
  Task with the same features as the training task.

- `row_ids`:

  ([`integer()`](https://rdrr.io/r/base/integer.html))  
  Rows of the task to estimate the treatment effect for. If `NULL`
  (default), the rows with role `"use"` are used.

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html) with the posterior
mean of the treatment effect of each row.

------------------------------------------------------------------------

### `LearnerRegrStochtreeBCF$marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrStochtreeBCF$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrStochtreeBCF$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrStochtreeBCF$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrStochtreeBCF$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrStochtreeBCF$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner, the treatment is a feature of the task
learner = lrn("regr.stochtree_bcf", treatment = "am")
print(learner)
#> 
#> ── <LearnerRegrStochtreeBCF> (regr.stochtree_bcf): Stochastic Tree Ensemble Baye
#> • Model: -
#> • Parameters: treatment=am
#> • Packages: mlr3, mlr3extralearners, and stochtree
#> • Predict Types: [response] and se
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

# Make predictions of the outcome for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.334287 

# Estimate the conditional average treatment effect for the test rows
learner$treatment_effect(task, row_ids = ids$test)
#>  [1] 3.618236 3.392599 4.106435 3.859465 3.483118 3.493095 3.408858 3.417899
#>  [9] 4.240725 3.468131 4.139720
```
