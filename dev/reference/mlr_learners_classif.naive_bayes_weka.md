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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0332  0.0214
#>   std. dev.      0.0237  0.0142
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2582  0.1652
#>   std. dev.      0.1324  0.1125
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3019  0.1747
#>   std. dev.      0.1238  0.1135
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3198  0.1955
#>   std. dev.       0.123  0.1327
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3235   0.228
#>   std. dev.      0.1312  0.1378
#>   weight sum         74      65
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3198  0.2652
#>   std. dev.      0.1693  0.1659
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3209  0.3115
#>   std. dev.      0.1943  0.2175
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3652  0.3849
#>   std. dev.      0.2173  0.2568
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3965  0.4257
#>   std. dev.      0.2436  0.2974
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean            0.444  0.4507
#>   std. dev.      0.2459  0.2767
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5231  0.4708
#>   std. dev.      0.2453  0.2688
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0458  0.0286
#>   std. dev.      0.0356  0.0194
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6063  0.5048
#>   std. dev.      0.2466  0.2834
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6633  0.5461
#>   std. dev.      0.2413  0.2667
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6824  0.5574
#>   std. dev.      0.2276  0.2769
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6979  0.6039
#>   std. dev.      0.2399  0.2422
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7114  0.6421
#>   std. dev.      0.2432  0.2289
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.7113  0.6528
#>   std. dev.      0.2422  0.2531
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7436  0.6956
#>   std. dev.      0.2319  0.2415
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7558  0.6856
#>   std. dev.      0.2594  0.2145
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7479   0.654
#>   std. dev.      0.2569  0.2159
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6727  0.6099
#>   std. dev.      0.2555  0.2486
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0503  0.0369
#>   std. dev.      0.0413  0.0261
#>   weight sum         74      65
#>   precision      0.0016  0.0016
#> 
#> V30
#>   mean           0.5942  0.5461
#>   std. dev.      0.2203  0.2397
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4945  0.5134
#>   std. dev.      0.2182  0.1942
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4244  0.4534
#>   std. dev.      0.2061  0.2072
#>   weight sum         74      65
#>   precision      0.0061  0.0061
#> 
#> V33
#>   mean           0.3874  0.4424
#>   std. dev.      0.1899  0.2068
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3623  0.4585
#>   std. dev.      0.1973  0.2484
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V35
#>   mean           0.3282  0.4645
#>   std. dev.      0.2352  0.2651
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean             0.31  0.4682
#>   std. dev.      0.2416  0.2631
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3156  0.4228
#>   std. dev.      0.2223  0.2426
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V38
#>   mean           0.3201  0.3486
#>   std. dev.      0.1973  0.2363
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3247  0.3284
#>   std. dev.      0.1746  0.2294
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0619  0.0424
#>   std. dev.      0.0473  0.0308
#>   weight sum         74      65
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2969  0.3347
#>   std. dev.      0.1645  0.2113
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2863  0.2936
#>   std. dev.      0.1638  0.1852
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3032  0.2616
#>   std. dev.      0.1641  0.1695
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2867  0.2166
#>   std. dev.      0.1335  0.1332
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2439  0.1789
#>   std. dev.       0.144  0.1129
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2381  0.1418
#>   std. dev.      0.1689  0.0987
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1954  0.1157
#>   std. dev.      0.1355  0.0966
#>   weight sum         74      65
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1433  0.0908
#>   std. dev.      0.0857   0.071
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1075  0.0706
#>   std. dev.      0.0651  0.0498
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0636  0.0401
#>   std. dev.      0.0367  0.0311
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0845  0.0628
#>   std. dev.      0.0531  0.0487
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0219  0.0178
#>   std. dev.      0.0137  0.0123
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0179  0.0122
#>   std. dev.      0.0116   0.008
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0155    0.01
#>   std. dev.      0.0096  0.0059
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0115  0.0092
#>   std. dev.      0.0072  0.0052
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0115  0.0096
#>   std. dev.      0.0082  0.0052
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0088  0.0086
#>   std. dev.      0.0067  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0082  0.0073
#>   std. dev.      0.0054  0.0049
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0071  0.0076
#>   std. dev.       0.005  0.0053
#>   weight sum         74      65
#>   precision      0.0002  0.0002
#> 
#> V58
#>   mean           0.0086  0.0061
#>   std. dev.      0.0063  0.0049
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0077  0.0073
#>   std. dev.      0.0056  0.0054
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1081  0.0958
#>   std. dev.      0.0543  0.0612
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0059  0.0061
#>   std. dev.      0.0042  0.0036
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1233  0.1101
#>   std. dev.      0.0532    0.06
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean           0.1485  0.1152
#>   std. dev.      0.0829  0.0742
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2146  0.1383
#>   std. dev.      0.1236  0.0968
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
