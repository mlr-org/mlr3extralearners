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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0355  0.0221
#>   std. dev.       0.028  0.0133
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.254  0.1571
#>   std. dev.      0.1525  0.1161
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2825  0.1744
#>   std. dev.      0.1341  0.1169
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean           0.2873  0.2025
#>   std. dev.      0.1246  0.1427
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3031  0.2353
#>   std. dev.      0.1278  0.1469
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3006  0.2631
#>   std. dev.      0.1364  0.1819
#>   weight sum         78      61
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3081  0.2906
#>   std. dev.      0.1696  0.2323
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3489  0.3612
#>   std. dev.      0.1861  0.2625
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3761  0.4063
#>   std. dev.      0.2191  0.2929
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4163  0.4444
#>   std. dev.      0.2446   0.277
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5061  0.4561
#>   std. dev.      0.2524  0.2618
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0438  0.0316
#>   std. dev.      0.0323  0.0254
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6029  0.4815
#>   std. dev.      0.2612  0.2484
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6604  0.5167
#>   std. dev.      0.2589  0.2268
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6574  0.5485
#>   std. dev.      0.2409  0.2463
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6554  0.5907
#>   std. dev.      0.2595  0.2336
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6707  0.6316
#>   std. dev.      0.2498  0.2297
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6757  0.6379
#>   std. dev.      0.2361  0.2577
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7082  0.6546
#>   std. dev.      0.2139  0.2473
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V27
#>   mean           0.7099  0.6599
#>   std. dev.      0.2593  0.2132
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7285  0.6661
#>   std. dev.      0.2498  0.2061
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6786  0.6554
#>   std. dev.      0.2288  0.2173
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0484  0.0355
#>   std. dev.      0.0346  0.0291
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.6072  0.6096
#>   std. dev.      0.2098  0.2211
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.5065  0.5556
#>   std. dev.      0.2239  0.1988
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4446  0.4682
#>   std. dev.      0.2134  0.2106
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4254  0.4532
#>   std. dev.      0.1841  0.2194
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.4039   0.475
#>   std. dev.      0.2008  0.2647
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3716  0.5036
#>   std. dev.        0.26   0.269
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3494  0.4992
#>   std. dev.      0.2692  0.2578
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3477  0.4316
#>   std. dev.      0.2469  0.2254
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean             0.35  0.3545
#>   std. dev.      0.2242  0.2141
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3478  0.3259
#>   std. dev.      0.1896   0.218
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0633  0.0393
#>   std. dev.      0.0398  0.0288
#>   weight sum         78      61
#>   precision      0.0012  0.0012
#> 
#> V40
#>   mean           0.3101  0.3409
#>   std. dev.      0.1544  0.1974
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2918  0.3017
#>   std. dev.      0.1564  0.1681
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3028  0.2604
#>   std. dev.      0.1636  0.1565
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2836  0.2188
#>   std. dev.      0.1376  0.1312
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2625  0.1857
#>   std. dev.      0.1476  0.1176
#>   weight sum         78      61
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2598  0.1508
#>   std. dev.      0.1828   0.099
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2108   0.121
#>   std. dev.      0.1576  0.0869
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1512  0.0954
#>   std. dev.      0.0983  0.0595
#>   weight sum         78      61
#>   precision      0.0039  0.0039
#> 
#> V48
#>   mean            0.114  0.0668
#>   std. dev.      0.0705  0.0408
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0643  0.0347
#>   std. dev.      0.0356  0.0223
#>   weight sum         78      61
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0837  0.0594
#>   std. dev.      0.0473  0.0459
#>   weight sum         78      61
#>   precision      0.0018  0.0018
#> 
#> V50
#>   mean            0.022  0.0174
#>   std. dev.      0.0132  0.0112
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0118
#>   std. dev.      0.0135  0.0083
#>   weight sum         78      61
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0094
#>   std. dev.      0.0113  0.0067
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0116  0.0094
#>   std. dev.      0.0081   0.006
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0104
#>   std. dev.       0.009  0.0057
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093  0.0092
#>   std. dev.       0.008  0.0053
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0079
#>   std. dev.      0.0069  0.0051
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0083
#>   std. dev.       0.006   0.006
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0088  0.0067
#>   std. dev.      0.0077  0.0049
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0074
#>   std. dev.      0.0074  0.0057
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1093  0.1005
#>   std. dev.      0.0514   0.074
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0063
#>   std. dev.      0.0063  0.0038
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1264  0.1183
#>   std. dev.      0.0583  0.0687
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1504  0.1201
#>   std. dev.      0.0924  0.0776
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2213  0.1368
#>   std. dev.      0.1377  0.1061
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
