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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0304  0.0234
#>   std. dev.      0.0226  0.0147
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.252  0.1481
#>   std. dev.      0.1446  0.1058
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2917    0.17
#>   std. dev.      0.1337   0.109
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.305  0.1862
#>   std. dev.      0.1231  0.1379
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3139  0.2106
#>   std. dev.      0.1273  0.1306
#>   weight sum         75      64
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean            0.314  0.2518
#>   std. dev.      0.1545   0.159
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3151  0.2879
#>   std. dev.      0.1779  0.2143
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3611   0.356
#>   std. dev.      0.2012  0.2496
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.3929  0.4059
#>   std. dev.      0.2364  0.2786
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4444   0.425
#>   std. dev.      0.2528  0.2651
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5265   0.444
#>   std. dev.      0.2542   0.246
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0407  0.0299
#>   std. dev.      0.0301  0.0208
#>   weight sum         75      64
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.5936  0.4771
#>   std. dev.      0.2654  0.2498
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6415  0.5214
#>   std. dev.      0.2636  0.2341
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6532  0.5461
#>   std. dev.      0.2504  0.2511
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6763  0.6151
#>   std. dev.      0.2519  0.2402
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6993  0.6768
#>   std. dev.      0.2466  0.2209
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6972  0.6957
#>   std. dev.      0.2367  0.2408
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7285  0.7093
#>   std. dev.       0.224   0.236
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7404  0.6894
#>   std. dev.      0.2545  0.2113
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7451  0.6661
#>   std. dev.      0.2563  0.2041
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean            0.678  0.6254
#>   std. dev.      0.2484  0.2344
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0463  0.0395
#>   std. dev.      0.0375  0.0274
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5946  0.5863
#>   std. dev.      0.2144  0.2317
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4994  0.5564
#>   std. dev.      0.2185  0.2025
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4362  0.4892
#>   std. dev.      0.2142  0.2051
#>   weight sum         75      64
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4078  0.4677
#>   std. dev.      0.1973  0.2102
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3709  0.4775
#>   std. dev.      0.2035  0.2442
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3247  0.4881
#>   std. dev.      0.2293  0.2542
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3015  0.4904
#>   std. dev.      0.2266  0.2545
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean            0.301  0.4451
#>   std. dev.      0.2182  0.2351
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3078  0.3651
#>   std. dev.      0.1967  0.2325
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3112  0.3213
#>   std. dev.      0.1683  0.2229
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0592  0.0403
#>   std. dev.      0.0429  0.0277
#>   weight sum         75      64
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2969  0.3229
#>   std. dev.      0.1501  0.1965
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2855  0.2868
#>   std. dev.      0.1628  0.1769
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2959  0.2606
#>   std. dev.      0.1604  0.1677
#>   weight sum         75      64
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2773   0.221
#>   std. dev.      0.1378  0.1407
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.248  0.1898
#>   std. dev.      0.1462  0.1203
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2271  0.1481
#>   std. dev.      0.1672  0.1039
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1826  0.1162
#>   std. dev.      0.1345  0.0881
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1449  0.0916
#>   std. dev.      0.0871  0.0607
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1137  0.0691
#>   std. dev.      0.0638  0.0442
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0645  0.0381
#>   std. dev.      0.0346  0.0263
#>   weight sum         75      64
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0831  0.0618
#>   std. dev.       0.048  0.0421
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0211  0.0163
#>   std. dev.      0.0121  0.0097
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.019  0.0115
#>   std. dev.      0.0117  0.0077
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean            0.015  0.0099
#>   std. dev.      0.0092  0.0071
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0117  0.0098
#>   std. dev.      0.0073  0.0058
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0094
#>   std. dev.      0.0084  0.0056
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.009  0.0082
#>   std. dev.      0.0071  0.0049
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0079
#>   std. dev.      0.0054  0.0052
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0072  0.0086
#>   std. dev.      0.0054   0.006
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0088  0.0072
#>   std. dev.      0.0072  0.0052
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0075  0.0076
#>   std. dev.       0.005  0.0059
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1097  0.0949
#>   std. dev.      0.0519   0.061
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0055   0.006
#>   std. dev.      0.0037  0.0037
#>   weight sum         75      64
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1281  0.1067
#>   std. dev.       0.058  0.0572
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1506  0.1114
#>   std. dev.      0.0826  0.0742
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean            0.214  0.1345
#>   std. dev.      0.1192  0.0956
#>   weight sum         75      64
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
