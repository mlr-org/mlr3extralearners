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
#>   mean           0.0347  0.0233
#>   std. dev.      0.0256  0.0161
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2609  0.1569
#>   std. dev.      0.1539  0.1088
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2913  0.1723
#>   std. dev.      0.1354  0.1079
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2891   0.185
#>   std. dev.      0.1247  0.1296
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3028  0.2267
#>   std. dev.      0.1236  0.1377
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3224  0.2659
#>   std. dev.      0.1569  0.1659
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3381  0.2998
#>   std. dev.      0.1896  0.2112
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3854  0.3644
#>   std. dev.      0.2027  0.2472
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4149  0.4165
#>   std. dev.       0.229  0.2887
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4639  0.4588
#>   std. dev.      0.2545  0.2704
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5573  0.4754
#>   std. dev.      0.2528  0.2535
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0436  0.0269
#>   std. dev.      0.0313  0.0165
#>   weight sum         74      65
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.6573  0.5092
#>   std. dev.      0.2422  0.2576
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.7102  0.5475
#>   std. dev.      0.2393  0.2444
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6981  0.5746
#>   std. dev.      0.2392  0.2488
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6851  0.6204
#>   std. dev.      0.2741  0.2406
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6871  0.6462
#>   std. dev.      0.2702  0.2358
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6785  0.6462
#>   std. dev.      0.2509  0.2528
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7074  0.6757
#>   std. dev.      0.2268  0.2371
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.6985  0.6846
#>   std. dev.      0.2691  0.2205
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.6931  0.6776
#>   std. dev.      0.2561  0.1976
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6368  0.6415
#>   std. dev.      0.2306  0.2204
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0524   0.034
#>   std. dev.      0.0388  0.0241
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5788  0.5842
#>   std. dev.      0.1954  0.2252
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4681  0.5159
#>   std. dev.      0.2135  0.2065
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V32
#>   mean            0.415  0.4306
#>   std. dev.       0.221  0.2112
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4014  0.4288
#>   std. dev.      0.2042  0.2055
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3775  0.4381
#>   std. dev.      0.2212  0.2335
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3499  0.4404
#>   std. dev.      0.2574  0.2497
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3301  0.4401
#>   std. dev.      0.2519  0.2503
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3308  0.3913
#>   std. dev.      0.2347  0.2263
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3562  0.3409
#>   std. dev.       0.213  0.2129
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3589  0.3097
#>   std. dev.      0.1896  0.2151
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0659  0.0389
#>   std. dev.      0.0446  0.0286
#>   weight sum         74      65
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3183  0.3094
#>   std. dev.      0.1619  0.1931
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3003  0.2689
#>   std. dev.      0.1605  0.1818
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3061  0.2419
#>   std. dev.      0.1634  0.1694
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2785  0.2178
#>   std. dev.      0.1393  0.1433
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2575  0.1797
#>   std. dev.      0.1428  0.1148
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2536  0.1408
#>   std. dev.      0.1817  0.0999
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2032  0.1143
#>   std. dev.       0.156  0.0996
#>   weight sum         74      65
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1498  0.0901
#>   std. dev.      0.0984  0.0707
#>   weight sum         74      65
#>   precision      0.0042  0.0042
#> 
#> V48
#>   mean           0.1125  0.0673
#>   std. dev.      0.0719  0.0494
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0644  0.0372
#>   std. dev.      0.0382  0.0313
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0848  0.0589
#>   std. dev.      0.0537  0.0443
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0233   0.019
#>   std. dev.      0.0137  0.0141
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0124
#>   std. dev.      0.0139   0.009
#>   weight sum         74      65
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0162  0.0101
#>   std. dev.      0.0113  0.0072
#>   weight sum         74      65
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0122  0.0091
#>   std. dev.      0.0083  0.0061
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0098
#>   std. dev.      0.0089  0.0055
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0107  0.0087
#>   std. dev.      0.0092  0.0052
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0098  0.0073
#>   std. dev.      0.0072  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0089   0.008
#>   std. dev.      0.0064  0.0055
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0099  0.0071
#>   std. dev.      0.0084  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0092  0.0073
#>   std. dev.       0.007  0.0057
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.108   0.092
#>   std. dev.      0.0493  0.0584
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V60
#>   mean           0.0069  0.0066
#>   std. dev.      0.0049  0.0038
#>   weight sum         74      65
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1279  0.1128
#>   std. dev.      0.0629  0.0627
#>   weight sum         74      65
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1592  0.1198
#>   std. dev.      0.0961  0.0764
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2259  0.1364
#>   std. dev.      0.1395  0.0952
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
