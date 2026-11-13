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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0323  0.0223
#>   std. dev.      0.0266  0.0148
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2371  0.1514
#>   std. dev.      0.1334  0.1017
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2852  0.1709
#>   std. dev.      0.1305  0.1041
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3047  0.1865
#>   std. dev.      0.1232   0.125
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3192   0.212
#>   std. dev.        0.13  0.1285
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3212  0.2459
#>   std. dev.      0.1786  0.1538
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3225  0.2767
#>   std. dev.      0.2065  0.2026
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3696  0.3445
#>   std. dev.      0.2157  0.2461
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4082  0.3886
#>   std. dev.      0.2357  0.2851
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4593   0.418
#>   std. dev.      0.2496  0.2692
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5406  0.4368
#>   std. dev.       0.256  0.2518
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0427  0.0282
#>   std. dev.      0.0388  0.0233
#>   weight sum         70      69
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6124  0.4543
#>   std. dev.       0.242  0.2505
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6598  0.4991
#>   std. dev.      0.2364  0.2345
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V22
#>   mean            0.691  0.5362
#>   std. dev.      0.2401  0.2593
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.7122  0.5946
#>   std. dev.      0.2263  0.2379
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7163  0.6477
#>   std. dev.      0.2174  0.2342
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.7022  0.6697
#>   std. dev.      0.2205  0.2478
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7223  0.6947
#>   std. dev.      0.2139  0.2311
#>   weight sum         70      69
#>   precision      0.0062  0.0062
#> 
#> V27
#>   mean           0.7323  0.6811
#>   std. dev.        0.24  0.2148
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.7176  0.6668
#>   std. dev.      0.2393  0.1955
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6522  0.6535
#>   std. dev.      0.2324  0.2255
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0498  0.0357
#>   std. dev.      0.0485  0.0284
#>   weight sum         70      69
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5661  0.5931
#>   std. dev.      0.2051  0.2253
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4701  0.5359
#>   std. dev.       0.216  0.2053
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean            0.417  0.4573
#>   std. dev.      0.2195  0.2227
#>   weight sum         70      69
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3933  0.4604
#>   std. dev.       0.211  0.2163
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3552  0.4738
#>   std. dev.      0.2075  0.2493
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3123  0.4856
#>   std. dev.      0.2346  0.2601
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2966  0.4863
#>   std. dev.      0.2294  0.2624
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3016  0.4259
#>   std. dev.      0.2092  0.2482
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3135  0.3579
#>   std. dev.      0.1735  0.2372
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.332  0.3317
#>   std. dev.      0.1715   0.229
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0654  0.0415
#>   std. dev.      0.0607  0.0318
#>   weight sum         70      69
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3113  0.3369
#>   std. dev.      0.1489  0.2039
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2872  0.2984
#>   std. dev.      0.1585  0.1803
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2999  0.2627
#>   std. dev.      0.1596  0.1674
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2751  0.2255
#>   std. dev.      0.1245  0.1376
#>   weight sum         70      69
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2407  0.1856
#>   std. dev.      0.1405  0.1161
#>   weight sum         70      69
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2347  0.1495
#>   std. dev.      0.1641  0.1075
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1899  0.1259
#>   std. dev.      0.1356  0.1016
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1461  0.0972
#>   std. dev.      0.0846   0.075
#>   weight sum         70      69
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1076  0.0708
#>   std. dev.      0.0634  0.0523
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0627  0.0386
#>   std. dev.      0.0335  0.0332
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0872  0.0613
#>   std. dev.      0.0679  0.0488
#>   weight sum         70      69
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0177
#>   std. dev.      0.0132  0.0132
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0185  0.0119
#>   std. dev.      0.0097  0.0086
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0154    0.01
#>   std. dev.      0.0094  0.0063
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0102
#>   std. dev.      0.0071  0.0061
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0115  0.0098
#>   std. dev.      0.0078  0.0052
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0085
#>   std. dev.      0.0093  0.0053
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0084  0.0072
#>   std. dev.      0.0063  0.0045
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0076
#>   std. dev.      0.0057  0.0055
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0067
#>   std. dev.      0.0077  0.0048
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086  0.0073
#>   std. dev.      0.0065  0.0057
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1138  0.0901
#>   std. dev.      0.0543  0.0607
#>   weight sum         70      69
#>   precision      0.0023  0.0023
#> 
#> V60
#>   mean           0.0065   0.006
#>   std. dev.       0.005  0.0037
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean             0.13  0.1106
#>   std. dev.      0.0614  0.0638
#>   weight sum         70      69
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1429  0.1148
#>   std. dev.      0.0799  0.0754
#>   weight sum         70      69
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2012  0.1311
#>   std. dev.      0.0973  0.0913
#>   weight sum         70      69
#>   precision       0.004   0.004
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
