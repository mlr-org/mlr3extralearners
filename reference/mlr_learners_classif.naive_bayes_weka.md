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
#>   mean           0.0338  0.0234
#>   std. dev.      0.0283  0.0155
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2499  0.1679
#>   std. dev.      0.1263  0.1225
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2978  0.1745
#>   std. dev.      0.1219  0.1173
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean            0.313   0.189
#>   std. dev.      0.1243   0.133
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3317  0.2251
#>   std. dev.      0.1381  0.1364
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3417  0.2775
#>   std. dev.      0.1713  0.1621
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3603  0.3199
#>   std. dev.      0.2063  0.2199
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.4115  0.3894
#>   std. dev.      0.2286  0.2522
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4645  0.4342
#>   std. dev.      0.2516  0.2833
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.5269  0.4558
#>   std. dev.      0.2636  0.2643
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V19
#>   mean            0.606  0.4734
#>   std. dev.       0.256  0.2552
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0406  0.0291
#>   std. dev.      0.0381  0.0206
#>   weight sum         69      70
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6778  0.5122
#>   std. dev.      0.2301  0.2611
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.7269  0.5647
#>   std. dev.      0.2136   0.249
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V22
#>   mean           0.7187  0.5926
#>   std. dev.      0.2199  0.2573
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.7063  0.6243
#>   std. dev.      0.2528  0.2417
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7125   0.655
#>   std. dev.      0.2402  0.2302
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6961  0.6713
#>   std. dev.      0.2462  0.2438
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7098  0.7035
#>   std. dev.      0.2509  0.2359
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.6978  0.7063
#>   std. dev.      0.2787  0.2224
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6756  0.6752
#>   std. dev.        0.28  0.2157
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6126  0.6154
#>   std. dev.      0.2443   0.247
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0488  0.0359
#>   std. dev.       0.045   0.027
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5289  0.5719
#>   std. dev.      0.1805  0.2435
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4311  0.5264
#>   std. dev.      0.1844  0.1982
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V32
#>   mean           0.3793  0.4492
#>   std. dev.      0.1847  0.2076
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3563  0.4298
#>   std. dev.      0.1856   0.225
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3296  0.4443
#>   std. dev.      0.1954  0.2616
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3046  0.4637
#>   std. dev.      0.2251  0.2654
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.284  0.4592
#>   std. dev.      0.2294  0.2647
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2798  0.4251
#>   std. dev.      0.2075  0.2413
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3011  0.3633
#>   std. dev.       0.187  0.2209
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3233  0.3243
#>   std. dev.      0.1747  0.2158
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0633  0.0418
#>   std. dev.      0.0571  0.0321
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2892  0.3316
#>   std. dev.      0.1594  0.1991
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2532  0.2947
#>   std. dev.       0.152  0.1794
#>   weight sum         69      70
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.2445  0.2493
#>   std. dev.      0.1281   0.163
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V43
#>   mean           0.2267  0.2044
#>   std. dev.      0.1096  0.1282
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2142  0.1712
#>   std. dev.      0.1192  0.1109
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.1969  0.1411
#>   std. dev.      0.1517  0.0941
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1563  0.1128
#>   std. dev.      0.1141  0.0876
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1208   0.091
#>   std. dev.      0.0673  0.0622
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V48
#>   mean           0.0894   0.066
#>   std. dev.      0.0522  0.0439
#>   weight sum         69      70
#>   precision       0.002   0.002
#> 
#> V49
#>   mean           0.0521  0.0367
#>   std. dev.        0.03  0.0274
#>   weight sum         69      70
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean            0.088  0.0624
#>   std. dev.      0.0583   0.049
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0193  0.0174
#>   std. dev.      0.0103  0.0106
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V51
#>   mean           0.0157  0.0121
#>   std. dev.      0.0088  0.0081
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0136  0.0102
#>   std. dev.      0.0082  0.0065
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0104  0.0092
#>   std. dev.      0.0061   0.006
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0112  0.0097
#>   std. dev.       0.008  0.0055
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0082
#>   std. dev.      0.0082  0.0048
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0082  0.0071
#>   std. dev.      0.0053  0.0049
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0074  0.0081
#>   std. dev.      0.0052  0.0059
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0066
#>   std. dev.      0.0073  0.0049
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0073
#>   std. dev.      0.0072  0.0055
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1149  0.0999
#>   std. dev.      0.0447   0.068
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007  0.0059
#>   std. dev.      0.0066  0.0036
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1329  0.1164
#>   std. dev.      0.0536  0.0677
#>   weight sum         69      70
#>   precision      0.0029  0.0029
#> 
#> V8
#>   mean           0.1442   0.117
#>   std. dev.      0.0866   0.083
#>   weight sum         69      70
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean            0.207  0.1435
#>   std. dev.       0.117  0.1043
#>   weight sum         69      70
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
