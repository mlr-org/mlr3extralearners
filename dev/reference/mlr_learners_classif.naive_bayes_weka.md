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
#>   mean           0.0351  0.0228
#>   std. dev.      0.0279  0.0141
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2533  0.1521
#>   std. dev.      0.1465   0.108
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2905  0.1685
#>   std. dev.      0.1312  0.1105
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2998  0.1872
#>   std. dev.      0.1202  0.1369
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean             0.31  0.2247
#>   std. dev.      0.1318  0.1325
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3217  0.2523
#>   std. dev.      0.1636  0.1629
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3437  0.2843
#>   std. dev.      0.1974  0.2143
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3868  0.3601
#>   std. dev.      0.2155  0.2576
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4113  0.4131
#>   std. dev.      0.2415  0.2841
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4576  0.4557
#>   std. dev.       0.263  0.2659
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5535  0.4856
#>   std. dev.      0.2546  0.2586
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0464  0.0315
#>   std. dev.      0.0367  0.0245
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6507  0.5198
#>   std. dev.      0.2364  0.2689
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.7079  0.5565
#>   std. dev.      0.2252  0.2551
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6921  0.5663
#>   std. dev.      0.2224  0.2659
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6777  0.5996
#>   std. dev.      0.2534    0.25
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.689  0.6457
#>   std. dev.      0.2432  0.2333
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V25
#>   mean           0.6702  0.6601
#>   std. dev.      0.2442  0.2472
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6887  0.6783
#>   std. dev.      0.2326  0.2523
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean            0.686   0.677
#>   std. dev.      0.2722  0.2344
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.6743  0.6677
#>   std. dev.      0.2661  0.2064
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6202  0.6377
#>   std. dev.        0.25  0.2315
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0523  0.0342
#>   std. dev.      0.0394  0.0292
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5757  0.5736
#>   std. dev.      0.2236  0.2384
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4695   0.526
#>   std. dev.      0.2227  0.2076
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4052  0.4533
#>   std. dev.      0.2133  0.2185
#>   weight sum         70      69
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3855  0.4415
#>   std. dev.       0.207  0.2171
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3858  0.4494
#>   std. dev.      0.2132  0.2408
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3701  0.4539
#>   std. dev.      0.2426  0.2488
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3455  0.4554
#>   std. dev.      0.2399  0.2517
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3307  0.4213
#>   std. dev.      0.2232  0.2352
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.346   0.359
#>   std. dev.      0.2117   0.224
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3523  0.3188
#>   std. dev.      0.1793  0.2133
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V4
#>   mean           0.0658  0.0395
#>   std. dev.      0.0441  0.0274
#>   weight sum         70      69
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3178  0.3027
#>   std. dev.      0.1595  0.1872
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2981  0.2694
#>   std. dev.      0.1638  0.1757
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2935  0.2367
#>   std. dev.      0.1522   0.171
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2739  0.2029
#>   std. dev.      0.1265  0.1393
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2398  0.1725
#>   std. dev.      0.1291  0.1182
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2306  0.1416
#>   std. dev.      0.1643  0.0995
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1855  0.1145
#>   std. dev.      0.1396  0.0935
#>   weight sum         70      69
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1403  0.0898
#>   std. dev.      0.0838  0.0665
#>   weight sum         70      69
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1062  0.0652
#>   std. dev.      0.0623   0.047
#>   weight sum         70      69
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0634  0.0366
#>   std. dev.      0.0367  0.0291
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0834  0.0621
#>   std. dev.      0.0532  0.0419
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0222  0.0173
#>   std. dev.      0.0137  0.0133
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0187  0.0113
#>   std. dev.      0.0116   0.008
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0149  0.0102
#>   std. dev.      0.0081  0.0073
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0108  0.0098
#>   std. dev.       0.006  0.0061
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0122  0.0092
#>   std. dev.       0.009  0.0056
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096   0.009
#>   std. dev.      0.0079  0.0056
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0073
#>   std. dev.       0.006  0.0048
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0079  0.0075
#>   std. dev.      0.0051  0.0056
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0086  0.0068
#>   std. dev.      0.0061   0.005
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0091  0.0069
#>   std. dev.      0.0071  0.0047
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.107  0.0938
#>   std. dev.      0.0493  0.0594
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0074  0.0056
#>   std. dev.      0.0065  0.0039
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.129  0.1096
#>   std. dev.      0.0622  0.0598
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1587  0.1085
#>   std. dev.      0.0984  0.0736
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2192  0.1344
#>   std. dev.      0.1367  0.0963
#>   weight sum         70      69
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
