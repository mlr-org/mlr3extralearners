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
#>   mean           0.0374  0.0237
#>   std. dev.      0.0284  0.0145
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2623  0.1702
#>   std. dev.      0.1547  0.1236
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3047   0.184
#>   std. dev.      0.1322  0.1218
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean            0.309  0.2133
#>   std. dev.      0.1253  0.1386
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3211  0.2463
#>   std. dev.      0.1387  0.1443
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3363  0.2774
#>   std. dev.      0.1693  0.1671
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3492  0.3208
#>   std. dev.      0.2021  0.2181
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3933  0.3851
#>   std. dev.      0.2245  0.2502
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4179  0.4239
#>   std. dev.      0.2536  0.2781
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4564  0.4462
#>   std. dev.      0.2624  0.2715
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5419  0.4596
#>   std. dev.      0.2539  0.2675
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0492  0.0334
#>   std. dev.      0.0352  0.0215
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6347  0.5112
#>   std. dev.      0.2448  0.2598
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6793  0.5484
#>   std. dev.      0.2341  0.2461
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6605  0.5538
#>   std. dev.      0.2226  0.2531
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6547  0.5977
#>   std. dev.      0.2622  0.2501
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.661  0.6397
#>   std. dev.      0.2601  0.2273
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6495  0.6694
#>   std. dev.      0.2501  0.2364
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6878  0.6958
#>   std. dev.       0.241   0.246
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6979  0.6838
#>   std. dev.      0.2744  0.2255
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7057  0.6832
#>   std. dev.      0.2587  0.1915
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6447  0.6351
#>   std. dev.      0.2399  0.2485
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0537  0.0365
#>   std. dev.      0.0362  0.0266
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5762  0.5742
#>   std. dev.      0.2039  0.2386
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4661  0.5366
#>   std. dev.       0.219  0.1999
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4211  0.4857
#>   std. dev.      0.2096   0.203
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4014   0.464
#>   std. dev.       0.194  0.2092
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3862  0.4758
#>   std. dev.      0.2074   0.239
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3632  0.4742
#>   std. dev.      0.2528  0.2672
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3303  0.4712
#>   std. dev.      0.2618  0.2692
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3227  0.4282
#>   std. dev.      0.2438   0.252
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3453  0.3682
#>   std. dev.      0.2191  0.2343
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3423  0.3428
#>   std. dev.      0.1912  0.2036
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0664  0.0434
#>   std. dev.      0.0404  0.0329
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3037  0.3231
#>   std. dev.      0.1587  0.1873
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2983  0.2811
#>   std. dev.      0.1722  0.1698
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3101  0.2473
#>   std. dev.      0.1772  0.1604
#>   weight sum         78      61
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2822  0.2087
#>   std. dev.      0.1438  0.1254
#>   weight sum         78      61
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2494  0.1711
#>   std. dev.      0.1438  0.0952
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2532  0.1318
#>   std. dev.      0.1799  0.0801
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2069  0.1114
#>   std. dev.      0.1616  0.0869
#>   weight sum         78      61
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1477  0.0874
#>   std. dev.      0.0982  0.0657
#>   weight sum         78      61
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1115  0.0638
#>   std. dev.      0.0695  0.0457
#>   weight sum         78      61
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0645   0.035
#>   std. dev.      0.0367  0.0279
#>   weight sum         78      61
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0859  0.0666
#>   std. dev.      0.0511  0.0532
#>   weight sum         78      61
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0237  0.0178
#>   std. dev.      0.0143  0.0135
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0197  0.0123
#>   std. dev.      0.0138  0.0088
#>   weight sum         78      61
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0167  0.0102
#>   std. dev.      0.0115  0.0075
#>   weight sum         78      61
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0125  0.0093
#>   std. dev.       0.008  0.0059
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0089
#>   std. dev.      0.0087  0.0054
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0109  0.0088
#>   std. dev.      0.0093  0.0053
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0097   0.008
#>   std. dev.      0.0069  0.0049
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079   0.008
#>   std. dev.      0.0062  0.0057
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0071
#>   std. dev.      0.0078  0.0049
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0091   0.007
#>   std. dev.      0.0073  0.0043
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1105  0.1071
#>   std. dev.      0.0548  0.0691
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0059
#>   std. dev.      0.0062  0.0031
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean             0.13  0.1179
#>   std. dev.      0.0637  0.0675
#>   weight sum         78      61
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1547  0.1202
#>   std. dev.      0.0985  0.0811
#>   weight sum         78      61
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2238  0.1495
#>   std. dev.      0.1378  0.1088
#>   weight sum         78      61
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
