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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>   mean           0.0346  0.0243
#>   std. dev.      0.0269  0.0162
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2501  0.1731
#>   std. dev.       0.136  0.1282
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2956    0.19
#>   std. dev.      0.1289  0.1205
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3141  0.2108
#>   std. dev.      0.1254  0.1481
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3275  0.2384
#>   std. dev.      0.1333  0.1487
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.321  0.2799
#>   std. dev.      0.1637  0.1756
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3236  0.3295
#>   std. dev.      0.1938  0.2341
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3747  0.3973
#>   std. dev.      0.2075  0.2595
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4209  0.4325
#>   std. dev.      0.2358  0.2843
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4697  0.4572
#>   std. dev.      0.2525  0.2652
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5513  0.4652
#>   std. dev.      0.2505  0.2566
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0466  0.0315
#>   std. dev.      0.0405  0.0201
#>   weight sum         75      64
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6257  0.5015
#>   std. dev.      0.2509    0.26
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6753  0.5418
#>   std. dev.      0.2479  0.2469
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6949   0.563
#>   std. dev.      0.2346  0.2507
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.7093  0.6127
#>   std. dev.      0.2325  0.2371
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7172  0.6659
#>   std. dev.      0.2274  0.2238
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7023  0.6732
#>   std. dev.      0.2327  0.2515
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7154  0.6836
#>   std. dev.        0.23  0.2395
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7152  0.6824
#>   std. dev.      0.2601  0.1952
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7004  0.6838
#>   std. dev.      0.2617  0.1738
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean            0.638  0.6371
#>   std. dev.      0.2408  0.2323
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0532  0.0385
#>   std. dev.      0.0498  0.0291
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5713  0.5772
#>   std. dev.      0.2157  0.2363
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean            0.487  0.5278
#>   std. dev.      0.2294  0.1993
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4323  0.4404
#>   std. dev.      0.2227  0.2069
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3969  0.4242
#>   std. dev.      0.2021  0.2025
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3771  0.4451
#>   std. dev.       0.209  0.2462
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3513   0.451
#>   std. dev.      0.2464  0.2571
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.3387  0.4588
#>   std. dev.      0.2446  0.2525
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3346  0.4069
#>   std. dev.      0.2232   0.236
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3371  0.3395
#>   std. dev.      0.1873  0.2121
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3417  0.3185
#>   std. dev.      0.1645  0.2046
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0657  0.0447
#>   std. dev.      0.0616  0.0321
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3136  0.3287
#>   std. dev.      0.1582  0.1808
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.2952  0.2868
#>   std. dev.      0.1745   0.171
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2977  0.2498
#>   std. dev.      0.1703  0.1615
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2814  0.2196
#>   std. dev.      0.1418  0.1391
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.255  0.1827
#>   std. dev.      0.1501  0.1158
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2399   0.142
#>   std. dev.      0.1771  0.0917
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1899  0.1122
#>   std. dev.      0.1508  0.0866
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1412  0.0899
#>   std. dev.      0.0943   0.058
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1067  0.0651
#>   std. dev.      0.0688  0.0424
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0622  0.0369
#>   std. dev.      0.0355  0.0263
#>   weight sum         75      64
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0853  0.0625
#>   std. dev.      0.0628  0.0501
#>   weight sum         75      64
#>   precision      0.0031  0.0031
#> 
#> V50
#>   mean           0.0212  0.0177
#>   std. dev.      0.0113  0.0116
#>   weight sum         75      64
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0189  0.0118
#>   std. dev.      0.0136  0.0082
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0108
#>   std. dev.      0.0113  0.0077
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0114  0.0101
#>   std. dev.      0.0068   0.006
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0119  0.0095
#>   std. dev.      0.0083  0.0054
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0097  0.0084
#>   std. dev.      0.0079  0.0053
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0083  0.0079
#>   std. dev.      0.0054  0.0051
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0075  0.0086
#>   std. dev.      0.0047  0.0063
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0088  0.0068
#>   std. dev.       0.007   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0073
#>   std. dev.      0.0072  0.0053
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1127  0.1013
#>   std. dev.      0.0535  0.0738
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0062
#>   std. dev.      0.0066  0.0037
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1276  0.1191
#>   std. dev.      0.0565  0.0712
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1456  0.1337
#>   std. dev.      0.0855  0.0853
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2126  0.1549
#>   std. dev.      0.1186  0.1112
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
