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
#>                              Class
#> Variable                         M
#> ==================================
#> V1                        178.4207
#> V10                       -15.1555
#> V11                       -12.9747
#> V12                       158.1633
#> V13                       112.4369
#> V14                        -49.525
#> V15                       -37.2818
#> V16                        32.5257
#> V17                        54.8241
#> V18                        -12.961
#> V19                      -109.9046
#> V2                        139.1261
#> V20                        70.2374
#> V21                        24.1802
#> V22                       -71.7611
#> V23                         73.292
#> V24                       150.6748
#> V25                      -129.1298
#> V26                         23.533
#> V27                        141.953
#> V28                      -269.2998
#> V29                       188.1063
#> V3                       -765.1159
#> V30                       151.2427
#> V31                      -302.3457
#> V32                       152.2088
#> V33                        76.0813
#> V34                      -240.6315
#> V35                        287.775
#> V36                      -169.5596
#> V37                       -87.9424
#> V38                       -15.4589
#> V39                       210.0085
#> V4                        351.8438
#> V40                      -200.1091
#> V41                        87.1935
#> V42                       -90.9426
#> V43                        75.3088
#> V44                        -5.2458
#> V45                       -67.4724
#> V46                        -2.7546
#> V47                       409.7549
#> V48                         43.808
#> V49                       694.7532
#> V5                       -129.1511
#> V50                     -2444.6486
#> V51                      -189.8973
#> V52                      4132.6036
#> V53                       300.2468
#> V54                      1075.5364
#> V55                      -1976.985
#> V56                       803.1926
#> V57                       712.0001
#> V58                      -130.0688
#> V59                       768.4597
#> V6                        -71.6391
#> V60                      -915.1542
#> V7                       -112.5871
#> V8                         35.2823
#> V9                         84.1266
#> Intercept                -159.9216
#> 
#> 
#> Odds Ratios...
#>                              Class
#> Variable                         M
#> ==================================
#> V1            3.069976618384105E77
#> V10                              0
#> V11                              0
#> V12           4.891615066971439E68
#> V13           6.772430075297121E48
#> V14                              0
#> V15                              0
#> V16          1.3358022514515589E14
#> V17           6.453329628869326E23
#> V18                              0
#> V19                              0
#> V2             2.64065671859179E60
#> V20           3.189522037075422E30
#> V21          3.1720373056657974E10
#> V22                              0
#> V23           6.765535173978365E31
#> V24           2.736852807441571E65
#> V25                              0
#> V26          1.6606232182930302E10
#> V27          4.4606684715357504E61
#> V28                              0
#> V29           4.937780914168332E81
#> V3                               0
#> V30           4.829083959159362E65
#> V31                              0
#> V32           1.268938494025017E66
#> V33          1.1007872169347432E33
#> V34                              0
#> V35          9.529712872626302E124
#> V36                              0
#> V37                              0
#> V38                              0
#> V39          1.6051926420530396E91
#> V4           6.365303620731853E152
#> V40                              0
#> V41           7.372941216873005E37
#> V42                              0
#> V43            5.08388687878653E32
#> V44                         0.0053
#> V45                              0
#> V46                         0.0636
#> V47           9.00071505453899E177
#> V48          1.0606393344858894E19
#> V49          5.339326349493791E301
#> V5                               0
#> V50                              0
#> V51                              0
#> V52                       Infinity
#> V53           2.48606898037482E130
#> V54                       Infinity
#> V55                              0
#> V56                       Infinity
#> V57                       Infinity
#> V58                              0
#> V59                       Infinity
#> V6                               0
#> V60                              0
#> V7                               0
#> V8           2.1032611883003628E15
#> V9           3.4333174266542293E36
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
