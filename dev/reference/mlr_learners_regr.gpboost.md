# Regression GPBoost Learner

Tree-boosting combined with Gaussian process and grouped random effects
models. Calls
[`gpboost::gpb.train()`](https://rdrr.io/pkg/gpboost/man/gpb.train.html)
from [gpboost](https://CRAN.R-project.org/package=gpboost).

The random effects model is specified with the custom parameters
`group_data_cols` and `gp_coords_cols`. If neither is set, a plain
gradient boosting model is fitted. The boosting parameters are
documented
[here](https://gpboost.readthedocs.io/en/latest/Parameters.html) and in
the documentation of
[`gpboost::gpb.train()`](https://rdrr.io/pkg/gpboost/man/gpb.train.html).
The parameters of the random effects model are documented in
[`gpboost::GPModel()`](https://rdrr.io/pkg/gpboost/man/GPModel.html).

## Custom mlr3 parameters

- `group_data_cols`: Names of features that define grouped random
  effects, one random intercept per column. The columns are passed to
  [`gpboost::GPModel()`](https://rdrr.io/pkg/gpboost/man/GPModel.html)
  as `group_data` and are excluded from the tree features.

- `gp_coords_cols`: Names of numeric features that are the coordinates
  of a Gaussian process. The columns are passed to
  [`gpboost::GPModel()`](https://rdrr.io/pkg/gpboost/man/GPModel.html)
  as `gp_coords` and are excluded from the tree features.

- `seed` is passed to the boosting algorithm and to
  [`gpboost::GPModel()`](https://rdrr.io/pkg/gpboost/man/GPModel.html).

- `nrounds` sets the number of boosting iterations. The alias
  `num_iterations` is not available.

- Observation weights are passed to
  [`gpboost::GPModel()`](https://rdrr.io/pkg/gpboost/man/GPModel.html)
  if a random effects model is used and to
  [`gpboost::gpb.Dataset()`](https://rdrr.io/pkg/gpboost/man/gpb.Dataset.html)
  otherwise.

- The predict type `"se"` returns the square root of the predictive
  variance and requires a random effects model.

## Initial parameter values

- `num_threads` is initialized to 1 to avoid conflicts with
  parallelization via
  [future](https://CRAN.R-project.org/package=future).

- `verbose` is initialized to -1 to suppress the output of GPBoost.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gpboost")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [gpboost](https://CRAN.R-project.org/package=gpboost)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| group_data_cols | untyped | \- |  | \- |
| gp_coords_cols | untyped | \- |  | \- |
| nrounds | integer | 100 |  | \\\[1, \infty)\\ |
| verbose | integer | 1 |  | \\(-\infty, \infty)\\ |
| record | logical | TRUE | TRUE, FALSE | \- |
| reset_data | logical | FALSE | TRUE, FALSE | \- |
| use_gp_model_for_validation | logical | TRUE | TRUE, FALSE | \- |
| train_gp_model_cov_pars | logical | TRUE | TRUE, FALSE | \- |
| likelihood | untyped | "gaussian" |  | \- |
| cov_function | untyped | "matern" |  | \- |
| cov_fct_shape | numeric | 1.5 |  | \\\[0, \infty)\\ |
| cov_fct_order | integer | 1 |  | \\\[1, 2\]\\ |
| gp_approx | character | none | none, vecchia, full_scale_vecchia, tapering, fitc, full_scale_tapering, vecchia_latent | \- |
| num_parallel_threads | integer | NULL |  | \\\[1, \infty)\\ |
| GPU_use | logical | FALSE | TRUE, FALSE | \- |
| matrix_inversion_method | character | default | default, cholesky, iterative | \- |
| likelihood_learning_rate | numeric | 1 |  | \\\[0, \infty)\\ |
| cov_fct_taper_range | numeric | 1 |  | \\\[0, \infty)\\ |
| cov_fct_taper_shape | numeric | 1 |  | \\\[0, \infty)\\ |
| num_neighbors | integer | NULL |  | \\\[1, \infty)\\ |
| vecchia_ordering | character | random | none, random, time, time_random_space | \- |
| ind_points_selection | character | kmeans++ | kmeans++, cover_tree, random | \- |
| num_ind_points | integer | NULL |  | \\\[1, \infty)\\ |
| cover_tree_radius | numeric | 1 |  | \\\[0, \infty)\\ |
| likelihood_additional_param | numeric | NULL |  | \\(-\infty, \infty)\\ |
| fidelity_specific_mean | logical | TRUE | TRUE, FALSE | \- |
| objective | character | gaussian | gaussian, regression, regression_l1, huber, fair, poisson, quantile, mape, gamma, tweedie, \[...\] | \- |
| boosting | character | gbdt | gbdt | \- |
| learning_rate | numeric | 0.1 |  | \\\[0, \infty)\\ |
| num_leaves | integer | 31 |  | \\\[2, 131072\]\\ |
| tree_learner | character | serial | serial, feature, data, voting | \- |
| num_threads | integer | 0 |  | \\\[0, \infty)\\ |
| device_type | character | cpu | cpu, gpu | \- |
| seed | integer | \- |  | \\(-\infty, \infty)\\ |
| deterministic | logical | FALSE | TRUE, FALSE | \- |
| line_search_step_length | logical | FALSE | TRUE, FALSE | \- |
| reuse_learning_rates_gp_model | logical | TRUE | TRUE, FALSE | \- |
| leaves_newton_update | logical | FALSE | TRUE, FALSE | \- |
| use_nesterov_acc | logical | FALSE | TRUE, FALSE | \- |
| nesterov_acc_rate | numeric | 0.5 |  | \\\[0, \infty)\\ |
| momentum_offset | integer | 0 |  | \\\[0, \infty)\\ |
| momentum_schedule_version | integer | 1 |  | \\\[0, 1\]\\ |
| linear_tree | logical | FALSE | TRUE, FALSE | \- |
| force_col_wise | logical | FALSE | TRUE, FALSE | \- |
| force_row_wise | logical | FALSE | TRUE, FALSE | \- |
| histogram_pool_size | numeric | -1 |  | \\(-\infty, \infty)\\ |
| max_depth | integer | -1 |  | \\(-\infty, \infty)\\ |
| min_data_in_leaf | integer | 20 |  | \\\[0, \infty)\\ |
| min_sum_hessian_in_leaf | numeric | 0.001 |  | \\\[0, \infty)\\ |
| bagging_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| bagging_freq | integer | 0 |  | \\\[0, \infty)\\ |
| bagging_seed | integer | 3 |  | \\(-\infty, \infty)\\ |
| feature_fraction | numeric | 1 |  | \\\[0, 1\]\\ |
| feature_fraction_bynode | numeric | 1 |  | \\\[0, 1\]\\ |
| feature_fraction_seed | integer | 2 |  | \\(-\infty, \infty)\\ |
| extra_trees | logical | FALSE | TRUE, FALSE | \- |
| extra_seed | integer | 6 |  | \\(-\infty, \infty)\\ |
| first_metric_only | logical | FALSE | TRUE, FALSE | \- |
| max_delta_step | numeric | 0 |  | \\(-\infty, \infty)\\ |
| lambda_l1 | numeric | 0 |  | \\\[0, \infty)\\ |
| lambda_l2 | numeric | 0 |  | \\\[0, \infty)\\ |
| linear_lambda | numeric | 0 |  | \\\[0, \infty)\\ |
| min_gain_to_split | numeric | 0 |  | \\\[0, \infty)\\ |
| drop_rate | numeric | 0.1 |  | \\\[0, 1\]\\ |
| max_drop | integer | 50 |  | \\(-\infty, \infty)\\ |
| skip_drop | numeric | 0.5 |  | \\\[0, 1\]\\ |
| xgboost_dart_mode | logical | FALSE | TRUE, FALSE | \- |
| uniform_drop | logical | FALSE | TRUE, FALSE | \- |
| drop_seed | integer | 4 |  | \\(-\infty, \infty)\\ |
| top_rate | numeric | 0.2 |  | \\\[0, 1\]\\ |
| other_rate | numeric | 0.1 |  | \\\[0, 1\]\\ |
| min_data_per_group | integer | 100 |  | \\\[1, \infty)\\ |
| max_cat_threshold | integer | 32 |  | \\\[1, \infty)\\ |
| cat_l2 | numeric | 10 |  | \\\[0, \infty)\\ |
| cat_smooth | numeric | 10 |  | \\\[0, \infty)\\ |
| max_cat_to_onehot | integer | 4 |  | \\\[1, \infty)\\ |
| top_k | integer | 20 |  | \\\[1, \infty)\\ |
| monotone_constraints | untyped | NULL |  | \- |
| monotone_constraints_method | character | basic | basic, intermediate, advanced | \- |
| monotone_penalty | numeric | 0 |  | \\\[0, \infty)\\ |
| feature_contri | untyped | NULL |  | \- |
| forcedsplits_filename | untyped | "" |  | \- |
| refit_decay_rate | numeric | 0.9 |  | \\\[0, 1\]\\ |
| cegb_tradeoff | numeric | 1 |  | \\\[0, \infty)\\ |
| cegb_penalty_split | numeric | 0 |  | \\\[0, \infty)\\ |
| cegb_penalty_feature_lazy | untyped | \- |  | \- |
| cegb_penalty_feature_coupled | untyped | \- |  | \- |
| path_smooth | numeric | 0 |  | \\\[0, \infty)\\ |
| interaction_constraints | untyped | \- |  | \- |
| max_bin | integer | 255 |  | \\\[2, \infty)\\ |
| max_bin_by_feature | untyped | NULL |  | \- |
| min_data_in_bin | integer | 3 |  | \\\[1, \infty)\\ |
| bin_construct_sample_cnt | integer | 200000 |  | \\\[1, \infty)\\ |
| data_random_seed | integer | 1 |  | \\(-\infty, \infty)\\ |
| is_enable_sparse | logical | TRUE | TRUE, FALSE | \- |
| enable_bundle | logical | TRUE | TRUE, FALSE | \- |
| use_missing | logical | TRUE | TRUE, FALSE | \- |
| zero_as_missing | logical | FALSE | TRUE, FALSE | \- |
| feature_pre_filter | logical | FALSE | TRUE, FALSE | \- |
| pre_partition | logical | FALSE | TRUE, FALSE | \- |
| two_round | logical | FALSE | TRUE, FALSE | \- |
| forcedbins_filename | untyped | "" |  | \- |
| boost_from_average | logical | TRUE | TRUE, FALSE | \- |
| reg_sqrt | logical | FALSE | TRUE, FALSE | \- |
| alpha | numeric | 0.9 |  | \\\[0, \infty)\\ |
| fair_c | numeric | 1 |  | \\\[0, \infty)\\ |
| poisson_max_delta_step | numeric | 0.7 |  | \\\[0, \infty)\\ |
| tweedie_variance_power | numeric | 1.5 |  | \\\[1, 2\]\\ |
| sigma | numeric | 1 |  | \\\[0, \infty)\\ |
| yl | numeric | -Inf |  | \\(-\infty, \infty)\\ |
| yu | numeric | Inf |  | \\(-\infty, \infty)\\ |
| num_machines | integer | 1 |  | \\\[1, \infty)\\ |
| local_listen_port | integer | 12400 |  | \\\[1, \infty)\\ |
| time_out | integer | 120 |  | \\\[1, \infty)\\ |
| machines | untyped | "" |  | \- |
| gpu_platform_id | integer | -1 |  | \\(-\infty, \infty)\\ |
| gpu_device_id | integer | -1 |  | \\(-\infty, \infty)\\ |
| gpu_use_dp | logical | FALSE | TRUE, FALSE | \- |
| num_gpu | integer | 1 |  | \\\[1, \infty)\\ |
| start_iteration | integer | NULL |  | \\\[0, \infty)\\ |
| num_iteration | integer | NULL |  | \\\[1, \infty)\\ |
| ignore_gp_model | logical | FALSE | TRUE, FALSE | \- |
| vecchia_pred_type | character | NULL | order_obs_first_cond_obs_only, order_obs_first_cond_all, latent_order_obs_first_cond_obs_only, latent_order_obs_first_cond_all, order_pred_first | \- |
| num_neighbors_pred | integer | NULL |  | \\\[1, \infty)\\ |

## References

Sigrist, Fabio (2022). “Gaussian Process Boosting.” *Journal of Machine
Learning Research*, **23**(232), 1–46.
[http://jmlr.org/papers/v23/20-322.html](http://jmlr.org/papers/v23/20-322.md).

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

floriandl

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGPBoost`

## Active bindings

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrGPBoost$new()`](#method-LearnerRegrGPBoost-initialize)

- [`LearnerRegrGPBoost$importance()`](#method-LearnerRegrGPBoost-importance)

- [`LearnerRegrGPBoost$marshal()`](#method-LearnerRegrGPBoost-marshal)

- [`LearnerRegrGPBoost$unmarshal()`](#method-LearnerRegrGPBoost-unmarshal)

- [`LearnerRegrGPBoost$clone()`](#method-LearnerRegrGPBoost-clone)

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

### `LearnerRegrGPBoost$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrGPBoost$new()

------------------------------------------------------------------------

### `LearnerRegrGPBoost$importance()`

The importance scores are extracted with
[`gpboost::gpb.importance()`](https://rdrr.io/pkg/gpboost/man/gpb.importance.html)
and correspond to the total gain of the splits of a feature. Features
without splits and the columns of the random effects model get an
importance of 0.

#### Usage

    LearnerRegrGPBoost$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerRegrGPBoost$marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrGPBoost$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrGPBoost$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrGPBoost$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrGPBoost$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGPBoost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner with a random intercept for the number of cylinders
learner = lrn("regr.gpboost", group_data_cols = "cyl", min_data_in_leaf = 5L, predict_type = "se")
print(learner)
#> 
#> ── <LearnerRegrGPBoost> (regr.gpboost): Gaussian Process Boosting ──────────────
#> • Model: -
#> • Parameters: group_data_cols=cyl, verbose=-1, num_threads=1,
#> min_data_in_leaf=5
#> • Packages: mlr3, mlr3extralearners, and gpboost
#> • Predict Types: response and [se]
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, marshal, missings, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> [GPBoost] [Info] GPBoost is using 1 OpenMP thread by default for parallel computations. Run gpb.tune.num.threads() to benchmark different numbers of threads and to select a tuned default for this session. For the best performance, try different values of 'num_parallel_threads' on the 'GPModel' you are using.

print(learner$importance())
#>      qsec        am      carb        hp       cyl      disp      drat      gear 
#> 0.3175844 0.2535882 0.2291974 0.1996300 0.0000000 0.0000000 0.0000000 0.0000000 
#>        vs        wt 
#> 0.0000000 0.0000000 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.188357 
```
