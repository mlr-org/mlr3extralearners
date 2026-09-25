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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0349   0.022
#>   std. dev.      0.0268  0.0151
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2494   0.163
#>   std. dev.      0.1338  0.1139
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean            0.289  0.1756
#>   std. dev.      0.1167  0.1172
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.3026  0.1938
#>   std. dev.      0.1247  0.1383
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3182  0.2206
#>   std. dev.       0.132  0.1395
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3297   0.273
#>   std. dev.      0.1643   0.164
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3354  0.3198
#>   std. dev.      0.2015  0.2286
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3825  0.4006
#>   std. dev.       0.221  0.2616
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4086  0.4406
#>   std. dev.      0.2417  0.3007
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4471  0.4638
#>   std. dev.      0.2594  0.2803
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5294  0.4829
#>   std. dev.      0.2607  0.2707
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0464  0.0272
#>   std. dev.      0.0386  0.0182
#>   weight sum         78      61
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6089  0.5181
#>   std. dev.      0.2669  0.2638
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6507  0.5616
#>   std. dev.      0.2634  0.2477
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6456  0.5927
#>   std. dev.      0.2552  0.2469
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6506   0.635
#>   std. dev.      0.2656  0.2316
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6671  0.6582
#>   std. dev.      0.2461  0.2245
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6594  0.6739
#>   std. dev.      0.2355  0.2322
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.6786  0.7041
#>   std. dev.      0.2397  0.2269
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.6912  0.7025
#>   std. dev.      0.2792  0.2011
#>   weight sum         78      61
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6941  0.6718
#>   std. dev.      0.2705  0.2088
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean            0.629  0.6208
#>   std. dev.      0.2467  0.2295
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0503  0.0348
#>   std. dev.      0.0436  0.0281
#>   weight sum         78      61
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.568  0.5755
#>   std. dev.      0.2097  0.2268
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4819  0.5248
#>   std. dev.      0.2233  0.1988
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4479  0.4274
#>   std. dev.       0.216  0.2106
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4197  0.4147
#>   std. dev.      0.2096  0.2049
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3899  0.4305
#>   std. dev.       0.217  0.2309
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3573   0.448
#>   std. dev.      0.2553  0.2508
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3411  0.4439
#>   std. dev.      0.2555  0.2557
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3341  0.4066
#>   std. dev.       0.235   0.228
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3398  0.3437
#>   std. dev.      0.2065  0.2062
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V39
#>   mean           0.3422  0.3111
#>   std. dev.      0.1846  0.2062
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0638  0.0408
#>   std. dev.      0.0554  0.0255
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3172  0.3132
#>   std. dev.      0.1621  0.1872
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3108  0.2739
#>   std. dev.      0.1763  0.1671
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3133   0.236
#>   std. dev.      0.1776  0.1572
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2874  0.2022
#>   std. dev.      0.1447   0.137
#>   weight sum         78      61
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2584  0.1695
#>   std. dev.      0.1543  0.1192
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2619  0.1447
#>   std. dev.      0.1826  0.1035
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2197  0.1194
#>   std. dev.      0.1571  0.0928
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1605  0.0943
#>   std. dev.      0.1016  0.0644
#>   weight sum         78      61
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1174   0.066
#>   std. dev.      0.0713  0.0449
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0668  0.0351
#>   std. dev.      0.0389  0.0272
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0856   0.057
#>   std. dev.      0.0596  0.0398
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0244  0.0176
#>   std. dev.      0.0158   0.012
#>   weight sum         78      61
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0205  0.0127
#>   std. dev.      0.0151  0.0087
#>   weight sum         78      61
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0168    0.01
#>   std. dev.      0.0117  0.0073
#>   weight sum         78      61
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0117  0.0093
#>   std. dev.      0.0081  0.0057
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0128  0.0094
#>   std. dev.      0.0085  0.0056
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0112  0.0082
#>   std. dev.      0.0093  0.0048
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0095  0.0074
#>   std. dev.      0.0071   0.005
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0084  0.0082
#>   std. dev.      0.0064   0.006
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean             0.01  0.0063
#>   std. dev.      0.0082  0.0051
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0094  0.0068
#>   std. dev.      0.0074  0.0051
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1107  0.0906
#>   std. dev.       0.053  0.0558
#>   weight sum         78      61
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0072  0.0061
#>   std. dev.      0.0063  0.0036
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean             0.13  0.1112
#>   std. dev.      0.0611  0.0546
#>   weight sum         78      61
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1476  0.1189
#>   std. dev.      0.0924  0.0738
#>   weight sum         78      61
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2154  0.1388
#>   std. dev.      0.1243  0.0966
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
