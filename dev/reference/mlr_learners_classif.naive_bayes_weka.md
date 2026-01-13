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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0381  0.0229
#>   std. dev.      0.0298  0.0151
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.267   0.173
#>   std. dev.      0.1405  0.1206
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3035  0.1822
#>   std. dev.      0.1366  0.1237
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3077  0.1937
#>   std. dev.      0.1305  0.1453
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3178  0.2248
#>   std. dev.      0.1367  0.1511
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3263   0.268
#>   std. dev.      0.1715  0.1726
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3441  0.3154
#>   std. dev.      0.2062  0.2218
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3872  0.3824
#>   std. dev.      0.2237  0.2572
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4231  0.4159
#>   std. dev.      0.2486  0.2963
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4685   0.439
#>   std. dev.      0.2587  0.2728
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5444   0.475
#>   std. dev.      0.2551  0.2652
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0469  0.0299
#>   std. dev.        0.04  0.0249
#>   weight sum         73      66
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6226  0.5072
#>   std. dev.      0.2514  0.2753
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6725  0.5353
#>   std. dev.      0.2541  0.2555
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6765  0.5589
#>   std. dev.      0.2459  0.2549
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6761  0.6003
#>   std. dev.      0.2688  0.2409
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6842  0.6458
#>   std. dev.      0.2661  0.2189
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6776  0.6507
#>   std. dev.      0.2546  0.2405
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7049  0.6809
#>   std. dev.       0.235   0.244
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7111  0.6823
#>   std. dev.      0.2604    0.23
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7123  0.6834
#>   std. dev.      0.2554  0.2032
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V29
#>   mean            0.652  0.6443
#>   std. dev.      0.2435  0.2321
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0511  0.0355
#>   std. dev.       0.045  0.0282
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5784  0.5927
#>   std. dev.      0.2081  0.2386
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4796  0.5356
#>   std. dev.      0.2092  0.2053
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4109  0.4491
#>   std. dev.      0.2037  0.2159
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3852  0.4373
#>   std. dev.      0.1981  0.2192
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3595  0.4598
#>   std. dev.      0.2065  0.2507
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3467  0.4692
#>   std. dev.      0.2477  0.2539
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3287  0.4689
#>   std. dev.      0.2505  0.2533
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3217  0.4239
#>   std. dev.      0.2357  0.2382
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3306  0.3545
#>   std. dev.      0.2099  0.2247
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3414  0.3112
#>   std. dev.      0.1891  0.2172
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0646  0.0419
#>   std. dev.      0.0555  0.0324
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3077  0.3154
#>   std. dev.      0.1691  0.2015
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.274  0.2839
#>   std. dev.      0.1578  0.1759
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2775  0.2413
#>   std. dev.      0.1571   0.164
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2714  0.1994
#>   std. dev.      0.1355  0.1261
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2491  0.1677
#>   std. dev.      0.1349  0.1142
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2391  0.1469
#>   std. dev.      0.1663  0.1059
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1938  0.1273
#>   std. dev.      0.1444  0.1042
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1462  0.0956
#>   std. dev.      0.0923  0.0768
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean            0.108  0.0681
#>   std. dev.      0.0633  0.0531
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0638  0.0389
#>   std. dev.      0.0332  0.0325
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0856  0.0635
#>   std. dev.       0.057  0.0504
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0231  0.0179
#>   std. dev.      0.0119  0.0139
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0134
#>   std. dev.      0.0126  0.0095
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0108
#>   std. dev.       0.011  0.0074
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0114  0.0091
#>   std. dev.       0.007  0.0051
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012  0.0094
#>   std. dev.       0.008  0.0051
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0083
#>   std. dev.      0.0079  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.008  0.0074
#>   std. dev.      0.0045   0.005
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0078  0.0081
#>   std. dev.      0.0051  0.0061
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0093  0.0062
#>   std. dev.       0.007  0.0045
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009   0.007
#>   std. dev.      0.0068  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1153     0.1
#>   std. dev.      0.0495  0.0689
#>   weight sum         73      66
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean           0.0072   0.006
#>   std. dev.      0.0064  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1301  0.1203
#>   std. dev.      0.0619  0.0684
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1524  0.1246
#>   std. dev.      0.0924  0.0894
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2228  0.1504
#>   std. dev.      0.1209  0.1097
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
