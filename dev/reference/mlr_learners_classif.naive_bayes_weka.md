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
#>   mean           0.0337  0.0223
#>   std. dev.      0.0271  0.0147
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2449  0.1506
#>   std. dev.      0.1338  0.0915
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2851  0.1631
#>   std. dev.      0.1247  0.0908
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2948  0.1793
#>   std. dev.      0.1227  0.1101
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3061  0.2189
#>   std. dev.      0.1284  0.1193
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3145  0.2604
#>   std. dev.      0.1684  0.1503
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3303  0.3044
#>   std. dev.      0.1986  0.2179
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3839  0.3782
#>   std. dev.      0.2145    0.26
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4259  0.4165
#>   std. dev.      0.2361  0.2986
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4635  0.4415
#>   std. dev.       0.247  0.2839
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5287  0.4622
#>   std. dev.      0.2502  0.2657
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0405  0.0273
#>   std. dev.      0.0371  0.0175
#>   weight sum         73      66
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.593  0.4945
#>   std. dev.      0.2529  0.2663
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6505   0.539
#>   std. dev.      0.2654  0.2519
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6693  0.5671
#>   std. dev.      0.2622  0.2607
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6761  0.6024
#>   std. dev.      0.2572  0.2403
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6923  0.6443
#>   std. dev.      0.2423  0.2381
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6901  0.6807
#>   std. dev.      0.2331  0.2569
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7063  0.7166
#>   std. dev.      0.2383  0.2321
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7022  0.7124
#>   std. dev.      0.2694  0.2078
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.6966  0.6928
#>   std. dev.      0.2691  0.1685
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6434  0.6331
#>   std. dev.      0.2507  0.2076
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0471   0.031
#>   std. dev.      0.0467  0.0205
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5783  0.5598
#>   std. dev.       0.218  0.2211
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4879  0.5092
#>   std. dev.      0.2379  0.2023
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4389  0.4442
#>   std. dev.      0.2179  0.2093
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.4085  0.4359
#>   std. dev.      0.1945  0.2105
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3676  0.4617
#>   std. dev.      0.2113  0.2398
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3414  0.4739
#>   std. dev.      0.2399  0.2535
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.3164  0.4567
#>   std. dev.      0.2508  0.2659
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3164  0.4006
#>   std. dev.      0.2242  0.2315
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3293   0.331
#>   std. dev.      0.1891  0.2002
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3294   0.297
#>   std. dev.       0.178   0.203
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0653  0.0361
#>   std. dev.      0.0596   0.021
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3065  0.3112
#>   std. dev.       0.177  0.1992
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2938   0.279
#>   std. dev.      0.1705  0.1869
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2936  0.2551
#>   std. dev.      0.1743  0.1726
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2756  0.2201
#>   std. dev.      0.1399  0.1438
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2492  0.1834
#>   std. dev.      0.1453  0.1186
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2471  0.1474
#>   std. dev.      0.1766  0.1008
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2006  0.1228
#>   std. dev.      0.1548  0.1013
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1453  0.0948
#>   std. dev.      0.0962   0.073
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1092  0.0683
#>   std. dev.      0.0654  0.0506
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0632   0.039
#>   std. dev.      0.0351  0.0312
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0861  0.0599
#>   std. dev.      0.0631  0.0397
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0225   0.018
#>   std. dev.      0.0127  0.0138
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0187  0.0122
#>   std. dev.      0.0133   0.009
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0147  0.0096
#>   std. dev.      0.0108  0.0071
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0095
#>   std. dev.      0.0077  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0118  0.0096
#>   std. dev.      0.0079  0.0057
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0089  0.0085
#>   std. dev.      0.0068  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0083  0.0075
#>   std. dev.      0.0052  0.0044
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0076  0.0076
#>   std. dev.      0.0057  0.0049
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.009  0.0065
#>   std. dev.      0.0072  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0083  0.0074
#>   std. dev.      0.0063  0.0058
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1098  0.0919
#>   std. dev.      0.0529  0.0492
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0065  0.0038
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1255  0.1079
#>   std. dev.      0.0535  0.0537
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean           0.1452  0.1072
#>   std. dev.      0.0744  0.0625
#>   weight sum         73      66
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2085  0.1211
#>   std. dev.      0.1061  0.0752
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
