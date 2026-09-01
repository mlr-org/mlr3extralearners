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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0336  0.0225
#>   std. dev.      0.0275   0.016
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2522  0.1609
#>   std. dev.      0.1317  0.1156
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2884  0.1716
#>   std. dev.      0.1142  0.1166
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3031  0.1916
#>   std. dev.      0.1201  0.1411
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3171   0.225
#>   std. dev.      0.1251  0.1393
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3196  0.2544
#>   std. dev.      0.1674  0.1581
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3152  0.2893
#>   std. dev.      0.1978  0.2115
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3671  0.3614
#>   std. dev.      0.2186  0.2471
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.3992  0.3949
#>   std. dev.      0.2434  0.2761
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4467  0.4336
#>   std. dev.      0.2556   0.258
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5269  0.4605
#>   std. dev.      0.2654  0.2613
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0438  0.0283
#>   std. dev.      0.0385  0.0202
#>   weight sum         69      70
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5957  0.5029
#>   std. dev.       0.279   0.271
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.626  0.5433
#>   std. dev.      0.2803  0.2659
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6313   0.569
#>   std. dev.      0.2507  0.2684
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6593  0.6108
#>   std. dev.      0.2496  0.2485
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V24
#>   mean           0.6778  0.6379
#>   std. dev.      0.2377  0.2415
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6803  0.6589
#>   std. dev.      0.2277    0.26
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7121  0.6856
#>   std. dev.      0.2304   0.255
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7214  0.6857
#>   std. dev.      0.2618  0.2361
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7297  0.6739
#>   std. dev.      0.2578  0.2103
#>   weight sum         69      70
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6597  0.6241
#>   std. dev.      0.2517  0.2379
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0487  0.0327
#>   std. dev.      0.0462  0.0278
#>   weight sum         69      70
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5967  0.5623
#>   std. dev.      0.2041  0.2381
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.5002  0.5101
#>   std. dev.      0.2271  0.2073
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean            0.446   0.443
#>   std. dev.      0.2241  0.2217
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4121  0.4389
#>   std. dev.      0.2093  0.2237
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3699  0.4321
#>   std. dev.      0.2122  0.2492
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3331  0.4364
#>   std. dev.      0.2342  0.2549
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3139  0.4495
#>   std. dev.      0.2465  0.2586
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3105  0.4115
#>   std. dev.      0.2339  0.2513
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3358  0.3434
#>   std. dev.       0.208  0.2299
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.345  0.3091
#>   std. dev.      0.1832  0.2081
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean            0.065  0.0419
#>   std. dev.      0.0576  0.0318
#>   weight sum         69      70
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3257  0.3093
#>   std. dev.      0.1686  0.1909
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3049  0.2896
#>   std. dev.      0.1661  0.1757
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2971   0.243
#>   std. dev.      0.1446   0.168
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2706   0.203
#>   std. dev.      0.1244  0.1194
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2475  0.1659
#>   std. dev.      0.1483  0.0878
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2452  0.1317
#>   std. dev.      0.1707  0.0817
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.196    0.11
#>   std. dev.      0.1399  0.0885
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1448  0.0868
#>   std. dev.      0.0907  0.0634
#>   weight sum         69      70
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1144  0.0634
#>   std. dev.      0.0658  0.0446
#>   weight sum         69      70
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0661  0.0365
#>   std. dev.      0.0357  0.0311
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0923  0.0607
#>   std. dev.      0.0605  0.0448
#>   weight sum         69      70
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean            0.023  0.0177
#>   std. dev.      0.0142  0.0136
#>   weight sum         69      70
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0176  0.0122
#>   std. dev.      0.0091  0.0087
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0158  0.0106
#>   std. dev.      0.0099   0.007
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0119  0.0103
#>   std. dev.      0.0076  0.0064
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0092
#>   std. dev.      0.0089  0.0055
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0106  0.0082
#>   std. dev.      0.0094  0.0052
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0069
#>   std. dev.      0.0071  0.0046
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0075
#>   std. dev.      0.0061  0.0057
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0084  0.0068
#>   std. dev.      0.0071  0.0048
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0068
#>   std. dev.      0.0068   0.005
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1139  0.0924
#>   std. dev.      0.0541  0.0589
#>   weight sum         69      70
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0064  0.0057
#>   std. dev.      0.0047  0.0035
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1256  0.1083
#>   std. dev.      0.0585  0.0625
#>   weight sum         69      70
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean           0.1497  0.1094
#>   std. dev.      0.0884  0.0805
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2161  0.1296
#>   std. dev.      0.1263  0.1003
#>   weight sum         69      70
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
