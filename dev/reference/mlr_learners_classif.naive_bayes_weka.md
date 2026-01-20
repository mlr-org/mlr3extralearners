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
#>                 (0.45)  (0.55)
#> ===============================
#> V1
#>   mean           0.0351  0.0227
#>   std. dev.      0.0292  0.0139
#>   weight sum         63      76
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2454  0.1566
#>   std. dev.      0.1311   0.109
#>   weight sum         63      76
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2806   0.172
#>   std. dev.      0.1216  0.1117
#>   weight sum         63      76
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2946  0.1904
#>   std. dev.      0.1227  0.1374
#>   weight sum         63      76
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.317  0.2305
#>   std. dev.      0.1244  0.1364
#>   weight sum         63      76
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3362   0.274
#>   std. dev.      0.1748  0.1718
#>   weight sum         63      76
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3538  0.3185
#>   std. dev.      0.2083   0.221
#>   weight sum         63      76
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.4179   0.385
#>   std. dev.      0.2218  0.2555
#>   weight sum         63      76
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4682  0.4253
#>   std. dev.      0.2536  0.2877
#>   weight sum         63      76
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.5036  0.4665
#>   std. dev.       0.267  0.2692
#>   weight sum         63      76
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5753  0.4911
#>   std. dev.      0.2603  0.2512
#>   weight sum         63      76
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0476  0.0322
#>   std. dev.      0.0404   0.024
#>   weight sum         63      76
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6244  0.5136
#>   std. dev.      0.2643  0.2558
#>   weight sum         63      76
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6571  0.5454
#>   std. dev.      0.2626  0.2489
#>   weight sum         63      76
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6626  0.5666
#>   std. dev.      0.2513  0.2559
#>   weight sum         63      76
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6704  0.6134
#>   std. dev.      0.2514  0.2426
#>   weight sum         63      76
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6743  0.6625
#>   std. dev.      0.2455  0.2311
#>   weight sum         63      76
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6483  0.6627
#>   std. dev.      0.2515  0.2413
#>   weight sum         63      76
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6701  0.6779
#>   std. dev.      0.2514  0.2349
#>   weight sum         63      76
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6748  0.6797
#>   std. dev.      0.2683  0.2219
#>   weight sum         63      76
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.6723  0.6678
#>   std. dev.      0.2625  0.2147
#>   weight sum         63      76
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6087  0.6356
#>   std. dev.      0.2537  0.2387
#>   weight sum         63      76
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0537  0.0364
#>   std. dev.      0.0503  0.0287
#>   weight sum         63      76
#>   precision      0.0025  0.0025
#> 
#> V30
#>   mean            0.563  0.5899
#>   std. dev.      0.2191  0.2367
#>   weight sum         63      76
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4614  0.5337
#>   std. dev.      0.2369  0.2044
#>   weight sum         63      76
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4185  0.4539
#>   std. dev.      0.2321  0.2188
#>   weight sum         63      76
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4032  0.4396
#>   std. dev.      0.2122  0.2294
#>   weight sum         63      76
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean            0.385  0.4312
#>   std. dev.       0.217  0.2474
#>   weight sum         63      76
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean            0.373  0.4353
#>   std. dev.      0.2464  0.2491
#>   weight sum         63      76
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3398  0.4457
#>   std. dev.      0.2663  0.2579
#>   weight sum         63      76
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3286  0.4146
#>   std. dev.      0.2472  0.2413
#>   weight sum         63      76
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3488  0.3542
#>   std. dev.      0.2099   0.231
#>   weight sum         63      76
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3411  0.3203
#>   std. dev.      0.1756   0.228
#>   weight sum         63      76
#>   precision       0.007   0.007
#> 
#> V4
#>   mean             0.07  0.0395
#>   std. dev.      0.0633   0.028
#>   weight sum         63      76
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3073  0.3155
#>   std. dev.      0.1641  0.2057
#>   weight sum         63      76
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3089  0.2852
#>   std. dev.      0.1751  0.1869
#>   weight sum         63      76
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3078  0.2513
#>   std. dev.      0.1769  0.1745
#>   weight sum         63      76
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2842  0.2108
#>   std. dev.      0.1476  0.1358
#>   weight sum         63      76
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2571  0.1776
#>   std. dev.      0.1482  0.1112
#>   weight sum         63      76
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2462  0.1461
#>   std. dev.      0.1695  0.1026
#>   weight sum         63      76
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1991  0.1187
#>   std. dev.      0.1585  0.0998
#>   weight sum         63      76
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1435  0.0953
#>   std. dev.      0.1004  0.0686
#>   weight sum         63      76
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1071  0.0672
#>   std. dev.        0.07   0.048
#>   weight sum         63      76
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean            0.061   0.038
#>   std. dev.      0.0375  0.0307
#>   weight sum         63      76
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0987   0.057
#>   std. dev.      0.0691  0.0407
#>   weight sum         63      76
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0228  0.0182
#>   std. dev.      0.0147   0.013
#>   weight sum         63      76
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0196  0.0124
#>   std. dev.      0.0163  0.0088
#>   weight sum         63      76
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0173  0.0111
#>   std. dev.       0.012  0.0075
#>   weight sum         63      76
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0124  0.0099
#>   std. dev.      0.0076  0.0062
#>   weight sum         63      76
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0121  0.0096
#>   std. dev.      0.0086  0.0055
#>   weight sum         63      76
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0089
#>   std. dev.      0.0093  0.0052
#>   weight sum         63      76
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0094  0.0075
#>   std. dev.       0.007  0.0048
#>   weight sum         63      76
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0072
#>   std. dev.      0.0066  0.0054
#>   weight sum         63      76
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0067
#>   std. dev.      0.0076  0.0049
#>   weight sum         63      76
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0069
#>   std. dev.      0.0072  0.0045
#>   weight sum         63      76
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1136  0.0944
#>   std. dev.      0.0515  0.0661
#>   weight sum         63      76
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0075  0.0062
#>   std. dev.      0.0067  0.0037
#>   weight sum         63      76
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1305  0.1141
#>   std. dev.      0.0621  0.0654
#>   weight sum         63      76
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1507  0.1155
#>   std. dev.      0.0939  0.0751
#>   weight sum         63      76
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2139  0.1348
#>   std. dev.       0.122  0.0952
#>   weight sum         63      76
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4202899 
```
