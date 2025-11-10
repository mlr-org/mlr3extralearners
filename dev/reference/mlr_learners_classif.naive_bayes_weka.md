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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0346   0.023
#>   std. dev.      0.0255  0.0163
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2452  0.1678
#>   std. dev.       0.142  0.1212
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2822  0.1762
#>   std. dev.      0.1309  0.1188
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2933  0.1875
#>   std. dev.      0.1301  0.1342
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3104  0.2174
#>   std. dev.      0.1267  0.1319
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3212  0.2626
#>   std. dev.      0.1653  0.1528
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3233  0.2965
#>   std. dev.       0.195  0.2056
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3731  0.3616
#>   std. dev.      0.2158  0.2455
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4066  0.4121
#>   std. dev.      0.2353  0.2896
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4444  0.4564
#>   std. dev.      0.2476  0.2655
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5265  0.4774
#>   std. dev.        0.25  0.2535
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0445   0.028
#>   std. dev.      0.0338  0.0208
#>   weight sum         76      63
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6031  0.5212
#>   std. dev.      0.2569  0.2514
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6564  0.5675
#>   std. dev.      0.2481  0.2442
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6587  0.6004
#>   std. dev.      0.2371  0.2511
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6668   0.642
#>   std. dev.      0.2459  0.2302
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6804  0.6719
#>   std. dev.      0.2354  0.2016
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.6716   0.686
#>   std. dev.      0.2332  0.2207
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7017  0.7093
#>   std. dev.      0.2286  0.2223
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7125  0.6963
#>   std. dev.      0.2626   0.212
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7201  0.6885
#>   std. dev.       0.253  0.2056
#>   weight sum         76      63
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6643  0.6546
#>   std. dev.      0.2324  0.2481
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0489  0.0333
#>   std. dev.      0.0356  0.0266
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5939  0.5959
#>   std. dev.      0.1996  0.2556
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4829  0.5467
#>   std. dev.      0.2248  0.2169
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4225  0.4798
#>   std. dev.      0.2126  0.2092
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3964  0.4602
#>   std. dev.      0.1915  0.2139
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3635  0.4634
#>   std. dev.       0.205  0.2248
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3307  0.4483
#>   std. dev.      0.2526  0.2332
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3117  0.4274
#>   std. dev.      0.2592  0.2363
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3194  0.3896
#>   std. dev.      0.2353  0.2273
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3322  0.3424
#>   std. dev.      0.2096  0.2153
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3347  0.3093
#>   std. dev.      0.1872  0.2143
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0617  0.0417
#>   std. dev.      0.0389   0.033
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3055  0.3119
#>   std. dev.      0.1646  0.1964
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3064  0.2752
#>   std. dev.      0.1697  0.1693
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3107  0.2345
#>   std. dev.      0.1697  0.1575
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2791  0.2087
#>   std. dev.       0.134  0.1214
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2514  0.1777
#>   std. dev.       0.137  0.1119
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2517  0.1397
#>   std. dev.      0.1703   0.098
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2065  0.1113
#>   std. dev.      0.1517  0.0891
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1512  0.0894
#>   std. dev.      0.0897  0.0642
#>   weight sum         76      63
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1122  0.0618
#>   std. dev.       0.065  0.0417
#>   weight sum         76      63
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0646  0.0348
#>   std. dev.      0.0367   0.024
#>   weight sum         76      63
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0872  0.0661
#>   std. dev.      0.0481  0.0514
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0234  0.0178
#>   std. dev.      0.0152  0.0117
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0189  0.0108
#>   std. dev.      0.0122  0.0083
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0154  0.0116
#>   std. dev.      0.0095  0.0078
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0124  0.0095
#>   std. dev.      0.0078  0.0058
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0114  0.0094
#>   std. dev.      0.0085  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean             0.01  0.0085
#>   std. dev.      0.0093  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0069
#>   std. dev.      0.0069  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0075
#>   std. dev.      0.0064  0.0059
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0064
#>   std. dev.      0.0071  0.0047
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087  0.0065
#>   std. dev.      0.0069  0.0046
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1167  0.1008
#>   std. dev.      0.0525  0.0712
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0057
#>   std. dev.      0.0062  0.0033
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1305   0.118
#>   std. dev.      0.0617  0.0685
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1465  0.1233
#>   std. dev.      0.0828  0.0831
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2064  0.1462
#>   std. dev.      0.1158  0.1053
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
