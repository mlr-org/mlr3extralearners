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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0338  0.0213
#>   std. dev.      0.0255  0.0156
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2482  0.1708
#>   std. dev.      0.1362  0.1182
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2896  0.1866
#>   std. dev.      0.1218  0.1166
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V12
#>   mean           0.3048  0.2014
#>   std. dev.      0.1136  0.1353
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean            0.309  0.2375
#>   std. dev.      0.1216  0.1316
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3136  0.2718
#>   std. dev.       0.155  0.1563
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3239  0.3112
#>   std. dev.      0.1982  0.2127
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3701  0.3925
#>   std. dev.      0.2224  0.2494
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V17
#>   mean           0.4052  0.4558
#>   std. dev.      0.2453  0.2929
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4561  0.4978
#>   std. dev.      0.2531  0.2659
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5253  0.5069
#>   std. dev.      0.2565  0.2596
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0443  0.0281
#>   std. dev.      0.0397  0.0238
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5953  0.5335
#>   std. dev.      0.2571  0.2595
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6375  0.5744
#>   std. dev.      0.2456  0.2516
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6513  0.6125
#>   std. dev.      0.2365  0.2404
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V23
#>   mean           0.6745  0.6327
#>   std. dev.      0.2483  0.2082
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7014  0.6501
#>   std. dev.      0.2394   0.206
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.705  0.6874
#>   std. dev.       0.231  0.2195
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7245  0.7214
#>   std. dev.      0.2332   0.218
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7313  0.7066
#>   std. dev.      0.2599  0.2067
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7182  0.6691
#>   std. dev.      0.2596  0.2147
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6506  0.6298
#>   std. dev.      0.2507  0.2401
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0518  0.0334
#>   std. dev.      0.0489  0.0285
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5804  0.5811
#>   std. dev.      0.2028  0.2343
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4953  0.5106
#>   std. dev.      0.2158  0.2015
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4382  0.4371
#>   std. dev.      0.2126  0.2103
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.4026  0.4366
#>   std. dev.      0.1998  0.2106
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3636  0.4294
#>   std. dev.      0.2095  0.2382
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3323  0.4299
#>   std. dev.      0.2445    0.24
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3101  0.4331
#>   std. dev.      0.2515  0.2447
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3165  0.4066
#>   std. dev.      0.2285  0.2369
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.321   0.341
#>   std. dev.      0.2024  0.2291
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3345  0.2995
#>   std. dev.      0.1858  0.2155
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0654  0.0421
#>   std. dev.      0.0618  0.0318
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3135  0.3143
#>   std. dev.      0.1683  0.1854
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.296  0.2836
#>   std. dev.      0.1633  0.1659
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3004  0.2497
#>   std. dev.      0.1585  0.1571
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2672  0.2025
#>   std. dev.      0.1303  0.1111
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V44
#>   mean           0.2271  0.1664
#>   std. dev.      0.1416  0.0893
#>   weight sum         73      66
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2302  0.1423
#>   std. dev.       0.173  0.0848
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1943  0.1213
#>   std. dev.      0.1367  0.0935
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1473  0.0975
#>   std. dev.      0.0826  0.0701
#>   weight sum         73      66
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1116  0.0705
#>   std. dev.      0.0643  0.0502
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0627  0.0387
#>   std. dev.      0.0344   0.031
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0879  0.0624
#>   std. dev.      0.0668  0.0468
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0185
#>   std. dev.      0.0142  0.0125
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0179  0.0127
#>   std. dev.      0.0088  0.0091
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V52
#>   mean           0.0149  0.0104
#>   std. dev.      0.0081  0.0068
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.012  0.0085
#>   std. dev.      0.0077  0.0054
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0114  0.0096
#>   std. dev.      0.0077  0.0054
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0087
#>   std. dev.      0.0088  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0069
#>   std. dev.      0.0065  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0081
#>   std. dev.      0.0061  0.0062
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0065
#>   std. dev.      0.0073  0.0048
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0084   0.006
#>   std. dev.      0.0068   0.004
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1117  0.0901
#>   std. dev.      0.0529  0.0566
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean            0.007  0.0059
#>   std. dev.      0.0065  0.0038
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1264  0.1142
#>   std. dev.      0.0553  0.0606
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1406  0.1173
#>   std. dev.      0.0754  0.0777
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2011  0.1418
#>   std. dev.      0.1079   0.105
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
