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
#>   mean           0.0361  0.0249
#>   std. dev.       0.028  0.0165
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2709  0.1645
#>   std. dev.      0.1387  0.1167
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.3091  0.1779
#>   std. dev.      0.1341  0.1155
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3168  0.1913
#>   std. dev.       0.128  0.1443
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3272  0.2272
#>   std. dev.      0.1349  0.1455
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3217  0.2725
#>   std. dev.      0.1494   0.177
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3297   0.309
#>   std. dev.      0.1899  0.2238
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3786   0.361
#>   std. dev.      0.2137   0.256
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4047   0.384
#>   std. dev.      0.2459  0.2943
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4367  0.4244
#>   std. dev.      0.2562  0.2656
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5301  0.4405
#>   std. dev.       0.249   0.246
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0473  0.0341
#>   std. dev.       0.041  0.0262
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6103  0.4724
#>   std. dev.      0.2493  0.2535
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6573  0.5198
#>   std. dev.       0.249  0.2433
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6582  0.5447
#>   std. dev.      0.2434  0.2613
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6541   0.598
#>   std. dev.      0.2501  0.2543
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6648  0.6474
#>   std. dev.      0.2521  0.2429
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6661  0.6614
#>   std. dev.      0.2417  0.2521
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7005  0.6776
#>   std. dev.      0.2343  0.2415
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7273  0.6644
#>   std. dev.      0.2505  0.2226
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7387  0.6542
#>   std. dev.      0.2378  0.2038
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6575  0.6108
#>   std. dev.      0.2404  0.2135
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0538  0.0408
#>   std. dev.      0.0469  0.0305
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5875  0.5611
#>   std. dev.      0.2101  0.2156
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4887   0.529
#>   std. dev.      0.2296  0.1917
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4358  0.4498
#>   std. dev.      0.2215  0.2102
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3969  0.4413
#>   std. dev.      0.1941  0.2265
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3641  0.4507
#>   std. dev.      0.2072  0.2582
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3388  0.4656
#>   std. dev.       0.242  0.2649
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3049  0.4682
#>   std. dev.      0.2443  0.2682
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3075  0.4169
#>   std. dev.       0.227  0.2483
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3345   0.363
#>   std. dev.      0.2054  0.2411
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3328  0.3386
#>   std. dev.      0.1864   0.235
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0706  0.0405
#>   std. dev.      0.0606  0.0287
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2943  0.3415
#>   std. dev.      0.1638  0.2031
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2966  0.3073
#>   std. dev.       0.177  0.1842
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3066  0.2768
#>   std. dev.      0.1793  0.1673
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2815  0.2357
#>   std. dev.      0.1464  0.1418
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2596  0.1875
#>   std. dev.       0.146  0.1173
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2623  0.1464
#>   std. dev.      0.1816  0.1045
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2153  0.1209
#>   std. dev.      0.1687  0.0985
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1559  0.0991
#>   std. dev.       0.104  0.0727
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1169  0.0734
#>   std. dev.      0.0678  0.0531
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0662  0.0391
#>   std. dev.      0.0366  0.0326
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0902  0.0607
#>   std. dev.      0.0669  0.0444
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.024  0.0179
#>   std. dev.      0.0149  0.0131
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0209  0.0127
#>   std. dev.      0.0147  0.0087
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0176  0.0109
#>   std. dev.      0.0116  0.0069
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0122  0.0107
#>   std. dev.      0.0081  0.0062
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0096
#>   std. dev.      0.0086  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0084
#>   std. dev.      0.0084  0.0049
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0094  0.0084
#>   std. dev.       0.007  0.0052
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077   0.008
#>   std. dev.      0.0062   0.006
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0073
#>   std. dev.      0.0077   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0091  0.0073
#>   std. dev.      0.0073  0.0054
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1109  0.1002
#>   std. dev.      0.0535  0.0679
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0075  0.0066
#>   std. dev.      0.0066  0.0038
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1271  0.1185
#>   std. dev.      0.0591  0.0669
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1489  0.1264
#>   std. dev.      0.0876  0.0816
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2249  0.1397
#>   std. dev.       0.123  0.1076
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
