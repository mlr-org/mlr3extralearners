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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0323  0.0223
#>   std. dev.      0.0212  0.0138
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V10
#>   mean           0.2602  0.1713
#>   std. dev.      0.1299  0.1249
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2942  0.1784
#>   std. dev.      0.1263   0.122
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3101  0.1948
#>   std. dev.      0.1256  0.1468
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3169  0.2285
#>   std. dev.      0.1301  0.1478
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3114  0.2664
#>   std. dev.      0.1418  0.1732
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3075   0.308
#>   std. dev.      0.1789  0.2253
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3588  0.3802
#>   std. dev.      0.2056  0.2613
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.3925  0.4202
#>   std. dev.      0.2286  0.2865
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4337  0.4444
#>   std. dev.      0.2413  0.2592
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V19
#>   mean            0.524  0.4532
#>   std. dev.      0.2477  0.2498
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0426  0.0306
#>   std. dev.      0.0289  0.0265
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6012  0.5107
#>   std. dev.      0.2662   0.258
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6526  0.5569
#>   std. dev.      0.2691  0.2555
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V22
#>   mean           0.6575  0.5775
#>   std. dev.      0.2504   0.254
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6611  0.6134
#>   std. dev.      0.2509  0.2521
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V24
#>   mean           0.6754  0.6413
#>   std. dev.      0.2453  0.2428
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6805  0.6667
#>   std. dev.      0.2268  0.2623
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7233   0.707
#>   std. dev.       0.213  0.2464
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7482  0.7066
#>   std. dev.      0.2448  0.2146
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7426  0.6719
#>   std. dev.      0.2533  0.2013
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6783   0.604
#>   std. dev.      0.2404  0.2289
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0479  0.0378
#>   std. dev.      0.0323  0.0319
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.6042  0.5488
#>   std. dev.      0.2153  0.2341
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4963   0.519
#>   std. dev.       0.239  0.2055
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4375  0.4468
#>   std. dev.      0.2177  0.2139
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3937  0.4245
#>   std. dev.      0.1802  0.2211
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3626  0.4448
#>   std. dev.      0.1873  0.2518
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3279  0.4579
#>   std. dev.      0.2323  0.2686
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3209   0.462
#>   std. dev.       0.245  0.2655
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3317  0.4177
#>   std. dev.      0.2259  0.2367
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3325  0.3466
#>   std. dev.      0.1977  0.2146
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3323  0.3066
#>   std. dev.      0.1802  0.1988
#>   weight sum         72      67
#>   precision      0.0061  0.0061
#> 
#> V4
#>   mean           0.0598  0.0437
#>   std. dev.      0.0372  0.0343
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3051   0.308
#>   std. dev.      0.1664  0.1784
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V41
#>   mean           0.3003  0.2746
#>   std. dev.      0.1677  0.1622
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V42
#>   mean           0.3056  0.2345
#>   std. dev.       0.169    0.15
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2873  0.2052
#>   std. dev.      0.1469   0.116
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2694  0.1681
#>   std. dev.      0.1477  0.0863
#>   weight sum         72      67
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2585  0.1293
#>   std. dev.      0.1761  0.0699
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2106  0.1036
#>   std. dev.      0.1577  0.0687
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1556  0.0833
#>   std. dev.      0.1031  0.0465
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1179  0.0617
#>   std. dev.      0.0734  0.0369
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0656  0.0337
#>   std. dev.      0.0395   0.023
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0819  0.0626
#>   std. dev.      0.0446  0.0479
#>   weight sum         72      67
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0228  0.0167
#>   std. dev.      0.0146  0.0099
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0204  0.0115
#>   std. dev.      0.0152  0.0081
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0109
#>   std. dev.      0.0105  0.0072
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118  0.0098
#>   std. dev.      0.0082  0.0064
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0095
#>   std. dev.      0.0084  0.0059
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0087  0.0082
#>   std. dev.      0.0071  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0073
#>   std. dev.      0.0068  0.0049
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0076
#>   std. dev.      0.0061  0.0052
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0066
#>   std. dev.      0.0079  0.0048
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0081  0.0068
#>   std. dev.      0.0067  0.0047
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1088  0.1027
#>   std. dev.      0.0513  0.0708
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007  0.0057
#>   std. dev.      0.0061  0.0029
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1267  0.1133
#>   std. dev.      0.0529  0.0662
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1457  0.1184
#>   std. dev.      0.0804  0.0832
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2172  0.1448
#>   std. dev.      0.1208  0.1075
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
