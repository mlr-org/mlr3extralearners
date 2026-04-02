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
#>   mean           0.0362  0.0247
#>   std. dev.      0.0287   0.016
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.248  0.1701
#>   std. dev.      0.1314  0.1164
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2883  0.1851
#>   std. dev.        0.12  0.1138
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean           0.3011  0.1905
#>   std. dev.      0.1238  0.1405
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3088  0.2315
#>   std. dev.      0.1336  0.1479
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean            0.316  0.2775
#>   std. dev.      0.1417  0.1824
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3385  0.3248
#>   std. dev.      0.1837  0.2372
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3928  0.3878
#>   std. dev.      0.2046  0.2644
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4282  0.4201
#>   std. dev.      0.2471  0.2946
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4729  0.4337
#>   std. dev.      0.2664  0.2731
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean           0.5459  0.4356
#>   std. dev.      0.2666  0.2472
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0468  0.0312
#>   std. dev.      0.0407  0.0269
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6266  0.4634
#>   std. dev.       0.259  0.2362
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6741  0.5009
#>   std. dev.      0.2589  0.2278
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6653  0.5323
#>   std. dev.      0.2511  0.2456
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6532  0.5862
#>   std. dev.      0.2614  0.2444
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6584  0.6266
#>   std. dev.      0.2522  0.2438
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6532  0.6486
#>   std. dev.      0.2432  0.2499
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6813  0.6789
#>   std. dev.      0.2386  0.2408
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6952  0.6925
#>   std. dev.      0.2744   0.206
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean            0.692  0.6884
#>   std. dev.      0.2747  0.1955
#>   weight sum         76      63
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6276  0.6451
#>   std. dev.      0.2589  0.2262
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0528    0.04
#>   std. dev.      0.0487   0.032
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5665  0.6058
#>   std. dev.      0.2163  0.2063
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4652  0.5426
#>   std. dev.      0.2228  0.1793
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4305  0.4406
#>   std. dev.      0.2083  0.2048
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.4006  0.4328
#>   std. dev.      0.1851   0.216
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean            0.375  0.4291
#>   std. dev.      0.2034  0.2481
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3596  0.4388
#>   std. dev.      0.2508  0.2484
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3426    0.45
#>   std. dev.      0.2592   0.256
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3407    0.41
#>   std. dev.      0.2381  0.2306
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3524  0.3528
#>   std. dev.      0.2139  0.2236
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3513  0.3242
#>   std. dev.      0.1792  0.2231
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0692  0.0389
#>   std. dev.      0.0617    0.03
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3038   0.331
#>   std. dev.       0.158  0.1965
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2933  0.2907
#>   std. dev.      0.1592  0.1823
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3036  0.2619
#>   std. dev.      0.1662   0.162
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2751  0.2155
#>   std. dev.      0.1464  0.1214
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2447  0.1766
#>   std. dev.      0.1521   0.087
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2365  0.1461
#>   std. dev.      0.1755  0.0884
#>   weight sum         76      63
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1913  0.1187
#>   std. dev.      0.1474  0.0979
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1413  0.0978
#>   std. dev.       0.092  0.0721
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1057  0.0741
#>   std. dev.      0.0645  0.0528
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean            0.061  0.0396
#>   std. dev.      0.0359  0.0338
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0887  0.0587
#>   std. dev.      0.0617   0.043
#>   weight sum         76      63
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0221  0.0177
#>   std. dev.      0.0133  0.0125
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0195   0.012
#>   std. dev.       0.015  0.0089
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0157  0.0104
#>   std. dev.      0.0108  0.0074
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0094
#>   std. dev.      0.0074  0.0064
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127  0.0093
#>   std. dev.      0.0087  0.0057
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0092  0.0087
#>   std. dev.      0.0077  0.0055
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0077
#>   std. dev.      0.0062  0.0048
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0075  0.0078
#>   std. dev.      0.0052  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0087  0.0067
#>   std. dev.      0.0068  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0072
#>   std. dev.      0.0074   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1099  0.0968
#>   std. dev.      0.0438  0.0666
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0076  0.0061
#>   std. dev.      0.0066  0.0035
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1259   0.118
#>   std. dev.      0.0552  0.0687
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1469  0.1236
#>   std. dev.      0.0932  0.0823
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2138  0.1482
#>   std. dev.        0.13  0.1046
#>   weight sum         76      63
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
