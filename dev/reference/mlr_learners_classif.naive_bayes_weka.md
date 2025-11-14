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
#>   mean           0.0379   0.022
#>   std. dev.      0.0273  0.0157
#>   weight sum         73      66
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2576  0.1635
#>   std. dev.      0.1473  0.1072
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2937  0.1791
#>   std. dev.      0.1313  0.1049
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2932   0.192
#>   std. dev.      0.1219  0.1267
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3014  0.2173
#>   std. dev.      0.1171  0.1273
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V14
#>   mean           0.3124  0.2559
#>   std. dev.      0.1478  0.1524
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3274   0.301
#>   std. dev.      0.1667   0.212
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3755  0.3735
#>   std. dev.      0.1825  0.2414
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4008  0.4221
#>   std. dev.      0.2155  0.2861
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4404  0.4444
#>   std. dev.      0.2396  0.2735
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5282   0.453
#>   std. dev.      0.2451  0.2554
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0505  0.0296
#>   std. dev.      0.0409  0.0211
#>   weight sum         73      66
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6172  0.4713
#>   std. dev.      0.2518  0.2397
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6761  0.5189
#>   std. dev.       0.246  0.2215
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V22
#>   mean           0.6788  0.5574
#>   std. dev.      0.2429  0.2453
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6827  0.6003
#>   std. dev.      0.2596  0.2388
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.698  0.6522
#>   std. dev.      0.2497  0.2254
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6887   0.674
#>   std. dev.      0.2448  0.2353
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7051  0.6872
#>   std. dev.      0.2384  0.2368
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V27
#>   mean           0.6988  0.6804
#>   std. dev.       0.272  0.2208
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.6908  0.6947
#>   std. dev.      0.2499  0.2009
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6333  0.6686
#>   std. dev.      0.2296  0.2264
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0567  0.0357
#>   std. dev.      0.0502  0.0277
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5811  0.6141
#>   std. dev.      0.2036  0.2305
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4838  0.5535
#>   std. dev.      0.2171  0.2089
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4279  0.4717
#>   std. dev.      0.2156  0.2162
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4027  0.4401
#>   std. dev.      0.2051  0.2196
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3793  0.4491
#>   std. dev.      0.2186  0.2445
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3406  0.4791
#>   std. dev.      0.2526  0.2464
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean            0.316  0.4795
#>   std. dev.       0.239  0.2535
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean            0.306  0.4292
#>   std. dev.      0.2234  0.2519
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3274  0.3577
#>   std. dev.      0.2061  0.2353
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3323  0.3062
#>   std. dev.      0.1914  0.2251
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0734  0.0399
#>   std. dev.      0.0609  0.0264
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3007  0.3096
#>   std. dev.      0.1646  0.2033
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3059  0.2825
#>   std. dev.      0.1683  0.1866
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3152  0.2515
#>   std. dev.      0.1739   0.169
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2736  0.2059
#>   std. dev.      0.1394  0.1311
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2379  0.1756
#>   std. dev.      0.1373  0.1181
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2414  0.1516
#>   std. dev.      0.1705   0.104
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2004  0.1291
#>   std. dev.      0.1528  0.1039
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1468   0.102
#>   std. dev.      0.0868  0.0765
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1093  0.0716
#>   std. dev.      0.0643  0.0533
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0623  0.0401
#>   std. dev.      0.0345  0.0341
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0889  0.0612
#>   std. dev.      0.0639  0.0436
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0226  0.0186
#>   std. dev.      0.0135  0.0134
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0196  0.0128
#>   std. dev.      0.0135  0.0093
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0168  0.0103
#>   std. dev.      0.0123  0.0079
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0125  0.0094
#>   std. dev.      0.0084  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0129  0.0096
#>   std. dev.      0.0086   0.005
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0109  0.0085
#>   std. dev.      0.0092  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0073
#>   std. dev.      0.0067  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0088  0.0079
#>   std. dev.      0.0066  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098  0.0068
#>   std. dev.      0.0076  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0095  0.0074
#>   std. dev.      0.0077  0.0058
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1152  0.0959
#>   std. dev.      0.0518   0.064
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0077  0.0062
#>   std. dev.      0.0067  0.0039
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1352  0.1141
#>   std. dev.      0.0615  0.0645
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1598  0.1175
#>   std. dev.        0.09  0.0756
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2236  0.1383
#>   std. dev.      0.1289  0.0963
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
