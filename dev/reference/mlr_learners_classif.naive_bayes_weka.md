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
#>   mean           0.0352  0.0232
#>   std. dev.      0.0262  0.0152
#>   weight sum         73      66
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2603  0.1476
#>   std. dev.      0.1364  0.1017
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2971  0.1672
#>   std. dev.      0.1289  0.1068
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean            0.306  0.1894
#>   std. dev.      0.1242   0.128
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3233  0.2162
#>   std. dev.      0.1245  0.1205
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3277   0.242
#>   std. dev.       0.168    0.15
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3328  0.2743
#>   std. dev.       0.201   0.207
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3773  0.3415
#>   std. dev.      0.2096  0.2363
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4126  0.3868
#>   std. dev.      0.2351  0.2691
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4481  0.4188
#>   std. dev.      0.2547  0.2486
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5361  0.4377
#>   std. dev.      0.2467  0.2419
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0476  0.0295
#>   std. dev.      0.0387  0.0248
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6135   0.474
#>   std. dev.      0.2479  0.2564
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6603  0.5262
#>   std. dev.      0.2426  0.2431
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6667  0.5573
#>   std. dev.      0.2375  0.2553
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6702  0.5943
#>   std. dev.      0.2573  0.2457
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6823  0.6468
#>   std. dev.      0.2528  0.2468
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.683  0.6769
#>   std. dev.      0.2416  0.2696
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7133  0.6937
#>   std. dev.      0.2373  0.2486
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7252  0.7003
#>   std. dev.      0.2636  0.2204
#>   weight sum         73      66
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7182  0.6986
#>   std. dev.      0.2573   0.192
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6487  0.6535
#>   std. dev.      0.2507  0.2219
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0528   0.032
#>   std. dev.       0.046  0.0282
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5886   0.592
#>   std. dev.      0.2157  0.2242
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4809  0.5355
#>   std. dev.      0.2293  0.2026
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4179  0.4575
#>   std. dev.      0.2207  0.2111
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3914  0.4449
#>   std. dev.      0.1951  0.2143
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3751   0.453
#>   std. dev.      0.2117  0.2534
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3652  0.4647
#>   std. dev.      0.2579  0.2652
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3373  0.4786
#>   std. dev.      0.2709  0.2743
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3247  0.4438
#>   std. dev.      0.2463  0.2582
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3457  0.3795
#>   std. dev.      0.2153  0.2246
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3531  0.3209
#>   std. dev.      0.1888  0.2195
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0666  0.0363
#>   std. dev.      0.0592  0.0259
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean            0.322  0.3227
#>   std. dev.      0.1638  0.1934
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3072  0.2938
#>   std. dev.      0.1714  0.1851
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3065  0.2669
#>   std. dev.      0.1681   0.172
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2837  0.2174
#>   std. dev.       0.143  0.1347
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2607  0.1808
#>   std. dev.      0.1425  0.1145
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2637  0.1497
#>   std. dev.      0.1719  0.0975
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2069  0.1228
#>   std. dev.      0.1592  0.0954
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1488  0.0993
#>   std. dev.      0.1006  0.0674
#>   weight sum         73      66
#>   precision      0.0039  0.0039
#> 
#> V48
#>   mean           0.1121  0.0723
#>   std. dev.      0.0698  0.0504
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0648  0.0405
#>   std. dev.      0.0383   0.033
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.088  0.0558
#>   std. dev.      0.0667  0.0369
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0232  0.0189
#>   std. dev.      0.0154  0.0136
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0198  0.0122
#>   std. dev.      0.0155  0.0093
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0166  0.0104
#>   std. dev.      0.0111  0.0078
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0124  0.0102
#>   std. dev.      0.0072  0.0062
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.012  0.0094
#>   std. dev.      0.0084  0.0055
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0087
#>   std. dev.      0.0091  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0091  0.0073
#>   std. dev.      0.0066  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0072
#>   std. dev.      0.0061  0.0057
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0066
#>   std. dev.      0.0081   0.005
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0093  0.0068
#>   std. dev.      0.0071  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1185  0.0839
#>   std. dev.      0.0509  0.0465
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0075   0.006
#>   std. dev.      0.0065  0.0038
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1364  0.1093
#>   std. dev.      0.0609  0.0526
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean            0.154  0.1106
#>   std. dev.      0.0916  0.0697
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2199  0.1227
#>   std. dev.      0.1217  0.0881
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
