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
#>   mean           0.0363   0.024
#>   std. dev.      0.0275  0.0161
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2441  0.1742
#>   std. dev.      0.1447   0.124
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2892  0.1919
#>   std. dev.      0.1254  0.1243
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3006  0.2127
#>   std. dev.      0.1268  0.1453
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3134  0.2562
#>   std. dev.      0.1369  0.1434
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3248  0.2967
#>   std. dev.      0.1597  0.1727
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean            0.344  0.3366
#>   std. dev.      0.1862  0.2201
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3966  0.4133
#>   std. dev.      0.2034  0.2563
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean            0.425  0.4649
#>   std. dev.      0.2471  0.2941
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.462  0.4928
#>   std. dev.      0.2654  0.2726
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5356  0.5025
#>   std. dev.      0.2534  0.2589
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0463  0.0321
#>   std. dev.       0.035   0.024
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6254  0.5217
#>   std. dev.      0.2446  0.2603
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6825   0.557
#>   std. dev.       0.234  0.2465
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6774   0.572
#>   std. dev.       0.227  0.2653
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6728  0.6068
#>   std. dev.      0.2577  0.2321
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6822   0.651
#>   std. dev.      0.2577  0.2301
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6664  0.6662
#>   std. dev.      0.2604  0.2451
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6908   0.681
#>   std. dev.      0.2454  0.2418
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6939  0.6781
#>   std. dev.      0.2758  0.2324
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7007  0.6684
#>   std. dev.      0.2725  0.2147
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6371  0.6375
#>   std. dev.      0.2578  0.2231
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0485  0.0371
#>   std. dev.      0.0355  0.0293
#>   weight sum         72      67
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean           0.5745   0.592
#>   std. dev.      0.2038  0.2264
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V31
#>   mean           0.4748  0.5387
#>   std. dev.      0.1997  0.2049
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4235  0.4408
#>   std. dev.      0.1936  0.2153
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4025  0.4205
#>   std. dev.      0.1747  0.2192
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V34
#>   mean           0.3812  0.4175
#>   std. dev.      0.1966  0.2446
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3532  0.4341
#>   std. dev.      0.2515  0.2534
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3249   0.442
#>   std. dev.      0.2587  0.2575
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3187  0.3985
#>   std. dev.      0.2348  0.2409
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.335  0.3361
#>   std. dev.      0.2156  0.2176
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3244   0.304
#>   std. dev.      0.1863   0.208
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0607  0.0427
#>   std. dev.      0.0407  0.0315
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.2867  0.3088
#>   std. dev.      0.1552  0.1934
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2808  0.2787
#>   std. dev.      0.1639  0.1814
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2973  0.2433
#>   std. dev.      0.1761  0.1706
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2757  0.2046
#>   std. dev.      0.1435  0.1401
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2418  0.1717
#>   std. dev.        0.14  0.1114
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2327  0.1451
#>   std. dev.      0.1736  0.0966
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1848  0.1218
#>   std. dev.      0.1525   0.099
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1354  0.0982
#>   std. dev.      0.0889  0.0727
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1034  0.0702
#>   std. dev.      0.0625  0.0512
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0604  0.0394
#>   std. dev.      0.0321  0.0322
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0779   0.065
#>   std. dev.      0.0426  0.0485
#>   weight sum         72      67
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0209  0.0182
#>   std. dev.      0.0123  0.0132
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0119
#>   std. dev.      0.0135  0.0082
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0103
#>   std. dev.      0.0113  0.0064
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0118  0.0094
#>   std. dev.      0.0078  0.0057
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0095
#>   std. dev.       0.008   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0103  0.0087
#>   std. dev.      0.0078  0.0048
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0077
#>   std. dev.      0.0059  0.0048
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0079  0.0083
#>   std. dev.      0.0058   0.006
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0067
#>   std. dev.      0.0071  0.0049
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0075
#>   std. dev.      0.0065  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1042  0.1007
#>   std. dev.      0.0483  0.0713
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0063
#>   std. dev.      0.0065  0.0039
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1237  0.1242
#>   std. dev.       0.058  0.0717
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1478  0.1267
#>   std. dev.      0.0897  0.0897
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2065  0.1499
#>   std. dev.      0.1275  0.1086
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
