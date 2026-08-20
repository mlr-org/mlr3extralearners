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
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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

- [`LearnerClassifNaiveBayesWeka$new()`](#method-LearnerClassifNaiveBayesWeka-initialize)

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

### `LearnerClassifNaiveBayesWeka$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesWeka$new()

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$clone()`

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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#>   mean           0.0371  0.0226
#>   std. dev.      0.0284  0.0157
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2538  0.1553
#>   std. dev.      0.1436  0.0919
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2903  0.1658
#>   std. dev.      0.1345  0.0937
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2982  0.1891
#>   std. dev.      0.1356   0.114
#>   weight sum         74      65
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3172  0.2254
#>   std. dev.      0.1384  0.1277
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3426  0.2654
#>   std. dev.      0.1688  0.1632
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3671  0.3031
#>   std. dev.      0.1937  0.2204
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.4188  0.3541
#>   std. dev.      0.2189   0.244
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4517  0.3875
#>   std. dev.      0.2516  0.2873
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4859  0.4188
#>   std. dev.      0.2647   0.258
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5714  0.4382
#>   std. dev.      0.2609  0.2388
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0489  0.0314
#>   std. dev.      0.0382  0.0252
#>   weight sum         74      65
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6491  0.4709
#>   std. dev.      0.2567  0.2525
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6962  0.5183
#>   std. dev.      0.2462    0.25
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7008  0.5531
#>   std. dev.       0.241  0.2747
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean           0.6935  0.5914
#>   std. dev.      0.2485  0.2498
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6981    0.65
#>   std. dev.      0.2267  0.2395
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6724  0.6707
#>   std. dev.      0.2247  0.2611
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6868  0.6957
#>   std. dev.      0.2352  0.2371
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6912  0.6808
#>   std. dev.      0.2672  0.2255
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6704  0.6699
#>   std. dev.      0.2699  0.2044
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6019  0.6569
#>   std. dev.      0.2469  0.2118
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0557  0.0339
#>   std. dev.      0.0484  0.0272
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5405  0.5958
#>   std. dev.      0.1991  0.2147
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4434  0.5351
#>   std. dev.      0.2098  0.1913
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.3973  0.4511
#>   std. dev.      0.1993   0.212
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3658  0.4522
#>   std. dev.      0.1671  0.2225
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V34
#>   mean           0.3401  0.4548
#>   std. dev.      0.1839  0.2525
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3172  0.4608
#>   std. dev.      0.2261  0.2629
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3115  0.4607
#>   std. dev.       0.225  0.2817
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3161  0.4167
#>   std. dev.      0.2067  0.2553
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3329  0.3497
#>   std. dev.      0.1904  0.2237
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3309  0.3126
#>   std. dev.      0.1748  0.2257
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0679  0.0367
#>   std. dev.      0.0605  0.0254
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2969  0.3229
#>   std. dev.      0.1458  0.2013
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2891   0.282
#>   std. dev.      0.1501  0.1745
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3009  0.2589
#>   std. dev.      0.1623  0.1618
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean           0.2705  0.2111
#>   std. dev.       0.145  0.1313
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2405   0.176
#>   std. dev.      0.1419  0.1164
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2365  0.1526
#>   std. dev.      0.1736  0.1059
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1899  0.1346
#>   std. dev.       0.154  0.1027
#>   weight sum         74      65
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1435  0.1049
#>   std. dev.      0.1009  0.0766
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1112  0.0744
#>   std. dev.      0.0735  0.0538
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0634  0.0417
#>   std. dev.      0.0399  0.0344
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0931  0.0604
#>   std. dev.      0.0684  0.0417
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0228  0.0189
#>   std. dev.      0.0148  0.0141
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0203  0.0125
#>   std. dev.       0.015  0.0085
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean            0.016  0.0099
#>   std. dev.      0.0111  0.0064
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean            0.012  0.0098
#>   std. dev.      0.0074   0.006
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0139  0.0098
#>   std. dev.      0.0088  0.0049
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0107  0.0087
#>   std. dev.       0.009  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0078
#>   std. dev.      0.0069  0.0046
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0087  0.0076
#>   std. dev.      0.0065  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0103   0.006
#>   std. dev.      0.0076  0.0038
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0101  0.0066
#>   std. dev.      0.0073  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1199  0.0936
#>   std. dev.      0.0539   0.062
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0078   0.006
#>   std. dev.      0.0066  0.0036
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1356  0.1145
#>   std. dev.      0.0579  0.0634
#>   weight sum         74      65
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1557  0.1155
#>   std. dev.      0.0906  0.0702
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2176  0.1322
#>   std. dev.      0.1293  0.0847
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4637681 
```
