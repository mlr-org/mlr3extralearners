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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0374  0.0226
#>   std. dev.      0.0291  0.0163
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2579  0.1669
#>   std. dev.      0.1406  0.1207
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2955   0.176
#>   std. dev.      0.1283  0.1193
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3038  0.1813
#>   std. dev.      0.1308  0.1372
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3228  0.2246
#>   std. dev.      0.1382  0.1343
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3356  0.2654
#>   std. dev.      0.1684  0.1621
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3512  0.3066
#>   std. dev.      0.2036  0.2172
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.4134  0.3836
#>   std. dev.       0.221  0.2545
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4455  0.4394
#>   std. dev.      0.2498   0.291
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4855   0.463
#>   std. dev.      0.2648  0.2681
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5747  0.4691
#>   std. dev.      0.2552  0.2518
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0489  0.0303
#>   std. dev.      0.0403  0.0249
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6569  0.4919
#>   std. dev.      0.2528  0.2569
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6983  0.5434
#>   std. dev.      0.2466  0.2438
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6801  0.5763
#>   std. dev.      0.2492  0.2405
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V23
#>   mean           0.6762  0.6204
#>   std. dev.       0.267  0.2396
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6794  0.6655
#>   std. dev.      0.2578  0.2283
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6619  0.6924
#>   std. dev.      0.2506  0.2194
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6751   0.711
#>   std. dev.       0.246  0.2365
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.6834  0.7068
#>   std. dev.      0.2752  0.2307
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.6936   0.686
#>   std. dev.      0.2647  0.2057
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6416  0.6192
#>   std. dev.       0.246  0.2368
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0532  0.0354
#>   std. dev.      0.0487  0.0294
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5836   0.574
#>   std. dev.      0.2102  0.2175
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4769  0.5166
#>   std. dev.       0.203   0.204
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4211  0.4368
#>   std. dev.       0.194  0.2145
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3845  0.4294
#>   std. dev.       0.196  0.2145
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3565  0.4333
#>   std. dev.      0.2127  0.2317
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3311  0.4538
#>   std. dev.      0.2432  0.2445
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean            0.317  0.4615
#>   std. dev.      0.2437  0.2626
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3124  0.4318
#>   std. dev.      0.2283  0.2484
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3325  0.3834
#>   std. dev.        0.21  0.2259
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.335  0.3283
#>   std. dev.       0.191  0.2171
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0705  0.0398
#>   std. dev.      0.0599  0.0309
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3005  0.3051
#>   std. dev.      0.1661   0.186
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2749  0.2697
#>   std. dev.      0.1683  0.1775
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2875  0.2375
#>   std. dev.       0.156  0.1706
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2686  0.2051
#>   std. dev.      0.1357   0.142
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2405  0.1759
#>   std. dev.      0.1355   0.117
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2311  0.1439
#>   std. dev.      0.1577  0.0997
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V46
#>   mean           0.1878  0.1151
#>   std. dev.      0.1366  0.0979
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1399  0.0879
#>   std. dev.      0.0912  0.0719
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1114  0.0679
#>   std. dev.      0.0662  0.0528
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0652  0.0388
#>   std. dev.      0.0353  0.0338
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0907  0.0578
#>   std. dev.      0.0659   0.044
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0225  0.0178
#>   std. dev.       0.015  0.0136
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0206  0.0127
#>   std. dev.      0.0149   0.009
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0172  0.0104
#>   std. dev.      0.0112  0.0072
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118   0.009
#>   std. dev.      0.0082  0.0059
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0132   0.009
#>   std. dev.       0.009  0.0057
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0114  0.0084
#>   std. dev.      0.0092  0.0053
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0097  0.0076
#>   std. dev.      0.0072  0.0048
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0085  0.0077
#>   std. dev.      0.0062  0.0056
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0103  0.0069
#>   std. dev.      0.0083   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0097  0.0073
#>   std. dev.      0.0075   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1187  0.0926
#>   std. dev.      0.0526  0.0543
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0074  0.0063
#>   std. dev.      0.0064  0.0037
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1349  0.1166
#>   std. dev.       0.059  0.0645
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean             0.16  0.1193
#>   std. dev.      0.0965  0.0804
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2217  0.1455
#>   std. dev.       0.132  0.1048
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
