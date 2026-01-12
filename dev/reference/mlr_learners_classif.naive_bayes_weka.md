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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0366  0.0208
#>   std. dev.       0.029  0.0122
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2444  0.1517
#>   std. dev.      0.1375  0.1063
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2839  0.1672
#>   std. dev.      0.1121  0.1057
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean            0.301  0.1812
#>   std. dev.       0.111  0.1291
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3094  0.2215
#>   std. dev.      0.1287   0.133
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3165  0.2557
#>   std. dev.      0.1404   0.167
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3341   0.289
#>   std. dev.      0.1724  0.2117
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3778  0.3609
#>   std. dev.      0.1946  0.2538
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4016  0.4148
#>   std. dev.      0.2365  0.2878
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4468  0.4567
#>   std. dev.      0.2571   0.262
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean            0.522  0.4774
#>   std. dev.      0.2574  0.2496
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0482  0.0295
#>   std. dev.      0.0415  0.0239
#>   weight sum         69      70
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6112   0.505
#>   std. dev.      0.2616  0.2599
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6581  0.5523
#>   std. dev.      0.2589  0.2513
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6507   0.586
#>   std. dev.      0.2546  0.2488
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6511  0.6278
#>   std. dev.      0.2651  0.2399
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6731  0.6602
#>   std. dev.      0.2524   0.236
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6694  0.6612
#>   std. dev.      0.2494  0.2543
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6988  0.6936
#>   std. dev.       0.235  0.2337
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7042  0.6861
#>   std. dev.      0.2699  0.2262
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.6994   0.652
#>   std. dev.      0.2587  0.2216
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6355  0.6186
#>   std. dev.      0.2448  0.2405
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0552   0.034
#>   std. dev.        0.05  0.0278
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean             0.57  0.5789
#>   std. dev.       0.221  0.2351
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4792  0.5272
#>   std. dev.      0.2155  0.2082
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.429   0.455
#>   std. dev.      0.1955   0.215
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4006  0.4538
#>   std. dev.      0.1741  0.2099
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V34
#>   mean           0.3702  0.4586
#>   std. dev.      0.1978  0.2429
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3366  0.4637
#>   std. dev.      0.2479   0.265
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3333  0.4735
#>   std. dev.      0.2448  0.2583
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3531   0.431
#>   std. dev.      0.2152  0.2326
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3533  0.3617
#>   std. dev.      0.2047  0.2283
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3469  0.3121
#>   std. dev.      0.1733  0.2283
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0733    0.04
#>   std. dev.      0.0632  0.0301
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3189  0.3115
#>   std. dev.      0.1441  0.2083
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2998  0.2857
#>   std. dev.      0.1573  0.1932
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3085  0.2586
#>   std. dev.      0.1612  0.1798
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.281  0.2216
#>   std. dev.       0.134  0.1408
#>   weight sum         69      70
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2422  0.1855
#>   std. dev.      0.1356  0.1135
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2383   0.148
#>   std. dev.      0.1697  0.1036
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1939   0.119
#>   std. dev.      0.1319  0.0997
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1389   0.095
#>   std. dev.      0.0758  0.0697
#>   weight sum         69      70
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1036  0.0717
#>   std. dev.      0.0625   0.049
#>   weight sum         69      70
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0594  0.0387
#>   std. dev.      0.0336  0.0295
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0908  0.0596
#>   std. dev.      0.0643  0.0441
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0214  0.0181
#>   std. dev.      0.0113  0.0117
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0174  0.0121
#>   std. dev.      0.0096   0.009
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0151  0.0099
#>   std. dev.      0.0097  0.0066
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0091
#>   std. dev.       0.007  0.0057
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0094
#>   std. dev.      0.0083  0.0054
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0095  0.0087
#>   std. dev.      0.0072  0.0053
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V56
#>   mean           0.0094  0.0073
#>   std. dev.      0.0062  0.0045
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0076  0.0075
#>   std. dev.      0.0052   0.005
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0062
#>   std. dev.      0.0071  0.0047
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0067
#>   std. dev.      0.0069  0.0045
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1093  0.0902
#>   std. dev.      0.0517   0.057
#>   weight sum         69      70
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0073   0.006
#>   std. dev.      0.0067  0.0039
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1253  0.1115
#>   std. dev.      0.0564  0.0596
#>   weight sum         69      70
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1531   0.112
#>   std. dev.      0.0958  0.0707
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2177  0.1281
#>   std. dev.      0.1388  0.0921
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
