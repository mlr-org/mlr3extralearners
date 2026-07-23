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
#>   mean           0.0355  0.0237
#>   std. dev.       0.026  0.0147
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2533  0.1541
#>   std. dev.      0.1435  0.1065
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2848  0.1783
#>   std. dev.      0.1214  0.1078
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2945  0.2061
#>   std. dev.       0.113  0.1327
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3056  0.2415
#>   std. dev.      0.1167  0.1454
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3129  0.2745
#>   std. dev.      0.1343  0.1737
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3275  0.3131
#>   std. dev.      0.1765   0.224
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3748  0.3775
#>   std. dev.      0.1954  0.2577
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4039  0.4123
#>   std. dev.      0.2284  0.2858
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4372  0.4442
#>   std. dev.      0.2502  0.2663
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V19
#>   mean            0.513  0.4757
#>   std. dev.       0.249   0.262
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0452  0.0319
#>   std. dev.      0.0359  0.0253
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6078  0.5158
#>   std. dev.      0.2565  0.2639
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6601  0.5435
#>   std. dev.      0.2558  0.2518
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6473   0.549
#>   std. dev.      0.2416  0.2697
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean            0.643  0.5849
#>   std. dev.      0.2724   0.253
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6657   0.627
#>   std. dev.      0.2646  0.2509
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6757   0.628
#>   std. dev.      0.2481  0.2831
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7152  0.6677
#>   std. dev.        0.22  0.2518
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7235  0.6822
#>   std. dev.      0.2544  0.2146
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7193  0.6814
#>   std. dev.      0.2371  0.1927
#>   weight sum         76      63
#>   precision      0.0062  0.0062
#> 
#> V29
#>   mean           0.6529  0.6597
#>   std. dev.      0.2342  0.2237
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0527  0.0371
#>   std. dev.      0.0393  0.0289
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.6027  0.6038
#>   std. dev.      0.2093  0.2241
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.5014  0.5438
#>   std. dev.      0.2321  0.1864
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4502  0.4628
#>   std. dev.      0.2155  0.2044
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4145  0.4737
#>   std. dev.      0.1935  0.2033
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3826  0.4839
#>   std. dev.      0.2158  0.2548
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3614   0.468
#>   std. dev.      0.2631   0.273
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.346  0.4688
#>   std. dev.      0.2652  0.2724
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3463  0.4314
#>   std. dev.      0.2405  0.2461
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3635  0.3664
#>   std. dev.      0.2181  0.2334
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3665   0.339
#>   std. dev.      0.1915  0.2381
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0652  0.0428
#>   std. dev.      0.0458  0.0325
#>   weight sum         76      63
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3235  0.3393
#>   std. dev.      0.1662  0.2146
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.314  0.2957
#>   std. dev.      0.1664  0.1912
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3194  0.2678
#>   std. dev.      0.1752  0.1748
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2881  0.2264
#>   std. dev.      0.1464  0.1433
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2639  0.1852
#>   std. dev.      0.1474    0.12
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2703  0.1521
#>   std. dev.      0.1846  0.1052
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2189  0.1246
#>   std. dev.      0.1669  0.1053
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean            0.158  0.0988
#>   std. dev.      0.1032  0.0742
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1212  0.0727
#>   std. dev.      0.0712  0.0504
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0676  0.0402
#>   std. dev.      0.0392  0.0317
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0869  0.0659
#>   std. dev.      0.0526  0.0498
#>   weight sum         76      63
#>   precision      0.0025  0.0025
#> 
#> V50
#>   mean           0.0245  0.0177
#>   std. dev.      0.0155  0.0129
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0202  0.0123
#>   std. dev.      0.0154  0.0086
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0168  0.0094
#>   std. dev.      0.0114  0.0061
#>   weight sum         76      63
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0124  0.0094
#>   std. dev.       0.008  0.0063
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0132  0.0096
#>   std. dev.      0.0086  0.0055
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0089
#>   std. dev.      0.0086  0.0057
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0101  0.0077
#>   std. dev.      0.0071  0.0045
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0087  0.0079
#>   std. dev.      0.0061  0.0053
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0069
#>   std. dev.      0.0078  0.0048
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0094  0.0073
#>   std. dev.      0.0076   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1165  0.1033
#>   std. dev.      0.0498  0.0686
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean           0.0077   0.006
#>   std. dev.      0.0064  0.0037
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1335  0.1202
#>   std. dev.      0.0583  0.0676
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1571  0.1191
#>   std. dev.      0.0953  0.0804
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2247  0.1347
#>   std. dev.      0.1372  0.0994
#>   weight sum         76      63
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
