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
#>   mean           0.0362  0.0231
#>   std. dev.       0.029   0.014
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2574  0.1607
#>   std. dev.      0.1387  0.1236
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2935  0.1825
#>   std. dev.      0.1279  0.1198
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3064  0.2031
#>   std. dev.      0.1233  0.1371
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3169  0.2271
#>   std. dev.      0.1283  0.1399
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3156  0.2789
#>   std. dev.      0.1411  0.1644
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3289  0.3214
#>   std. dev.      0.1763  0.2262
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3686  0.3949
#>   std. dev.      0.2019  0.2614
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4037  0.4434
#>   std. dev.      0.2435  0.2949
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V18
#>   mean            0.451  0.4837
#>   std. dev.      0.2576  0.2831
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5314  0.5088
#>   std. dev.      0.2526  0.2632
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0468  0.0284
#>   std. dev.       0.038   0.019
#>   weight sum         76      63
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6118  0.5371
#>   std. dev.      0.2631   0.257
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6605  0.5622
#>   std. dev.      0.2609  0.2422
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.658  0.5809
#>   std. dev.      0.2385  0.2452
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6585  0.6267
#>   std. dev.      0.2581  0.2352
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6801  0.6761
#>   std. dev.      0.2603  0.2087
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6803  0.6888
#>   std. dev.      0.2478   0.235
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7098  0.7048
#>   std. dev.      0.2425  0.2339
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7186  0.6986
#>   std. dev.      0.2824  0.2049
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7271  0.6858
#>   std. dev.       0.273  0.2027
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6644  0.6516
#>   std. dev.      0.2497  0.2336
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0537  0.0344
#>   std. dev.      0.0482  0.0253
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5816  0.5987
#>   std. dev.      0.2043  0.2287
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4779  0.5386
#>   std. dev.      0.1962  0.2027
#>   weight sum         76      63
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4174  0.4571
#>   std. dev.      0.1981  0.2171
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3988  0.4335
#>   std. dev.      0.1866  0.2065
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3525  0.4472
#>   std. dev.      0.2051  0.2364
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean            0.313  0.4475
#>   std. dev.      0.2462  0.2567
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3066  0.4409
#>   std. dev.      0.2448  0.2589
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3119  0.4013
#>   std. dev.      0.2268   0.237
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3232  0.3579
#>   std. dev.      0.2144  0.2266
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3242  0.3315
#>   std. dev.      0.1904  0.2146
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0681  0.0398
#>   std. dev.      0.0609  0.0312
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean            0.288  0.3103
#>   std. dev.      0.1565  0.1862
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2683  0.2628
#>   std. dev.      0.1568  0.1543
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2891   0.226
#>   std. dev.      0.1554  0.1439
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean            0.262  0.1959
#>   std. dev.      0.1403  0.1274
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2351  0.1691
#>   std. dev.      0.1447  0.1175
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2229  0.1374
#>   std. dev.      0.1599   0.096
#>   weight sum         76      63
#>   precision      0.0044  0.0044
#> 
#> V46
#>   mean           0.1719  0.1122
#>   std. dev.      0.1301  0.0837
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1364  0.0908
#>   std. dev.      0.0863  0.0588
#>   weight sum         76      63
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1099  0.0633
#>   std. dev.      0.0664  0.0404
#>   weight sum         76      63
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0598  0.0346
#>   std. dev.      0.0335   0.021
#>   weight sum         76      63
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0898   0.064
#>   std. dev.      0.0632  0.0497
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0194  0.0168
#>   std. dev.      0.0099  0.0111
#>   weight sum         76      63
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0184   0.011
#>   std. dev.       0.013  0.0078
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0161  0.0104
#>   std. dev.      0.0112  0.0065
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0092
#>   std. dev.      0.0075  0.0061
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0117  0.0089
#>   std. dev.      0.0085  0.0053
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0087  0.0086
#>   std. dev.      0.0066  0.0051
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V56
#>   mean           0.0086  0.0073
#>   std. dev.      0.0059   0.005
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0074  0.0077
#>   std. dev.      0.0052  0.0059
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.008  0.0064
#>   std. dev.      0.0063  0.0048
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0081  0.0066
#>   std. dev.      0.0066  0.0046
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1099  0.1042
#>   std. dev.      0.0529  0.0699
#>   weight sum         76      63
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0068  0.0061
#>   std. dev.      0.0064  0.0037
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1262  0.1213
#>   std. dev.      0.0588  0.0662
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.149   0.123
#>   std. dev.      0.0833  0.0787
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2129  0.1466
#>   std. dev.      0.1258  0.1081
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
