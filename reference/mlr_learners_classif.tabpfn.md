# TabPFN Classification Learner

Foundation model for tabular data. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with the [`tabpfn`](https://github.com/PriorLabs/TabPFN) Python package.

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
By calling `$train()` or `$predict()`, the required Python packages
(`tapfn`, `torch`, etc.) will be installed automatically, if not
already. Reticulate will then configure and initialize an ephemeral
environment satisfying those requirements, unless an existing
environment (e.g., `"r-reticulate"`) in reticulate's [Order of
Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
contains all the necessary packages.

You may also manually install `tabpfn` into a Python environment
following the [official installation
guide](https://github.com/PriorLabs/TabPFN?tab=readme-ov-file#-quick-start)
and specify the environment via `reticulate::use_*()` before calling
`$train()` or `$predict()`. Note that the GPU version of PyTorch cannot
be loaded by
[`reticulate::use_condaenv()`](https://rstudio.github.io/reticulate/reference/use_python.html)
from a conda environment. To use a conda environment, please install the
CPU version of PyTorch.

## Saving a Learner

In order to save a `LearnerClassifTabPFN` for later usage, it is
necessary to call the `$marshal()` method on the `Learner` before
writing it to disk, as the object will otherwise not be saved correctly.
After loading a marshaled `LearnerClassifTabPFN` into R again, you then
need to call `$unmarshal()` to transform it into a useable state.

## Initial parameter values

- `n_jobs` is initialized to 1 to avoid threading conflicts with
  [future](https://CRAN.R-project.org/package=future).

## Custom mlr3 parameters

- `categorical_feature_indices` uses R indexing instead of zero-based
  Python indexing.

- `device` must be a string. If set to `"auto"`, the behavior is the
  same as original. Otherwise, the string is passed as argument to
  `torch.device()` to create a device.

- `inference_precision` must be `"auto"`, `"autocast"`, or a
  [`torch.dtype`](https://docs.pytorch.org/docs/stable/tensor_attributes.html)
  string, e.g., `"torch.float32"`, `"torch.float64"`, etc. Non-float
  dtypes are not supported.

- `inference_config` is currently not supported.

- `random_state` accepts either an integer or the special value `"None"`
  which corresponds to `None` in Python. Following the original Python
  implementation, the default `random_state` is `0`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.tabpfn")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|                              |           |                   |                                                                                                                    |                       |
|------------------------------|-----------|-------------------|--------------------------------------------------------------------------------------------------------------------|-----------------------|
| Id                           | Type      | Default           | Levels                                                                                                             | Range                 |
| n_estimators                 | integer   | 4                 |                                                                                                                    | \\\[1, \infty)\\      |
| categorical_features_indices | untyped   | \-                |                                                                                                                    | \-                    |
| softmax_temperature          | numeric   | 0.9               |                                                                                                                    | \\\[0, \infty)\\      |
| balance_probabilities        | logical   | FALSE             | TRUE, FALSE                                                                                                        | \-                    |
| average_before_softmax       | logical   | FALSE             | TRUE, FALSE                                                                                                        | \-                    |
| model_path                   | untyped   | "auto"            |                                                                                                                    | \-                    |
| device                       | untyped   | "auto"            |                                                                                                                    | \-                    |
| ignore_pretraining_limits    | logical   | FALSE             | TRUE, FALSE                                                                                                        | \-                    |
| inference_precision          | character | auto              | auto, autocast, torch.float32, torch.float, torch.float64, torch.double, torch.float16, torch.half, torch.bfloat16 | \-                    |
| fit_mode                     | character | fit_preprocessors | low_memory, fit_preprocessors, fit_with_cache                                                                      | \-                    |
| memory_saving_mode           | untyped   | "auto"            |                                                                                                                    | \-                    |
| random_state                 | integer   | 0                 |                                                                                                                    | \\(-\infty, \infty)\\ |
| n_jobs                       | integer   | \-                |                                                                                                                    | \\\[1, \infty)\\      |

## References

Hollmann, Noah, Müller, Samuel, Purucker, Lennart, Krishnakumar, Arjun,
Körfer, Max, Hoo, Bin S, Schirrmeister, Tibor R, Hutter, Frank (2025).
“Accurate predictions on small data with a tabular foundation model.”
*Nature*.
[doi:10.1038/s41586-024-08328-6](https://doi.org/10.1038/s41586-024-08328-6)
, <https://www.nature.com/articles/s41586-024-08328-6>.

Hollmann, Noah, Müller, Samuel, Eggensperger, Katharina, Hutter, Frank
(2023). “TabPFN: A transformer that solves small tabular classification
problems in a second.” In *International Conference on Learning
Representations 2023*.

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

b-zhou

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifTabPFN`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifTabPFN$new()`](#method-LearnerClassifTabPFN-new)

- [`LearnerClassifTabPFN$marshal()`](#method-LearnerClassifTabPFN-marshal)

- [`LearnerClassifTabPFN$unmarshal()`](#method-LearnerClassifTabPFN-unmarshal)

- [`LearnerClassifTabPFN$clone()`](#method-LearnerClassifTabPFN-clone)

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

    LearnerClassifTabPFN$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifTabPFN$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifTabPFN$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifTabPFN$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
