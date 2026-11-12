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
#>                 (0.51)  (0.49)
#> ===============================
#> V1
#>   mean           0.0352  0.0223
#>   std. dev.      0.0262  0.0143
#>   weight sum         71      68
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2506  0.1528
#>   std. dev.      0.1436  0.1022
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2891  0.1723
#>   std. dev.      0.1257  0.1101
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3003  0.1852
#>   std. dev.      0.1211  0.1372
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3089  0.2192
#>   std. dev.      0.1341  0.1365
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3216  0.2601
#>   std. dev.      0.1715  0.1534
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3199  0.3015
#>   std. dev.      0.1955  0.2017
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3612  0.3765
#>   std. dev.      0.2069  0.2394
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.3981  0.4126
#>   std. dev.      0.2291  0.2814
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4471  0.4336
#>   std. dev.      0.2412  0.2664
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean            0.528  0.4525
#>   std. dev.      0.2436  0.2584
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.045  0.0305
#>   std. dev.      0.0391  0.0259
#>   weight sum         71      68
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.627  0.4891
#>   std. dev.      0.2423  0.2497
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6847  0.5248
#>   std. dev.      0.2379  0.2401
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V22
#>   mean            0.695  0.5566
#>   std. dev.      0.2261  0.2486
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6954  0.5941
#>   std. dev.       0.241   0.233
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7123  0.6484
#>   std. dev.      0.2347  0.2079
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean             0.71  0.6892
#>   std. dev.      0.2318  0.2203
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V26
#>   mean           0.7343  0.7101
#>   std. dev.       0.228  0.2215
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7365   0.702
#>   std. dev.      0.2663  0.2001
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7155  0.6905
#>   std. dev.      0.2594  0.2099
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6424  0.6505
#>   std. dev.      0.2395  0.2338
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V3
#>   mean           0.0509  0.0354
#>   std. dev.      0.0453  0.0291
#>   weight sum         71      68
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5707  0.5847
#>   std. dev.      0.2015  0.2397
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4736  0.5232
#>   std. dev.      0.2002  0.2043
#>   weight sum         71      68
#>   precision      0.0062  0.0062
#> 
#> V32
#>   mean           0.4253  0.4474
#>   std. dev.      0.1967  0.2123
#>   weight sum         71      68
#>   precision       0.006   0.006
#> 
#> V33
#>   mean           0.3907  0.4343
#>   std. dev.      0.1929  0.2148
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3541  0.4341
#>   std. dev.      0.2011  0.2571
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3213  0.4425
#>   std. dev.      0.2396  0.2587
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3172  0.4507
#>   std. dev.      0.2469  0.2529
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3252  0.4086
#>   std. dev.       0.214  0.2346
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3373  0.3214
#>   std. dev.      0.1913  0.2111
#>   weight sum         71      68
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean            0.342  0.2826
#>   std. dev.      0.1832  0.1892
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0653   0.039
#>   std. dev.      0.0614  0.0288
#>   weight sum         71      68
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3073  0.2877
#>   std. dev.      0.1641  0.1735
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2823  0.2622
#>   std. dev.      0.1575  0.1462
#>   weight sum         71      68
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.2964  0.2376
#>   std. dev.      0.1586  0.1343
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V43
#>   mean            0.274  0.1978
#>   std. dev.      0.1264  0.0947
#>   weight sum         71      68
#>   precision      0.0045  0.0045
#> 
#> V44
#>   mean           0.2368  0.1673
#>   std. dev.      0.1359  0.0865
#>   weight sum         71      68
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2349  0.1341
#>   std. dev.      0.1633  0.0817
#>   weight sum         71      68
#>   precision      0.0043  0.0043
#> 
#> V46
#>   mean           0.1849  0.1112
#>   std. dev.      0.1297  0.0783
#>   weight sum         71      68
#>   precision      0.0042  0.0042
#> 
#> V47
#>   mean           0.1322  0.0902
#>   std. dev.      0.0709  0.0542
#>   weight sum         71      68
#>   precision      0.0026  0.0026
#> 
#> V48
#>   mean           0.1034  0.0655
#>   std. dev.      0.0544  0.0402
#>   weight sum         71      68
#>   precision      0.0018  0.0018
#> 
#> V49
#>   mean           0.0614  0.0337
#>   std. dev.      0.0316  0.0229
#>   weight sum         71      68
#>   precision       0.001   0.001
#> 
#> V5
#>   mean            0.087  0.0592
#>   std. dev.       0.067   0.043
#>   weight sum         71      68
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0162
#>   std. dev.      0.0144  0.0099
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0177  0.0126
#>   std. dev.      0.0087  0.0087
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0147  0.0111
#>   std. dev.      0.0088  0.0076
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114    0.01
#>   std. dev.      0.0079  0.0063
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0112  0.0099
#>   std. dev.      0.0074  0.0056
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0089
#>   std. dev.      0.0082  0.0052
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0077
#>   std. dev.      0.0067   0.005
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0085
#>   std. dev.      0.0057  0.0061
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0067
#>   std. dev.      0.0077  0.0047
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0083  0.0068
#>   std. dev.      0.0063  0.0045
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1078  0.0921
#>   std. dev.      0.0528  0.0629
#>   weight sum         71      68
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007   0.006
#>   std. dev.      0.0066  0.0035
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1216  0.1078
#>   std. dev.      0.0532   0.062
#>   weight sum         71      68
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1443  0.1115
#>   std. dev.      0.0814  0.0767
#>   weight sum         71      68
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2088  0.1336
#>   std. dev.      0.1235  0.0907
#>   weight sum         71      68
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
