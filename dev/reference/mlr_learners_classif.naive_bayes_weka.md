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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean            0.036  0.0205
#>   std. dev.      0.0303  0.0123
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2592  0.1539
#>   std. dev.      0.1428  0.1066
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2973  0.1724
#>   std. dev.      0.1243  0.1083
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean           0.3017  0.1894
#>   std. dev.      0.1205  0.1291
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean             0.31   0.218
#>   std. dev.        0.13  0.1314
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3188  0.2585
#>   std. dev.      0.1806  0.1558
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3326  0.2985
#>   std. dev.      0.2147   0.207
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3872  0.3737
#>   std. dev.      0.2285  0.2591
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4162  0.4171
#>   std. dev.      0.2468  0.2991
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4513  0.4363
#>   std. dev.      0.2609  0.2697
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean            0.529  0.4362
#>   std. dev.      0.2566  0.2577
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0466  0.0282
#>   std. dev.      0.0383  0.0246
#>   weight sum         70      69
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6022  0.4629
#>   std. dev.      0.2598  0.2583
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6459  0.5176
#>   std. dev.      0.2585  0.2562
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6401  0.5509
#>   std. dev.      0.2526  0.2729
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6516  0.5832
#>   std. dev.      0.2639  0.2381
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6707  0.6261
#>   std. dev.      0.2529  0.2414
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6705  0.6623
#>   std. dev.      0.2475  0.2626
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6858  0.7096
#>   std. dev.      0.2439   0.244
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.6835  0.6987
#>   std. dev.       0.272  0.2131
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V28
#>   mean            0.694   0.673
#>   std. dev.      0.2631  0.1924
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6375  0.6522
#>   std. dev.      0.2471  0.2381
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean            0.052  0.0348
#>   std. dev.      0.0443  0.0304
#>   weight sum         70      69
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5836  0.6105
#>   std. dev.      0.2172  0.2232
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V31
#>   mean           0.4842  0.5623
#>   std. dev.      0.2388  0.1829
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4357  0.4673
#>   std. dev.      0.2193  0.2146
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4086  0.4694
#>   std. dev.      0.2071  0.2158
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean            0.389  0.4755
#>   std. dev.      0.2239  0.2512
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3642   0.475
#>   std. dev.      0.2527  0.2678
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3241  0.4735
#>   std. dev.      0.2678  0.2747
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3215  0.4317
#>   std. dev.      0.2375    0.25
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3409   0.359
#>   std. dev.      0.2096  0.2384
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3369  0.3314
#>   std. dev.      0.1822  0.2355
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0659  0.0415
#>   std. dev.       0.057  0.0322
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3022   0.338
#>   std. dev.      0.1729  0.2142
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean              0.3  0.2988
#>   std. dev.      0.1723  0.1847
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2885  0.2596
#>   std. dev.      0.1646  0.1722
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2643    0.22
#>   std. dev.      0.1426  0.1404
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2464  0.1823
#>   std. dev.      0.1406  0.1119
#>   weight sum         70      69
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2472  0.1517
#>   std. dev.      0.1724  0.1023
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean            0.212  0.1249
#>   std. dev.      0.1596  0.1027
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1532  0.0974
#>   std. dev.      0.1013  0.0738
#>   weight sum         70      69
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1122  0.0713
#>   std. dev.      0.0685  0.0499
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0643  0.0393
#>   std. dev.      0.0371  0.0311
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0822  0.0612
#>   std. dev.      0.0632  0.0495
#>   weight sum         70      69
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0236  0.0174
#>   std. dev.      0.0155  0.0119
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0123
#>   std. dev.      0.0155  0.0084
#>   weight sum         70      69
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0158  0.0098
#>   std. dev.      0.0109   0.006
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0096
#>   std. dev.       0.008  0.0064
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0131  0.0091
#>   std. dev.      0.0091  0.0054
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0115  0.0086
#>   std. dev.      0.0093  0.0052
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0072
#>   std. dev.      0.0074  0.0044
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0086  0.0071
#>   std. dev.      0.0066  0.0046
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098  0.0062
#>   std. dev.      0.0084  0.0046
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0073
#>   std. dev.      0.0074  0.0055
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1068  0.0955
#>   std. dev.      0.0465  0.0622
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0072  0.0061
#>   std. dev.      0.0065  0.0038
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1324  0.1108
#>   std. dev.        0.06  0.0634
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1512  0.1119
#>   std. dev.      0.0951  0.0724
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2229  0.1294
#>   std. dev.      0.1254  0.0913
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
