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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0353  0.0241
#>   std. dev.      0.0274  0.0157
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2544  0.1638
#>   std. dev.      0.1396   0.122
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2969  0.1875
#>   std. dev.      0.1359  0.1226
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean            0.303  0.2105
#>   std. dev.      0.1357  0.1455
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3231  0.2399
#>   std. dev.      0.1376  0.1393
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3249   0.277
#>   std. dev.      0.1654  0.1567
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3294  0.3152
#>   std. dev.      0.1983  0.1992
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean            0.385  0.3753
#>   std. dev.      0.2106  0.2392
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4195  0.4256
#>   std. dev.      0.2379  0.2786
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4477  0.4505
#>   std. dev.      0.2558  0.2639
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5331  0.4663
#>   std. dev.      0.2462  0.2545
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0448   0.033
#>   std. dev.      0.0392  0.0257
#>   weight sum         75      64
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6148  0.5132
#>   std. dev.       0.244  0.2559
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6657  0.5584
#>   std. dev.      0.2453  0.2402
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6854  0.5812
#>   std. dev.      0.2431  0.2644
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean            0.691  0.6184
#>   std. dev.      0.2442  0.2431
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6929  0.6441
#>   std. dev.      0.2337  0.2381
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6807  0.6588
#>   std. dev.      0.2419   0.256
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V26
#>   mean           0.6964  0.6747
#>   std. dev.      0.2437  0.2433
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7066  0.6795
#>   std. dev.      0.2637  0.2119
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7204  0.6909
#>   std. dev.      0.2498  0.1854
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6562  0.6566
#>   std. dev.      0.2357  0.2232
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean            0.048  0.0393
#>   std. dev.      0.0444  0.0317
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5822  0.5984
#>   std. dev.      0.2116   0.224
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4947  0.5304
#>   std. dev.      0.2337  0.1935
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4484  0.4498
#>   std. dev.      0.2245  0.2123
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4155  0.4513
#>   std. dev.      0.2029  0.2175
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3784  0.4671
#>   std. dev.      0.2098  0.2607
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3464  0.4788
#>   std. dev.      0.2525  0.2682
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3298  0.4944
#>   std. dev.      0.2547  0.2745
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3182  0.4493
#>   std. dev.      0.2353  0.2486
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3423  0.3545
#>   std. dev.      0.1995  0.2242
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3541  0.3106
#>   std. dev.      0.1844   0.208
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V4
#>   mean           0.0634  0.0467
#>   std. dev.      0.0545  0.0352
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3093  0.3202
#>   std. dev.      0.1733  0.1863
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2925  0.2941
#>   std. dev.      0.1785  0.1678
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3001  0.2513
#>   std. dev.      0.1795  0.1584
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2883  0.2036
#>   std. dev.      0.1419  0.1156
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2673  0.1695
#>   std. dev.      0.1465  0.0859
#>   weight sum         75      64
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2708  0.1362
#>   std. dev.       0.181  0.0779
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.214  0.1116
#>   std. dev.      0.1686  0.0901
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean            0.155  0.0924
#>   std. dev.      0.1048  0.0685
#>   weight sum         75      64
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1167  0.0721
#>   std. dev.      0.0696  0.0511
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0682  0.0405
#>   std. dev.      0.0374  0.0337
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.084  0.0648
#>   std. dev.      0.0614  0.0476
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0243  0.0179
#>   std. dev.      0.0154  0.0132
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0202  0.0121
#>   std. dev.      0.0155  0.0087
#>   weight sum         75      64
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0155  0.0102
#>   std. dev.      0.0111  0.0072
#>   weight sum         75      64
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0112  0.0099
#>   std. dev.      0.0077  0.0062
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012    0.01
#>   std. dev.      0.0083  0.0055
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0108  0.0092
#>   std. dev.       0.009   0.005
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0086  0.0081
#>   std. dev.      0.0066   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0088
#>   std. dev.      0.0062  0.0063
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0073
#>   std. dev.      0.0078  0.0049
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0089   0.007
#>   std. dev.      0.0069  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1103  0.1019
#>   std. dev.       0.053  0.0606
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean            0.007  0.0059
#>   std. dev.      0.0065  0.0039
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1287   0.122
#>   std. dev.      0.0603  0.0629
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1475  0.1265
#>   std. dev.      0.0875  0.0831
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2125   0.144
#>   std. dev.       0.111  0.1093
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
