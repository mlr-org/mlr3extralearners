# Regression Gaussian Processes Learner From Weka

Gaussian Processes. Calls
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

- `E_poly`:

  - original id: E

- `L_poly`:

  - original id: L (duplicated L for when K is set to PolyKernel)

- `C_poly`:

  - original id: C

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

- `output-debug-info` for kernel parameter removed:

  - enables debugging output (if available) to be printed

- Reason for change: The parameter is removed because it's unclear how
  to actually use it.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gaussian_processes")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |           |                          |                                                                                                                                      |                       |
|---------------------------|-----------|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Id                        | Type      | Default                  | Levels                                                                                                                               | Range                 |
| subset                    | untyped   | \-                       |                                                                                                                                      | \-                    |
| na.action                 | untyped   | \-                       |                                                                                                                                      | \-                    |
| L                         | numeric   | 1                        |                                                                                                                                      | \\(-\infty, \infty)\\ |
| N                         | character | 0                        | 0, 1, 2                                                                                                                              | \-                    |
| K                         | character | supportVector.PolyKernel | supportVector.NormalizedPolyKernel, supportVector.PolyKernel, supportVector.Puk, supportVector.RBFKernel, supportVector.StringKernel | \-                    |
| S                         | integer   | 1                        |                                                                                                                                      | \\(-\infty, \infty)\\ |
| E_poly                    | numeric   | 1                        |                                                                                                                                      | \\(-\infty, \infty)\\ |
| L_poly                    | logical   | FALSE                    | TRUE, FALSE                                                                                                                          | \-                    |
| C_poly                    | integer   | 250007                   |                                                                                                                                      | \\(-\infty, \infty)\\ |
| output_debug_info         | logical   | FALSE                    | TRUE, FALSE                                                                                                                          | \-                    |
| do_not_check_capabilities | logical   | FALSE                    | TRUE, FALSE                                                                                                                          | \-                    |
| num_decimal_places        | integer   | 2                        |                                                                                                                                      | \\\[1, \infty)\\      |
| batch_size                | integer   | 100                      |                                                                                                                                      | \\\[1, \infty)\\      |
| options                   | untyped   | NULL                     |                                                                                                                                      | \-                    |

## References

Mackay DJ (1998). “Introduction to Gaussian Processes.”

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
-\> `LearnerRegrGaussianProcesses`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrGaussianProcesses$new()`](#method-LearnerRegrGaussianProcesses-new)

- [`LearnerRegrGaussianProcesses$marshal()`](#method-LearnerRegrGaussianProcesses-marshal)

- [`LearnerRegrGaussianProcesses$unmarshal()`](#method-LearnerRegrGaussianProcesses-unmarshal)

- [`LearnerRegrGaussianProcesses$clone()`](#method-LearnerRegrGaussianProcesses-clone)

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

    LearnerRegrGaussianProcesses$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrGaussianProcesses$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrGaussianProcesses$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGaussianProcesses$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.gaussian_processes")
print(learner)
#> 
#> ── <LearnerRegrGaussianProcesses> (regr.gaussian_processes): Gaussian Processes 
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
#> Gaussian Processes
#> 
#> Kernel used:
#>   Linear Kernel: K(x,y) = <x,y>
#> 
#> All values shown based on: Normalize training data
#> 
#> Average Target Value : 0.39351570415400206
#> Inverted Covariance Matrix:
#>     Lowest Value = -0.25464478802885315
#>     Highest Value = 0.887561075981693
#> Inverted Covariance Matrix * Target-value Vector:
#>     Lowest Value = -0.18053976780186629
#>     Highest Value = 0.2428342698113285
#>  
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 1.776574 
```
