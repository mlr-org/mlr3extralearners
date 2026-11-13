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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0369  0.0229
#>   std. dev.      0.0283  0.0156
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2545  0.1684
#>   std. dev.      0.1344  0.1267
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2949  0.1784
#>   std. dev.       0.115  0.1226
#>   weight sum         77      62
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.3064   0.187
#>   std. dev.      0.1231  0.1319
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3246  0.2144
#>   std. dev.      0.1379  0.1264
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.332  0.2551
#>   std. dev.      0.1701  0.1544
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3429  0.2957
#>   std. dev.       0.202  0.2089
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3907  0.3724
#>   std. dev.      0.2164  0.2514
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4287  0.4317
#>   std. dev.      0.2392  0.2866
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4673  0.4752
#>   std. dev.      0.2629  0.2681
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5555  0.4829
#>   std. dev.      0.2607  0.2659
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0471   0.031
#>   std. dev.      0.0406  0.0258
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6373  0.5168
#>   std. dev.      0.2593  0.2655
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6799  0.5637
#>   std. dev.      0.2403   0.257
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6862  0.5969
#>   std. dev.      0.2296  0.2635
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6914  0.6288
#>   std. dev.      0.2462  0.2628
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6981  0.6559
#>   std. dev.      0.2343  0.2432
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6851  0.6587
#>   std. dev.      0.2377  0.2633
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7062  0.6835
#>   std. dev.      0.2392   0.251
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7131  0.6847
#>   std. dev.      0.2688  0.2168
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean            0.707  0.6496
#>   std. dev.      0.2519  0.2052
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6412  0.5815
#>   std. dev.      0.2344  0.2121
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V3
#>   mean           0.0531  0.0373
#>   std. dev.      0.0469  0.0291
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5775  0.5421
#>   std. dev.      0.2103  0.2177
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4743  0.5079
#>   std. dev.      0.2223  0.1944
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4299  0.4395
#>   std. dev.      0.2094  0.2137
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V33
#>   mean           0.3936  0.4332
#>   std. dev.       0.192  0.2102
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3632  0.4338
#>   std. dev.      0.2073  0.2494
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3398  0.4579
#>   std. dev.      0.2536  0.2582
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3277   0.478
#>   std. dev.      0.2556  0.2585
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3384  0.4454
#>   std. dev.       0.223  0.2424
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3538  0.3764
#>   std. dev.      0.2007  0.2344
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean            0.351  0.3165
#>   std. dev.      0.1802  0.2224
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0672  0.0432
#>   std. dev.      0.0605  0.0331
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3131  0.3293
#>   std. dev.      0.1598  0.1973
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.3034  0.3026
#>   std. dev.      0.1709  0.1892
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3072  0.2619
#>   std. dev.       0.169   0.178
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2773  0.2173
#>   std. dev.      0.1347  0.1311
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2492  0.1714
#>   std. dev.       0.139  0.0961
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2496  0.1441
#>   std. dev.      0.1762  0.0886
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2046  0.1171
#>   std. dev.      0.1487   0.097
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1433  0.0971
#>   std. dev.      0.0908  0.0708
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1064   0.074
#>   std. dev.      0.0679  0.0522
#>   weight sum         77      62
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean            0.062  0.0409
#>   std. dev.      0.0373  0.0326
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0911  0.0623
#>   std. dev.      0.0669  0.0476
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0232  0.0188
#>   std. dev.      0.0151  0.0142
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0187  0.0128
#>   std. dev.      0.0124  0.0094
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0162  0.0114
#>   std. dev.      0.0097  0.0079
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0117  0.0106
#>   std. dev.      0.0078  0.0064
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0102
#>   std. dev.      0.0088  0.0051
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0108  0.0086
#>   std. dev.      0.0089  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0094  0.0071
#>   std. dev.      0.0068  0.0045
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0076
#>   std. dev.      0.0058  0.0064
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0066
#>   std. dev.      0.0079  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0071
#>   std. dev.       0.007  0.0047
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1177  0.0976
#>   std. dev.      0.0554  0.0698
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0062
#>   std. dev.      0.0065  0.0035
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1376  0.1172
#>   std. dev.      0.0607  0.0705
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1502   0.124
#>   std. dev.      0.0918  0.0846
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2173  0.1474
#>   std. dev.        0.13  0.1147
#>   weight sum         77      62
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
