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
#>   mean           0.0339  0.0238
#>   std. dev.      0.0284   0.016
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2597  0.1696
#>   std. dev.      0.1431  0.1064
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2918  0.1841
#>   std. dev.      0.1332  0.1036
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2913  0.1925
#>   std. dev.      0.1314  0.1233
#>   weight sum         72      67
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3131  0.2274
#>   std. dev.      0.1424  0.1324
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3298  0.2876
#>   std. dev.      0.1665  0.1523
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3495  0.3373
#>   std. dev.      0.1983  0.2164
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.4037  0.4102
#>   std. dev.      0.2181  0.2504
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4359  0.4587
#>   std. dev.      0.2494  0.2964
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4734  0.4861
#>   std. dev.      0.2653  0.2738
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5578  0.4852
#>   std. dev.       0.251  0.2658
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0455  0.0311
#>   std. dev.       0.039  0.0259
#>   weight sum         72      67
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6316  0.5234
#>   std. dev.      0.2511  0.2612
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.6789  0.5697
#>   std. dev.      0.2549  0.2534
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6686  0.6062
#>   std. dev.      0.2555  0.2394
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V23
#>   mean           0.6609  0.6416
#>   std. dev.      0.2677  0.2241
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.667  0.6737
#>   std. dev.      0.2525  0.2103
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6531  0.6922
#>   std. dev.        0.25  0.2264
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V26
#>   mean            0.672  0.7281
#>   std. dev.      0.2494  0.2146
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6696  0.7213
#>   std. dev.      0.2798  0.1942
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6857  0.6775
#>   std. dev.       0.276  0.1982
#>   weight sum         72      67
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6397  0.6055
#>   std. dev.      0.2577  0.2404
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0475  0.0369
#>   std. dev.       0.044  0.0306
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5819  0.5561
#>   std. dev.      0.2153  0.2293
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4843  0.5116
#>   std. dev.      0.2215  0.1857
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4303  0.4313
#>   std. dev.      0.2088  0.2066
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4065   0.413
#>   std. dev.      0.2008  0.1991
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3787  0.4013
#>   std. dev.      0.2131  0.2248
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean            0.351   0.411
#>   std. dev.      0.2432  0.2296
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3271  0.4259
#>   std. dev.      0.2415  0.2484
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3191  0.3955
#>   std. dev.      0.2274  0.2396
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3316  0.3339
#>   std. dev.      0.2133  0.2162
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3328  0.2905
#>   std. dev.      0.1864  0.2004
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0633  0.0424
#>   std. dev.      0.0564  0.0328
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3022  0.3071
#>   std. dev.      0.1673  0.1745
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2951  0.2776
#>   std. dev.      0.1754  0.1584
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3033  0.2427
#>   std. dev.      0.1591  0.1502
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2706  0.2017
#>   std. dev.      0.1335  0.1157
#>   weight sum         72      67
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2406  0.1611
#>   std. dev.       0.138  0.0837
#>   weight sum         72      67
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean            0.236  0.1331
#>   std. dev.      0.1721  0.0761
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1926  0.1153
#>   std. dev.      0.1485  0.0802
#>   weight sum         72      67
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1437  0.0922
#>   std. dev.      0.0884  0.0593
#>   weight sum         72      67
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1077  0.0686
#>   std. dev.      0.0643  0.0442
#>   weight sum         72      67
#>   precision       0.002   0.002
#> 
#> V49
#>   mean           0.0616  0.0388
#>   std. dev.      0.0359  0.0274
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0833  0.0623
#>   std. dev.      0.0584  0.0506
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0223  0.0176
#>   std. dev.      0.0135  0.0121
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0193  0.0122
#>   std. dev.       0.012  0.0089
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0149  0.0111
#>   std. dev.      0.0097  0.0076
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0092
#>   std. dev.      0.0077   0.006
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0089
#>   std. dev.      0.0081  0.0054
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0094  0.0079
#>   std. dev.      0.0072   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0084  0.0067
#>   std. dev.      0.0056   0.004
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0075  0.0078
#>   std. dev.      0.0056   0.005
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0092  0.0065
#>   std. dev.      0.0072  0.0043
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0081  0.0065
#>   std. dev.      0.0062  0.0042
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1083  0.0962
#>   std. dev.      0.0534  0.0631
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean           0.0071  0.0063
#>   std. dev.      0.0067  0.0036
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1312  0.1145
#>   std. dev.      0.0615  0.0649
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1505  0.1201
#>   std. dev.      0.0898  0.0747
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2207   0.144
#>   std. dev.       0.126  0.0892
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
