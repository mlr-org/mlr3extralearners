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
#>                 (0.51)  (0.49)
#> ===============================
#> V1
#>   mean           0.0353  0.0222
#>   std. dev.      0.0273  0.0154
#>   weight sum         71      68
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2364  0.1605
#>   std. dev.      0.1292  0.1153
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2771  0.1704
#>   std. dev.      0.1206  0.1068
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2878  0.1834
#>   std. dev.      0.1204  0.1284
#>   weight sum         71      68
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3084  0.2167
#>   std. dev.      0.1369  0.1167
#>   weight sum         71      68
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3248   0.251
#>   std. dev.      0.1684  0.1462
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3434  0.2964
#>   std. dev.      0.2009   0.209
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3994  0.3703
#>   std. dev.      0.2184  0.2405
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4398  0.4226
#>   std. dev.      0.2448   0.283
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4792  0.4504
#>   std. dev.      0.2676  0.2628
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5541  0.4608
#>   std. dev.      0.2619  0.2517
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0459  0.0307
#>   std. dev.      0.0339   0.025
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6226  0.4942
#>   std. dev.      0.2552  0.2634
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean            0.659  0.5469
#>   std. dev.       0.258    0.25
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6691   0.571
#>   std. dev.      0.2493   0.272
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6754  0.6056
#>   std. dev.      0.2578  0.2529
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6795  0.6493
#>   std. dev.      0.2447  0.2476
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean            0.672  0.6617
#>   std. dev.       0.241   0.269
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6902  0.6741
#>   std. dev.      0.2336  0.2526
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6855  0.6788
#>   std. dev.      0.2635  0.2257
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.6883  0.6841
#>   std. dev.      0.2616  0.1961
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6471  0.6539
#>   std. dev.       0.248  0.2104
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0474  0.0381
#>   std. dev.      0.0355  0.0316
#>   weight sum         71      68
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean            0.591  0.6004
#>   std. dev.      0.2216  0.2165
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean            0.505  0.5369
#>   std. dev.       0.232  0.2019
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4451  0.4456
#>   std. dev.      0.2345  0.2144
#>   weight sum         71      68
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4114  0.4371
#>   std. dev.      0.2113  0.2157
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3827  0.4637
#>   std. dev.      0.2079  0.2664
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3557  0.4843
#>   std. dev.      0.2421  0.2707
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3078  0.4823
#>   std. dev.      0.2361  0.2729
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2926  0.4378
#>   std. dev.       0.227  0.2469
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3148  0.3608
#>   std. dev.      0.2013  0.2269
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3317  0.3071
#>   std. dev.      0.1812  0.2299
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0591  0.0425
#>   std. dev.      0.0375  0.0297
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3016  0.3164
#>   std. dev.       0.166  0.2026
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2947  0.2818
#>   std. dev.       0.167  0.1832
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3038  0.2517
#>   std. dev.      0.1751   0.165
#>   weight sum         71      68
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.276  0.2118
#>   std. dev.       0.144  0.1345
#>   weight sum         71      68
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2504  0.1769
#>   std. dev.      0.1463  0.1119
#>   weight sum         71      68
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean            0.246  0.1465
#>   std. dev.      0.1807  0.0988
#>   weight sum         71      68
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2059   0.122
#>   std. dev.       0.166  0.0993
#>   weight sum         71      68
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1558  0.0998
#>   std. dev.      0.0999  0.0706
#>   weight sum         71      68
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1128  0.0738
#>   std. dev.      0.0652  0.0519
#>   weight sum         71      68
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0653  0.0404
#>   std. dev.      0.0353  0.0339
#>   weight sum         71      68
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0804  0.0605
#>   std. dev.      0.0451  0.0398
#>   weight sum         71      68
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0232  0.0189
#>   std. dev.      0.0147  0.0127
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0199  0.0126
#>   std. dev.       0.015  0.0086
#>   weight sum         71      68
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0104
#>   std. dev.      0.0113  0.0064
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118  0.0101
#>   std. dev.      0.0077  0.0063
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012  0.0103
#>   std. dev.      0.0084  0.0055
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101   0.009
#>   std. dev.      0.0089  0.0053
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0083  0.0073
#>   std. dev.      0.0056  0.0049
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0082
#>   std. dev.      0.0063   0.006
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094  0.0069
#>   std. dev.      0.0082  0.0049
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0073
#>   std. dev.      0.0064  0.0054
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.109  0.0927
#>   std. dev.      0.0461  0.0568
#>   weight sum         71      68
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0064  0.0063
#>   std. dev.      0.0048  0.0037
#>   weight sum         71      68
#>   precision      0.0002  0.0002
#> 
#> V7
#>   mean           0.1298  0.1117
#>   std. dev.      0.0569  0.0599
#>   weight sum         71      68
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1458  0.1144
#>   std. dev.      0.0799  0.0692
#>   weight sum         71      68
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2033  0.1371
#>   std. dev.      0.1089  0.0994
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
