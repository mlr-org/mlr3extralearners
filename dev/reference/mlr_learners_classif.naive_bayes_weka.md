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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0337  0.0219
#>   std. dev.      0.0261  0.0146
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2414  0.1529
#>   std. dev.      0.1356  0.1073
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2784  0.1668
#>   std. dev.       0.123  0.1013
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2924  0.1778
#>   std. dev.      0.1275  0.1198
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3148  0.2228
#>   std. dev.      0.1367  0.1305
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3299  0.2752
#>   std. dev.      0.1677  0.1661
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V15
#>   mean           0.3402  0.3187
#>   std. dev.      0.1966  0.2238
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3949  0.3921
#>   std. dev.      0.2087  0.2658
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4281  0.4316
#>   std. dev.      0.2381  0.3044
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4666  0.4552
#>   std. dev.      0.2548  0.2753
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5493  0.4614
#>   std. dev.      0.2585  0.2513
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0457  0.0289
#>   std. dev.      0.0349  0.0234
#>   weight sum         73      66
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean            0.622  0.4851
#>   std. dev.      0.2616  0.2552
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6756  0.5179
#>   std. dev.      0.2586  0.2474
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6795   0.555
#>   std. dev.      0.2499  0.2615
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6764  0.6268
#>   std. dev.      0.2478  0.2275
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6785  0.6808
#>   std. dev.      0.2342  0.2253
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6598  0.6943
#>   std. dev.      0.2474  0.2511
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6868  0.7183
#>   std. dev.      0.2404  0.2288
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7073  0.7082
#>   std. dev.      0.2683  0.2159
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7133  0.6746
#>   std. dev.      0.2685  0.2015
#>   weight sum         73      66
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6508  0.6302
#>   std. dev.      0.2485  0.2388
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V3
#>   mean           0.0491  0.0359
#>   std. dev.      0.0402  0.0269
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5787  0.5728
#>   std. dev.      0.2209  0.2254
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4802  0.4994
#>   std. dev.      0.2253  0.1912
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.431   0.418
#>   std. dev.      0.2195  0.2079
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.399  0.4358
#>   std. dev.      0.1994  0.2073
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V34
#>   mean           0.3687  0.4327
#>   std. dev.      0.2102  0.2422
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3448  0.4366
#>   std. dev.       0.252  0.2519
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3241  0.4419
#>   std. dev.      0.2583  0.2653
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3234   0.405
#>   std. dev.      0.2416  0.2453
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3372  0.3364
#>   std. dev.      0.2151  0.2175
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3367  0.2901
#>   std. dev.      0.1872  0.2132
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0642  0.0396
#>   std. dev.      0.0459  0.0293
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2991   0.307
#>   std. dev.      0.1535  0.1841
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2922  0.2781
#>   std. dev.      0.1686  0.1734
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2993  0.2565
#>   std. dev.      0.1683  0.1649
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2735  0.2052
#>   std. dev.      0.1291  0.1182
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2442  0.1668
#>   std. dev.      0.1451  0.0848
#>   weight sum         73      66
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2447  0.1488
#>   std. dev.      0.1711   0.087
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2042  0.1266
#>   std. dev.      0.1473  0.0941
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1472   0.097
#>   std. dev.      0.0895  0.0713
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1103  0.0722
#>   std. dev.      0.0629  0.0519
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0652  0.0402
#>   std. dev.      0.0335  0.0336
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0841  0.0609
#>   std. dev.      0.0555  0.0425
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0238  0.0186
#>   std. dev.      0.0148  0.0133
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0205  0.0125
#>   std. dev.       0.012   0.009
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0162  0.0102
#>   std. dev.      0.0099  0.0067
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0117  0.0085
#>   std. dev.      0.0077  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0129  0.0096
#>   std. dev.      0.0088  0.0055
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0106  0.0085
#>   std. dev.       0.009  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0067
#>   std. dev.      0.0066  0.0041
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0081
#>   std. dev.      0.0061  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0062
#>   std. dev.      0.0078  0.0044
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086  0.0071
#>   std. dev.      0.0073  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1145  0.0896
#>   std. dev.      0.0558    0.05
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0068  0.0061
#>   std. dev.      0.0063  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1338  0.1149
#>   std. dev.      0.0634  0.0579
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1517  0.1142
#>   std. dev.       0.089  0.0726
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2116    0.13
#>   std. dev.      0.1157  0.0887
#>   weight sum         73      66
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
