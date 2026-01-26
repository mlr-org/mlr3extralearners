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
#>                  (0.6)   (0.4)
#> ===============================
#> V1
#>   mean           0.0332  0.0225
#>   std. dev.      0.0256  0.0134
#>   weight sum         83      56
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2457  0.1527
#>   std. dev.      0.1354  0.1078
#>   weight sum         83      56
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2833  0.1706
#>   std. dev.      0.1269  0.1162
#>   weight sum         83      56
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3008  0.1972
#>   std. dev.       0.124  0.1425
#>   weight sum         83      56
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3137  0.2254
#>   std. dev.      0.1262    0.15
#>   weight sum         83      56
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3156  0.2553
#>   std. dev.      0.1404  0.1602
#>   weight sum         83      56
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3273  0.2805
#>   std. dev.      0.1812   0.198
#>   weight sum         83      56
#>   precision      0.0061  0.0061
#> 
#> V16
#>   mean            0.383  0.3523
#>   std. dev.      0.2088  0.2365
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4139  0.3929
#>   std. dev.       0.245  0.2809
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4589  0.4296
#>   std. dev.      0.2568  0.2654
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5464  0.4581
#>   std. dev.      0.2546  0.2621
#>   weight sum         83      56
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean            0.043  0.0295
#>   std. dev.      0.0307  0.0214
#>   weight sum         83      56
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.6235  0.4985
#>   std. dev.      0.2622  0.2575
#>   weight sum         83      56
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6655  0.5378
#>   std. dev.      0.2599  0.2511
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6721  0.5642
#>   std. dev.      0.2503   0.251
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6819  0.5897
#>   std. dev.      0.2453  0.2315
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7014   0.635
#>   std. dev.      0.2315  0.2027
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V25
#>   mean            0.695  0.6745
#>   std. dev.      0.2219  0.2214
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7149  0.7077
#>   std. dev.      0.2288  0.2341
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7181  0.6987
#>   std. dev.      0.2687  0.2171
#>   weight sum         83      56
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7181  0.6916
#>   std. dev.      0.2646  0.2112
#>   weight sum         83      56
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6534  0.6509
#>   std. dev.      0.2491  0.2364
#>   weight sum         83      56
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.048   0.034
#>   std. dev.      0.0361  0.0257
#>   weight sum         83      56
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5803  0.5958
#>   std. dev.      0.2103  0.2401
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4786  0.5426
#>   std. dev.      0.2258  0.1942
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4201  0.4659
#>   std. dev.      0.2131  0.2027
#>   weight sum         83      56
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3915  0.4593
#>   std. dev.      0.1861  0.2162
#>   weight sum         83      56
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3628  0.4604
#>   std. dev.      0.1993  0.2446
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3284  0.4567
#>   std. dev.      0.2351  0.2607
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3055  0.4485
#>   std. dev.      0.2403  0.2676
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3161  0.4002
#>   std. dev.      0.2265  0.2435
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3329  0.3486
#>   std. dev.      0.2023  0.2288
#>   weight sum         83      56
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3349  0.3153
#>   std. dev.      0.1828  0.2089
#>   weight sum         83      56
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0597  0.0385
#>   std. dev.      0.0417   0.027
#>   weight sum         83      56
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3117  0.3125
#>   std. dev.      0.1634  0.1905
#>   weight sum         83      56
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2954  0.2767
#>   std. dev.      0.1651  0.1609
#>   weight sum         83      56
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3056  0.2375
#>   std. dev.      0.1627  0.1528
#>   weight sum         83      56
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2751  0.2061
#>   std. dev.      0.1391  0.1258
#>   weight sum         83      56
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.247   0.177
#>   std. dev.      0.1448  0.1221
#>   weight sum         83      56
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2443  0.1402
#>   std. dev.      0.1693  0.1038
#>   weight sum         83      56
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1985  0.1165
#>   std. dev.      0.1459  0.0918
#>   weight sum         83      56
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1478  0.0892
#>   std. dev.      0.0949  0.0627
#>   weight sum         83      56
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1112  0.0633
#>   std. dev.      0.0713  0.0393
#>   weight sum         83      56
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0626  0.0334
#>   std. dev.       0.037   0.021
#>   weight sum         83      56
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean             0.09  0.0591
#>   std. dev.      0.0544  0.0451
#>   weight sum         83      56
#>   precision      0.0023  0.0023
#> 
#> V50
#>   mean           0.0216  0.0178
#>   std. dev.      0.0134  0.0124
#>   weight sum         83      56
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0123
#>   std. dev.      0.0129  0.0088
#>   weight sum         83      56
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0151  0.0108
#>   std. dev.      0.0105  0.0071
#>   weight sum         83      56
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0099
#>   std. dev.      0.0074   0.006
#>   weight sum         83      56
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0122  0.0096
#>   std. dev.      0.0086  0.0056
#>   weight sum         83      56
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0082
#>   std. dev.      0.0078  0.0046
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0082
#>   std. dev.      0.0066  0.0054
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0079
#>   std. dev.       0.006  0.0056
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0061
#>   std. dev.      0.0071  0.0045
#>   weight sum         83      56
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085   0.007
#>   std. dev.      0.0067  0.0051
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1156  0.0976
#>   std. dev.      0.0547  0.0681
#>   weight sum         83      56
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0062
#>   std. dev.      0.0061  0.0038
#>   weight sum         83      56
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1296  0.1153
#>   std. dev.      0.0555  0.0656
#>   weight sum         83      56
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1506  0.1119
#>   std. dev.      0.0834  0.0774
#>   weight sum         83      56
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2085  0.1325
#>   std. dev.      0.1217  0.1004
#>   weight sum         83      56
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
