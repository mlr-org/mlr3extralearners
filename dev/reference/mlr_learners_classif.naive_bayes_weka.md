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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0317  0.0216
#>   std. dev.      0.0238  0.0143
#>   weight sum         77      62
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2376  0.1608
#>   std. dev.      0.1256  0.1208
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2766  0.1715
#>   std. dev.      0.1139  0.1208
#>   weight sum         77      62
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.2971  0.1814
#>   std. dev.      0.1134  0.1461
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.302  0.2211
#>   std. dev.      0.1265   0.143
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3075  0.2708
#>   std. dev.      0.1521  0.1757
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3186  0.3029
#>   std. dev.      0.1898  0.2358
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3681  0.3723
#>   std. dev.      0.2097  0.2719
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4044  0.4191
#>   std. dev.      0.2331  0.2953
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4535  0.4521
#>   std. dev.      0.2452  0.2634
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5399  0.4611
#>   std. dev.      0.2487  0.2504
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0411  0.0311
#>   std. dev.      0.0355  0.0258
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6155  0.4875
#>   std. dev.      0.2542   0.256
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6641  0.5473
#>   std. dev.      0.2433  0.2589
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6786  0.5895
#>   std. dev.      0.2324  0.2669
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6882  0.6318
#>   std. dev.      0.2308  0.2545
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7097  0.6602
#>   std. dev.      0.2273   0.251
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.7087   0.676
#>   std. dev.      0.2308  0.2527
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7294  0.6906
#>   std. dev.      0.2347  0.2351
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7499   0.677
#>   std. dev.      0.2547  0.2252
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7424  0.6598
#>   std. dev.      0.2551  0.2067
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6671  0.6194
#>   std. dev.      0.2445  0.2387
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0474  0.0366
#>   std. dev.       0.044  0.0324
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5911  0.5633
#>   std. dev.      0.2084  0.2335
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4894  0.5157
#>   std. dev.      0.2077  0.2053
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4356  0.4356
#>   std. dev.      0.2046   0.212
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3937   0.421
#>   std. dev.      0.1866  0.2049
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V34
#>   mean           0.3586  0.4092
#>   std. dev.      0.1917  0.2306
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3298  0.4176
#>   std. dev.      0.2369  0.2517
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3059   0.435
#>   std. dev.      0.2486  0.2557
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3143  0.4091
#>   std. dev.      0.2237  0.2402
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3243  0.3443
#>   std. dev.      0.1973  0.2153
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3236  0.2848
#>   std. dev.      0.1773  0.2056
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean            0.065  0.0409
#>   std. dev.      0.0604  0.0328
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2956  0.2844
#>   std. dev.       0.152  0.1783
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2865  0.2652
#>   std. dev.      0.1571  0.1777
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2932  0.2369
#>   std. dev.      0.1544  0.1725
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V43
#>   mean           0.2697  0.2042
#>   std. dev.       0.129  0.1302
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2461  0.1697
#>   std. dev.       0.141  0.0908
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2391  0.1361
#>   std. dev.      0.1643  0.0848
#>   weight sum         77      62
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1945  0.1082
#>   std. dev.      0.1341  0.0885
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1422   0.093
#>   std. dev.      0.0851  0.0671
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1039  0.0721
#>   std. dev.      0.0599  0.0511
#>   weight sum         77      62
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0582  0.0401
#>   std. dev.      0.0329  0.0345
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0883    0.06
#>   std. dev.      0.0667  0.0416
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0212  0.0187
#>   std. dev.      0.0138  0.0136
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0178  0.0119
#>   std. dev.       0.011  0.0084
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0153  0.0105
#>   std. dev.      0.0084  0.0074
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0111  0.0103
#>   std. dev.      0.0073  0.0067
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0112  0.0094
#>   std. dev.      0.0079  0.0053
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0095  0.0081
#>   std. dev.      0.0085  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0073
#>   std. dev.      0.0065  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0075  0.0077
#>   std. dev.      0.0057  0.0057
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087  0.0067
#>   std. dev.      0.0079  0.0046
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083  0.0064
#>   std. dev.      0.0071  0.0037
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1053  0.0894
#>   std. dev.      0.0489  0.0552
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0071  0.0056
#>   std. dev.      0.0067  0.0032
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1247  0.1051
#>   std. dev.      0.0529  0.0596
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1376  0.1146
#>   std. dev.      0.0803  0.0847
#>   weight sum         77      62
#>   precision      0.0035  0.0035
#> 
#> V9
#>   mean           0.1992  0.1433
#>   std. dev.      0.1159  0.1045
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
