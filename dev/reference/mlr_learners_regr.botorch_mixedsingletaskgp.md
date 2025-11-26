# BoTorch MixedSingleTaskGP Regression Learner

Gaussian Process via [botorch](https://botorch.org/) and
[gpytorch](https://gpytorch.ai/), using the `MixedSingleTaskGP`. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with Python.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.botorch_mixedsingletaskgp")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|        |           |         |           |
|--------|-----------|---------|-----------|
| Id     | Type      | Default | Levels    |
| device | character | cpu     | cpu, cuda |

## Author

Marc Becker

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrBotorchMixedSingleTaskGP`

## Active bindings

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrBotorchMixedSingleTaskGP$new()`](#method-LearnerRegrBotorchMixedSingleTaskGP-new)

- [`LearnerRegrBotorchMixedSingleTaskGP$marshal()`](#method-LearnerRegrBotorchMixedSingleTaskGP-marshal)

- [`LearnerRegrBotorchMixedSingleTaskGP$unmarshal()`](#method-LearnerRegrBotorchMixedSingleTaskGP-unmarshal)

- [`LearnerRegrBotorchMixedSingleTaskGP$clone()`](#method-LearnerRegrBotorchMixedSingleTaskGP-clone)

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

    LearnerRegrBotorchMixedSingleTaskGP$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrBotorchMixedSingleTaskGP$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrBotorchMixedSingleTaskGP$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBotorchMixedSingleTaskGP$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
