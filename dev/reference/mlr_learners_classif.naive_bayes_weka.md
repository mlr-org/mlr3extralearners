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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean            0.033  0.0227
#>   std. dev.      0.0253  0.0154
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2439  0.1621
#>   std. dev.      0.1458  0.1124
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2924  0.1755
#>   std. dev.      0.1331  0.1054
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3065  0.1957
#>   std. dev.      0.1264  0.1282
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean            0.314  0.2304
#>   std. dev.      0.1347  0.1277
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.327  0.2659
#>   std. dev.       0.164  0.1638
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3463  0.3126
#>   std. dev.      0.1933  0.2287
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3936  0.3826
#>   std. dev.      0.2163  0.2517
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4293  0.4095
#>   std. dev.      0.2449  0.2816
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4779  0.4327
#>   std. dev.      0.2557  0.2672
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5673  0.4581
#>   std. dev.      0.2512  0.2493
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0428  0.0323
#>   std. dev.      0.0328  0.0268
#>   weight sum         75      64
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6516  0.4975
#>   std. dev.      0.2423  0.2608
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.7074  0.5424
#>   std. dev.      0.2272  0.2492
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.7246  0.5552
#>   std. dev.      0.2234  0.2671
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean           0.7247  0.5987
#>   std. dev.      0.2173  0.2507
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V24
#>   mean           0.7223  0.6592
#>   std. dev.      0.2224  0.2331
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7065  0.6787
#>   std. dev.      0.2315  0.2545
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7278  0.6931
#>   std. dev.      0.2394  0.2434
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7356  0.6834
#>   std. dev.      0.2668  0.2133
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7195  0.6896
#>   std. dev.      0.2638  0.1928
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6437  0.6469
#>   std. dev.      0.2329  0.2268
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V3
#>   mean            0.045  0.0363
#>   std. dev.      0.0344  0.0317
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5495  0.5817
#>   std. dev.      0.1893  0.2234
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4436  0.5371
#>   std. dev.      0.1901  0.1982
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.3902  0.4487
#>   std. dev.      0.1854  0.2166
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean             0.36  0.4277
#>   std. dev.      0.1749  0.2129
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3335  0.4329
#>   std. dev.      0.1914    0.24
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3055  0.4459
#>   std. dev.      0.2369  0.2495
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.2905  0.4564
#>   std. dev.      0.2305  0.2617
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2916  0.4162
#>   std. dev.      0.2121  0.2404
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3105  0.3516
#>   std. dev.      0.1847  0.2133
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean           0.3198  0.3197
#>   std. dev.      0.1707  0.2099
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0606  0.0414
#>   std. dev.      0.0426  0.0298
#>   weight sum         75      64
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2856  0.3121
#>   std. dev.      0.1418  0.1887
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2595  0.2736
#>   std. dev.      0.1419  0.1684
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2803  0.2448
#>   std. dev.      0.1523  0.1586
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean           0.2613  0.2069
#>   std. dev.       0.138  0.1313
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2276  0.1724
#>   std. dev.      0.1367  0.1172
#>   weight sum         75      64
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2158  0.1442
#>   std. dev.      0.1557  0.1011
#>   weight sum         75      64
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1736  0.1216
#>   std. dev.      0.1296  0.0961
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean             0.13  0.0952
#>   std. dev.      0.0838  0.0706
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.0972  0.0681
#>   std. dev.      0.0577  0.0512
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean            0.058  0.0386
#>   std. dev.      0.0327  0.0336
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.085  0.0624
#>   std. dev.      0.0515  0.0447
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0213  0.0178
#>   std. dev.      0.0127  0.0135
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0116
#>   std. dev.      0.0144  0.0079
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0105
#>   std. dev.      0.0107  0.0071
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0113  0.0104
#>   std. dev.      0.0072  0.0063
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0094
#>   std. dev.      0.0086  0.0058
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0087
#>   std. dev.      0.0087  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0081  0.0077
#>   std. dev.       0.005  0.0049
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0066  0.0077
#>   std. dev.      0.0044   0.006
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0084  0.0067
#>   std. dev.      0.0059  0.0048
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0083   0.007
#>   std. dev.      0.0062  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1073   0.097
#>   std. dev.      0.0544  0.0703
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0062  0.0059
#>   std. dev.      0.0042  0.0035
#>   weight sum         75      64
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1234   0.115
#>   std. dev.      0.0579  0.0679
#>   weight sum         75      64
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1536  0.1212
#>   std. dev.      0.0838  0.0751
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2054  0.1407
#>   std. dev.      0.1191  0.1011
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
