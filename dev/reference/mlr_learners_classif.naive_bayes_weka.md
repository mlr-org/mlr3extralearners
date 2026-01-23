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
#>   mean           0.0377  0.0236
#>   std. dev.      0.0289  0.0151
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2592  0.1749
#>   std. dev.      0.1492  0.1196
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2945  0.1899
#>   std. dev.      0.1383  0.1245
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2961  0.1999
#>   std. dev.      0.1319  0.1501
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3107  0.2332
#>   std. dev.      0.1354  0.1452
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3183  0.2783
#>   std. dev.      0.1633  0.1705
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3399  0.3212
#>   std. dev.      0.1843  0.2265
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3844  0.3876
#>   std. dev.      0.2015  0.2726
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4164  0.4258
#>   std. dev.      0.2339  0.2994
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4521   0.461
#>   std. dev.       0.258  0.2756
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean             0.54  0.4841
#>   std. dev.      0.2548  0.2627
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0506  0.0303
#>   std. dev.        0.04  0.0217
#>   weight sum         79      60
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6241  0.5217
#>   std. dev.      0.2515  0.2549
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6757  0.5619
#>   std. dev.      0.2387  0.2486
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6775  0.5894
#>   std. dev.      0.2294  0.2624
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6735   0.624
#>   std. dev.        0.25  0.2468
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6819  0.6608
#>   std. dev.      0.2476  0.2355
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6733   0.667
#>   std. dev.      0.2446  0.2483
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6944  0.6928
#>   std. dev.       0.238  0.2334
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.6997  0.7008
#>   std. dev.      0.2695  0.1928
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7018  0.6715
#>   std. dev.      0.2626  0.1874
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6392  0.6205
#>   std. dev.      0.2458  0.2501
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0566  0.0395
#>   std. dev.      0.0476  0.0292
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5779  0.5761
#>   std. dev.      0.2127  0.2519
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.481  0.5432
#>   std. dev.      0.2122  0.1975
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V32
#>   mean            0.424   0.482
#>   std. dev.      0.1988   0.211
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3915  0.4725
#>   std. dev.      0.1742  0.2181
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3724  0.4725
#>   std. dev.      0.1908    0.24
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3489  0.4704
#>   std. dev.       0.247  0.2499
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3245  0.4726
#>   std. dev.      0.2563  0.2527
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3198  0.4403
#>   std. dev.      0.2294  0.2402
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3353   0.351
#>   std. dev.      0.2074   0.218
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3377  0.3115
#>   std. dev.      0.1814  0.1896
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0715  0.0452
#>   std. dev.        0.06  0.0333
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2981  0.3391
#>   std. dev.      0.1506  0.1613
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V41
#>   mean           0.2892  0.2988
#>   std. dev.      0.1575  0.1634
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V42
#>   mean           0.3022   0.252
#>   std. dev.      0.1647  0.1602
#>   weight sum         79      60
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean             0.28  0.2066
#>   std. dev.       0.144  0.1198
#>   weight sum         79      60
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2568  0.1753
#>   std. dev.      0.1389   0.091
#>   weight sum         79      60
#>   precision      0.0041  0.0041
#> 
#> V45
#>   mean           0.2529    0.14
#>   std. dev.      0.1727  0.0785
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1996  0.1096
#>   std. dev.      0.1554  0.0759
#>   weight sum         79      60
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1439  0.0897
#>   std. dev.       0.095  0.0551
#>   weight sum         79      60
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1078  0.0675
#>   std. dev.      0.0666  0.0427
#>   weight sum         79      60
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0626  0.0377
#>   std. dev.      0.0365  0.0265
#>   weight sum         79      60
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0857  0.0689
#>   std. dev.      0.0647  0.0537
#>   weight sum         79      60
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0225  0.0157
#>   std. dev.      0.0149  0.0098
#>   weight sum         79      60
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0196  0.0114
#>   std. dev.      0.0149  0.0083
#>   weight sum         79      60
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0164  0.0106
#>   std. dev.      0.0111  0.0071
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0122  0.0099
#>   std. dev.      0.0081   0.006
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125   0.009
#>   std. dev.      0.0086  0.0047
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0102  0.0083
#>   std. dev.      0.0089  0.0053
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0074
#>   std. dev.      0.0069  0.0051
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0084   0.008
#>   std. dev.      0.0062  0.0065
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0062
#>   std. dev.      0.0079  0.0045
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0091  0.0072
#>   std. dev.      0.0073  0.0047
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1113  0.1059
#>   std. dev.      0.0459  0.0757
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0077  0.0062
#>   std. dev.      0.0066  0.0036
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1326  0.1168
#>   std. dev.      0.0594  0.0725
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1518  0.1225
#>   std. dev.      0.0932   0.088
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2171  0.1508
#>   std. dev.      0.1299   0.108
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
