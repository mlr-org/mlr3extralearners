# Classification Random Tree Learner

Tree that considers K randomly chosen attributes at each node. Calls
[`RWeka::make_Weka_classifier()`](https://rdrr.io/pkg/RWeka/man/Weka_interfaces.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

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

    lrn("classif.random_tree")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |         |             |                       |
|---------------------------|---------|---------|-------------|-----------------------|
| Id                        | Type    | Default | Levels      | Range                 |
| subset                    | untyped | \-      |             | \-                    |
| na.action                 | untyped | \-      |             | \-                    |
| K                         | integer | 0       |             | \\\[0, \infty)\\      |
| M                         | integer | 1       |             | \\\[1, \infty)\\      |
| V                         | numeric | 0.001   |             | \\(-\infty, \infty)\\ |
| S                         | integer | 1       |             | \\(-\infty, \infty)\\ |
| depth                     | integer | 0       |             | \\\[0, \infty)\\      |
| N                         | integer | 0       |             | \\\[0, \infty)\\      |
| U                         | logical | FALSE   | TRUE, FALSE | \-                    |
| B                         | logical | FALSE   | TRUE, FALSE | \-                    |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-                    |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-                    |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\      |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\      |
| options                   | untyped | NULL    |             | \-                    |

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
-\> `LearnerClassifRandomTree`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifRandomTree$new()`](#method-LearnerClassifRandomTree-new)

- [`LearnerClassifRandomTree$marshal()`](#method-LearnerClassifRandomTree-marshal)

- [`LearnerClassifRandomTree$unmarshal()`](#method-LearnerClassifRandomTree-unmarshal)

- [`LearnerClassifRandomTree$clone()`](#method-LearnerClassifRandomTree-clone)

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

    LearnerClassifRandomTree$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifRandomTree$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifRandomTree$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifRandomTree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.random_tree")
print(learner)
#> 
#> ── <LearnerClassifRandomTree> (classif.random_tree): Random Tree ───────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
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
#> 
#> RandomTree
#> ==========
#> 
#> V4 < 0.05
#> |   V19 < 0.4
#> |   |   V12 < 0.24
#> |   |   |   V20 < 0.51 : R (21/0)
#> |   |   |   V20 >= 0.51
#> |   |   |   |   V2 < 0.02 : R (2/0)
#> |   |   |   |   V2 >= 0.02 : M (1/0)
#> |   |   V12 >= 0.24
#> |   |   |   V48 < 0.1
#> |   |   |   |   V18 < 0.27
#> |   |   |   |   |   V19 < 0.32 : R (1/0)
#> |   |   |   |   |   V19 >= 0.32 : M (2/0)
#> |   |   |   |   V18 >= 0.27 : R (5/0)
#> |   |   |   V48 >= 0.1 : M (5/0)
#> |   V19 >= 0.4
#> |   |   V2 < 0.06
#> |   |   |   V25 < 0.91
#> |   |   |   |   V16 < 0.2
#> |   |   |   |   |   V13 < 0.15 : R (1/0)
#> |   |   |   |   |   V13 >= 0.15 : M (5/0)
#> |   |   |   |   V16 >= 0.2
#> |   |   |   |   |   V12 < 0.43
#> |   |   |   |   |   |   V29 < 0.89 : R (16/0)
#> |   |   |   |   |   |   V29 >= 0.89
#> |   |   |   |   |   |   |   V16 < 0.4 : R (1/0)
#> |   |   |   |   |   |   |   V16 >= 0.4 : M (1/0)
#> |   |   |   |   |   V12 >= 0.43 : M (2/0)
#> |   |   |   V25 >= 0.91
#> |   |   |   |   V9 < 0.14 : R (1/0)
#> |   |   |   |   V9 >= 0.14 : M (9/0)
#> |   |   V2 >= 0.06 : M (8/0)
#> V4 >= 0.05
#> |   V43 < 0.28
#> |   |   V46 < 0.17
#> |   |   |   V36 < 0.32
#> |   |   |   |   V47 < 0.02 : R (2/0)
#> |   |   |   |   V47 >= 0.02
#> |   |   |   |   |   V9 < 0.13
#> |   |   |   |   |   |   V1 < 0.01 : M (1/0)
#> |   |   |   |   |   |   V1 >= 0.01
#> |   |   |   |   |   |   |   V12 < 0.25 : R (2/0)
#> |   |   |   |   |   |   |   V12 >= 0.25 : M (1/0)
#> |   |   |   |   |   V9 >= 0.13 : M (11/0)
#> |   |   |   V36 >= 0.32
#> |   |   |   |   V16 < 0.12 : M (1/0)
#> |   |   |   |   V16 >= 0.12 : R (10/0)
#> |   |   V46 >= 0.17 : M (7/0)
#> |   V43 >= 0.28
#> |   |   V33 < 0.8 : M (22/0)
#> |   |   V33 >= 0.8 : R (1/0)
#> 
#> Size of the tree : 51


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
