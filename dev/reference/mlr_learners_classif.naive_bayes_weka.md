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
#>   mean           0.0351  0.0224
#>   std. dev.       0.028  0.0141
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2455  0.1724
#>   std. dev.      0.1229  0.1228
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean            0.277  0.1819
#>   std. dev.      0.1074  0.1196
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean            0.292  0.1959
#>   std. dev.      0.1192  0.1365
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3044  0.2304
#>   std. dev.      0.1276  0.1381
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3132  0.2573
#>   std. dev.      0.1496  0.1702
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3213  0.2833
#>   std. dev.      0.1859  0.2212
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3761  0.3334
#>   std. dev.      0.2093  0.2425
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4193  0.3807
#>   std. dev.      0.2449  0.2769
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4604  0.4271
#>   std. dev.      0.2565  0.2635
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5424  0.4518
#>   std. dev.      0.2611  0.2588
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0456  0.0318
#>   std. dev.      0.0376  0.0213
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6229   0.489
#>   std. dev.      0.2592  0.2617
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6751  0.5258
#>   std. dev.      0.2585  0.2486
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.671  0.5465
#>   std. dev.      0.2383  0.2658
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6657  0.5802
#>   std. dev.      0.2455  0.2542
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6759  0.6113
#>   std. dev.      0.2392  0.2345
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6669  0.6163
#>   std. dev.      0.2472   0.249
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7053  0.6472
#>   std. dev.      0.2404  0.2413
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7231  0.6537
#>   std. dev.      0.2642  0.2271
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7218  0.6721
#>   std. dev.      0.2622  0.2122
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6576  0.6527
#>   std. dev.      0.2558  0.2323
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0521  0.0367
#>   std. dev.      0.0477  0.0274
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5979  0.6066
#>   std. dev.      0.2166  0.2291
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4775  0.5591
#>   std. dev.      0.2352  0.2042
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4267   0.484
#>   std. dev.      0.2249  0.2239
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3931  0.4692
#>   std. dev.      0.1947   0.228
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3707  0.4794
#>   std. dev.      0.2014  0.2514
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3562  0.4937
#>   std. dev.       0.243  0.2487
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3335  0.4855
#>   std. dev.      0.2604  0.2427
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3309  0.4333
#>   std. dev.      0.2371  0.2303
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3445  0.3743
#>   std. dev.      0.2153  0.2196
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3326  0.3404
#>   std. dev.       0.189  0.2339
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0656  0.0419
#>   std. dev.      0.0611   0.033
#>   weight sum         76      63
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.2958  0.3397
#>   std. dev.      0.1593  0.2101
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2955  0.2949
#>   std. dev.      0.1644  0.1855
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3038  0.2559
#>   std. dev.      0.1582  0.1663
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2792  0.2166
#>   std. dev.      0.1323  0.1319
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2512  0.1808
#>   std. dev.      0.1446  0.1193
#>   weight sum         76      63
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean            0.248  0.1454
#>   std. dev.      0.1689  0.1075
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2018  0.1195
#>   std. dev.      0.1439  0.1017
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1434  0.0965
#>   std. dev.      0.0885  0.0762
#>   weight sum         76      63
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1071  0.0691
#>   std. dev.      0.0653  0.0507
#>   weight sum         76      63
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0612  0.0388
#>   std. dev.       0.035  0.0324
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0946  0.0628
#>   std. dev.       0.067  0.0506
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0227  0.0188
#>   std. dev.      0.0144  0.0136
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.019  0.0126
#>   std. dev.      0.0118  0.0084
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0155  0.0106
#>   std. dev.      0.0089  0.0076
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.011    0.01
#>   std. dev.      0.0075  0.0067
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0101
#>   std. dev.       0.009  0.0052
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0091  0.0097
#>   std. dev.      0.0079  0.0054
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0094  0.0075
#>   std. dev.      0.0069  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0077
#>   std. dev.      0.0061  0.0059
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0086   0.007
#>   std. dev.      0.0071   0.005
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083   0.007
#>   std. dev.      0.0071  0.0046
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.114  0.1014
#>   std. dev.      0.0544  0.0723
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007   0.006
#>   std. dev.      0.0064  0.0037
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1256  0.1167
#>   std. dev.      0.0526  0.0718
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1437  0.1209
#>   std. dev.      0.0854  0.0832
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2129  0.1464
#>   std. dev.      0.1237  0.1105
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
