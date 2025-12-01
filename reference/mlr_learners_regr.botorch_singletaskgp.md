# BoTorch SingleTaskGP Regression Learner

Gaussian Process via [botorch](https://botorch.org/) and
[gpytorch](https://gpytorch.ai/), using the `SingleTaskGP` model. Uses
[reticulate](https://CRAN.R-project.org/package=reticulate) to interface
with Python.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.botorch_singletaskgp")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

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
-\> `LearnerRegrBotorchSingleTaskGP`

## Active bindings

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrBotorchSingleTaskGP$new()`](#method-LearnerRegrBotorchSingleTaskGP-new)

- [`LearnerRegrBotorchSingleTaskGP$marshal()`](#method-LearnerRegrBotorchSingleTaskGP-marshal)

- [`LearnerRegrBotorchSingleTaskGP$unmarshal()`](#method-LearnerRegrBotorchSingleTaskGP-unmarshal)

- [`LearnerRegrBotorchSingleTaskGP$clone()`](#method-LearnerRegrBotorchSingleTaskGP-clone)

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

    LearnerRegrBotorchSingleTaskGP$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrBotorchSingleTaskGP$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrBotorchSingleTaskGP$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrBotorchSingleTaskGP$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
