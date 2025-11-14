# Classification Decision Table Learner

Simple Decision Table majority classifier. Calls
[`RWeka::make_Weka_classifier()`](https://rdrr.io/pkg/RWeka/man/Weka_interfaces.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Initial parameter values

- `E`:

  - Has only 2 out of 4 original evaluation measures : acc and auc with
    acc being the default

  - Reason for change: this learner should only contain evaluation
    measures appropriate for classification tasks

## Custom mlr3 parameters

- `output_debug_info`:

  - original id: output-debug-info

- `do_not_check_capabilities`:

  - original id: do-not-check-capabilities

- `num_decimal_places`:

  - original id: num-decimal-places

- `batch_size`:

  - original id: batch-size

- `P_best`:

  - original id: P

- `D_best`:

  - original id: D

- `N_best`:

  - original id: N

- `S_best`:

  - original id: S

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.decision_table")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |           |           |                           |                       |
|---------------------------|-----------|-----------|---------------------------|-----------------------|
| Id                        | Type      | Default   | Levels                    | Range                 |
| subset                    | untyped   | \-        |                           | \-                    |
| na.action                 | untyped   | \-        |                           | \-                    |
| S                         | character | BestFirst | BestFirst, GreedyStepwise | \-                    |
| X                         | integer   | 1         |                           | \\(-\infty, \infty)\\ |
| E                         | character | acc       | acc, auc                  | \-                    |
| I                         | logical   | \-        | TRUE, FALSE               | \-                    |
| R                         | logical   | \-        | TRUE, FALSE               | \-                    |
| output_debug_info         | logical   | FALSE     | TRUE, FALSE               | \-                    |
| do_not_check_capabilities | logical   | FALSE     | TRUE, FALSE               | \-                    |
| num_decimal_places        | integer   | 2         |                           | \\\[1, \infty)\\      |
| batch_size                | integer   | 100       |                           | \\\[1, \infty)\\      |
| P_best                    | untyped   | \-        |                           | \-                    |
| D_best                    | character | 1         | 0, 1, 2                   | \-                    |
| N_best                    | integer   | \-        |                           | \\(-\infty, \infty)\\ |
| S_best                    | integer   | 1         |                           | \\(-\infty, \infty)\\ |
| options                   | untyped   | NULL      |                           | \-                    |

## References

Kohavi R (1995). “The Power of Decision Tables.” In *8th European
Conference on Machine Learning*, 174–189.

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
-\> `LearnerClassifDecisionTable`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifDecisionTable$new()`](#method-LearnerClassifDecisionTable-new)

- [`LearnerClassifDecisionTable$marshal()`](#method-LearnerClassifDecisionTable-marshal)

- [`LearnerClassifDecisionTable$unmarshal()`](#method-LearnerClassifDecisionTable-unmarshal)

- [`LearnerClassifDecisionTable$clone()`](#method-LearnerClassifDecisionTable-clone)

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

    LearnerClassifDecisionTable$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifDecisionTable$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifDecisionTable$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifDecisionTable$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.decision_table")
print(learner)
#> 
#> ── <LearnerClassifDecisionTable> (classif.decision_table): Decision Table ──────
#> • Model: -
#> • Parameters: E=acc
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
#> Decision Table:
#> 
#> Number of training instances: 139
#> Number of Rules : 12
#> Non matches covered by Majority class.
#>  Best first.
#>  Start set: no attributes
#>  Search direction: forward
#>  Stale search after 5 node expansions
#>  Total number of subsets evaluated: 510
#>  Merit of best subset found:   82.014
#> Evaluation (for feature selection): CV (leave one out) 
#> Feature set: 4,35,45,51,1


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
