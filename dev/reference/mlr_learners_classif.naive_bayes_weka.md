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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean            0.034  0.0216
#>   std. dev.      0.0245  0.0119
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2574   0.142
#>   std. dev.      0.1484  0.1006
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2875  0.1538
#>   std. dev.       0.135  0.1005
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2876  0.1731
#>   std. dev.      0.1273  0.1257
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3029  0.2162
#>   std. dev.      0.1224  0.1285
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3157  0.2581
#>   std. dev.      0.1614  0.1586
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean            0.333  0.2981
#>   std. dev.      0.1848  0.2121
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3821  0.3519
#>   std. dev.      0.2074  0.2408
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4145  0.3784
#>   std. dev.      0.2323  0.2684
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4598  0.4203
#>   std. dev.      0.2542  0.2609
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5401  0.4586
#>   std. dev.      0.2586  0.2542
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0417  0.0292
#>   std. dev.      0.0319  0.0207
#>   weight sum         74      65
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6392  0.4859
#>   std. dev.      0.2531  0.2634
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6907  0.5259
#>   std. dev.       0.252  0.2606
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.679  0.5459
#>   std. dev.      0.2465  0.2735
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6746  0.5922
#>   std. dev.      0.2654  0.2603
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6723  0.6377
#>   std. dev.       0.261  0.2501
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6633  0.6482
#>   std. dev.      0.2466  0.2694
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6907  0.6839
#>   std. dev.       0.225  0.2495
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V27
#>   mean            0.693   0.693
#>   std. dev.      0.2622  0.2223
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.6952  0.6837
#>   std. dev.      0.2565   0.198
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6444  0.6473
#>   std. dev.      0.2417  0.2305
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0464  0.0353
#>   std. dev.      0.0334  0.0272
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean            0.592  0.6049
#>   std. dev.      0.2041  0.2347
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4855  0.5424
#>   std. dev.      0.2242  0.2043
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4201  0.4538
#>   std. dev.      0.2161  0.2072
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3974  0.4564
#>   std. dev.      0.2012  0.2149
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean             0.37  0.4643
#>   std. dev.      0.2193  0.2435
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3384  0.4684
#>   std. dev.      0.2473  0.2623
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3127  0.4758
#>   std. dev.       0.238  0.2811
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3129  0.4359
#>   std. dev.      0.2222  0.2562
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3317  0.3701
#>   std. dev.      0.2074  0.2405
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3318  0.3307
#>   std. dev.      0.1924  0.2292
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0608  0.0387
#>   std. dev.      0.0355  0.0275
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3096  0.3349
#>   std. dev.      0.1642  0.2023
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2979  0.3002
#>   std. dev.      0.1689  0.1884
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3026  0.2597
#>   std. dev.      0.1699  0.1768
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2735  0.2117
#>   std. dev.      0.1398  0.1357
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2447  0.1749
#>   std. dev.      0.1399  0.1162
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2411   0.143
#>   std. dev.      0.1736   0.099
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1958  0.1128
#>   std. dev.      0.1597   0.096
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1524  0.0923
#>   std. dev.      0.0976  0.0678
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1141  0.0692
#>   std. dev.      0.0688  0.0481
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0652  0.0367
#>   std. dev.      0.0367  0.0318
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0823  0.0605
#>   std. dev.       0.045  0.0412
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V50
#>   mean            0.024   0.018
#>   std. dev.      0.0142  0.0126
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0196  0.0128
#>   std. dev.      0.0134   0.009
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0107
#>   std. dev.       0.011  0.0071
#>   weight sum         74      65
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0125  0.0105
#>   std. dev.      0.0082  0.0065
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0097
#>   std. dev.      0.0082  0.0054
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0083
#>   std. dev.      0.0092   0.005
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0094  0.0079
#>   std. dev.      0.0072  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0072
#>   std. dev.      0.0061  0.0053
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0064
#>   std. dev.       0.008  0.0049
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0073
#>   std. dev.      0.0069  0.0055
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1144  0.0962
#>   std. dev.      0.0527  0.0619
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0061
#>   std. dev.      0.0045  0.0039
#>   weight sum         74      65
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1328  0.1112
#>   std. dev.      0.0615  0.0658
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1507  0.1076
#>   std. dev.       0.087  0.0701
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2176  0.1237
#>   std. dev.      0.1274  0.0913
#>   weight sum         74      65
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
