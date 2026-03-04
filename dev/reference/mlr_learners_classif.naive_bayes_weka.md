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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0385  0.0216
#>   std. dev.      0.0289  0.0136
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2647  0.1616
#>   std. dev.      0.1438  0.1237
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3096   0.177
#>   std. dev.      0.1276  0.1164
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3217  0.1872
#>   std. dev.      0.1205  0.1338
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3317  0.2256
#>   std. dev.      0.1307  0.1325
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3254  0.2671
#>   std. dev.      0.1662  0.1502
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3272  0.2952
#>   std. dev.      0.1935  0.2066
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3745  0.3663
#>   std. dev.       0.212  0.2467
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4078  0.4093
#>   std. dev.      0.2358  0.2898
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V18
#>   mean            0.445  0.4516
#>   std. dev.      0.2507  0.2679
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5239  0.4779
#>   std. dev.      0.2476  0.2546
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0487  0.0306
#>   std. dev.      0.0416  0.0269
#>   weight sum         78      61
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6013  0.5081
#>   std. dev.      0.2556   0.257
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6485  0.5555
#>   std. dev.      0.2563  0.2439
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6589  0.5941
#>   std. dev.      0.2372  0.2455
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6777  0.6233
#>   std. dev.      0.2543  0.2417
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7039  0.6471
#>   std. dev.      0.2444   0.215
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.7049  0.6579
#>   std. dev.      0.2352  0.2227
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean            0.723  0.6817
#>   std. dev.      0.2385  0.2242
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7207  0.6853
#>   std. dev.      0.2742  0.2128
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7125  0.6846
#>   std. dev.      0.2695  0.2223
#>   weight sum         78      61
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6476  0.6414
#>   std. dev.      0.2527  0.2441
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0536  0.0375
#>   std. dev.       0.048  0.0314
#>   weight sum         78      61
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5786  0.5914
#>   std. dev.      0.2116  0.2314
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4969  0.5379
#>   std. dev.      0.2257  0.2008
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4466  0.4531
#>   std. dev.      0.2191  0.2154
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4086  0.4308
#>   std. dev.       0.201  0.2144
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3688  0.4307
#>   std. dev.      0.2136  0.2494
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3293   0.454
#>   std. dev.      0.2482  0.2615
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3124  0.4727
#>   std. dev.      0.2372  0.2498
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3097  0.4232
#>   std. dev.      0.2174   0.232
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3273  0.3635
#>   std. dev.      0.1869   0.228
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3435  0.3267
#>   std. dev.       0.182   0.219
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0658  0.0441
#>   std. dev.      0.0606  0.0326
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean            0.313  0.3183
#>   std. dev.      0.1672   0.196
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2964  0.2778
#>   std. dev.      0.1654  0.1715
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3091  0.2463
#>   std. dev.      0.1809  0.1576
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2877  0.2185
#>   std. dev.      0.1518  0.1341
#>   weight sum         78      61
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2527   0.178
#>   std. dev.      0.1487   0.122
#>   weight sum         78      61
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2526  0.1419
#>   std. dev.      0.1805  0.1019
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1984  0.1145
#>   std. dev.      0.1601  0.0856
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1474  0.0955
#>   std. dev.       0.098  0.0603
#>   weight sum         78      61
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1146  0.0718
#>   std. dev.        0.07  0.0435
#>   weight sum         78      61
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0677  0.0375
#>   std. dev.      0.0388  0.0269
#>   weight sum         78      61
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0882  0.0619
#>   std. dev.      0.0633  0.0498
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0239  0.0182
#>   std. dev.      0.0154  0.0115
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0195  0.0125
#>   std. dev.      0.0149  0.0083
#>   weight sum         78      61
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0156  0.0114
#>   std. dev.      0.0107  0.0072
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0101
#>   std. dev.       0.008  0.0067
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116    0.01
#>   std. dev.      0.0082  0.0057
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean            0.011  0.0084
#>   std. dev.      0.0086  0.0052
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0073
#>   std. dev.      0.0064   0.005
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079   0.008
#>   std. dev.      0.0059  0.0059
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0071
#>   std. dev.      0.0076  0.0049
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0074
#>   std. dev.      0.0062  0.0048
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1115  0.0932
#>   std. dev.      0.0512  0.0651
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0065
#>   std. dev.      0.0047  0.0039
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1306  0.1114
#>   std. dev.      0.0569   0.065
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1568  0.1172
#>   std. dev.       0.081  0.0809
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2159  0.1457
#>   std. dev.       0.114  0.1067
#>   weight sum         78      61
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
