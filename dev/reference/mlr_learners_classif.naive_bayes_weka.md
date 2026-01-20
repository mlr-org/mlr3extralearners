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
#>   mean           0.0333  0.0234
#>   std. dev.      0.0238  0.0164
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2433  0.1559
#>   std. dev.      0.1328  0.1015
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2792  0.1677
#>   std. dev.      0.1225  0.0887
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2934  0.1737
#>   std. dev.      0.1234  0.1092
#>   weight sum         75      64
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3114  0.2137
#>   std. dev.      0.1197   0.113
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V14
#>   mean           0.3113   0.259
#>   std. dev.      0.1531  0.1426
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3168  0.3018
#>   std. dev.      0.1794  0.2064
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V16
#>   mean           0.3778  0.3724
#>   std. dev.      0.1911  0.2459
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V17
#>   mean           0.4253  0.4182
#>   std. dev.      0.2245  0.2798
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4669  0.4402
#>   std. dev.      0.2469  0.2621
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5526  0.4499
#>   std. dev.      0.2497  0.2534
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0453  0.0317
#>   std. dev.      0.0372  0.0267
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6228  0.4922
#>   std. dev.      0.2554  0.2598
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6786  0.5431
#>   std. dev.      0.2545  0.2488
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7046  0.5888
#>   std. dev.      0.2331  0.2514
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V23
#>   mean           0.7177  0.6368
#>   std. dev.      0.2271  0.2388
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.7261  0.6812
#>   std. dev.      0.2128   0.222
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.7063  0.7026
#>   std. dev.      0.2278  0.2188
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V26
#>   mean           0.7098  0.7239
#>   std. dev.      0.2427  0.2234
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.705  0.7173
#>   std. dev.      0.2717  0.2218
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.6957  0.6981
#>   std. dev.      0.2667  0.1865
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6399  0.6437
#>   std. dev.      0.2433  0.2225
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0516  0.0354
#>   std. dev.       0.046  0.0302
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.573  0.5811
#>   std. dev.      0.2098  0.2301
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4813  0.5429
#>   std. dev.      0.2291  0.1923
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4375  0.4817
#>   std. dev.      0.2199   0.205
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3995  0.4452
#>   std. dev.      0.1968    0.21
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3658  0.4394
#>   std. dev.      0.2058  0.2491
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3301  0.4598
#>   std. dev.       0.235  0.2605
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3216  0.4635
#>   std. dev.      0.2281  0.2623
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3154  0.4139
#>   std. dev.      0.2118  0.2414
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.337  0.3331
#>   std. dev.      0.1879  0.2148
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3451  0.3043
#>   std. dev.      0.1825  0.1964
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0634  0.0388
#>   std. dev.      0.0608  0.0289
#>   weight sum         75      64
#>   precision      0.0035  0.0035
#> 
#> V40
#>   mean           0.3122  0.3053
#>   std. dev.      0.1695   0.182
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.302  0.2641
#>   std. dev.      0.1757  0.1663
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3062  0.2372
#>   std. dev.      0.1803  0.1491
#>   weight sum         75      64
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2831  0.2099
#>   std. dev.      0.1461  0.1184
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2591  0.1726
#>   std. dev.      0.1476  0.0841
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V45
#>   mean           0.2494  0.1362
#>   std. dev.      0.1754  0.0761
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2007  0.1174
#>   std. dev.      0.1571  0.0873
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1507   0.097
#>   std. dev.      0.0993  0.0649
#>   weight sum         75      64
#>   precision      0.0039  0.0039
#> 
#> V48
#>   mean           0.1153  0.0706
#>   std. dev.      0.0734  0.0493
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0661  0.0412
#>   std. dev.      0.0383  0.0314
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0863    0.06
#>   std. dev.       0.066   0.044
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0228   0.018
#>   std. dev.      0.0146  0.0133
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0202  0.0119
#>   std. dev.      0.0156  0.0081
#>   weight sum         75      64
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0162  0.0105
#>   std. dev.      0.0117  0.0064
#>   weight sum         75      64
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0099
#>   std. dev.      0.0081  0.0065
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0091
#>   std. dev.      0.0085  0.0053
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean             0.01  0.0082
#>   std. dev.      0.0081  0.0051
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0069
#>   std. dev.      0.0068   0.004
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0076
#>   std. dev.      0.0061  0.0053
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0072
#>   std. dev.      0.0076  0.0048
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0085  0.0068
#>   std. dev.      0.0068  0.0046
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1089  0.0933
#>   std. dev.      0.0561  0.0666
#>   weight sum         75      64
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0068   0.006
#>   std. dev.      0.0064  0.0035
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.125    0.11
#>   std. dev.      0.0581   0.065
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1406  0.1116
#>   std. dev.      0.0736  0.0698
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean            0.204  0.1356
#>   std. dev.      0.1078  0.0856
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
