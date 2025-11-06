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
#>   mean           0.0358  0.0236
#>   std. dev.      0.0289  0.0162
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2417  0.1756
#>   std. dev.      0.1352  0.1204
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2803  0.1918
#>   std. dev.       0.118  0.1233
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2863  0.2135
#>   std. dev.      0.1213  0.1466
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.2989  0.2419
#>   std. dev.      0.1281  0.1507
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3075   0.279
#>   std. dev.      0.1574  0.1777
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3233  0.3096
#>   std. dev.      0.1784  0.2319
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V16
#>   mean           0.3852  0.3763
#>   std. dev.      0.1983  0.2557
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V17
#>   mean            0.419  0.4218
#>   std. dev.      0.2278  0.2926
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4585  0.4614
#>   std. dev.      0.2457  0.2609
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5411  0.4794
#>   std. dev.      0.2514   0.249
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0485  0.0324
#>   std. dev.      0.0398  0.0262
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6234  0.5169
#>   std. dev.      0.2525  0.2411
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6696  0.5476
#>   std. dev.      0.2472  0.2449
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6747  0.5636
#>   std. dev.      0.2378  0.2653
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6857  0.6035
#>   std. dev.      0.2427  0.2412
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6966  0.6286
#>   std. dev.      0.2179  0.2356
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V25
#>   mean           0.6751  0.6277
#>   std. dev.      0.2307  0.2575
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6989  0.6537
#>   std. dev.      0.2388  0.2422
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.7155  0.6528
#>   std. dev.      0.2728  0.2112
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7106  0.6465
#>   std. dev.      0.2737   0.212
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6452  0.6187
#>   std. dev.      0.2498  0.2397
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0518  0.0401
#>   std. dev.      0.0482  0.0317
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5791  0.5761
#>   std. dev.      0.2006  0.2379
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.476   0.539
#>   std. dev.      0.1998  0.1977
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean            0.426  0.4581
#>   std. dev.      0.1937  0.2109
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean            0.386  0.4597
#>   std. dev.      0.1764   0.214
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3557  0.4596
#>   std. dev.      0.1903  0.2526
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3231  0.4619
#>   std. dev.      0.2369  0.2519
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3092  0.4775
#>   std. dev.      0.2331  0.2484
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3039  0.4446
#>   std. dev.      0.2149  0.2303
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3252  0.3582
#>   std. dev.      0.2023  0.2172
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3276   0.311
#>   std. dev.      0.1836   0.207
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.065  0.0456
#>   std. dev.      0.0598  0.0339
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2949  0.3299
#>   std. dev.      0.1379  0.1814
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2818  0.3001
#>   std. dev.      0.1452  0.1656
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V42
#>   mean           0.2956  0.2641
#>   std. dev.      0.1584  0.1608
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean           0.2712   0.208
#>   std. dev.      0.1427  0.1222
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2367   0.171
#>   std. dev.      0.1408  0.0946
#>   weight sum         73      66
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2282  0.1395
#>   std. dev.      0.1616  0.0821
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V46
#>   mean           0.1805  0.1162
#>   std. dev.      0.1402  0.0798
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1414  0.0946
#>   std. dev.      0.0895  0.0593
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1122  0.0708
#>   std. dev.      0.0674  0.0449
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean            0.066   0.039
#>   std. dev.      0.0363  0.0277
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0856  0.0636
#>   std. dev.      0.0646  0.0507
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.022  0.0176
#>   std. dev.      0.0148  0.0113
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0195  0.0127
#>   std. dev.       0.015  0.0088
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0107
#>   std. dev.      0.0114   0.008
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0108    0.01
#>   std. dev.       0.007  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0099
#>   std. dev.      0.0091  0.0049
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0088
#>   std. dev.      0.0093  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0078
#>   std. dev.      0.0065  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0084
#>   std. dev.      0.0062   0.006
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0064
#>   std. dev.       0.008  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0089  0.0073
#>   std. dev.      0.0071   0.005
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1093  0.0987
#>   std. dev.      0.0517  0.0708
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0064  0.0057
#>   std. dev.      0.0048  0.0031
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1257  0.1148
#>   std. dev.      0.0564  0.0694
#>   weight sum         73      66
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1516  0.1237
#>   std. dev.      0.0897  0.0895
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2126   0.154
#>   std. dev.      0.1203  0.1102
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
