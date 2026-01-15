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

|                           |           |         |             |                       |
|---------------------------|-----------|---------|-------------|-----------------------|
| Id                        | Type      | Default | Levels      | Range                 |
| subset                    | untyped   | \-      |             | \-                    |
| na.action                 | untyped   | \-      |             | \-                    |
| F                         | character | 0       | 0, 1        | \-                    |
| L                         | numeric   | 0.01    |             | \\(-\infty, \infty)\\ |
| R                         | numeric   | 1e-04   |             | \\(-\infty, \infty)\\ |
| E                         | integer   | 500     |             | \\(-\infty, \infty)\\ |
| C                         | numeric   | 0.001   |             | \\(-\infty, \infty)\\ |
| N                         | logical   | \-      | TRUE, FALSE | \-                    |
| M                         | logical   | \-      | TRUE, FALSE | \-                    |
| S                         | integer   | 1       |             | \\(-\infty, \infty)\\ |
| output_debug_info         | logical   | FALSE   | TRUE, FALSE | \-                    |
| do_not_check_capabilities | logical   | FALSE   | TRUE, FALSE | \-                    |
| num_decimal_places        | integer   | 2       |             | \\\[1, \infty)\\      |
| batch_size                | integer   | 100     |             | \\\[1, \infty)\\      |
| options                   | untyped   | NULL    |             | \-                    |

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

- [`LearnerClassifSGD$new()`](#method-LearnerClassifSGD-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifSGD$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifSGD$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifSGD$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#>         -3.4788 (normalized) V1
#>  +      -0.1882 (normalized) V10
#>  +      -2.9717 (normalized) V11
#>  +      -2.1574 (normalized) V12
#>  +      -0.2681 (normalized) V13
#>  +       0.6455 (normalized) V14
#>  +       1.0001 (normalized) V15
#>  +       1.3014 (normalized) V16
#>  +      -0.4572 (normalized) V17
#>  +      -0.9706 (normalized) V18
#>  +       1.9167 (normalized) V19
#>  +      -0.5516 (normalized) V2
#>  +      -0.6118 (normalized) V20
#>  +      -0.9494 (normalized) V21
#>  +      -0.1485 (normalized) V22
#>  +      -0.5548 (normalized) V23
#>  +      -1.7723 (normalized) V24
#>  +       0.2776 (normalized) V25
#>  +       0.7574 (normalized) V26
#>  +      -0.6064 (normalized) V27
#>  +      -0.599  (normalized) V28
#>  +      -1.7754 (normalized) V29
#>  +       2.5261 (normalized) V3
#>  +      -1.2899 (normalized) V30
#>  +       5.0876 (normalized) V31
#>  +      -1.3323 (normalized) V32
#>  +      -2.2609 (normalized) V33
#>  +       2.0071 (normalized) V34
#>  +      -1.2041 (normalized) V35
#>  +       1.5619 (normalized) V36
#>  +       0.8816 (normalized) V37
#>  +       0.6138 (normalized) V38
#>  +      -0.4725 (normalized) V39
#>  +      -2.2162 (normalized) V4
#>  +       0.0297 (normalized) V40
#>  +       0.5337 (normalized) V41
#>  +      -0.9933 (normalized) V42
#>  +       0.1368 (normalized) V43
#>  +      -0.8585 (normalized) V44
#>  +      -2.2185 (normalized) V45
#>  +      -0.7267 (normalized) V46
#>  +       0.4079 (normalized) V47
#>  +      -1.3399 (normalized) V48
#>  +      -1.9191 (normalized) V49
#>  +      -0.713  (normalized) V5
#>  +       2.6817 (normalized) V50
#>  +      -2.0166 (normalized) V51
#>  +      -0.876  (normalized) V52
#>  +      -0.1908 (normalized) V53
#>  +      -1.2871 (normalized) V54
#>  +       1.4606 (normalized) V55
#>  +      -2.1332 (normalized) V56
#>  +       1.116  (normalized) V57
#>  +      -0.7306 (normalized) V58
#>  +      -0.2444 (normalized) V59
#>  +       0.0917 (normalized) V6
#>  +      -0.5479 (normalized) V60
#>  +       2.1783 (normalized) V7
#>  +       2.3891 (normalized) V8
#>  +      -1.8904 (normalized) V9
#>  +       4.97  


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
