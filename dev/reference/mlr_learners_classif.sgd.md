# Classification Stochastic Gradient Descent Learner

Stochastic Gradient Descent for learning various linear models. Calls
[`RWeka::make_Weka_classifier()`](https://rdrr.io/pkg/RWeka/man/Weka_interfaces.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Initial parameter values

- `F`:

  - Has only 2 out of 5 original loss functions: 0 = hinge loss (SVM)
    and 1 = log loss (logistic regression) with 0 (hinge loss) still
    being the default

  - Reason for change: this learner should only contain loss functions
    appropriate for classification tasks

## Custom mlr3 parameters

- `output_debug_info`:

  - original id: output-debug-info

- `do_not_check_capabilities`:

  - original id: do-not-check-capabilities

- `num_decimal_places`:

  - original id: num-decimal-places

- `batch_size`:

  - original id: batch-size

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.sgd")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| subset | untyped | \- |  | \- |
| na.action | untyped | \- |  | \- |
| F | character | 0 | 0, 1 | \- |
| L | numeric | 0.01 |  | \\(-\infty, \infty)\\ |
| R | numeric | 1e-04 |  | \\(-\infty, \infty)\\ |
| E | integer | 500 |  | \\(-\infty, \infty)\\ |
| C | numeric | 0.001 |  | \\(-\infty, \infty)\\ |
| N | logical | \- | TRUE, FALSE | \- |
| M | logical | \- | TRUE, FALSE | \- |
| S | integer | 1 |  | \\(-\infty, \infty)\\ |
| output_debug_info | logical | FALSE | TRUE, FALSE | \- |
| do_not_check_capabilities | logical | FALSE | TRUE, FALSE | \- |
| num_decimal_places | integer | 2 |  | \\\[1, \infty)\\ |
| batch_size | integer | 100 |  | \\\[1, \infty)\\ |
| options | untyped | NULL |  | \- |

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

damirpolat

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifSGD`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifSGD$new()`](#method-LearnerClassifSGD-initialize)

- [`LearnerClassifSGD$marshal()`](#method-LearnerClassifSGD-marshal)

- [`LearnerClassifSGD$unmarshal()`](#method-LearnerClassifSGD-unmarshal)

- [`LearnerClassifSGD$clone()`](#method-LearnerClassifSGD-clone)

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

### `LearnerClassifSGD$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifSGD$new()

------------------------------------------------------------------------

### `LearnerClassifSGD$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifSGD$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifSGD$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifSGD$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifSGD$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifSGD$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.sgd")
print(learner)
#> 
#> ── <LearnerClassifSGD> (classif.sgd): Stochastic Gradient Descent ──────────────
#> • Model: -
#> • Parameters: F=0
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, missings, and twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Loss function: Hinge loss (SVM)
#> 
#> Class = 
#> 
#>         -2.3769 (normalized) V1
#>  +       0.3174 (normalized) V10
#>  +      -3.6309 (normalized) V11
#>  +      -1.6337 (normalized) V12
#>  +      -1.0338 (normalized) V13
#>  +      -1.2133 (normalized) V14
#>  +       0.7375 (normalized) V15
#>  +       1.0473 (normalized) V16
#>  +      -0.2907 (normalized) V17
#>  +      -0.7073 (normalized) V18
#>  +       1.9533 (normalized) V19
#>  +      -1.2944 (normalized) V2
#>  +       0.2505 (normalized) V20
#>  +      -1.631  (normalized) V21
#>  +      -1.379  (normalized) V22
#>  +      -1.4646 (normalized) V23
#>  +      -1.5558 (normalized) V24
#>  +       0.792  (normalized) V25
#>  +       1.2897 (normalized) V26
#>  +       0.1612 (normalized) V27
#>  +      -1.4745 (normalized) V28
#>  +      -0.7468 (normalized) V29
#>  +       1.9841 (normalized) V3
#>  +      -2.0892 (normalized) V30
#>  +       3.1134 (normalized) V31
#>  +      -0.0924 (normalized) V32
#>  +      -1.8193 (normalized) V33
#>  +       0.6572 (normalized) V34
#>  +      -0.1618 (normalized) V35
#>  +       0.993  (normalized) V36
#>  +       3.7646 (normalized) V37
#>  +      -0.792  (normalized) V38
#>  +      -1.5593 (normalized) V39
#>  +      -0.9088 (normalized) V4
#>  +       1.4671 (normalized) V40
#>  +       0.0054 (normalized) V41
#>  +      -0.462  (normalized) V42
#>  +       0.4819 (normalized) V43
#>  +      -2.1614 (normalized) V44
#>  +      -2.4345 (normalized) V45
#>  +      -1.1613 (normalized) V46
#>  +      -0.0444 (normalized) V47
#>  +      -0.5787 (normalized) V48
#>  +      -2.7491 (normalized) V49
#>  +       1.2497 (normalized) V5
#>  +       2.7527 (normalized) V50
#>  +      -2.3709 (normalized) V51
#>  +      -0.2495 (normalized) V52
#>  +      -0.099  (normalized) V53
#>  +      -0.428  (normalized) V54
#>  +       0.0183 (normalized) V55
#>  +      -0.1485 (normalized) V56
#>  +       1.6439 (normalized) V57
#>  +      -0.9062 (normalized) V58
#>  +      -0.7462 (normalized) V59
#>  +       0.7972 (normalized) V6
#>  +      -0.2338 (normalized) V60
#>  +       2.1632 (normalized) V7
#>  +       2.5457 (normalized) V8
#>  +      -1.6262 (normalized) V9
#>  +       4.3   


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
