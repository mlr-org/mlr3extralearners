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
#>   mean           0.0381  0.0206
#>   std. dev.      0.0296   0.015
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2672  0.1577
#>   std. dev.      0.1373  0.1151
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2998  0.1741
#>   std. dev.      0.1227  0.1168
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.302  0.1824
#>   std. dev.      0.1253  0.1327
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3201  0.2092
#>   std. dev.      0.1316  0.1279
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3304  0.2499
#>   std. dev.      0.1622  0.1523
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3458  0.2838
#>   std. dev.      0.1911  0.2086
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V16
#>   mean           0.3995  0.3447
#>   std. dev.      0.2066  0.2417
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V17
#>   mean           0.4231  0.3851
#>   std. dev.      0.2324  0.2677
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4593  0.4178
#>   std. dev.      0.2624  0.2501
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5476  0.4473
#>   std. dev.      0.2581  0.2448
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0479  0.0277
#>   std. dev.      0.0408  0.0254
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6321  0.4916
#>   std. dev.      0.2583   0.255
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6852  0.5378
#>   std. dev.      0.2489  0.2459
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6842  0.5648
#>   std. dev.       0.244  0.2632
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6831  0.6143
#>   std. dev.      0.2752  0.2618
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6931   0.668
#>   std. dev.      0.2595  0.2433
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean            0.678  0.6967
#>   std. dev.      0.2469  0.2509
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6956  0.7161
#>   std. dev.      0.2345  0.2464
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.6904  0.6982
#>   std. dev.      0.2662  0.2328
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.6913  0.6737
#>   std. dev.        0.25  0.2145
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6381   0.643
#>   std. dev.      0.2361  0.2215
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0544  0.0345
#>   std. dev.      0.0472  0.0305
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5926  0.6107
#>   std. dev.      0.2013  0.2074
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4971  0.5435
#>   std. dev.      0.2133  0.1928
#>   weight sum         77      62
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4391  0.4508
#>   std. dev.      0.2144  0.2115
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4072    0.46
#>   std. dev.      0.1998  0.2151
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V34
#>   mean           0.3768  0.4635
#>   std. dev.      0.2157  0.2438
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3419  0.4738
#>   std. dev.      0.2525   0.256
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean            0.321  0.4792
#>   std. dev.      0.2448   0.255
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3104  0.4407
#>   std. dev.       0.228  0.2334
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3339  0.3668
#>   std. dev.      0.2143  0.2253
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3497  0.3319
#>   std. dev.      0.1951  0.2253
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0662  0.0414
#>   std. dev.      0.0596  0.0326
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3207  0.3328
#>   std. dev.      0.1695  0.1981
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3058  0.2911
#>   std. dev.      0.1696  0.1682
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3056  0.2519
#>   std. dev.      0.1757  0.1635
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2783  0.2092
#>   std. dev.      0.1457  0.1249
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2535  0.1684
#>   std. dev.      0.1383  0.0872
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2545  0.1445
#>   std. dev.      0.1791  0.0894
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2044  0.1157
#>   std. dev.      0.1576   0.094
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean            0.148  0.0917
#>   std. dev.      0.0981  0.0707
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1159   0.072
#>   std. dev.      0.0714   0.052
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0668  0.0385
#>   std. dev.      0.0381  0.0341
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0877  0.0615
#>   std. dev.      0.0626   0.046
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0235  0.0161
#>   std. dev.      0.0151  0.0116
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0209   0.011
#>   std. dev.      0.0149  0.0081
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0171  0.0097
#>   std. dev.      0.0115  0.0058
#>   weight sum         77      62
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0121  0.0091
#>   std. dev.      0.0081  0.0058
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0134  0.0092
#>   std. dev.      0.0093  0.0052
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.011  0.0084
#>   std. dev.      0.0091  0.0054
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0071
#>   std. dev.      0.0069  0.0043
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0087  0.0077
#>   std. dev.      0.0063  0.0058
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0102  0.0067
#>   std. dev.      0.0083  0.0047
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0093  0.0066
#>   std. dev.      0.0073  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1201  0.0939
#>   std. dev.      0.0502  0.0662
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0056
#>   std. dev.      0.0064  0.0034
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1353  0.1124
#>   std. dev.      0.0579  0.0689
#>   weight sum         77      62
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1621  0.1158
#>   std. dev.      0.0925  0.0833
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2283  0.1333
#>   std. dev.       0.128  0.1065
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4492754 
```
