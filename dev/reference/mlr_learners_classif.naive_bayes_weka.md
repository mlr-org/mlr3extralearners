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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0364  0.0233
#>   std. dev.      0.0289  0.0156
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2532   0.159
#>   std. dev.      0.1383  0.1156
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2855  0.1765
#>   std. dev.      0.1213  0.1155
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2897  0.1907
#>   std. dev.      0.1217  0.1264
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3014  0.2237
#>   std. dev.      0.1281  0.1351
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3073  0.2758
#>   std. dev.       0.148  0.1675
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3279  0.3119
#>   std. dev.      0.1821  0.2178
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V16
#>   mean           0.3783  0.3787
#>   std. dev.       0.209  0.2553
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4142  0.4266
#>   std. dev.      0.2321  0.2931
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4501  0.4607
#>   std. dev.       0.252  0.2664
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5257   0.476
#>   std. dev.      0.2588  0.2509
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0462  0.0303
#>   std. dev.      0.0381  0.0249
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6033  0.5109
#>   std. dev.      0.2652  0.2514
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6478   0.546
#>   std. dev.       0.254  0.2367
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6457  0.5653
#>   std. dev.       0.244  0.2608
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6539  0.6136
#>   std. dev.      0.2557  0.2342
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6735  0.6661
#>   std. dev.      0.2503  0.2293
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6669  0.6644
#>   std. dev.      0.2559  0.2522
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6952  0.6648
#>   std. dev.      0.2472  0.2354
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7096  0.6701
#>   std. dev.       0.265  0.2112
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7125  0.6644
#>   std. dev.       0.252  0.2086
#>   weight sum         76      63
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6528   0.632
#>   std. dev.      0.2437  0.2358
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0537  0.0362
#>   std. dev.      0.0468  0.0291
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5958  0.5849
#>   std. dev.      0.2105  0.2359
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4991  0.5351
#>   std. dev.      0.2226  0.2058
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4381  0.4475
#>   std. dev.       0.204  0.2222
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4033  0.4511
#>   std. dev.      0.1805   0.222
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3714  0.4494
#>   std. dev.      0.2019  0.2626
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3478  0.4479
#>   std. dev.      0.2378  0.2616
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean             0.31  0.4563
#>   std. dev.      0.2482  0.2489
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3093  0.4124
#>   std. dev.      0.2241  0.2243
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3271  0.3452
#>   std. dev.      0.2096  0.1941
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean             0.32  0.3062
#>   std. dev.      0.1818  0.1915
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean            0.069  0.0436
#>   std. dev.      0.0594  0.0328
#>   weight sum         76      63
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.2935  0.3156
#>   std. dev.      0.1587  0.1781
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2951  0.2834
#>   std. dev.      0.1633  0.1605
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V42
#>   mean           0.2935  0.2503
#>   std. dev.      0.1701  0.1548
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2629  0.2061
#>   std. dev.       0.137  0.1149
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2394   0.168
#>   std. dev.      0.1312  0.0808
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2355   0.139
#>   std. dev.      0.1717  0.0822
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.201  0.1128
#>   std. dev.      0.1553  0.0812
#>   weight sum         76      63
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1456  0.0904
#>   std. dev.      0.0941  0.0591
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1085  0.0669
#>   std. dev.      0.0647  0.0444
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0608  0.0371
#>   std. dev.      0.0322  0.0276
#>   weight sum         76      63
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0846  0.0623
#>   std. dev.      0.0635  0.0517
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.022  0.0171
#>   std. dev.      0.0129  0.0112
#>   weight sum         76      63
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0188  0.0116
#>   std. dev.      0.0131  0.0082
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0165  0.0106
#>   std. dev.      0.0107  0.0069
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0123  0.0095
#>   std. dev.      0.0079  0.0062
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0107
#>   std. dev.      0.0088  0.0053
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0098   0.009
#>   std. dev.      0.0084  0.0053
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean            0.009  0.0069
#>   std. dev.      0.0067   0.004
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0077
#>   std. dev.      0.0062  0.0054
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0089   0.006
#>   std. dev.      0.0072  0.0043
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087  0.0071
#>   std. dev.      0.0074  0.0048
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1075  0.0972
#>   std. dev.      0.0482  0.0724
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007  0.0058
#>   std. dev.      0.0065  0.0033
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1259  0.1176
#>   std. dev.      0.0578  0.0701
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean            0.148  0.1205
#>   std. dev.      0.0891  0.0835
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2174  0.1405
#>   std. dev.      0.1235  0.0993
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
