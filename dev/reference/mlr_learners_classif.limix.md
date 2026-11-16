# LimiX Classification Learner

Tabular foundation model developed by Stable AI. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with the [`LimiX`](https://github.com/limix-ldm-ai/LimiX) Python
package. Calls `LimiXPredictor()` from the Python module `limix`. The
model makes predictions via in-context learning and is not trained on
the data in the usual sense. `$train()` therefore only stores the
training data and loads the pre-trained weights, and the whole
computation happens in `$predict()`. Features are passed to `LimiX` as a
data frame, so that categorical features are ordinal encoded and missing
values are handled by the package's own preprocessing pipeline. The
`"LimiX-2"` model supports at most 10 classes.

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
be installed automatically, if not already. `LimiX` is not released on
PyPI and is installed from its [GitHub
repository](https://github.com/limix-ldm-ai/LimiX), which requires `git`
and Python 3.12 or newer. Reticulate will then configure and initialize
an ephemeral environment satisfying those requirements, unless an
existing environment (e.g., `"r-reticulate"`) in reticulate's [Order of
Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
contains all the necessary packages.

You may also manually install `LimiX` into a Python environment
following the [official installation
guide](https://github.com/limix-ldm-ai/LimiX#-tutorials) and specify the
environment via `reticulate::use_*()` before calling `$train()` or
`$predict()`. Besides `LimiX`, the environment needs the Python packages
`huggingface_hub` and `triton`. `LimiX` imports `triton`, which is only
available on Linux, so the learner is only tested on Linux.

On the first call to `$train()`, the pre-trained model weights are
downloaded from [Hugging Face](https://huggingface.co/stable-ai) and
cached for subsequent calls (about 1.6 GB for `"LimiX-2"` and 10 MB for
`"LimiX-2M"`). The weights have their own licenses, and the weights of
`"LimiX-2"` are released under a non-commercial license. The `"LimiX-2"`
model is slow without a GPU.

## Saving a Learner

In order to save a `LearnerClassifLimiX` for later usage, it is
necessary to call the `$marshal()` method on the `Learner` before
writing it to disk, as the object will otherwise not be saved correctly.
After loading a marshaled `LearnerClassifLimiX` into R again, you then
need to call `$unmarshal()` to transform it into a useable state. The
pre-trained weights are not serialized; they are dropped on `$marshal()`
and reloaded from the Hugging Face cache or `model_path` on
`$unmarshal()`.

## Initial parameter values

- `model` is initialized to `"LimiX-2"`.

- `device` is initialized to `"auto"`.

## Custom mlr3 parameters

- `model` selects the pre-trained weights that are downloaded from
  Hugging Face, one of `"LimiX-2"` (400 million parameters),
  `"LimiX-2M"` (2 million parameters), and `"LimiX-16M"` (16 million
  parameters). It is ignored if `model_path` is set.

- `model_path` is the path to a local checkpoint file. If it is not set,
  the checkpoint selected by `model` is downloaded.

- `device` is a string that is passed to `torch.device()`, e.g., `"cpu"`
  or `"cuda"`. The value `"auto"` selects `"cuda"` if it is available
  and `"cpu"` otherwise.

- `inference_config` is the path to a JSON file with the inference
  configuration. If it is not set, the default configuration without
  retrieval that ships with `LimiX` is used, depending on the task type
  and the architecture version of the checkpoint.

- `cache_dir`, `test_batch_mode`, `test_batch_size`,
  `enable_preprocess_parallel`, `preprocess_num_jobs`, and `gpu_ids` are
  only used by `"LimiX-2"`. `LimiX` prints a warning and ignores them
  for the other models.

- `test_batch_size` accepts either an integer or the special value
  `"None"` which corresponds to `None` in Python.

- `gpu_ids` accepts an integer vector of CUDA device indices, using the
  zero-based indexing of Python.

- `categorical_features_indices` and `inference_with_DDP` are not
  available, because the first is not used by `LimiX` for classification
  and regression, and the second requires a distributed setup.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.limix")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| model | character | \- | LimiX-2, LimiX-2M, LimiX-16M | \- |
| model_path | untyped | \- |  | \- |
| device | untyped | \- |  | \- |
| inference_config | untyped | \- |  | \- |
| mix_precision | logical | TRUE | TRUE, FALSE | \- |
| outlier_remove_std | numeric | 12 |  | \\\[0, \infty)\\ |
| softmax_temperature | numeric | 0.9 |  | \\\[0, \infty)\\ |
| use_data_cache | logical | FALSE | TRUE, FALSE | \- |
| cache_dir | untyped | "/tmp" |  | \- |
| seed | integer | 0 |  | \\(-\infty, \infty)\\ |
| deterministic | logical | FALSE | TRUE, FALSE | \- |
| test_batch_mode | character | full_first | full_first, fixed | \- |
| test_batch_size | integer | 16384 |  | \\\[1, \infty)\\ |
| enable_preprocess_parallel | logical | TRUE | TRUE, FALSE | \- |
| preprocess_num_jobs | integer | 16 |  | \\\[1, \infty)\\ |
| gpu_ids | untyped | \- |  | \- |
| unique_dataset_name | untyped | \- |  | \- |

## References

Zhang, Xingxuan, Ren, Gang, Yuan, Hao, Zou, Hao, Tan, Hongze, Wang, Hui,
Song, Jianhao, Li, Jiansheng, Zhang, Jiayao, Zhang, Jinghan, others
(2026). “LimiX-2: A Contextual Mechanism Network Towards General
Structured-Data Intelligence.” 2609.17488,
<https://arxiv.org/abs/2609.17488>.

Zhang, Xingxuan, Ren, Gang, Yu, Han, Yuan, Hao, Wang, Hui, Li,
Jiansheng, Wu, Jiayun, Mo, Lang, Mao, Li, Hao, Mingchao, others (2025).
“LimiX: Unleashing Structured-Data Modeling Capability for Generalist
Intelligence.” 2509.03505, <https://arxiv.org/abs/2509.03505>.

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
-\> `LearnerClassifLimiX`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifLimiX$new()`](#method-LearnerClassifLimiX-initialize)

- [`LearnerClassifLimiX$marshal()`](#method-LearnerClassifLimiX-marshal)

- [`LearnerClassifLimiX$unmarshal()`](#method-LearnerClassifLimiX-unmarshal)

- [`LearnerClassifLimiX$clone()`](#method-LearnerClassifLimiX-clone)

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

### `LearnerClassifLimiX$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLimiX$new()

------------------------------------------------------------------------

### `LearnerClassifLimiX$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifLimiX$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLimiX$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifLimiX$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLimiX$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLimiX$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
