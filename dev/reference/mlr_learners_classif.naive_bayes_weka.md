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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>   mean           0.0371  0.0217
#>   std. dev.      0.0282  0.0149
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2523  0.1743
#>   std. dev.      0.1341  0.1257
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2861  0.1796
#>   std. dev.      0.1169  0.1167
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3004  0.1857
#>   std. dev.      0.1197  0.1323
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3178  0.2281
#>   std. dev.      0.1313  0.1367
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3348  0.2812
#>   std. dev.      0.1466  0.1691
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3546  0.3253
#>   std. dev.      0.1931  0.2275
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean            0.404  0.3899
#>   std. dev.      0.2144  0.2624
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4347  0.4388
#>   std. dev.      0.2532  0.2927
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4764  0.4661
#>   std. dev.      0.2735  0.2721
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5694  0.4621
#>   std. dev.      0.2559  0.2649
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0483    0.03
#>   std. dev.      0.0401  0.0263
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6589  0.5012
#>   std. dev.      0.2472  0.2531
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.7017  0.5604
#>   std. dev.      0.2441  0.2463
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6722  0.6002
#>   std. dev.      0.2439  0.2552
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V23
#>   mean           0.6506  0.6416
#>   std. dev.      0.2668  0.2322
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6532  0.6705
#>   std. dev.      0.2603  0.2232
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6396   0.685
#>   std. dev.      0.2542  0.2355
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6599  0.7034
#>   std. dev.      0.2414   0.227
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean            0.667  0.6986
#>   std. dev.       0.275  0.1986
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6806  0.6664
#>   std. dev.      0.2728  0.2121
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6267  0.6032
#>   std. dev.      0.2602  0.2414
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0522  0.0366
#>   std. dev.      0.0462  0.0312
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5759  0.5704
#>   std. dev.      0.2096  0.2273
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4725  0.5251
#>   std. dev.      0.2106  0.1921
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4198  0.4389
#>   std. dev.      0.2009  0.2034
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3934  0.4224
#>   std. dev.      0.1962   0.212
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3707  0.4103
#>   std. dev.      0.2166  0.2432
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3399  0.4312
#>   std. dev.      0.2447  0.2429
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3065   0.436
#>   std. dev.      0.2447  0.2393
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.2982  0.3973
#>   std. dev.      0.2182  0.2162
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3287  0.3202
#>   std. dev.      0.2127  0.1903
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3411  0.2808
#>   std. dev.      0.1919  0.1883
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0685  0.0433
#>   std. dev.      0.0603   0.034
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3076  0.3095
#>   std. dev.      0.1666  0.1787
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2928  0.2854
#>   std. dev.      0.1668  0.1631
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.3014  0.2481
#>   std. dev.      0.1633  0.1548
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2674  0.2012
#>   std. dev.      0.1446  0.1081
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2274  0.1619
#>   std. dev.      0.1345  0.0811
#>   weight sum         73      66
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2327  0.1352
#>   std. dev.      0.1689  0.0782
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1946   0.107
#>   std. dev.      0.1572  0.0775
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1439  0.0871
#>   std. dev.      0.0972  0.0587
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1122  0.0666
#>   std. dev.      0.0645  0.0428
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0639  0.0367
#>   std. dev.      0.0365  0.0273
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0922  0.0604
#>   std. dev.      0.0649  0.0503
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0235  0.0164
#>   std. dev.       0.016  0.0097
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0204  0.0123
#>   std. dev.      0.0146   0.008
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0165  0.0099
#>   std. dev.      0.0112  0.0069
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0088
#>   std. dev.       0.008  0.0057
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127  0.0099
#>   std. dev.      0.0086  0.0055
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0084
#>   std. dev.      0.0079  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0095   0.007
#>   std. dev.      0.0072  0.0045
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008   0.008
#>   std. dev.      0.0062   0.006
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0063
#>   std. dev.       0.008  0.0046
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087   0.007
#>   std. dev.      0.0067  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1172  0.0964
#>   std. dev.      0.0522    0.07
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0058
#>   std. dev.      0.0064  0.0036
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1316  0.1156
#>   std. dev.      0.0559  0.0702
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1527  0.1225
#>   std. dev.      0.0923  0.0819
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2151  0.1485
#>   std. dev.        0.13  0.1082
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
