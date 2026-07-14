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

- [`LearnerClassifNaiveBayesWeka$new()`](#method-LearnerClassifNaiveBayesWeka-initialize)

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

### `LearnerClassifNaiveBayesWeka$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesWeka$new()

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesWeka$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifNaiveBayesWeka$clone()`

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
#>   mean           0.0363  0.0213
#>   std. dev.       0.026  0.0148
#>   weight sum         73      66
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2635  0.1627
#>   std. dev.       0.139  0.1203
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3051  0.1742
#>   std. dev.       0.127  0.1254
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3193  0.1774
#>   std. dev.      0.1202  0.1432
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3309  0.2132
#>   std. dev.      0.1369   0.129
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3343  0.2584
#>   std. dev.      0.1733  0.1583
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3354   0.301
#>   std. dev.      0.1973   0.211
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3739  0.3808
#>   std. dev.      0.2118  0.2607
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V17
#>   mean            0.413  0.4371
#>   std. dev.      0.2327  0.2962
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4532  0.4619
#>   std. dev.      0.2481   0.277
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5381  0.4732
#>   std. dev.      0.2507  0.2645
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean            0.045  0.0267
#>   std. dev.      0.0339  0.0177
#>   weight sum         73      66
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6136  0.4959
#>   std. dev.      0.2528   0.267
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6722  0.5511
#>   std. dev.      0.2507    0.25
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6868  0.5817
#>   std. dev.      0.2408  0.2527
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6869  0.6159
#>   std. dev.      0.2495  0.2425
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6972  0.6748
#>   std. dev.      0.2418  0.2227
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6871  0.7011
#>   std. dev.      0.2349  0.2317
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7094  0.7113
#>   std. dev.      0.2327  0.2318
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7101  0.7013
#>   std. dev.      0.2677   0.205
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.6903  0.6802
#>   std. dev.      0.2659  0.2101
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6317  0.6318
#>   std. dev.       0.251  0.2398
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean             0.05  0.0322
#>   std. dev.      0.0363  0.0241
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5638   0.565
#>   std. dev.      0.2247  0.2392
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4847  0.5087
#>   std. dev.      0.2247  0.2137
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4225  0.4363
#>   std. dev.      0.2092  0.2157
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3866   0.423
#>   std. dev.      0.1917  0.2203
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V34
#>   mean           0.3596  0.4342
#>   std. dev.      0.2047  0.2487
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3243  0.4444
#>   std. dev.      0.2356  0.2584
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3011  0.4448
#>   std. dev.       0.224  0.2567
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2939  0.4076
#>   std. dev.      0.2042  0.2392
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3108  0.3287
#>   std. dev.      0.1805  0.2109
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V39
#>   mean           0.3349  0.2896
#>   std. dev.      0.1778  0.1969
#>   weight sum         73      66
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0631  0.0395
#>   std. dev.      0.0438  0.0311
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3045  0.2855
#>   std. dev.      0.1642  0.1784
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2761  0.2567
#>   std. dev.      0.1692  0.1577
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean           0.2905  0.2233
#>   std. dev.      0.1712  0.1442
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2793  0.1933
#>   std. dev.      0.1373   0.113
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2419   0.171
#>   std. dev.       0.139  0.1132
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean             0.24  0.1376
#>   std. dev.      0.1711  0.0914
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1989  0.1064
#>   std. dev.      0.1557  0.0788
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1456  0.0862
#>   std. dev.      0.1001  0.0572
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1117  0.0648
#>   std. dev.      0.0694  0.0425
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0671  0.0363
#>   std. dev.      0.0373  0.0263
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0882  0.0621
#>   std. dev.      0.0545  0.0486
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0244   0.016
#>   std. dev.      0.0157   0.009
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0206  0.0118
#>   std. dev.      0.0148  0.0077
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0158  0.0106
#>   std. dev.      0.0111  0.0072
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0096
#>   std. dev.      0.0079  0.0059
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0091
#>   std. dev.      0.0089  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0086
#>   std. dev.      0.0089  0.0052
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0073
#>   std. dev.       0.006   0.005
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0077
#>   std. dev.      0.0061  0.0061
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0101  0.0062
#>   std. dev.      0.0084  0.0045
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0067
#>   std. dev.      0.0073  0.0049
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.119  0.0957
#>   std. dev.      0.0579  0.0648
#>   weight sum         73      66
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0068  0.0054
#>   std. dev.      0.0059  0.0034
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1321  0.1095
#>   std. dev.      0.0565  0.0626
#>   weight sum         73      66
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean            0.157  0.1159
#>   std. dev.      0.0748   0.083
#>   weight sum         73      66
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2208  0.1439
#>   std. dev.      0.1061  0.1061
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
