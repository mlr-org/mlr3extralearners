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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0355  0.0228
#>   std. dev.      0.0263  0.0155
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2652  0.1665
#>   std. dev.      0.1421  0.1225
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2966  0.1851
#>   std. dev.      0.1345  0.1249
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3047   0.199
#>   std. dev.       0.128  0.1415
#>   weight sum         70      69
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3102  0.2322
#>   std. dev.      0.1365  0.1477
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3137  0.2729
#>   std. dev.      0.1605  0.1762
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3222  0.3067
#>   std. dev.       0.196  0.2211
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3716  0.3783
#>   std. dev.      0.2217   0.257
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4059  0.4122
#>   std. dev.      0.2522  0.2921
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4479  0.4446
#>   std. dev.      0.2563   0.277
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5216  0.4643
#>   std. dev.      0.2572  0.2649
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0467    0.03
#>   std. dev.       0.032  0.0237
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.5873  0.4908
#>   std. dev.      0.2751  0.2562
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.634  0.5306
#>   std. dev.      0.2777  0.2497
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.637  0.5466
#>   std. dev.      0.2538  0.2653
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6436  0.5926
#>   std. dev.      0.2669  0.2441
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6496  0.6266
#>   std. dev.      0.2599  0.2379
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6504  0.6347
#>   std. dev.      0.2543   0.267
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6867  0.6651
#>   std. dev.      0.2382  0.2446
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.6942  0.6782
#>   std. dev.      0.2728  0.2072
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean            0.704  0.6641
#>   std. dev.      0.2706  0.2152
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6524   0.628
#>   std. dev.      0.2471  0.2232
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0496  0.0365
#>   std. dev.      0.0357  0.0281
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5933  0.5767
#>   std. dev.      0.2214  0.2142
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V31
#>   mean           0.4927  0.5142
#>   std. dev.      0.2317  0.1909
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4437  0.4202
#>   std. dev.      0.2181   0.194
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4216  0.4101
#>   std. dev.      0.2017  0.2013
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3875  0.4196
#>   std. dev.      0.2167  0.2438
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3462  0.4382
#>   std. dev.       0.245  0.2605
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3181  0.4422
#>   std. dev.      0.2548  0.2535
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3211   0.394
#>   std. dev.       0.239  0.2251
#>   weight sum         70      69
#>   precision      0.0062  0.0062
#> 
#> V38
#>   mean           0.3374  0.3319
#>   std. dev.      0.2126  0.2153
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3428  0.3123
#>   std. dev.      0.1921  0.2141
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0622  0.0425
#>   std. dev.      0.0392  0.0313
#>   weight sum         70      69
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3096  0.3212
#>   std. dev.      0.1732  0.2004
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean             0.29  0.2844
#>   std. dev.       0.171  0.1746
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2844  0.2495
#>   std. dev.      0.1629  0.1624
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2664  0.2058
#>   std. dev.      0.1473  0.1336
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2442  0.1722
#>   std. dev.      0.1486  0.1146
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2359  0.1345
#>   std. dev.      0.1663  0.0972
#>   weight sum         70      69
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.2005  0.1078
#>   std. dev.      0.1505   0.085
#>   weight sum         70      69
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1521  0.0901
#>   std. dev.      0.0993  0.0618
#>   weight sum         70      69
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1181   0.067
#>   std. dev.      0.0705  0.0444
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0676  0.0353
#>   std. dev.      0.0369  0.0249
#>   weight sum         70      69
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0826  0.0658
#>   std. dev.      0.0493  0.0481
#>   weight sum         70      69
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0239  0.0161
#>   std. dev.      0.0148  0.0095
#>   weight sum         70      69
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0194  0.0119
#>   std. dev.      0.0153  0.0079
#>   weight sum         70      69
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0164  0.0101
#>   std. dev.      0.0115  0.0072
#>   weight sum         70      69
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0117  0.0094
#>   std. dev.      0.0083  0.0058
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0097
#>   std. dev.      0.0088  0.0053
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0086
#>   std. dev.      0.0077  0.0049
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0073
#>   std. dev.      0.0068  0.0049
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0081
#>   std. dev.      0.0066  0.0059
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0097  0.0068
#>   std. dev.       0.008  0.0051
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087  0.0073
#>   std. dev.      0.0068  0.0053
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1099     0.1
#>   std. dev.      0.0525  0.0711
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0058
#>   std. dev.       0.006  0.0037
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1327  0.1152
#>   std. dev.      0.0558  0.0706
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1508  0.1216
#>   std. dev.      0.0832  0.0871
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2231  0.1474
#>   std. dev.       0.126  0.1092
#>   weight sum         70      69
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
