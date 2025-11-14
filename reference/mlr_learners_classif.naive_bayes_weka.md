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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0344  0.0226
#>   std. dev.      0.0246  0.0136
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.243  0.1593
#>   std. dev.      0.1326  0.1086
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2735  0.1732
#>   std. dev.      0.1144  0.1117
#>   weight sum         70      69
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.2876  0.1842
#>   std. dev.      0.1121  0.1319
#>   weight sum         70      69
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3096   0.227
#>   std. dev.      0.1216  0.1383
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3244  0.2823
#>   std. dev.      0.1466  0.1739
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3385  0.3209
#>   std. dev.      0.1844  0.2289
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3901  0.3843
#>   std. dev.      0.2039  0.2658
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4318  0.4179
#>   std. dev.      0.2361  0.2997
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4735  0.4582
#>   std. dev.      0.2565  0.2794
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5537  0.4826
#>   std. dev.      0.2563  0.2747
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0467  0.0327
#>   std. dev.      0.0396  0.0252
#>   weight sum         70      69
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean            0.622  0.5071
#>   std. dev.      0.2535  0.2744
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6624  0.5468
#>   std. dev.      0.2531  0.2546
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6567  0.5599
#>   std. dev.      0.2453   0.267
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6646  0.5914
#>   std. dev.      0.2529  0.2418
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6787  0.6439
#>   std. dev.      0.2465  0.2219
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6597  0.6688
#>   std. dev.      0.2544  0.2422
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6844  0.6926
#>   std. dev.      0.2486  0.2403
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V27
#>   mean           0.7015   0.684
#>   std. dev.      0.2623  0.2246
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7015  0.6631
#>   std. dev.      0.2512  0.2042
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6437  0.6212
#>   std. dev.      0.2372  0.2285
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V3
#>   mean           0.0539   0.035
#>   std. dev.       0.048  0.0302
#>   weight sum         70      69
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5875  0.5669
#>   std. dev.       0.205  0.2324
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4876  0.5195
#>   std. dev.      0.2202  0.1951
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4337  0.4383
#>   std. dev.      0.2183  0.2067
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3939  0.4274
#>   std. dev.       0.214  0.2044
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3558  0.4266
#>   std. dev.      0.2234   0.235
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3351  0.4306
#>   std. dev.      0.2419  0.2442
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3113  0.4441
#>   std. dev.       0.236  0.2475
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3065  0.4167
#>   std. dev.      0.2187   0.236
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3306  0.3506
#>   std. dev.      0.2064  0.2104
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V39
#>   mean           0.3357  0.3228
#>   std. dev.       0.189  0.2032
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean            0.069  0.0409
#>   std. dev.      0.0612  0.0313
#>   weight sum         70      69
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3182  0.3201
#>   std. dev.      0.1637  0.1889
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.3165  0.2859
#>   std. dev.      0.1818  0.1731
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean            0.317  0.2506
#>   std. dev.      0.1705  0.1605
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2703  0.2087
#>   std. dev.      0.1371  0.1333
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2355  0.1723
#>   std. dev.      0.1394  0.1148
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2389  0.1388
#>   std. dev.      0.1738  0.0987
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean            0.204   0.113
#>   std. dev.      0.1496  0.0954
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1547  0.0949
#>   std. dev.      0.0941  0.0696
#>   weight sum         70      69
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1155  0.0717
#>   std. dev.      0.0704  0.0507
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0666    0.04
#>   std. dev.      0.0374  0.0317
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0875  0.0616
#>   std. dev.      0.0662  0.0459
#>   weight sum         70      69
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean            0.025  0.0178
#>   std. dev.      0.0152  0.0133
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0205  0.0121
#>   std. dev.      0.0122  0.0081
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0174  0.0103
#>   std. dev.      0.0099  0.0062
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0127    0.01
#>   std. dev.       0.008  0.0065
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0095
#>   std. dev.      0.0086  0.0056
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0087
#>   std. dev.      0.0085  0.0056
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0076
#>   std. dev.      0.0067  0.0048
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0076
#>   std. dev.      0.0062  0.0059
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0097  0.0065
#>   std. dev.      0.0074  0.0047
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0095  0.0069
#>   std. dev.      0.0073  0.0049
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1165  0.0997
#>   std. dev.      0.0578  0.0695
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0059
#>   std. dev.      0.0066  0.0037
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1369  0.1158
#>   std. dev.      0.0614  0.0703
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.151  0.1189
#>   std. dev.      0.0849  0.0797
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2101   0.143
#>   std. dev.      0.1176  0.0988
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
