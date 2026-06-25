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
#>   mean           0.0338  0.0216
#>   std. dev.      0.0253  0.0123
#>   weight sum         72      67
#>   precision       0.001   0.001
#> 
#> V10
#>   mean            0.259  0.1435
#>   std. dev.      0.1423  0.1011
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2947  0.1614
#>   std. dev.      0.1289  0.1049
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3039   0.176
#>   std. dev.      0.1256  0.1242
#>   weight sum         72      67
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3112  0.2124
#>   std. dev.      0.1283  0.1322
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3183  0.2607
#>   std. dev.      0.1425  0.1568
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3418  0.2899
#>   std. dev.      0.1824  0.1993
#>   weight sum         72      67
#>   precision      0.0062  0.0062
#> 
#> V16
#>   mean           0.3991  0.3552
#>   std. dev.      0.2107  0.2441
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean            0.433  0.3943
#>   std. dev.      0.2404  0.2721
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4743  0.4421
#>   std. dev.      0.2535   0.255
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5536  0.4771
#>   std. dev.      0.2465  0.2515
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V2
#>   mean            0.047  0.0272
#>   std. dev.      0.0384  0.0198
#>   weight sum         72      67
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6408  0.5195
#>   std. dev.      0.2457  0.2595
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6882  0.5766
#>   std. dev.      0.2424  0.2468
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6657  0.6021
#>   std. dev.       0.246  0.2528
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6635  0.6355
#>   std. dev.      0.2758  0.2503
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.691  0.6808
#>   std. dev.      0.2673  0.2261
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6875  0.6933
#>   std. dev.      0.2507  0.2415
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7148  0.7232
#>   std. dev.      0.2356  0.2178
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7205  0.7063
#>   std. dev.      0.2652  0.2185
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7111  0.6637
#>   std. dev.       0.259  0.2103
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6473  0.6097
#>   std. dev.      0.2465  0.2398
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0538   0.033
#>   std. dev.      0.0476  0.0257
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5767    0.55
#>   std. dev.      0.2058  0.2397
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4624  0.5043
#>   std. dev.      0.2036  0.1957
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.3992  0.4399
#>   std. dev.      0.1892  0.2063
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3701  0.4274
#>   std. dev.      0.1843  0.2053
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3383  0.4289
#>   std. dev.      0.2001  0.2364
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3085  0.4337
#>   std. dev.      0.2273  0.2575
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2896  0.4378
#>   std. dev.      0.2274  0.2549
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2991  0.3986
#>   std. dev.      0.2131  0.2326
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3194  0.3476
#>   std. dev.      0.2072  0.2185
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3203  0.3177
#>   std. dev.       0.193  0.2123
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0648  0.0412
#>   std. dev.      0.0613  0.0293
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3018  0.3121
#>   std. dev.      0.1608  0.1973
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2837  0.2755
#>   std. dev.      0.1613  0.1788
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2895  0.2364
#>   std. dev.      0.1536   0.167
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V43
#>   mean           0.2612  0.2086
#>   std. dev.      0.1258  0.1366
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2353  0.1739
#>   std. dev.      0.1359  0.1193
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2309  0.1344
#>   std. dev.      0.1629  0.0996
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1843  0.1068
#>   std. dev.      0.1296  0.0852
#>   weight sum         72      67
#>   precision      0.0045  0.0045
#> 
#> V47
#>   mean             0.14  0.0864
#>   std. dev.      0.0829  0.0571
#>   weight sum         72      67
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1099  0.0629
#>   std. dev.      0.0624  0.0385
#>   weight sum         72      67
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0629  0.0329
#>   std. dev.       0.035  0.0214
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0875  0.0614
#>   std. dev.      0.0651  0.0465
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0217  0.0175
#>   std. dev.       0.013  0.0117
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0117
#>   std. dev.      0.0121  0.0087
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0164  0.0103
#>   std. dev.        0.01  0.0067
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0123  0.0101
#>   std. dev.      0.0076  0.0064
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0099
#>   std. dev.      0.0084  0.0054
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0082
#>   std. dev.      0.0075   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0077
#>   std. dev.      0.0063  0.0048
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0076  0.0074
#>   std. dev.      0.0053  0.0052
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0061
#>   std. dev.      0.0065  0.0044
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0084  0.0064
#>   std. dev.      0.0067  0.0043
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1125  0.0913
#>   std. dev.      0.0549  0.0636
#>   weight sum         72      67
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0066  0.0057
#>   std. dev.      0.0049  0.0035
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1252  0.1075
#>   std. dev.      0.0544  0.0595
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1488   0.108
#>   std. dev.      0.0848  0.0729
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean            0.223  0.1275
#>   std. dev.      0.1268  0.0866
#>   weight sum         72      67
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
