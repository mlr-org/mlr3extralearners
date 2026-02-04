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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0367  0.0211
#>   std. dev.      0.0268  0.0122
#>   weight sum         80      59
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2502  0.1504
#>   std. dev.      0.1467  0.1106
#>   weight sum         80      59
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2915  0.1684
#>   std. dev.      0.1351  0.1169
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.306  0.1977
#>   std. dev.      0.1329  0.1392
#>   weight sum         80      59
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3209   0.234
#>   std. dev.      0.1342  0.1444
#>   weight sum         80      59
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3266  0.2724
#>   std. dev.      0.1508  0.1703
#>   weight sum         80      59
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3361   0.301
#>   std. dev.      0.1928   0.226
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3863  0.3649
#>   std. dev.       0.216  0.2509
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4148  0.3985
#>   std. dev.       0.244  0.2859
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4461  0.4278
#>   std. dev.      0.2603  0.2685
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5272  0.4597
#>   std. dev.      0.2611  0.2504
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0462  0.0285
#>   std. dev.      0.0343  0.0249
#>   weight sum         80      59
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6167  0.5096
#>   std. dev.      0.2609  0.2535
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6607  0.5543
#>   std. dev.      0.2491  0.2468
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.655  0.5767
#>   std. dev.      0.2416  0.2638
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6541  0.6145
#>   std. dev.      0.2621  0.2442
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6647   0.663
#>   std. dev.      0.2522  0.2447
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6627   0.686
#>   std. dev.      0.2443   0.261
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6993  0.7192
#>   std. dev.      0.2353  0.2299
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7164   0.719
#>   std. dev.      0.2666  0.2027
#>   weight sum         80      59
#>   precision      0.0078  0.0078
#> 
#> V28
#>   mean           0.7232  0.7118
#>   std. dev.      0.2544  0.1923
#>   weight sum         80      59
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6583  0.6797
#>   std. dev.      0.2424  0.2367
#>   weight sum         80      59
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0514   0.034
#>   std. dev.      0.0394  0.0305
#>   weight sum         80      59
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5876  0.6217
#>   std. dev.      0.2006  0.2131
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4852  0.5453
#>   std. dev.      0.2206  0.1916
#>   weight sum         80      59
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4264  0.4455
#>   std. dev.      0.2132  0.2156
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.4004  0.4412
#>   std. dev.      0.1904  0.2222
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3712  0.4516
#>   std. dev.      0.2065  0.2406
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3461  0.4416
#>   std. dev.      0.2539  0.2558
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3273  0.4201
#>   std. dev.      0.2616  0.2665
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3275  0.3882
#>   std. dev.      0.2366  0.2415
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3444   0.354
#>   std. dev.      0.2085  0.2116
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3435  0.3158
#>   std. dev.      0.1861  0.2062
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0643  0.0389
#>   std. dev.      0.0446  0.0318
#>   weight sum         80      59
#>   precision      0.0019  0.0019
#> 
#> V40
#>   mean           0.3003  0.3049
#>   std. dev.      0.1561  0.1824
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2981  0.2656
#>   std. dev.      0.1661  0.1507
#>   weight sum         80      59
#>   precision       0.005   0.005
#> 
#> V42
#>   mean            0.322  0.2224
#>   std. dev.       0.173  0.1498
#>   weight sum         80      59
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2893  0.1838
#>   std. dev.      0.1432  0.1196
#>   weight sum         80      59
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2526  0.1551
#>   std. dev.      0.1473   0.083
#>   weight sum         80      59
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2584  0.1298
#>   std. dev.      0.1798  0.0793
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2121  0.1021
#>   std. dev.      0.1621  0.0753
#>   weight sum         80      59
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1542  0.0832
#>   std. dev.      0.1013  0.0524
#>   weight sum         80      59
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1164  0.0629
#>   std. dev.      0.0691  0.0384
#>   weight sum         80      59
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0654  0.0331
#>   std. dev.      0.0372  0.0243
#>   weight sum         80      59
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0865  0.0573
#>   std. dev.      0.0559  0.0442
#>   weight sum         80      59
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0238  0.0161
#>   std. dev.       0.015  0.0097
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0206  0.0099
#>   std. dev.      0.0149  0.0066
#>   weight sum         80      59
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0165  0.0091
#>   std. dev.      0.0111  0.0055
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0124  0.0097
#>   std. dev.      0.0081  0.0064
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0133  0.0094
#>   std. dev.       0.009  0.0057
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0107  0.0085
#>   std. dev.      0.0086  0.0055
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0077
#>   std. dev.      0.0069  0.0044
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0073
#>   std. dev.      0.0063  0.0056
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0058
#>   std. dev.      0.0074   0.004
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0091  0.0069
#>   std. dev.      0.0071  0.0052
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1124  0.0893
#>   std. dev.      0.0546  0.0626
#>   weight sum         80      59
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0058
#>   std. dev.      0.0062  0.0032
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1272  0.1098
#>   std. dev.      0.0608   0.067
#>   weight sum         80      59
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1551  0.1094
#>   std. dev.      0.0874  0.0775
#>   weight sum         80      59
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2148  0.1304
#>   std. dev.      0.1264  0.0982
#>   weight sum         80      59
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
