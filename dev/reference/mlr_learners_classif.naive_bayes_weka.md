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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean            0.032  0.0236
#>   std. dev.      0.0247  0.0153
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2412  0.1613
#>   std. dev.      0.1338  0.1184
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2785  0.1845
#>   std. dev.      0.1211  0.1216
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2879  0.2047
#>   std. dev.      0.1186  0.1447
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3115  0.2373
#>   std. dev.      0.1107   0.147
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V14
#>   mean            0.316  0.2801
#>   std. dev.      0.1527   0.175
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3266  0.3259
#>   std. dev.      0.1883  0.2319
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3683  0.3906
#>   std. dev.      0.2104  0.2696
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4034  0.4291
#>   std. dev.       0.239   0.295
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4428  0.4543
#>   std. dev.      0.2532  0.2833
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean            0.525  0.4681
#>   std. dev.      0.2519  0.2654
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0438  0.0306
#>   std. dev.       0.037  0.0253
#>   weight sum         70      69
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5955  0.5053
#>   std. dev.      0.2574  0.2571
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6467  0.5293
#>   std. dev.      0.2639  0.2394
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6638  0.5589
#>   std. dev.      0.2529  0.2492
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6838  0.6039
#>   std. dev.      0.2366  0.2407
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V24
#>   mean            0.696  0.6461
#>   std. dev.      0.2292   0.231
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V25
#>   mean           0.6738  0.6755
#>   std. dev.      0.2363  0.2505
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean            0.693  0.6946
#>   std. dev.      0.2461  0.2474
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7038  0.6945
#>   std. dev.      0.2793  0.2252
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7192  0.6852
#>   std. dev.      0.2781  0.2002
#>   weight sum         70      69
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6775  0.6461
#>   std. dev.      0.2435  0.2149
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V3
#>   mean            0.049  0.0354
#>   std. dev.      0.0453  0.0296
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5947  0.5862
#>   std. dev.      0.2039   0.212
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V31
#>   mean           0.4911  0.5242
#>   std. dev.        0.22  0.1918
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4262   0.428
#>   std. dev.      0.2062  0.2156
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4021  0.4139
#>   std. dev.      0.1851  0.2068
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3672  0.4364
#>   std. dev.      0.1989  0.2495
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3301  0.4552
#>   std. dev.      0.2372  0.2653
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean            0.307  0.4684
#>   std. dev.      0.2421  0.2615
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3119  0.4107
#>   std. dev.      0.2297  0.2428
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3191  0.3419
#>   std. dev.         0.2  0.2156
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.319  0.3011
#>   std. dev.      0.1747  0.1994
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0626  0.0401
#>   std. dev.      0.0562  0.0316
#>   weight sum         70      69
#>   precision      0.0035  0.0035
#> 
#> V40
#>   mean           0.3014  0.3066
#>   std. dev.      0.1638   0.172
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2901  0.2789
#>   std. dev.      0.1647  0.1679
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.2922  0.2512
#>   std. dev.      0.1669  0.1581
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2597  0.2093
#>   std. dev.       0.131  0.1226
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2355  0.1664
#>   std. dev.      0.1365  0.0898
#>   weight sum         70      69
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2393  0.1393
#>   std. dev.      0.1679  0.0812
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1935  0.1185
#>   std. dev.       0.149  0.0905
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean            0.147  0.0978
#>   std. dev.      0.0969  0.0676
#>   weight sum         70      69
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1103  0.0718
#>   std. dev.      0.0706  0.0497
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0634  0.0393
#>   std. dev.      0.0362  0.0322
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0842  0.0619
#>   std. dev.      0.0569  0.0479
#>   weight sum         70      69
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0211   0.018
#>   std. dev.      0.0111  0.0139
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0183  0.0121
#>   std. dev.      0.0138  0.0088
#>   weight sum         70      69
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0102
#>   std. dev.      0.0115  0.0072
#>   weight sum         70      69
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0108  0.0094
#>   std. dev.      0.0069  0.0063
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0114  0.0091
#>   std. dev.      0.0083  0.0055
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0084
#>   std. dev.      0.0078  0.0054
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0069
#>   std. dev.      0.0058  0.0046
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0073  0.0076
#>   std. dev.      0.0052  0.0059
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0067
#>   std. dev.      0.0065  0.0047
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0085  0.0068
#>   std. dev.      0.0064   0.005
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1063   0.098
#>   std. dev.      0.0547  0.0671
#>   weight sum         70      69
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0064   0.006
#>   std. dev.      0.0048  0.0036
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1244   0.119
#>   std. dev.      0.0604  0.0673
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1471  0.1261
#>   std. dev.      0.0914  0.0843
#>   weight sum         70      69
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2058  0.1467
#>   std. dev.      0.1191  0.1042
#>   weight sum         70      69
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
