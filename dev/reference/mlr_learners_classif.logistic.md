# Classification Logistic Regression Learner

Multinomial Logistic Regression model with a ridge estimator. Calls
[`RWeka::Logistic()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_functions.html)
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

    lrn("classif.logistic")

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
| C                         | logical | FALSE   | TRUE, FALSE | \-                    |
| R                         | numeric | \-      |             | \\(-\infty, \infty)\\ |
| M                         | integer | -1      |             | \\(-\infty, \infty)\\ |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-                    |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-                    |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\      |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\      |
| options                   | untyped | NULL    |             | \-                    |

## References

le Cessie, S., van Houwelingen, J.C. (1992). “Ridge Estimators in
Logistic Regression.” *Applied Statistics*, **41**(1), 191-201.

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
-\> `LearnerClassifLogistic`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifLogistic$new()`](#method-LearnerClassifLogistic-new)

- [`LearnerClassifLogistic$marshal()`](#method-LearnerClassifLogistic-marshal)

- [`LearnerClassifLogistic$unmarshal()`](#method-LearnerClassifLogistic-unmarshal)

- [`LearnerClassifLogistic$clone()`](#method-LearnerClassifLogistic-clone)

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

    LearnerClassifLogistic$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifLogistic$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifLogistic$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLogistic$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.logistic")
print(learner)
#> 
#> ── <LearnerClassifLogistic> (classif.logistic): Multinomial Logistic Regression 
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
#> Logistic Regression with ridge parameter of 1.0E-8
#> Coefficients...
#>                               Class
#> Variable                          M
#> ===================================
#> V1                         263.8239
#> V10                       -195.0471
#> V11                        196.6137
#> V12                        101.9341
#> V13                        -60.9743
#> V14                          4.8921
#> V15                         -5.0664
#> V16                         -3.8395
#> V17                        -80.9829
#> V18                         54.1782
#> V19                        -38.5195
#> V2                         -73.4657
#> V20                         -41.581
#> V21                         43.9438
#> V22                         27.6634
#> V23                        -67.8473
#> V24                        147.5689
#> V25                         -67.217
#> V26                         -44.428
#> V27                         35.0185
#> V28                          16.307
#> V29                       -107.6513
#> V3                         -602.941
#> V30                        208.1015
#> V31                       -203.1615
#> V32                         44.2853
#> V33                         13.6855
#> V34                        -51.3542
#> V35                         19.5103
#> V36                         -4.5618
#> V37                       -155.7881
#> V38                        148.0868
#> V39                           0.518
#> V4                         156.6705
#> V40                       -146.9957
#> V41                        145.7876
#> V42                        -98.4923
#> V43                        -72.6961
#> V44                        189.4804
#> V45                       -125.0323
#> V46                        127.1642
#> V47                        261.7515
#> V48                       -134.7355
#> V49                        585.2035
#> V5                         190.4757
#> V50                      -1487.3478
#> V51                        1003.359
#> V52                         944.901
#> V53                       -568.7502
#> V54                       1696.8299
#> V55                       -640.8128
#> V56                       -645.6168
#> V57                      -1485.0682
#> V58                       2150.8754
#> V59                       1395.5345
#> V6                         157.2752
#> V60                      -1324.3685
#> V7                        -325.4407
#> V8                           1.3982
#> V9                         147.0514
#> Intercept                   -6.1527
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1           3.7778608004410813E114
#> V10                               0
#> V11           2.4448584746903094E85
#> V12            1.859620588550433E44
#> V13                               0
#> V14                        133.2359
#> V15                          0.0063
#> V16                          0.0215
#> V17                               0
#> V18            3.383061978513795E23
#> V19                               0
#> V2                                0
#> V20                               0
#> V21           1.2149644977501876E19
#> V22           1.0328705791920463E12
#> V23                               0
#> V24            1.225681318168982E64
#> V25                               0
#> V26                               0
#> V27           1.6156083302117965E15
#> V28                   12079780.1417
#> V29                               0
#> V3                                0
#> V30            2.384135369925122E90
#> V31                               0
#> V32            1.709425690448904E19
#> V33                     878098.9217
#> V34                               0
#> V35                  297319438.1981
#> V36                          0.0104
#> V37                               0
#> V38            2.057129666036207E64
#> V39                          1.6787
#> V4              1.09937171906299E68
#> V40                               0
#> V41           2.0641412791840906E63
#> V42                               0
#> V43                               0
#> V44            1.951071613554077E82
#> V45                               0
#> V46           1.6854088171087563E55
#> V47           4.755890757262094E113
#> V48                               0
#> V49           1.414717024258471E254
#> V5            5.2791756288414185E82
#> V50                               0
#> V51                        Infinity
#> V52                        Infinity
#> V53                               0
#> V54                        Infinity
#> V55                               0
#> V56                               0
#> V57                               0
#> V58                        Infinity
#> V59                        Infinity
#> V6             2.012566846229456E68
#> V60                               0
#> V7                                0
#> V8                           4.0478
#> V9             7.305188590665858E63
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
