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
#>   mean           0.0358   0.023
#>   std. dev.      0.0272  0.0157
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2532  0.1655
#>   std. dev.      0.1445  0.1201
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2977  0.1814
#>   std. dev.      0.1353  0.1201
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.316   0.204
#>   std. dev.      0.1266  0.1428
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3211   0.235
#>   std. dev.      0.1309  0.1448
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3142  0.2771
#>   std. dev.      0.1468  0.1701
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V15
#>   mean            0.331  0.3167
#>   std. dev.      0.1856  0.2233
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3839  0.3835
#>   std. dev.      0.2073  0.2616
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4203  0.4326
#>   std. dev.      0.2474  0.3003
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4595  0.4671
#>   std. dev.      0.2689  0.2744
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5487  0.4757
#>   std. dev.      0.2577  0.2528
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V2
#>   mean           0.0484  0.0289
#>   std. dev.      0.0345  0.0192
#>   weight sum         70      69
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean            0.632  0.4948
#>   std. dev.      0.2428  0.2468
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6897  0.5392
#>   std. dev.      0.2311  0.2393
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6895  0.5683
#>   std. dev.      0.2265   0.253
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6805  0.6268
#>   std. dev.       0.247  0.2271
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6844  0.6638
#>   std. dev.      0.2455  0.2252
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.6658  0.6712
#>   std. dev.      0.2476  0.2572
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6892  0.7012
#>   std. dev.      0.2349  0.2315
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6995  0.6991
#>   std. dev.      0.2621  0.2021
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7036  0.6785
#>   std. dev.      0.2593  0.2044
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V29
#>   mean           0.6368  0.6331
#>   std. dev.      0.2547  0.2418
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0532  0.0366
#>   std. dev.      0.0363  0.0266
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5675   0.572
#>   std. dev.      0.2208  0.2472
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4614  0.5211
#>   std. dev.      0.2179  0.2071
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4082  0.4431
#>   std. dev.      0.2003  0.2093
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3933  0.4342
#>   std. dev.      0.1864  0.2155
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3775   0.427
#>   std. dev.      0.1971   0.243
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3488  0.4255
#>   std. dev.      0.2463  0.2549
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3207  0.4313
#>   std. dev.      0.2485   0.257
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3148  0.4106
#>   std. dev.      0.2184  0.2357
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3369  0.3546
#>   std. dev.      0.2019   0.229
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3403  0.3116
#>   std. dev.      0.1812   0.225
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0629  0.0404
#>   std. dev.      0.0427    0.03
#>   weight sum         70      69
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3019  0.3122
#>   std. dev.      0.1538  0.2052
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean             0.29  0.2867
#>   std. dev.      0.1592  0.1959
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3081  0.2637
#>   std. dev.      0.1731  0.1802
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2891  0.2212
#>   std. dev.      0.1456  0.1401
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2454  0.1777
#>   std. dev.       0.139  0.1161
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2377  0.1483
#>   std. dev.      0.1726  0.1057
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1946  0.1208
#>   std. dev.       0.155  0.1042
#>   weight sum         70      69
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1415  0.0984
#>   std. dev.      0.0981  0.0745
#>   weight sum         70      69
#>   precision      0.0042  0.0042
#> 
#> V48
#>   mean           0.1057  0.0719
#>   std. dev.      0.0677  0.0507
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0626  0.0381
#>   std. dev.      0.0367  0.0312
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0865  0.0609
#>   std. dev.      0.0532  0.0462
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0219  0.0175
#>   std. dev.      0.0138  0.0124
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0198  0.0121
#>   std. dev.      0.0155  0.0093
#>   weight sum         70      69
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0159  0.0107
#>   std. dev.      0.0117  0.0077
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0097
#>   std. dev.       0.007  0.0058
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0128  0.0092
#>   std. dev.      0.0085  0.0046
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093  0.0084
#>   std. dev.      0.0067  0.0049
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V56
#>   mean           0.0088  0.0077
#>   std. dev.      0.0056  0.0052
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0075  0.0077
#>   std. dev.      0.0055  0.0059
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0084  0.0061
#>   std. dev.      0.0058  0.0047
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0088  0.0067
#>   std. dev.      0.0064  0.0045
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1142  0.0939
#>   std. dev.      0.0528  0.0559
#>   weight sum         70      69
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0072   0.006
#>   std. dev.      0.0062  0.0038
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1295   0.113
#>   std. dev.      0.0586  0.0563
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1591  0.1214
#>   std. dev.       0.089  0.0805
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2166  0.1442
#>   std. dev.      0.1275  0.1026
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
