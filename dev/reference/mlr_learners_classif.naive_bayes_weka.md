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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0366  0.0221
#>   std. dev.      0.0287  0.0136
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2581  0.1534
#>   std. dev.       0.139  0.1049
#>   weight sum         72      67
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2979  0.1667
#>   std. dev.      0.1263  0.1014
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean            0.311  0.1858
#>   std. dev.      0.1287  0.1277
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3252  0.2134
#>   std. dev.      0.1382  0.1342
#>   weight sum         72      67
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3226  0.2399
#>   std. dev.      0.1508  0.1556
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3287  0.2729
#>   std. dev.      0.1947  0.2143
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3748  0.3326
#>   std. dev.      0.2153  0.2346
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4013  0.3713
#>   std. dev.       0.245  0.2593
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4427  0.4081
#>   std. dev.      0.2693  0.2477
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5316  0.4308
#>   std. dev.      0.2651    0.25
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V2
#>   mean            0.047  0.0283
#>   std. dev.      0.0353  0.0215
#>   weight sum         72      67
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6159  0.4718
#>   std. dev.      0.2638   0.263
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean            0.653  0.5175
#>   std. dev.      0.2615  0.2506
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6425  0.5425
#>   std. dev.      0.2495   0.256
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean            0.646  0.5733
#>   std. dev.      0.2604    0.25
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6586  0.6205
#>   std. dev.      0.2442  0.2368
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.658  0.6558
#>   std. dev.       0.234  0.2633
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6933  0.6937
#>   std. dev.      0.2282  0.2551
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7016   0.693
#>   std. dev.      0.2712  0.2344
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7108  0.6846
#>   std. dev.      0.2596  0.2031
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6573  0.6323
#>   std. dev.      0.2463  0.2099
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0526   0.033
#>   std. dev.      0.0378  0.0273
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5945  0.5712
#>   std. dev.      0.2115  0.2223
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4901    0.53
#>   std. dev.      0.2351  0.1926
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4385  0.4627
#>   std. dev.      0.2137  0.2072
#>   weight sum         72      67
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.4103  0.4445
#>   std. dev.      0.2039  0.2165
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3895  0.4581
#>   std. dev.      0.2108  0.2633
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3591  0.4799
#>   std. dev.      0.2554  0.2631
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3429  0.4835
#>   std. dev.      0.2656  0.2534
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3294  0.4336
#>   std. dev.      0.2458  0.2346
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3388  0.3697
#>   std. dev.      0.2193   0.225
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3453  0.3404
#>   std. dev.      0.1918  0.2267
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0634  0.0368
#>   std. dev.      0.0415  0.0256
#>   weight sum         72      67
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.3156  0.3471
#>   std. dev.      0.1637  0.2099
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3046     0.3
#>   std. dev.      0.1646  0.1888
#>   weight sum         72      67
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3229  0.2652
#>   std. dev.       0.163  0.1664
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2871  0.2236
#>   std. dev.      0.1465  0.1386
#>   weight sum         72      67
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.253  0.1817
#>   std. dev.      0.1505   0.118
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean            0.261   0.147
#>   std. dev.      0.1793  0.1017
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2117  0.1245
#>   std. dev.       0.158  0.1005
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1541  0.0984
#>   std. dev.      0.1028  0.0718
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1141  0.0724
#>   std. dev.      0.0742  0.0484
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0652  0.0402
#>   std. dev.      0.0405  0.0314
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0818  0.0541
#>   std. dev.      0.0505   0.039
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V50
#>   mean           0.0231  0.0181
#>   std. dev.      0.0157  0.0139
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0201  0.0121
#>   std. dev.      0.0156  0.0088
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0168    0.01
#>   std. dev.      0.0116  0.0064
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0097
#>   std. dev.      0.0078  0.0064
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0127  0.0096
#>   std. dev.      0.0089  0.0054
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0087
#>   std. dev.      0.0084  0.0055
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0075
#>   std. dev.       0.007  0.0049
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0079
#>   std. dev.      0.0066  0.0059
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098   0.007
#>   std. dev.      0.0082  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0072
#>   std. dev.      0.0063  0.0051
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1178  0.0899
#>   std. dev.      0.0474  0.0583
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0067  0.0062
#>   std. dev.      0.0043  0.0037
#>   weight sum         72      67
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1353  0.1066
#>   std. dev.      0.0577  0.0586
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1666  0.1077
#>   std. dev.      0.0921  0.0706
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2237  0.1283
#>   std. dev.      0.1334  0.0923
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
