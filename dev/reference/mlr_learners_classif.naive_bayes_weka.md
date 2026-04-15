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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean            0.034  0.0218
#>   std. dev.      0.0254  0.0135
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2557  0.1592
#>   std. dev.      0.1399  0.1208
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2903  0.1781
#>   std. dev.      0.1281  0.1207
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3043  0.1972
#>   std. dev.      0.1236  0.1471
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3167  0.2353
#>   std. dev.      0.1274  0.1487
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3178  0.2803
#>   std. dev.      0.1501  0.1797
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3362  0.3134
#>   std. dev.      0.1898  0.2292
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3969  0.3843
#>   std. dev.      0.2103  0.2687
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4331  0.4327
#>   std. dev.      0.2474  0.2978
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean            0.471  0.4647
#>   std. dev.      0.2613  0.2655
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5436  0.4677
#>   std. dev.      0.2656  0.2561
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0431  0.0309
#>   std. dev.       0.035  0.0254
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6021  0.4989
#>   std. dev.      0.2729  0.2537
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6402  0.5523
#>   std. dev.      0.2727  0.2519
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V22
#>   mean           0.6521  0.5778
#>   std. dev.      0.2607  0.2513
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6741  0.6128
#>   std. dev.      0.2589  0.2413
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6866  0.6709
#>   std. dev.      0.2458  0.2278
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6732  0.6901
#>   std. dev.      0.2411  0.2389
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6853  0.7066
#>   std. dev.      0.2415  0.2169
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6898  0.6915
#>   std. dev.      0.2728  0.1928
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.6869  0.6677
#>   std. dev.        0.27  0.2124
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6258  0.6335
#>   std. dev.      0.2551  0.2501
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0482  0.0371
#>   std. dev.      0.0378  0.0291
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5768  0.5731
#>   std. dev.      0.2191  0.2483
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4924  0.5293
#>   std. dev.      0.2289  0.2104
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4426  0.4719
#>   std. dev.      0.2134  0.2051
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4117  0.4471
#>   std. dev.      0.1981  0.2159
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3852  0.4367
#>   std. dev.      0.2213  0.2528
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3559  0.4405
#>   std. dev.       0.243  0.2616
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.327  0.4428
#>   std. dev.       0.244  0.2533
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3319  0.4099
#>   std. dev.      0.2226  0.2357
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.337  0.3323
#>   std. dev.      0.1989  0.2205
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3288  0.2887
#>   std. dev.      0.1734  0.2132
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0665  0.0409
#>   std. dev.       0.044  0.0318
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3077  0.2934
#>   std. dev.      0.1623  0.1891
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3054  0.2656
#>   std. dev.      0.1714   0.169
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.3084  0.2443
#>   std. dev.      0.1693  0.1647
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2753  0.2168
#>   std. dev.      0.1431  0.1366
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2322  0.1888
#>   std. dev.      0.1433  0.1165
#>   weight sum         73      66
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2291  0.1445
#>   std. dev.      0.1646  0.1016
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1956  0.1078
#>   std. dev.      0.1553  0.0839
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1473  0.0883
#>   std. dev.      0.0984  0.0567
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1137  0.0676
#>   std. dev.      0.0699  0.0419
#>   weight sum         73      66
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean            0.065  0.0365
#>   std. dev.      0.0379  0.0252
#>   weight sum         73      66
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0855  0.0597
#>   std. dev.      0.0556  0.0477
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean            0.024  0.0164
#>   std. dev.      0.0152  0.0099
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0197  0.0112
#>   std. dev.       0.015  0.0074
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0094
#>   std. dev.      0.0112   0.006
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0122  0.0092
#>   std. dev.      0.0079  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0135  0.0096
#>   std. dev.      0.0089  0.0049
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0083
#>   std. dev.      0.0083  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0101  0.0077
#>   std. dev.      0.0068  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079   0.008
#>   std. dev.      0.0062  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0099  0.0064
#>   std. dev.      0.0081  0.0046
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0093  0.0073
#>   std. dev.      0.0071  0.0047
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1149   0.094
#>   std. dev.       0.053  0.0679
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007   0.006
#>   std. dev.      0.0062  0.0036
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1356  0.1112
#>   std. dev.      0.0581  0.0652
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1614  0.1197
#>   std. dev.      0.0858  0.0854
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2194  0.1429
#>   std. dev.      0.1246  0.1075
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
