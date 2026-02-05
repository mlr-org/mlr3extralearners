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
#> • Other settings: use_weights = 'error'

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
#>         -0.9336 * (normalized) V1
#>  +      -0.9197 * (normalized) V10
#>  +      -1.6052 * (normalized) V11
#>  +      -1.2217 * (normalized) V12
#>  +       0.1372 * (normalized) V13
#>  +       0.2639 * (normalized) V14
#>  +       0.4923 * (normalized) V15
#>  +       0.4282 * (normalized) V16
#>  +       0.3194 * (normalized) V17
#>  +      -0.1207 * (normalized) V18
#>  +      -0.6713 * (normalized) V19
#>  +      -0.2978 * (normalized) V2
#>  +       0.1239 * (normalized) V20
#>  +      -0.5932 * (normalized) V21
#>  +      -0.3352 * (normalized) V22
#>  +      -0.2161 * (normalized) V23
#>  +      -0.1849 * (normalized) V24
#>  +       0.3024 * (normalized) V25
#>  +      -0.2999 * (normalized) V26
#>  +      -0.5982 * (normalized) V27
#>  +      -0.4183 * (normalized) V28
#>  +      -0.3756 * (normalized) V29
#>  +       0.3048 * (normalized) V3
#>  +      -1.1687 * (normalized) V30
#>  +       0.6973 * (normalized) V31
#>  +       0.3304 * (normalized) V32
#>  +       0.1199 * (normalized) V33
#>  +      -0.0061 * (normalized) V34
#>  +      -0.3391 * (normalized) V35
#>  +       0.7595 * (normalized) V36
#>  +       1.3557 * (normalized) V37
#>  +       0.3554 * (normalized) V38
#>  +      -0.8124 * (normalized) V39
#>  +      -1.2006 * (normalized) V4
#>  +       0.3428 * (normalized) V40
#>  +      -0.1268 * (normalized) V41
#>  +       0.297  * (normalized) V42
#>  +      -0.0682 * (normalized) V43
#>  +      -1.267  * (normalized) V44
#>  +      -1.1992 * (normalized) V45
#>  +      -0.5827 * (normalized) V46
#>  +      -0.3411 * (normalized) V47
#>  +      -0.5375 * (normalized) V48
#>  +      -0.907  * (normalized) V49
#>  +      -0.5833 * (normalized) V5
#>  +       0.9685 * (normalized) V50
#>  +      -0.3318 * (normalized) V51
#>  +      -1.1481 * (normalized) V52
#>  +       0.0349 * (normalized) V53
#>  +      -0.3577 * (normalized) V54
#>  +       0.543  * (normalized) V55
#>  +      -0.1078 * (normalized) V56
#>  +       0.6916 * (normalized) V57
#>  +      -0.9691 * (normalized) V58
#>  +      -1.2096 * (normalized) V59
#>  +      -0.0563 * (normalized) V6
#>  +      -0.7874 * (normalized) V60
#>  +       0.1591 * (normalized) V7
#>  +       0.5453 * (normalized) V8
#>  +      -0.5999 * (normalized) V9
#>  +       4.0141
#> 
#> Number of kernel evaluations: 5308 (83.571% cached)
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
