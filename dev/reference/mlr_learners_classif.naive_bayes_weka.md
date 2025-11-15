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
#>                 (0.49)  (0.51)
#> ===============================
#> V1
#>   mean           0.0334  0.0232
#>   std. dev.      0.0275  0.0159
#>   weight sum         68      71
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2476  0.1654
#>   std. dev.      0.1265  0.1104
#>   weight sum         68      71
#>   precision      0.0043  0.0043
#> 
#> V11
#>   mean           0.2827  0.1798
#>   std. dev.      0.1145  0.1088
#>   weight sum         68      71
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.2893  0.1902
#>   std. dev.      0.1267  0.1286
#>   weight sum         68      71
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3117  0.2275
#>   std. dev.       0.141  0.1317
#>   weight sum         68      71
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3265  0.2763
#>   std. dev.      0.1765  0.1619
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean            0.344   0.312
#>   std. dev.      0.2023  0.2083
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3928  0.3769
#>   std. dev.      0.2184  0.2486
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4287  0.4111
#>   std. dev.      0.2535  0.2893
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4645   0.436
#>   std. dev.      0.2674  0.2576
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5545  0.4426
#>   std. dev.      0.2479  0.2425
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0423  0.0323
#>   std. dev.      0.0331  0.0259
#>   weight sum         68      71
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6443  0.4773
#>   std. dev.      0.2342  0.2561
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6949  0.5305
#>   std. dev.      0.2277  0.2562
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6911  0.5683
#>   std. dev.      0.2268  0.2621
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6779  0.6129
#>   std. dev.      0.2497  0.2352
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6741  0.6624
#>   std. dev.      0.2511  0.2302
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6727  0.6892
#>   std. dev.      0.2555  0.2362
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7153   0.705
#>   std. dev.       0.245  0.2278
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7215  0.6759
#>   std. dev.      0.2724  0.2241
#>   weight sum         68      71
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7167  0.6436
#>   std. dev.      0.2546  0.2116
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V29
#>   mean           0.6593  0.6062
#>   std. dev.      0.2359  0.2422
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0468  0.0371
#>   std. dev.      0.0325  0.0299
#>   weight sum         68      71
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.6025  0.5512
#>   std. dev.      0.2122  0.2403
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.491  0.5213
#>   std. dev.      0.2308  0.2077
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4463  0.4573
#>   std. dev.      0.2061  0.2211
#>   weight sum         68      71
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4012  0.4453
#>   std. dev.      0.1899  0.2264
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3551  0.4405
#>   std. dev.      0.2084  0.2559
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3203  0.4534
#>   std. dev.        0.25  0.2588
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2943   0.462
#>   std. dev.      0.2505  0.2612
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3027  0.4083
#>   std. dev.      0.2259  0.2489
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3273  0.3351
#>   std. dev.      0.2067  0.2274
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3274  0.3061
#>   std. dev.      0.1824  0.2225
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0571  0.0428
#>   std. dev.      0.0352  0.0317
#>   weight sum         68      71
#>   precision      0.0014  0.0014
#> 
#> V40
#>   mean            0.286   0.332
#>   std. dev.      0.1546  0.2031
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2746  0.3012
#>   std. dev.      0.1616  0.1857
#>   weight sum         68      71
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2896  0.2753
#>   std. dev.      0.1722  0.1713
#>   weight sum         68      71
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean            0.274  0.2343
#>   std. dev.      0.1491  0.1349
#>   weight sum         68      71
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2482  0.1944
#>   std. dev.      0.1458  0.1088
#>   weight sum         68      71
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2415  0.1525
#>   std. dev.      0.1838  0.1017
#>   weight sum         68      71
#>   precision       0.005   0.005
#> 
#> V46
#>   mean           0.2012  0.1281
#>   std. dev.      0.1618  0.0996
#>   weight sum         68      71
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1482  0.1022
#>   std. dev.      0.0992  0.0717
#>   weight sum         68      71
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1082  0.0742
#>   std. dev.      0.0701  0.0517
#>   weight sum         68      71
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0615   0.043
#>   std. dev.      0.0382  0.0326
#>   weight sum         68      71
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0798  0.0666
#>   std. dev.      0.0486  0.0492
#>   weight sum         68      71
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0229  0.0187
#>   std. dev.      0.0152  0.0132
#>   weight sum         68      71
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0198  0.0128
#>   std. dev.       0.016  0.0084
#>   weight sum         68      71
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0151  0.0109
#>   std. dev.      0.0107  0.0067
#>   weight sum         68      71
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0111  0.0099
#>   std. dev.      0.0076  0.0061
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0094
#>   std. dev.      0.0082  0.0051
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0084
#>   std. dev.      0.0085  0.0051
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean            0.009  0.0071
#>   std. dev.       0.007  0.0048
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0078
#>   std. dev.      0.0058  0.0051
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0089  0.0069
#>   std. dev.       0.008  0.0047
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0078  0.0075
#>   std. dev.      0.0055  0.0056
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1064  0.0967
#>   std. dev.      0.0458  0.0703
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0062
#>   std. dev.      0.0045  0.0037
#>   weight sum         68      71
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1324  0.1168
#>   std. dev.      0.0592  0.0691
#>   weight sum         68      71
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1523  0.1234
#>   std. dev.      0.0899  0.0823
#>   weight sum         68      71
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2175  0.1377
#>   std. dev.      0.1254  0.0953
#>   weight sum         68      71
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
