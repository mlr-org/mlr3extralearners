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
#>   mean            0.035   0.023
#>   std. dev.      0.0263   0.016
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2538  0.1685
#>   std. dev.      0.1414  0.1224
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2933  0.1781
#>   std. dev.      0.1297  0.1221
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3002  0.1886
#>   std. dev.      0.1287  0.1437
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3142  0.2255
#>   std. dev.       0.141  0.1429
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3223   0.272
#>   std. dev.      0.1509  0.1668
#>   weight sum         79      60
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3368  0.3099
#>   std. dev.      0.1854  0.2171
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V16
#>   mean           0.3955  0.3727
#>   std. dev.      0.2106  0.2618
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4312   0.418
#>   std. dev.      0.2422   0.297
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4677  0.4427
#>   std. dev.      0.2548   0.276
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5446  0.4603
#>   std. dev.       0.245  0.2561
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0459  0.0285
#>   std. dev.      0.0356  0.0207
#>   weight sum         79      60
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.632  0.5014
#>   std. dev.      0.2404  0.2381
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.6816  0.5405
#>   std. dev.      0.2302  0.2341
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6757  0.5643
#>   std. dev.      0.2366  0.2614
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6667  0.6149
#>   std. dev.      0.2624  0.2528
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V24
#>   mean           0.6708  0.6581
#>   std. dev.      0.2519  0.2372
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6666  0.6787
#>   std. dev.       0.251  0.2555
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7052  0.7057
#>   std. dev.      0.2409  0.2449
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7181   0.727
#>   std. dev.      0.2673  0.1982
#>   weight sum         79      60
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7178  0.7256
#>   std. dev.      0.2579  0.1702
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6443   0.667
#>   std. dev.      0.2493  0.2248
#>   weight sum         79      60
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0481  0.0369
#>   std. dev.      0.0391  0.0288
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5763  0.5971
#>   std. dev.      0.2093  0.2284
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V31
#>   mean           0.4674  0.5356
#>   std. dev.        0.22  0.2063
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4175  0.4488
#>   std. dev.      0.2101  0.2105
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3958  0.4265
#>   std. dev.      0.1816  0.2171
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3729  0.4371
#>   std. dev.      0.2019  0.2627
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3504  0.4435
#>   std. dev.      0.2559  0.2696
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.323  0.4404
#>   std. dev.      0.2627   0.264
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3199  0.4037
#>   std. dev.      0.2364  0.2433
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3386  0.3426
#>   std. dev.       0.212  0.2088
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3409  0.2888
#>   std. dev.      0.1881  0.1919
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0645  0.0423
#>   std. dev.      0.0456  0.0336
#>   weight sum         79      60
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2983  0.2858
#>   std. dev.      0.1598  0.1615
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V41
#>   mean            0.292  0.2508
#>   std. dev.      0.1632  0.1557
#>   weight sum         79      60
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean            0.307  0.2203
#>   std. dev.       0.167  0.1413
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2776  0.1932
#>   std. dev.      0.1416  0.1034
#>   weight sum         79      60
#>   precision      0.0045  0.0045
#> 
#> V44
#>   mean           0.2452  0.1652
#>   std. dev.      0.1409  0.0852
#>   weight sum         79      60
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2466  0.1327
#>   std. dev.      0.1728  0.0755
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1948  0.0973
#>   std. dev.      0.1486  0.0738
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean            0.139  0.0838
#>   std. dev.      0.0819  0.0512
#>   weight sum         79      60
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1054  0.0649
#>   std. dev.      0.0601   0.041
#>   weight sum         79      60
#>   precision       0.002   0.002
#> 
#> V49
#>   mean           0.0612  0.0357
#>   std. dev.       0.035  0.0264
#>   weight sum         79      60
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0873  0.0629
#>   std. dev.      0.0558  0.0473
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0228  0.0162
#>   std. dev.      0.0152  0.0104
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0187  0.0118
#>   std. dev.      0.0116  0.0084
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0149  0.0107
#>   std. dev.      0.0088  0.0074
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0123  0.0095
#>   std. dev.      0.0077  0.0064
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0093
#>   std. dev.      0.0082  0.0049
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093  0.0079
#>   std. dev.      0.0081  0.0049
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0088  0.0073
#>   std. dev.      0.0066  0.0048
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0076
#>   std. dev.      0.0062  0.0058
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0065
#>   std. dev.      0.0078  0.0048
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0085  0.0072
#>   std. dev.      0.0071  0.0054
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.111  0.1029
#>   std. dev.      0.0522  0.0734
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0056
#>   std. dev.      0.0064  0.0036
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1285  0.1221
#>   std. dev.      0.0543  0.0725
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.149  0.1266
#>   std. dev.      0.0839  0.0902
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2133  0.1541
#>   std. dev.      0.1254  0.1117
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
