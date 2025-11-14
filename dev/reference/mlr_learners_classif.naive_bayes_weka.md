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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0362   0.024
#>   std. dev.      0.0276  0.0145
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2639  0.1714
#>   std. dev.      0.1423  0.1181
#>   weight sum         79      60
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean            0.294  0.1837
#>   std. dev.      0.1244  0.1175
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean           0.2942  0.1949
#>   std. dev.      0.1258  0.1372
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3087  0.2188
#>   std. dev.      0.1381  0.1355
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3192  0.2745
#>   std. dev.      0.1692  0.1608
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3224  0.3197
#>   std. dev.       0.195  0.2232
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3592  0.3994
#>   std. dev.      0.2061  0.2573
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3828  0.4563
#>   std. dev.      0.2238  0.2914
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4239  0.4895
#>   std. dev.      0.2441  0.2766
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5083  0.4952
#>   std. dev.      0.2586  0.2625
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0444  0.0317
#>   std. dev.      0.0311  0.0258
#>   weight sum         79      60
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6037  0.5056
#>   std. dev.      0.2676  0.2575
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.652  0.5527
#>   std. dev.      0.2694   0.256
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.653  0.5785
#>   std. dev.      0.2545  0.2564
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6575  0.6189
#>   std. dev.      0.2627  0.2375
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.667  0.6521
#>   std. dev.      0.2476  0.2296
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6703  0.6698
#>   std. dev.      0.2437  0.2398
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7179  0.6875
#>   std. dev.      0.2219  0.2242
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V27
#>   mean           0.7368  0.6716
#>   std. dev.       0.252  0.2044
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7452  0.6447
#>   std. dev.      0.2329  0.2045
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6817  0.6065
#>   std. dev.      0.2179  0.2481
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V3
#>   mean            0.047   0.039
#>   std. dev.      0.0345  0.0319
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.6059  0.5704
#>   std. dev.      0.2044  0.2492
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4968  0.5257
#>   std. dev.      0.2282  0.2248
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4419  0.4533
#>   std. dev.      0.2177  0.2389
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean             0.41  0.4471
#>   std. dev.      0.1936  0.2331
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3748  0.4564
#>   std. dev.      0.2052   0.245
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3504  0.4789
#>   std. dev.      0.2604  0.2452
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3373  0.4737
#>   std. dev.      0.2713  0.2605
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3298  0.4296
#>   std. dev.      0.2492   0.242
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3416  0.3646
#>   std. dev.      0.2247  0.2203
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3482  0.3183
#>   std. dev.      0.1905  0.2244
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0627  0.0442
#>   std. dev.      0.0419  0.0338
#>   weight sum         79      60
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3096  0.3198
#>   std. dev.      0.1557  0.2001
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2931  0.2871
#>   std. dev.      0.1623  0.1791
#>   weight sum         79      60
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean             0.31   0.247
#>   std. dev.      0.1708  0.1675
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2899  0.2132
#>   std. dev.      0.1484  0.1426
#>   weight sum         79      60
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2697  0.1869
#>   std. dev.        0.15  0.1271
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2697  0.1496
#>   std. dev.      0.1763  0.1072
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2155   0.118
#>   std. dev.      0.1513  0.0935
#>   weight sum         79      60
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1515  0.0967
#>   std. dev.      0.0957  0.0655
#>   weight sum         79      60
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1136  0.0687
#>   std. dev.       0.067  0.0473
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0651  0.0379
#>   std. dev.      0.0346  0.0282
#>   weight sum         79      60
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0846  0.0618
#>   std. dev.      0.0534  0.0474
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0238  0.0181
#>   std. dev.      0.0141  0.0114
#>   weight sum         79      60
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0198  0.0124
#>   std. dev.      0.0132  0.0084
#>   weight sum         79      60
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0159  0.0112
#>   std. dev.      0.0107  0.0074
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0097
#>   std. dev.       0.008  0.0062
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0095
#>   std. dev.      0.0086  0.0051
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0088
#>   std. dev.      0.0088  0.0051
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0076
#>   std. dev.      0.0064   0.005
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0082
#>   std. dev.      0.0062  0.0061
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009   0.007
#>   std. dev.      0.0081  0.0053
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0075
#>   std. dev.      0.0071  0.0045
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1165   0.095
#>   std. dev.      0.0496  0.0535
#>   weight sum         79      60
#>   precision      0.0018  0.0018
#> 
#> V60
#>   mean           0.0069  0.0063
#>   std. dev.       0.006  0.0038
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1342  0.1152
#>   std. dev.       0.059  0.0567
#>   weight sum         79      60
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1623  0.1174
#>   std. dev.      0.0935  0.0772
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2286  0.1428
#>   std. dev.       0.133  0.0996
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
