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
#>   mean           0.0338  0.0233
#>   std. dev.      0.0236  0.0168
#>   weight sum         77      62
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2433  0.1612
#>   std. dev.      0.1305  0.1118
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2816  0.1744
#>   std. dev.      0.1207   0.115
#>   weight sum         77      62
#>   precision      0.0045  0.0045
#> 
#> V12
#>   mean           0.2974  0.1917
#>   std. dev.      0.1288   0.138
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3173  0.2192
#>   std. dev.       0.133  0.1398
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3277  0.2741
#>   std. dev.      0.1689  0.1641
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3365  0.3142
#>   std. dev.      0.1976  0.2128
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3905  0.3863
#>   std. dev.      0.2164  0.2565
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean            0.424  0.4247
#>   std. dev.      0.2484   0.293
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4766  0.4589
#>   std. dev.      0.2606  0.2796
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5556   0.485
#>   std. dev.      0.2587  0.2594
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0435  0.0321
#>   std. dev.      0.0364   0.027
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6406  0.5084
#>   std. dev.      0.2508  0.2441
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6765  0.5422
#>   std. dev.      0.2523   0.237
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6717  0.5526
#>   std. dev.      0.2395  0.2593
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean            0.671  0.5917
#>   std. dev.      0.2496   0.235
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6702  0.6435
#>   std. dev.      0.2498  0.2146
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6618  0.6702
#>   std. dev.      0.2448  0.2448
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6923  0.6995
#>   std. dev.      0.2464   0.249
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7062  0.7108
#>   std. dev.      0.2746  0.2067
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7012  0.7015
#>   std. dev.      0.2731  0.1956
#>   weight sum         77      62
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6389  0.6488
#>   std. dev.      0.2598  0.2333
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0489  0.0358
#>   std. dev.      0.0452  0.0324
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5698  0.5935
#>   std. dev.      0.2109  0.2369
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4645  0.5516
#>   std. dev.      0.2117  0.2019
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4182  0.4656
#>   std. dev.      0.2064  0.2125
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean            0.391  0.4383
#>   std. dev.      0.1942  0.2135
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3545  0.4331
#>   std. dev.      0.1976  0.2315
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3184  0.4388
#>   std. dev.      0.2371  0.2518
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3152  0.4369
#>   std. dev.      0.2408  0.2597
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3195  0.4058
#>   std. dev.      0.2233  0.2429
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3364  0.3691
#>   std. dev.      0.1992  0.2305
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3396  0.3331
#>   std. dev.      0.1797  0.2162
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0662  0.0408
#>   std. dev.      0.0558  0.0319
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3053  0.3165
#>   std. dev.      0.1505  0.1899
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2808  0.2661
#>   std. dev.      0.1487  0.1626
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean            0.289  0.2371
#>   std. dev.      0.1472  0.1537
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V43
#>   mean            0.263  0.2044
#>   std. dev.      0.1264  0.1266
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2375  0.1786
#>   std. dev.      0.1453  0.1189
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2296  0.1459
#>   std. dev.      0.1644  0.1015
#>   weight sum         77      62
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1743  0.1103
#>   std. dev.      0.1269  0.0876
#>   weight sum         77      62
#>   precision      0.0042  0.0042
#> 
#> V47
#>   mean           0.1338  0.0897
#>   std. dev.      0.0811  0.0586
#>   weight sum         77      62
#>   precision      0.0029  0.0029
#> 
#> V48
#>   mean           0.1043  0.0679
#>   std. dev.      0.0636  0.0448
#>   weight sum         77      62
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0611  0.0372
#>   std. dev.      0.0341  0.0248
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V5
#>   mean           0.0894  0.0642
#>   std. dev.      0.0586  0.0453
#>   weight sum         77      62
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0216  0.0161
#>   std. dev.      0.0133  0.0106
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0185  0.0114
#>   std. dev.      0.0094  0.0075
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0158  0.0105
#>   std. dev.      0.0092  0.0065
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0115  0.0095
#>   std. dev.      0.0077  0.0066
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0115  0.0093
#>   std. dev.      0.0083  0.0052
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0081
#>   std. dev.      0.0091  0.0049
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0071
#>   std. dev.      0.0071  0.0049
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0073  0.0071
#>   std. dev.      0.0057   0.006
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0085  0.0064
#>   std. dev.      0.0075  0.0047
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0065
#>   std. dev.      0.0067  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1083  0.1008
#>   std. dev.      0.0537  0.0709
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0059
#>   std. dev.      0.0048  0.0037
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1244  0.1188
#>   std. dev.      0.0605  0.0678
#>   weight sum         77      62
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1412  0.1177
#>   std. dev.      0.0871  0.0813
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2023  0.1443
#>   std. dev.      0.1188   0.105
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
