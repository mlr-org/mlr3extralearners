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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0368  0.0237
#>   std. dev.      0.0283  0.0157
#>   weight sum         77      62
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2447  0.1656
#>   std. dev.      0.1342  0.1157
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean            0.283  0.1804
#>   std. dev.      0.1126  0.1096
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V12
#>   mean           0.2965  0.1931
#>   std. dev.      0.1176  0.1324
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean             0.31  0.2371
#>   std. dev.       0.136   0.139
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3259  0.2852
#>   std. dev.      0.1689  0.1616
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3361  0.3188
#>   std. dev.      0.2041  0.2137
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3825    0.39
#>   std. dev.      0.2187  0.2533
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V17
#>   mean            0.418  0.4353
#>   std. dev.      0.2394  0.2848
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4667  0.4689
#>   std. dev.      0.2573  0.2616
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5443  0.4783
#>   std. dev.        0.26  0.2609
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.045  0.0329
#>   std. dev.      0.0345  0.0258
#>   weight sum         77      62
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6209  0.5249
#>   std. dev.       0.259  0.2722
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6645  0.5802
#>   std. dev.      0.2593  0.2535
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6697  0.5949
#>   std. dev.      0.2422  0.2693
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6704  0.6259
#>   std. dev.      0.2588  0.2517
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6797  0.6625
#>   std. dev.      0.2539  0.2381
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.676  0.6612
#>   std. dev.      0.2462    0.26
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7028  0.6708
#>   std. dev.      0.2305  0.2435
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7086  0.6689
#>   std. dev.      0.2612  0.2268
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7062  0.6623
#>   std. dev.      0.2519  0.2115
#>   weight sum         77      62
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6434  0.6233
#>   std. dev.      0.2426  0.2461
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0496  0.0387
#>   std. dev.      0.0375  0.0305
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5723  0.5591
#>   std. dev.      0.2105  0.2344
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4815  0.5238
#>   std. dev.      0.2206  0.1909
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4302  0.4416
#>   std. dev.      0.2207  0.2046
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4052  0.4285
#>   std. dev.      0.2057   0.197
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3741  0.4414
#>   std. dev.      0.2143  0.2338
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3519  0.4567
#>   std. dev.      0.2522   0.244
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3225    0.47
#>   std. dev.      0.2456  0.2517
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3171  0.4286
#>   std. dev.      0.2336  0.2416
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3314  0.3508
#>   std. dev.      0.2134  0.2165
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3287  0.3209
#>   std. dev.      0.1938  0.2157
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0645  0.0465
#>   std. dev.      0.0437  0.0326
#>   weight sum         77      62
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean              0.3  0.3295
#>   std. dev.      0.1704  0.1967
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2966   0.284
#>   std. dev.      0.1728  0.1776
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3058  0.2486
#>   std. dev.      0.1712   0.172
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2709  0.2176
#>   std. dev.      0.1367  0.1417
#>   weight sum         77      62
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.243  0.1732
#>   std. dev.      0.1391   0.114
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean            0.242  0.1409
#>   std. dev.      0.1706  0.1003
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2034  0.1191
#>   std. dev.      0.1499  0.0984
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1489  0.0946
#>   std. dev.      0.0936  0.0712
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1084  0.0702
#>   std. dev.      0.0629  0.0508
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0628  0.0404
#>   std. dev.      0.0334  0.0327
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0865  0.0695
#>   std. dev.      0.0504  0.0533
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0231  0.0183
#>   std. dev.      0.0124  0.0136
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0131
#>   std. dev.       0.013  0.0086
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0165  0.0102
#>   std. dev.      0.0117  0.0063
#>   weight sum         77      62
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0117  0.0098
#>   std. dev.      0.0076   0.006
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126    0.01
#>   std. dev.      0.0087  0.0056
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0089
#>   std. dev.      0.0084  0.0055
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0073
#>   std. dev.      0.0049  0.0046
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0078   0.008
#>   std. dev.      0.0055  0.0052
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0093  0.0072
#>   std. dev.      0.0072  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0079
#>   std. dev.      0.0071  0.0059
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1147  0.1036
#>   std. dev.      0.0537  0.0721
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0067
#>   std. dev.      0.0064  0.0039
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1309  0.1169
#>   std. dev.      0.0601  0.0731
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.158  0.1235
#>   std. dev.       0.087   0.084
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2142  0.1447
#>   std. dev.      0.1253  0.0986
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
