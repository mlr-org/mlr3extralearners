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
#>   mean            0.034  0.0206
#>   std. dev.      0.0245  0.0126
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2525  0.1621
#>   std. dev.      0.1331   0.126
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2888  0.1729
#>   std. dev.      0.1233  0.1267
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2975  0.1948
#>   std. dev.      0.1286  0.1458
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3163  0.2352
#>   std. dev.      0.1279  0.1403
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.327  0.2761
#>   std. dev.      0.1664  0.1705
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3412  0.3154
#>   std. dev.      0.1983  0.2246
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3881  0.4038
#>   std. dev.      0.2202  0.2661
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean            0.419  0.4561
#>   std. dev.      0.2442  0.2979
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4595  0.4877
#>   std. dev.      0.2574  0.2641
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5354  0.4892
#>   std. dev.      0.2549  0.2605
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0463  0.0305
#>   std. dev.      0.0401  0.0255
#>   weight sum         72      67
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6185  0.5195
#>   std. dev.      0.2529  0.2609
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6709   0.572
#>   std. dev.      0.2551  0.2495
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.672  0.6123
#>   std. dev.       0.249  0.2568
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6806  0.6422
#>   std. dev.      0.2635  0.2365
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6888  0.6673
#>   std. dev.      0.2541  0.2323
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean           0.6797  0.6741
#>   std. dev.      0.2478  0.2533
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7121  0.6892
#>   std. dev.      0.2349  0.2461
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7213  0.6854
#>   std. dev.      0.2614  0.2328
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7237   0.662
#>   std. dev.       0.254  0.2132
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V29
#>   mean           0.6737  0.6098
#>   std. dev.      0.2348  0.2395
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0501  0.0362
#>   std. dev.      0.0461  0.0312
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.591  0.5741
#>   std. dev.      0.1961  0.2286
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4724  0.5486
#>   std. dev.      0.2109  0.1801
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.3912  0.4685
#>   std. dev.      0.1933  0.1994
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3602  0.4407
#>   std. dev.       0.187  0.2045
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3349  0.4333
#>   std. dev.      0.1997  0.2455
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3111  0.4451
#>   std. dev.        0.23  0.2695
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2969  0.4579
#>   std. dev.      0.2372  0.2618
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2964  0.4208
#>   std. dev.      0.2152  0.2408
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3011  0.3589
#>   std. dev.      0.1999  0.2216
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3197  0.3243
#>   std. dev.      0.1855  0.2176
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0632   0.044
#>   std. dev.      0.0569  0.0338
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3019  0.3299
#>   std. dev.      0.1666  0.2012
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2796  0.2898
#>   std. dev.      0.1596  0.1802
#>   weight sum         72      67
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.2899  0.2466
#>   std. dev.      0.1592   0.173
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean             0.26  0.2066
#>   std. dev.      0.1263  0.1385
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2257  0.1715
#>   std. dev.      0.1283  0.1084
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2358  0.1421
#>   std. dev.      0.1643  0.0975
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1949  0.1147
#>   std. dev.      0.1395  0.0963
#>   weight sum         72      67
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1483  0.0972
#>   std. dev.      0.0882  0.0717
#>   weight sum         72      67
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1104  0.0721
#>   std. dev.      0.0668    0.05
#>   weight sum         72      67
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0641  0.0396
#>   std. dev.      0.0366   0.032
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0835  0.0659
#>   std. dev.      0.0564  0.0489
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0184
#>   std. dev.      0.0142   0.013
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0188  0.0124
#>   std. dev.       0.012  0.0082
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0157    0.01
#>   std. dev.      0.0098  0.0064
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0117  0.0093
#>   std. dev.      0.0076  0.0063
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0115  0.0097
#>   std. dev.      0.0082  0.0055
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0092  0.0086
#>   std. dev.      0.0072  0.0049
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0076
#>   std. dev.      0.0057   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0075
#>   std. dev.      0.0056  0.0054
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0095  0.0062
#>   std. dev.      0.0073  0.0044
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0081  0.0071
#>   std. dev.      0.0056  0.0053
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1167  0.1004
#>   std. dev.      0.0555  0.0634
#>   weight sum         72      67
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0062  0.0062
#>   std. dev.      0.0044  0.0038
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1317  0.1154
#>   std. dev.      0.0561  0.0626
#>   weight sum         72      67
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1493  0.1194
#>   std. dev.      0.0831  0.0808
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2137  0.1356
#>   std. dev.      0.1135  0.1077
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
