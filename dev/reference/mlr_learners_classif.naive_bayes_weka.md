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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0348  0.0214
#>   std. dev.      0.0297  0.0139
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2387  0.1666
#>   std. dev.      0.1318  0.1188
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean             0.28  0.1807
#>   std. dev.      0.1068  0.1178
#>   weight sum         70      69
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean            0.291  0.1953
#>   std. dev.      0.1057  0.1447
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.2934  0.2344
#>   std. dev.      0.1149  0.1455
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.2943   0.279
#>   std. dev.      0.1329  0.1769
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean            0.299  0.3172
#>   std. dev.      0.1647  0.2292
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3551  0.3821
#>   std. dev.      0.1855  0.2649
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.3973  0.4164
#>   std. dev.       0.218  0.2937
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4461  0.4488
#>   std. dev.      0.2331  0.2717
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5173   0.471
#>   std. dev.      0.2446  0.2605
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0448  0.0282
#>   std. dev.      0.0409  0.0242
#>   weight sum         70      69
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.5973  0.5055
#>   std. dev.      0.2524   0.269
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6555  0.5499
#>   std. dev.       0.265  0.2487
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6638  0.5731
#>   std. dev.      0.2509  0.2525
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6832  0.6215
#>   std. dev.      0.2589  0.2371
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7054  0.6712
#>   std. dev.      0.2372  0.2207
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7097  0.6912
#>   std. dev.      0.2303  0.2301
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7445  0.7172
#>   std. dev.      0.2072  0.2189
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7468   0.692
#>   std. dev.      0.2431  0.2145
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V28
#>   mean           0.7408  0.6652
#>   std. dev.      0.2423  0.1958
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6727  0.6275
#>   std. dev.      0.2382   0.225
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0483  0.0363
#>   std. dev.      0.0454  0.0281
#>   weight sum         70      69
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.6063  0.5733
#>   std. dev.       0.193  0.2311
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V31
#>   mean           0.4974  0.5261
#>   std. dev.      0.2247  0.2047
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4395  0.4522
#>   std. dev.      0.2176  0.2122
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4074  0.4413
#>   std. dev.      0.1954  0.2198
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3699  0.4625
#>   std. dev.       0.212   0.235
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3396   0.471
#>   std. dev.      0.2491  0.2401
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3313  0.4466
#>   std. dev.      0.2562  0.2449
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3244   0.389
#>   std. dev.      0.2348  0.2286
#>   weight sum         70      69
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3329  0.3307
#>   std. dev.      0.2054  0.2149
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3415   0.299
#>   std. dev.      0.1849  0.2211
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0631   0.043
#>   std. dev.       0.057  0.0317
#>   weight sum         70      69
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean            0.318  0.3187
#>   std. dev.      0.1626  0.2043
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2976  0.2811
#>   std. dev.       0.154  0.1793
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3055  0.2434
#>   std. dev.      0.1527   0.167
#>   weight sum         70      69
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2825   0.214
#>   std. dev.      0.1337  0.1389
#>   weight sum         70      69
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2452  0.1792
#>   std. dev.      0.1429   0.114
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2381  0.1479
#>   std. dev.      0.1723  0.1046
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1889  0.1248
#>   std. dev.      0.1396  0.1021
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1417  0.0933
#>   std. dev.      0.0816  0.0745
#>   weight sum         70      69
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1101  0.0668
#>   std. dev.      0.0635  0.0514
#>   weight sum         70      69
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0637  0.0369
#>   std. dev.      0.0346  0.0319
#>   weight sum         70      69
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0875  0.0658
#>   std. dev.      0.0607   0.048
#>   weight sum         70      69
#>   precision      0.0031  0.0031
#> 
#> V50
#>   mean           0.0225  0.0182
#>   std. dev.      0.0148  0.0135
#>   weight sum         70      69
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0166  0.0131
#>   std. dev.      0.0089  0.0088
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0148  0.0107
#>   std. dev.      0.0092  0.0071
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0089
#>   std. dev.      0.0078  0.0053
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0115  0.0093
#>   std. dev.      0.0077  0.0054
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean            0.009  0.0086
#>   std. dev.      0.0078  0.0052
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0087  0.0078
#>   std. dev.      0.0066  0.0049
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0082
#>   std. dev.      0.0061   0.006
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0088  0.0066
#>   std. dev.      0.0073  0.0048
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0078  0.0066
#>   std. dev.       0.006  0.0047
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1114  0.1038
#>   std. dev.      0.0501  0.0699
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0061  0.0059
#>   std. dev.      0.0045  0.0035
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1251  0.1212
#>   std. dev.      0.0456  0.0683
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1403   0.124
#>   std. dev.      0.0768  0.0882
#>   weight sum         70      69
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2049  0.1442
#>   std. dev.      0.1173  0.1082
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
