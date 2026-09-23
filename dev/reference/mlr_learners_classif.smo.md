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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| subset | untyped | \- |  | \- |
| na.action | untyped | \- |  | \- |
| no_checks | logical | FALSE | TRUE, FALSE | \- |
| C | numeric | 1 |  | \\(-\infty, \infty)\\ |
| N | character | 0 | 0, 1, 2 | \- |
| L | numeric | 0.001 |  | \\(-\infty, \infty)\\ |
| P | numeric | 1e-12 |  | \\(-\infty, \infty)\\ |
| M | logical | FALSE | TRUE, FALSE | \- |
| V | integer | -1 |  | \\(-\infty, \infty)\\ |
| W | integer | 1 |  | \\(-\infty, \infty)\\ |
| K | character | PolyKernel | NormalizedPolyKernel, PolyKernel, Puk, RBFKernel, StringKernel | \- |
| calibrator | untyped | "weka.classifiers.functions.Logistic" |  | \- |
| E_poly | numeric | 1 |  | \\(-\infty, \infty)\\ |
| L_poly | logical | FALSE | TRUE, FALSE | \- |
| C_poly | integer | 25007 |  | \\(-\infty, \infty)\\ |
| C_logistic | logical | FALSE | TRUE, FALSE | \- |
| R_logistic | numeric | \- |  | \\(-\infty, \infty)\\ |
| M_logistic | integer | -1 |  | \\(-\infty, \infty)\\ |
| output_debug_info | logical | FALSE | TRUE, FALSE | \- |
| do_not_check_capabilities | logical | FALSE | TRUE, FALSE | \- |
| num_decimal_places | integer | 2 |  | \\\[1, \infty)\\ |
| batch_size | integer | 100 |  | \\\[1, \infty)\\ |
| options | untyped | NULL |  | \- |

## References

Platt J (1998). “Fast Training of Support Vector Machines using
Sequential Minimal Optimization.” In Schoelkopf B, Burges C, Smola A
(eds.), *Advances in Kernel Methods - Support Vector Learning*. MIT
Press.
<https://www.microsoft.com/en-us/research/publication/sequential-minimal-optimization-a-fast-algorithm-for-training-support-vector-machines/>.

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
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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

- [`LearnerClassifSMO$new()`](#method-LearnerClassifSMO-initialize)

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

### `LearnerClassifSMO$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifSMO$new()

------------------------------------------------------------------------

### `LearnerClassifSMO$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifSMO$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifSMO$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifSMO$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifSMO$clone()`

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
#>         -0.9498 * (normalized) V1
#>  +      -0.5931 * (normalized) V10
#>  +      -1.5295 * (normalized) V11
#>  +      -1.2612 * (normalized) V12
#>  +      -0.4981 * (normalized) V13
#>  +       0.3007 * (normalized) V14
#>  +       0.2556 * (normalized) V15
#>  +       1.0185 * (normalized) V16
#>  +       0.3098 * (normalized) V17
#>  +      -0.2649 * (normalized) V18
#>  +      -0.176  * (normalized) V19
#>  +       0.2062 * (normalized) V2
#>  +      -0.3215 * (normalized) V20
#>  +      -0.5187 * (normalized) V21
#>  +      -0.1341 * (normalized) V22
#>  +       0.1272 * (normalized) V23
#>  +      -0.0836 * (normalized) V24
#>  +       0.0818 * (normalized) V25
#>  +      -0.6773 * (normalized) V26
#>  +      -0.6313 * (normalized) V27
#>  +       0.1479 * (normalized) V28
#>  +      -0.4165 * (normalized) V29
#>  +       0.1559 * (normalized) V3
#>  +      -0.9152 * (normalized) V30
#>  +       0.968  * (normalized) V31
#>  +      -0.1786 * (normalized) V32
#>  +       0.0057 * (normalized) V33
#>  +       0.0741 * (normalized) V34
#>  +       0.1061 * (normalized) V35
#>  +       1.0527 * (normalized) V36
#>  +       0.8377 * (normalized) V37
#>  +      -0.5819 * (normalized) V38
#>  +      -0.227  * (normalized) V39
#>  +      -0.3258 * (normalized) V4
#>  +       0.4916 * (normalized) V40
#>  +      -0.3234 * (normalized) V41
#>  +       0.1695 * (normalized) V42
#>  +      -0.1362 * (normalized) V43
#>  +      -0.1933 * (normalized) V44
#>  +      -0.457  * (normalized) V45
#>  +      -0.2943 * (normalized) V46
#>  +      -0.1408 * (normalized) V47
#>  +      -1.1159 * (normalized) V48
#>  +      -1.3564 * (normalized) V49
#>  +      -0.7231 * (normalized) V5
#>  +       0.1773 * (normalized) V50
#>  +      -0.6211 * (normalized) V51
#>  +      -1.2596 * (normalized) V52
#>  +      -0.2119 * (normalized) V53
#>  +      -0.1063 * (normalized) V54
#>  +       0.328  * (normalized) V55
#>  +       0.1456 * (normalized) V56
#>  +       0.2207 * (normalized) V57
#>  +      -0.5115 * (normalized) V58
#>  +      -0.3781 * (normalized) V59
#>  +      -0.2834 * (normalized) V6
#>  +       0.0146 * (normalized) V60
#>  +       0.6431 * (normalized) V7
#>  +       0.5025 * (normalized) V8
#>  +      -0.5998 * (normalized) V9
#>  +       3.4497
#> 
#> Number of kernel evaluations: 5714 (88.784% cached)
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
