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
#>                  (0.6)   (0.4)
#> ===============================
#> V1
#>   mean           0.0322  0.0213
#>   std. dev.      0.0237  0.0131
#>   weight sum         83      56
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2525  0.1492
#>   std. dev.      0.1393  0.1064
#>   weight sum         83      56
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2937   0.164
#>   std. dev.      0.1303  0.1127
#>   weight sum         83      56
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3041  0.1896
#>   std. dev.      0.1267  0.1445
#>   weight sum         83      56
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3088  0.2208
#>   std. dev.      0.1261  0.1447
#>   weight sum         83      56
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3176  0.2642
#>   std. dev.      0.1492  0.1733
#>   weight sum         83      56
#>   precision      0.0073  0.0073
#> 
#> V15
#>   mean           0.3322  0.2969
#>   std. dev.      0.1784  0.2205
#>   weight sum         83      56
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3818  0.3604
#>   std. dev.      0.2029  0.2572
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4155   0.401
#>   std. dev.      0.2265  0.2896
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4545  0.4462
#>   std. dev.      0.2438  0.2692
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5397  0.4602
#>   std. dev.      0.2469   0.256
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0417  0.0293
#>   std. dev.      0.0331  0.0262
#>   weight sum         83      56
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6297  0.4875
#>   std. dev.      0.2421  0.2544
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6903  0.5308
#>   std. dev.      0.2416  0.2445
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6919   0.534
#>   std. dev.      0.2415  0.2776
#>   weight sum         83      56
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6839  0.5819
#>   std. dev.      0.2514  0.2568
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6962  0.6419
#>   std. dev.      0.2377  0.2482
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6913  0.6661
#>   std. dev.      0.2335  0.2737
#>   weight sum         83      56
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7128  0.6895
#>   std. dev.      0.2285   0.259
#>   weight sum         83      56
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean            0.726   0.671
#>   std. dev.      0.2581   0.237
#>   weight sum         83      56
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7197  0.6692
#>   std. dev.      0.2617  0.2017
#>   weight sum         83      56
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6535  0.6474
#>   std. dev.      0.2449  0.2309
#>   weight sum         83      56
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0441   0.036
#>   std. dev.      0.0304  0.0335
#>   weight sum         83      56
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean           0.5746  0.5875
#>   std. dev.      0.2024  0.2246
#>   weight sum         83      56
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4778  0.5523
#>   std. dev.       0.219  0.1949
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4297  0.4592
#>   std. dev.      0.2074  0.2184
#>   weight sum         83      56
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3927  0.4356
#>   std. dev.      0.1845  0.2114
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3581  0.4508
#>   std. dev.      0.1964  0.2304
#>   weight sum         83      56
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean            0.326  0.4473
#>   std. dev.      0.2372  0.2474
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.3074  0.4314
#>   std. dev.        0.23  0.2554
#>   weight sum         83      56
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3014  0.4015
#>   std. dev.      0.2166  0.2479
#>   weight sum         83      56
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.317  0.3666
#>   std. dev.      0.1948  0.2407
#>   weight sum         83      56
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3313  0.3417
#>   std. dev.      0.1822  0.2431
#>   weight sum         83      56
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0567  0.0413
#>   std. dev.      0.0362    0.03
#>   weight sum         83      56
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3016  0.3227
#>   std. dev.      0.1561  0.2136
#>   weight sum         83      56
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean             0.29  0.2795
#>   std. dev.      0.1628  0.1785
#>   weight sum         83      56
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3049   0.238
#>   std. dev.      0.1761   0.166
#>   weight sum         83      56
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2813  0.2001
#>   std. dev.      0.1452  0.1374
#>   weight sum         83      56
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2537  0.1638
#>   std. dev.      0.1498  0.1165
#>   weight sum         83      56
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2526  0.1335
#>   std. dev.      0.1814  0.1093
#>   weight sum         83      56
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2023  0.1121
#>   std. dev.      0.1571   0.102
#>   weight sum         83      56
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1479  0.0905
#>   std. dev.       0.093  0.0748
#>   weight sum         83      56
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1098  0.0651
#>   std. dev.      0.0614  0.0496
#>   weight sum         83      56
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0632  0.0345
#>   std. dev.       0.035  0.0306
#>   weight sum         83      56
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0838  0.0584
#>   std. dev.      0.0446  0.0415
#>   weight sum         83      56
#>   precision      0.0016  0.0016
#> 
#> V50
#>   mean           0.0227  0.0169
#>   std. dev.      0.0138   0.013
#>   weight sum         83      56
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0194  0.0113
#>   std. dev.      0.0144  0.0082
#>   weight sum         83      56
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean            0.016  0.0099
#>   std. dev.      0.0112   0.006
#>   weight sum         83      56
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0114  0.0097
#>   std. dev.      0.0076  0.0066
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0091
#>   std. dev.      0.0075  0.0059
#>   weight sum         83      56
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0097   0.009
#>   std. dev.      0.0081  0.0057
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0082  0.0078
#>   std. dev.      0.0053  0.0051
#>   weight sum         83      56
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0073  0.0072
#>   std. dev.      0.0053  0.0056
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0086  0.0066
#>   std. dev.      0.0064  0.0051
#>   weight sum         83      56
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0082  0.0066
#>   std. dev.      0.0069  0.0057
#>   weight sum         83      56
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1123  0.0927
#>   std. dev.      0.0513  0.0552
#>   weight sum         83      56
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0066  0.0057
#>   std. dev.       0.006  0.0035
#>   weight sum         83      56
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.125  0.1079
#>   std. dev.      0.0531  0.0576
#>   weight sum         83      56
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean            0.146  0.1119
#>   std. dev.      0.0804   0.071
#>   weight sum         83      56
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean            0.214  0.1295
#>   std. dev.      0.1167  0.0913
#>   weight sum         83      56
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
