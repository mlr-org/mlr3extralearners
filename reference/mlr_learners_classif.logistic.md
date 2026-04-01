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
#> V1                        -23.2958
#> V10                      -400.0315
#> V11                       165.3312
#> V12                       156.7562
#> V13                        46.1893
#> V14                       -47.0456
#> V15                       121.7345
#> V16                      -149.3191
#> V17                      -124.6942
#> V18                       164.6327
#> V19                        -68.985
#> V2                        261.5281
#> V20                       155.1033
#> V21                        -5.1443
#> V22                       -73.4966
#> V23                        58.1348
#> V24                        97.7392
#> V25                       -83.4206
#> V26                        57.8278
#> V27                        12.3671
#> V28                        99.9656
#> V29                      -162.7743
#> V3                       -638.5328
#> V30                       348.4482
#> V31                      -399.9361
#> V32                        166.281
#> V33                        19.7635
#> V34                      -219.7592
#> V35                       308.0522
#> V36                      -240.9652
#> V37                         4.2972
#> V38                       -25.0642
#> V39                        77.5838
#> V4                         157.923
#> V40                          2.106
#> V41                        28.0562
#> V42                        49.8717
#> V43                      -115.4278
#> V44                       216.6615
#> V45                      -221.4551
#> V46                        12.5059
#> V47                        136.839
#> V48                       335.5477
#> V49                       849.1195
#> V5                       -196.9509
#> V50                      -886.6754
#> V51                      -284.4853
#> V52                       2988.038
#> V53                         105.78
#> V54                     -1146.6978
#> V55                      -566.4547
#> V56                     -1744.6666
#> V57                       -350.274
#> V58                      3555.4649
#> V59                       324.4004
#> V6                        448.4933
#> V60                      1191.7843
#> V7                       -611.1923
#> V8                       -241.1384
#> V9                        542.6996
#> Intercept                -214.0364
#> 
#> 
#> Odds Ratios...
#>                              Class
#> Variable                         M
#> ==================================
#> V1                               0
#> V10                              0
#> V11           6.345210991818971E71
#> V12          1.1976992256717836E68
#> V13          1.1474618094335454E20
#> V14                              0
#> V15           7.389557912107401E52
#> V16                              0
#> V17                              0
#> V18           3.155503185692698E71
#> V19                              0
#> V2           3.803609014342706E113
#> V20          2.2934840667872324E67
#> V21                         0.0058
#> V22                              0
#> V23          1.7685612819659736E25
#> V24           2.802865223670453E42
#> V25                              0
#> V26          1.3010072282118264E25
#> V27                    234932.4291
#> V28           2.597192172128219E43
#> V29                              0
#> V3                               0
#> V30          2.133728551734546E151
#> V31                              0
#> V32          1.6402804738461223E72
#> V33                 382990377.0976
#> V34                              0
#> V35          6.100676659695907E133
#> V36                              0
#> V37                        73.4911
#> V38                              0
#> V39          4.9455173225630486E33
#> V4            3.846786468068606E68
#> V40                         8.2155
#> V41          1.5298891596289468E12
#> V42          4.5604615244135226E21
#> V43                              0
#> V44           1.244168037571651E94
#> V45                              0
#> V46                    269933.4004
#> V47          2.6817279575095392E59
#> V48          5.327454884936942E145
#> V49                       Infinity
#> V5                               0
#> V50                              0
#> V51                              0
#> V52                       Infinity
#> V53           8.702865147479711E45
#> V54                              0
#> V55                              0
#> V56                              0
#> V57                              0
#> V58                       Infinity
#> V59          7.679159109006042E140
#> V6           6.000378865902145E194
#> V60                       Infinity
#> V7                               0
#> V8                               0
#> V9           4.913888333757817E235
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
