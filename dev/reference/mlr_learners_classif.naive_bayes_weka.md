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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0335   0.023
#>   std. dev.      0.0245  0.0162
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2448  0.1706
#>   std. dev.      0.1386  0.1181
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2927   0.187
#>   std. dev.      0.1336  0.1168
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V12
#>   mean           0.3117  0.2018
#>   std. dev.      0.1257  0.1431
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3219   0.236
#>   std. dev.      0.1337  0.1498
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.327  0.2778
#>   std. dev.      0.1673  0.1729
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3359  0.3197
#>   std. dev.      0.1933  0.2224
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3919  0.3898
#>   std. dev.      0.2103  0.2476
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4381    0.43
#>   std. dev.      0.2464  0.2724
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V18
#>   mean           0.4869  0.4551
#>   std. dev.       0.262  0.2592
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5693  0.4702
#>   std. dev.      0.2537  0.2501
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0424  0.0297
#>   std. dev.       0.034   0.021
#>   weight sum         73      66
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6379  0.5048
#>   std. dev.       0.238  0.2451
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6905  0.5381
#>   std. dev.      0.2333  0.2365
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7055  0.5726
#>   std. dev.      0.2283  0.2431
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V23
#>   mean           0.7117  0.6198
#>   std. dev.      0.2412  0.2393
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V24
#>   mean           0.7119  0.6572
#>   std. dev.      0.2413  0.2292
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7071  0.6726
#>   std. dev.      0.2325  0.2255
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7267  0.6826
#>   std. dev.      0.2286   0.223
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V27
#>   mean           0.7251  0.6807
#>   std. dev.      0.2548  0.2075
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7057  0.6807
#>   std. dev.       0.262  0.1888
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean            0.637  0.6283
#>   std. dev.      0.2536  0.2375
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0477  0.0358
#>   std. dev.       0.033  0.0288
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5671   0.569
#>   std. dev.      0.2138  0.2359
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4737  0.5145
#>   std. dev.      0.2092  0.2132
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4119  0.4545
#>   std. dev.      0.1937  0.2274
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3687   0.439
#>   std. dev.        0.17  0.2305
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean            0.341  0.4295
#>   std. dev.      0.1837  0.2475
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3058  0.4426
#>   std. dev.      0.2175  0.2336
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.2901   0.448
#>   std. dev.      0.2152  0.2366
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V37
#>   mean           0.2952  0.4111
#>   std. dev.      0.1946  0.2428
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3136  0.3535
#>   std. dev.      0.1716  0.2274
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean            0.333  0.3179
#>   std. dev.      0.1665  0.2143
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0597  0.0438
#>   std. dev.      0.0386  0.0327
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3085  0.3195
#>   std. dev.       0.148  0.1967
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2795  0.2872
#>   std. dev.      0.1532  0.1761
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2949  0.2405
#>   std. dev.      0.1561  0.1648
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2882  0.2027
#>   std. dev.      0.1388  0.1203
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2423  0.1709
#>   std. dev.      0.1413  0.0942
#>   weight sum         73      66
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2182  0.1387
#>   std. dev.      0.1668  0.0937
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1784  0.1172
#>   std. dev.      0.1476  0.0967
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1402  0.0907
#>   std. dev.      0.0969  0.0701
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1078  0.0657
#>   std. dev.      0.0705  0.0493
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean            0.064  0.0374
#>   std. dev.      0.0375  0.0324
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean             0.08  0.0668
#>   std. dev.      0.0471  0.0521
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0225  0.0176
#>   std. dev.      0.0152  0.0134
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0138
#>   std. dev.      0.0148  0.0091
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0154  0.0114
#>   std. dev.      0.0112  0.0078
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0097
#>   std. dev.      0.0078  0.0065
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0094
#>   std. dev.      0.0081  0.0052
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean             0.01  0.0089
#>   std. dev.      0.0083  0.0056
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0092  0.0072
#>   std. dev.      0.0065  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0077
#>   std. dev.      0.0057  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0068
#>   std. dev.      0.0083  0.0047
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086   0.007
#>   std. dev.      0.0058  0.0045
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean            0.105  0.1017
#>   std. dev.      0.0522  0.0702
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0065  0.0061
#>   std. dev.      0.0042  0.0037
#>   weight sum         73      66
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1238  0.1212
#>   std. dev.      0.0533  0.0684
#>   weight sum         73      66
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1414  0.1255
#>   std. dev.      0.0749  0.0872
#>   weight sum         73      66
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.1991  0.1475
#>   std. dev.      0.1132  0.1069
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
