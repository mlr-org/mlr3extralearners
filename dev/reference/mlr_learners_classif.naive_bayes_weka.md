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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0343  0.0222
#>   std. dev.      0.0283  0.0138
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2486  0.1712
#>   std. dev.      0.1283  0.1199
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2864  0.1806
#>   std. dev.      0.1244  0.1232
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3069  0.1863
#>   std. dev.      0.1265  0.1427
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3226  0.2196
#>   std. dev.      0.1365  0.1483
#>   weight sum         75      64
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean            0.326  0.2741
#>   std. dev.      0.1547   0.179
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V15
#>   mean           0.3407  0.3365
#>   std. dev.      0.1804   0.227
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3874  0.4032
#>   std. dev.      0.2014  0.2645
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V17
#>   mean           0.4201  0.4181
#>   std. dev.      0.2383  0.2979
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4537  0.4339
#>   std. dev.      0.2551  0.2787
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5397  0.4704
#>   std. dev.      0.2496  0.2659
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0442   0.031
#>   std. dev.      0.0378  0.0263
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6216  0.5106
#>   std. dev.      0.2484  0.2737
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6699  0.5421
#>   std. dev.      0.2434  0.2614
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.672  0.5673
#>   std. dev.      0.2436  0.2727
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean            0.672  0.5986
#>   std. dev.      0.2385  0.2469
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6843  0.6312
#>   std. dev.      0.2296  0.2347
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6667  0.6458
#>   std. dev.       0.235  0.2657
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6886  0.6826
#>   std. dev.      0.2344  0.2552
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean            0.708  0.6866
#>   std. dev.       0.263  0.2328
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7055  0.6696
#>   std. dev.      0.2574  0.2191
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6502  0.6159
#>   std. dev.       0.252  0.2411
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0513  0.0357
#>   std. dev.      0.0479   0.032
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5883  0.5627
#>   std. dev.      0.2202  0.2341
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4914  0.5153
#>   std. dev.        0.22  0.1911
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4313  0.4246
#>   std. dev.      0.2032  0.2043
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3924  0.4227
#>   std. dev.      0.1872  0.2027
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3521  0.4471
#>   std. dev.      0.2019  0.2561
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3114  0.4534
#>   std. dev.      0.2372  0.2717
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3015  0.4635
#>   std. dev.      0.2336    0.26
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V37
#>   mean           0.3143   0.425
#>   std. dev.      0.2082  0.2313
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3311   0.354
#>   std. dev.      0.1906  0.2182
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3314  0.3187
#>   std. dev.      0.1782   0.209
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0664  0.0419
#>   std. dev.      0.0606  0.0353
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3027  0.3199
#>   std. dev.      0.1574  0.1988
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2948  0.2847
#>   std. dev.      0.1684  0.1788
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3159  0.2508
#>   std. dev.      0.1585  0.1585
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2826  0.2022
#>   std. dev.      0.1394  0.1056
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2452  0.1656
#>   std. dev.      0.1487  0.0821
#>   weight sum         75      64
#>   precision      0.0045  0.0045
#> 
#> V45
#>   mean            0.241  0.1376
#>   std. dev.      0.1753  0.0815
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1951  0.1139
#>   std. dev.      0.1522  0.0951
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1524  0.0955
#>   std. dev.      0.1018  0.0709
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1174  0.0721
#>   std. dev.       0.074  0.0495
#>   weight sum         75      64
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0664  0.0398
#>   std. dev.      0.0394  0.0323
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.089   0.068
#>   std. dev.      0.0675  0.0506
#>   weight sum         75      64
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0227  0.0185
#>   std. dev.      0.0148  0.0124
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean             0.02  0.0126
#>   std. dev.       0.015   0.009
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0164  0.0105
#>   std. dev.      0.0104  0.0068
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0095
#>   std. dev.      0.0071  0.0064
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0129  0.0098
#>   std. dev.      0.0083  0.0057
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0082
#>   std. dev.      0.0084   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0073
#>   std. dev.      0.0068  0.0049
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0081
#>   std. dev.      0.0056  0.0062
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0088  0.0064
#>   std. dev.      0.0074  0.0042
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0068
#>   std. dev.      0.0074  0.0051
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1138  0.1046
#>   std. dev.       0.052   0.073
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0059
#>   std. dev.      0.0066  0.0033
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1323  0.1168
#>   std. dev.      0.0577  0.0734
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1424  0.1224
#>   std. dev.      0.0764  0.0855
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean            0.206  0.1468
#>   std. dev.      0.1061   0.108
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
