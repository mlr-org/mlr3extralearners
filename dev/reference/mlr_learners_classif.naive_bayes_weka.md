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
-\> `LearnerClassifNaiveBayesWeka`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifNaiveBayesWeka$new()`](#method-LearnerClassifNaiveBayesWeka-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesWeka$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0343  0.0214
#>   std. dev.      0.0263  0.0124
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2447  0.1483
#>   std. dev.      0.1359   0.098
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2869  0.1649
#>   std. dev.       0.125  0.1016
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean            0.302  0.1781
#>   std. dev.      0.1234   0.113
#>   weight sum         74      65
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3153   0.215
#>   std. dev.      0.1299  0.1207
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3261  0.2643
#>   std. dev.      0.1644  0.1462
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean            0.342   0.309
#>   std. dev.      0.1986  0.1951
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V16
#>   mean           0.3905  0.3818
#>   std. dev.      0.2156  0.2433
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4217  0.4165
#>   std. dev.      0.2398  0.2872
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4611  0.4453
#>   std. dev.      0.2598  0.2749
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5411  0.4714
#>   std. dev.      0.2555  0.2732
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0463  0.0304
#>   std. dev.      0.0418  0.0256
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6136  0.5017
#>   std. dev.      0.2627  0.2759
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6593  0.5545
#>   std. dev.      0.2564  0.2585
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6613  0.5751
#>   std. dev.      0.2466  0.2667
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6637  0.6147
#>   std. dev.      0.2528  0.2424
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.669  0.6641
#>   std. dev.      0.2482  0.2279
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6598  0.6872
#>   std. dev.      0.2454   0.239
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6814  0.7238
#>   std. dev.       0.246  0.2221
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.694  0.7085
#>   std. dev.      0.2729  0.2044
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7092  0.6733
#>   std. dev.      0.2641  0.1951
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6517  0.6155
#>   std. dev.      0.2553  0.2378
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0519  0.0355
#>   std. dev.      0.0498    0.03
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5913  0.5461
#>   std. dev.      0.2242  0.2401
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4944  0.5077
#>   std. dev.      0.2284  0.2095
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4352   0.435
#>   std. dev.      0.2101  0.2256
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3981  0.4039
#>   std. dev.      0.1967  0.2222
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3724  0.4067
#>   std. dev.      0.2122  0.2528
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3547  0.4333
#>   std. dev.       0.252  0.2618
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3368  0.4291
#>   std. dev.      0.2598   0.265
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3293   0.373
#>   std. dev.      0.2366  0.2395
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3349  0.3179
#>   std. dev.      0.2067  0.2126
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3251    0.31
#>   std. dev.      0.1733  0.2144
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0717  0.0426
#>   std. dev.      0.0614  0.0325
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2978  0.3102
#>   std. dev.      0.1602  0.2002
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3082  0.2703
#>   std. dev.      0.1746  0.1582
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3219  0.2352
#>   std. dev.       0.179  0.1444
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2923  0.2069
#>   std. dev.       0.149  0.1217
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2525  0.1749
#>   std. dev.      0.1494  0.1078
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2494  0.1356
#>   std. dev.      0.1739  0.0907
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2009  0.1055
#>   std. dev.      0.1567  0.0784
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1469  0.0902
#>   std. dev.      0.0972  0.0561
#>   weight sum         74      65
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1122  0.0654
#>   std. dev.      0.0662  0.0402
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0649  0.0365
#>   std. dev.      0.0372  0.0247
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0939  0.0632
#>   std. dev.      0.0623  0.0507
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0229  0.0173
#>   std. dev.       0.014  0.0106
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0201  0.0115
#>   std. dev.      0.0153   0.007
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0179  0.0107
#>   std. dev.       0.012  0.0061
#>   weight sum         74      65
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0128  0.0099
#>   std. dev.      0.0077  0.0066
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0096
#>   std. dev.      0.0079  0.0053
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0087
#>   std. dev.      0.0076  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0073
#>   std. dev.      0.0062  0.0044
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0078  0.0072
#>   std. dev.      0.0053   0.005
#>   weight sum         74      65
#>   precision      0.0002  0.0002
#> 
#> V58
#>   mean            0.009  0.0066
#>   std. dev.      0.0071  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0073
#>   std. dev.      0.0063   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1176  0.0925
#>   std. dev.      0.0548  0.0665
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0061
#>   std. dev.      0.0065  0.0037
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1324  0.1108
#>   std. dev.      0.0582  0.0633
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1495  0.1098
#>   std. dev.      0.0901  0.0696
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2079  0.1235
#>   std. dev.       0.129  0.0823
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
