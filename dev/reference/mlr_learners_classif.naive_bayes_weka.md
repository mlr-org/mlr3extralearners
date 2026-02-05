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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0325  0.0231
#>   std. dev.      0.0268  0.0146
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2514  0.1586
#>   std. dev.      0.1407  0.1189
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2881  0.1771
#>   std. dev.       0.125  0.1235
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3009  0.1974
#>   std. dev.      0.1153  0.1469
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3034  0.2309
#>   std. dev.       0.125   0.149
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3026  0.2795
#>   std. dev.      0.1395  0.1771
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3093  0.3128
#>   std. dev.      0.1681  0.2335
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3596  0.3782
#>   std. dev.      0.1897  0.2661
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4029  0.4213
#>   std. dev.      0.2303  0.2977
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4558  0.4608
#>   std. dev.      0.2508  0.2762
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5328  0.4773
#>   std. dev.      0.2543  0.2717
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0435  0.0312
#>   std. dev.      0.0375   0.026
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6129   0.508
#>   std. dev.      0.2594  0.2564
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean            0.677  0.5538
#>   std. dev.      0.2559  0.2475
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6824  0.5881
#>   std. dev.      0.2429  0.2539
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6891  0.6362
#>   std. dev.      0.2481  0.2483
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7098  0.6755
#>   std. dev.      0.2384  0.2302
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6946  0.6863
#>   std. dev.      0.2372   0.246
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7098  0.7033
#>   std. dev.      0.2238  0.2333
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7112  0.6831
#>   std. dev.       0.257  0.2155
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7068   0.663
#>   std. dev.      0.2567  0.2034
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6444  0.6385
#>   std. dev.      0.2438  0.2316
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0511  0.0385
#>   std. dev.      0.0473  0.0303
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5824  0.5993
#>   std. dev.      0.2172  0.2235
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4853  0.5442
#>   std. dev.      0.2284   0.191
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4354  0.4544
#>   std. dev.      0.2154  0.2006
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4072  0.4461
#>   std. dev.      0.1975  0.2091
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3854    0.45
#>   std. dev.      0.2111  0.2403
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3566  0.4442
#>   std. dev.      0.2429  0.2623
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3461  0.4499
#>   std. dev.      0.2474  0.2664
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3421  0.4105
#>   std. dev.      0.2234  0.2534
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3431  0.3464
#>   std. dev.      0.2013  0.2253
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3344  0.3073
#>   std. dev.      0.1743   0.202
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V4
#>   mean           0.0661  0.0439
#>   std. dev.      0.0608  0.0346
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean            0.314  0.3062
#>   std. dev.      0.1578  0.1759
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.3096  0.2795
#>   std. dev.      0.1732  0.1605
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3097  0.2457
#>   std. dev.      0.1632  0.1597
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2818  0.2079
#>   std. dev.      0.1368  0.1358
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.247  0.1699
#>   std. dev.      0.1455  0.1137
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2336  0.1308
#>   std. dev.      0.1689  0.0927
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1894  0.1093
#>   std. dev.      0.1387  0.0818
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1416  0.0916
#>   std. dev.      0.0901   0.059
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1093  0.0693
#>   std. dev.      0.0678  0.0442
#>   weight sum         73      66
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean            0.062  0.0366
#>   std. dev.      0.0365  0.0255
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0863  0.0642
#>   std. dev.      0.0638  0.0513
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.022  0.0158
#>   std. dev.      0.0127  0.0112
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0183  0.0118
#>   std. dev.      0.0121  0.0079
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0156  0.0105
#>   std. dev.      0.0098  0.0072
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114    0.01
#>   std. dev.      0.0074  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0087
#>   std. dev.      0.0088  0.0044
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.009  0.0082
#>   std. dev.      0.0069  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0077
#>   std. dev.      0.0063  0.0048
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0071  0.0076
#>   std. dev.      0.0046  0.0059
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0087  0.0066
#>   std. dev.      0.0063  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0084  0.0069
#>   std. dev.      0.0071  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1112  0.1002
#>   std. dev.      0.0538  0.0676
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0057
#>   std. dev.      0.0064  0.0033
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.125  0.1141
#>   std. dev.      0.0503  0.0676
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V8
#>   mean           0.1465  0.1212
#>   std. dev.      0.0866  0.0868
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2179  0.1473
#>   std. dev.      0.1312  0.1077
#>   weight sum         73      66
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
