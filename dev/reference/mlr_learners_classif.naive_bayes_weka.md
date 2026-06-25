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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0349  0.0199
#>   std. dev.       0.026  0.0108
#>   weight sum         79      60
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2644  0.1603
#>   std. dev.       0.146    0.12
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V11
#>   mean            0.304   0.178
#>   std. dev.      0.1307  0.1203
#>   weight sum         79      60
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean           0.3095  0.1973
#>   std. dev.      0.1233  0.1452
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3132  0.2369
#>   std. dev.      0.1243  0.1457
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3097  0.2636
#>   std. dev.      0.1387  0.1741
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3193  0.2962
#>   std. dev.      0.1845  0.2194
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean            0.365  0.3749
#>   std. dev.      0.2045  0.2557
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3911  0.4171
#>   std. dev.       0.226  0.2896
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4306  0.4615
#>   std. dev.      0.2497   0.274
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5128  0.4881
#>   std. dev.      0.2549  0.2635
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V2
#>   mean            0.044  0.0258
#>   std. dev.      0.0336  0.0182
#>   weight sum         79      60
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6002  0.5234
#>   std. dev.      0.2614  0.2661
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6539   0.553
#>   std. dev.      0.2609  0.2545
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6623  0.5643
#>   std. dev.      0.2464  0.2559
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6726  0.5935
#>   std. dev.      0.2595   0.235
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7002  0.6274
#>   std. dev.       0.247  0.2227
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7034  0.6441
#>   std. dev.      0.2236  0.2513
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7297  0.6837
#>   std. dev.      0.2151  0.2345
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7396  0.6861
#>   std. dev.      0.2575  0.2071
#>   weight sum         79      60
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7461   0.676
#>   std. dev.      0.2453   0.206
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6796  0.6304
#>   std. dev.      0.2362  0.2307
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0488  0.0344
#>   std. dev.      0.0366   0.025
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.6102  0.5721
#>   std. dev.      0.2028  0.2252
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.5177   0.514
#>   std. dev.      0.2162  0.1932
#>   weight sum         79      60
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4513  0.4284
#>   std. dev.      0.2165  0.2095
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4101  0.4254
#>   std. dev.      0.1928  0.2171
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3735  0.4395
#>   std. dev.      0.2049  0.2371
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3394  0.4407
#>   std. dev.      0.2525  0.2391
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3153  0.4349
#>   std. dev.      0.2508    0.23
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V37
#>   mean           0.3129  0.3839
#>   std. dev.      0.2359  0.2108
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3221  0.3258
#>   std. dev.      0.2134  0.2082
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3282  0.3033
#>   std. dev.      0.2009  0.2043
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0599  0.0414
#>   std. dev.      0.0426  0.0313
#>   weight sum         79      60
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2967  0.3171
#>   std. dev.      0.1696  0.1914
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2811  0.2816
#>   std. dev.      0.1681  0.1774
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3022   0.246
#>   std. dev.      0.1825  0.1646
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.288  0.2037
#>   std. dev.      0.1426  0.1259
#>   weight sum         79      60
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2671  0.1644
#>   std. dev.      0.1499  0.0906
#>   weight sum         79      60
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2724  0.1401
#>   std. dev.       0.182  0.0833
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.216  0.1129
#>   std. dev.      0.1597  0.0941
#>   weight sum         79      60
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean            0.154  0.0884
#>   std. dev.       0.097  0.0692
#>   weight sum         79      60
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1153  0.0664
#>   std. dev.       0.068  0.0457
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0652  0.0354
#>   std. dev.      0.0364  0.0289
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0815  0.0635
#>   std. dev.      0.0511  0.0502
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0225   0.017
#>   std. dev.      0.0143  0.0129
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0197  0.0116
#>   std. dev.       0.013  0.0088
#>   weight sum         79      60
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0103
#>   std. dev.      0.0113  0.0075
#>   weight sum         79      60
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0116   0.009
#>   std. dev.      0.0083  0.0061
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0096
#>   std. dev.      0.0081  0.0058
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102   0.009
#>   std. dev.      0.0086  0.0052
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0078
#>   std. dev.      0.0066  0.0051
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0086
#>   std. dev.      0.0062  0.0062
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0064
#>   std. dev.       0.008  0.0047
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0084  0.0072
#>   std. dev.      0.0067  0.0052
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1157  0.1047
#>   std. dev.      0.0501  0.0767
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0049  0.0036
#>   weight sum         79      60
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1295  0.1154
#>   std. dev.      0.0535  0.0753
#>   weight sum         79      60
#>   precision      0.0029  0.0029
#> 
#> V8
#>   mean           0.1579  0.1189
#>   std. dev.      0.0836  0.0878
#>   weight sum         79      60
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2255  0.1398
#>   std. dev.      0.1227  0.1102
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
