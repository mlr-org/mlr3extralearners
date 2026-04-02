# Classification PART Learner

Regression partition tree. Calls
[`RWeka::PART()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_rules.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.PART")

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
| C                              | numeric | 0.25    |             | \\\[2.22044604925031e-16, 1\]\\ |
| M                              | integer | 2       |             | \\\[1, \infty)\\                |
| R                              | logical | FALSE   | TRUE, FALSE | \-                              |
| N                              | integer | 3       |             | \\\[1, \infty)\\                |
| B                              | logical | FALSE   | TRUE, FALSE | \-                              |
| U                              | logical | FALSE   | TRUE, FALSE | \-                              |
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

Frank, Eibe, Witten, H I (1998). “Generating accurate rule sets without
global optimization.”

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
-\> `LearnerClassifPART`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifPART$new()`](#method-LearnerClassifPART-new)

- [`LearnerClassifPART$marshal()`](#method-LearnerClassifPART-marshal)

- [`LearnerClassifPART$unmarshal()`](#method-LearnerClassifPART-unmarshal)

- [`LearnerClassifPART$clone()`](#method-LearnerClassifPART-clone)

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

    LearnerClassifPART$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifPART$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifPART$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifPART$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.PART")
print(learner)
#> 
#> ── <LearnerClassifPART> (classif.PART): Tree-based Model ───────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, missings, multiclass, and twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> PART decision list
#> ------------------
#> 
#> V11 <= 0.197 AND
#> V52 <= 0.0237 AND
#> V7 <= 0.1398: R (47.0/1.0)
#> 
#> V40 <= 0.6086 AND
#> V52 > 0.0065 AND
#> V15 <= 0.6646 AND
#> V48 > 0.0693: M (51.0)
#> 
#> V20 <= 0.543: R (10.0)
#> 
#> V34 <= 0.1969: M (10.0)
#> 
#> V49 <= 0.0392 AND
#> V33 > 0.2544: M (10.0)
#> 
#> : R (11.0)
#> 
#> Number of Rules  :   6
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
