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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0316  0.0223
#>   std. dev.      0.0251   0.013
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2352  0.1618
#>   std. dev.      0.1201  0.1225
#>   weight sum         75      64
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2818  0.1805
#>   std. dev.      0.1145  0.1204
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean           0.3034  0.1937
#>   std. dev.      0.1217   0.144
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3163  0.2298
#>   std. dev.      0.1282  0.1384
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3085  0.2738
#>   std. dev.      0.1438  0.1654
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V15
#>   mean            0.326  0.3019
#>   std. dev.      0.1884  0.2103
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V16
#>   mean           0.3758  0.3732
#>   std. dev.      0.2049  0.2485
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean            0.424  0.4282
#>   std. dev.      0.2327  0.2803
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4817  0.4583
#>   std. dev.      0.2483  0.2666
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V19
#>   mean            0.565  0.4792
#>   std. dev.       0.246  0.2547
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0424  0.0311
#>   std. dev.      0.0384  0.0267
#>   weight sum         75      64
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6425  0.5131
#>   std. dev.       0.243  0.2565
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.6926  0.5569
#>   std. dev.      0.2325  0.2439
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7024  0.5896
#>   std. dev.      0.2261    0.25
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.7071  0.6473
#>   std. dev.      0.2363  0.2357
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7212   0.693
#>   std. dev.      0.2289  0.2171
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7114  0.7079
#>   std. dev.      0.2406  0.2232
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7253  0.7309
#>   std. dev.      0.2404  0.2247
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7332  0.7063
#>   std. dev.      0.2702  0.2154
#>   weight sum         75      64
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7257   0.665
#>   std. dev.      0.2695  0.2084
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6547  0.6114
#>   std. dev.      0.2394  0.2368
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0486  0.0386
#>   std. dev.      0.0458  0.0313
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.572  0.5644
#>   std. dev.      0.1914  0.2465
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4751  0.5364
#>   std. dev.      0.1971    0.21
#>   weight sum         75      64
#>   precision       0.006   0.006
#> 
#> V32
#>   mean           0.4146  0.4535
#>   std. dev.      0.1959  0.2143
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3791  0.4283
#>   std. dev.      0.1936  0.2204
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3547  0.4415
#>   std. dev.       0.204  0.2454
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3316  0.4512
#>   std. dev.      0.2453  0.2649
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3203  0.4526
#>   std. dev.      0.2535  0.2596
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3179  0.4003
#>   std. dev.      0.2304  0.2469
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean            0.327  0.3355
#>   std. dev.      0.2073  0.2273
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3358  0.3097
#>   std. dev.      0.1805  0.2005
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0615  0.0436
#>   std. dev.      0.0602  0.0345
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3037  0.3125
#>   std. dev.      0.1634  0.1798
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2734  0.2788
#>   std. dev.      0.1605  0.1669
#>   weight sum         75      64
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean           0.2706  0.2435
#>   std. dev.      0.1563   0.157
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean           0.2549  0.2174
#>   std. dev.      0.1319  0.1345
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2315   0.178
#>   std. dev.      0.1342  0.1109
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2165  0.1358
#>   std. dev.      0.1568  0.0892
#>   weight sum         75      64
#>   precision      0.0043  0.0043
#> 
#> V46
#>   mean           0.1723  0.1078
#>   std. dev.      0.1277  0.0784
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1333  0.0869
#>   std. dev.      0.0821  0.0527
#>   weight sum         75      64
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1019  0.0654
#>   std. dev.      0.0619  0.0392
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0592  0.0358
#>   std. dev.       0.032  0.0226
#>   weight sum         75      64
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0852  0.0653
#>   std. dev.      0.0626  0.0502
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean             0.02   0.017
#>   std. dev.      0.0114  0.0105
#>   weight sum         75      64
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0187  0.0115
#>   std. dev.       0.013  0.0078
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0155  0.0112
#>   std. dev.      0.0096  0.0072
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0108    0.01
#>   std. dev.      0.0062  0.0061
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0114   0.009
#>   std. dev.      0.0077  0.0051
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean            0.009  0.0084
#>   std. dev.      0.0069   0.005
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V56
#>   mean            0.008  0.0073
#>   std. dev.      0.0056  0.0051
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0073  0.0078
#>   std. dev.      0.0047  0.0057
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.008  0.0068
#>   std. dev.      0.0066  0.0048
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0081  0.0076
#>   std. dev.      0.0061  0.0054
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1113  0.1033
#>   std. dev.      0.0476  0.0723
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0069  0.0061
#>   std. dev.      0.0064  0.0032
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1253  0.1138
#>   std. dev.       0.055  0.0696
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1385  0.1173
#>   std. dev.      0.0809  0.0862
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.1946  0.1402
#>   std. dev.       0.106  0.1081
#>   weight sum         75      64
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
