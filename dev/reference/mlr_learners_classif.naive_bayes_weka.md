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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean            0.037  0.0221
#>   std. dev.      0.0279  0.0144
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2482  0.1561
#>   std. dev.       0.137  0.0999
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2897  0.1706
#>   std. dev.      0.1253   0.108
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3086  0.1904
#>   std. dev.      0.1292  0.1326
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3229   0.228
#>   std. dev.      0.1333   0.138
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3325  0.2655
#>   std. dev.      0.1713  0.1644
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3407  0.3074
#>   std. dev.      0.1992  0.2195
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3886  0.3775
#>   std. dev.       0.219   0.266
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean            0.428   0.411
#>   std. dev.      0.2442  0.3031
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4726  0.4415
#>   std. dev.       0.259  0.2774
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5558  0.4631
#>   std. dev.      0.2668  0.2566
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0479  0.0298
#>   std. dev.      0.0388  0.0249
#>   weight sum         76      63
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6302  0.4905
#>   std. dev.      0.2599  0.2489
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6717  0.5322
#>   std. dev.      0.2616  0.2355
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6792  0.5636
#>   std. dev.      0.2502  0.2648
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6854  0.6056
#>   std. dev.      0.2463  0.2554
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6936  0.6497
#>   std. dev.      0.2311  0.2348
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6779  0.6669
#>   std. dev.      0.2248  0.2657
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6896  0.6863
#>   std. dev.      0.2327  0.2551
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.689  0.6724
#>   std. dev.      0.2727  0.2406
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean            0.676  0.6741
#>   std. dev.      0.2728  0.1975
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean            0.624  0.6564
#>   std. dev.      0.2506  0.2215
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0528  0.0353
#>   std. dev.      0.0479  0.0285
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.564  0.6013
#>   std. dev.      0.2103  0.2087
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4811  0.5366
#>   std. dev.      0.2223  0.1912
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4168  0.4367
#>   std. dev.      0.2263  0.2142
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.384  0.4321
#>   std. dev.      0.2005  0.2116
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V34
#>   mean            0.362   0.458
#>   std. dev.      0.1986  0.2498
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3305  0.4618
#>   std. dev.      0.2299   0.268
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.313  0.4603
#>   std. dev.      0.2232  0.2649
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3071  0.4062
#>   std. dev.      0.2119  0.2511
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3291  0.3595
#>   std. dev.      0.1864  0.2384
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3476  0.3133
#>   std. dev.      0.1823   0.238
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0671  0.0419
#>   std. dev.      0.0595  0.0322
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3144  0.3209
#>   std. dev.      0.1694  0.2076
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2954  0.2883
#>   std. dev.       0.165  0.1864
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3084  0.2579
#>   std. dev.        0.16  0.1802
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2817  0.2138
#>   std. dev.      0.1473  0.1374
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2534  0.1773
#>   std. dev.      0.1506  0.1163
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2519  0.1489
#>   std. dev.      0.1718  0.1048
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2029   0.124
#>   std. dev.      0.1501  0.1048
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1498  0.1002
#>   std. dev.       0.104  0.0782
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1126   0.073
#>   std. dev.      0.0745  0.0533
#>   weight sum         76      63
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0663  0.0398
#>   std. dev.      0.0406  0.0338
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0924  0.0684
#>   std. dev.      0.0659  0.0492
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0239  0.0187
#>   std. dev.      0.0159  0.0138
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0196  0.0134
#>   std. dev.      0.0147  0.0096
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0156  0.0106
#>   std. dev.      0.0106  0.0077
#>   weight sum         76      63
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0093
#>   std. dev.      0.0079   0.006
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0095
#>   std. dev.      0.0089  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0107  0.0083
#>   std. dev.      0.0092  0.0052
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0074
#>   std. dev.      0.0065  0.0046
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0071
#>   std. dev.      0.0061   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0062
#>   std. dev.      0.0074  0.0044
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086  0.0067
#>   std. dev.      0.0067  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1133  0.1045
#>   std. dev.      0.0539  0.0708
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0061  0.0062
#>   std. dev.      0.0045  0.0038
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1255  0.1233
#>   std. dev.      0.0541  0.0697
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1505  0.1248
#>   std. dev.      0.0744  0.0808
#>   weight sum         76      63
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2074  0.1425
#>   std. dev.      0.1053  0.0957
#>   weight sum         76      63
#>   precision      0.0042  0.0042
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
