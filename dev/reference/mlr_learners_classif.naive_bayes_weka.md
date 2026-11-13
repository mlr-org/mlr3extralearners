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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0355  0.0226
#>   std. dev.      0.0279  0.0144
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2473    0.16
#>   std. dev.      0.1286  0.1043
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2913  0.1825
#>   std. dev.      0.1204  0.1093
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3058  0.2037
#>   std. dev.      0.1261  0.1261
#>   weight sum         78      61
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean             0.32  0.2376
#>   std. dev.      0.1393  0.1346
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3298   0.268
#>   std. dev.      0.1713  0.1555
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3348  0.3021
#>   std. dev.      0.1998  0.2051
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3794  0.3694
#>   std. dev.      0.2158  0.2491
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4156  0.4123
#>   std. dev.       0.242   0.286
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4588   0.449
#>   std. dev.      0.2567  0.2733
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5453  0.4761
#>   std. dev.      0.2508  0.2669
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0448  0.0269
#>   std. dev.      0.0385  0.0192
#>   weight sum         78      61
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6293  0.5291
#>   std. dev.      0.2446   0.268
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.678  0.5664
#>   std. dev.      0.2356  0.2464
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.685  0.5739
#>   std. dev.      0.2272  0.2433
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V23
#>   mean           0.6833  0.6123
#>   std. dev.      0.2425  0.2327
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V24
#>   mean           0.6988  0.6651
#>   std. dev.      0.2348  0.1971
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6916  0.7012
#>   std. dev.      0.2413  0.2148
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7171  0.7322
#>   std. dev.      0.2338  0.2285
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7258  0.7168
#>   std. dev.      0.2598  0.2128
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7133  0.6884
#>   std. dev.      0.2599  0.2061
#>   weight sum         78      61
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6374  0.6368
#>   std. dev.      0.2557  0.2278
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0518  0.0329
#>   std. dev.      0.0467  0.0242
#>   weight sum         78      61
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5752   0.556
#>   std. dev.      0.2139  0.2314
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4784  0.5088
#>   std. dev.      0.2259  0.2049
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4283  0.4408
#>   std. dev.      0.2243   0.229
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3964  0.4156
#>   std. dev.      0.2042  0.2157
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3635  0.4257
#>   std. dev.      0.2163  0.2304
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3354  0.4336
#>   std. dev.      0.2481  0.2435
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3102  0.4301
#>   std. dev.      0.2475  0.2466
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.314  0.3661
#>   std. dev.      0.2226  0.2354
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3341  0.3102
#>   std. dev.      0.2032   0.207
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3397  0.2867
#>   std. dev.      0.1844  0.1757
#>   weight sum         78      61
#>   precision      0.0061  0.0061
#> 
#> V4
#>   mean           0.0661  0.0408
#>   std. dev.      0.0595  0.0295
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3088  0.2718
#>   std. dev.      0.1629  0.1556
#>   weight sum         78      61
#>   precision      0.0058  0.0058
#> 
#> V41
#>   mean           0.2966  0.2451
#>   std. dev.      0.1695  0.1389
#>   weight sum         78      61
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean           0.3068  0.2187
#>   std. dev.      0.1608  0.1336
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2746  0.2028
#>   std. dev.      0.1285  0.1129
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> V44
#>   mean           0.2457  0.1682
#>   std. dev.      0.1431  0.0984
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2402  0.1268
#>   std. dev.      0.1721  0.0775
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1909  0.1052
#>   std. dev.      0.1438  0.0679
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1433    0.08
#>   std. dev.      0.0844  0.0487
#>   weight sum         78      61
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1078  0.0568
#>   std. dev.      0.0622  0.0355
#>   weight sum         78      61
#>   precision       0.002   0.002
#> 
#> V49
#>   mean           0.0617  0.0329
#>   std. dev.      0.0335  0.0216
#>   weight sum         78      61
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean             0.09  0.0603
#>   std. dev.      0.0666   0.049
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0222  0.0177
#>   std. dev.      0.0143  0.0122
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.019  0.0108
#>   std. dev.      0.0119  0.0069
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0151    0.01
#>   std. dev.      0.0088  0.0065
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0111  0.0086
#>   std. dev.       0.007  0.0052
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0117  0.0086
#>   std. dev.      0.0082  0.0055
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0081
#>   std. dev.      0.0087  0.0047
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0069
#>   std. dev.      0.0067  0.0046
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0072
#>   std. dev.      0.0059  0.0049
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0058
#>   std. dev.      0.0079   0.004
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083  0.0061
#>   std. dev.      0.0067  0.0039
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1093  0.0994
#>   std. dev.      0.0505   0.071
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0054
#>   std. dev.      0.0064  0.0032
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1269  0.1138
#>   std. dev.      0.0598  0.0665
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1398  0.1138
#>   std. dev.      0.0858  0.0765
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2067  0.1429
#>   std. dev.       0.116  0.0951
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
