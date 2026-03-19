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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0344  0.0233
#>   std. dev.      0.0262  0.0162
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2555   0.172
#>   std. dev.      0.1269  0.1242
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2908  0.1887
#>   std. dev.      0.1152  0.1253
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean            0.309  0.1936
#>   std. dev.      0.1254   0.146
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3252   0.227
#>   std. dev.      0.1348  0.1436
#>   weight sum         75      64
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3289  0.2805
#>   std. dev.       0.169  0.1779
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3316  0.3155
#>   std. dev.      0.1973  0.2298
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3759  0.3888
#>   std. dev.      0.2164  0.2642
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4111    0.45
#>   std. dev.      0.2454  0.2971
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4475  0.4901
#>   std. dev.       0.256  0.2701
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5263  0.5103
#>   std. dev.      0.2552  0.2415
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0456  0.0298
#>   std. dev.      0.0312  0.0247
#>   weight sum         75      64
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean             0.61  0.5259
#>   std. dev.      0.2592  0.2578
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6639  0.5511
#>   std. dev.      0.2583  0.2458
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6573  0.5769
#>   std. dev.      0.2415  0.2454
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6535  0.6304
#>   std. dev.      0.2596  0.2332
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6692  0.6782
#>   std. dev.      0.2492  0.2258
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6718  0.6713
#>   std. dev.      0.2358   0.245
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7043  0.6648
#>   std. dev.      0.2335  0.2388
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7117  0.6576
#>   std. dev.      0.2743  0.2337
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7037  0.6515
#>   std. dev.      0.2687  0.2256
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6506  0.6276
#>   std. dev.       0.245  0.2517
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0531  0.0375
#>   std. dev.      0.0397  0.0313
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5883  0.5829
#>   std. dev.      0.2245  0.2505
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4855  0.5295
#>   std. dev.        0.24  0.2196
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4375  0.4446
#>   std. dev.      0.2198  0.2304
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3976   0.434
#>   std. dev.      0.1921    0.22
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean            0.368  0.4444
#>   std. dev.      0.2014  0.2394
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3392  0.4528
#>   std. dev.      0.2446  0.2445
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3239  0.4678
#>   std. dev.      0.2568  0.2442
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3322  0.4384
#>   std. dev.      0.2328  0.2383
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3504   0.379
#>   std. dev.      0.2029  0.2281
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3489  0.3324
#>   std. dev.      0.1879  0.2288
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.065   0.043
#>   std. dev.       0.046  0.0331
#>   weight sum         75      64
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3122  0.3231
#>   std. dev.      0.1723  0.1931
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2991  0.2783
#>   std. dev.      0.1752  0.1773
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean            0.298  0.2403
#>   std. dev.      0.1701  0.1684
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2835  0.1996
#>   std. dev.      0.1483    0.13
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2639  0.1736
#>   std. dev.      0.1537  0.1158
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2579  0.1491
#>   std. dev.       0.179  0.1073
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2107  0.1225
#>   std. dev.      0.1563  0.1016
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1566  0.0973
#>   std. dev.      0.1041  0.0744
#>   weight sum         75      64
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1209  0.0729
#>   std. dev.      0.0739  0.0548
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean             0.07  0.0418
#>   std. dev.      0.0392  0.0349
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0872   0.063
#>   std. dev.      0.0551  0.0473
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean            0.024  0.0186
#>   std. dev.      0.0151   0.014
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0205  0.0125
#>   std. dev.       0.015  0.0087
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0104
#>   std. dev.      0.0103  0.0074
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0113  0.0088
#>   std. dev.      0.0077  0.0056
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0094
#>   std. dev.       0.009  0.0051
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0085
#>   std. dev.      0.0088  0.0052
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0098  0.0068
#>   std. dev.      0.0071  0.0048
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0074
#>   std. dev.      0.0061  0.0057
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0068
#>   std. dev.      0.0081  0.0049
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0075
#>   std. dev.      0.0074  0.0056
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1082  0.0969
#>   std. dev.      0.0505  0.0629
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean            0.007   0.006
#>   std. dev.      0.0062  0.0039
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1246  0.1175
#>   std. dev.      0.0581   0.066
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1462  0.1241
#>   std. dev.      0.0803  0.0873
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2149  0.1499
#>   std. dev.      0.1161  0.1093
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
