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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0325  0.0235
#>   std. dev.      0.0264  0.0163
#>   weight sum         80      59
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.249  0.1651
#>   std. dev.      0.1221  0.1013
#>   weight sum         80      59
#>   precision      0.0041  0.0041
#> 
#> V11
#>   mean           0.2875  0.1767
#>   std. dev.      0.1129  0.1102
#>   weight sum         80      59
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.3008  0.1897
#>   std. dev.      0.1227  0.1355
#>   weight sum         80      59
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3159  0.2242
#>   std. dev.      0.1373  0.1454
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3266  0.2697
#>   std. dev.      0.1727  0.1694
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3497  0.3079
#>   std. dev.      0.2087  0.2286
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3933  0.3776
#>   std. dev.      0.2308  0.2626
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean            0.427  0.4221
#>   std. dev.      0.2577  0.3004
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.467  0.4551
#>   std. dev.      0.2689  0.2747
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5448   0.467
#>   std. dev.      0.2594  0.2647
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0421  0.0279
#>   std. dev.      0.0318  0.0192
#>   weight sum         80      59
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.6167  0.4989
#>   std. dev.      0.2573  0.2603
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6662   0.548
#>   std. dev.      0.2503  0.2547
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6664   0.597
#>   std. dev.      0.2417   0.269
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6599  0.6343
#>   std. dev.      0.2525  0.2588
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6668  0.6469
#>   std. dev.       0.246  0.2511
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6594   0.663
#>   std. dev.      0.2487  0.2578
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6935  0.6997
#>   std. dev.      0.2487  0.2414
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7083   0.695
#>   std. dev.      0.2761  0.2256
#>   weight sum         80      59
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7138  0.6662
#>   std. dev.      0.2667  0.2149
#>   weight sum         80      59
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6585  0.6196
#>   std. dev.      0.2373  0.2333
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0469  0.0358
#>   std. dev.       0.034  0.0269
#>   weight sum         80      59
#>   precision      0.0012  0.0012
#> 
#> V30
#>   mean           0.5916  0.5424
#>   std. dev.      0.2122  0.2219
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4857  0.4931
#>   std. dev.      0.2311  0.1936
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4305  0.4333
#>   std. dev.       0.214  0.2093
#>   weight sum         80      59
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3943  0.4255
#>   std. dev.      0.1934  0.2087
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3604  0.4229
#>   std. dev.      0.2043  0.2302
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean            0.344  0.4194
#>   std. dev.      0.2466  0.2479
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3163  0.4294
#>   std. dev.      0.2618   0.257
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3182  0.4043
#>   std. dev.      0.2433  0.2567
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3348  0.3486
#>   std. dev.      0.2136  0.2423
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3317  0.3125
#>   std. dev.      0.1779  0.2249
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0601  0.0402
#>   std. dev.      0.0375  0.0293
#>   weight sum         80      59
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean            0.291  0.3098
#>   std. dev.      0.1661  0.1981
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2853  0.2743
#>   std. dev.      0.1724  0.1793
#>   weight sum         80      59
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.2775  0.2393
#>   std. dev.      0.1627  0.1688
#>   weight sum         80      59
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2587  0.2014
#>   std. dev.      0.1384  0.1251
#>   weight sum         80      59
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2478  0.1621
#>   std. dev.      0.1468  0.0916
#>   weight sum         80      59
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean             0.24  0.1335
#>   std. dev.      0.1759    0.09
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1935  0.1168
#>   std. dev.      0.1538  0.0952
#>   weight sum         80      59
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1442  0.0968
#>   std. dev.      0.1009  0.0727
#>   weight sum         80      59
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean            0.107  0.0711
#>   std. dev.      0.0678  0.0516
#>   weight sum         80      59
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0615  0.0397
#>   std. dev.      0.0368  0.0334
#>   weight sum         80      59
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0808  0.0588
#>   std. dev.      0.0459  0.0461
#>   weight sum         80      59
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0219  0.0187
#>   std. dev.      0.0131  0.0137
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0193  0.0122
#>   std. dev.      0.0146  0.0087
#>   weight sum         80      59
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean            0.016  0.0107
#>   std. dev.      0.0107  0.0074
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0109    0.01
#>   std. dev.      0.0065  0.0067
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012  0.0089
#>   std. dev.      0.0082   0.005
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098  0.0081
#>   std. dev.      0.0082   0.005
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0086  0.0071
#>   std. dev.      0.0057  0.0045
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0079  0.0073
#>   std. dev.      0.0055  0.0053
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0088  0.0068
#>   std. dev.       0.007  0.0046
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0065
#>   std. dev.      0.0071  0.0048
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1084  0.0841
#>   std. dev.      0.0466  0.0482
#>   weight sum         80      59
#>   precision      0.0019  0.0019
#> 
#> V60
#>   mean           0.0071  0.0062
#>   std. dev.      0.0065  0.0034
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1305  0.1014
#>   std. dev.      0.0605  0.0547
#>   weight sum         80      59
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1459  0.1142
#>   std. dev.      0.0898  0.0757
#>   weight sum         80      59
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2114  0.1363
#>   std. dev.      0.1205  0.0896
#>   weight sum         80      59
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
