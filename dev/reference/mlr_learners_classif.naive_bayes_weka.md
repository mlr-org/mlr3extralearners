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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0368  0.0228
#>   std. dev.      0.0288  0.0148
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2682  0.1653
#>   std. dev.        0.15  0.1114
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3041  0.1813
#>   std. dev.      0.1331  0.1127
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3125  0.1807
#>   std. dev.       0.128  0.1354
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3256  0.2295
#>   std. dev.      0.1342  0.1343
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3281  0.2818
#>   std. dev.      0.1752  0.1646
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3405  0.3275
#>   std. dev.      0.2042  0.2171
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3842   0.404
#>   std. dev.      0.2171  0.2649
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4079   0.453
#>   std. dev.      0.2442  0.2981
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4414    0.48
#>   std. dev.      0.2608  0.2678
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean            0.523   0.493
#>   std. dev.      0.2549  0.2569
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0465  0.0304
#>   std. dev.      0.0349  0.0252
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.617  0.5332
#>   std. dev.      0.2478  0.2572
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6655  0.5692
#>   std. dev.       0.253  0.2469
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6601  0.6034
#>   std. dev.      0.2418   0.245
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V23
#>   mean           0.6616  0.6294
#>   std. dev.      0.2653  0.2368
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6675  0.6796
#>   std. dev.      0.2627  0.2126
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6584  0.6912
#>   std. dev.      0.2478  0.2168
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.6962  0.7033
#>   std. dev.      0.2315  0.2151
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7067  0.7021
#>   std. dev.      0.2661  0.2113
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7109  0.6846
#>   std. dev.      0.2625  0.2158
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6428  0.6415
#>   std. dev.      0.2532  0.2415
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0512  0.0366
#>   std. dev.      0.0388  0.0279
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5836  0.5804
#>   std. dev.      0.2147  0.2414
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4831  0.5195
#>   std. dev.      0.2261  0.1999
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4302  0.4367
#>   std. dev.      0.2151  0.2209
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3904  0.4278
#>   std. dev.      0.1894  0.2203
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3688   0.429
#>   std. dev.      0.2052  0.2531
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3482  0.4389
#>   std. dev.      0.2607  0.2441
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3375  0.4513
#>   std. dev.      0.2601   0.239
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3434  0.4092
#>   std. dev.        0.24  0.2263
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3566  0.3099
#>   std. dev.      0.2221  0.1948
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3566  0.2493
#>   std. dev.      0.1941  0.1656
#>   weight sum         76      63
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0605  0.0423
#>   std. dev.      0.0455  0.0321
#>   weight sum         76      63
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3122    0.26
#>   std. dev.      0.1573  0.1447
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V41
#>   mean           0.2802  0.2467
#>   std. dev.      0.1623  0.1412
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V42
#>   mean           0.2972  0.2223
#>   std. dev.      0.1749  0.1353
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2917  0.1872
#>   std. dev.      0.1435  0.0913
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean            0.265  0.1602
#>   std. dev.      0.1544   0.087
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2658  0.1309
#>   std. dev.      0.1862  0.0754
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.218  0.1112
#>   std. dev.      0.1637  0.0732
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1544  0.0887
#>   std. dev.      0.1062  0.0555
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1146  0.0665
#>   std. dev.      0.0761  0.0436
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean            0.065  0.0369
#>   std. dev.      0.0401  0.0275
#>   weight sum         76      63
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0834  0.0626
#>   std. dev.      0.0548  0.0499
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V50
#>   mean           0.0233   0.017
#>   std. dev.      0.0157  0.0105
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0208  0.0125
#>   std. dev.      0.0152  0.0086
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0169  0.0112
#>   std. dev.      0.0119  0.0076
#>   weight sum         76      63
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0123  0.0094
#>   std. dev.       0.008  0.0062
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0133  0.0094
#>   std. dev.       0.009  0.0057
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0108  0.0085
#>   std. dev.      0.0089  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0095   0.007
#>   std. dev.       0.007  0.0046
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0083
#>   std. dev.      0.0062  0.0057
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098  0.0066
#>   std. dev.      0.0084  0.0042
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086  0.0068
#>   std. dev.      0.0067  0.0043
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.115  0.0998
#>   std. dev.      0.0561  0.0718
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0065  0.0056
#>   std. dev.      0.0044  0.0035
#>   weight sum         76      63
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1325  0.1156
#>   std. dev.      0.0631  0.0708
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1608  0.1194
#>   std. dev.      0.0969  0.0839
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2322   0.149
#>   std. dev.      0.1342  0.0973
#>   weight sum         76      63
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4202899 
```
