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
  <https://mlr3book.mlr-org.com/basics.html#learners>

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

- [`LearnerClassifNaiveBayesWeka$new()`](#method-LearnerClassifNaiveBayesWeka-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesWeka$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0352  0.0242
#>   std. dev.      0.0293  0.0158
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2497  0.1765
#>   std. dev.      0.1274  0.1228
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2887  0.1941
#>   std. dev.      0.1191  0.1221
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean            0.297  0.2082
#>   std. dev.      0.1263  0.1456
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3147  0.2537
#>   std. dev.      0.1293  0.1399
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V14
#>   mean           0.3147  0.2967
#>   std. dev.      0.1598  0.1763
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3258  0.3439
#>   std. dev.      0.1979  0.2246
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean            0.374  0.4117
#>   std. dev.      0.2181  0.2591
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean            0.413  0.4581
#>   std. dev.      0.2414  0.2859
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V18
#>   mean           0.4574   0.469
#>   std. dev.      0.2549   0.267
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5369  0.4747
#>   std. dev.       0.254  0.2427
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean            0.045  0.0326
#>   std. dev.      0.0396   0.026
#>   weight sum         73      66
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6168  0.5047
#>   std. dev.      0.2534  0.2492
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6641  0.5437
#>   std. dev.      0.2646  0.2416
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6652  0.5804
#>   std. dev.      0.2518  0.2436
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6735  0.6171
#>   std. dev.      0.2511  0.2366
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6878  0.6641
#>   std. dev.      0.2354  0.2285
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.6803  0.6888
#>   std. dev.      0.2427  0.2254
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V26
#>   mean           0.7135  0.6977
#>   std. dev.       0.234  0.2263
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V27
#>   mean           0.7224  0.6834
#>   std. dev.       0.267  0.2298
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7192  0.6752
#>   std. dev.      0.2631  0.2127
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6616  0.6435
#>   std. dev.      0.2477  0.2283
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0483  0.0369
#>   std. dev.      0.0445  0.0296
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5928  0.5969
#>   std. dev.      0.2034  0.2398
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4847   0.541
#>   std. dev.      0.2178  0.2127
#>   weight sum         73      66
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4304  0.4608
#>   std. dev.      0.2043  0.2213
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4092  0.4499
#>   std. dev.      0.1928  0.2349
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3854  0.4583
#>   std. dev.      0.2005  0.2535
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3502  0.4661
#>   std. dev.      0.2507   0.265
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3451  0.4708
#>   std. dev.      0.2582  0.2665
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3383  0.4279
#>   std. dev.      0.2372  0.2483
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3438  0.3555
#>   std. dev.      0.2058  0.2301
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3421  0.3125
#>   std. dev.      0.1847  0.2155
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0596  0.0422
#>   std. dev.      0.0542  0.0327
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3129  0.3132
#>   std. dev.      0.1635   0.197
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.283  0.2837
#>   std. dev.       0.153  0.1887
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean            0.285  0.2536
#>   std. dev.      0.1557  0.1778
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2737  0.2151
#>   std. dev.      0.1381  0.1373
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2558  0.1846
#>   std. dev.      0.1403  0.1185
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2402  0.1523
#>   std. dev.      0.1599  0.1017
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V46
#>   mean           0.1852  0.1248
#>   std. dev.      0.1343  0.1018
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1393  0.0989
#>   std. dev.      0.0861  0.0736
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1037  0.0702
#>   std. dev.      0.0656  0.0517
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0598  0.0381
#>   std. dev.      0.0348  0.0333
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0807  0.0679
#>   std. dev.      0.0546  0.0514
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.021  0.0186
#>   std. dev.      0.0119  0.0125
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0185  0.0131
#>   std. dev.      0.0137  0.0088
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0148  0.0108
#>   std. dev.      0.0101  0.0079
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0106  0.0097
#>   std. dev.      0.0067  0.0059
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0111  0.0095
#>   std. dev.      0.0081  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0092  0.0089
#>   std. dev.      0.0075  0.0054
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0082  0.0076
#>   std. dev.      0.0058  0.0051
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0075  0.0079
#>   std. dev.       0.005   0.006
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0078  0.0068
#>   std. dev.      0.0058  0.0044
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0077  0.0069
#>   std. dev.      0.0059  0.0047
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1083   0.104
#>   std. dev.      0.0446  0.0722
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0061  0.0059
#>   std. dev.      0.0044  0.0034
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean            0.129  0.1219
#>   std. dev.      0.0577  0.0701
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1513  0.1292
#>   std. dev.      0.0921  0.0892
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2153  0.1527
#>   std. dev.      0.1198  0.1113
#>   weight sum         73      66
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
