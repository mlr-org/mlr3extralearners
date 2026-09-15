# TabFM Classification Learner

Tabular foundation model developed by Google Research. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with the [`tabfm`](https://github.com/google-research/tabfm) Python
package. The model makes zero-shot predictions via in-context learning
and is not trained on the data in the usual sense. Features are passed
to `tabfm` as a data frame, so that categorical features are ordinal
encoded and missing values are imputed by the package's own
preprocessing pipeline.

## Installation

This learner relies on
[reticulate](https://CRAN.R-project.org/package=reticulate) to handle
Python dependencies. It is not necessary to install any Python package
manually in advance or specify a Python environment via
[`reticulate::use_python()`](https://rstudio.github.io/reticulate/reference/use_python.html),
[`reticulate::use_virtualenv()`](https://rstudio.github.io/reticulate/reference/use_python.html),
[`reticulate::use_condaenv()`](https://rstudio.github.io/reticulate/reference/use_python.html),
or
[`reticulate::use_miniconda()`](https://rstudio.github.io/reticulate/reference/use_python.html).
By calling `$train()` or `$predict()`, the required Python packages will
be installed automatically, if not already. The `backend` parameter
selects which extra is installed: `"jax"` installs `tabfm[jax]` and
`"pytorch"` installs `tabfm[pytorch]`. Reticulate will then configure
and initialize an ephemeral environment satisfying those requirements,
unless an existing environment (e.g., `"r-reticulate"`) in reticulate's
[Order of
Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
contains all the necessary packages.

You may also manually install `tabfm` into a Python environment
following the [official installation
guide](https://github.com/google-research/tabfm#installation) and
specify the environment via `reticulate::use_*()` before calling
`$train()` or `$predict()`.

On the first call to `$train()`, the pre-trained model weights (about
100 MB) are downloaded from [Hugging
Face](https://huggingface.co/google) and cached for subsequent calls.

## Saving a Learner

In order to save a `LearnerClassifTabFM` for later usage, it is
necessary to call the `$marshal()` method on the `Learner` before
writing it to disk, as the object will otherwise not be saved correctly.
After loading a marshaled `LearnerClassifTabFM` into R again, you then
need to call `$unmarshal()` to transform it into a useable state. The
several gigabyte pre-trained backbone is not serialized; it is detached
before marshaling and reloaded from the Hugging Face cache on
`$unmarshal()`.

## Custom mlr3 parameters

- `backend` selects the computational backend, either `"jax"` or
  `"pytorch"`. It also determines which pre-trained weights are
  downloaded and which Python packages are installed.

- `device` is only used by the `"pytorch"` backend and is passed as a
  string to the model loader, e.g., `"cpu"` or `"cuda"`. The `"jax"`
  backend ignores this parameter and selects the device automatically.

- `norm_methods` accepts a single string or a character vector with
  values from `"none"`, `"power"`, `"quantile"`, `"quantile_rtdl"`, and
  `"robust"`.

- `n_feature_crosses` and `n_svd_features` accept either a non-negative
  integer or the string `"sqrt"`.

- `cache_context` is only supported by the `"pytorch"` backend.

- `random_state` accepts either an integer or the special value `"None"`
  which corresponds to `None` in Python.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.tabfm")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| backend | character | \- | jax, pytorch | \- |
| device | untyped | \- |  | \- |
| n_estimators | integer | 32 |  | \\\[1, \infty)\\ |
| norm_methods | untyped | \- |  | \- |
| feat_shuffle_method | character | random | random, none | \- |
| class_shift | logical | TRUE | TRUE, FALSE | \- |
| permute_categorical | logical | FALSE | TRUE, FALSE | \- |
| outlier_threshold | numeric | 4 |  | \\(-\infty, \infty)\\ |
| max_num_features | integer | 500 |  | \\\[1, \infty)\\ |
| max_num_rows | integer | \- |  | \\\[1, \infty)\\ |
| softmax_temperature | numeric | 0.9 |  | \\\[0, \infty)\\ |
| average_logits | logical | TRUE | TRUE, FALSE | \- |
| use_amp | logical | TRUE | TRUE, FALSE | \- |
| batch_size | integer | 1 |  | \\\[1, \infty)\\ |
| random_state | integer | 42 |  | \\(-\infty, \infty)\\ |
| verbose | logical | FALSE | TRUE, FALSE | \- |
| cat_encoder_mode | character | appearance | appearance, frequency | \- |
| binary_calibration_method | character | \- | platt | \- |
| multiclass_calibration_method | character | \- | vector | \- |
| num_folds_for_cv | integer | 5 |  | \\\[2, \infty)\\ |
| n_feature_crosses | untyped | 0L |  | \- |
| n_svd_features | untyped | 0L |  | \- |
| total_svd_pool | integer | \- |  | \\\[1, \infty)\\ |
| enable_nnls | logical | FALSE | TRUE, FALSE | \- |
| nnls_beta | numeric | 0.75 |  | \\(-\infty, \infty)\\ |
| calibration_lambda | numeric | 0.01 |  | \\\[0, \infty)\\ |
| min_rows_for_single_val_split | integer | 2000 |  | \\\[0, \infty)\\ |
| cache_context | logical | FALSE | TRUE, FALSE | \- |
| maybe_quantize_kv_cache | logical | TRUE | TRUE, FALSE | \- |
| keep_cache_on_device | logical | TRUE | TRUE, FALSE | \- |

## References

Google Research (2026). “TabFM: Tabular Foundation Models.”
<https://github.com/google-research/tabfm>.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifTabFM`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifTabFM$new()`](#method-LearnerClassifTabFM-initialize)

- [`LearnerClassifTabFM$marshal()`](#method-LearnerClassifTabFM-marshal)

- [`LearnerClassifTabFM$unmarshal()`](#method-LearnerClassifTabFM-unmarshal)

- [`LearnerClassifTabFM$clone()`](#method-LearnerClassifTabFM-clone)

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

### `LearnerClassifTabFM$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifTabFM$new()

------------------------------------------------------------------------

### `LearnerClassifTabFM$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifTabFM$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifTabFM$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifTabFM$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifTabFM$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifTabFM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
