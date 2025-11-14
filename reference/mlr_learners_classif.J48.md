# Classification J48 Learner

Decision tree algorithm. Calls
[`RWeka::IBk()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_lazy.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.J48")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                                |         |         |             |                                 |
|--------------------------------|---------|---------|-------------|---------------------------------|
| Id                             | Type    | Default | Levels      | Range                           |
| subset                         | untyped | \-      |             | \-                              |
| na.action                      | untyped | \-      |             | \-                              |
| U                              | logical | FALSE   | TRUE, FALSE | \-                              |
| O                              | logical | FALSE   | TRUE, FALSE | \-                              |
| C                              | numeric | 0.25    |             | \\\[2.22044604925031e-16, 1\]\\ |
| M                              | integer | 2       |             | \\\[1, \infty)\\                |
| R                              | logical | FALSE   | TRUE, FALSE | \-                              |
| N                              | integer | 3       |             | \\\[2, \infty)\\                |
| B                              | logical | FALSE   | TRUE, FALSE | \-                              |
| S                              | logical | FALSE   | TRUE, FALSE | \-                              |
| L                              | logical | FALSE   | TRUE, FALSE | \-                              |
| A                              | logical | FALSE   | TRUE, FALSE | \-                              |
| J                              | logical | FALSE   | TRUE, FALSE | \-                              |
| Q                              | integer | 1       |             | \\\[1, \infty)\\                |
| doNotMakeSplitPointActualValue | logical | FALSE   | TRUE, FALSE | \-                              |
| output_debug_info              | logical | FALSE   | TRUE, FALSE | \-                              |
| do_not_check_capabilities      | logical | FALSE   | TRUE, FALSE | \-                              |
| num_decimal_places             | integer | 2       |             | \\\[1, \infty)\\                |
| batch_size                     | integer | 100     |             | \\\[1, \infty)\\                |
| options                        | untyped | NULL    |             | \-                              |

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

## References

Quinlan, Ross J (2014). *C4. 5: programs for machine learning*.
Elsevier.

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

henrifnk

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifJ48`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifJ48$new()`](#method-LearnerClassifJ48-new)

- [`LearnerClassifJ48$marshal()`](#method-LearnerClassifJ48-marshal)

- [`LearnerClassifJ48$unmarshal()`](#method-LearnerClassifJ48-unmarshal)

- [`LearnerClassifJ48$clone()`](#method-LearnerClassifJ48-clone)

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

    LearnerClassifJ48$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifJ48$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifJ48$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifJ48$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.J48")
print(learner)
#> 
#> ── <LearnerClassifJ48> (classif.J48): Tree-based Model ─────────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, missings, multiclass, and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> J48 pruned tree
#> ------------------
#> 
#> V11 <= 0.1109: R (28.0/1.0)
#> V11 > 0.1109
#> |   V54 <= 0.0205
#> |   |   V9 <= 0.116
#> |   |   |   V23 <= 0.8067: R (18.0/1.0)
#> |   |   |   V23 > 0.8067: M (3.0)
#> |   |   V9 > 0.116
#> |   |   |   V47 <= 0.0365: R (6.0)
#> |   |   |   V47 > 0.0365
#> |   |   |   |   V28 <= 0.808
#> |   |   |   |   |   V11 <= 0.3412
#> |   |   |   |   |   |   V15 <= 0.499
#> |   |   |   |   |   |   |   V37 <= 0.4827: M (12.0/1.0)
#> |   |   |   |   |   |   |   V37 > 0.4827: R (5.0)
#> |   |   |   |   |   |   V15 > 0.499: R (12.0)
#> |   |   |   |   |   V11 > 0.3412: M (9.0)
#> |   |   |   |   V28 > 0.808: M (30.0)
#> |   V54 > 0.0205: M (16.0)
#> 
#> Number of Leaves  :  10
#> 
#> Size of the tree :   19
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
