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
#>   mean           0.0361  0.0227
#>   std. dev.      0.0293  0.0159
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2658  0.1559
#>   std. dev.      0.1372   0.108
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2985  0.1748
#>   std. dev.      0.1269  0.1109
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3085  0.1948
#>   std. dev.      0.1244   0.129
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3172  0.2275
#>   std. dev.      0.1369  0.1358
#>   weight sum         69      70
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3153  0.2638
#>   std. dev.      0.1586  0.1696
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3249  0.2977
#>   std. dev.      0.1945  0.2202
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3862  0.3694
#>   std. dev.      0.2101  0.2541
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4279  0.4172
#>   std. dev.      0.2448  0.2872
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4664   0.457
#>   std. dev.      0.2523  0.2652
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5452  0.4838
#>   std. dev.      0.2492  0.2572
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0472  0.0314
#>   std. dev.      0.0412  0.0247
#>   weight sum         69      70
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.624  0.5269
#>   std. dev.      0.2622   0.264
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6695  0.5699
#>   std. dev.      0.2673  0.2441
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6782  0.5819
#>   std. dev.      0.2451  0.2593
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean            0.686  0.6209
#>   std. dev.      0.2587  0.2456
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7016  0.6578
#>   std. dev.      0.2543  0.2318
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.692  0.6567
#>   std. dev.      0.2459  0.2536
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7156  0.6729
#>   std. dev.      0.2425  0.2427
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7249  0.6736
#>   std. dev.       0.272  0.2218
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7317  0.6623
#>   std. dev.      0.2635  0.2135
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6613  0.6246
#>   std. dev.      0.2542  0.2315
#>   weight sum         69      70
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0532  0.0346
#>   std. dev.      0.0479  0.0287
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.6022  0.5593
#>   std. dev.      0.2158  0.2365
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4983  0.5123
#>   std. dev.      0.2223  0.2101
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4356  0.4397
#>   std. dev.      0.2163  0.2135
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3883  0.4386
#>   std. dev.      0.1926  0.2097
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3546  0.4594
#>   std. dev.      0.2134  0.2471
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3458  0.4723
#>   std. dev.      0.2484  0.2638
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3269  0.4798
#>   std. dev.      0.2629  0.2561
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3232  0.4246
#>   std. dev.      0.2354  0.2338
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3473  0.3521
#>   std. dev.      0.2105  0.1999
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3485  0.3105
#>   std. dev.      0.1944  0.1921
#>   weight sum         69      70
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0676  0.0423
#>   std. dev.       0.063  0.0313
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean            0.297  0.3049
#>   std. dev.      0.1793  0.1779
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2773  0.2781
#>   std. dev.      0.1724  0.1634
#>   weight sum         69      70
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean            0.294  0.2467
#>   std. dev.      0.1747  0.1661
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2797  0.2107
#>   std. dev.      0.1498  0.1379
#>   weight sum         69      70
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean            0.253  0.1729
#>   std. dev.      0.1462  0.1127
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean            0.249  0.1311
#>   std. dev.      0.1695  0.0845
#>   weight sum         69      70
#>   precision      0.0044  0.0044
#> 
#> V46
#>   mean            0.199  0.1041
#>   std. dev.      0.1536  0.0744
#>   weight sum         69      70
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1455  0.0844
#>   std. dev.      0.0972  0.0545
#>   weight sum         69      70
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1176  0.0656
#>   std. dev.      0.0688  0.0424
#>   weight sum         69      70
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0681   0.037
#>   std. dev.      0.0369  0.0264
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0956  0.0664
#>   std. dev.      0.0684  0.0486
#>   weight sum         69      70
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0239  0.0178
#>   std. dev.      0.0157  0.0108
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0203  0.0114
#>   std. dev.      0.0151  0.0074
#>   weight sum         69      70
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0169    0.01
#>   std. dev.      0.0103   0.007
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0094
#>   std. dev.      0.0082  0.0058
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0097
#>   std. dev.      0.0085  0.0055
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0097  0.0087
#>   std. dev.      0.0074  0.0051
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0071
#>   std. dev.       0.007  0.0043
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0077
#>   std. dev.      0.0061  0.0055
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0068
#>   std. dev.      0.0081  0.0049
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0082  0.0071
#>   std. dev.      0.0066  0.0051
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.115  0.0998
#>   std. dev.      0.0531  0.0695
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0058
#>   std. dev.      0.0066  0.0034
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1304  0.1159
#>   std. dev.      0.0508  0.0676
#>   weight sum         69      70
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1501  0.1178
#>   std. dev.      0.0789  0.0815
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2171  0.1382
#>   std. dev.      0.1203  0.0968
#>   weight sum         69      70
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
