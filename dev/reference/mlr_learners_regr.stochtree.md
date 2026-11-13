# Stochastic Tree Ensemble BART Regression Learner

Bayesian additive regression trees (BART) sampled with MCMC, optionally
warm-started with the grow-from-root algorithm of accelerated BART
(XBART). Calls
[`stochtree::bart()`](https://rdrr.io/pkg/stochtree/man/bart.html) from
[stochtree](https://CRAN.R-project.org/package=stochtree).

The `"se"` predict type returns the posterior standard deviation of the
conditional mean. Leaf regression bases and random effects are not
supported.

## Custom mlr3 parameters

- [`stochtree::bart()`](https://rdrr.io/pkg/stochtree/man/bart.html)
  takes most of its parameters in the lists `general_params`,
  `mean_forest_params`, and `variance_forest_params`. The entries of
  these lists are exposed as individual hyperparameters. The entries of
  `general_params` and `mean_forest_params` keep their names. The
  entries of `variance_forest_params` whose names clash with those of
  the mean forest are prefixed with `variance_`, i.e.,
  `variance_num_trees`, `variance_alpha`, `variance_beta`,
  `variance_min_samples_leaf`, `variance_max_depth`,
  `variance_keep_vars`, `variance_drop_vars`, and
  `variance_num_features_subsample`.

- `random_seed`: If not set, the seed of the C++ random number generator
  is drawn from R's random number generator, so that results are
  reproducible with [`set.seed()`](https://rdrr.io/r/base/Random.html).
  Upstream seeds from `std::random_device` in this case.

- `observation_weights` is not exposed as a hyperparameter. Observation
  weights are taken from the task instead, see the `weights` property.

## Saving a Learner

The fitted model holds pointers to C++ objects. In order to save a
trained learner, or to use it with encapsulation or parallelization, the
model is marshaled to a JSON string with
[`stochtree::saveBARTModelToJsonString()`](https://rdrr.io/pkg/stochtree/man/BARTSerialization.html).
Call `$marshal()` before saving the learner with
[`saveRDS()`](https://rdrr.io/r/base/readRDS.html) and `$unmarshal()`
after reading it.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.stochtree")

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
| random_seed | integer | \- |  | \\\[0, \infty)\\ |
| keep_burnin | logical | FALSE | TRUE, FALSE | \- |
| keep_gfr | logical | FALSE | TRUE, FALSE | \- |
| keep_every | integer | 1 |  | \\\[1, \infty)\\ |
| num_chains | integer | 1 |  | \\\[1, \infty)\\ |
| verbose | logical | FALSE | TRUE, FALSE | \- |
| num_threads | integer | 1 |  | \\\[1, \infty)\\ |
| num_trees | integer | 200 |  | \\\[0, \infty)\\ |
| alpha | numeric | 0.95 |  | \\\[0, 1\]\\ |
| beta | numeric | 2 |  | \\\[0, \infty)\\ |
| min_samples_leaf | integer | 5 |  | \\\[1, \infty)\\ |
| max_depth | integer | 10 |  | \\\[-1, \infty)\\ |
| sample_sigma2_leaf | logical | TRUE | TRUE, FALSE | \- |
| sigma2_leaf_init | numeric | \- |  | \\\[0, \infty)\\ |
| sigma2_leaf_shape | numeric | 3 |  | \\\[0, \infty)\\ |
| sigma2_leaf_scale | numeric | \- |  | \\\[0, \infty)\\ |
| keep_vars | untyped | NULL |  | \- |
| drop_vars | untyped | NULL |  | \- |
| num_features_subsample | integer | \- |  | \\\[1, \infty)\\ |
| variance_num_trees | integer | 0 |  | \\\[0, \infty)\\ |
| variance_alpha | numeric | 0.95 |  | \\\[0, 1\]\\ |
| variance_beta | numeric | 2 |  | \\\[0, \infty)\\ |
| variance_min_samples_leaf | integer | 5 |  | \\\[1, \infty)\\ |
| variance_max_depth | integer | 10 |  | \\\[-1, \infty)\\ |
| leaf_prior_calibration_param | numeric | 1.5 |  | \\\[0, \infty)\\ |
| var_forest_leaf_init | numeric | \- |  | \\(-\infty, \infty)\\ |
| var_forest_prior_shape | numeric | \- |  | \\\[0, \infty)\\ |
| var_forest_prior_scale | numeric | \- |  | \\\[0, \infty)\\ |
| variance_keep_vars | untyped | NULL |  | \- |
| variance_drop_vars | untyped | NULL |  | \- |
| variance_num_features_subsample | integer | \- |  | \\\[1, \infty)\\ |

## References

Chipman, A H, George, I E, McCulloch, E R (2010). “BART: Bayesian
additive regression trees.” *The Annals of Applied Statistics*,
**4**(1), 266–298.

He, Jingyu, Hahn, Richard P (2023). “Stochastic Tree Ensembles for
Regularized Nonlinear Regression.” *Journal of the American Statistical
Association*, **118**(541), 551–570.
[doi:10.1080/01621459.2021.1942012](https://doi.org/10.1080/01621459.2021.1942012)
.

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
-\> `LearnerRegrStochtree`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrStochtree$new()`](#method-LearnerRegrStochtree-initialize)

- [`LearnerRegrStochtree$marshal()`](#method-LearnerRegrStochtree-marshal)

- [`LearnerRegrStochtree$unmarshal()`](#method-LearnerRegrStochtree-unmarshal)

- [`LearnerRegrStochtree$clone()`](#method-LearnerRegrStochtree-clone)

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

### `LearnerRegrStochtree$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrStochtree$new()

------------------------------------------------------------------------

### `LearnerRegrStochtree$marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrStochtree$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrStochtree$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrStochtree$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrStochtree$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrStochtree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.stochtree")
print(learner)
#> 
#> ── <LearnerRegrStochtree> (regr.stochtree): Stochastic Tree Ensemble BART ──────
#> • Model: -
#> • Parameters: list()
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

print(learner$model)
#> stochtree::bart() run with mean forest, global error variance model, and mean forest leaf scale model
#> Continuous outcome was modeled as Gaussian with a constant leaf prior for the mean forest
#> Outcome was standardized
#> The sampler was run for 5 GFR iterations, with 1 chain of 0 burn-in iterations and 100 MCMC iterations, retaining every iteration (i.e. no thinning) 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.15014 
```
