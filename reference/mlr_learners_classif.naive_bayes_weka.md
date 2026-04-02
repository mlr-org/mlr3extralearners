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
#>   mean           0.0351  0.0201
#>   std. dev.      0.0283  0.0126
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2598  0.1407
#>   std. dev.      0.1279  0.1092
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2948  0.1522
#>   std. dev.      0.1274  0.1075
#>   weight sum         73      66
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.3111  0.1792
#>   std. dev.      0.1351  0.1334
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3266  0.2107
#>   std. dev.      0.1393  0.1367
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3272   0.245
#>   std. dev.      0.1548  0.1639
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3278  0.2709
#>   std. dev.      0.1966  0.2126
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3759  0.3321
#>   std. dev.      0.2173  0.2549
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4148  0.3655
#>   std. dev.      0.2434  0.2708
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4507  0.4087
#>   std. dev.       0.252  0.2467
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V19
#>   mean           0.5406  0.4364
#>   std. dev.      0.2476  0.2407
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0443  0.0271
#>   std. dev.      0.0368  0.0191
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6142  0.4712
#>   std. dev.      0.2568  0.2437
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6503  0.5082
#>   std. dev.      0.2571  0.2439
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6464  0.5363
#>   std. dev.      0.2424  0.2587
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6489  0.5957
#>   std. dev.      0.2507  0.2453
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6539   0.653
#>   std. dev.      0.2499  0.2278
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6578  0.6718
#>   std. dev.      0.2474  0.2652
#>   weight sum         73      66
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.7069  0.6903
#>   std. dev.      0.2346  0.2622
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7339  0.6893
#>   std. dev.      0.2602  0.2237
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7384  0.6761
#>   std. dev.      0.2547  0.2042
#>   weight sum         73      66
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6643   0.641
#>   std. dev.      0.2519  0.2266
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0509  0.0306
#>   std. dev.      0.0464  0.0236
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5895  0.5919
#>   std. dev.      0.2015  0.2315
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4751  0.5562
#>   std. dev.      0.2168  0.1995
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4301  0.4835
#>   std. dev.      0.2102  0.2054
#>   weight sum         73      66
#>   precision      0.0061  0.0061
#> 
#> V33
#>   mean           0.4015  0.4729
#>   std. dev.      0.1957  0.2084
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V34
#>   mean           0.3624  0.4735
#>   std. dev.      0.1982  0.2503
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V35
#>   mean           0.3291  0.4751
#>   std. dev.       0.246  0.2755
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3226  0.4791
#>   std. dev.      0.2595  0.2581
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3243  0.4253
#>   std. dev.      0.2344  0.2281
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3356  0.3578
#>   std. dev.       0.213  0.2193
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3415  0.3292
#>   std. dev.      0.1884  0.2048
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean            0.066  0.0363
#>   std. dev.      0.0611  0.0238
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3107  0.3224
#>   std. dev.      0.1609  0.1894
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2896  0.2804
#>   std. dev.      0.1613  0.1657
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3017   0.251
#>   std. dev.      0.1609   0.164
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2903  0.2177
#>   std. dev.      0.1465  0.1371
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean            0.266  0.1864
#>   std. dev.      0.1509  0.1178
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2561  0.1451
#>   std. dev.      0.1754  0.0983
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2022  0.1068
#>   std. dev.      0.1503  0.0824
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1498   0.084
#>   std. dev.       0.101  0.0538
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1159  0.0632
#>   std. dev.      0.0706  0.0382
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0646  0.0341
#>   std. dev.      0.0375  0.0202
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0898  0.0558
#>   std. dev.      0.0677  0.0379
#>   weight sum         73      66
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0224  0.0161
#>   std. dev.      0.0149  0.0105
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0203  0.0111
#>   std. dev.       0.015  0.0077
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0097
#>   std. dev.      0.0105  0.0063
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0113  0.0094
#>   std. dev.      0.0082  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0094
#>   std. dev.      0.0086  0.0055
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0092  0.0082
#>   std. dev.      0.0079  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0075
#>   std. dev.       0.007  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0076
#>   std. dev.      0.0064  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0089  0.0058
#>   std. dev.      0.0079  0.0044
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0082  0.0073
#>   std. dev.      0.0062  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1095  0.0907
#>   std. dev.      0.0496  0.0603
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean            0.007  0.0058
#>   std. dev.       0.006  0.0038
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1262  0.1054
#>   std. dev.      0.0593   0.057
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1435  0.1069
#>   std. dev.      0.0824   0.071
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2141  0.1238
#>   std. dev.      0.1145  0.0988
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
