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
#>         -1.1872 (normalized) V1
#>  +      -0.6686 (normalized) V10
#>  +      -4.1614 (normalized) V11
#>  +      -3.4754 (normalized) V12
#>  +       0.6636 (normalized) V13
#>  +       0.0676 (normalized) V14
#>  +      -0.7942 (normalized) V15
#>  +       0.7232 (normalized) V16
#>  +       1.5164 (normalized) V17
#>  +       0.2831 (normalized) V18
#>  +      -0.811  (normalized) V19
#>  +      -2.872  (normalized) V2
#>  +      -0.2041 (normalized) V20
#>  +       0.2265 (normalized) V21
#>  +       0.884  (normalized) V22
#>  +      -1.3564 (normalized) V23
#>  +      -2.9789 (normalized) V24
#>  +      -0.5433 (normalized) V25
#>  +       1.355  (normalized) V26
#>  +       0.6827 (normalized) V27
#>  +      -1.6362 (normalized) V28
#>  +      -0.28   (normalized) V29
#>  +       1.8456 (normalized) V3
#>  +      -1.1739 (normalized) V30
#>  +       5.2268 (normalized) V31
#>  +      -0.9596 (normalized) V32
#>  +      -0.8243 (normalized) V33
#>  +       0.7416 (normalized) V34
#>  +      -1.1371 (normalized) V35
#>  +       2.1641 (normalized) V36
#>  +       2.6109 (normalized) V37
#>  +       0.1197 (normalized) V38
#>  +      -1.7869 (normalized) V39
#>  +      -1.1308 (normalized) V4
#>  +       0.8697 (normalized) V40
#>  +       0.4679 (normalized) V41
#>  +       0.6033 (normalized) V42
#>  +      -1.183  (normalized) V43
#>  +      -1.6631 (normalized) V44
#>  +      -1.7765 (normalized) V45
#>  +      -1.8214 (normalized) V46
#>  +      -0.5054 (normalized) V47
#>  +      -0.1837 (normalized) V48
#>  +      -3.0697 (normalized) V49
#>  +      -0.1795 (normalized) V5
#>  +       1.6875 (normalized) V50
#>  +       0.0259 (normalized) V51
#>  +      -2.5143 (normalized) V52
#>  +      -1.8833 (normalized) V53
#>  +      -0.5467 (normalized) V54
#>  +       0.5584 (normalized) V55
#>  +      -0.9712 (normalized) V56
#>  +       1.3066 (normalized) V57
#>  +      -1.7116 (normalized) V58
#>  +       0.8492 (normalized) V59
#>  +       0.9829 (normalized) V6
#>  +       0.7421 (normalized) V60
#>  +       2.5617 (normalized) V7
#>  +       1.7977 (normalized) V8
#>  +      -0.1693 (normalized) V9
#>  +       3.49  


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
