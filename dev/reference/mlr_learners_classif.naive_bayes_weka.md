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
#>   mean           0.0364   0.023
#>   std. dev.      0.0283   0.016
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2514  0.1664
#>   std. dev.       0.129  0.1215
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2768  0.1837
#>   std. dev.      0.1154  0.1267
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.2857  0.1994
#>   std. dev.      0.1251  0.1453
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3051   0.225
#>   std. dev.      0.1331  0.1425
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3093   0.269
#>   std. dev.      0.1739  0.1693
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3081  0.3058
#>   std. dev.      0.1994  0.2215
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3629  0.3748
#>   std. dev.      0.2141  0.2553
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3892  0.4241
#>   std. dev.       0.235  0.2894
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4269  0.4527
#>   std. dev.      0.2485  0.2558
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5038  0.4781
#>   std. dev.      0.2507  0.2425
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0458  0.0305
#>   std. dev.      0.0396  0.0244
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5864  0.5111
#>   std. dev.      0.2585  0.2629
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6322  0.5452
#>   std. dev.      0.2546  0.2519
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6379  0.5416
#>   std. dev.      0.2345    0.26
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean            0.657  0.5816
#>   std. dev.      0.2534  0.2358
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean            0.665  0.6374
#>   std. dev.      0.2474  0.2397
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6663  0.6557
#>   std. dev.      0.2465  0.2656
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7108  0.6778
#>   std. dev.      0.2355  0.2549
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7288   0.679
#>   std. dev.      0.2612  0.2369
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7444   0.665
#>   std. dev.      0.2378   0.217
#>   weight sum         73      66
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6845  0.6252
#>   std. dev.      0.2197  0.2299
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V3
#>   mean           0.0493  0.0378
#>   std. dev.      0.0451    0.03
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.6169   0.573
#>   std. dev.      0.1989   0.234
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.5046  0.5221
#>   std. dev.      0.2256   0.201
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4489  0.4454
#>   std. dev.      0.2163  0.2117
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.4098  0.4418
#>   std. dev.      0.1987  0.2154
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3695  0.4368
#>   std. dev.      0.2058  0.2639
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3414  0.4485
#>   std. dev.      0.2582  0.2621
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3247  0.4694
#>   std. dev.      0.2729  0.2599
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3345  0.4453
#>   std. dev.      0.2492  0.2257
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3466  0.3637
#>   std. dev.      0.2219  0.2196
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3432  0.3274
#>   std. dev.      0.1938  0.2345
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0642  0.0419
#>   std. dev.      0.0574  0.0326
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3136  0.3281
#>   std. dev.      0.1707  0.2095
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3134  0.2888
#>   std. dev.      0.1764  0.1767
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3106  0.2602
#>   std. dev.      0.1697  0.1612
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2826  0.2096
#>   std. dev.      0.1398   0.131
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2601  0.1814
#>   std. dev.      0.1467   0.116
#>   weight sum         73      66
#>   precision      0.0061  0.0061
#> 
#> V45
#>   mean           0.2619  0.1473
#>   std. dev.      0.1764  0.1049
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2156  0.1181
#>   std. dev.      0.1494   0.099
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1549  0.0967
#>   std. dev.      0.0947  0.0736
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1143  0.0742
#>   std. dev.      0.0686  0.0546
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0659  0.0418
#>   std. dev.      0.0372  0.0345
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0867   0.061
#>   std. dev.        0.06  0.0473
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0242  0.0172
#>   std. dev.      0.0153  0.0124
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.019  0.0118
#>   std. dev.      0.0123  0.0077
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0161  0.0094
#>   std. dev.      0.0105  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0118  0.0092
#>   std. dev.      0.0079  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0113  0.0099
#>   std. dev.      0.0087  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099   0.009
#>   std. dev.       0.009  0.0054
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0075
#>   std. dev.      0.0069   0.005
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0075  0.0082
#>   std. dev.      0.0057   0.006
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0067
#>   std. dev.      0.0079   0.005
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0074
#>   std. dev.      0.0074  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.114  0.0931
#>   std. dev.      0.0527  0.0611
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0071  0.0057
#>   std. dev.      0.0066  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1309  0.1172
#>   std. dev.      0.0608  0.0612
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1484  0.1224
#>   std. dev.      0.0948  0.0853
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2183  0.1448
#>   std. dev.      0.1307  0.1084
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
