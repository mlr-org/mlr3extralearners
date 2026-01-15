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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0343  0.0211
#>   std. dev.      0.0271  0.0135
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.233  0.1704
#>   std. dev.      0.1116  0.1145
#>   weight sum         78      61
#>   precision      0.0042  0.0042
#> 
#> V11
#>   mean           0.2751  0.1778
#>   std. dev.      0.1003   0.113
#>   weight sum         78      61
#>   precision      0.0041  0.0041
#> 
#> V12
#>   mean            0.295  0.1799
#>   std. dev.      0.1154    0.13
#>   weight sum         78      61
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3164  0.2282
#>   std. dev.      0.1269  0.1473
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.316  0.2793
#>   std. dev.      0.1545  0.1812
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3269  0.3173
#>   std. dev.      0.1879  0.2254
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3765  0.3799
#>   std. dev.      0.2048  0.2622
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4212  0.4229
#>   std. dev.      0.2332  0.2972
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4578  0.4431
#>   std. dev.      0.2553    0.27
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5353  0.4432
#>   std. dev.      0.2599  0.2629
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0432  0.0311
#>   std. dev.      0.0377   0.026
#>   weight sum         78      61
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean            0.607  0.4764
#>   std. dev.      0.2586  0.2715
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6541  0.5223
#>   std. dev.      0.2522  0.2567
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6734  0.5586
#>   std. dev.      0.2416   0.252
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6921  0.5974
#>   std. dev.      0.2299  0.2457
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7001  0.6341
#>   std. dev.      0.2244  0.2314
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6895   0.645
#>   std. dev.      0.2403  0.2536
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7109  0.6906
#>   std. dev.      0.2439  0.2333
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V27
#>   mean           0.7239  0.6953
#>   std. dev.      0.2591  0.2094
#>   weight sum         78      61
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7199   0.663
#>   std. dev.      0.2527  0.2149
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6525  0.6079
#>   std. dev.      0.2456  0.2439
#>   weight sum         78      61
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0503  0.0378
#>   std. dev.      0.0461  0.0316
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5904  0.5493
#>   std. dev.      0.2032  0.2393
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4976  0.4955
#>   std. dev.      0.2303  0.2063
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4492  0.4106
#>   std. dev.      0.2134  0.2192
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4018  0.4123
#>   std. dev.      0.1983  0.2227
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3537  0.4172
#>   std. dev.      0.2125  0.2418
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3237  0.4234
#>   std. dev.      0.2398  0.2468
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2963  0.4363
#>   std. dev.      0.2445  0.2479
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean            0.295  0.4019
#>   std. dev.      0.2179  0.2413
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3144  0.3544
#>   std. dev.      0.1897  0.2209
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3138  0.3192
#>   std. dev.      0.1686   0.213
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0658  0.0428
#>   std. dev.      0.0588   0.034
#>   weight sum         78      61
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2948  0.3101
#>   std. dev.      0.1598  0.1856
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2938  0.2682
#>   std. dev.      0.1781  0.1705
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3005  0.2353
#>   std. dev.        0.17  0.1541
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2661  0.2014
#>   std. dev.      0.1349  0.1032
#>   weight sum         78      61
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2366  0.1634
#>   std. dev.      0.1376   0.075
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2378  0.1373
#>   std. dev.      0.1716  0.0822
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1979  0.1117
#>   std. dev.       0.152   0.093
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1442  0.0884
#>   std. dev.      0.0929  0.0707
#>   weight sum         78      61
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1045  0.0686
#>   std. dev.      0.0646  0.0498
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0608  0.0384
#>   std. dev.      0.0336  0.0318
#>   weight sum         78      61
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0883   0.064
#>   std. dev.      0.0647  0.0502
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0176
#>   std. dev.      0.0136   0.013
#>   weight sum         78      61
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0185  0.0125
#>   std. dev.      0.0132  0.0096
#>   weight sum         78      61
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0112
#>   std. dev.      0.0107  0.0076
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0111  0.0089
#>   std. dev.      0.0074  0.0061
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0121  0.0095
#>   std. dev.      0.0086  0.0055
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0089
#>   std. dev.      0.0089  0.0053
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0086  0.0069
#>   std. dev.      0.0067  0.0043
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0072
#>   std. dev.      0.0061  0.0045
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092   0.006
#>   std. dev.      0.0077   0.004
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0068
#>   std. dev.      0.0072  0.0037
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1133  0.0983
#>   std. dev.      0.0496  0.0701
#>   weight sum         78      61
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean           0.0072  0.0061
#>   std. dev.      0.0063  0.0032
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1254  0.1139
#>   std. dev.      0.0536  0.0713
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1429  0.1203
#>   std. dev.      0.0819   0.082
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean              0.2  0.1407
#>   std. dev.      0.1044  0.1014
#>   weight sum         78      61
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
