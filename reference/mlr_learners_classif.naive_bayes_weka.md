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
#>   mean           0.0376  0.0228
#>   std. dev.      0.0293  0.0145
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2651  0.1546
#>   std. dev.      0.1454  0.1136
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2984  0.1792
#>   std. dev.      0.1291  0.1169
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean            0.306  0.2068
#>   std. dev.      0.1276  0.1373
#>   weight sum         77      62
#>   precision      0.0045  0.0045
#> 
#> V13
#>   mean           0.3205  0.2413
#>   std. dev.      0.1335  0.1402
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3324  0.2794
#>   std. dev.      0.1636  0.1793
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3417  0.3117
#>   std. dev.      0.1952  0.2252
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3968  0.3848
#>   std. dev.      0.2066  0.2677
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4198  0.4343
#>   std. dev.      0.2363  0.3051
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4539   0.475
#>   std. dev.      0.2563  0.2774
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5454  0.4935
#>   std. dev.      0.2489  0.2512
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0477  0.0301
#>   std. dev.      0.0405  0.0181
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6309  0.5276
#>   std. dev.      0.2505  0.2582
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean             0.67  0.5598
#>   std. dev.      0.2522  0.2447
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6521  0.5649
#>   std. dev.      0.2455   0.258
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6467  0.5988
#>   std. dev.      0.2646  0.2364
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6696  0.6508
#>   std. dev.      0.2557  0.2334
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6649  0.6551
#>   std. dev.      0.2427  0.2511
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V26
#>   mean           0.6921  0.6621
#>   std. dev.      0.2403  0.2263
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6975  0.6557
#>   std. dev.      0.2751  0.2093
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.6961  0.6502
#>   std. dev.      0.2643  0.2179
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6309  0.6342
#>   std. dev.      0.2552  0.2487
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0522  0.0354
#>   std. dev.      0.0457  0.0247
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5881  0.5789
#>   std. dev.      0.2197  0.2404
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4934  0.5211
#>   std. dev.      0.2285  0.2015
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean            0.436  0.4499
#>   std. dev.      0.2125  0.2133
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean            0.404  0.4528
#>   std. dev.      0.1994  0.2214
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3766  0.4584
#>   std. dev.      0.2191  0.2586
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3513  0.4558
#>   std. dev.      0.2466  0.2701
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3234  0.4627
#>   std. dev.      0.2518  0.2658
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3217  0.4266
#>   std. dev.      0.2288  0.2374
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3477  0.3504
#>   std. dev.      0.2138  0.2189
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3542  0.3061
#>   std. dev.      0.1924  0.2069
#>   weight sum         77      62
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0662  0.0409
#>   std. dev.      0.0601  0.0298
#>   weight sum         77      62
#>   precision      0.0035  0.0035
#> 
#> V40
#>   mean           0.3255  0.3036
#>   std. dev.       0.172  0.1801
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.3055   0.276
#>   std. dev.      0.1787  0.1675
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3193   0.252
#>   std. dev.      0.1715  0.1636
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2934  0.2078
#>   std. dev.      0.1397  0.1363
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2549  0.1776
#>   std. dev.       0.147   0.119
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2594  0.1442
#>   std. dev.      0.1805  0.0954
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2101  0.1202
#>   std. dev.        0.16  0.0777
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean            0.147  0.0922
#>   std. dev.      0.1001  0.0537
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1144  0.0695
#>   std. dev.      0.0703  0.0417
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0656  0.0378
#>   std. dev.      0.0393  0.0252
#>   weight sum         77      62
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0903    0.06
#>   std. dev.      0.0653  0.0494
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0235  0.0174
#>   std. dev.      0.0162  0.0097
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0209  0.0117
#>   std. dev.      0.0147  0.0074
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0166  0.0095
#>   std. dev.      0.0108  0.0061
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0127  0.0094
#>   std. dev.       0.008   0.006
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0095
#>   std. dev.      0.0084  0.0054
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0086
#>   std. dev.      0.0087  0.0049
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0074
#>   std. dev.      0.0071  0.0046
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0079
#>   std. dev.      0.0061   0.005
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0066
#>   std. dev.      0.0078  0.0047
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0074
#>   std. dev.      0.0067  0.0054
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1162  0.0925
#>   std. dev.      0.0513  0.0617
#>   weight sum         77      62
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0074  0.0059
#>   std. dev.      0.0065  0.0039
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.133  0.1111
#>   std. dev.      0.0591  0.0611
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1628  0.1135
#>   std. dev.       0.092  0.0769
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2281  0.1364
#>   std. dev.      0.1292  0.0989
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
