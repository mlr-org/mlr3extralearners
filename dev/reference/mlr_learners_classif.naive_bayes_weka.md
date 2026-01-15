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
#>   mean           0.0373   0.024
#>   std. dev.      0.0285  0.0165
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2443  0.1657
#>   std. dev.      0.1285  0.1093
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2858  0.1783
#>   std. dev.      0.1229  0.1099
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3046  0.1938
#>   std. dev.      0.1324    0.13
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3239  0.2279
#>   std. dev.      0.1393  0.1407
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3345  0.2608
#>   std. dev.      0.1601  0.1676
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V15
#>   mean           0.3486  0.3015
#>   std. dev.      0.1994  0.2109
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.4055  0.3611
#>   std. dev.      0.2239  0.2416
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4417   0.417
#>   std. dev.      0.2549  0.2804
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4783  0.4445
#>   std. dev.      0.2607  0.2672
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5475  0.4598
#>   std. dev.      0.2518  0.2521
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0493  0.0308
#>   std. dev.      0.0413  0.0258
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6233  0.4866
#>   std. dev.      0.2395   0.254
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean             0.67   0.519
#>   std. dev.      0.2404  0.2377
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6681  0.5388
#>   std. dev.      0.2338  0.2606
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean            0.667  0.5975
#>   std. dev.      0.2548  0.2397
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V24
#>   mean           0.6703  0.6318
#>   std. dev.      0.2549  0.2331
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6551  0.6328
#>   std. dev.      0.2572  0.2672
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6835  0.6651
#>   std. dev.      0.2541  0.2572
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.6915  0.6688
#>   std. dev.      0.2753  0.2321
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6925  0.6698
#>   std. dev.      0.2659  0.2069
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6312  0.6422
#>   std. dev.       0.254  0.2323
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0574  0.0363
#>   std. dev.      0.0501  0.0301
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5594  0.5835
#>   std. dev.      0.2009  0.2398
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean            0.459  0.5267
#>   std. dev.      0.2094   0.204
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4109  0.4468
#>   std. dev.      0.2075  0.2215
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.385  0.4533
#>   std. dev.      0.1956  0.2285
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean             0.36  0.4712
#>   std. dev.      0.2042  0.2714
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3334  0.4711
#>   std. dev.      0.2398  0.2741
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3102  0.4912
#>   std. dev.      0.2494  0.2598
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3037  0.4455
#>   std. dev.      0.2236  0.2428
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3295  0.3637
#>   std. dev.      0.2005  0.2265
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V39
#>   mean           0.3408  0.3418
#>   std. dev.      0.1903  0.2154
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0692  0.0446
#>   std. dev.      0.0627  0.0339
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3026  0.3495
#>   std. dev.      0.1685  0.2027
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2952  0.3136
#>   std. dev.      0.1634  0.1871
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3054  0.2735
#>   std. dev.       0.171  0.1756
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2727  0.2177
#>   std. dev.      0.1437  0.1398
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2368  0.1725
#>   std. dev.      0.1353   0.115
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2451  0.1431
#>   std. dev.      0.1635  0.0988
#>   weight sum         73      66
#>   precision      0.0044  0.0044
#> 
#> V46
#>   mean           0.2052  0.1183
#>   std. dev.       0.149  0.1023
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V47
#>   mean           0.1516  0.0935
#>   std. dev.      0.0955  0.0734
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1154  0.0693
#>   std. dev.      0.0702  0.0503
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0674  0.0382
#>   std. dev.      0.0367  0.0314
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0901  0.0634
#>   std. dev.       0.066  0.0503
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0239  0.0172
#>   std. dev.      0.0156  0.0119
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0208  0.0127
#>   std. dev.      0.0149  0.0093
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0166  0.0104
#>   std. dev.      0.0114  0.0077
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0093
#>   std. dev.      0.0081   0.006
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0096
#>   std. dev.       0.009  0.0055
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104   0.009
#>   std. dev.      0.0078  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean            0.009  0.0074
#>   std. dev.      0.0068  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081   0.008
#>   std. dev.      0.0066  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0069
#>   std. dev.      0.0078  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0091  0.0076
#>   std. dev.      0.0068  0.0054
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1116  0.0954
#>   std. dev.       0.055   0.059
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0069  0.0061
#>   std. dev.      0.0065  0.0035
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1246  0.1098
#>   std. dev.      0.0545  0.0609
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1474   0.117
#>   std. dev.      0.0809  0.0779
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2016  0.1372
#>   std. dev.      0.1125  0.0939
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
