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

- [`LearnerClassifLogistic$new()`](#method-LearnerClassifLogistic-initialize)

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

### `LearnerClassifLogistic$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLogistic$new()

------------------------------------------------------------------------

### `LearnerClassifLogistic$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifLogistic$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLogistic$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifLogistic$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLogistic$clone()`

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
#> V1                         698.2197
#> V10                         -25.848
#> V11                         20.8852
#> V12                         74.2476
#> V13                        161.8014
#> V14                        -64.3712
#> V15                         11.3568
#> V16                         139.229
#> V17                       -187.3075
#> V18                         16.6781
#> V19                         24.7409
#> V2                         230.3962
#> V20                        -26.2742
#> V21                          8.0229
#> V22                         45.8162
#> V23                         -6.9811
#> V24                        120.9139
#> V25                          8.6228
#> V26                         -56.262
#> V27                         56.9189
#> V28                        -75.0883
#> V29                        -66.7794
#> V3                        -994.3085
#> V30                        295.9349
#> V31                       -345.9773
#> V32                        225.8183
#> V33                         23.6529
#> V34                       -225.1369
#> V35                        229.5621
#> V36                        -61.3315
#> V37                       -172.0148
#> V38                        117.6542
#> V39                          52.353
#> V4                         694.7511
#> V40                       -143.7224
#> V41                         99.7394
#> V42                        -47.6518
#> V43                         30.4647
#> V44                        -63.2317
#> V45                        -47.4656
#> V46                          60.252
#> V47                        264.2614
#> V48                        113.2654
#> V49                        838.4542
#> V5                         -48.5855
#> V50                      -2662.5956
#> V51                       1584.3456
#> V52                        853.5977
#> V53                       1042.1851
#> V54                       -266.7637
#> V55                      -1364.4206
#> V56                        738.5861
#> V57                      -1033.5703
#> V58                        734.2357
#> V59                       -392.0177
#> V6                           53.679
#> V60                       -384.2775
#> V7                        -239.9927
#> V8                        -325.9371
#> V9                         229.7028
#> Intercept                 -136.7047
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1            1.709855643344979E303
#> V10                               0
#> V11                 1175754502.5002
#> V12           1.7592891787490216E32
#> V13           1.8597898588105612E70
#> V14                               0
#> V15                      85542.9142
#> V16            2.926633359355948E60
#> V17                               0
#> V18                   17507182.8104
#> V19            5.557136901877788E10
#> V2           1.1476243355491207E100
#> V20                               0
#> V21                       3050.0907
#> V22            7.901831553061306E19
#> V23                          0.0009
#> V24           3.2526507678882115E52
#> V25                       5556.8255
#> V26                               0
#> V27            5.242959531031875E24
#> V28                               0
#> V29                               0
#> V3                                0
#> V30          3.3334486298896565E128
#> V31                               0
#> V32           1.1793906108608286E98
#> V33           1.8720528636358273E10
#> V34                               0
#> V35            4.983825936303136E99
#> V36                               0
#> V37                               0
#> V38           1.2490167671685204E51
#> V39            5.452853426776553E22
#> V4            5.328191030666633E301
#> V40                               0
#> V41           2.0714633370556342E43
#> V42                               0
#> V43           1.7008535909468406E13
#> V44                               0
#> V45                               0
#> V46           1.4693416406656392E26
#> V47           5.851678821602146E114
#> V48           1.5507372348413912E49
#> V49                        Infinity
#> V5                                0
#> V50                               0
#> V51                        Infinity
#> V52                        Infinity
#> V53                        Infinity
#> V54                               0
#> V55                               0
#> V56                        Infinity
#> V57                               0
#> V58                        Infinity
#> V59                               0
#> V6            2.0534889981695286E23
#> V60                               0
#> V7                                0
#> V8                                0
#> V9              5.73688290273521E99
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
