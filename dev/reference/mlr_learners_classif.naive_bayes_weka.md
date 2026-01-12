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
#>   mean           0.0356   0.022
#>   std. dev.      0.0277  0.0126
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2618  0.1672
#>   std. dev.       0.144  0.1163
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.3006  0.1809
#>   std. dev.      0.1271  0.1254
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2998  0.1935
#>   std. dev.      0.1274  0.1467
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3076   0.229
#>   std. dev.      0.1343  0.1503
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3193   0.276
#>   std. dev.      0.1586  0.1785
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3333  0.3179
#>   std. dev.      0.1926  0.2273
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3821  0.3826
#>   std. dev.       0.208  0.2584
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4158  0.4147
#>   std. dev.      0.2327    0.29
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4549   0.442
#>   std. dev.      0.2548   0.264
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5291  0.4662
#>   std. dev.      0.2557  0.2675
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0433  0.0306
#>   std. dev.      0.0335  0.0259
#>   weight sum         77      62
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6162  0.5096
#>   std. dev.       0.256  0.2809
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6708  0.5524
#>   std. dev.      0.2592  0.2697
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6598  0.5714
#>   std. dev.      0.2495   0.273
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6519  0.5954
#>   std. dev.      0.2695  0.2602
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V24
#>   mean            0.669  0.6223
#>   std. dev.      0.2614  0.2519
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6669  0.6469
#>   std. dev.      0.2549  0.2597
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7059  0.7006
#>   std. dev.      0.2304  0.2456
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7119  0.7012
#>   std. dev.      0.2637  0.2246
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7124  0.6668
#>   std. dev.      0.2556  0.2073
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean            0.653    0.61
#>   std. dev.      0.2414  0.2373
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0484  0.0364
#>   std. dev.      0.0379  0.0322
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5926  0.5573
#>   std. dev.      0.2108   0.234
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean            0.491  0.5164
#>   std. dev.       0.233   0.194
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4355  0.4316
#>   std. dev.      0.2273  0.2187
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4058   0.432
#>   std. dev.      0.2009  0.2256
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3763  0.4428
#>   std. dev.      0.2198  0.2519
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3598   0.447
#>   std. dev.      0.2576  0.2534
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.339   0.452
#>   std. dev.      0.2564  0.2576
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3309  0.4143
#>   std. dev.      0.2413  0.2413
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3493  0.3541
#>   std. dev.      0.2219  0.2247
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3586  0.3326
#>   std. dev.       0.189  0.2233
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0635  0.0427
#>   std. dev.      0.0446  0.0323
#>   weight sum         77      62
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3198  0.3387
#>   std. dev.       0.166  0.2014
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2975   0.296
#>   std. dev.      0.1694  0.1825
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3096  0.2507
#>   std. dev.      0.1734  0.1657
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2894  0.2138
#>   std. dev.      0.1405  0.1255
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean            0.266  0.1706
#>   std. dev.      0.1506  0.0849
#>   weight sum         77      62
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean            0.258  0.1373
#>   std. dev.      0.1789  0.0864
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2024  0.1129
#>   std. dev.      0.1533  0.0948
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1496  0.0945
#>   std. dev.      0.0947  0.0695
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1149  0.0706
#>   std. dev.      0.0658  0.0495
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0649  0.0394
#>   std. dev.      0.0361  0.0325
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0825  0.0576
#>   std. dev.      0.0501   0.045
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0229  0.0187
#>   std. dev.      0.0128  0.0139
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0204  0.0121
#>   std. dev.       0.015  0.0089
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0162  0.0114
#>   std. dev.      0.0109  0.0071
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0101
#>   std. dev.      0.0076  0.0067
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0094
#>   std. dev.      0.0087  0.0058
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0088
#>   std. dev.      0.0082  0.0054
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0076
#>   std. dev.      0.0061  0.0049
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0078
#>   std. dev.      0.0052  0.0056
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0088  0.0067
#>   std. dev.      0.0069  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0085  0.0068
#>   std. dev.      0.0068  0.0044
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1096  0.0942
#>   std. dev.      0.0481  0.0639
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0058
#>   std. dev.      0.0049  0.0032
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1269  0.1131
#>   std. dev.      0.0598  0.0681
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1586  0.1213
#>   std. dev.       0.093   0.084
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2253  0.1373
#>   std. dev.      0.1317  0.1017
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
