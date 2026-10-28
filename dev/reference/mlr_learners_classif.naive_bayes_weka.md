# Classification Naive Bayes Learner From Weka

Naive Bayes Classifier Using Estimator Classes. Calls
[`RWeka::make_Weka_classifier()`](https://rdrr.io/pkg/RWeka/man/Weka_interfaces.html)
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

    lrn("classif.naive_bayes_weka")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |         |             |                  |
|---------------------------|---------|---------|-------------|------------------|
| Id                        | Type    | Default | Levels      | Range            |
| subset                    | untyped | \-      |             | \-               |
| na.action                 | untyped | \-      |             | \-               |
| K                         | logical | FALSE   | TRUE, FALSE | \-               |
| D                         | logical | FALSE   | TRUE, FALSE | \-               |
| O                         | logical | FALSE   | TRUE, FALSE | \-               |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-               |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-               |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\ |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\ |
| options                   | untyped | NULL    |             | \-               |

## References

John GH, Langley P (1995). “Estimating Continuous Distributions in
Bayesian Classifiers.” In *Eleventh Conference on Uncertainty in
Artificial Intelligence*, 338-345.

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
-\> `LearnerClassifNaiveBayesWeka`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifNaiveBayesWeka$new()`](#method-LearnerClassifNaiveBayesWeka-initialize)

- [`LearnerClassifNaiveBayesWeka$marshal()`](#method-LearnerClassifNaiveBayesWeka-marshal)

- [`LearnerClassifNaiveBayesWeka$unmarshal()`](#method-LearnerClassifNaiveBayesWeka-unmarshal)

- [`LearnerClassifNaiveBayesWeka$clone()`](#method-LearnerClassifNaiveBayesWeka-clone)

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

### `LearnerClassifNaiveBayesWeka$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesWeka$new()

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifNaiveBayesWeka$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.naive_bayes_weka")
print(learner)
#> 
#> ── <LearnerClassifNaiveBayesWeka> (classif.naive_bayes_weka): Naive Bayes ──────
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
#> Naive Bayes Classifier
#> 
#>                  Class
#> Attribute            M       R
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0365  0.0224
#>   std. dev.      0.0271  0.0154
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2492   0.163
#>   std. dev.      0.1358  0.1182
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2818  0.1832
#>   std. dev.      0.1152  0.1216
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2924   0.205
#>   std. dev.      0.1225  0.1418
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3114  0.2317
#>   std. dev.      0.1349   0.141
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3319   0.269
#>   std. dev.      0.1721  0.1618
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V15
#>   mean           0.3451  0.3058
#>   std. dev.      0.1902  0.2185
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V16
#>   mean           0.3922  0.3881
#>   std. dev.      0.2107   0.264
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4226   0.433
#>   std. dev.      0.2469  0.3007
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4528  0.4589
#>   std. dev.       0.267  0.2813
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5364  0.4806
#>   std. dev.      0.2707  0.2677
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0453  0.0304
#>   std. dev.      0.0328  0.0198
#>   weight sum         69      70
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6326  0.4998
#>   std. dev.       0.264  0.2728
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6856  0.5304
#>   std. dev.      0.2488   0.265
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6677  0.5525
#>   std. dev.      0.2313  0.2727
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6573   0.589
#>   std. dev.      0.2528  0.2437
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6616  0.6348
#>   std. dev.       0.248  0.2294
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6529  0.6567
#>   std. dev.      0.2492  0.2549
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6893  0.6802
#>   std. dev.      0.2247   0.254
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7062  0.6725
#>   std. dev.      0.2547  0.2232
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7184  0.6636
#>   std. dev.      0.2524  0.1959
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean            0.664  0.6268
#>   std. dev.      0.2399  0.2223
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V3
#>   mean           0.0504  0.0362
#>   std. dev.      0.0356  0.0251
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.6055  0.5758
#>   std. dev.       0.209  0.2367
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4955  0.5386
#>   std. dev.      0.2153  0.2086
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4293  0.4708
#>   std. dev.      0.2057  0.2146
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3925  0.4569
#>   std. dev.      0.1884  0.2146
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3655  0.4647
#>   std. dev.      0.1965  0.2501
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V35
#>   mean           0.3328  0.4783
#>   std. dev.      0.2351  0.2685
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2957   0.479
#>   std. dev.      0.2399  0.2698
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2948  0.4298
#>   std. dev.      0.2084  0.2551
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3216  0.3588
#>   std. dev.      0.2075  0.2451
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3199   0.322
#>   std. dev.       0.195  0.2275
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.068  0.0415
#>   std. dev.      0.0424  0.0291
#>   weight sum         69      70
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2865  0.3286
#>   std. dev.      0.1538  0.1998
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2913  0.2906
#>   std. dev.      0.1703  0.1747
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3106  0.2514
#>   std. dev.      0.1704  0.1727
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.281  0.2134
#>   std. dev.      0.1372  0.1366
#>   weight sum         69      70
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2422  0.1816
#>   std. dev.      0.1342  0.1178
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2417  0.1481
#>   std. dev.      0.1702   0.102
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1988  0.1211
#>   std. dev.      0.1591  0.1002
#>   weight sum         69      70
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1472  0.0973
#>   std. dev.      0.0959  0.0735
#>   weight sum         69      70
#>   precision      0.0042  0.0042
#> 
#> V48
#>   mean           0.1142  0.0706
#>   std. dev.      0.0614  0.0517
#>   weight sum         69      70
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0657  0.0413
#>   std. dev.      0.0337  0.0324
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0901  0.0661
#>   std. dev.      0.0566  0.0483
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0242  0.0185
#>   std. dev.      0.0153  0.0133
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0212  0.0126
#>   std. dev.      0.0151  0.0081
#>   weight sum         69      70
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0173  0.0108
#>   std. dev.      0.0117   0.007
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0123  0.0103
#>   std. dev.       0.008  0.0061
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127  0.0097
#>   std. dev.       0.009  0.0051
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0105  0.0084
#>   std. dev.      0.0092  0.0051
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0098  0.0074
#>   std. dev.      0.0073   0.005
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0083
#>   std. dev.      0.0062  0.0063
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0101  0.0073
#>   std. dev.      0.0083  0.0049
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0094  0.0075
#>   std. dev.      0.0076  0.0054
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1164  0.0996
#>   std. dev.      0.0534  0.0729
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0063
#>   std. dev.      0.0064  0.0038
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1286  0.1149
#>   std. dev.      0.0567  0.0713
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1545  0.1204
#>   std. dev.      0.0864   0.089
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean            0.217  0.1429
#>   std. dev.      0.1277  0.1113
#>   weight sum         69      70
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
