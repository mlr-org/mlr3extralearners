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
#>   mean           0.0342  0.0236
#>   std. dev.      0.0262  0.0159
#>   weight sum         77      62
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2498  0.1641
#>   std. dev.      0.1488  0.1298
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2788  0.1795
#>   std. dev.      0.1243  0.1187
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2806  0.1996
#>   std. dev.      0.1203  0.1358
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.2989  0.2322
#>   std. dev.      0.1209  0.1319
#>   weight sum         77      62
#>   precision      0.0045  0.0045
#> 
#> V14
#>   mean           0.3184  0.2716
#>   std. dev.      0.1491  0.1557
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V15
#>   mean           0.3386  0.3049
#>   std. dev.      0.1812  0.2093
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3959  0.3758
#>   std. dev.      0.1994  0.2393
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4218  0.4178
#>   std. dev.       0.231  0.2634
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4568  0.4431
#>   std. dev.      0.2551   0.241
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5459  0.4559
#>   std. dev.      0.2544  0.2446
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0477  0.0343
#>   std. dev.      0.0393  0.0267
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6387  0.5052
#>   std. dev.      0.2547  0.2648
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6847  0.5546
#>   std. dev.      0.2474  0.2515
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6726  0.5745
#>   std. dev.      0.2431  0.2693
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6703  0.6022
#>   std. dev.      0.2556  0.2523
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean             0.68  0.6417
#>   std. dev.      0.2347   0.247
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean            0.665  0.6596
#>   std. dev.      0.2338  0.2665
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6833  0.6741
#>   std. dev.      0.2421   0.251
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6879  0.6836
#>   std. dev.      0.2776   0.232
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6949  0.6806
#>   std. dev.      0.2666  0.1972
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6399  0.6211
#>   std. dev.       0.236  0.2369
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V3
#>   mean           0.0513  0.0382
#>   std. dev.      0.0455  0.0322
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5813  0.5749
#>   std. dev.      0.2082  0.2295
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4796  0.5332
#>   std. dev.      0.2282  0.1882
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4362  0.4528
#>   std. dev.      0.2164   0.206
#>   weight sum         77      62
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.4069   0.436
#>   std. dev.       0.205  0.2114
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3866  0.4422
#>   std. dev.      0.2145  0.2601
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3627  0.4658
#>   std. dev.      0.2491  0.2698
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3387  0.4826
#>   std. dev.      0.2512   0.268
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3285   0.446
#>   std. dev.      0.2341  0.2592
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3492  0.3894
#>   std. dev.      0.2164  0.2387
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3475  0.3454
#>   std. dev.      0.1908    0.23
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0691  0.0445
#>   std. dev.      0.0582  0.0346
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean            0.318  0.3401
#>   std. dev.      0.1595  0.2011
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3124  0.2998
#>   std. dev.      0.1677  0.1782
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3133  0.2556
#>   std. dev.      0.1657  0.1675
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2717  0.2108
#>   std. dev.      0.1358  0.1133
#>   weight sum         77      62
#>   precision      0.0043  0.0043
#> 
#> V44
#>   mean           0.2439  0.1657
#>   std. dev.       0.141  0.0765
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V45
#>   mean           0.2553  0.1356
#>   std. dev.      0.1766  0.0834
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2042  0.1162
#>   std. dev.      0.1515  0.0945
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1447  0.0944
#>   std. dev.      0.0839  0.0709
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1108  0.0688
#>   std. dev.      0.0587  0.0514
#>   weight sum         77      62
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0641  0.0395
#>   std. dev.      0.0346   0.034
#>   weight sum         77      62
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean            0.091  0.0646
#>   std. dev.      0.0647  0.0501
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0238  0.0189
#>   std. dev.      0.0152  0.0141
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0187  0.0123
#>   std. dev.      0.0121  0.0089
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0162  0.0114
#>   std. dev.        0.01  0.0071
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0119  0.0107
#>   std. dev.      0.0079  0.0067
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0106
#>   std. dev.      0.0083  0.0055
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0096
#>   std. dev.      0.0094  0.0053
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0091  0.0072
#>   std. dev.      0.0071  0.0043
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008   0.008
#>   std. dev.       0.006  0.0057
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0071
#>   std. dev.       0.007  0.0046
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0086  0.0071
#>   std. dev.      0.0072  0.0046
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1124   0.099
#>   std. dev.      0.0519  0.0703
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072  0.0061
#>   std. dev.      0.0064  0.0035
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1292  0.1174
#>   std. dev.      0.0596  0.0743
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.155  0.1189
#>   std. dev.      0.0952   0.088
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2211  0.1383
#>   std. dev.      0.1334  0.1114
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
