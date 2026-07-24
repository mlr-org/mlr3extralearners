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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0348  0.0213
#>   std. dev.      0.0277  0.0137
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2492  0.1542
#>   std. dev.      0.1353  0.1102
#>   weight sum         77      62
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2859  0.1666
#>   std. dev.      0.1282  0.1049
#>   weight sum         77      62
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.2952  0.1819
#>   std. dev.      0.1281  0.1291
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3107  0.2169
#>   std. dev.      0.1313  0.1229
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.317  0.2443
#>   std. dev.      0.1557  0.1474
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3256  0.2912
#>   std. dev.      0.1948  0.2036
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3791  0.3737
#>   std. dev.      0.2121  0.2395
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4139  0.4288
#>   std. dev.      0.2306   0.278
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4563  0.4556
#>   std. dev.      0.2495  0.2617
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5398  0.4518
#>   std. dev.       0.245  0.2554
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0447  0.0296
#>   std. dev.      0.0403  0.0244
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6149   0.467
#>   std. dev.      0.2486  0.2456
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6524  0.5173
#>   std. dev.      0.2516  0.2468
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6534  0.5532
#>   std. dev.      0.2466   0.254
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6623  0.5977
#>   std. dev.      0.2664  0.2451
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6785  0.6528
#>   std. dev.      0.2476  0.2426
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6741  0.6895
#>   std. dev.      0.2439  0.2533
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7005  0.7156
#>   std. dev.      0.2421   0.242
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7158  0.7059
#>   std. dev.      0.2672  0.2135
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7225   0.685
#>   std. dev.      0.2562  0.1944
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean            0.655  0.6393
#>   std. dev.      0.2426  0.2186
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0483  0.0344
#>   std. dev.       0.042  0.0281
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5768  0.5842
#>   std. dev.      0.2028  0.2147
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4746    0.52
#>   std. dev.      0.2097  0.1984
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4332  0.4424
#>   std. dev.      0.1976  0.2026
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.3979  0.4396
#>   std. dev.      0.1945  0.2115
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean            0.366  0.4456
#>   std. dev.      0.1947   0.254
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3382  0.4558
#>   std. dev.      0.2408  0.2595
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3161  0.4633
#>   std. dev.      0.2488  0.2734
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3074  0.4321
#>   std. dev.      0.2335  0.2619
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3256  0.3574
#>   std. dev.      0.2053   0.248
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3356  0.3116
#>   std. dev.      0.1877   0.226
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0624  0.0407
#>   std. dev.      0.0534  0.0292
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3067  0.3112
#>   std. dev.      0.1643  0.2067
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2893  0.2922
#>   std. dev.      0.1619   0.191
#>   weight sum         77      62
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.2857  0.2643
#>   std. dev.      0.1697  0.1735
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2723  0.2149
#>   std. dev.      0.1464  0.1426
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.257  0.1773
#>   std. dev.       0.138  0.1183
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2509  0.1434
#>   std. dev.      0.1646  0.1006
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean            0.205  0.1212
#>   std. dev.      0.1509  0.1003
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1488  0.0925
#>   std. dev.      0.0952  0.0712
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1082  0.0676
#>   std. dev.       0.064  0.0489
#>   weight sum         77      62
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0624  0.0367
#>   std. dev.      0.0363    0.03
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0855  0.0617
#>   std. dev.      0.0566   0.044
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0228  0.0162
#>   std. dev.      0.0154  0.0123
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0194  0.0128
#>   std. dev.      0.0147  0.0093
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0159  0.0104
#>   std. dev.      0.0114   0.007
#>   weight sum         77      62
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0095
#>   std. dev.      0.0075  0.0058
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0108  0.0088
#>   std. dev.      0.0075   0.005
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0086
#>   std. dev.      0.0086  0.0055
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0072
#>   std. dev.      0.0063  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0072
#>   std. dev.      0.0061  0.0053
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0061
#>   std. dev.      0.0077  0.0046
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0084  0.0073
#>   std. dev.      0.0062  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1099   0.095
#>   std. dev.      0.0447   0.053
#>   weight sum         77      62
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0067  0.0061
#>   std. dev.      0.0062  0.0037
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1317  0.1086
#>   std. dev.      0.0569  0.0577
#>   weight sum         77      62
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1529  0.1078
#>   std. dev.      0.0903  0.0674
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2153  0.1336
#>   std. dev.      0.1205   0.095
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
