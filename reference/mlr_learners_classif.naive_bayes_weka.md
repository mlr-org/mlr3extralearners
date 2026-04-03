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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0368  0.0226
#>   std. dev.      0.0304   0.012
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.259  0.1658
#>   std. dev.      0.1394   0.123
#>   weight sum         77      62
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2952  0.1839
#>   std. dev.      0.1194  0.1257
#>   weight sum         77      62
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.3023   0.196
#>   std. dev.      0.1247   0.146
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3201  0.2371
#>   std. dev.      0.1344  0.1457
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> V14
#>   mean           0.3347  0.2851
#>   std. dev.      0.1659  0.1812
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean            0.344  0.3158
#>   std. dev.      0.1906  0.2261
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean            0.382  0.3807
#>   std. dev.      0.2001  0.2631
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4019  0.4251
#>   std. dev.       0.231  0.2926
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4288  0.4495
#>   std. dev.      0.2496  0.2732
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5117  0.4704
#>   std. dev.      0.2522  0.2562
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean            0.049  0.0318
#>   std. dev.      0.0404  0.0269
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6041  0.5159
#>   std. dev.      0.2577   0.257
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6566  0.5611
#>   std. dev.      0.2598  0.2434
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.649   0.582
#>   std. dev.      0.2482  0.2545
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6445  0.6107
#>   std. dev.      0.2558  0.2455
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6579  0.6446
#>   std. dev.      0.2445  0.2328
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6578    0.67
#>   std. dev.      0.2405  0.2382
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7071  0.7107
#>   std. dev.      0.2294  0.2302
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7258  0.6939
#>   std. dev.      0.2553  0.2291
#>   weight sum         77      62
#>   precision      0.0078  0.0078
#> 
#> V28
#>   mean           0.7221  0.6534
#>   std. dev.      0.2336  0.2184
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V29
#>   mean           0.6555   0.608
#>   std. dev.      0.2311  0.2383
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0529  0.0363
#>   std. dev.      0.0449   0.031
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5965  0.5663
#>   std. dev.      0.2126  0.2429
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4898  0.5256
#>   std. dev.      0.2339  0.1976
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean             0.44  0.4502
#>   std. dev.       0.217  0.2062
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean            0.404  0.4262
#>   std. dev.      0.1938  0.2183
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V34
#>   mean           0.3833  0.4326
#>   std. dev.      0.2049  0.2567
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3622   0.447
#>   std. dev.      0.2624   0.267
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3568  0.4636
#>   std. dev.      0.2657  0.2534
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3526  0.4298
#>   std. dev.      0.2457  0.2289
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3611  0.3479
#>   std. dev.      0.2196  0.2057
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V39
#>   mean           0.3586  0.3035
#>   std. dev.      0.1891  0.1966
#>   weight sum         77      62
#>   precision      0.0061  0.0061
#> 
#> V4
#>   mean           0.0678  0.0435
#>   std. dev.      0.0569   0.033
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3124  0.3143
#>   std. dev.      0.1515  0.1893
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V41
#>   mean           0.2998  0.2924
#>   std. dev.      0.1585  0.1782
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3133  0.2505
#>   std. dev.      0.1757  0.1644
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2958  0.2025
#>   std. dev.      0.1482  0.1311
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2675  0.1689
#>   std. dev.      0.1549  0.1155
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2755  0.1333
#>   std. dev.      0.1846  0.0932
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2244  0.1083
#>   std. dev.      0.1609  0.0811
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1531  0.0902
#>   std. dev.      0.1007  0.0571
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1137  0.0671
#>   std. dev.      0.0711   0.041
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0657   0.036
#>   std. dev.      0.0382  0.0238
#>   weight sum         77      62
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0886  0.0631
#>   std. dev.      0.0605  0.0486
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0244  0.0167
#>   std. dev.      0.0153  0.0097
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0208  0.0117
#>   std. dev.      0.0151  0.0085
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0169  0.0104
#>   std. dev.      0.0118  0.0076
#>   weight sum         77      62
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0123  0.0096
#>   std. dev.      0.0079  0.0061
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0137  0.0095
#>   std. dev.      0.0087  0.0057
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.011  0.0089
#>   std. dev.       0.009  0.0052
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0077
#>   std. dev.      0.0069   0.005
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0084   0.008
#>   std. dev.      0.0062  0.0058
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0101  0.0072
#>   std. dev.      0.0084  0.0054
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0092  0.0074
#>   std. dev.      0.0072  0.0055
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1174  0.0985
#>   std. dev.      0.0532  0.0686
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0073  0.0054
#>   std. dev.      0.0064  0.0033
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1339  0.1144
#>   std. dev.       0.063  0.0643
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1588  0.1205
#>   std. dev.      0.0973  0.0847
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2286   0.145
#>   std. dev.      0.1336  0.1052
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
