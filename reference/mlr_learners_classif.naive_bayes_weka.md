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
#>   mean           0.0358  0.0234
#>   std. dev.      0.0258  0.0147
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2697  0.1579
#>   std. dev.      0.1442  0.1172
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3004  0.1711
#>   std. dev.      0.1335  0.1234
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3011  0.1964
#>   std. dev.      0.1319  0.1438
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3226  0.2262
#>   std. dev.       0.128   0.143
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3349  0.2622
#>   std. dev.      0.1596    0.16
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3397     0.3
#>   std. dev.      0.1951  0.2078
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3903  0.3722
#>   std. dev.      0.2103  0.2454
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4161  0.4044
#>   std. dev.      0.2378  0.2807
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean            0.451   0.441
#>   std. dev.      0.2519  0.2671
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5305   0.474
#>   std. dev.        0.25  0.2694
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0474  0.0306
#>   std. dev.      0.0385   0.019
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6282  0.5142
#>   std. dev.      0.2567  0.2757
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean             0.68  0.5643
#>   std. dev.      0.2648  0.2582
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6757  0.5707
#>   std. dev.      0.2601  0.2796
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean           0.6678  0.6043
#>   std. dev.        0.27  0.2717
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6732  0.6335
#>   std. dev.      0.2597   0.248
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6708  0.6429
#>   std. dev.      0.2441  0.2612
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6981  0.6639
#>   std. dev.      0.2279  0.2496
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.6972  0.6589
#>   std. dev.      0.2635  0.2335
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.6994  0.6545
#>   std. dev.      0.2476  0.2122
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6442  0.6259
#>   std. dev.      0.2343  0.2336
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0547   0.037
#>   std. dev.      0.0495  0.0261
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5837  0.5774
#>   std. dev.      0.2156  0.2244
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4919  0.5297
#>   std. dev.      0.2361  0.2034
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4413  0.4485
#>   std. dev.      0.2313  0.2122
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4141  0.4445
#>   std. dev.      0.2093  0.2179
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean            0.374  0.4733
#>   std. dev.      0.2198  0.2396
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3373  0.4782
#>   std. dev.      0.2562  0.2725
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3251  0.4673
#>   std. dev.      0.2467  0.2828
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3247  0.4201
#>   std. dev.      0.2309  0.2568
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3369    0.38
#>   std. dev.      0.2082   0.242
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3525  0.3612
#>   std. dev.      0.1845  0.2355
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0703  0.0415
#>   std. dev.      0.0614  0.0317
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3176  0.3375
#>   std. dev.      0.1689  0.2198
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2976  0.2895
#>   std. dev.      0.1654  0.1873
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3102  0.2471
#>   std. dev.       0.165  0.1718
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2747  0.2223
#>   std. dev.      0.1378  0.1407
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2578  0.1813
#>   std. dev.      0.1513  0.1155
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2653  0.1383
#>   std. dev.      0.1809  0.1045
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2076  0.1121
#>   std. dev.      0.1494  0.1017
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1491  0.0952
#>   std. dev.      0.0887  0.0728
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1146  0.0695
#>   std. dev.       0.065  0.0497
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0653   0.037
#>   std. dev.      0.0347  0.0306
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0949  0.0652
#>   std. dev.      0.0633  0.0489
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.023  0.0185
#>   std. dev.      0.0136  0.0132
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0121
#>   std. dev.        0.01  0.0082
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean            0.016  0.0109
#>   std. dev.      0.0101  0.0067
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.012  0.0104
#>   std. dev.      0.0082  0.0064
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0097
#>   std. dev.      0.0082  0.0052
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0091
#>   std. dev.      0.0087   0.005
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0088  0.0081
#>   std. dev.      0.0068  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0079
#>   std. dev.      0.0063  0.0059
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0072
#>   std. dev.      0.0083   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0074
#>   std. dev.      0.0068   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1182  0.1042
#>   std. dev.      0.0548  0.0679
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0063
#>   std. dev.       0.005  0.0037
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1279  0.1209
#>   std. dev.      0.0595  0.0687
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1533   0.122
#>   std. dev.      0.0923  0.0845
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2315  0.1373
#>   std. dev.      0.1271  0.1078
#>   weight sum         74      65
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
