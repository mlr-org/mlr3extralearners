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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean            0.034  0.0228
#>   std. dev.      0.0259  0.0124
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2532  0.1591
#>   std. dev.      0.1435  0.1122
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2912  0.1758
#>   std. dev.      0.1251  0.1099
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2945  0.1968
#>   std. dev.      0.1249  0.1336
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3096  0.2174
#>   std. dev.      0.1335  0.1273
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3235  0.2397
#>   std. dev.       0.168  0.1493
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3344  0.2717
#>   std. dev.      0.2055  0.1968
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3785  0.3344
#>   std. dev.      0.2245  0.2282
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4064   0.386
#>   std. dev.      0.2455   0.268
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4548  0.4178
#>   std. dev.      0.2592  0.2655
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5504  0.4332
#>   std. dev.       0.252  0.2517
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0449  0.0287
#>   std. dev.      0.0369  0.0204
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6255  0.4681
#>   std. dev.      0.2573   0.248
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6675  0.5101
#>   std. dev.      0.2481  0.2512
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6616  0.5447
#>   std. dev.      0.2395  0.2668
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6635  0.6134
#>   std. dev.      0.2562  0.2422
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.678  0.6538
#>   std. dev.      0.2453  0.2365
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6728  0.6787
#>   std. dev.      0.2407  0.2498
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6944  0.7035
#>   std. dev.      0.2376  0.2381
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7067  0.6888
#>   std. dev.      0.2676  0.2218
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7209  0.6882
#>   std. dev.      0.2609  0.1911
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6624  0.6434
#>   std. dev.      0.2434  0.2395
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0494  0.0353
#>   std. dev.      0.0434  0.0254
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5919  0.5884
#>   std. dev.      0.2137  0.2301
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4856  0.5464
#>   std. dev.      0.2207  0.2009
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4288  0.4845
#>   std. dev.      0.2078  0.2073
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3982  0.4825
#>   std. dev.      0.1977   0.216
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3656  0.4923
#>   std. dev.      0.2115  0.2589
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3298  0.4913
#>   std. dev.      0.2451  0.2766
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3051  0.4842
#>   std. dev.        0.25  0.2786
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3124  0.4265
#>   std. dev.      0.2313  0.2558
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3239  0.3509
#>   std. dev.      0.2149  0.2303
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean            0.326  0.3193
#>   std. dev.      0.1886  0.2009
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean            0.064  0.0405
#>   std. dev.      0.0557  0.0305
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2955  0.3292
#>   std. dev.      0.1659  0.1879
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2779  0.2975
#>   std. dev.       0.166  0.1844
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2791  0.2779
#>   std. dev.      0.1467  0.1646
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V43
#>   mean           0.2599  0.2271
#>   std. dev.      0.1253  0.1264
#>   weight sum         76      63
#>   precision      0.0045  0.0045
#> 
#> V44
#>   mean           0.2399  0.1797
#>   std. dev.      0.1375  0.0931
#>   weight sum         76      63
#>   precision       0.004   0.004
#> 
#> V45
#>   mean           0.2343  0.1365
#>   std. dev.      0.1638  0.0851
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1927  0.1157
#>   std. dev.       0.139  0.0896
#>   weight sum         76      63
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1442  0.0929
#>   std. dev.      0.0876  0.0641
#>   weight sum         76      63
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1079  0.0667
#>   std. dev.      0.0651  0.0436
#>   weight sum         76      63
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0623  0.0361
#>   std. dev.      0.0359  0.0279
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0853   0.061
#>   std. dev.      0.0609  0.0493
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0223  0.0173
#>   std. dev.      0.0149  0.0132
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0181  0.0127
#>   std. dev.      0.0119  0.0093
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0152  0.0106
#>   std. dev.       0.009   0.008
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0101
#>   std. dev.      0.0078  0.0063
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0089
#>   std. dev.      0.0083   0.005
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0086
#>   std. dev.      0.0091  0.0053
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0076
#>   std. dev.      0.0069  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0086
#>   std. dev.      0.0062  0.0059
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0071
#>   std. dev.       0.008   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0074
#>   std. dev.      0.0064  0.0052
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1089  0.0925
#>   std. dev.      0.0524  0.0518
#>   weight sum         76      63
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0072  0.0064
#>   std. dev.       0.005  0.0035
#>   weight sum         76      63
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1309   0.107
#>   std. dev.      0.0622  0.0541
#>   weight sum         76      63
#>   precision      0.0026  0.0026
#> 
#> V8
#>   mean            0.149  0.1119
#>   std. dev.      0.0929   0.071
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2157  0.1329
#>   std. dev.      0.1327  0.0947
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
