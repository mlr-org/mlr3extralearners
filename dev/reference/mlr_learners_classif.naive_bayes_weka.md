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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0355  0.0228
#>   std. dev.      0.0276  0.0158
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2611  0.1644
#>   std. dev.      0.1442  0.1172
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3015  0.1814
#>   std. dev.      0.1304  0.1177
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3104   0.191
#>   std. dev.       0.128  0.1362
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3234  0.2175
#>   std. dev.      0.1368  0.1273
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3292  0.2581
#>   std. dev.       0.176   0.147
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3335  0.2964
#>   std. dev.      0.2004  0.2004
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3805  0.3668
#>   std. dev.        0.22  0.2342
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4266  0.4082
#>   std. dev.      0.2513  0.2826
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4658  0.4383
#>   std. dev.        0.26  0.2624
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean            0.541  0.4728
#>   std. dev.      0.2543  0.2412
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0472  0.0315
#>   std. dev.      0.0416  0.0256
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean             0.62  0.4999
#>   std. dev.      0.2468  0.2444
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6664  0.5352
#>   std. dev.      0.2419  0.2359
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6627  0.5564
#>   std. dev.        0.23  0.2644
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6645  0.6139
#>   std. dev.      0.2525  0.2315
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6772  0.6591
#>   std. dev.      0.2515  0.2259
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6722  0.6659
#>   std. dev.      0.2478   0.236
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7043  0.6755
#>   std. dev.      0.2364  0.2311
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7116  0.6705
#>   std. dev.      0.2626  0.2165
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7083  0.6639
#>   std. dev.      0.2551  0.2154
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6442  0.6273
#>   std. dev.       0.241  0.2462
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean            0.055  0.0405
#>   std. dev.      0.0482  0.0309
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5906  0.5819
#>   std. dev.      0.2155  0.2311
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4893  0.5239
#>   std. dev.      0.2345  0.2085
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4308  0.4428
#>   std. dev.       0.216  0.2192
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.391  0.4571
#>   std. dev.      0.1942  0.2201
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3651  0.4678
#>   std. dev.      0.2043  0.2537
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3445  0.4779
#>   std. dev.      0.2382  0.2497
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.322  0.4893
#>   std. dev.      0.2496  0.2518
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.329  0.4526
#>   std. dev.      0.2197  0.2332
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3451  0.3661
#>   std. dev.      0.1991  0.2264
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3526  0.3304
#>   std. dev.      0.1809  0.2263
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0685   0.043
#>   std. dev.      0.0615  0.0334
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3134   0.342
#>   std. dev.      0.1668  0.2036
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3035  0.3157
#>   std. dev.      0.1699  0.1859
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean             0.31  0.2858
#>   std. dev.      0.1721  0.1748
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2851   0.228
#>   std. dev.      0.1394  0.1447
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean             0.25  0.1865
#>   std. dev.      0.1449  0.1193
#>   weight sum         75      64
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2478  0.1555
#>   std. dev.      0.1815  0.1051
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1997  0.1238
#>   std. dev.      0.1586  0.1019
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1466  0.1011
#>   std. dev.      0.0913  0.0748
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean            0.112   0.077
#>   std. dev.       0.066  0.0538
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0642  0.0418
#>   std. dev.       0.037  0.0343
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0912  0.0649
#>   std. dev.      0.0661  0.0478
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0238  0.0176
#>   std. dev.      0.0155  0.0114
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0188   0.013
#>   std. dev.       0.012  0.0089
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0166  0.0104
#>   std. dev.      0.0097   0.007
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0126    0.01
#>   std. dev.      0.0079   0.006
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0098
#>   std. dev.      0.0077  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0101  0.0087
#>   std. dev.      0.0083  0.0049
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0095  0.0077
#>   std. dev.      0.0071  0.0052
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0085
#>   std. dev.      0.0061  0.0061
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0094  0.0071
#>   std. dev.      0.0081  0.0051
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0081
#>   std. dev.       0.006  0.0058
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean            0.113  0.0923
#>   std. dev.      0.0513  0.0532
#>   weight sum         75      64
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0069  0.0067
#>   std. dev.       0.005   0.004
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1272  0.1114
#>   std. dev.      0.0576  0.0607
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1439  0.1205
#>   std. dev.      0.0851  0.0784
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2173  0.1367
#>   std. dev.      0.1248   0.102
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
