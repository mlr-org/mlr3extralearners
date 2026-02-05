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
#>   mean           0.0368  0.0215
#>   std. dev.      0.0286  0.0146
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2591    0.14
#>   std. dev.       0.145   0.097
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2975  0.1603
#>   std. dev.      0.1257   0.106
#>   weight sum         77      62
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean           0.3067   0.186
#>   std. dev.      0.1228   0.135
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3203  0.2079
#>   std. dev.      0.1354  0.1336
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3307  0.2364
#>   std. dev.      0.1701  0.1535
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3456  0.2751
#>   std. dev.      0.1977  0.2066
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3921   0.336
#>   std. dev.      0.2134  0.2363
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4198  0.3801
#>   std. dev.      0.2335  0.2629
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4547  0.4116
#>   std. dev.      0.2523  0.2595
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5322   0.433
#>   std. dev.      0.2526  0.2642
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0486  0.0283
#>   std. dev.      0.0403  0.0207
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6175  0.4661
#>   std. dev.      0.2492  0.2675
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6725   0.527
#>   std. dev.      0.2534  0.2431
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6679  0.5466
#>   std. dev.      0.2437  0.2686
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6656  0.5857
#>   std. dev.      0.2524   0.257
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6781  0.6388
#>   std. dev.      0.2426  0.2363
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6625   0.675
#>   std. dev.      0.2424  0.2559
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6935  0.6858
#>   std. dev.      0.2419  0.2572
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V27
#>   mean           0.7008  0.6745
#>   std. dev.      0.2738  0.2332
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.6943  0.6856
#>   std. dev.      0.2627  0.1896
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6284  0.6572
#>   std. dev.      0.2345  0.1951
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V3
#>   mean           0.0535  0.0315
#>   std. dev.      0.0459  0.0281
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5671   0.592
#>   std. dev.      0.2155  0.2215
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V31
#>   mean           0.4738  0.5351
#>   std. dev.      0.2291  0.2045
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4222  0.4502
#>   std. dev.      0.2149   0.205
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3834  0.4359
#>   std. dev.      0.2034  0.2135
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3611  0.4623
#>   std. dev.      0.2165  0.2623
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean             0.34  0.4859
#>   std. dev.      0.2451  0.2782
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3242  0.4809
#>   std. dev.      0.2464  0.2728
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3239  0.4109
#>   std. dev.      0.2186  0.2551
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3382  0.3464
#>   std. dev.         0.2  0.2265
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3394   0.332
#>   std. dev.      0.1782  0.2188
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0692  0.0365
#>   std. dev.      0.0599   0.028
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean            0.314  0.3368
#>   std. dev.      0.1588  0.2014
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3088  0.2959
#>   std. dev.      0.1774   0.178
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3173  0.2568
#>   std. dev.      0.1784  0.1683
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2886  0.2216
#>   std. dev.      0.1474  0.1413
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2489  0.1783
#>   std. dev.      0.1465   0.114
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2491  0.1413
#>   std. dev.      0.1762  0.0952
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2036   0.114
#>   std. dev.      0.1571  0.0952
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1465  0.0952
#>   std. dev.      0.0962  0.0705
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1106  0.0708
#>   std. dev.       0.069  0.0489
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0654  0.0386
#>   std. dev.      0.0375  0.0328
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0861  0.0614
#>   std. dev.      0.0628  0.0448
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.024  0.0178
#>   std. dev.      0.0143  0.0133
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0201  0.0115
#>   std. dev.       0.015  0.0079
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0162  0.0095
#>   std. dev.      0.0118  0.0059
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0097
#>   std. dev.      0.0075  0.0059
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0095
#>   std. dev.      0.0083  0.0051
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0089
#>   std. dev.      0.0075  0.0054
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0074
#>   std. dev.      0.0057  0.0048
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0078
#>   std. dev.      0.0051  0.0063
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0094  0.0071
#>   std. dev.      0.0069  0.0051
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0068
#>   std. dev.      0.0067  0.0053
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1123   0.095
#>   std. dev.      0.0535  0.0647
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0076   0.006
#>   std. dev.      0.0065  0.0037
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1315   0.112
#>   std. dev.      0.0576  0.0631
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1632  0.1111
#>   std. dev.      0.0881  0.0795
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2256  0.1263
#>   std. dev.      0.1287  0.0929
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
