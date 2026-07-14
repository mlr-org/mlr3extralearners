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
#>   mean            0.033  0.0222
#>   std. dev.      0.0249   0.015
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean             0.25   0.156
#>   std. dev.      0.1362  0.1074
#>   weight sum         69      70
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2949  0.1715
#>   std. dev.      0.1345  0.1061
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3117  0.1841
#>   std. dev.      0.1275  0.1217
#>   weight sum         69      70
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3226  0.2201
#>   std. dev.      0.1256  0.1207
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3279  0.2653
#>   std. dev.       0.156  0.1494
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3259  0.3057
#>   std. dev.      0.1942  0.2092
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean            0.377  0.3765
#>   std. dev.      0.2222  0.2458
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4152  0.4183
#>   std. dev.      0.2426   0.285
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4696  0.4459
#>   std. dev.      0.2542  0.2661
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5497  0.4677
#>   std. dev.      0.2621  0.2538
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0419  0.0292
#>   std. dev.      0.0335  0.0243
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6258  0.5026
#>   std. dev.      0.2498  0.2514
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6747  0.5472
#>   std. dev.      0.2534  0.2295
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6867  0.5731
#>   std. dev.      0.2389  0.2448
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V23
#>   mean           0.6996  0.6143
#>   std. dev.      0.2408  0.2344
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7022  0.6713
#>   std. dev.       0.237  0.2136
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6938  0.6964
#>   std. dev.      0.2312  0.2241
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7302  0.7163
#>   std. dev.      0.2273  0.2333
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7449  0.7158
#>   std. dev.      0.2584  0.2134
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7383  0.7054
#>   std. dev.      0.2468  0.1888
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6802  0.6605
#>   std. dev.      0.2203  0.2289
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0475  0.0338
#>   std. dev.      0.0362  0.0289
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean            0.579   0.606
#>   std. dev.      0.1803   0.226
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean            0.464  0.5335
#>   std. dev.       0.199  0.1945
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4073  0.4416
#>   std. dev.      0.2104   0.204
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3895  0.4302
#>   std. dev.      0.2058  0.2112
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3602  0.4268
#>   std. dev.       0.205   0.243
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3212  0.4335
#>   std. dev.      0.2354  0.2457
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.309  0.4318
#>   std. dev.      0.2355  0.2505
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3045  0.3982
#>   std. dev.      0.2198  0.2413
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3196  0.3479
#>   std. dev.      0.1782  0.2235
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean           0.3344  0.3123
#>   std. dev.      0.1729  0.2217
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0574  0.0397
#>   std. dev.      0.0373  0.0278
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean            0.312  0.3111
#>   std. dev.      0.1595  0.1945
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2919   0.271
#>   std. dev.      0.1585  0.1692
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3045  0.2426
#>   std. dev.      0.1594  0.1571
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2827  0.2006
#>   std. dev.      0.1369   0.122
#>   weight sum         69      70
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.253  0.1674
#>   std. dev.      0.1453  0.1109
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2345  0.1435
#>   std. dev.      0.1658  0.1041
#>   weight sum         69      70
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1935  0.1223
#>   std. dev.      0.1375   0.101
#>   weight sum         69      70
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1498  0.0964
#>   std. dev.      0.0937  0.0742
#>   weight sum         69      70
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1101  0.0673
#>   std. dev.      0.0679  0.0521
#>   weight sum         69      70
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0638  0.0372
#>   std. dev.      0.0358   0.033
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.077  0.0616
#>   std. dev.      0.0393  0.0453
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V50
#>   mean           0.0221  0.0182
#>   std. dev.      0.0118  0.0136
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0188  0.0125
#>   std. dev.      0.0134  0.0092
#>   weight sum         69      70
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0155  0.0107
#>   std. dev.      0.0112  0.0076
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0091
#>   std. dev.      0.0076  0.0059
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0097
#>   std. dev.      0.0088  0.0056
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0097   0.009
#>   std. dev.      0.0083  0.0053
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.008  0.0073
#>   std. dev.      0.0049  0.0047
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0071  0.0077
#>   std. dev.      0.0051   0.006
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.008  0.0066
#>   std. dev.       0.006  0.0049
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0082  0.0068
#>   std. dev.      0.0065  0.0048
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1067  0.0962
#>   std. dev.      0.0495  0.0661
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0056  0.0061
#>   std. dev.      0.0038  0.0039
#>   weight sum         69      70
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1214  0.1208
#>   std. dev.      0.0558  0.0666
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1457  0.1196
#>   std. dev.      0.0789  0.0761
#>   weight sum         69      70
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2083  0.1378
#>   std. dev.      0.1083  0.0966
#>   weight sum         69      70
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
