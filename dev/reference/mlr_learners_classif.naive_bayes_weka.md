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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0331  0.0232
#>   std. dev.      0.0241  0.0154
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2508  0.1614
#>   std. dev.      0.1253  0.1111
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2857  0.1776
#>   std. dev.      0.1136  0.1162
#>   weight sum         74      65
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean            0.309  0.1935
#>   std. dev.      0.1204  0.1398
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3271  0.2228
#>   std. dev.      0.1342  0.1478
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3386  0.2716
#>   std. dev.      0.1761  0.1841
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3435  0.3067
#>   std. dev.      0.2089  0.2441
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3914  0.3695
#>   std. dev.      0.2205  0.2777
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4286  0.4173
#>   std. dev.      0.2465  0.3001
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4704  0.4536
#>   std. dev.      0.2569  0.2742
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5472  0.4643
#>   std. dev.      0.2636  0.2583
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0448  0.0304
#>   std. dev.      0.0343   0.026
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6171  0.4949
#>   std. dev.      0.2721   0.251
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6602   0.535
#>   std. dev.      0.2718  0.2407
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6807  0.5625
#>   std. dev.      0.2532  0.2603
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean           0.6926  0.6013
#>   std. dev.      0.2424   0.248
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7035   0.644
#>   std. dev.      0.2311  0.2379
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6947  0.6691
#>   std. dev.      0.2295  0.2653
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7158  0.6974
#>   std. dev.      0.2225  0.2522
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7222  0.6968
#>   std. dev.      0.2533   0.216
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean            0.709  0.6769
#>   std. dev.      0.2538  0.2111
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6367  0.6387
#>   std. dev.      0.2444  0.2168
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0511  0.0361
#>   std. dev.      0.0396  0.0294
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean            0.572  0.5786
#>   std. dev.      0.2208  0.2258
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4868  0.5359
#>   std. dev.      0.2311  0.2028
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4306  0.4603
#>   std. dev.      0.2232  0.2109
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3902  0.4402
#>   std. dev.      0.1982  0.2193
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3531  0.4471
#>   std. dev.      0.2066    0.25
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3278  0.4652
#>   std. dev.      0.2406  0.2547
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3127  0.4622
#>   std. dev.      0.2488  0.2521
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3156   0.409
#>   std. dev.       0.224  0.2247
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3288  0.3354
#>   std. dev.      0.1928  0.2049
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3319  0.2941
#>   std. dev.      0.1701  0.2036
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.067  0.0398
#>   std. dev.      0.0476  0.0284
#>   weight sum         74      65
#>   precision       0.002   0.002
#> 
#> V40
#>   mean            0.299  0.2975
#>   std. dev.      0.1666   0.178
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2935  0.2629
#>   std. dev.      0.1729  0.1434
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3034  0.2403
#>   std. dev.      0.1592  0.1374
#>   weight sum         74      65
#>   precision      0.0048  0.0048
#> 
#> V43
#>   mean           0.2775  0.2059
#>   std. dev.      0.1348  0.1025
#>   weight sum         74      65
#>   precision      0.0043  0.0043
#> 
#> V44
#>   mean            0.249  0.1723
#>   std. dev.      0.1485  0.0897
#>   weight sum         74      65
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2462  0.1365
#>   std. dev.      0.1745  0.0836
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2023  0.1072
#>   std. dev.      0.1481  0.0757
#>   weight sum         74      65
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1469  0.0896
#>   std. dev.      0.0946  0.0576
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1122  0.0679
#>   std. dev.      0.0649  0.0451
#>   weight sum         74      65
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0653  0.0381
#>   std. dev.      0.0368  0.0272
#>   weight sum         74      65
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0884  0.0603
#>   std. dev.      0.0563  0.0432
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0237  0.0162
#>   std. dev.      0.0153  0.0111
#>   weight sum         74      65
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0192  0.0103
#>   std. dev.      0.0116  0.0065
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0163  0.0094
#>   std. dev.      0.0096  0.0057
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0117  0.0092
#>   std. dev.      0.0074   0.006
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0095
#>   std. dev.      0.0088   0.005
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0082
#>   std. dev.      0.0087  0.0049
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0096  0.0074
#>   std. dev.      0.0068  0.0048
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0084  0.0072
#>   std. dev.      0.0061  0.0055
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0061
#>   std. dev.      0.0082  0.0043
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0092  0.0065
#>   std. dev.      0.0077  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1147  0.0979
#>   std. dev.      0.0531  0.0685
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072  0.0054
#>   std. dev.      0.0066  0.0034
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1334  0.1125
#>   std. dev.      0.0556   0.065
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1575  0.1152
#>   std. dev.      0.0815  0.0805
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2154  0.1404
#>   std. dev.      0.1212  0.1037
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
