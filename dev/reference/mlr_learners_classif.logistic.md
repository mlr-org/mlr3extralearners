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
#> V1                        -144.5541
#> V10                        134.8431
#> V11                        -52.2885
#> V12                        297.7808
#> V13                       -105.0505
#> V14                         -2.8451
#> V15                        154.0906
#> V16                          -197.6
#> V17                        -31.2696
#> V18                           6.891
#> V19                         78.7916
#> V2                         879.1404
#> V20                         25.0366
#> V21                       -124.8418
#> V22                        165.1557
#> V23                         -8.3743
#> V24                         49.8529
#> V25                          6.5847
#> V26                       -221.6107
#> V27                        172.2408
#> V28                        -32.5066
#> V29                       -106.6982
#> V3                       -1031.4504
#> V30                        375.4107
#> V31                       -491.1806
#> V32                        333.2716
#> V33                        -74.5343
#> V34                        -58.0667
#> V35                        117.0459
#> V36                       -190.2643
#> V37                        -16.1358
#> V38                         -7.2464
#> V39                          8.1757
#> V4                         260.6828
#> V40                        -21.9153
#> V41                         35.7861
#> V42                       -143.0875
#> V43                        199.7635
#> V44                        -13.0299
#> V45                        -24.9687
#> V46                         244.017
#> V47                       -136.0006
#> V48                        228.6448
#> V49                        814.6965
#> V5                         -422.101
#> V50                      -3246.8945
#> V51                        953.4426
#> V52                       -572.5042
#> V53                       3654.7418
#> V54                         17.5943
#> V55                        -72.3124
#> V56                       -1849.501
#> V57                         84.1353
#> V58                       -538.4511
#> V59                       3000.4161
#> V6                         209.6718
#> V60                        101.3701
#> V7                        -331.7902
#> V8                         -54.0026
#> V9                         140.4111
#> Intercept                  -78.4892
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1                                0
#> V10           3.6442340977033813E58
#> V11                               0
#> V12          2.1113997855450423E129
#> V13                               0
#> V14                          0.0581
#> V15            8.331304687697625E66
#> V16                               0
#> V17                               0
#> V18                        983.3445
#> V19            1.654794413300615E34
#> V2                         Infinity
#> V20            7.468772840187851E10
#> V21                               0
#> V22            5.323829798445596E71
#> V23                          0.0002
#> V24            4.475455656747286E21
#> V25                        723.9094
#> V26                               0
#> V27            6.356458626828358E74
#> V28                               0
#> V29                               0
#> V3                                0
#> V30          1.0934905107654835E163
#> V31                               0
#> V32           5.470217595136111E144
#> V33                               0
#> V34                               0
#> V35            6.797880255338219E50
#> V36                               0
#> V37                               0
#> V38                          0.0007
#> V39                       3553.5169
#> V4            1.633465007792741E113
#> V40                               0
#> V41            3.481084902818479E15
#> V42                               0
#> V43            5.704195380853503E86
#> V44                               0
#> V45                               0
#> V46           9.446216131011103E105
#> V47                               0
#> V48           1.9915688254545202E99
#> V49                        Infinity
#> V5                                0
#> V50                               0
#> V51                        Infinity
#> V52                               0
#> V53                        Infinity
#> V54                    43762537.542
#> V55                               0
#> V56                               0
#> V57            3.463322075299424E36
#> V58                               0
#> V59                        Infinity
#> V6             1.146308909419123E91
#> V60           1.0579822967514008E44
#> V7                                0
#> V8                                0
#> V9             9.544677705489602E60
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
