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
#>   mean           0.0338  0.0233
#>   std. dev.       0.027  0.0155
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2362  0.1573
#>   std. dev.      0.1265  0.1121
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2828  0.1704
#>   std. dev.      0.1278  0.1088
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2968  0.1854
#>   std. dev.      0.1198  0.1356
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3092  0.2193
#>   std. dev.      0.1274  0.1423
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3135  0.2621
#>   std. dev.      0.1724  0.1686
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3196  0.2948
#>   std. dev.      0.2054  0.2232
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3678  0.3617
#>   std. dev.      0.2209   0.254
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4099  0.3989
#>   std. dev.        0.24  0.2762
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4564   0.438
#>   std. dev.      0.2546  0.2543
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V19
#>   mean           0.5354  0.4628
#>   std. dev.       0.255  0.2455
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.043   0.031
#>   std. dev.      0.0381  0.0261
#>   weight sum         69      70
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean            0.587  0.4927
#>   std. dev.      0.2569  0.2561
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6325  0.5361
#>   std. dev.      0.2512  0.2432
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.666  0.5585
#>   std. dev.      0.2462  0.2491
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6926  0.5946
#>   std. dev.      0.2334  0.2439
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6988  0.6393
#>   std. dev.      0.2271  0.2334
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6926  0.6564
#>   std. dev.      0.2275  0.2564
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7208  0.6824
#>   std. dev.      0.2312  0.2496
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean            0.737  0.6855
#>   std. dev.      0.2492  0.2229
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7357  0.6724
#>   std. dev.      0.2569  0.2092
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6669  0.6281
#>   std. dev.      0.2375  0.2326
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0477  0.0369
#>   std. dev.      0.0435  0.0317
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5832  0.5791
#>   std. dev.      0.1962  0.2383
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4858  0.5442
#>   std. dev.       0.216  0.2088
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4124  0.4654
#>   std. dev.      0.2056  0.2277
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3733  0.4292
#>   std. dev.      0.1823  0.2243
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3371  0.4245
#>   std. dev.      0.1804  0.2539
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3085  0.4564
#>   std. dev.      0.2277  0.2598
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean             0.29  0.4751
#>   std. dev.      0.2445  0.2561
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.2953  0.4282
#>   std. dev.      0.2219  0.2381
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.2998  0.3589
#>   std. dev.      0.1839  0.2239
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3137   0.331
#>   std. dev.      0.1627  0.2182
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0602  0.0409
#>   std. dev.      0.0563  0.0304
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2943   0.323
#>   std. dev.      0.1516  0.1934
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2754  0.2828
#>   std. dev.      0.1632  0.1541
#>   weight sum         69      70
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2791  0.2371
#>   std. dev.      0.1679   0.142
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2731   0.207
#>   std. dev.       0.134  0.1188
#>   weight sum         69      70
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2387   0.178
#>   std. dev.      0.1304  0.1121
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2209  0.1425
#>   std. dev.      0.1667   0.096
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1879  0.1112
#>   std. dev.      0.1529  0.0806
#>   weight sum         69      70
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1454  0.0887
#>   std. dev.      0.0939  0.0551
#>   weight sum         69      70
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1063  0.0653
#>   std. dev.      0.0632   0.043
#>   weight sum         69      70
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0606  0.0368
#>   std. dev.      0.0328  0.0275
#>   weight sum         69      70
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0839  0.0567
#>   std. dev.        0.06  0.0411
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0214  0.0176
#>   std. dev.      0.0132   0.011
#>   weight sum         69      70
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0187  0.0111
#>   std. dev.       0.013  0.0069
#>   weight sum         69      70
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0158  0.0102
#>   std. dev.      0.0108  0.0057
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0116    0.01
#>   std. dev.      0.0076  0.0066
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0112  0.0099
#>   std. dev.      0.0078  0.0057
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean             0.01  0.0085
#>   std. dev.      0.0092  0.0051
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.008  0.0074
#>   std. dev.      0.0062  0.0048
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0076
#>   std. dev.      0.0064  0.0061
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0069
#>   std. dev.      0.0084  0.0052
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0071
#>   std. dev.      0.0061  0.0055
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1066   0.091
#>   std. dev.      0.0508  0.0686
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0059
#>   std. dev.      0.0062  0.0038
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1227  0.1111
#>   std. dev.      0.0585  0.0648
#>   weight sum         69      70
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1374  0.1125
#>   std. dev.      0.0799  0.0784
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean            0.193  0.1326
#>   std. dev.      0.0948  0.0994
#>   weight sum         69      70
#>   precision       0.004   0.004
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
