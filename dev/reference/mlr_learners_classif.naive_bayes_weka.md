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
#>   mean            0.036  0.0222
#>   std. dev.      0.0278  0.0122
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2536  0.1627
#>   std. dev.       0.138  0.1155
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2911  0.1822
#>   std. dev.      0.1247  0.1171
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3012   0.206
#>   std. dev.      0.1245  0.1387
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3072  0.2396
#>   std. dev.      0.1313  0.1355
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3131  0.2702
#>   std. dev.      0.1591  0.1605
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3155  0.3159
#>   std. dev.       0.181  0.2063
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3658   0.385
#>   std. dev.      0.1913  0.2353
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4033  0.4184
#>   std. dev.      0.2165   0.267
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4526  0.4487
#>   std. dev.      0.2405  0.2711
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5299  0.4889
#>   std. dev.      0.2583  0.2661
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0459  0.0311
#>   std. dev.      0.0399  0.0201
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6099  0.5244
#>   std. dev.      0.2607  0.2653
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6609  0.5585
#>   std. dev.      0.2589   0.257
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6794  0.5613
#>   std. dev.      0.2468  0.2712
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6955  0.5909
#>   std. dev.      0.2529  0.2427
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7142  0.6236
#>   std. dev.      0.2323  0.2347
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7051  0.6374
#>   std. dev.      0.2279  0.2491
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7291  0.6565
#>   std. dev.      0.2185  0.2337
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7271  0.6499
#>   std. dev.      0.2533  0.2194
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7072  0.6496
#>   std. dev.      0.2514  0.2103
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6438  0.6216
#>   std. dev.      0.2391  0.2402
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0523  0.0356
#>   std. dev.      0.0464  0.0268
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5788  0.5708
#>   std. dev.      0.2055  0.2376
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean            0.488   0.509
#>   std. dev.      0.2168  0.2109
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4374  0.4361
#>   std. dev.      0.2136   0.204
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4032  0.4362
#>   std. dev.      0.1968  0.2193
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3672  0.4621
#>   std. dev.      0.2055  0.2447
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3352  0.4581
#>   std. dev.      0.2444  0.2599
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3233  0.4539
#>   std. dev.      0.2412  0.2634
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3192  0.4131
#>   std. dev.      0.2227  0.2411
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3293   0.349
#>   std. dev.      0.1984  0.2256
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3457  0.3346
#>   std. dev.      0.1863  0.2174
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0657  0.0423
#>   std. dev.      0.0601  0.0335
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean            0.324  0.3449
#>   std. dev.      0.1631  0.2085
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3007  0.3082
#>   std. dev.      0.1634  0.1949
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3079  0.2705
#>   std. dev.      0.1605  0.1765
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2796   0.217
#>   std. dev.      0.1319  0.1406
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2527  0.1837
#>   std. dev.      0.1398  0.1183
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V45
#>   mean           0.2504  0.1458
#>   std. dev.      0.1688   0.096
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2015  0.1184
#>   std. dev.      0.1371  0.0976
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1452  0.0962
#>   std. dev.      0.0846  0.0692
#>   weight sum         77      62
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1106  0.0693
#>   std. dev.      0.0645  0.0472
#>   weight sum         77      62
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0642  0.0376
#>   std. dev.      0.0356  0.0283
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0855  0.0692
#>   std. dev.      0.0634  0.0535
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0233  0.0171
#>   std. dev.      0.0149  0.0114
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0185  0.0138
#>   std. dev.      0.0118  0.0087
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0157  0.0105
#>   std. dev.      0.0096  0.0079
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0116  0.0097
#>   std. dev.      0.0076  0.0061
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0096
#>   std. dev.      0.0084  0.0054
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101   0.009
#>   std. dev.      0.0089  0.0055
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0077
#>   std. dev.      0.0063  0.0049
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0084
#>   std. dev.       0.006   0.006
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0077
#>   std. dev.      0.0081  0.0053
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0075
#>   std. dev.       0.007  0.0056
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1141  0.1046
#>   std. dev.      0.0507  0.0701
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0063
#>   std. dev.      0.0062  0.0039
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.131  0.1169
#>   std. dev.      0.0542  0.0706
#>   weight sum         77      62
#>   precision      0.0029  0.0029
#> 
#> V8
#>   mean            0.155  0.1175
#>   std. dev.      0.0825  0.0804
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V9
#>   mean           0.2197  0.1371
#>   std. dev.      0.1187  0.1027
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
