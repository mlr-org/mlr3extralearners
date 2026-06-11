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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0354  0.0242
#>   std. dev.      0.0279  0.0164
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2519  0.1728
#>   std. dev.      0.1452   0.122
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2871  0.1875
#>   std. dev.      0.1315  0.1201
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2955  0.2106
#>   std. dev.      0.1189  0.1411
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3108   0.243
#>   std. dev.      0.1264  0.1406
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3171  0.2777
#>   std. dev.      0.1693  0.1655
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3189  0.3118
#>   std. dev.      0.2009  0.2166
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean            0.371  0.3849
#>   std. dev.      0.2183   0.253
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4081  0.4292
#>   std. dev.      0.2408  0.2872
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.453   0.462
#>   std. dev.      0.2543  0.2645
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5352  0.4669
#>   std. dev.      0.2531  0.2515
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0467  0.0312
#>   std. dev.      0.0417  0.0253
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6106  0.4918
#>   std. dev.      0.2605  0.2456
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6536   0.539
#>   std. dev.      0.2603  0.2357
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6617  0.5581
#>   std. dev.      0.2372  0.2591
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6808  0.5996
#>   std. dev.      0.2515  0.2331
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6931  0.6502
#>   std. dev.      0.2507   0.228
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6911  0.6703
#>   std. dev.      0.2353  0.2527
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7127  0.6798
#>   std. dev.      0.2174  0.2447
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7106  0.6759
#>   std. dev.      0.2522  0.2216
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7166   0.674
#>   std. dev.      0.2518  0.2033
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6582  0.6424
#>   std. dev.      0.2384  0.2307
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0535   0.037
#>   std. dev.      0.0494  0.0303
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.6037   0.576
#>   std. dev.      0.2076  0.2275
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.5094  0.5279
#>   std. dev.      0.2279  0.2065
#>   weight sum         76      63
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4348  0.4529
#>   std. dev.      0.2269  0.2154
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.398  0.4374
#>   std. dev.       0.211  0.2172
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3799  0.4419
#>   std. dev.       0.215  0.2492
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3591  0.4541
#>   std. dev.      0.2414  0.2483
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3329  0.4561
#>   std. dev.      0.2524  0.2486
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3296  0.4113
#>   std. dev.      0.2261  0.2386
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3337  0.3505
#>   std. dev.       0.199  0.2333
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3358  0.3275
#>   std. dev.      0.1694  0.2316
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0698  0.0442
#>   std. dev.      0.0607  0.0335
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3111  0.3406
#>   std. dev.      0.1597  0.2099
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3116  0.3028
#>   std. dev.      0.1691  0.1881
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3153  0.2664
#>   std. dev.      0.1713  0.1706
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2905  0.2262
#>   std. dev.      0.1424  0.1378
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2543  0.1888
#>   std. dev.      0.1411  0.1214
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2457  0.1498
#>   std. dev.      0.1768  0.1086
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2047  0.1224
#>   std. dev.      0.1662  0.1064
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1536   0.099
#>   std. dev.      0.1024  0.0777
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1166  0.0717
#>   std. dev.      0.0687  0.0533
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0659  0.0405
#>   std. dev.      0.0389  0.0341
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0896  0.0643
#>   std. dev.      0.0644  0.0512
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0237  0.0178
#>   std. dev.      0.0154  0.0139
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0198  0.0125
#>   std. dev.       0.015  0.0083
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0172  0.0102
#>   std. dev.      0.0115  0.0065
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0131  0.0094
#>   std. dev.       0.008   0.006
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0095
#>   std. dev.      0.0087  0.0054
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0094  0.0084
#>   std. dev.      0.0083  0.0055
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0096  0.0075
#>   std. dev.      0.0072  0.0053
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0082
#>   std. dev.      0.0059  0.0063
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0073
#>   std. dev.       0.008  0.0048
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0073
#>   std. dev.      0.0061  0.0051
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1132   0.105
#>   std. dev.      0.0528  0.0737
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0061
#>   std. dev.      0.0049  0.0037
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1269  0.1239
#>   std. dev.      0.0558  0.0737
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean             0.15   0.135
#>   std. dev.      0.0906  0.0865
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2133  0.1555
#>   std. dev.       0.133  0.1113
#>   weight sum         76      63
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
