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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0323  0.0234
#>   std. dev.      0.0252  0.0159
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.239  0.1599
#>   std. dev.      0.1206  0.1222
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2837  0.1727
#>   std. dev.      0.1145  0.1211
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3058  0.1914
#>   std. dev.      0.1223  0.1375
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3283  0.2269
#>   std. dev.      0.1291  0.1314
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3277  0.2634
#>   std. dev.      0.1663  0.1549
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3213  0.3051
#>   std. dev.      0.1986  0.2079
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3758  0.3821
#>   std. dev.      0.2176  0.2485
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4313  0.4225
#>   std. dev.       0.238  0.2905
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4794  0.4567
#>   std. dev.       0.246  0.2719
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5605  0.4875
#>   std. dev.      0.2506  0.2595
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0426  0.0326
#>   std. dev.      0.0382  0.0246
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6163  0.5148
#>   std. dev.      0.2571  0.2685
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V21
#>   mean            0.658  0.5377
#>   std. dev.      0.2601   0.258
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6898    0.55
#>   std. dev.      0.2404  0.2616
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.7201  0.6097
#>   std. dev.      0.2137  0.2373
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V24
#>   mean           0.7289  0.6622
#>   std. dev.      0.2045  0.2216
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.7192  0.6734
#>   std. dev.      0.2187  0.2482
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7336  0.6956
#>   std. dev.      0.2401  0.2439
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7458  0.6868
#>   std. dev.      0.2631  0.2221
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean            0.746  0.6595
#>   std. dev.      0.2559  0.2126
#>   weight sum         74      65
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6838  0.6045
#>   std. dev.      0.2272  0.2375
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V3
#>   mean           0.0484  0.0375
#>   std. dev.      0.0464  0.0279
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5974  0.5579
#>   std. dev.      0.1964  0.2334
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.5063  0.5278
#>   std. dev.      0.2193  0.2086
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4478  0.4542
#>   std. dev.      0.2195  0.2241
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4003  0.4359
#>   std. dev.      0.2038  0.2157
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3531  0.4315
#>   std. dev.      0.2044  0.2471
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3117  0.4356
#>   std. dev.      0.2318   0.266
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3023  0.4403
#>   std. dev.      0.2312  0.2682
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2953  0.4032
#>   std. dev.      0.2098  0.2534
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3115  0.3502
#>   std. dev.      0.1661  0.2387
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3239  0.3196
#>   std. dev.      0.1648  0.2187
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0658  0.0417
#>   std. dev.      0.0593  0.0326
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3012  0.3086
#>   std. dev.      0.1582  0.1883
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2898  0.2756
#>   std. dev.      0.1688  0.1582
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3035    0.25
#>   std. dev.       0.174  0.1482
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2814  0.2091
#>   std. dev.      0.1489  0.1222
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2524  0.1751
#>   std. dev.      0.1537  0.1109
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2403  0.1398
#>   std. dev.      0.1764  0.0939
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1877  0.1176
#>   std. dev.      0.1491  0.0822
#>   weight sum         74      65
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1405  0.0931
#>   std. dev.      0.0951  0.0603
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1092  0.0662
#>   std. dev.      0.0673  0.0436
#>   weight sum         74      65
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0635  0.0375
#>   std. dev.      0.0359  0.0249
#>   weight sum         74      65
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0926  0.0645
#>   std. dev.      0.0655  0.0478
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0222   0.017
#>   std. dev.      0.0144  0.0111
#>   weight sum         74      65
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0187  0.0116
#>   std. dev.      0.0135  0.0075
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0167  0.0115
#>   std. dev.      0.0112   0.007
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0101
#>   std. dev.      0.0082  0.0061
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0112  0.0092
#>   std. dev.      0.0079  0.0056
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0102  0.0088
#>   std. dev.      0.0086  0.0051
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0081  0.0069
#>   std. dev.      0.0063  0.0048
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0082
#>   std. dev.       0.006  0.0063
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0085  0.0068
#>   std. dev.      0.0075  0.0048
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean            0.008  0.0071
#>   std. dev.       0.006  0.0048
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1137  0.0957
#>   std. dev.       0.055   0.062
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0058   0.006
#>   std. dev.      0.0042  0.0034
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1258  0.1132
#>   std. dev.      0.0501  0.0614
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean           0.1422  0.1147
#>   std. dev.      0.0678   0.079
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V9
#>   mean           0.1955  0.1382
#>   std. dev.       0.096  0.1042
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
