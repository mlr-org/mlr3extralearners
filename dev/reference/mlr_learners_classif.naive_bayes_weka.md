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
#>   mean           0.0354  0.0223
#>   std. dev.      0.0239   0.015
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2615  0.1625
#>   std. dev.      0.1434  0.1082
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2963  0.1814
#>   std. dev.      0.1313   0.111
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3048  0.1961
#>   std. dev.      0.1253  0.1353
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3302  0.2313
#>   std. dev.      0.1301  0.1363
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3453  0.2801
#>   std. dev.      0.1667  0.1623
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3529  0.3133
#>   std. dev.      0.2013  0.2098
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3889   0.373
#>   std. dev.      0.2171  0.2351
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V17
#>   mean           0.4175  0.4121
#>   std. dev.        0.24  0.2797
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.452  0.4477
#>   std. dev.      0.2575  0.2549
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5342  0.4633
#>   std. dev.      0.2529  0.2514
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0446  0.0329
#>   std. dev.      0.0297  0.0251
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.628  0.5045
#>   std. dev.      0.2503  0.2541
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6806  0.5507
#>   std. dev.      0.2533  0.2366
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6733  0.5831
#>   std. dev.       0.238  0.2531
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6595   0.626
#>   std. dev.       0.257  0.2418
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6767  0.6745
#>   std. dev.      0.2572  0.2174
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6729  0.6946
#>   std. dev.      0.2469  0.2217
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7009  0.6935
#>   std. dev.      0.2424   0.224
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7025  0.6737
#>   std. dev.      0.2806  0.2099
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7035  0.6706
#>   std. dev.      0.2691  0.2091
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6571  0.6462
#>   std. dev.      0.2442  0.2289
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0504  0.0367
#>   std. dev.      0.0373  0.0314
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean            0.594  0.5791
#>   std. dev.      0.2137  0.2252
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4938  0.5092
#>   std. dev.      0.2272  0.1962
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4358  0.4247
#>   std. dev.      0.2275  0.2069
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4068  0.4159
#>   std. dev.      0.1995  0.2103
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3794  0.4145
#>   std. dev.      0.2137  0.2365
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3558  0.4144
#>   std. dev.      0.2585  0.2388
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3368  0.4338
#>   std. dev.      0.2607  0.2474
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3286  0.4068
#>   std. dev.      0.2364  0.2518
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3496  0.3416
#>   std. dev.      0.2121  0.2229
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3571  0.3112
#>   std. dev.      0.1884  0.2134
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0645  0.0435
#>   std. dev.      0.0445  0.0312
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3152  0.3085
#>   std. dev.      0.1679   0.188
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2936  0.2768
#>   std. dev.      0.1715  0.1624
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3097   0.244
#>   std. dev.      0.1791  0.1525
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2832  0.2055
#>   std. dev.      0.1396  0.1168
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2634  0.1646
#>   std. dev.      0.1499  0.0872
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2644  0.1381
#>   std. dev.      0.1789  0.0924
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean            0.204  0.1189
#>   std. dev.      0.1566  0.0934
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1468  0.0985
#>   std. dev.      0.0952  0.0677
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1145  0.0707
#>   std. dev.      0.0683  0.0521
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0649  0.0391
#>   std. dev.      0.0351  0.0339
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0872  0.0606
#>   std. dev.       0.054  0.0439
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0228  0.0193
#>   std. dev.       0.014  0.0135
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0215  0.0127
#>   std. dev.      0.0134  0.0085
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164   0.011
#>   std. dev.      0.0106  0.0075
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0124  0.0101
#>   std. dev.      0.0082  0.0065
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127    0.01
#>   std. dev.      0.0085  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0091
#>   std. dev.      0.0085  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0077
#>   std. dev.      0.0069  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0078
#>   std. dev.      0.0063  0.0057
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0064
#>   std. dev.      0.0083  0.0044
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean            0.009  0.0064
#>   std. dev.      0.0072   0.004
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1152  0.0946
#>   std. dev.      0.0522  0.0677
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072   0.006
#>   std. dev.      0.0064  0.0035
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1303  0.1165
#>   std. dev.      0.0597  0.0677
#>   weight sum         73      66
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1511  0.1227
#>   std. dev.      0.0875  0.0808
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2167  0.1428
#>   std. dev.      0.1218  0.1002
#>   weight sum         73      66
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
