# GPyTorch Gaussian Process Regression Learner

Exact Gaussian process regression with a constant mean, a scaled kernel,
and a Gaussian likelihood. The hyperparameters are fitted by maximizing
the exact marginal log likelihood with the Adam optimizer. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with the [`gpytorch`](https://gpytorch.ai/) Python package.

The features and the target are standardized to zero mean and unit
variance before the model is fitted, and the predictions are transformed
back to the original scale. The standard error is the posterior standard
deviation of the latent function, i.e. it does not include the
observation noise.

## Custom mlr3 parameters

`gpytorch` has no ready-made training function, so all parameters are
defined by this learner.

- `kernel` is the base kernel that is wrapped in a `ScaleKernel`.
  `"rbf"` is the `RBFKernel`, and `"matern_0.5"`, `"matern_1.5"`, and
  `"matern_2.5"` are the `MaternKernel` with the respective smoothness
  parameter `nu`.

- `lr` is the learning rate of the Adam optimizer.

- `n_iter` is the number of optimizer steps.

- `device` is the torch device on which the model is fitted and
  predictions are computed. `"auto"` selects `"cuda"` if available and
  `"cpu"` otherwise.

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
(`gpytorch` and `torch`) will be installed automatically, if not
already. Reticulate will then configure and initialize an ephemeral
environment satisfying those requirements, unless an existing
environment (e.g., `"r-reticulate"`) in reticulate's [Order of
Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
contains all the necessary packages.

You may also manually install `gpytorch` into a Python environment and
specify the environment via `reticulate::use_*()` before calling
`$train()` or `$predict()`, for example:

    reticulate::virtualenv_create("gpytorch", packages = c("torch", "gpytorch"))
    reticulate::use_virtualenv("gpytorch", required = TRUE)

## Saving a Learner

In order to save a `LearnerRegrGPyTorch` for later usage, it is
necessary to call the `$marshal()` method on the `Learner` before
writing it to disk, as the object will otherwise not be saved correctly.
After loading a marshaled `LearnerRegrGPyTorch` into R again, you then
need to call `$unmarshal()` to transform it into a useable state.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gpytorch")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| kernel | character | rbf | rbf, matern_0.5, matern_1.5, matern_2.5 | \- |
| lr | numeric | 0.1 |  | \\\[0, \infty)\\ |
| n_iter | integer | 50 |  | \\\[1, \infty)\\ |
| device | character | auto | auto, cpu, cuda | \- |

## References

Gardner, R J, Pleiss, Geoff, Weinberger, Q K, Bindel, David, Wilson,
Gordon A (2018). “GPyTorch: Blackbox Matrix-Matrix Gaussian Process
Inference with GPU Acceleration.” In *Advances in Neural Information
Processing Systems*, volume 31.

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

KhalifaSeck

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGPyTorch`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrGPyTorch$new()`](#method-LearnerRegrGPyTorch-initialize)

- [`LearnerRegrGPyTorch$marshal()`](#method-LearnerRegrGPyTorch-marshal)

- [`LearnerRegrGPyTorch$unmarshal()`](#method-LearnerRegrGPyTorch-unmarshal)

- [`LearnerRegrGPyTorch$clone()`](#method-LearnerRegrGPyTorch-clone)

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

### `LearnerRegrGPyTorch$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrGPyTorch$new()

------------------------------------------------------------------------

### `LearnerRegrGPyTorch$marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrGPyTorch$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrGPyTorch$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrGPyTorch$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrGPyTorch$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGPyTorch$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
