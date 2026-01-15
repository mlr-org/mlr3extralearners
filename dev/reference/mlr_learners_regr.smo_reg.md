# Regression Support Vector Machine Learner

Support Vector Machine for regression. Calls
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

- `T_improved`:

  - original id: T

- `V_improved`:

  - original id: V

- `P_improved`:

  - original id: P

- `L_improved`:

  - original id: L (duplicated L for when I is set to RegSMOImproved)

- `W_improved`:

  - original id: W

- `C_poly`:

  - original id: C

- `E_poly`:

  - original id: E

- `L_poly`:

  - original id: L (duplicated L for when K is set to PolyKernel)

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.smo_reg")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |           |                |                                                                |                       |
|---------------------------|-----------|----------------|----------------------------------------------------------------|-----------------------|
| Id                        | Type      | Default        | Levels                                                         | Range                 |
| subset                    | untyped   | \-             |                                                                | \-                    |
| na.action                 | untyped   | \-             |                                                                | \-                    |
| C                         | numeric   | 1              |                                                                | \\(-\infty, \infty)\\ |
| N                         | character | 0              | 0, 1, 2                                                        | \-                    |
| I                         | character | RegSMOImproved | RegSMO, RegSMOImproved                                         | \-                    |
| K                         | character | PolyKernel     | NormalizedPolyKernel, PolyKernel, Puk, RBFKernel, StringKernel | \-                    |
| T_improved                | numeric   | 0.001          |                                                                | \\(-\infty, \infty)\\ |
| V_improved                | logical   | TRUE           | TRUE, FALSE                                                    | \-                    |
| P_improved                | numeric   | 1e-12          |                                                                | \\(-\infty, \infty)\\ |
| L_improved                | numeric   | 0.001          |                                                                | \\(-\infty, \infty)\\ |
| W_improved                | integer   | 1              |                                                                | \\(-\infty, \infty)\\ |
| C_poly                    | integer   | 250007         |                                                                | \\(-\infty, \infty)\\ |
| E_poly                    | numeric   | 1              |                                                                | \\(-\infty, \infty)\\ |
| L_poly                    | logical   | FALSE          | TRUE, FALSE                                                    | \-                    |
| output_debug_info         | logical   | FALSE          | TRUE, FALSE                                                    | \-                    |
| do_not_check_capabilities | logical   | FALSE          | TRUE, FALSE                                                    | \-                    |
| num_decimal_places        | integer   | 2              |                                                                | \\\[1, \infty)\\      |
| batch_size                | integer   | 100            |                                                                | \\\[1, \infty)\\      |
| options                   | untyped   | NULL           |                                                                | \-                    |

## References

Shevade S, Keerthi S, Bhattacharyya C, Murthy K (1999). “Improvements to
the SMO Algorithm for SVM Regression.” In *IEEE Transactions on Neural
Networks*.

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
-\> `LearnerRegrSMOreg`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrSMOreg$new()`](#method-LearnerRegrSMOreg-new)

- [`LearnerRegrSMOreg$marshal()`](#method-LearnerRegrSMOreg-marshal)

- [`LearnerRegrSMOreg$unmarshal()`](#method-LearnerRegrSMOreg-unmarshal)

- [`LearnerRegrSMOreg$clone()`](#method-LearnerRegrSMOreg-clone)

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

    LearnerRegrSMOreg$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrSMOreg$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrSMOreg$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrSMOreg$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.smo_reg")
print(learner)
#> 
#> ── <LearnerRegrSMOreg> (regr.smo_reg): Support Vector Machine ──────────────────
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
#> SMOreg
#> 
#> weights (not support vectors):
#>  +       0.0355 * (normalized) am
#>  -       0.3332 * (normalized) carb
#>  +       0.0873 * (normalized) cyl
#>  -       0.0789 * (normalized) disp
#>  +       0.0948 * (normalized) drat
#>  +       0.1102 * (normalized) gear
#>  -       0.0279 * (normalized) hp
#>  +       0.1357 * (normalized) qsec
#>  +       0.0108 * (normalized) vs
#>  -       0.5749 * (normalized) wt
#>  +       0.6676
#> 
#> 
#> 
#> Number of kernel evaluations: 231 (95.952% cached)


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 12.95516 
```
