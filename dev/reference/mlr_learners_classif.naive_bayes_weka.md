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
#>                 (0.49)  (0.51)
#> ===============================
#> V1
#>   mean           0.0336  0.0218
#>   std. dev.      0.0258  0.0138
#>   weight sum         68      71
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2526  0.1612
#>   std. dev.      0.1357  0.1067
#>   weight sum         68      71
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2881  0.1805
#>   std. dev.      0.1274   0.108
#>   weight sum         68      71
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.293  0.2007
#>   std. dev.      0.1234  0.1284
#>   weight sum         68      71
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.2989   0.234
#>   std. dev.      0.1305  0.1357
#>   weight sum         68      71
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3064  0.2541
#>   std. dev.      0.1446  0.1698
#>   weight sum         68      71
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3264  0.2795
#>   std. dev.      0.1885  0.2185
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3914  0.3458
#>   std. dev.      0.2037  0.2434
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4322  0.4025
#>   std. dev.      0.2349  0.2834
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4897  0.4311
#>   std. dev.      0.2512   0.262
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5702  0.4426
#>   std. dev.      0.2554  0.2489
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean            0.043  0.0311
#>   std. dev.      0.0331  0.0258
#>   weight sum         68      71
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.658  0.4766
#>   std. dev.      0.2383  0.2456
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.7092  0.5142
#>   std. dev.      0.2251  0.2331
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.7208  0.5423
#>   std. dev.      0.2121    0.26
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.7109  0.5833
#>   std. dev.      0.2389  0.2453
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7052  0.6232
#>   std. dev.      0.2375  0.2373
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.698  0.6363
#>   std. dev.      0.2317   0.264
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean             0.73  0.6832
#>   std. dev.      0.2327  0.2462
#>   weight sum         68      71
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7313  0.6969
#>   std. dev.      0.2693  0.2113
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7211  0.6869
#>   std. dev.      0.2567  0.2026
#>   weight sum         68      71
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean            0.649  0.6482
#>   std. dev.      0.2196  0.2282
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V3
#>   mean           0.0461  0.0378
#>   std. dev.      0.0322  0.0304
#>   weight sum         68      71
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean           0.5712  0.5863
#>   std. dev.      0.1787  0.2277
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4596  0.5313
#>   std. dev.      0.2019  0.2057
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4154  0.4532
#>   std. dev.      0.2083  0.2246
#>   weight sum         68      71
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3904  0.4498
#>   std. dev.      0.1987  0.2288
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3552  0.4459
#>   std. dev.      0.2121  0.2654
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3325  0.4509
#>   std. dev.      0.2502  0.2653
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3076  0.4793
#>   std. dev.       0.255  0.2584
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3084  0.4403
#>   std. dev.      0.2336  0.2547
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3343  0.3598
#>   std. dev.      0.2034  0.2257
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3361  0.3115
#>   std. dev.      0.1871  0.2014
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0614   0.043
#>   std. dev.      0.0389  0.0332
#>   weight sum         68      71
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.2932   0.314
#>   std. dev.      0.1598  0.1784
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2807  0.2915
#>   std. dev.      0.1694  0.1765
#>   weight sum         68      71
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2949  0.2626
#>   std. dev.      0.1623  0.1649
#>   weight sum         68      71
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2621  0.2104
#>   std. dev.      0.1337  0.1225
#>   weight sum         68      71
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2384  0.1682
#>   std. dev.      0.1353  0.0903
#>   weight sum         68      71
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2303  0.1399
#>   std. dev.      0.1673  0.0809
#>   weight sum         68      71
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1864  0.1146
#>   std. dev.      0.1372  0.0865
#>   weight sum         68      71
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1357  0.0908
#>   std. dev.      0.0734  0.0642
#>   weight sum         68      71
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.0993  0.0703
#>   std. dev.      0.0546  0.0478
#>   weight sum         68      71
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0585  0.0391
#>   std. dev.      0.0312  0.0303
#>   weight sum         68      71
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0812  0.0636
#>   std. dev.      0.0486  0.0496
#>   weight sum         68      71
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0227   0.017
#>   std. dev.      0.0138  0.0118
#>   weight sum         68      71
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0174  0.0119
#>   std. dev.      0.0087  0.0089
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0151  0.0102
#>   std. dev.      0.0091  0.0075
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.011  0.0099
#>   std. dev.      0.0078  0.0065
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.012  0.0093
#>   std. dev.      0.0085  0.0052
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0094  0.0088
#>   std. dev.      0.0087  0.0051
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0088   0.007
#>   std. dev.      0.0067  0.0043
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0071  0.0075
#>   std. dev.      0.0056  0.0052
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0083  0.0065
#>   std. dev.      0.0076  0.0048
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0071
#>   std. dev.      0.0073  0.0051
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1049  0.0964
#>   std. dev.      0.0478  0.0676
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0061
#>   std. dev.      0.0067  0.0035
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1263  0.1111
#>   std. dev.      0.0573  0.0687
#>   weight sum         68      71
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1474  0.1152
#>   std. dev.      0.0873  0.0794
#>   weight sum         68      71
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2153  0.1366
#>   std. dev.      0.1206  0.0954
#>   weight sum         68      71
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
