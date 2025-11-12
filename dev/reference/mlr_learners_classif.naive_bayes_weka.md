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
#>   mean           0.0366  0.0211
#>   std. dev.      0.0281  0.0118
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2484  0.1515
#>   std. dev.      0.1288  0.1176
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2889  0.1673
#>   std. dev.      0.1223  0.1132
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3106  0.1889
#>   std. dev.      0.1276  0.1365
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3326  0.2256
#>   std. dev.      0.1339  0.1352
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3378  0.2739
#>   std. dev.      0.1484  0.1583
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean            0.344  0.3126
#>   std. dev.      0.1806  0.2143
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3895  0.3858
#>   std. dev.       0.208  0.2528
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4294  0.4354
#>   std. dev.      0.2506   0.286
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4664  0.4712
#>   std. dev.      0.2605  0.2729
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5529  0.4789
#>   std. dev.      0.2517  0.2669
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0506  0.0304
#>   std. dev.      0.0419   0.025
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6374  0.5033
#>   std. dev.      0.2439  0.2625
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6882  0.5492
#>   std. dev.      0.2401  0.2519
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6868  0.5733
#>   std. dev.      0.2269  0.2667
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6712  0.6076
#>   std. dev.      0.2473  0.2568
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V24
#>   mean           0.6793  0.6514
#>   std. dev.      0.2394  0.2461
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6684  0.6754
#>   std. dev.      0.2422  0.2583
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6972  0.7052
#>   std. dev.      0.2359   0.249
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7149  0.6936
#>   std. dev.      0.2645  0.2266
#>   weight sum         73      66
#>   precision      0.0078  0.0078
#> 
#> V28
#>   mean           0.7077  0.6721
#>   std. dev.      0.2581  0.2033
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6333  0.6309
#>   std. dev.      0.2523  0.2376
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0586  0.0367
#>   std. dev.      0.0494  0.0289
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5723  0.5859
#>   std. dev.       0.219  0.2188
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4695  0.5415
#>   std. dev.      0.2246  0.1964
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4117   0.465
#>   std. dev.      0.2118  0.2128
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3855  0.4477
#>   std. dev.      0.1911  0.2085
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3624  0.4563
#>   std. dev.      0.1975  0.2474
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3371  0.4698
#>   std. dev.      0.2355  0.2654
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3149  0.4722
#>   std. dev.        0.25  0.2706
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3177  0.4322
#>   std. dev.      0.2238  0.2599
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3338   0.372
#>   std. dev.      0.1993  0.2446
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3275  0.3194
#>   std. dev.      0.1837   0.227
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0715  0.0428
#>   std. dev.      0.0621  0.0324
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2952  0.3108
#>   std. dev.      0.1608  0.1974
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2952  0.2875
#>   std. dev.      0.1781  0.1697
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3078  0.2471
#>   std. dev.      0.1693  0.1619
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2749  0.2061
#>   std. dev.      0.1384  0.1197
#>   weight sum         73      66
#>   precision      0.0045  0.0045
#> 
#> V44
#>   mean           0.2419  0.1622
#>   std. dev.      0.1417  0.0828
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2484  0.1303
#>   std. dev.      0.1713  0.0799
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1971  0.1054
#>   std. dev.      0.1528  0.0877
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1398  0.0874
#>   std. dev.      0.0906  0.0667
#>   weight sum         73      66
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1066  0.0651
#>   std. dev.      0.0651   0.047
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0634  0.0365
#>   std. dev.      0.0374  0.0296
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0979  0.0618
#>   std. dev.      0.0673   0.049
#>   weight sum         73      66
#>   precision      0.0031  0.0031
#> 
#> V50
#>   mean           0.0237  0.0175
#>   std. dev.      0.0157   0.013
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0188  0.0122
#>   std. dev.      0.0122  0.0088
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0166  0.0101
#>   std. dev.      0.0101  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0122  0.0095
#>   std. dev.      0.0073  0.0062
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0095
#>   std. dev.      0.0083  0.0056
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0095  0.0088
#>   std. dev.      0.0075  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0097  0.0074
#>   std. dev.      0.0069  0.0046
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0078
#>   std. dev.      0.0062  0.0058
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0066
#>   std. dev.      0.0078  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0093  0.0069
#>   std. dev.      0.0068  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1186  0.0988
#>   std. dev.      0.0571  0.0691
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0074  0.0062
#>   std. dev.      0.0064  0.0035
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1311  0.1136
#>   std. dev.      0.0545  0.0692
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V8
#>   mean           0.1483   0.114
#>   std. dev.      0.0882   0.077
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2132  0.1329
#>   std. dev.      0.1254  0.1057
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
