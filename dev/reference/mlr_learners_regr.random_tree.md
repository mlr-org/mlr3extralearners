# Regression Random Tree Learner

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

    lrn("regr.random_tree")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

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
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrRandomTree`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrRandomTree$new()`](#method-LearnerRegrRandomTree-new)

- [`LearnerRegrRandomTree$marshal()`](#method-LearnerRegrRandomTree-marshal)

- [`LearnerRegrRandomTree$unmarshal()`](#method-LearnerRegrRandomTree-unmarshal)

- [`LearnerRegrRandomTree$clone()`](#method-LearnerRegrRandomTree-clone)

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

    LearnerRegrRandomTree$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrRandomTree$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrRandomTree$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrRandomTree$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.random_tree")
print(learner)
#> 
#> ── <LearnerRegrRandomTree> (regr.random_tree): Random Tree ─────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response]
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal and missings
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> RandomTree
#> ==========
#> 
#> disp < 120.65
#> |   wt < 1.89
#> |   |   gear < 4.5 : 33.9 (1/0)
#> |   |   gear >= 4.5 : 30.4 (1/0)
#> |   wt >= 1.89
#> |   |   carb < 1.5 : 27.3 (1/0)
#> |   |   carb >= 1.5 : 26 (1/0)
#> disp >= 120.65
#> |   disp < 266.9
#> |   |   wt < 3.33
#> |   |   |   am < 0.5
#> |   |   |   |   disp < 199.4 : 22.8 (1/0)
#> |   |   |   |   disp >= 199.4 : 21.4 (1/0)
#> |   |   |   am >= 0.5
#> |   |   |   |   carb < 3 : 21.4 (1/0)
#> |   |   |   |   carb >= 3 : 21 (2/0)
#> |   |   wt >= 3.33
#> |   |   |   qsec < 18.6 : 19.2 (1/0)
#> |   |   |   qsec >= 18.6 : 17.95 (2/0.02)
#> |   disp >= 266.9
#> |   |   disp < 450
#> |   |   |   drat < 3.19
#> |   |   |   |   disp < 339
#> |   |   |   |   |   wt < 3.92 : 15.3 (3/0.02)
#> |   |   |   |   |   wt >= 3.92 : 16.4 (1/0)
#> |   |   |   |   disp >= 339
#> |   |   |   |   |   disp < 380 : 18.7 (1/0)
#> |   |   |   |   |   disp >= 380 : 19.2 (1/0)
#> |   |   |   drat >= 3.19
#> |   |   |   |   hp < 237.5 : 14.7 (1/0)
#> |   |   |   |   hp >= 237.5 : 13.3 (1/0)
#> |   |   disp >= 450 : 10.4 (1/0)
#> 
#> Size of the tree : 33


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.04909 
```
