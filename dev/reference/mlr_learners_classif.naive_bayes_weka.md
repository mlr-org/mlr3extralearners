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
#>   mean           0.0359  0.0234
#>   std. dev.      0.0278  0.0151
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2391  0.1669
#>   std. dev.      0.1284  0.1093
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2835  0.1782
#>   std. dev.      0.1128  0.1115
#>   weight sum         70      69
#>   precision      0.0043  0.0043
#> 
#> V12
#>   mean           0.3014  0.1878
#>   std. dev.      0.1194  0.1342
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3141  0.2261
#>   std. dev.      0.1386  0.1365
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.319  0.2795
#>   std. dev.      0.1787  0.1675
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3307  0.3226
#>   std. dev.      0.2129  0.2215
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3782  0.3784
#>   std. dev.      0.2246  0.2561
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4066  0.4183
#>   std. dev.      0.2429  0.3003
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4412  0.4531
#>   std. dev.      0.2522  0.2746
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean           0.5212  0.4763
#>   std. dev.      0.2472   0.264
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0471  0.0309
#>   std. dev.       0.036  0.0251
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6012  0.5082
#>   std. dev.      0.2491  0.2628
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6516  0.5381
#>   std. dev.      0.2565  0.2462
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.656  0.5713
#>   std. dev.      0.2467  0.2493
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6568  0.6119
#>   std. dev.      0.2652  0.2292
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6643  0.6373
#>   std. dev.      0.2596  0.2241
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6682  0.6531
#>   std. dev.      0.2424  0.2304
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7075   0.684
#>   std. dev.      0.2275  0.2291
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7179  0.6841
#>   std. dev.      0.2625  0.2075
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7135  0.6626
#>   std. dev.      0.2551  0.2042
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V29
#>   mean           0.6587  0.6277
#>   std. dev.      0.2521  0.2372
#>   weight sum         70      69
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0494  0.0377
#>   std. dev.      0.0402  0.0316
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5924  0.5726
#>   std. dev.      0.2223  0.2505
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4815  0.5061
#>   std. dev.      0.2378  0.2144
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4237  0.4279
#>   std. dev.      0.2217  0.2248
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3987  0.4365
#>   std. dev.      0.2034  0.2332
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V34
#>   mean           0.3788  0.4269
#>   std. dev.      0.2048  0.2444
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3624  0.4222
#>   std. dev.      0.2483  0.2296
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3329  0.4334
#>   std. dev.       0.261  0.2449
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3297   0.416
#>   std. dev.      0.2432  0.2289
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3388  0.3385
#>   std. dev.      0.2101  0.2102
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean            0.338     0.3
#>   std. dev.       0.185   0.207
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0603  0.0419
#>   std. dev.       0.046  0.0305
#>   weight sum         70      69
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean            0.307  0.3105
#>   std. dev.      0.1702  0.1871
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2968    0.29
#>   std. dev.      0.1694  0.1717
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3093   0.259
#>   std. dev.       0.181  0.1568
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2864  0.2092
#>   std. dev.      0.1423  0.1099
#>   weight sum         70      69
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2519  0.1688
#>   std. dev.      0.1453  0.0912
#>   weight sum         70      69
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2566  0.1465
#>   std. dev.      0.1719  0.0924
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2128  0.1225
#>   std. dev.      0.1567  0.0964
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1516  0.0988
#>   std. dev.      0.1021  0.0704
#>   weight sum         70      69
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1115  0.0724
#>   std. dev.      0.0675  0.0518
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0664  0.0407
#>   std. dev.      0.0375  0.0331
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0822  0.0568
#>   std. dev.      0.0527  0.0414
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0235  0.0184
#>   std. dev.      0.0148  0.0128
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0201  0.0123
#>   std. dev.      0.0153  0.0088
#>   weight sum         70      69
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0106
#>   std. dev.      0.0112  0.0074
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118  0.0091
#>   std. dev.      0.0077  0.0064
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0097
#>   std. dev.      0.0084  0.0054
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0095  0.0089
#>   std. dev.      0.0076  0.0053
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0084  0.0072
#>   std. dev.      0.0051  0.0048
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077   0.008
#>   std. dev.      0.0056   0.006
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0088   0.007
#>   std. dev.      0.0073   0.005
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0078  0.0068
#>   std. dev.      0.0054  0.0049
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1109  0.0887
#>   std. dev.      0.0553  0.0552
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0063  0.0057
#>   std. dev.      0.0042  0.0036
#>   weight sum         70      69
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean            0.129  0.1118
#>   std. dev.      0.0596  0.0579
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1497  0.1178
#>   std. dev.      0.0828  0.0755
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2059  0.1402
#>   std. dev.      0.1117  0.0969
#>   weight sum         70      69
#>   precision      0.0042  0.0042
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
