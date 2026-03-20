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
#>   mean           0.0353  0.0237
#>   std. dev.      0.0276  0.0164
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2389  0.1722
#>   std. dev.      0.1197  0.1173
#>   weight sum         76      63
#>   precision      0.0042  0.0042
#> 
#> V11
#>   mean           0.2828   0.183
#>   std. dev.      0.1148  0.1167
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V12
#>   mean           0.3004  0.1825
#>   std. dev.      0.1148   0.132
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3127  0.2281
#>   std. dev.      0.1307  0.1485
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3106   0.284
#>   std. dev.      0.1608  0.1823
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3208  0.3368
#>   std. dev.      0.1934  0.2293
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3689  0.4067
#>   std. dev.      0.2178  0.2676
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4083  0.4364
#>   std. dev.      0.2428  0.3037
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4496  0.4557
#>   std. dev.      0.2581  0.2819
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5238  0.4755
#>   std. dev.      0.2576  0.2663
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0466  0.0307
#>   std. dev.      0.0402  0.0257
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5731  0.5094
#>   std. dev.      0.2677  0.2708
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6194  0.5447
#>   std. dev.       0.266  0.2656
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6456  0.5874
#>   std. dev.      0.2607  0.2624
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6727  0.6378
#>   std. dev.      0.2597  0.2332
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7002   0.663
#>   std. dev.      0.2359  0.2305
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6941  0.6585
#>   std. dev.      0.2248   0.243
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.6994  0.6925
#>   std. dev.      0.2327  0.2268
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7149   0.696
#>   std. dev.      0.2614  0.2085
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7147  0.6688
#>   std. dev.      0.2676  0.2055
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6476  0.6148
#>   std. dev.      0.2572   0.254
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0513  0.0353
#>   std. dev.      0.0477  0.0301
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5791  0.5731
#>   std. dev.      0.2226  0.2374
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.5119  0.5292
#>   std. dev.      0.2263  0.1923
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4561  0.4421
#>   std. dev.      0.2129  0.2093
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4066  0.4311
#>   std. dev.      0.2051  0.2007
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V34
#>   mean           0.3708  0.4269
#>   std. dev.      0.2048  0.2392
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3421  0.4327
#>   std. dev.      0.2326  0.2532
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3157  0.4451
#>   std. dev.       0.225  0.2559
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.311  0.3998
#>   std. dev.      0.2132   0.235
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3112  0.3423
#>   std. dev.       0.184   0.227
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3182  0.3223
#>   std. dev.      0.1678  0.2156
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0625  0.0406
#>   std. dev.      0.0592   0.033
#>   weight sum         76      63
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3105  0.3306
#>   std. dev.      0.1636   0.194
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3077  0.2819
#>   std. dev.      0.1715  0.1766
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.2947  0.2432
#>   std. dev.      0.1714  0.1583
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2658  0.2077
#>   std. dev.      0.1425   0.106
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2364  0.1715
#>   std. dev.      0.1447  0.0809
#>   weight sum         76      63
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2284  0.1386
#>   std. dev.      0.1723   0.088
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1968  0.1164
#>   std. dev.      0.1532  0.0955
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1556  0.0949
#>   std. dev.      0.1016  0.0706
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1142  0.0724
#>   std. dev.      0.0676  0.0512
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0655  0.0401
#>   std. dev.      0.0371  0.0319
#>   weight sum         76      63
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0848  0.0666
#>   std. dev.      0.0606  0.0506
#>   weight sum         76      63
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0228  0.0186
#>   std. dev.      0.0134  0.0136
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0195   0.013
#>   std. dev.      0.0144   0.009
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0158  0.0107
#>   std. dev.      0.0114  0.0068
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0109  0.0097
#>   std. dev.       0.007  0.0059
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0124  0.0098
#>   std. dev.      0.0083  0.0052
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean             0.01  0.0081
#>   std. dev.      0.0082  0.0047
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0069
#>   std. dev.      0.0046  0.0043
#>   weight sum         76      63
#>   precision      0.0002  0.0002
#> 
#> V57
#>   mean           0.0077  0.0073
#>   std. dev.      0.0054   0.005
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0095  0.0059
#>   std. dev.      0.0071  0.0041
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087   0.007
#>   std. dev.      0.0069  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.113   0.098
#>   std. dev.      0.0524  0.0691
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0059
#>   std. dev.      0.0061  0.0036
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1277    0.12
#>   std. dev.      0.0576  0.0709
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1446  0.1258
#>   std. dev.      0.0769  0.0818
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2017   0.149
#>   std. dev.      0.0987  0.1006
#>   weight sum         76      63
#>   precision       0.004   0.004
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
