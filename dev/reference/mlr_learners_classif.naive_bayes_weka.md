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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0368  0.0235
#>   std. dev.      0.0284  0.0135
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2626  0.1639
#>   std. dev.      0.1275  0.1136
#>   weight sum         75      64
#>   precision      0.0042  0.0042
#> 
#> V11
#>   mean           0.3019  0.1867
#>   std. dev.      0.1223  0.1128
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3158   0.205
#>   std. dev.      0.1241   0.137
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3294  0.2332
#>   std. dev.      0.1324  0.1452
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3237  0.2668
#>   std. dev.      0.1566  0.1734
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V15
#>   mean           0.3222  0.3052
#>   std. dev.      0.1975  0.2298
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3623  0.3901
#>   std. dev.      0.2197  0.2713
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.3909  0.4432
#>   std. dev.      0.2443  0.2997
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4285  0.4742
#>   std. dev.      0.2557  0.2786
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5081  0.4861
#>   std. dev.      0.2525  0.2573
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0455  0.0294
#>   std. dev.      0.0393  0.0205
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.5889  0.5272
#>   std. dev.      0.2469  0.2501
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6348  0.5683
#>   std. dev.      0.2461  0.2484
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.633   0.606
#>   std. dev.      0.2356  0.2521
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6452  0.6299
#>   std. dev.      0.2508  0.2493
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6647  0.6449
#>   std. dev.      0.2472  0.2434
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6725  0.6593
#>   std. dev.      0.2449  0.2632
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean            0.719  0.6905
#>   std. dev.      0.2299  0.2439
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7435  0.6767
#>   std. dev.      0.2456  0.2257
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.7554  0.6637
#>   std. dev.      0.2247  0.2084
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V29
#>   mean           0.6835  0.6218
#>   std. dev.      0.2253  0.2246
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0527  0.0338
#>   std. dev.      0.0438   0.025
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.6085  0.5777
#>   std. dev.      0.1989  0.2128
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.5105  0.5419
#>   std. dev.      0.2215  0.1846
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4502  0.4727
#>   std. dev.      0.2186   0.211
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4102   0.458
#>   std. dev.      0.2084  0.2137
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3668  0.4714
#>   std. dev.      0.2126  0.2571
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3261  0.4779
#>   std. dev.      0.2419  0.2764
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.294  0.4864
#>   std. dev.      0.2434  0.2622
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2885  0.4346
#>   std. dev.      0.2255  0.2301
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3226  0.3643
#>   std. dev.      0.2076  0.2306
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3419  0.3332
#>   std. dev.      0.1855  0.2323
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0649  0.0412
#>   std. dev.      0.0556  0.0302
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3104  0.3474
#>   std. dev.      0.1656   0.214
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2942  0.2981
#>   std. dev.      0.1717  0.1932
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2975   0.259
#>   std. dev.      0.1725  0.1774
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2705  0.2209
#>   std. dev.      0.1436  0.1493
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2524  0.1897
#>   std. dev.      0.1467  0.1223
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2534  0.1559
#>   std. dev.      0.1753  0.1034
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> V46
#>   mean           0.2035  0.1279
#>   std. dev.      0.1537  0.1029
#>   weight sum         75      64
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1482  0.1004
#>   std. dev.      0.0952  0.0725
#>   weight sum         75      64
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1114  0.0734
#>   std. dev.      0.0652  0.0481
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0631  0.0391
#>   std. dev.      0.0343   0.029
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0858  0.0681
#>   std. dev.      0.0607  0.0514
#>   weight sum         75      64
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0227  0.0183
#>   std. dev.      0.0137  0.0132
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0197  0.0133
#>   std. dev.      0.0135   0.009
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0103
#>   std. dev.      0.0113  0.0073
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0114    0.01
#>   std. dev.      0.0074  0.0064
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0114  0.0098
#>   std. dev.      0.0086  0.0054
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0085
#>   std. dev.      0.0086  0.0053
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0088  0.0079
#>   std. dev.      0.0069  0.0046
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0074
#>   std. dev.      0.0061  0.0049
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0067
#>   std. dev.      0.0072  0.0047
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean            0.009  0.0074
#>   std. dev.      0.0075  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1156  0.1067
#>   std. dev.      0.0479  0.0718
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0067
#>   std. dev.      0.0065  0.0039
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1313  0.1228
#>   std. dev.      0.0573  0.0654
#>   weight sum         75      64
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1557  0.1269
#>   std. dev.      0.0932  0.0762
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean            0.225  0.1399
#>   std. dev.      0.1233  0.1004
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
