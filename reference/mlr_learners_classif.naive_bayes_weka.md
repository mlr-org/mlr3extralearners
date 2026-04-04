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
#>   mean           0.0334  0.0225
#>   std. dev.      0.0246   0.014
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2545  0.1559
#>   std. dev.      0.1406  0.1114
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2947  0.1701
#>   std. dev.      0.1381  0.1138
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3051  0.1938
#>   std. dev.      0.1341   0.141
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3213  0.2309
#>   std. dev.      0.1348  0.1447
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3258   0.271
#>   std. dev.      0.1661  0.1716
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3361  0.3113
#>   std. dev.      0.1947  0.2311
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3874  0.3738
#>   std. dev.      0.2207  0.2674
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4199  0.4088
#>   std. dev.      0.2484  0.3011
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4595  0.4323
#>   std. dev.      0.2546  0.2822
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean            0.534  0.4388
#>   std. dev.      0.2517  0.2656
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0406  0.0318
#>   std. dev.      0.0317  0.0266
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6126  0.4761
#>   std. dev.      0.2495  0.2646
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6642  0.5173
#>   std. dev.      0.2451   0.258
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6684  0.5379
#>   std. dev.      0.2413  0.2723
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6765  0.5698
#>   std. dev.      0.2577  0.2544
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6932  0.6077
#>   std. dev.      0.2473  0.2488
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6853  0.6382
#>   std. dev.      0.2412  0.2707
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7186  0.6888
#>   std. dev.      0.2315  0.2513
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7397  0.6923
#>   std. dev.      0.2563  0.2181
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7465  0.6624
#>   std. dev.      0.2449   0.197
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6749  0.6106
#>   std. dev.        0.23  0.2118
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean            0.048  0.0374
#>   std. dev.      0.0365  0.0317
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5847  0.5602
#>   std. dev.      0.1976  0.2256
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean            0.486  0.5251
#>   std. dev.      0.2054  0.1847
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.426  0.4481
#>   std. dev.      0.1992  0.2019
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3911  0.4284
#>   std. dev.      0.1834   0.208
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3459  0.4314
#>   std. dev.      0.1921  0.2526
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3053  0.4502
#>   std. dev.       0.218  0.2702
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2763  0.4539
#>   std. dev.       0.228  0.2709
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2832  0.4198
#>   std. dev.      0.2086  0.2384
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3146  0.3553
#>   std. dev.      0.1934  0.2314
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3301  0.3176
#>   std. dev.      0.1869  0.2303
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0585  0.0385
#>   std. dev.      0.0418  0.0276
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3011  0.3322
#>   std. dev.      0.1732  0.1996
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2821  0.2964
#>   std. dev.      0.1655  0.1802
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2871  0.2583
#>   std. dev.      0.1699  0.1659
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean            0.271  0.2112
#>   std. dev.      0.1385  0.1246
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean            0.244  0.1658
#>   std. dev.      0.1346    0.09
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2396  0.1385
#>   std. dev.      0.1621    0.09
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean             0.19  0.1142
#>   std. dev.       0.142  0.0948
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1455  0.0953
#>   std. dev.      0.0887  0.0699
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1141  0.0706
#>   std. dev.      0.0621  0.0486
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0665  0.0379
#>   std. dev.      0.0339  0.0314
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.083  0.0593
#>   std. dev.      0.0518  0.0401
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0226  0.0171
#>   std. dev.      0.0123  0.0128
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0193   0.012
#>   std. dev.      0.0133  0.0088
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0145  0.0099
#>   std. dev.        0.01  0.0065
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0111  0.0101
#>   std. dev.      0.0069  0.0062
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0116  0.0104
#>   std. dev.      0.0083  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0094  0.0088
#>   std. dev.      0.0072  0.0053
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0084  0.0076
#>   std. dev.      0.0055  0.0047
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0074
#>   std. dev.      0.0055  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.009  0.0067
#>   std. dev.      0.0068  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0066
#>   std. dev.      0.0064  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1127  0.0938
#>   std. dev.      0.0499  0.0639
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0066  0.0059
#>   std. dev.      0.0063  0.0035
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1281  0.1083
#>   std. dev.      0.0556  0.0614
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1527  0.1107
#>   std. dev.      0.0822  0.0758
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2101  0.1324
#>   std. dev.      0.1155  0.0974
#>   weight sum         73      66
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
