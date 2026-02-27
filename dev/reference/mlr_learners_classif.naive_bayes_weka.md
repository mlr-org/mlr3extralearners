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
#>   mean           0.0333  0.0227
#>   std. dev.      0.0272  0.0159
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.245  0.1724
#>   std. dev.      0.1349  0.1256
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2883  0.1805
#>   std. dev.      0.1212   0.125
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3003  0.1904
#>   std. dev.      0.1278  0.1418
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3164  0.2247
#>   std. dev.      0.1387  0.1357
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3231  0.2697
#>   std. dev.      0.1645   0.168
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3372  0.3019
#>   std. dev.      0.2017  0.2221
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3926   0.379
#>   std. dev.      0.2214  0.2575
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4248  0.4259
#>   std. dev.      0.2498  0.2862
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4617  0.4517
#>   std. dev.        0.27  0.2535
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5505  0.4516
#>   std. dev.      0.2577  0.2523
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0421  0.0314
#>   std. dev.      0.0339  0.0263
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6202  0.4876
#>   std. dev.      0.2556  0.2663
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6601  0.5405
#>   std. dev.      0.2437  0.2583
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6559  0.5705
#>   std. dev.      0.2411  0.2619
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6617  0.6022
#>   std. dev.      0.2547  0.2469
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean            0.676  0.6487
#>   std. dev.      0.2437  0.2357
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6647  0.6732
#>   std. dev.      0.2443  0.2511
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6987  0.6938
#>   std. dev.      0.2388  0.2459
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean            0.717  0.6902
#>   std. dev.      0.2614  0.2299
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7345  0.6669
#>   std. dev.      0.2531  0.2136
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6753  0.6167
#>   std. dev.      0.2428  0.2447
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0461  0.0365
#>   std. dev.      0.0346  0.0314
#>   weight sum         73      66
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean           0.5902  0.5703
#>   std. dev.      0.2187   0.245
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4818  0.5469
#>   std. dev.      0.2276  0.2053
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4349  0.4835
#>   std. dev.      0.2065  0.2153
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.4024  0.4606
#>   std. dev.      0.1845  0.2147
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3738   0.459
#>   std. dev.      0.1981  0.2511
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3435  0.4771
#>   std. dev.      0.2464  0.2584
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3075  0.4957
#>   std. dev.      0.2493  0.2555
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3075  0.4586
#>   std. dev.      0.2319  0.2534
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.328  0.3845
#>   std. dev.      0.2102  0.2401
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3255  0.3324
#>   std. dev.      0.1829  0.2301
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0582  0.0436
#>   std. dev.      0.0362  0.0334
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.2969  0.3374
#>   std. dev.      0.1494  0.2003
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2961  0.2979
#>   std. dev.      0.1563  0.1873
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2998  0.2487
#>   std. dev.      0.1709   0.168
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2674    0.21
#>   std. dev.      0.1453  0.1176
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2492  0.1752
#>   std. dev.      0.1471  0.0936
#>   weight sum         73      66
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2504  0.1439
#>   std. dev.      0.1762  0.0915
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V46
#>   mean           0.2046  0.1204
#>   std. dev.      0.1545  0.0942
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1518  0.0979
#>   std. dev.      0.0994  0.0698
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1124  0.0708
#>   std. dev.      0.0687   0.052
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean            0.064  0.0403
#>   std. dev.      0.0373  0.0335
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0829  0.0629
#>   std. dev.      0.0437  0.0485
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0217  0.0198
#>   std. dev.      0.0126  0.0135
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0192  0.0127
#>   std. dev.      0.0157  0.0089
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0167  0.0115
#>   std. dev.      0.0114   0.007
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0115  0.0101
#>   std. dev.      0.0069  0.0063
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0117  0.0095
#>   std. dev.      0.0087  0.0057
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0084
#>   std. dev.      0.0084  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0069
#>   std. dev.      0.0057  0.0048
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0069  0.0079
#>   std. dev.      0.0049  0.0057
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0085  0.0064
#>   std. dev.      0.0068  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0083  0.0069
#>   std. dev.      0.0066  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1112  0.0969
#>   std. dev.      0.0518  0.0725
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0064  0.0052
#>   std. dev.      0.0046  0.0029
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1345  0.1158
#>   std. dev.        0.06  0.0728
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1528  0.1246
#>   std. dev.      0.0903  0.0893
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2128  0.1483
#>   std. dev.       0.128  0.1138
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
