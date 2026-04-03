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
#>                 (0.51)  (0.49)
#> ===============================
#> V1
#>   mean            0.031  0.0221
#>   std. dev.       0.023  0.0152
#>   weight sum         71      68
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2397  0.1595
#>   std. dev.      0.1277  0.1202
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2813  0.1765
#>   std. dev.      0.1207  0.1207
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3022  0.1975
#>   std. dev.      0.1208  0.1415
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3086  0.2291
#>   std. dev.      0.1247  0.1433
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3065  0.2717
#>   std. dev.      0.1467  0.1666
#>   weight sum         71      68
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3234  0.3086
#>   std. dev.      0.1914   0.215
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3809  0.3729
#>   std. dev.      0.2164   0.253
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean            0.421  0.4155
#>   std. dev.      0.2431  0.2853
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4664  0.4441
#>   std. dev.       0.262  0.2621
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5434  0.4523
#>   std. dev.       0.265  0.2509
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0435   0.028
#>   std. dev.      0.0387   0.019
#>   weight sum         71      68
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6038  0.4831
#>   std. dev.       0.265  0.2496
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6508  0.5238
#>   std. dev.      0.2642  0.2505
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6769  0.5562
#>   std. dev.      0.2515  0.2611
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6956  0.6162
#>   std. dev.      0.2405  0.2229
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V24
#>   mean             0.71  0.6466
#>   std. dev.      0.2192  0.2299
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6844  0.6686
#>   std. dev.      0.2256  0.2481
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6886  0.6887
#>   std. dev.      0.2374  0.2361
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7052  0.6845
#>   std. dev.      0.2655  0.2217
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7052  0.6688
#>   std. dev.      0.2663  0.2047
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6602  0.6194
#>   std. dev.      0.2388  0.2273
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V3
#>   mean           0.0493  0.0354
#>   std. dev.      0.0451  0.0272
#>   weight sum         71      68
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5826  0.5649
#>   std. dev.      0.2153  0.2231
#>   weight sum         71      68
#>   precision      0.0064  0.0064
#> 
#> V31
#>   mean           0.4843  0.5191
#>   std. dev.      0.2261  0.2066
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4307  0.4362
#>   std. dev.      0.2086  0.2129
#>   weight sum         71      68
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3993  0.4114
#>   std. dev.       0.191  0.2137
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3678  0.4167
#>   std. dev.      0.1889  0.2499
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V35
#>   mean           0.3374  0.4425
#>   std. dev.      0.2275  0.2567
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3171  0.4488
#>   std. dev.      0.2439  0.2564
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3217  0.3945
#>   std. dev.      0.2198  0.2355
#>   weight sum         71      68
#>   precision      0.0064  0.0064
#> 
#> V38
#>   mean            0.321  0.3245
#>   std. dev.      0.1867  0.2134
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3194  0.2909
#>   std. dev.      0.1734  0.2123
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0617  0.0396
#>   std. dev.      0.0577  0.0305
#>   weight sum         71      68
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3094  0.3076
#>   std. dev.      0.1629  0.1983
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3032  0.2887
#>   std. dev.      0.1679  0.1806
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2977  0.2587
#>   std. dev.       0.172  0.1663
#>   weight sum         71      68
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2739  0.2163
#>   std. dev.      0.1382  0.1258
#>   weight sum         71      68
#>   precision      0.0045  0.0045
#> 
#> V44
#>   mean           0.2388  0.1785
#>   std. dev.      0.1423  0.0867
#>   weight sum         71      68
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2387  0.1438
#>   std. dev.      0.1672   0.087
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1967  0.1139
#>   std. dev.      0.1442  0.0926
#>   weight sum         71      68
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1481  0.0947
#>   std. dev.      0.0936  0.0681
#>   weight sum         71      68
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1099  0.0699
#>   std. dev.      0.0654  0.0489
#>   weight sum         71      68
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0643  0.0391
#>   std. dev.      0.0375   0.032
#>   weight sum         71      68
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0825  0.0575
#>   std. dev.      0.0626  0.0439
#>   weight sum         71      68
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.023  0.0188
#>   std. dev.      0.0144  0.0136
#>   weight sum         71      68
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0176  0.0124
#>   std. dev.       0.012  0.0085
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0157  0.0101
#>   std. dev.      0.0097  0.0071
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0112  0.0093
#>   std. dev.      0.0068  0.0058
#>   weight sum         71      68
#>   precision      0.0002  0.0002
#> 
#> V54
#>   mean           0.0118  0.0094
#>   std. dev.      0.0075  0.0049
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0089  0.0082
#>   std. dev.       0.007  0.0048
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V56
#>   mean           0.0084  0.0071
#>   std. dev.      0.0053  0.0049
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0072  0.0078
#>   std. dev.      0.0051  0.0056
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean            0.009  0.0065
#>   std. dev.      0.0071  0.0048
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.008  0.0073
#>   std. dev.      0.0055  0.0053
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1139  0.0894
#>   std. dev.      0.0531  0.0582
#>   weight sum         71      68
#>   precision      0.0021  0.0021
#> 
#> V60
#>   mean           0.0062  0.0061
#>   std. dev.      0.0043  0.0037
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1276  0.1126
#>   std. dev.      0.0501  0.0605
#>   weight sum         71      68
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean            0.142  0.1194
#>   std. dev.      0.0737  0.0823
#>   weight sum         71      68
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2007  0.1364
#>   std. dev.       0.104  0.1026
#>   weight sum         71      68
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
