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
#>   mean           0.0372  0.0212
#>   std. dev.      0.0297  0.0126
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2537  0.1529
#>   std. dev.      0.1257  0.1139
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2883  0.1706
#>   std. dev.      0.1121  0.1172
#>   weight sum         74      65
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.2981  0.1933
#>   std. dev.      0.1259  0.1436
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3225  0.2173
#>   std. dev.      0.1361  0.1441
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.338  0.2538
#>   std. dev.      0.1686  0.1639
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3522  0.2908
#>   std. dev.      0.2039  0.2114
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.4034  0.3628
#>   std. dev.      0.2194  0.2471
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4431  0.4043
#>   std. dev.      0.2441  0.2839
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4818  0.4409
#>   std. dev.      0.2613  0.2673
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean            0.561  0.4849
#>   std. dev.      0.2549  0.2538
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0472  0.0277
#>   std. dev.      0.0387  0.0189
#>   weight sum         74      65
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6357  0.5238
#>   std. dev.       0.253  0.2524
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6768  0.5542
#>   std. dev.      0.2541  0.2491
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.666  0.5765
#>   std. dev.      0.2492  0.2615
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6632  0.6339
#>   std. dev.      0.2649  0.2294
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6647  0.6668
#>   std. dev.      0.2556  0.2234
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6543   0.674
#>   std. dev.      0.2544  0.2404
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean            0.675  0.6995
#>   std. dev.      0.2464  0.2337
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6728  0.6908
#>   std. dev.      0.2772  0.2216
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.6631  0.6692
#>   std. dev.      0.2683  0.2199
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6131  0.6438
#>   std. dev.       0.256  0.2496
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0549  0.0357
#>   std. dev.      0.0504  0.0283
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5615  0.6076
#>   std. dev.      0.2137  0.2416
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4538  0.5511
#>   std. dev.      0.2189   0.206
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4064  0.4636
#>   std. dev.      0.2109  0.2166
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3938  0.4722
#>   std. dev.      0.1968  0.2137
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3757  0.4725
#>   std. dev.      0.2119  0.2494
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3494  0.4506
#>   std. dev.      0.2521  0.2646
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3286  0.4476
#>   std. dev.      0.2611  0.2587
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3273  0.4187
#>   std. dev.      0.2384  0.2357
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3425  0.3576
#>   std. dev.      0.2114  0.2244
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3431  0.3224
#>   std. dev.      0.1831  0.2095
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V4
#>   mean             0.07   0.043
#>   std. dev.      0.0624  0.0328
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3119   0.316
#>   std. dev.      0.1653  0.1919
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2923  0.2832
#>   std. dev.       0.162   0.173
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2871  0.2446
#>   std. dev.      0.1556  0.1681
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2612  0.2001
#>   std. dev.      0.1332  0.1394
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2365  0.1697
#>   std. dev.      0.1386  0.1137
#>   weight sum         74      65
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2362  0.1402
#>   std. dev.      0.1705  0.0993
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1931  0.1152
#>   std. dev.       0.149  0.0881
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1427  0.0891
#>   std. dev.      0.0969  0.0596
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1074  0.0628
#>   std. dev.      0.0707  0.0379
#>   weight sum         74      65
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0631  0.0333
#>   std. dev.      0.0367  0.0235
#>   weight sum         74      65
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0867  0.0644
#>   std. dev.      0.0657  0.0494
#>   weight sum         74      65
#>   precision      0.0031  0.0031
#> 
#> V50
#>   mean           0.0221  0.0164
#>   std. dev.      0.0136  0.0094
#>   weight sum         74      65
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0182  0.0119
#>   std. dev.      0.0135  0.0084
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0153  0.0101
#>   std. dev.      0.0104  0.0067
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0096
#>   std. dev.      0.0079  0.0061
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0094
#>   std. dev.      0.0093  0.0054
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0083
#>   std. dev.      0.0091  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0095  0.0073
#>   std. dev.      0.0067  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0085  0.0079
#>   std. dev.      0.0065  0.0058
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0062
#>   std. dev.      0.0079   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0094  0.0071
#>   std. dev.      0.0077  0.0056
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1129  0.0939
#>   std. dev.      0.0486  0.0632
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0076  0.0058
#>   std. dev.      0.0066  0.0036
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1339   0.111
#>   std. dev.      0.0614  0.0604
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1507  0.1102
#>   std. dev.      0.0913  0.0772
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2159  0.1336
#>   std. dev.      0.1197  0.0975
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
