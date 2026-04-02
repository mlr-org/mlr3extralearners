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
#> V1                          594.434
#> V10                       -287.1808
#> V11                        219.1476
#> V12                         188.563
#> V13                       -136.1518
#> V14                        107.4737
#> V15                        -25.4802
#> V16                         41.0389
#> V17                       -186.6538
#> V18                         87.8093
#> V19                        -61.8294
#> V2                         182.7039
#> V20                         31.0499
#> V21                         28.3843
#> V22                         39.6454
#> V23                         84.4905
#> V24                         41.6231
#> V25                        -97.4013
#> V26                         49.4856
#> V27                        -24.7987
#> V28                        133.3531
#> V29                       -139.0389
#> V3                        -772.8983
#> V30                        196.4379
#> V31                       -317.2767
#> V32                        133.9866
#> V33                         60.3883
#> V34                       -166.0683
#> V35                        194.0688
#> V36                       -138.5056
#> V37                        -13.4279
#> V38                        -42.8228
#> V39                         56.4369
#> V4                         364.0957
#> V40                       -143.7243
#> V41                        141.9639
#> V42                         17.7058
#> V43                        -86.4668
#> V44                         288.974
#> V45                       -213.3735
#> V46                         30.7004
#> V47                        463.3984
#> V48                        160.8967
#> V49                        180.9147
#> V5                        -512.1059
#> V50                       -2045.424
#> V51                       -179.4482
#> V52                       2718.6504
#> V53                         218.586
#> V54                        170.1569
#> V55                         1340.98
#> V56                        391.0177
#> V57                      -1979.3036
#> V58                         15.8593
#> V59                       3531.1443
#> V6                         750.2454
#> V60                       -466.9798
#> V7                        -515.3226
#> V8                        -231.5318
#> V9                         331.7982
#> Intercept                 -163.6033
#> 
#> 
#> Odds Ratios...
#>                               Class
#> Variable                          M
#> ===================================
#> V1           1.4434092775042357E258
#> V10                               0
#> V11           1.4947945795819628E95
#> V12            7.795599711346084E81
#> V13                               0
#> V14             4.73399019711173E46
#> V15                               0
#> V16           6.6525008256951104E17
#> V17                               0
#> V18           1.3649128733044962E38
#> V19                               0
#> V2             2.224770479409804E79
#> V20           3.0535166037861273E13
#> V21           2.1239816363979807E12
#> V22          1.65118175393496544E17
#> V23            4.940117897899454E36
#> V24          1.19309965811627981E18
#> V25                               0
#> V26           3.0995889732852006E21
#> V27                               0
#> V28            8.213459023169882E57
#> V29                               0
#> V3                                0
#> V30           2.0506272815651392E85
#> V31                               0
#> V32            1.547607681604383E58
#> V33           1.6838446416712797E26
#> V34                               0
#> V35           1.9186797895106812E84
#> V36                               0
#> V37                               0
#> V38                               0
#> V39            3.237653414191331E24
#> V4           1.3328196210568852E158
#> V40                               0
#> V41           4.5097460476898785E61
#> V42                   48922976.1218
#> V43                               0
#> V44           3.160973746487015E125
#> V45                               0
#> V46           2.1529042649458875E13
#> V47            1.78390032606229E201
#> V48            7.525522927662546E69
#> V49            3.717632066986175E78
#> V5                                0
#> V50                               0
#> V51                               0
#> V52                        Infinity
#> V53            8.524611783352375E94
#> V54             7.91067012559475E73
#> V55                        Infinity
#> V56           6.558969912474756E169
#> V57                               0
#> V58                    7720096.3416
#> V59                        Infinity
#> V6                         Infinity
#> V60                               0
#> V7                                0
#> V8                                0
#> V9           1.2535162542455033E144
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
