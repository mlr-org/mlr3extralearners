# BoTorch Fully Bayesian SingleTaskGP Regression Learner

Fully Bayesian Gaussian Process via [botorch](https://botorch.org/),
using the `SaasFullyBayesianSingleTaskGP` model. Unlike standard GP
models that use MAP estimation for hyperparameters, this model uses MCMC
(NUTS) to learn full posterior distributions over kernel
hyperparameters. See
[here](https://botorch.readthedocs.io/en/latest/models.html#module-botorch.models.fully_bayesian)
for more details. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with Python.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.botorch_fullybayesian")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|                   |           |         |                                           |                  |
|-------------------|-----------|---------|-------------------------------------------|------------------|
| Id                | Type      | Default | Levels                                    | Range            |
| device            | character | cpu     | cpu, cuda                                 | \-               |
| input_transform   | character | \-      | normalize, standardize, log10, warp, none | \-               |
| outcome_transform | character | \-      | standardize, none                         | \-               |
| warmup_steps      | integer   | \-      |                                           | \\\[1, \infty)\\ |
| num_samples       | integer   | \-      |                                           | \\\[1, \infty)\\ |
| thinning          | integer   | \-      |                                           | \\\[1, \infty)\\ |
| max_tree_depth    | integer   | \-      |                                           | \\\[1, \infty)\\ |
| disable_progbar   | logical   | \-      | TRUE, FALSE                               | \-               |
| jit_compile       | logical   | \-      | TRUE, FALSE                               | \-               |

## Author

Marc Becker

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBotorchFullyBayesian`

## Active bindings

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrBotorchFullyBayesian$new()`](#method-LearnerRegrBotorchFullyBayesian-new)

- [`LearnerRegrBotorchFullyBayesian$marshal()`](#method-LearnerRegrBotorchFullyBayesian-marshal)

- [`LearnerRegrBotorchFullyBayesian$unmarshal()`](#method-LearnerRegrBotorchFullyBayesian-unmarshal)

- [`LearnerRegrBotorchFullyBayesian$clone()`](#method-LearnerRegrBotorchFullyBayesian-clone)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrBotorchFullyBayesian$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrBotorchFullyBayesian$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrBotorchFullyBayesian$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBotorchFullyBayesian$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
