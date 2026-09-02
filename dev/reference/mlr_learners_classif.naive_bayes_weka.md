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
#>   mean           0.0312  0.0239
#>   std. dev.      0.0234  0.0159
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2241   0.171
#>   std. dev.       0.119  0.1195
#>   weight sum         70      69
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2705  0.1874
#>   std. dev.      0.1135  0.1168
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean           0.2927  0.1968
#>   std. dev.      0.1218  0.1354
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3104  0.2372
#>   std. dev.      0.1272  0.1334
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.305  0.2848
#>   std. dev.      0.1413   0.165
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3175  0.3263
#>   std. dev.      0.1739  0.2278
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3819  0.3931
#>   std. dev.      0.1973   0.252
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V17
#>   mean            0.424  0.4388
#>   std. dev.      0.2357  0.2865
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4714   0.486
#>   std. dev.      0.2555  0.2657
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5455  0.5177
#>   std. dev.      0.2655  0.2563
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0385   0.033
#>   std. dev.      0.0314  0.0256
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6164  0.5519
#>   std. dev.      0.2588  0.2614
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6637  0.5974
#>   std. dev.      0.2537  0.2494
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V22
#>   mean           0.6893  0.6196
#>   std. dev.      0.2434  0.2583
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.7137  0.6478
#>   std. dev.      0.2287  0.2468
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.7239  0.6736
#>   std. dev.      0.2124  0.2264
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.7122  0.6727
#>   std. dev.      0.2238  0.2319
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7237   0.696
#>   std. dev.       0.228  0.2275
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7295  0.6905
#>   std. dev.      0.2507  0.2095
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7209  0.6569
#>   std. dev.       0.258  0.2133
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6533  0.6036
#>   std. dev.      0.2459  0.2404
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0456  0.0394
#>   std. dev.       0.037  0.0313
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5744  0.5605
#>   std. dev.      0.2097  0.2292
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4781   0.509
#>   std. dev.      0.2267  0.1873
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4346  0.4318
#>   std. dev.      0.2021  0.2028
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3925  0.4243
#>   std. dev.       0.163   0.204
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V34
#>   mean           0.3536  0.4069
#>   std. dev.      0.1774  0.2276
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V35
#>   mean           0.3141  0.4136
#>   std. dev.      0.2195  0.2291
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.2992    0.44
#>   std. dev.      0.2333  0.2444
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3091  0.4228
#>   std. dev.      0.2077  0.2368
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3204  0.3582
#>   std. dev.      0.1802  0.2286
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.325  0.3278
#>   std. dev.      0.1632  0.2297
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0587  0.0443
#>   std. dev.      0.0428  0.0326
#>   weight sum         70      69
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3011  0.3342
#>   std. dev.      0.1461  0.1992
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2938   0.292
#>   std. dev.      0.1532  0.1817
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3042   0.251
#>   std. dev.      0.1696  0.1747
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2791  0.2068
#>   std. dev.       0.138  0.1418
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.239  0.1666
#>   std. dev.      0.1422  0.1177
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2287    0.14
#>   std. dev.      0.1676  0.1028
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean            0.189  0.1179
#>   std. dev.      0.1489  0.1006
#>   weight sum         70      69
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1454  0.0986
#>   std. dev.      0.0942   0.074
#>   weight sum         70      69
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1082  0.0741
#>   std. dev.      0.0705  0.0534
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean            0.062   0.041
#>   std. dev.       0.036  0.0343
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0806  0.0656
#>   std. dev.      0.0534   0.049
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0217  0.0189
#>   std. dev.      0.0139  0.0132
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0124
#>   std. dev.       0.014  0.0084
#>   weight sum         70      69
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0155  0.0111
#>   std. dev.      0.0105  0.0073
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0102
#>   std. dev.      0.0074  0.0066
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0122  0.0095
#>   std. dev.      0.0083  0.0055
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0093  0.0088
#>   std. dev.      0.0081  0.0052
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0077
#>   std. dev.      0.0068  0.0048
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0079
#>   std. dev.      0.0061  0.0061
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0072
#>   std. dev.      0.0083  0.0051
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0069
#>   std. dev.      0.0064  0.0047
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1108  0.0965
#>   std. dev.      0.0507  0.0633
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0063  0.0063
#>   std. dev.      0.0045  0.0039
#>   weight sum         70      69
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1281  0.1163
#>   std. dev.      0.0485  0.0675
#>   weight sum         70      69
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean            0.142  0.1248
#>   std. dev.      0.0789  0.0821
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.1881  0.1498
#>   std. dev.      0.1118  0.1049
#>   weight sum         70      69
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1449275 
```
