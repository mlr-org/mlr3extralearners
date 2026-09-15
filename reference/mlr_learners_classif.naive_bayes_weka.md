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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0344  0.0224
#>   std. dev.      0.0257  0.0132
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2507  0.1541
#>   std. dev.      0.1423  0.1133
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2881  0.1696
#>   std. dev.      0.1297  0.1115
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.298  0.1882
#>   std. dev.      0.1284  0.1274
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3162  0.2272
#>   std. dev.      0.1276  0.1365
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3244  0.2639
#>   std. dev.      0.1643    0.17
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V15
#>   mean           0.3368  0.2947
#>   std. dev.      0.2051  0.2178
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.4021  0.3693
#>   std. dev.       0.214  0.2537
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V17
#>   mean            0.434  0.4161
#>   std. dev.      0.2351  0.2837
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4732   0.448
#>   std. dev.      0.2538  0.2651
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5689  0.4734
#>   std. dev.      0.2436  0.2618
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0465  0.0326
#>   std. dev.      0.0402   0.025
#>   weight sum         74      65
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6502  0.5044
#>   std. dev.      0.2287  0.2746
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6916  0.5369
#>   std. dev.      0.2205  0.2554
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V22
#>   mean           0.7007  0.5498
#>   std. dev.      0.2167  0.2635
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.7103  0.6035
#>   std. dev.      0.2326  0.2573
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7113  0.6662
#>   std. dev.      0.2275  0.2303
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6912  0.6589
#>   std. dev.       0.234  0.2498
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6977  0.6742
#>   std. dev.      0.2493  0.2415
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6948  0.6636
#>   std. dev.      0.2766  0.2219
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.6915  0.6502
#>   std. dev.      0.2677   0.197
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6371  0.6136
#>   std. dev.      0.2403  0.2342
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0492  0.0385
#>   std. dev.      0.0444  0.0282
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5632  0.5644
#>   std. dev.      0.1927  0.2398
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4612  0.5188
#>   std. dev.      0.2033  0.2037
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4082  0.4527
#>   std. dev.      0.2028   0.226
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3761  0.4537
#>   std. dev.      0.1924  0.2283
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3547  0.4734
#>   std. dev.      0.1973  0.2596
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3291   0.486
#>   std. dev.       0.241  0.2664
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3165  0.4895
#>   std. dev.      0.2382  0.2634
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3075  0.4352
#>   std. dev.      0.2259  0.2532
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.326  0.3604
#>   std. dev.      0.2006  0.2338
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3403   0.334
#>   std. dev.      0.1847  0.2278
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0647   0.044
#>   std. dev.      0.0563  0.0322
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3039   0.335
#>   std. dev.      0.1612  0.2022
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2823  0.2928
#>   std. dev.      0.1619  0.1784
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2892  0.2552
#>   std. dev.      0.1586  0.1754
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2665  0.2163
#>   std. dev.      0.1316  0.1407
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2443  0.1812
#>   std. dev.      0.1346  0.1193
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2474  0.1493
#>   std. dev.      0.1691  0.1075
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2001  0.1228
#>   std. dev.      0.1428  0.1014
#>   weight sum         74      65
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1445  0.0941
#>   std. dev.      0.0857   0.072
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1054  0.0685
#>   std. dev.       0.063   0.052
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0621  0.0401
#>   std. dev.      0.0369  0.0322
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0852  0.0618
#>   std. dev.      0.0602  0.0489
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0223  0.0184
#>   std. dev.      0.0154  0.0134
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0179  0.0127
#>   std. dev.      0.0116  0.0087
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean            0.016  0.0106
#>   std. dev.      0.0101  0.0071
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0096
#>   std. dev.      0.0079   0.006
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0103
#>   std. dev.      0.0085  0.0053
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0108  0.0094
#>   std. dev.      0.0093  0.0053
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0084  0.0078
#>   std. dev.      0.0066  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0077
#>   std. dev.       0.006  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0066
#>   std. dev.      0.0075  0.0048
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087  0.0076
#>   std. dev.      0.0069   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1085  0.0962
#>   std. dev.      0.0533  0.0708
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0065  0.0061
#>   std. dev.      0.0051  0.0037
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean            0.127  0.1148
#>   std. dev.      0.0603  0.0704
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1505  0.1167
#>   std. dev.      0.0905  0.0837
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2101  0.1345
#>   std. dev.      0.1242  0.1016
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
