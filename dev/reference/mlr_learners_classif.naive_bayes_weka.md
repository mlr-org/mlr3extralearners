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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0345  0.0222
#>   std. dev.      0.0259  0.0156
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2597  0.1611
#>   std. dev.      0.1438  0.1283
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2985  0.1728
#>   std. dev.      0.1307  0.1187
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3098  0.1943
#>   std. dev.      0.1204  0.1303
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3191  0.2198
#>   std. dev.      0.1263   0.126
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3272  0.2652
#>   std. dev.      0.1603  0.1479
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3364  0.3039
#>   std. dev.      0.1885  0.2047
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3842  0.3621
#>   std. dev.      0.2068  0.2335
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V17
#>   mean             0.41  0.3846
#>   std. dev.       0.234  0.2704
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4556  0.4102
#>   std. dev.      0.2449  0.2598
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5426  0.4388
#>   std. dev.      0.2421  0.2534
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0451  0.0321
#>   std. dev.      0.0354  0.0268
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6279  0.4783
#>   std. dev.      0.2401    0.25
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6825  0.5234
#>   std. dev.       0.241  0.2331
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6923  0.5637
#>   std. dev.      0.2365  0.2502
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6959  0.6213
#>   std. dev.      0.2499  0.2442
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7074    0.66
#>   std. dev.      0.2388  0.2262
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7013  0.6542
#>   std. dev.      0.2303  0.2554
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7291  0.6802
#>   std. dev.      0.2207  0.2349
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7364    0.69
#>   std. dev.      0.2499  0.1903
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V28
#>   mean           0.7266  0.6835
#>   std. dev.      0.2453  0.1941
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6585  0.6364
#>   std. dev.      0.2412   0.244
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0499  0.0386
#>   std. dev.      0.0387  0.0313
#>   weight sum         78      61
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5767  0.6028
#>   std. dev.      0.2103  0.2339
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4677   0.558
#>   std. dev.       0.217  0.1969
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4127  0.4625
#>   std. dev.       0.202  0.2138
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3825  0.4372
#>   std. dev.      0.1851  0.2161
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3506  0.4399
#>   std. dev.      0.1987  0.2522
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3199   0.464
#>   std. dev.      0.2408  0.2735
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3136  0.4768
#>   std. dev.      0.2495  0.2729
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3174  0.4289
#>   std. dev.      0.2284  0.2483
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3301  0.3648
#>   std. dev.      0.1971  0.2201
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3482  0.3194
#>   std. dev.       0.176  0.2157
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0661  0.0436
#>   std. dev.      0.0447  0.0353
#>   weight sum         78      61
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3132  0.3215
#>   std. dev.      0.1553  0.2001
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.284  0.2931
#>   std. dev.      0.1516  0.1724
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3018  0.2615
#>   std. dev.      0.1524  0.1578
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V43
#>   mean           0.2817  0.2266
#>   std. dev.      0.1363  0.1225
#>   weight sum         78      61
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2504   0.182
#>   std. dev.      0.1398  0.1115
#>   weight sum         78      61
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2469  0.1497
#>   std. dev.      0.1632     0.1
#>   weight sum         78      61
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.193  0.1188
#>   std. dev.      0.1326  0.0915
#>   weight sum         78      61
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1374   0.095
#>   std. dev.      0.0814  0.0599
#>   weight sum         78      61
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1081  0.0679
#>   std. dev.      0.0634  0.0442
#>   weight sum         78      61
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0643  0.0378
#>   std. dev.      0.0371  0.0275
#>   weight sum         78      61
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0919  0.0626
#>   std. dev.      0.0553  0.0499
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0226  0.0181
#>   std. dev.      0.0153  0.0112
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0178  0.0128
#>   std. dev.      0.0115  0.0087
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0149  0.0111
#>   std. dev.      0.0087  0.0079
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0104
#>   std. dev.      0.0075  0.0066
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0118  0.0101
#>   std. dev.      0.0082   0.005
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0095  0.0087
#>   std. dev.      0.0083  0.0046
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0075
#>   std. dev.      0.0064  0.0047
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076   0.008
#>   std. dev.      0.0058  0.0062
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0084  0.0064
#>   std. dev.       0.007  0.0048
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083   0.007
#>   std. dev.      0.0066  0.0052
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1148  0.0974
#>   std. dev.      0.0529  0.0717
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0062
#>   std. dev.      0.0061  0.0035
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1338   0.117
#>   std. dev.      0.0563  0.0683
#>   weight sum         78      61
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1577  0.1205
#>   std. dev.      0.0892   0.084
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2162  0.1357
#>   std. dev.      0.1255  0.1123
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
