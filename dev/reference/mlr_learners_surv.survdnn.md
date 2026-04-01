# SurvDNN Survival Learner

Deep neural network survival models from package
[survdnn](https://CRAN.R-project.org/package=survdnn), aimed at tabular
(low to moderate-dimensional) covariate settings using torch-based
multilayer perceptrons. The learner wraps
[`survdnn::survdnn()`](https://rdrr.io/pkg/survdnn/man/survdnn.html).

## Prediction types

This learner supports the following prediction types:

- `lp`:

  A numeric vector of linear predictors, one per observation. For `loss`
  `"cox"` / `"cox_l2"` this is a log-risk score (higher implies worse
  prognosis). For `"aft"`, `predict.survdnn()` returns the predicted
  log-time location \\\mu(x)\\ (higher implies better prognosis),
  therefore the learner internally negates it such that higher values
  imply higher risk (consistent with
  [mlr3](https://CRAN.R-project.org/package=mlr3) conventions). For
  `"coxtime"`, this is \\g(t_0, x)\\ evaluated at a reference time.

- `crank`:

  same as `lp`.

- `distr`:

  A survival matrix (rows = observations, columns = time points) based
  on `predict(type = "survival")`. By default, predictions are evaluated
  on the unique event times of the training data.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.survdnn")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [survdnn](https://CRAN.R-project.org/package=survdnn),
  [torch](https://CRAN.R-project.org/package=torch)

## Parameters

|            |           |             |                                                      |                       |
|------------|-----------|-------------|------------------------------------------------------|-----------------------|
| Id         | Type      | Default     | Levels                                               | Range                 |
| hidden     | untyped   | c(32L, 16L) |                                                      | \-                    |
| activation | character | relu        | relu, leaky_relu, tanh, sigmoid, gelu, elu, softplus | \-                    |
| lr         | numeric   | 1e-04       |                                                      | \\\[1e-06, 1\]\\      |
| epochs     | integer   | 300         |                                                      | \\\[1, \infty)\\      |
| loss       | character | cox         | cox, cox_l2, aft, coxtime                            | \-                    |
| optimizer  | character | adam        | adam, adamw, sgd, rmsprop, adagrad                   | \-                    |
| optim_args | untyped   | list()      |                                                      | \-                    |
| verbose    | logical   | FALSE       | TRUE, FALSE                                          | \-                    |
| dropout    | numeric   | 0.3         |                                                      | \\\[0, 1\]\\          |
| batch_norm | logical   | TRUE        | TRUE, FALSE                                          | \-                    |
| callbacks  | untyped   | NULL        |                                                      | \-                    |
| .seed      | integer   | NULL        |                                                      | \\(-\infty, \infty)\\ |
| .device    | character | auto        | auto, cpu, cuda                                      | \-                    |
| na_action  | character | omit        | omit, fail                                           | \-                    |

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

ielbadisy

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvDNN`

## Active bindings

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerSurvDNN$new()`](#method-LearnerSurvDNN-new)

- [`LearnerSurvDNN$marshal()`](#method-LearnerSurvDNN-marshal)

- [`LearnerSurvDNN$unmarshal()`](#method-LearnerSurvDNN-unmarshal)

- [`LearnerSurvDNN$clone()`](#method-LearnerSurvDNN-clone)

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

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvDNN$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerSurvDNN$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerSurvDNN$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvDNN$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.survdnn", epochs = 42L, loss = "cox")
print(learner)
#> 
#> ── <LearnerSurvDNN> (surv.survdnn): SurvDNN (torch-based deep survival models) ─
#> • Model: -
#> • Parameters: epochs=42, loss=cox
#> • Packages: mlr3, mlr3proba, mlr3extralearners, survdnn, and torch
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal
#> • Other settings: use_weights = 'error'

# Define the task, split to train/test set
task = tsk("lung")
set.seed(42)
part = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = part$train)
#> Error: The Torch backend is not installed.
#> Please run: torch::install_torch().
print(learner$model)
#> NULL

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = part$test)
#> Error: 
#> ✖ Cannot predict, Learner 'surv.survdnn' has not been trained yet
#> → Class: Mlr3ErrorInput
print(predictions)
#> Error: object 'predictions' not found

# Score the predictions
predictions$score()
#> Error: object 'predictions' not found
```
