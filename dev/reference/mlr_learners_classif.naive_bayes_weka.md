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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0349  0.0207
#>   std. dev.      0.0255  0.0121
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2478  0.1558
#>   std. dev.      0.1406   0.109
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2881   0.173
#>   std. dev.      0.1271  0.1123
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3065  0.1946
#>   std. dev.      0.1227  0.1304
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3226  0.2383
#>   std. dev.      0.1314  0.1425
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3281   0.269
#>   std. dev.      0.1734  0.1812
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3329  0.2972
#>   std. dev.      0.1951   0.224
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3796  0.3774
#>   std. dev.      0.2065  0.2647
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4189  0.4287
#>   std. dev.      0.2336  0.2921
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4574  0.4672
#>   std. dev.      0.2523  0.2731
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean            0.537  0.4918
#>   std. dev.      0.2579  0.2564
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0456  0.0302
#>   std. dev.      0.0338  0.0264
#>   weight sum         77      62
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6176  0.5275
#>   std. dev.      0.2589    0.26
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6677  0.5587
#>   std. dev.      0.2525  0.2501
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6838  0.5826
#>   std. dev.      0.2291  0.2556
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6946  0.6156
#>   std. dev.      0.2429  0.2391
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7077  0.6328
#>   std. dev.      0.2379    0.22
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.7018  0.6571
#>   std. dev.      0.2206   0.244
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7248  0.7009
#>   std. dev.       0.212  0.2359
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7257  0.6872
#>   std. dev.      0.2497  0.2412
#>   weight sum         77      62
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7149  0.6644
#>   std. dev.      0.2488  0.2261
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6464  0.6325
#>   std. dev.      0.2379  0.2389
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0511  0.0336
#>   std. dev.      0.0383  0.0301
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5825  0.5959
#>   std. dev.      0.2114  0.2468
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4935  0.5509
#>   std. dev.      0.2257  0.2121
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4304   0.467
#>   std. dev.       0.222  0.2125
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3911  0.4475
#>   std. dev.      0.1947  0.2164
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3681  0.4531
#>   std. dev.      0.2048  0.2429
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3424  0.4597
#>   std. dev.      0.2417  0.2693
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3174  0.4739
#>   std. dev.      0.2416  0.2559
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.316  0.4211
#>   std. dev.      0.2185  0.2374
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3324  0.3547
#>   std. dev.      0.1979   0.227
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3371  0.3206
#>   std. dev.      0.1829  0.2216
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0665  0.0414
#>   std. dev.       0.045  0.0343
#>   weight sum         77      62
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3048  0.3236
#>   std. dev.      0.1636  0.2038
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3004  0.2833
#>   std. dev.      0.1718  0.1843
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3187  0.2471
#>   std. dev.      0.1748  0.1769
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2893  0.2112
#>   std. dev.      0.1371  0.1317
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2528  0.1784
#>   std. dev.      0.1436  0.1085
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2527  0.1484
#>   std. dev.      0.1722  0.0943
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2038  0.1235
#>   std. dev.      0.1606  0.0951
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1487  0.0946
#>   std. dev.      0.0992  0.0692
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1133  0.0694
#>   std. dev.      0.0681  0.0474
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0646  0.0387
#>   std. dev.      0.0371  0.0296
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.091  0.0633
#>   std. dev.      0.0563  0.0509
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0232  0.0195
#>   std. dev.      0.0152  0.0133
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0208  0.0126
#>   std. dev.      0.0149  0.0092
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0169  0.0111
#>   std. dev.      0.0117  0.0077
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0128  0.0092
#>   std. dev.      0.0078  0.0061
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0136  0.0098
#>   std. dev.      0.0089  0.0057
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0084
#>   std. dev.      0.0088  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0094  0.0069
#>   std. dev.       0.007  0.0044
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0064
#>   std. dev.      0.0059  0.0037
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0097  0.0067
#>   std. dev.      0.0082  0.0051
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0094  0.0068
#>   std. dev.      0.0074  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1192  0.0978
#>   std. dev.      0.0539  0.0728
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072  0.0059
#>   std. dev.      0.0064  0.0037
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1313  0.1149
#>   std. dev.      0.0557  0.0717
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1531  0.1151
#>   std. dev.      0.0836   0.082
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2127  0.1312
#>   std. dev.      0.1258  0.0944
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
