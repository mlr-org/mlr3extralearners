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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0381  0.0223
#>   std. dev.      0.0281  0.0144
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2648  0.1643
#>   std. dev.      0.1421  0.1045
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2986  0.1725
#>   std. dev.      0.1286  0.1101
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3039  0.1914
#>   std. dev.      0.1303  0.1384
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3251  0.2236
#>   std. dev.      0.1392  0.1438
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3419  0.2642
#>   std. dev.      0.1726  0.1721
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V15
#>   mean           0.3562  0.3104
#>   std. dev.      0.2037  0.2313
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.4075  0.3812
#>   std. dev.      0.2197  0.2604
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean            0.433  0.4174
#>   std. dev.      0.2462  0.2944
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4608  0.4515
#>   std. dev.      0.2611  0.2708
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5492  0.4775
#>   std. dev.      0.2498  0.2472
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V2
#>   mean           0.0486  0.0303
#>   std. dev.       0.036  0.0207
#>   weight sum         79      60
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6435  0.4975
#>   std. dev.      0.2396  0.2445
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean            0.697  0.5344
#>   std. dev.       0.235  0.2539
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6819  0.5729
#>   std. dev.      0.2337  0.2597
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6602  0.6097
#>   std. dev.      0.2682  0.2493
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6639  0.6283
#>   std. dev.      0.2629  0.2386
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6464  0.6423
#>   std. dev.      0.2576  0.2537
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.6766  0.6835
#>   std. dev.      0.2398  0.2339
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.6857   0.675
#>   std. dev.      0.2708  0.2147
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.6859  0.6543
#>   std. dev.      0.2595  0.2054
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6284  0.6261
#>   std. dev.      0.2492  0.2323
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0517  0.0385
#>   std. dev.      0.0369  0.0277
#>   weight sum         79      60
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5792  0.5951
#>   std. dev.      0.2091  0.2318
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4806  0.5511
#>   std. dev.      0.2043  0.1956
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4299  0.4685
#>   std. dev.      0.2038  0.1927
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4034  0.4678
#>   std. dev.      0.1872   0.207
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3667   0.474
#>   std. dev.      0.2084  0.2413
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3315  0.4712
#>   std. dev.      0.2519  0.2657
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3044  0.4805
#>   std. dev.      0.2417  0.2756
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3024  0.4443
#>   std. dev.      0.2225   0.253
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3231  0.3742
#>   std. dev.      0.2129  0.2464
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3276  0.3414
#>   std. dev.      0.1935  0.2312
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0637  0.0401
#>   std. dev.      0.0408  0.0292
#>   weight sum         79      60
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean            0.286  0.3522
#>   std. dev.      0.1598   0.208
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2773  0.3116
#>   std. dev.      0.1673  0.1964
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3033  0.2799
#>   std. dev.      0.1797  0.1813
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2798   0.232
#>   std. dev.      0.1414  0.1441
#>   weight sum         79      60
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2469  0.1911
#>   std. dev.      0.1392  0.1165
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2488  0.1583
#>   std. dev.      0.1786   0.105
#>   weight sum         79      60
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2015  0.1304
#>   std. dev.      0.1601  0.1066
#>   weight sum         79      60
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1456  0.1083
#>   std. dev.      0.0973  0.0755
#>   weight sum         79      60
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1129  0.0797
#>   std. dev.      0.0683   0.052
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0648  0.0434
#>   std. dev.      0.0368  0.0336
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0829  0.0643
#>   std. dev.      0.0495   0.046
#>   weight sum         79      60
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean            0.023  0.0188
#>   std. dev.      0.0149  0.0131
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0214  0.0132
#>   std. dev.      0.0146  0.0094
#>   weight sum         79      60
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0175  0.0116
#>   std. dev.      0.0114  0.0079
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0116  0.0101
#>   std. dev.      0.0081  0.0062
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0127  0.0089
#>   std. dev.       0.009  0.0049
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104   0.008
#>   std. dev.      0.0089  0.0049
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0078
#>   std. dev.      0.0068   0.005
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0079
#>   std. dev.      0.0065   0.006
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean             0.01  0.0069
#>   std. dev.      0.0083  0.0052
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0093  0.0073
#>   std. dev.      0.0075  0.0054
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.113  0.0998
#>   std. dev.      0.0524  0.0678
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0064
#>   std. dev.      0.0064  0.0036
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.132  0.1136
#>   std. dev.      0.0596  0.0674
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1624  0.1215
#>   std. dev.      0.0928  0.0825
#>   weight sum         79      60
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2292  0.1438
#>   std. dev.      0.1296  0.0993
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
