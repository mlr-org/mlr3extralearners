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
#>   mean           0.0368  0.0223
#>   std. dev.      0.0287  0.0128
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2438  0.1539
#>   std. dev.      0.1451  0.0986
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean            0.293  0.1712
#>   std. dev.      0.1279  0.1096
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3132  0.1891
#>   std. dev.      0.1167  0.1287
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3176  0.2272
#>   std. dev.      0.1354  0.1281
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.322  0.2639
#>   std. dev.      0.1752  0.1591
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3253  0.3055
#>   std. dev.      0.2079  0.2042
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3674  0.3763
#>   std. dev.       0.218  0.2501
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.3985  0.4213
#>   std. dev.      0.2399  0.2942
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4417  0.4669
#>   std. dev.      0.2519  0.2736
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5177  0.5045
#>   std. dev.      0.2565  0.2618
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0472  0.0308
#>   std. dev.      0.0401  0.0244
#>   weight sum         69      70
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.5966  0.5386
#>   std. dev.      0.2478  0.2705
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6534  0.5772
#>   std. dev.      0.2576  0.2592
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V22
#>   mean            0.666  0.5893
#>   std. dev.      0.2491   0.276
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6792  0.6232
#>   std. dev.      0.2387  0.2615
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6955  0.6711
#>   std. dev.      0.2252  0.2416
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.675  0.6677
#>   std. dev.      0.2262  0.2505
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6903  0.6793
#>   std. dev.      0.2267  0.2388
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.7043  0.6672
#>   std. dev.      0.2555  0.2323
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7035  0.6559
#>   std. dev.      0.2576  0.2105
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6493  0.6232
#>   std. dev.      0.2443   0.224
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0536  0.0353
#>   std. dev.      0.0481  0.0285
#>   weight sum         69      70
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.575  0.5632
#>   std. dev.      0.2175  0.2279
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.489  0.5019
#>   std. dev.      0.2143  0.2006
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.424  0.4272
#>   std. dev.      0.2145  0.2191
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3827   0.447
#>   std. dev.      0.1921  0.2278
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3651  0.4614
#>   std. dev.      0.1993  0.2612
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean            0.343  0.4531
#>   std. dev.      0.2455  0.2657
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3318   0.456
#>   std. dev.      0.2417  0.2707
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3258  0.4122
#>   std. dev.      0.2249    0.25
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.338   0.346
#>   std. dev.      0.1977  0.2247
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3462  0.3104
#>   std. dev.      0.1756  0.2128
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0685   0.044
#>   std. dev.      0.0628  0.0311
#>   weight sum         69      70
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3133   0.318
#>   std. dev.      0.1513   0.195
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.284  0.2909
#>   std. dev.      0.1563   0.186
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3026  0.2538
#>   std. dev.      0.1632  0.1817
#>   weight sum         69      70
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2868  0.2066
#>   std. dev.       0.139  0.1453
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2495  0.1694
#>   std. dev.      0.1519  0.1158
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2376  0.1371
#>   std. dev.      0.1692  0.0956
#>   weight sum         69      70
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean            0.192  0.1159
#>   std. dev.      0.1433  0.0967
#>   weight sum         69      70
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1441  0.0956
#>   std. dev.      0.0954  0.0699
#>   weight sum         69      70
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1137  0.0722
#>   std. dev.      0.0662  0.0486
#>   weight sum         69      70
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0655  0.0397
#>   std. dev.      0.0337  0.0314
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0886  0.0651
#>   std. dev.      0.0659   0.049
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0222  0.0183
#>   std. dev.      0.0121  0.0132
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0199  0.0135
#>   std. dev.      0.0134  0.0091
#>   weight sum         69      70
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0174  0.0111
#>   std. dev.      0.0115  0.0074
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0113  0.0105
#>   std. dev.      0.0073  0.0061
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127  0.0095
#>   std. dev.      0.0088  0.0054
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0086
#>   std. dev.      0.0081  0.0053
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0078
#>   std. dev.      0.0054  0.0045
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0075  0.0075
#>   std. dev.      0.0051  0.0052
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0085  0.0067
#>   std. dev.      0.0065  0.0047
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0088  0.0072
#>   std. dev.      0.0073  0.0047
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1141  0.0997
#>   std. dev.      0.0588  0.0657
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0062
#>   std. dev.      0.0064  0.0037
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1261  0.1185
#>   std. dev.      0.0548  0.0676
#>   weight sum         69      70
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1511  0.1178
#>   std. dev.      0.0875  0.0778
#>   weight sum         69      70
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2059  0.1361
#>   std. dev.      0.1228  0.0904
#>   weight sum         69      70
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
