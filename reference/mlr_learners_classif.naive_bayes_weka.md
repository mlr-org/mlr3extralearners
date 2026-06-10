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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0346  0.0238
#>   std. dev.       0.027   0.015
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2497  0.1574
#>   std. dev.      0.1465  0.1005
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2891  0.1711
#>   std. dev.      0.1344   0.101
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2996  0.1931
#>   std. dev.      0.1342  0.1255
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3155  0.2307
#>   std. dev.      0.1421  0.1339
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.333  0.2767
#>   std. dev.      0.1642  0.1709
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3504  0.3186
#>   std. dev.      0.1951  0.2342
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.4093   0.386
#>   std. dev.      0.2099  0.2617
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4541  0.4217
#>   std. dev.       0.244  0.2884
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4903  0.4429
#>   std. dev.      0.2648  0.2678
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5871  0.4567
#>   std. dev.      0.2447  0.2674
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0435  0.0321
#>   std. dev.      0.0326  0.0259
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6618  0.4927
#>   std. dev.      0.2357  0.2679
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.7027  0.5498
#>   std. dev.      0.2259  0.2568
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6909  0.5884
#>   std. dev.      0.2413  0.2605
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6719  0.6219
#>   std. dev.      0.2586   0.244
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6707  0.6601
#>   std. dev.       0.245  0.2343
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6513  0.6736
#>   std. dev.      0.2379  0.2608
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6712  0.7099
#>   std. dev.      0.2388  0.2389
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean            0.677  0.7093
#>   std. dev.      0.2747  0.1986
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6842  0.6798
#>   std. dev.      0.2753  0.1958
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6342  0.6332
#>   std. dev.       0.255  0.2302
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0478  0.0361
#>   std. dev.      0.0338  0.0297
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5656  0.5829
#>   std. dev.      0.2156  0.2396
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4656  0.5405
#>   std. dev.      0.2044  0.1944
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4142  0.4543
#>   std. dev.      0.1973  0.2038
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean            0.391  0.4394
#>   std. dev.      0.1763  0.2156
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3743    0.44
#>   std. dev.      0.1872  0.2631
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3456  0.4539
#>   std. dev.      0.2381  0.2694
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3088   0.465
#>   std. dev.      0.2407  0.2657
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3175  0.4144
#>   std. dev.      0.2225  0.2425
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.342  0.3298
#>   std. dev.      0.2039   0.205
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3463  0.2831
#>   std. dev.      0.1945  0.1968
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0629   0.041
#>   std. dev.      0.0435  0.0284
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3137   0.306
#>   std. dev.      0.1643  0.1829
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.2897   0.281
#>   std. dev.      0.1685  0.1649
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3064  0.2547
#>   std. dev.      0.1749  0.1567
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2906  0.2165
#>   std. dev.      0.1429  0.1236
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2542  0.1768
#>   std. dev.      0.1379  0.1096
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean            0.248   0.138
#>   std. dev.      0.1743  0.0919
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2017  0.1145
#>   std. dev.      0.1569  0.0842
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1421  0.0935
#>   std. dev.      0.0973   0.057
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean            0.109  0.0698
#>   std. dev.      0.0664  0.0443
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0636  0.0397
#>   std. dev.      0.0365  0.0276
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0898  0.0598
#>   std. dev.       0.057  0.0424
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0232  0.0177
#>   std. dev.      0.0145  0.0115
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0193  0.0123
#>   std. dev.      0.0152  0.0083
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0163  0.0103
#>   std. dev.      0.0109  0.0067
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118  0.0102
#>   std. dev.      0.0082  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0092
#>   std. dev.      0.0081  0.0047
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0082
#>   std. dev.      0.0088  0.0048
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0088  0.0074
#>   std. dev.      0.0065  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0077
#>   std. dev.      0.0061  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098  0.0063
#>   std. dev.      0.0083  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0082  0.0068
#>   std. dev.      0.0063  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1094  0.0918
#>   std. dev.      0.0539  0.0636
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0059
#>   std. dev.      0.0061  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1256   0.111
#>   std. dev.      0.0589  0.0617
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1475  0.1138
#>   std. dev.       0.084  0.0734
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2098  0.1333
#>   std. dev.      0.1192  0.0897
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
