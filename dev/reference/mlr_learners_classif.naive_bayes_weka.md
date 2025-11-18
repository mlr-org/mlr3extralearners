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
#>   mean           0.0339  0.0227
#>   std. dev.      0.0232  0.0147
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2332  0.1677
#>   std. dev.      0.1112  0.1215
#>   weight sum         72      67
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2784  0.1797
#>   std. dev.       0.113  0.1187
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.3045  0.1862
#>   std. dev.      0.1244  0.1302
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.327  0.2237
#>   std. dev.      0.1268  0.1284
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.342   0.272
#>   std. dev.      0.1652  0.1542
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3465  0.3136
#>   std. dev.      0.1954  0.2144
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3929  0.3825
#>   std. dev.      0.2186  0.2537
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4311   0.415
#>   std. dev.      0.2477  0.2937
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4708  0.4402
#>   std. dev.      0.2507  0.2747
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean           0.5519   0.466
#>   std. dev.      0.2502   0.265
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0432  0.0327
#>   std. dev.      0.0304  0.0255
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.621  0.5024
#>   std. dev.      0.2473  0.2613
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6764  0.5492
#>   std. dev.      0.2397   0.248
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6986  0.5847
#>   std. dev.      0.2279  0.2676
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.7095  0.6222
#>   std. dev.      0.2248  0.2514
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7208  0.6604
#>   std. dev.      0.2176  0.2326
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V25
#>   mean           0.7065  0.6747
#>   std. dev.      0.2315  0.2392
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7221  0.6938
#>   std. dev.      0.2353  0.2353
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7219  0.6844
#>   std. dev.      0.2642  0.2179
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6992  0.6719
#>   std. dev.      0.2688  0.1939
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6332  0.6317
#>   std. dev.      0.2494   0.238
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0493  0.0372
#>   std. dev.       0.039  0.0294
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5521  0.5823
#>   std. dev.      0.1969  0.2373
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4509   0.532
#>   std. dev.      0.2064  0.1937
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4058  0.4475
#>   std. dev.      0.2003  0.2022
#>   weight sum         72      67
#>   precision      0.0061  0.0061
#> 
#> V33
#>   mean           0.3782  0.4272
#>   std. dev.      0.1898  0.1998
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3363  0.4329
#>   std. dev.      0.1917  0.2425
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.2878  0.4477
#>   std. dev.      0.2092  0.2654
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2767  0.4574
#>   std. dev.      0.2162   0.267
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2732  0.4103
#>   std. dev.      0.1977  0.2457
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.2924  0.3303
#>   std. dev.      0.1713  0.2105
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3049  0.3075
#>   std. dev.      0.1603  0.1976
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0628  0.0422
#>   std. dev.      0.0427   0.032
#>   weight sum         72      67
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.2825  0.3177
#>   std. dev.      0.1564   0.188
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2767  0.2862
#>   std. dev.      0.1616  0.1748
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2899  0.2528
#>   std. dev.      0.1648  0.1661
#>   weight sum         72      67
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2658  0.2136
#>   std. dev.      0.1422  0.1375
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2264  0.1744
#>   std. dev.      0.1403  0.1125
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2144  0.1426
#>   std. dev.      0.1533  0.0985
#>   weight sum         72      67
#>   precision      0.0044  0.0044
#> 
#> V46
#>   mean           0.1755  0.1174
#>   std. dev.      0.1374  0.0974
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean             0.14     0.1
#>   std. dev.      0.0939  0.0701
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1063  0.0711
#>   std. dev.      0.0692  0.0516
#>   weight sum         72      67
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0625  0.0395
#>   std. dev.      0.0372  0.0322
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0867  0.0671
#>   std. dev.      0.0551  0.0483
#>   weight sum         72      67
#>   precision      0.0025  0.0025
#> 
#> V50
#>   mean           0.0218  0.0185
#>   std. dev.      0.0148  0.0128
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0204   0.012
#>   std. dev.      0.0149  0.0084
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0149  0.0106
#>   std. dev.      0.0108  0.0073
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0105
#>   std. dev.      0.0073  0.0065
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0121  0.0099
#>   std. dev.      0.0088  0.0052
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093  0.0088
#>   std. dev.       0.008   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0077
#>   std. dev.      0.0065  0.0048
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0084  0.0081
#>   std. dev.      0.0066  0.0059
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0068
#>   std. dev.      0.0078  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0089  0.0078
#>   std. dev.      0.0069  0.0057
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1122  0.0959
#>   std. dev.       0.053  0.0643
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0065  0.0063
#>   std. dev.      0.0059  0.0039
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1283   0.112
#>   std. dev.      0.0564  0.0682
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1474   0.119
#>   std. dev.      0.0782  0.0842
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.1966  0.1385
#>   std. dev.      0.1038  0.1039
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
