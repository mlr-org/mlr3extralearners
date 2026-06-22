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
#>   mean           0.0351  0.0225
#>   std. dev.      0.0288  0.0151
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2467  0.1534
#>   std. dev.      0.1401   0.089
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2884  0.1694
#>   std. dev.      0.1288  0.0968
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3001  0.1879
#>   std. dev.      0.1214  0.1235
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3145  0.2183
#>   std. dev.      0.1247  0.1391
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3215  0.2689
#>   std. dev.      0.1625  0.1734
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3422  0.3181
#>   std. dev.      0.1958  0.2327
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3922  0.3827
#>   std. dev.      0.2125  0.2619
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean            0.421  0.4251
#>   std. dev.      0.2408  0.2958
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4539  0.4471
#>   std. dev.      0.2546  0.2769
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean           0.5334  0.4558
#>   std. dev.      0.2482  0.2593
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0467  0.0296
#>   std. dev.      0.0404  0.0204
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6111  0.4764
#>   std. dev.      0.2414  0.2493
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6646  0.5195
#>   std. dev.      0.2498  0.2345
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6691  0.5455
#>   std. dev.      0.2481  0.2623
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6746  0.6047
#>   std. dev.      0.2524  0.2473
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.693  0.6586
#>   std. dev.      0.2414  0.2294
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6874   0.657
#>   std. dev.      0.2279  0.2728
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6998  0.6871
#>   std. dev.      0.2364  0.2546
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7054  0.6939
#>   std. dev.      0.2677  0.2156
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7161  0.6787
#>   std. dev.      0.2694  0.2082
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6549   0.647
#>   std. dev.      0.2516  0.2352
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0498  0.0356
#>   std. dev.      0.0449  0.0267
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5752  0.5786
#>   std. dev.       0.205  0.2346
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4744  0.5315
#>   std. dev.      0.2159  0.1993
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4149  0.4545
#>   std. dev.      0.2083  0.2022
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3836  0.4407
#>   std. dev.      0.1879  0.2118
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3623  0.4425
#>   std. dev.      0.1992  0.2549
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3429  0.4435
#>   std. dev.      0.2481  0.2585
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3205   0.461
#>   std. dev.      0.2536  0.2557
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3151   0.432
#>   std. dev.      0.2313  0.2398
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3258  0.3586
#>   std. dev.      0.2005  0.2217
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3408  0.3192
#>   std. dev.      0.1806  0.2258
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0655  0.0376
#>   std. dev.       0.057  0.0265
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3023  0.3225
#>   std. dev.      0.1657  0.2057
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2856  0.2845
#>   std. dev.       0.165  0.1898
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean            0.301  0.2578
#>   std. dev.      0.1644  0.1776
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2765  0.2137
#>   std. dev.      0.1411  0.1413
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2512  0.1738
#>   std. dev.      0.1439  0.1173
#>   weight sum         74      65
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2564  0.1477
#>   std. dev.      0.1721   0.107
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2086  0.1203
#>   std. dev.      0.1526  0.1036
#>   weight sum         74      65
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1511     0.1
#>   std. dev.      0.0958  0.0738
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1084  0.0735
#>   std. dev.      0.0649   0.053
#>   weight sum         74      65
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0622  0.0413
#>   std. dev.      0.0367  0.0331
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0872  0.0616
#>   std. dev.      0.0579  0.0456
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0225  0.0175
#>   std. dev.       0.014   0.012
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0127
#>   std. dev.      0.0148  0.0086
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0157  0.0097
#>   std. dev.      0.0114  0.0072
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0116  0.0089
#>   std. dev.      0.0075  0.0057
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0087
#>   std. dev.      0.0084  0.0046
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0097   0.008
#>   std. dev.      0.0082   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0081  0.0073
#>   std. dev.       0.005  0.0043
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0076
#>   std. dev.      0.0053  0.0052
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0085  0.0065
#>   std. dev.      0.0067  0.0049
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0086  0.0073
#>   std. dev.      0.0073  0.0056
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.109   0.096
#>   std. dev.      0.0507  0.0659
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0061
#>   std. dev.      0.0067  0.0039
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1268  0.1121
#>   std. dev.       0.058  0.0651
#>   weight sum         74      65
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1493  0.1169
#>   std. dev.      0.0909  0.0752
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean            0.208  0.1337
#>   std. dev.      0.1218  0.0865
#>   weight sum         74      65
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
