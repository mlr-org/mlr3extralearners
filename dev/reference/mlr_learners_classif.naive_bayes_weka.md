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
#>   mean            0.035  0.0242
#>   std. dev.       0.025  0.0164
#>   weight sum         74      65
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2645  0.1646
#>   std. dev.      0.1403  0.1254
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3017  0.1765
#>   std. dev.      0.1344  0.1224
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3207  0.1874
#>   std. dev.      0.1287  0.1426
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3333  0.2232
#>   std. dev.      0.1386   0.136
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3382  0.2742
#>   std. dev.      0.1742  0.1633
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3412  0.3144
#>   std. dev.      0.2025  0.2123
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3831  0.3732
#>   std. dev.      0.2209  0.2558
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4188  0.4211
#>   std. dev.      0.2463  0.2915
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4586  0.4622
#>   std. dev.      0.2578   0.268
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5421  0.4798
#>   std. dev.      0.2575  0.2539
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0457  0.0303
#>   std. dev.      0.0335  0.0254
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.615  0.5174
#>   std. dev.      0.2629  0.2549
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.674  0.5537
#>   std. dev.      0.2482  0.2443
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6998  0.5848
#>   std. dev.      0.2199  0.2492
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.7024  0.6395
#>   std. dev.      0.2297  0.2472
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7151  0.6853
#>   std. dev.      0.2285  0.2344
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean           0.7093  0.6803
#>   std. dev.      0.2309  0.2506
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7361  0.6841
#>   std. dev.      0.2195  0.2418
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7343   0.683
#>   std. dev.      0.2545  0.2188
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.7221  0.6704
#>   std. dev.      0.2576  0.1988
#>   weight sum         74      65
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6532  0.6331
#>   std. dev.      0.2398   0.231
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0502  0.0377
#>   std. dev.      0.0382  0.0307
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5715  0.5904
#>   std. dev.      0.2129  0.2423
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4868  0.5415
#>   std. dev.      0.2172  0.2049
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4237  0.4533
#>   std. dev.      0.2184  0.2215
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3935  0.4462
#>   std. dev.      0.1886  0.2195
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3596  0.4489
#>   std. dev.      0.1931  0.2466
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3199  0.4473
#>   std. dev.      0.2362  0.2579
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2989  0.4494
#>   std. dev.       0.239   0.258
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3084  0.4096
#>   std. dev.      0.2183  0.2431
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3224  0.3461
#>   std. dev.      0.1897  0.2214
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3296  0.2939
#>   std. dev.      0.1842  0.2045
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0628  0.0434
#>   std. dev.      0.0469  0.0325
#>   weight sum         74      65
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3014  0.2981
#>   std. dev.      0.1636  0.1715
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.2875  0.2737
#>   std. dev.        0.17  0.1645
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2991  0.2424
#>   std. dev.      0.1749  0.1634
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2845  0.2089
#>   std. dev.      0.1394   0.127
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2581  0.1674
#>   std. dev.      0.1451  0.1129
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2552  0.1345
#>   std. dev.      0.1779  0.0959
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2023   0.113
#>   std. dev.      0.1519  0.0871
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1456  0.0933
#>   std. dev.      0.0907  0.0617
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1131  0.0668
#>   std. dev.       0.063  0.0445
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0665  0.0379
#>   std. dev.      0.0358  0.0284
#>   weight sum         74      65
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0902  0.0606
#>   std. dev.      0.0564  0.0469
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0237  0.0179
#>   std. dev.      0.0146  0.0118
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0123
#>   std. dev.       0.012  0.0089
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0157  0.0111
#>   std. dev.      0.0101  0.0078
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.012  0.0095
#>   std. dev.      0.0077   0.006
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0118  0.0092
#>   std. dev.       0.008  0.0054
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0085
#>   std. dev.      0.0079  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0091  0.0071
#>   std. dev.      0.0064   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0079
#>   std. dev.      0.0059  0.0059
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0097  0.0068
#>   std. dev.      0.0082  0.0049
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0084  0.0069
#>   std. dev.      0.0064  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1199  0.0947
#>   std. dev.      0.0565  0.0615
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0067  0.0057
#>   std. dev.      0.0062  0.0033
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1329  0.1109
#>   std. dev.      0.0562  0.0608
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean           0.1493  0.1183
#>   std. dev.      0.0743  0.0853
#>   weight sum         74      65
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2167  0.1451
#>   std. dev.      0.1149  0.1096
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
