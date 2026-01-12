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
#>   mean           0.0386  0.0234
#>   std. dev.      0.0301  0.0155
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2429  0.1688
#>   std. dev.      0.1423  0.1201
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2856  0.1865
#>   std. dev.      0.1273   0.123
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2955  0.2033
#>   std. dev.       0.126   0.142
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3068  0.2382
#>   std. dev.      0.1347  0.1483
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.311  0.2861
#>   std. dev.      0.1506  0.1804
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3303  0.3351
#>   std. dev.      0.1875  0.2319
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3774  0.4014
#>   std. dev.      0.2074  0.2614
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4098  0.4363
#>   std. dev.      0.2291  0.2968
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.458  0.4557
#>   std. dev.      0.2485  0.2789
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5446  0.4795
#>   std. dev.      0.2456   0.264
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean             0.05  0.0304
#>   std. dev.      0.0417  0.0209
#>   weight sum         73      66
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6349  0.5134
#>   std. dev.      0.2389  0.2597
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6793  0.5455
#>   std. dev.       0.228  0.2478
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V22
#>   mean           0.6789   0.587
#>   std. dev.      0.2331  0.2596
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6847  0.6352
#>   std. dev.      0.2602  0.2435
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7012  0.6556
#>   std. dev.      0.2476  0.2296
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6897  0.6563
#>   std. dev.      0.2434  0.2463
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7019  0.6822
#>   std. dev.      0.2392  0.2407
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean            0.694  0.6755
#>   std. dev.       0.275  0.2201
#>   weight sum         73      66
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.6801   0.671
#>   std. dev.      0.2602   0.206
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean            0.614  0.6337
#>   std. dev.      0.2396  0.2324
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0548  0.0347
#>   std. dev.       0.048  0.0272
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5546  0.5999
#>   std. dev.      0.2042   0.224
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4627  0.5364
#>   std. dev.      0.2069  0.1951
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4111  0.4472
#>   std. dev.      0.1843  0.2129
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3857  0.4498
#>   std. dev.      0.1874    0.22
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3729  0.4523
#>   std. dev.      0.2096  0.2559
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3518  0.4578
#>   std. dev.      0.2465  0.2654
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3356  0.4611
#>   std. dev.      0.2539  0.2673
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3361  0.4107
#>   std. dev.      0.2334  0.2459
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3454  0.3416
#>   std. dev.      0.2144  0.2231
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3468  0.3073
#>   std. dev.      0.1849  0.2121
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0671  0.0425
#>   std. dev.      0.0606  0.0312
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3127  0.3168
#>   std. dev.      0.1578  0.1931
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2918  0.2861
#>   std. dev.      0.1569  0.1715
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2942   0.249
#>   std. dev.      0.1568  0.1612
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2627  0.2054
#>   std. dev.      0.1322  0.1108
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2271  0.1693
#>   std. dev.      0.1243  0.0865
#>   weight sum         73      66
#>   precision      0.0039  0.0039
#> 
#> V45
#>   mean           0.2293  0.1434
#>   std. dev.      0.1546  0.0886
#>   weight sum         73      66
#>   precision      0.0042  0.0042
#> 
#> V46
#>   mean           0.1953  0.1212
#>   std. dev.       0.143  0.0979
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1432   0.098
#>   std. dev.      0.0922  0.0715
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1038  0.0686
#>   std. dev.      0.0697  0.0506
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0599   0.039
#>   std. dev.      0.0377  0.0326
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0845  0.0674
#>   std. dev.      0.0653   0.048
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0216  0.0191
#>   std. dev.      0.0154  0.0136
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0134
#>   std. dev.      0.0149   0.009
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0154  0.0109
#>   std. dev.      0.0112  0.0077
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0098
#>   std. dev.      0.0073  0.0064
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0128  0.0096
#>   std. dev.      0.0086  0.0052
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0088
#>   std. dev.      0.0084  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0077
#>   std. dev.      0.0071  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0082
#>   std. dev.       0.006  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0063
#>   std. dev.      0.0076  0.0042
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0092  0.0064
#>   std. dev.      0.0069  0.0038
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1106   0.101
#>   std. dev.      0.0481  0.0678
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0075   0.006
#>   std. dev.      0.0065  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1313  0.1236
#>   std. dev.      0.0581  0.0677
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1576  0.1269
#>   std. dev.      0.0949  0.0865
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2113  0.1431
#>   std. dev.       0.136  0.1105
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
