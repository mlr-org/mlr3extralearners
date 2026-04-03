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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#> V1                          89.8687
#> V10                         53.8913
#> V11                        -49.0943
#> V12                        240.5501
#> V13                       -134.1534
#> V14                         28.1687
#> V15                         95.6423
#> V16                         -26.082
#> V17                        -210.116
#> V18                        129.3161
#> V19                        -73.1461
#> V2                         841.1553
#> V20                        189.2647
#> V21                       -247.7355
#> V22                        172.7605
#> V23                        -50.0569
#> V24                         28.2956
#> V25                          109.14
#> V26                       -178.4739
#> V27                          47.515
#> V28                        -22.5362
#> V29                        -19.8572
#> V3                       -1365.2775
#> V30                        240.3367
#> V31                       -414.0885
#> V32                        253.4451
#> V33                        -73.9067
#> V34                        -96.0568
#> V35                        180.4233
#> V36                       -225.3641
#> V37                         36.0261
#> V38                         -6.1335
#> V39                         -3.7094
#> V4                         275.3803
#> V40                         17.0939
#> V41                         84.7753
#> V42                       -163.2897
#> V43                         85.0087
#> V44                         41.1155
#> V45                       -139.6371
#> V46                        443.6245
#> V47                       -415.6459
#> V48                        336.9246
#> V49                       1074.9482
#> V5                          82.9842
#> V50                       -3054.415
#> V51                       -305.8669
#> V52                        584.4024
#> V53                       -212.0026
#> V54                       1675.2347
#> V55                      -1522.5115
#> V56                      -1718.0993
#> V57                      -1714.6389
#> V58                       3108.0173
#> V59                        830.3377
#> V6                         181.4024
#> V60                       -150.6658
#> V7                        -523.3209
#> V8                         -48.4806
#> V9                         171.6215
#> Intercept                   36.9485
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1            1.0702628692400243E39
#> V10           2.5391944171298266E23
#> V11                               0
#> V12           2.948413355766191E104
#> V13                               0
#> V14            1.712023015939478E12
#> V15           3.4427220405993145E41
#> V16                               0
#> V17                               0
#> V18           1.4497153642801593E56
#> V19                               0
#> V2                         Infinity
#> V20           1.5725114703307646E82
#> V21                               0
#> V22           1.0689187961188512E75
#> V23                               0
#> V24           1.9437427176348918E12
#> V25            2.505431923722368E47
#> V26                               0
#> V27            4.320235465522526E20
#> V28                               0
#> V29                               0
#> V3                                0
#> V30           2.381873022426495E104
#> V31                               0
#> V32          1.1743646381745963E110
#> V33                               0
#> V34                               0
#> V35           2.2741768946307154E78
#> V36                               0
#> V37            4.425408239317547E15
#> V38                          0.0022
#> V39                          0.0245
#> V4            3.945969859564155E119
#> V40                   26534087.9531
#> V41            6.568229582767839E36
#> V42                               0
#> V43            8.295123829995586E36
#> V44           7.1817017900497958E17
#> V45                               0
#> V46           4.609704243238135E192
#> V47                               0
#> V48          2.1110714696011585E146
#> V49                        Infinity
#> V5            1.0954095255279114E36
#> V50                               0
#> V51                               0
#> V52           6.349589325833431E253
#> V53                               0
#> V54                        Infinity
#> V55                               0
#> V56                               0
#> V57                               0
#> V58                        Infinity
#> V59                        Infinity
#> V6            6.0540142207068386E78
#> V60                               0
#> V7                                0
#> V8                                0
#> V9            3.4217695934281073E74
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
