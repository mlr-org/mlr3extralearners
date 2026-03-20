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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0355  0.0233
#>   std. dev.      0.0292  0.0143
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2589  0.1577
#>   std. dev.      0.1497   0.094
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2974  0.1701
#>   std. dev.      0.1346  0.0952
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3043  0.1944
#>   std. dev.      0.1279  0.1125
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3186  0.2257
#>   std. dev.      0.1313  0.1297
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3259  0.2657
#>   std. dev.      0.1602  0.1647
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3437  0.3042
#>   std. dev.      0.1933  0.2233
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3978   0.363
#>   std. dev.      0.2086  0.2573
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4276   0.407
#>   std. dev.      0.2318  0.2935
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4691  0.4584
#>   std. dev.      0.2515  0.2711
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5437  0.4715
#>   std. dev.      0.2565  0.2522
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0475  0.0295
#>   std. dev.      0.0412  0.0184
#>   weight sum         77      62
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean            0.617  0.4964
#>   std. dev.      0.2602  0.2463
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6627  0.5396
#>   std. dev.      0.2569  0.2385
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6647  0.5669
#>   std. dev.       0.246  0.2596
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6782  0.6173
#>   std. dev.      0.2651  0.2476
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6996  0.6504
#>   std. dev.      0.2489  0.2456
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean            0.685  0.6406
#>   std. dev.      0.2426  0.2719
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7077  0.6625
#>   std. dev.        0.23  0.2437
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean            0.717  0.6676
#>   std. dev.      0.2567  0.2239
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean            0.719  0.6601
#>   std. dev.      0.2476  0.2087
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6545  0.6433
#>   std. dev.        0.23  0.2274
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0512  0.0365
#>   std. dev.      0.0442  0.0233
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5775  0.5922
#>   std. dev.      0.2039  0.2286
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4834  0.5448
#>   std. dev.      0.2093  0.1974
#>   weight sum         77      62
#>   precision       0.006   0.006
#> 
#> V32
#>   mean           0.4274  0.4788
#>   std. dev.      0.2054  0.2024
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4004  0.4682
#>   std. dev.      0.1965  0.2214
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3812   0.468
#>   std. dev.       0.206  0.2446
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3608   0.463
#>   std. dev.      0.2473  0.2545
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3559   0.456
#>   std. dev.      0.2427  0.2565
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V37
#>   mean           0.3491  0.4063
#>   std. dev.      0.2283  0.2301
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3475  0.3575
#>   std. dev.      0.2101  0.2196
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3509  0.3376
#>   std. dev.       0.178  0.2272
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0637  0.0395
#>   std. dev.      0.0568   0.024
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3195  0.3471
#>   std. dev.      0.1442  0.2065
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3033  0.3011
#>   std. dev.      0.1549  0.1919
#>   weight sum         77      62
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3108   0.271
#>   std. dev.      0.1758  0.1764
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2889  0.2265
#>   std. dev.      0.1423   0.145
#>   weight sum         77      62
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2585  0.1838
#>   std. dev.      0.1396  0.1135
#>   weight sum         77      62
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2472  0.1457
#>   std. dev.      0.1715  0.1032
#>   weight sum         77      62
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1977  0.1227
#>   std. dev.      0.1485  0.1013
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1466   0.102
#>   std. dev.      0.0916  0.0747
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1127  0.0717
#>   std. dev.      0.0685  0.0507
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0652  0.0402
#>   std. dev.      0.0365  0.0324
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0845  0.0594
#>   std. dev.      0.0565  0.0437
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0223  0.0187
#>   std. dev.      0.0132  0.0137
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0203  0.0117
#>   std. dev.      0.0152  0.0085
#>   weight sum         77      62
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0165  0.0104
#>   std. dev.      0.0115  0.0073
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0122  0.0092
#>   std. dev.      0.0073  0.0058
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0093
#>   std. dev.      0.0084  0.0049
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0102  0.0084
#>   std. dev.      0.0079   0.005
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0073
#>   std. dev.      0.0059  0.0043
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0074
#>   std. dev.      0.0052   0.005
#>   weight sum         77      62
#>   precision      0.0002  0.0002
#> 
#> V58
#>   mean           0.0091  0.0071
#>   std. dev.      0.0069  0.0053
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0091  0.0075
#>   std. dev.      0.0066  0.0054
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1124  0.0965
#>   std. dev.      0.0519  0.0655
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0066
#>   std. dev.      0.0064  0.0039
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1314  0.1143
#>   std. dev.      0.0626  0.0638
#>   weight sum         77      62
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1581  0.1157
#>   std. dev.      0.0938  0.0671
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2236  0.1275
#>   std. dev.       0.128  0.0844
#>   weight sum         77      62
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
