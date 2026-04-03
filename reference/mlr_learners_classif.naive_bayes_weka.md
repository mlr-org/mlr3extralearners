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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0343  0.0197
#>   std. dev.       0.026  0.0104
#>   weight sum         80      59
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.259  0.1463
#>   std. dev.      0.1366  0.1185
#>   weight sum         80      59
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2966  0.1601
#>   std. dev.      0.1259  0.1178
#>   weight sum         80      59
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3011  0.1808
#>   std. dev.      0.1274   0.129
#>   weight sum         80      59
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.319  0.2239
#>   std. dev.      0.1347  0.1235
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3263  0.2606
#>   std. dev.      0.1655  0.1573
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3344  0.2976
#>   std. dev.      0.1952  0.2086
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3833    0.37
#>   std. dev.      0.2108  0.2394
#>   weight sum         80      59
#>   precision      0.0065  0.0065
#> 
#> V17
#>   mean           0.4213  0.4169
#>   std. dev.      0.2406  0.2773
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4614  0.4517
#>   std. dev.      0.2555  0.2627
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5504    0.48
#>   std. dev.      0.2504  0.2668
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0427  0.0276
#>   std. dev.      0.0333   0.025
#>   weight sum         80      59
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6336  0.5092
#>   std. dev.      0.2478  0.2699
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6784  0.5671
#>   std. dev.      0.2456  0.2549
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6808  0.5935
#>   std. dev.      0.2401  0.2553
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V23
#>   mean           0.6727  0.6135
#>   std. dev.      0.2562  0.2434
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6701  0.6665
#>   std. dev.      0.2514  0.2214
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6737   0.696
#>   std. dev.       0.243   0.226
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7126   0.719
#>   std. dev.      0.2301  0.2198
#>   weight sum         80      59
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7229  0.6951
#>   std. dev.      0.2643  0.2022
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V28
#>   mean           0.7265  0.6642
#>   std. dev.      0.2516  0.2076
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6564  0.6254
#>   std. dev.      0.2351    0.23
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0451   0.034
#>   std. dev.      0.0349  0.0291
#>   weight sum         80      59
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5806  0.5948
#>   std. dev.      0.2106  0.2287
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4734  0.5354
#>   std. dev.       0.227  0.2199
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4224  0.4417
#>   std. dev.       0.213  0.2205
#>   weight sum         80      59
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3961  0.4274
#>   std. dev.      0.1953  0.2233
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3571  0.4202
#>   std. dev.      0.2102  0.2484
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3293  0.4258
#>   std. dev.      0.2495  0.2544
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean             0.31  0.4274
#>   std. dev.      0.2531  0.2622
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3116  0.3901
#>   std. dev.      0.2331   0.245
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3364  0.3386
#>   std. dev.      0.2111  0.2221
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3449  0.2934
#>   std. dev.      0.1918  0.2194
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0624  0.0414
#>   std. dev.      0.0417  0.0332
#>   weight sum         80      59
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3024  0.2954
#>   std. dev.      0.1694  0.1972
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2821  0.2721
#>   std. dev.      0.1666  0.1669
#>   weight sum         80      59
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean            0.294  0.2369
#>   std. dev.      0.1743  0.1563
#>   weight sum         80      59
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2806  0.2052
#>   std. dev.      0.1482  0.1188
#>   weight sum         80      59
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2545  0.1761
#>   std. dev.      0.1478  0.1115
#>   weight sum         80      59
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2525  0.1468
#>   std. dev.      0.1766  0.1011
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2015  0.1177
#>   std. dev.      0.1576   0.089
#>   weight sum         80      59
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1465  0.0909
#>   std. dev.      0.0971  0.0611
#>   weight sum         80      59
#>   precision       0.004   0.004
#> 
#> V48
#>   mean             0.11  0.0656
#>   std. dev.      0.0666  0.0421
#>   weight sum         80      59
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0636   0.036
#>   std. dev.      0.0375  0.0251
#>   weight sum         80      59
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0877  0.0563
#>   std. dev.      0.0549  0.0479
#>   weight sum         80      59
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0238   0.018
#>   std. dev.      0.0153  0.0116
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0199  0.0123
#>   std. dev.      0.0148  0.0082
#>   weight sum         80      59
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0106
#>   std. dev.       0.011  0.0068
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0095
#>   std. dev.       0.008   0.006
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0101
#>   std. dev.      0.0082  0.0053
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0092  0.0089
#>   std. dev.       0.008   0.005
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0076
#>   std. dev.      0.0067  0.0049
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0074
#>   std. dev.      0.0059  0.0057
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0061
#>   std. dev.       0.008  0.0047
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0084  0.0068
#>   std. dev.       0.006  0.0051
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1148  0.0857
#>   std. dev.      0.0522   0.067
#>   weight sum         80      59
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0065  0.0055
#>   std. dev.      0.0044  0.0032
#>   weight sum         80      59
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean            0.132  0.1118
#>   std. dev.      0.0609  0.0692
#>   weight sum         80      59
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.156  0.1134
#>   std. dev.      0.0877  0.0806
#>   weight sum         80      59
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2207  0.1322
#>   std. dev.      0.1264  0.1075
#>   weight sum         80      59
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
