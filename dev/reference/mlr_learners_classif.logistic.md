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
#> V1                         767.9361
#> V10                       -321.1822
#> V11                         73.8968
#> V12                        248.3662
#> V13                        -65.3654
#> V14                         -34.821
#> V15                         86.7923
#> V16                        -42.6468
#> V17                        -93.1409
#> V18                         -3.0402
#> V19                         44.8531
#> V2                        -496.5383
#> V20                         34.0535
#> V21                        -49.0462
#> V22                           1.794
#> V23                        126.9362
#> V24                        -88.0673
#> V25                         69.3268
#> V26                        -95.2214
#> V27                        -10.0063
#> V28                         43.0469
#> V29                        -92.9505
#> V3                        -511.2109
#> V30                        250.9615
#> V31                       -321.4898
#> V32                        175.6059
#> V33                        -12.8328
#> V34                       -139.6082
#> V35                        193.2936
#> V36                       -156.4844
#> V37                        -17.3444
#> V38                         25.5012
#> V39                         82.4533
#> V4                         153.5468
#> V40                       -196.3578
#> V41                         182.458
#> V42                       -152.5661
#> V43                          6.1382
#> V44                         36.9512
#> V45                        -53.5495
#> V46                         91.9536
#> V47                        140.1836
#> V48                        115.4054
#> V49                       1133.8965
#> V5                         -67.5843
#> V50                      -2510.8113
#> V51                       1250.0302
#> V52                        173.0214
#> V53                       2007.0576
#> V54                       -338.6533
#> V55                       -825.1625
#> V56                       -459.3026
#> V57                         269.683
#> V58                       1966.3496
#> V59                        289.6661
#> V6                          -2.2434
#> V60                       -388.1752
#> V7                         -219.295
#> V8                        -164.8834
#> V9                         346.6124
#> Intercept                    -8.218
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1                         Infinity
#> V10                               0
#> V11           1.2387398270294788E32
#> V12           7.312818721241199E107
#> V13                               0
#> V14                               0
#> V15             4.93646790174381E37
#> V16                               0
#> V17                               0
#> V18                          0.0478
#> V19            3.016298701669673E19
#> V2                                0
#> V20            6.155089892721895E14
#> V21                               0
#> V22                          6.0135
#> V23            1.341869166716012E55
#> V24                               0
#> V25           1.2830884103751472E30
#> V26                               0
#> V27                               0
#> V28            4.955039467146879E18
#> V29                               0
#> V3                                0
#> V30           9.799187792744982E108
#> V31                               0
#> V32            1.839423003657566E76
#> V33                               0
#> V34                               0
#> V35            8.837781227648812E83
#> V36                               0
#> V37                               0
#> V38           1.1885937143900638E11
#> V39           6.4416072601109225E35
#> V4             4.836281993960166E66
#> V40                               0
#> V41           1.7398759756435087E79
#> V42                               0
#> V43                        463.1978
#> V44              1.1161049395282E16
#> V45                               0
#> V46            8.608999875017355E39
#> V47            7.602617515303311E60
#> V48           1.3180847622675405E50
#> V49                        Infinity
#> V5                                0
#> V50                               0
#> V51                        Infinity
#> V52           1.3875309004365235E75
#> V53                        Infinity
#> V54                               0
#> V55                               0
#> V56                               0
#> V57          1.3238603386673538E117
#> V58                        Infinity
#> V59           6.315090242195651E125
#> V6                           0.1061
#> V60                               0
#> V7                                0
#> V8                                0
#> V9            3.402914410020663E150
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
