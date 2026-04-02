# Classification Support Vector Machine Learner

Support Vector classifier trained with John Platt's sequential minimal
optimization algorithm. Calls
[`RWeka::SMO()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_functions.html)
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

  - original id: L

- `C_poly`:

  - original id: C

- `C_logistic`:

  - original id: C

- `R_logistic`:

  - original id: R

- `M_logistic`:

  - original id: M

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.smo")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |           |                                       |                                                                |                       |
|---------------------------|-----------|---------------------------------------|----------------------------------------------------------------|-----------------------|
| Id                        | Type      | Default                               | Levels                                                         | Range                 |
| subset                    | untyped   | \-                                    |                                                                | \-                    |
| na.action                 | untyped   | \-                                    |                                                                | \-                    |
| no_checks                 | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| C                         | numeric   | 1                                     |                                                                | \\(-\infty, \infty)\\ |
| N                         | character | 0                                     | 0, 1, 2                                                        | \-                    |
| L                         | numeric   | 0.001                                 |                                                                | \\(-\infty, \infty)\\ |
| P                         | numeric   | 1e-12                                 |                                                                | \\(-\infty, \infty)\\ |
| M                         | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| V                         | integer   | -1                                    |                                                                | \\(-\infty, \infty)\\ |
| W                         | integer   | 1                                     |                                                                | \\(-\infty, \infty)\\ |
| K                         | character | PolyKernel                            | NormalizedPolyKernel, PolyKernel, Puk, RBFKernel, StringKernel | \-                    |
| calibrator                | untyped   | "weka.classifiers.functions.Logistic" |                                                                | \-                    |
| E_poly                    | numeric   | 1                                     |                                                                | \\(-\infty, \infty)\\ |
| L_poly                    | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| C_poly                    | integer   | 25007                                 |                                                                | \\(-\infty, \infty)\\ |
| C_logistic                | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| R_logistic                | numeric   | \-                                    |                                                                | \\(-\infty, \infty)\\ |
| M_logistic                | integer   | -1                                    |                                                                | \\(-\infty, \infty)\\ |
| output_debug_info         | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| do_not_check_capabilities | logical   | FALSE                                 | TRUE, FALSE                                                    | \-                    |
| num_decimal_places        | integer   | 2                                     |                                                                | \\\[1, \infty)\\      |
| batch_size                | integer   | 100                                   |                                                                | \\\[1, \infty)\\      |
| options                   | untyped   | NULL                                  |                                                                | \-                    |

## References

Platt J (1998). “Fast Training of Support Vector Machines using
Sequential Minimal Optimization.” In Schoelkopf B, Burges C, Smola A
(eds.), *Advances in Kernel Methods - Support Vector Learning*. MIT
Press.
[http://research.microsoft.com/jplatt/smo.html](http://research.microsoft.com/jplatt/smo.md).

Keerthi S, Shevade S, Bhattacharyya C, Murthy K (2001). “Improvements to
Platt's SMO Algorithm for SVM Classifier Design.” *Neural Computation*,
**13**(3), 637-649.

Hastie T, Tibshirani R (1998). “Classification by Pairwise Coupling.” In
Jordan MI, Kearns MJ, Solla SA (eds.), *Advances in Neural Information
Processing Systems*, volume 10.

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
-\> `LearnerClassifSMO`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifSMO$new()`](#method-LearnerClassifSMO-new)

- [`LearnerClassifSMO$marshal()`](#method-LearnerClassifSMO-marshal)

- [`LearnerClassifSMO$unmarshal()`](#method-LearnerClassifSMO-unmarshal)

- [`LearnerClassifSMO$clone()`](#method-LearnerClassifSMO-clone)

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

    LearnerClassifSMO$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifSMO$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifSMO$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifSMO$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.smo")
print(learner)
#> 
#> ── <LearnerClassifSMO> (classif.smo): Support Vector Machine ───────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
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
#> SMO
#> 
#> Kernel used:
#>   Linear Kernel: K(x,y) = <x,y>
#> 
#> Classifier for classes: M, R
#> 
#> BinarySMO
#> 
#> Machine linear: showing attribute weights, not support vectors.
#> 
#>         -0.543  * (normalized) V1
#>  +      -0.4697 * (normalized) V10
#>  +      -1.2656 * (normalized) V11
#>  +      -1.5703 * (normalized) V12
#>  +      -0.8363 * (normalized) V13
#>  +       0.6609 * (normalized) V14
#>  +       0.0337 * (normalized) V15
#>  +       0.6331 * (normalized) V16
#>  +       0.2424 * (normalized) V17
#>  +       0.0705 * (normalized) V18
#>  +      -0.1607 * (normalized) V19
#>  +      -0.0697 * (normalized) V2
#>  +      -0.4083 * (normalized) V20
#>  +      -0.1913 * (normalized) V21
#>  +      -0.9255 * (normalized) V22
#>  +      -0.7389 * (normalized) V23
#>  +      -0.4167 * (normalized) V24
#>  +       0.4388 * (normalized) V25
#>  +       0.4229 * (normalized) V26
#>  +      -0.3695 * (normalized) V27
#>  +      -0.1602 * (normalized) V28
#>  +      -0.4053 * (normalized) V29
#>  +       0.4608 * (normalized) V3
#>  +      -0.5778 * (normalized) V30
#>  +       0.5897 * (normalized) V31
#>  +      -0.3503 * (normalized) V32
#>  +       0.2465 * (normalized) V33
#>  +      -0.0042 * (normalized) V34
#>  +      -0.0027 * (normalized) V35
#>  +       0.8947 * (normalized) V36
#>  +       0.9499 * (normalized) V37
#>  +      -1.0561 * (normalized) V38
#>  +      -0.6204 * (normalized) V39
#>  +      -0.1079 * (normalized) V4
#>  +       0.2969 * (normalized) V40
#>  +       0.3025 * (normalized) V41
#>  +      -0.2144 * (normalized) V42
#>  +      -0.2142 * (normalized) V43
#>  +      -0.421  * (normalized) V44
#>  +      -0.8577 * (normalized) V45
#>  +      -0.7681 * (normalized) V46
#>  +      -0.8525 * (normalized) V47
#>  +      -0.6506 * (normalized) V48
#>  +      -0.8939 * (normalized) V49
#>  +      -0.3549 * (normalized) V5
#>  +       0.3373 * (normalized) V50
#>  +      -0.4656 * (normalized) V51
#>  +      -0.9473 * (normalized) V52
#>  +       0.3732 * (normalized) V53
#>  +      -0.5807 * (normalized) V54
#>  +       0.411  * (normalized) V55
#>  +      -0.214  * (normalized) V56
#>  +       0.9024 * (normalized) V57
#>  +      -0.5488 * (normalized) V58
#>  +      -0.7454 * (normalized) V59
#>  +      -0.2438 * (normalized) V6
#>  +      -0.8524 * (normalized) V60
#>  +       0.1068 * (normalized) V7
#>  +       0.671  * (normalized) V8
#>  +      -0.1201 * (normalized) V9
#>  +       3.423 
#> 
#> Number of kernel evaluations: 6177 (88.517% cached)
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
