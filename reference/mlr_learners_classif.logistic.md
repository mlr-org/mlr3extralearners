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
#>                              Class
#> Variable                         M
#> ==================================
#> V1                       1093.5483
#> V10                       -69.8572
#> V11                       113.3709
#> V12                       205.7914
#> V13                       -85.7635
#> V14                        27.1627
#> V15                        91.0851
#> V16                      -135.0316
#> V17                       -69.3233
#> V18                       -22.7324
#> V19                        30.2756
#> V2                        141.9857
#> V20                       192.5901
#> V21                      -177.0589
#> V22                       -16.3361
#> V23                         98.858
#> V24                        45.7566
#> V25                        32.2979
#> V26                      -124.1884
#> V27                       153.3538
#> V28                       -62.0664
#> V29                       -67.0505
#> V3                      -1289.1093
#> V30                       145.3592
#> V31                      -279.6799
#> V32                       145.4866
#> V33                      -132.3951
#> V34                        74.5262
#> V35                         1.6669
#> V36                       -42.5176
#> V37                        -28.583
#> V38                      -104.0494
#> V39                       233.9688
#> V4                        196.2397
#> V40                      -267.6751
#> V41                       122.5047
#> V42                      -122.1175
#> V43                       -46.0648
#> V44                       180.2794
#> V45                       -21.6282
#> V46                       122.9555
#> V47                        23.6166
#> V48                       806.1319
#> V49                       -85.4282
#> V5                        -71.4153
#> V50                     -1911.1837
#> V51                      -817.9804
#> V52                      3330.6501
#> V53                       -455.294
#> V54                        889.471
#> V55                     -2795.5485
#> V56                     -1412.1518
#> V57                      -332.0851
#> V58                      2588.8509
#> V59                      3350.6461
#> V6                         67.6524
#> V60                     -1229.8912
#> V7                       -287.9154
#> V8                        -20.4065
#> V9                         74.9977
#> Intercept                 -24.0834
#> 
#> 
#> Odds Ratios...
#>                              Class
#> Variable                         M
#> ==================================
#> V1                        Infinity
#> V10                              0
#> V11           1.723244987319866E49
#> V12          2.3662400839739266E89
#> V13                              0
#> V14           6.260564147950228E11
#> V15           3.612157249341001E39
#> V16                              0
#> V17                              0
#> V18                              0
#> V19          1.4076884537543877E13
#> V2             4.60895053447003E61
#> V20           4.373322798473932E83
#> V21                              0
#> V22                              0
#> V23           8.580115819175116E42
#> V24           7.444664915506094E19
#> V25          1.0636643131237248E14
#> V26                              0
#> V27           3.987555055171496E66
#> V28                              0
#> V29                              0
#> V3                               0
#> V30          1.3448607485443344E63
#> V31                              0
#> V32          1.5276547245346399E63
#> V33                              0
#> V34          2.3243830786654573E32
#> V35                         5.2959
#> V36                              0
#> V37                              0
#> V38                              0
#> V39          4.086543995534304E101
#> V4           1.6819059483246344E85
#> V40                              0
#> V41          1.5963731385742582E53
#> V42                              0
#> V43                              0
#> V44           1.969498604358269E78
#> V45                              0
#> V46          2.5054568481134406E53
#> V47          1.8053155152731033E10
#> V48                       Infinity
#> V49                              0
#> V5                               0
#> V50                              0
#> V51                              0
#> V52                       Infinity
#> V53                              0
#> V54                       Infinity
#> V55                              0
#> V56                              0
#> V57                              0
#> V58                       Infinity
#> V59                       Infinity
#> V6           2.4047307545048792E29
#> V60                              0
#> V7                               0
#> V8                               0
#> V9           3.7248138861936196E32
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
