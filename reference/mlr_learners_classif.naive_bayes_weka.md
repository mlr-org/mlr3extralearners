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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0355  0.0228
#>   std. dev.      0.0283  0.0139
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2274  0.1634
#>   std. dev.      0.1251  0.1028
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2663  0.1727
#>   std. dev.      0.1077  0.1084
#>   weight sum         74      65
#>   precision      0.0045  0.0045
#> 
#> V12
#>   mean           0.2868  0.1866
#>   std. dev.      0.1115  0.1301
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3068  0.2238
#>   std. dev.      0.1212  0.1357
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3257  0.2704
#>   std. dev.      0.1635  0.1719
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3298  0.3092
#>   std. dev.      0.2021  0.2293
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3729  0.3761
#>   std. dev.      0.2228  0.2554
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4088  0.4132
#>   std. dev.      0.2418  0.2955
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.456  0.4391
#>   std. dev.      0.2598  0.2702
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5334   0.471
#>   std. dev.      0.2672  0.2528
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0423   0.032
#>   std. dev.      0.0388   0.026
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6026  0.5003
#>   std. dev.      0.2693  0.2581
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6375  0.5354
#>   std. dev.      0.2607  0.2473
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6517  0.5727
#>   std. dev.      0.2416  0.2641
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean             0.68  0.6132
#>   std. dev.       0.231  0.2487
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.689  0.6441
#>   std. dev.      0.2266  0.2233
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6809   0.646
#>   std. dev.      0.2316    0.24
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7004  0.6887
#>   std. dev.       0.229  0.2306
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.7113  0.6853
#>   std. dev.      0.2557  0.2205
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7325   0.663
#>   std. dev.      0.2466  0.2074
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6802  0.6396
#>   std. dev.      0.2342  0.2341
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0474   0.038
#>   std. dev.      0.0439  0.0302
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.6011  0.6015
#>   std. dev.      0.1978  0.2394
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.5115  0.5463
#>   std. dev.      0.2102  0.2113
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4526  0.4512
#>   std. dev.      0.2221  0.2308
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.4219  0.4546
#>   std. dev.      0.2102  0.2312
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V34
#>   mean           0.3753  0.4723
#>   std. dev.      0.2154  0.2536
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3368  0.4863
#>   std. dev.      0.2496  0.2595
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3151  0.4959
#>   std. dev.      0.2442  0.2622
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3099  0.4398
#>   std. dev.       0.227  0.2372
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3249  0.3484
#>   std. dev.      0.1979  0.1977
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3368  0.3025
#>   std. dev.       0.177  0.1967
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0653  0.0429
#>   std. dev.      0.0556  0.0339
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3179  0.3164
#>   std. dev.      0.1572  0.1782
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.3159  0.2863
#>   std. dev.      0.1667  0.1638
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3272  0.2471
#>   std. dev.      0.1663  0.1557
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.293  0.2093
#>   std. dev.      0.1381  0.1324
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2522  0.1796
#>   std. dev.      0.1455  0.1175
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2444  0.1495
#>   std. dev.      0.1802  0.0966
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2087  0.1217
#>   std. dev.      0.1555  0.0862
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1585  0.0955
#>   std. dev.      0.0984  0.0594
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1151  0.0693
#>   std. dev.      0.0681  0.0468
#>   weight sum         74      65
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0649  0.0394
#>   std. dev.      0.0348  0.0285
#>   weight sum         74      65
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0902  0.0653
#>   std. dev.      0.0588  0.0488
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0235  0.0183
#>   std. dev.      0.0138  0.0117
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0183  0.0125
#>   std. dev.      0.0135  0.0079
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0105
#>   std. dev.      0.0118  0.0071
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117    0.01
#>   std. dev.      0.0081  0.0065
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0092
#>   std. dev.      0.0081  0.0052
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0084
#>   std. dev.      0.0095  0.0048
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0084  0.0075
#>   std. dev.      0.0062  0.0046
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0083
#>   std. dev.      0.0058  0.0053
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0065
#>   std. dev.      0.0071  0.0047
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0074
#>   std. dev.      0.0071  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1111  0.1005
#>   std. dev.       0.053  0.0688
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0064  0.0039
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1267  0.1176
#>   std. dev.      0.0592  0.0697
#>   weight sum         74      65
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1431  0.1196
#>   std. dev.      0.0841  0.0829
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.1946  0.1379
#>   std. dev.      0.1173  0.0945
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
