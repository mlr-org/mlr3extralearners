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
#>   mean           0.0321   0.022
#>   std. dev.      0.0227  0.0126
#>   weight sum         71      68
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean            0.259  0.1618
#>   std. dev.      0.1423  0.1181
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2986   0.174
#>   std. dev.      0.1318  0.1135
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3144   0.192
#>   std. dev.      0.1231  0.1316
#>   weight sum         71      68
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3256  0.2302
#>   std. dev.      0.1286  0.1241
#>   weight sum         71      68
#>   precision       0.005   0.005
#> 
#> V14
#>   mean            0.337  0.2615
#>   std. dev.      0.1702  0.1554
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3532   0.306
#>   std. dev.      0.2095  0.2108
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3983  0.3777
#>   std. dev.      0.2309  0.2477
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4259  0.4266
#>   std. dev.        0.26  0.2747
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V18
#>   mean           0.4679  0.4615
#>   std. dev.       0.273  0.2639
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5423  0.4855
#>   std. dev.      0.2635  0.2659
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0415  0.0305
#>   std. dev.      0.0305  0.0206
#>   weight sum         71      68
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.6194   0.526
#>   std. dev.      0.2653  0.2648
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6633  0.5801
#>   std. dev.      0.2573  0.2532
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6669  0.6075
#>   std. dev.       0.242  0.2522
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6703  0.6252
#>   std. dev.      0.2518  0.2425
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6873  0.6662
#>   std. dev.      0.2596  0.2278
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6792   0.693
#>   std. dev.      0.2499  0.2213
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6909  0.7044
#>   std. dev.      0.2421  0.2277
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6913  0.6846
#>   std. dev.      0.2721  0.2213
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean             0.69  0.6616
#>   std. dev.      0.2714  0.1998
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6331   0.619
#>   std. dev.      0.2576    0.24
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.048  0.0354
#>   std. dev.      0.0329  0.0276
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5635  0.5768
#>   std. dev.      0.2101  0.2439
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4763  0.5385
#>   std. dev.      0.2076  0.2146
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4244  0.4661
#>   std. dev.      0.2157  0.2238
#>   weight sum         71      68
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4071   0.449
#>   std. dev.       0.195  0.2263
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3742   0.463
#>   std. dev.      0.2126  0.2505
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3422  0.4709
#>   std. dev.      0.2497  0.2672
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3192  0.4623
#>   std. dev.      0.2402  0.2728
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3159  0.4191
#>   std. dev.      0.2231  0.2489
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.326  0.3521
#>   std. dev.      0.2056  0.2242
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3251  0.3267
#>   std. dev.       0.179  0.2027
#>   weight sum         71      68
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0608  0.0436
#>   std. dev.      0.0372   0.032
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.2983  0.3285
#>   std. dev.      0.1546   0.182
#>   weight sum         71      68
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.2852  0.2833
#>   std. dev.      0.1657   0.171
#>   weight sum         71      68
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2945  0.2477
#>   std. dev.      0.1706  0.1568
#>   weight sum         71      68
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2687  0.2142
#>   std. dev.      0.1383  0.1279
#>   weight sum         71      68
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2479  0.1863
#>   std. dev.       0.146  0.1136
#>   weight sum         71      68
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2371  0.1475
#>   std. dev.      0.1689   0.091
#>   weight sum         71      68
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1894  0.1204
#>   std. dev.      0.1442  0.0822
#>   weight sum         71      68
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1442  0.0952
#>   std. dev.      0.0918   0.055
#>   weight sum         71      68
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1109  0.0665
#>   std. dev.      0.0656   0.037
#>   weight sum         71      68
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0604  0.0361
#>   std. dev.      0.0326  0.0231
#>   weight sum         71      68
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0794   0.064
#>   std. dev.      0.0433  0.0527
#>   weight sum         71      68
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0207  0.0182
#>   std. dev.      0.0098  0.0111
#>   weight sum         71      68
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0198  0.0122
#>   std. dev.      0.0137  0.0081
#>   weight sum         71      68
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0169  0.0103
#>   std. dev.      0.0117   0.007
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0095
#>   std. dev.      0.0078  0.0065
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0095
#>   std. dev.      0.0084  0.0055
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0105  0.0088
#>   std. dev.      0.0083  0.0054
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0091  0.0074
#>   std. dev.      0.0061   0.005
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0079
#>   std. dev.      0.0057  0.0059
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0087   0.007
#>   std. dev.      0.0072  0.0049
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087  0.0071
#>   std. dev.      0.0076  0.0055
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1095  0.0994
#>   std. dev.      0.0557  0.0717
#>   weight sum         71      68
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0058
#>   std. dev.      0.0063  0.0035
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1276  0.1152
#>   std. dev.      0.0632  0.0669
#>   weight sum         71      68
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1535  0.1165
#>   std. dev.      0.0896  0.0756
#>   weight sum         71      68
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2173  0.1406
#>   std. dev.      0.1306  0.1033
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3478261 
```
