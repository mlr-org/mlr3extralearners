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
#>   mean           0.0328  0.0231
#>   std. dev.      0.0254  0.0157
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2426  0.1722
#>   std. dev.        0.14  0.1235
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2827  0.1839
#>   std. dev.      0.1269  0.1184
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3053   0.198
#>   std. dev.      0.1145  0.1381
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3147  0.2363
#>   std. dev.      0.1229  0.1353
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3204  0.2861
#>   std. dev.      0.1382  0.1571
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3365  0.3334
#>   std. dev.      0.1809  0.2187
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3761  0.4068
#>   std. dev.      0.2074  0.2536
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4056  0.4499
#>   std. dev.       0.238  0.2835
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4469  0.4825
#>   std. dev.      0.2597  0.2617
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5384   0.496
#>   std. dev.      0.2527  0.2569
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0416  0.0329
#>   std. dev.      0.0312   0.026
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6347  0.5298
#>   std. dev.      0.2371  0.2649
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean            0.695   0.577
#>   std. dev.      0.2178  0.2502
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6931  0.6015
#>   std. dev.      0.2156  0.2557
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V23
#>   mean           0.6884  0.6272
#>   std. dev.      0.2327  0.2462
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7081  0.6672
#>   std. dev.      0.2316  0.2294
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6982  0.6934
#>   std. dev.      0.2295  0.2261
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7201  0.7063
#>   std. dev.      0.2372  0.2224
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7254  0.6925
#>   std. dev.      0.2734  0.2163
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean             0.72  0.6643
#>   std. dev.      0.2628   0.196
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6683  0.5972
#>   std. dev.      0.2425  0.2193
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0476  0.0398
#>   std. dev.      0.0344  0.0312
#>   weight sum         73      66
#>   precision      0.0016  0.0016
#> 
#> V30
#>   mean           0.5852  0.5414
#>   std. dev.      0.2093   0.221
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4647   0.512
#>   std. dev.      0.2084  0.1988
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4072  0.4508
#>   std. dev.      0.1932  0.2225
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean            0.385  0.4069
#>   std. dev.      0.1761  0.2149
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V34
#>   mean           0.3616  0.3983
#>   std. dev.      0.1892  0.2286
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V35
#>   mean           0.3316   0.426
#>   std. dev.      0.2418  0.2432
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3135  0.4361
#>   std. dev.      0.2431  0.2623
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3171  0.4098
#>   std. dev.      0.2223  0.2555
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.332  0.3518
#>   std. dev.      0.2002  0.2302
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3274  0.3254
#>   std. dev.      0.1785  0.2299
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0605  0.0447
#>   std. dev.      0.0433  0.0342
#>   weight sum         73      66
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3014  0.3264
#>   std. dev.      0.1409   0.204
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2918  0.2811
#>   std. dev.      0.1563  0.1732
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2984  0.2395
#>   std. dev.      0.1623   0.158
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2721  0.2051
#>   std. dev.      0.1316  0.1294
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean            0.247  0.1804
#>   std. dev.      0.1363   0.113
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2433  0.1517
#>   std. dev.      0.1728  0.1007
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1922  0.1244
#>   std. dev.      0.1433  0.0962
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1393  0.0995
#>   std. dev.      0.0865   0.072
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1005  0.0699
#>   std. dev.      0.0604  0.0527
#>   weight sum         73      66
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0572  0.0404
#>   std. dev.      0.0337  0.0334
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0846  0.0667
#>   std. dev.      0.0501  0.0518
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0206  0.0182
#>   std. dev.      0.0123  0.0133
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.018  0.0123
#>   std. dev.      0.0117  0.0078
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0151  0.0108
#>   std. dev.      0.0097  0.0066
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean            0.011  0.0095
#>   std. dev.      0.0069  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0099
#>   std. dev.      0.0085  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.009  0.0092
#>   std. dev.      0.0074  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0077
#>   std. dev.      0.0056  0.0049
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0069  0.0076
#>   std. dev.      0.0044  0.0061
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0077  0.0068
#>   std. dev.      0.0052   0.005
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0082  0.0066
#>   std. dev.      0.0068  0.0045
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1043  0.1031
#>   std. dev.      0.0493  0.0718
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0062  0.0037
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1207   0.125
#>   std. dev.      0.0559  0.0662
#>   weight sum         73      66
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1446  0.1272
#>   std. dev.      0.0871  0.0828
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2104  0.1422
#>   std. dev.      0.1258  0.1082
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
