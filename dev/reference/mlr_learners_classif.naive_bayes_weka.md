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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0376  0.0229
#>   std. dev.      0.0304  0.0157
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2746  0.1648
#>   std. dev.      0.1429  0.1178
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> V11
#>   mean           0.3085  0.1786
#>   std. dev.      0.1249  0.1172
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.308   0.193
#>   std. dev.      0.1277  0.1333
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3219  0.2255
#>   std. dev.      0.1337  0.1238
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3304  0.2597
#>   std. dev.      0.1682  0.1403
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean             0.35  0.2963
#>   std. dev.      0.2018  0.1905
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3933  0.3646
#>   std. dev.      0.2214  0.2298
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V17
#>   mean           0.4178  0.4032
#>   std. dev.      0.2494  0.2723
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4583  0.4342
#>   std. dev.      0.2663  0.2546
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5445  0.4712
#>   std. dev.      0.2569  0.2605
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0498  0.0306
#>   std. dev.      0.0413  0.0253
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6366  0.5149
#>   std. dev.      0.2461  0.2598
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6928  0.5655
#>   std. dev.      0.2465   0.237
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6819  0.5931
#>   std. dev.      0.2397  0.2469
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6708  0.6411
#>   std. dev.      0.2574  0.2183
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6643  0.6766
#>   std. dev.      0.2502  0.2072
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6468  0.6996
#>   std. dev.      0.2486   0.224
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V26
#>   mean           0.6816  0.7329
#>   std. dev.      0.2388  0.2227
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V27
#>   mean           0.6902  0.7372
#>   std. dev.      0.2707  0.2058
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.7015  0.7067
#>   std. dev.      0.2585  0.1954
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6563  0.6479
#>   std. dev.       0.231  0.2446
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V3
#>   mean           0.0513  0.0358
#>   std. dev.      0.0452  0.0304
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5855  0.5816
#>   std. dev.      0.2102  0.2516
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4659  0.5104
#>   std. dev.       0.222  0.2105
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4054    0.44
#>   std. dev.      0.1978  0.2053
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3828  0.4364
#>   std. dev.      0.1881  0.2115
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3675  0.4324
#>   std. dev.      0.2104  0.2327
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V35
#>   mean           0.3413  0.4271
#>   std. dev.      0.2543  0.2432
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3241  0.4353
#>   std. dev.       0.256  0.2496
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3318  0.4183
#>   std. dev.       0.231  0.2412
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.339  0.3548
#>   std. dev.      0.2128  0.2173
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3431  0.3165
#>   std. dev.      0.1883  0.2035
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0658  0.0426
#>   std. dev.      0.0567  0.0333
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3085  0.3103
#>   std. dev.        0.16  0.1931
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2901  0.2865
#>   std. dev.      0.1632  0.1901
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3027  0.2545
#>   std. dev.      0.1743  0.1781
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.278  0.2125
#>   std. dev.      0.1509  0.1409
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2382  0.1721
#>   std. dev.       0.142  0.1192
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2432  0.1408
#>   std. dev.      0.1753  0.1022
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2011  0.1161
#>   std. dev.      0.1558  0.1016
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1467  0.0928
#>   std. dev.      0.0984  0.0722
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1103  0.0663
#>   std. dev.      0.0722  0.0523
#>   weight sum         77      62
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0658  0.0369
#>   std. dev.       0.039   0.032
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0858  0.0601
#>   std. dev.      0.0576  0.0438
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0233  0.0178
#>   std. dev.      0.0144  0.0126
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0195  0.0119
#>   std. dev.      0.0151  0.0092
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0105
#>   std. dev.      0.0116  0.0075
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0094
#>   std. dev.      0.0074   0.006
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0091
#>   std. dev.      0.0087  0.0052
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0083
#>   std. dev.      0.0076  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0076
#>   std. dev.      0.0061   0.005
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0071  0.0081
#>   std. dev.      0.0047  0.0063
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0096  0.0069
#>   std. dev.      0.0072  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0085  0.0067
#>   std. dev.      0.0062  0.0045
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1167  0.0867
#>   std. dev.      0.0556  0.0503
#>   weight sum         77      62
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0069  0.0058
#>   std. dev.       0.005  0.0037
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1356  0.1102
#>   std. dev.      0.0613  0.0583
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1618  0.1158
#>   std. dev.       0.095  0.0782
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2338  0.1387
#>   std. dev.      0.1323  0.0996
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4202899 
```
