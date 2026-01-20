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
#>                 (0.49)  (0.51)
#> ===============================
#> V1
#>   mean           0.0368  0.0214
#>   std. dev.      0.0268  0.0125
#>   weight sum         68      71
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2536  0.1684
#>   std. dev.      0.1385  0.1229
#>   weight sum         68      71
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2917  0.1853
#>   std. dev.       0.123  0.1208
#>   weight sum         68      71
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3037   0.201
#>   std. dev.      0.1219  0.1433
#>   weight sum         68      71
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.315  0.2386
#>   std. dev.      0.1297  0.1476
#>   weight sum         68      71
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3266  0.2851
#>   std. dev.      0.1778  0.1755
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3498  0.3194
#>   std. dev.      0.2024   0.227
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3949  0.3998
#>   std. dev.      0.2199  0.2629
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4342  0.4461
#>   std. dev.      0.2397  0.2974
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4762  0.4665
#>   std. dev.      0.2521  0.2732
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5559  0.4694
#>   std. dev.      0.2617  0.2513
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0507  0.0314
#>   std. dev.      0.0414   0.026
#>   weight sum         68      71
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6248  0.4939
#>   std. dev.      0.2669  0.2386
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6714  0.5386
#>   std. dev.      0.2621  0.2358
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6932   0.583
#>   std. dev.      0.2319  0.2495
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6999   0.636
#>   std. dev.      0.2352   0.233
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6997   0.669
#>   std. dev.      0.2392  0.2281
#>   weight sum         68      71
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6898  0.6797
#>   std. dev.      0.2422  0.2386
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7253  0.7011
#>   std. dev.      0.2337  0.2324
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7412  0.6964
#>   std. dev.      0.2521  0.2215
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7221  0.6875
#>   std. dev.      0.2551  0.2158
#>   weight sum         68      71
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6477  0.6531
#>   std. dev.      0.2333  0.2451
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0534  0.0375
#>   std. dev.      0.0492  0.0306
#>   weight sum         68      71
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5713   0.607
#>   std. dev.      0.2049   0.218
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4719  0.5512
#>   std. dev.       0.214  0.1897
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4072  0.4616
#>   std. dev.      0.2149  0.2068
#>   weight sum         68      71
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3632  0.4424
#>   std. dev.       0.181  0.2167
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3337  0.4345
#>   std. dev.      0.1873  0.2509
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3209  0.4469
#>   std. dev.      0.2371  0.2585
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3151  0.4609
#>   std. dev.       0.242   0.257
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3251  0.4122
#>   std. dev.      0.2209   0.246
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3325  0.3489
#>   std. dev.      0.1934  0.2234
#>   weight sum         68      71
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean           0.3241  0.3091
#>   std. dev.      0.1799  0.2127
#>   weight sum         68      71
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0709   0.045
#>   std. dev.      0.0633  0.0331
#>   weight sum         68      71
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2844  0.3105
#>   std. dev.      0.1492  0.1964
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.277  0.2792
#>   std. dev.      0.1552  0.1749
#>   weight sum         68      71
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2987  0.2416
#>   std. dev.      0.1789  0.1705
#>   weight sum         68      71
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2856  0.1999
#>   std. dev.      0.1483  0.1327
#>   weight sum         68      71
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2524  0.1689
#>   std. dev.      0.1432  0.1047
#>   weight sum         68      71
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2461  0.1393
#>   std. dev.       0.171  0.0992
#>   weight sum         68      71
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1989  0.1145
#>   std. dev.      0.1556  0.0993
#>   weight sum         68      71
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1451  0.0944
#>   std. dev.      0.0985  0.0733
#>   weight sum         68      71
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1092  0.0681
#>   std. dev.      0.0698    0.05
#>   weight sum         68      71
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0651  0.0379
#>   std. dev.      0.0375   0.032
#>   weight sum         68      71
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0923  0.0681
#>   std. dev.      0.0693  0.0496
#>   weight sum         68      71
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0233   0.017
#>   std. dev.      0.0151   0.013
#>   weight sum         68      71
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0198  0.0128
#>   std. dev.      0.0152  0.0092
#>   weight sum         68      71
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0173  0.0108
#>   std. dev.       0.012  0.0075
#>   weight sum         68      71
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0122  0.0097
#>   std. dev.      0.0079  0.0062
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0116  0.0092
#>   std. dev.      0.0078  0.0051
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0088
#>   std. dev.      0.0087  0.0048
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0077
#>   std. dev.      0.0065  0.0048
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0074
#>   std. dev.      0.0059  0.0051
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0102  0.0063
#>   std. dev.      0.0085  0.0048
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0089  0.0074
#>   std. dev.      0.0062   0.005
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean            0.114  0.1051
#>   std. dev.      0.0555  0.0697
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072  0.0065
#>   std. dev.       0.005  0.0038
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1294  0.1228
#>   std. dev.      0.0581  0.0703
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1469  0.1268
#>   std. dev.      0.0794  0.0846
#>   weight sum         68      71
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2095  0.1438
#>   std. dev.      0.1186  0.1062
#>   weight sum         68      71
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
