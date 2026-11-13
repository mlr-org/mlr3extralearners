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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0352  0.0212
#>   std. dev.      0.0275   0.013
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2483  0.1568
#>   std. dev.       0.134   0.108
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2875  0.1684
#>   std. dev.       0.122  0.1136
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2953  0.1878
#>   std. dev.      0.1106   0.137
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.2975  0.2271
#>   std. dev.      0.1162  0.1332
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.2919  0.2652
#>   std. dev.      0.1374  0.1554
#>   weight sum         74      65
#>   precision      0.0055  0.0055
#> 
#> V15
#>   mean           0.2973    0.31
#>   std. dev.      0.1732  0.2059
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V16
#>   mean           0.3462  0.3786
#>   std. dev.      0.1952  0.2438
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.3737  0.4106
#>   std. dev.      0.2067  0.2876
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4151  0.4484
#>   std. dev.      0.2245  0.2693
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5042  0.4791
#>   std. dev.      0.2412  0.2678
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.048  0.0306
#>   std. dev.      0.0392  0.0206
#>   weight sum         74      65
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.5886  0.5205
#>   std. dev.       0.248  0.2681
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6516  0.5573
#>   std. dev.      0.2499  0.2457
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6767  0.5772
#>   std. dev.      0.2373  0.2543
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6983  0.6092
#>   std. dev.       0.231  0.2382
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7285  0.6549
#>   std. dev.      0.2102  0.2151
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V25
#>   mean            0.716  0.6666
#>   std. dev.      0.2183    0.23
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7406  0.6906
#>   std. dev.      0.2084   0.233
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V27
#>   mean           0.7633  0.6887
#>   std. dev.      0.2344  0.2153
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7614  0.6741
#>   std. dev.      0.2316  0.2022
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6985   0.624
#>   std. dev.      0.2107  0.2245
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V3
#>   mean           0.0517  0.0372
#>   std. dev.      0.0461  0.0276
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.6255  0.5557
#>   std. dev.      0.1952  0.2378
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.5286  0.5039
#>   std. dev.      0.2226  0.1982
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4538   0.417
#>   std. dev.      0.2254  0.1991
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3986  0.4057
#>   std. dev.      0.2105  0.1997
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3604  0.4296
#>   std. dev.      0.2101  0.2371
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3315  0.4402
#>   std. dev.      0.2379  0.2513
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3005  0.4382
#>   std. dev.      0.2345  0.2507
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2982   0.387
#>   std. dev.      0.2164   0.225
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean            0.318  0.3207
#>   std. dev.      0.1963  0.1933
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3377  0.2968
#>   std. dev.      0.1857  0.1804
#>   weight sum         74      65
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0624  0.0418
#>   std. dev.      0.0585  0.0265
#>   weight sum         74      65
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean            0.317  0.3035
#>   std. dev.      0.1652  0.1666
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean            0.302  0.2712
#>   std. dev.      0.1656  0.1545
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2984   0.243
#>   std. dev.      0.1742  0.1497
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2752  0.2048
#>   std. dev.      0.1375  0.1246
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2512  0.1658
#>   std. dev.      0.1358  0.1081
#>   weight sum         74      65
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2526  0.1303
#>   std. dev.      0.1722   0.083
#>   weight sum         74      65
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2092  0.1045
#>   std. dev.      0.1481  0.0804
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1547  0.0876
#>   std. dev.      0.0853  0.0564
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1139  0.0639
#>   std. dev.      0.0588   0.038
#>   weight sum         74      65
#>   precision       0.002   0.002
#> 
#> V49
#>   mean           0.0676  0.0341
#>   std. dev.      0.0344  0.0238
#>   weight sum         74      65
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0838  0.0631
#>   std. dev.      0.0631  0.0435
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0243  0.0175
#>   std. dev.      0.0151  0.0121
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0188  0.0123
#>   std. dev.      0.0112  0.0087
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean            0.015  0.0107
#>   std. dev.      0.0079  0.0079
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0112  0.0099
#>   std. dev.      0.0068  0.0062
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0118  0.0098
#>   std. dev.      0.0084  0.0056
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093   0.009
#>   std. dev.      0.0081   0.005
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0084  0.0079
#>   std. dev.      0.0058  0.0052
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0083
#>   std. dev.      0.0055  0.0059
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0083  0.0066
#>   std. dev.      0.0064  0.0048
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0082  0.0072
#>   std. dev.      0.0064  0.0047
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1108  0.0981
#>   std. dev.      0.0485  0.0668
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0066  0.0065
#>   std. dev.      0.0049  0.0035
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1271  0.1076
#>   std. dev.      0.0552  0.0638
#>   weight sum         74      65
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1526  0.1139
#>   std. dev.      0.0826  0.0754
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2129  0.1352
#>   std. dev.      0.1059  0.0946
#>   weight sum         74      65
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
