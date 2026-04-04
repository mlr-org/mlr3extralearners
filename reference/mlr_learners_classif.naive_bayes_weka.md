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
#>   mean           0.0327  0.0231
#>   std. dev.      0.0254  0.0158
#>   weight sum         69      70
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2527  0.1652
#>   std. dev.      0.1368  0.1202
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2855  0.1757
#>   std. dev.      0.1235  0.1148
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2929  0.1877
#>   std. dev.      0.1188  0.1311
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3058   0.222
#>   std. dev.       0.111    0.13
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V14
#>   mean           0.3075  0.2644
#>   std. dev.      0.1492  0.1581
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3205  0.3133
#>   std. dev.      0.1896  0.2114
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3709  0.3882
#>   std. dev.      0.2067  0.2533
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4092  0.4336
#>   std. dev.      0.2294  0.2886
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4553  0.4705
#>   std. dev.      0.2459  0.2673
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V19
#>   mean            0.532  0.4835
#>   std. dev.      0.2544  0.2513
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0436  0.0294
#>   std. dev.      0.0383   0.024
#>   weight sum         69      70
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6148  0.5076
#>   std. dev.       0.261  0.2526
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6593  0.5424
#>   std. dev.      0.2641  0.2538
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6738  0.5651
#>   std. dev.      0.2482  0.2744
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean            0.686  0.6204
#>   std. dev.      0.2466  0.2514
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6973  0.6558
#>   std. dev.       0.237  0.2485
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6914  0.6481
#>   std. dev.      0.2332  0.2676
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7151  0.6565
#>   std. dev.      0.2305  0.2536
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7098  0.6704
#>   std. dev.      0.2691  0.2272
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.6955  0.6789
#>   std. dev.       0.261  0.2027
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6393  0.6244
#>   std. dev.      0.2416   0.232
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0542  0.0355
#>   std. dev.      0.0497   0.029
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5913  0.5701
#>   std. dev.      0.2081  0.2189
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4877  0.5231
#>   std. dev.      0.2364  0.1912
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean             0.43  0.4515
#>   std. dev.      0.2297  0.2115
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4096  0.4573
#>   std. dev.      0.2098  0.2115
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3709  0.4621
#>   std. dev.      0.2228  0.2605
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3443   0.473
#>   std. dev.      0.2547  0.2652
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3395  0.4827
#>   std. dev.      0.2646  0.2632
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3467  0.4477
#>   std. dev.      0.2413  0.2342
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3476  0.3734
#>   std. dev.      0.2121  0.2271
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3469  0.3292
#>   std. dev.      0.1788  0.2187
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0702  0.0437
#>   std. dev.      0.0604   0.031
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3218  0.3337
#>   std. dev.      0.1611  0.2019
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3039   0.296
#>   std. dev.      0.1561  0.1881
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3042  0.2603
#>   std. dev.      0.1462  0.1753
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2713  0.2095
#>   std. dev.      0.1272  0.1272
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2505  0.1722
#>   std. dev.       0.145  0.0944
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2512  0.1407
#>   std. dev.      0.1692   0.088
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1906  0.1141
#>   std. dev.      0.1343   0.094
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1379  0.0935
#>   std. dev.      0.0821  0.0696
#>   weight sum         69      70
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean            0.107  0.0717
#>   std. dev.      0.0685  0.0494
#>   weight sum         69      70
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0615  0.0394
#>   std. dev.      0.0364  0.0326
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0937  0.0592
#>   std. dev.      0.0662  0.0469
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0213  0.0183
#>   std. dev.       0.013  0.0133
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0168  0.0135
#>   std. dev.      0.0098  0.0093
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0153  0.0109
#>   std. dev.      0.0092  0.0078
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0096
#>   std. dev.      0.0073  0.0062
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0118  0.0101
#>   std. dev.      0.0082  0.0056
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093  0.0084
#>   std. dev.       0.008  0.0054
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0076
#>   std. dev.      0.0071  0.0047
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0084
#>   std. dev.      0.0064  0.0061
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0088  0.0069
#>   std. dev.      0.0075  0.0047
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0075
#>   std. dev.      0.0063  0.0051
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean            0.117  0.0962
#>   std. dev.      0.0513  0.0582
#>   weight sum         69      70
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0051  0.0036
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1318  0.1169
#>   std. dev.      0.0577  0.0625
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1534   0.122
#>   std. dev.      0.0953  0.0764
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2185  0.1437
#>   std. dev.      0.1318   0.105
#>   weight sum         69      70
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
