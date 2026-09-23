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
#>   mean           0.0334   0.024
#>   std. dev.       0.028   0.016
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2618  0.1713
#>   std. dev.      0.1434  0.1128
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2976    0.18
#>   std. dev.      0.1377  0.1081
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3069  0.1876
#>   std. dev.      0.1344  0.1213
#>   weight sum         72      67
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3166  0.2263
#>   std. dev.      0.1403  0.1325
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3189  0.2748
#>   std. dev.      0.1673  0.1723
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3217  0.3179
#>   std. dev.      0.1822  0.2298
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3626  0.3889
#>   std. dev.      0.2038  0.2598
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.3993  0.4264
#>   std. dev.      0.2362  0.3031
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4378  0.4553
#>   std. dev.      0.2504  0.2789
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5158  0.4664
#>   std. dev.      0.2446  0.2579
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0433   0.031
#>   std. dev.      0.0374  0.0253
#>   weight sum         72      67
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6043  0.4918
#>   std. dev.      0.2422  0.2605
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean            0.665  0.5415
#>   std. dev.      0.2454  0.2426
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V22
#>   mean           0.6623  0.5775
#>   std. dev.      0.2373  0.2606
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6563  0.6098
#>   std. dev.      0.2546  0.2438
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6621  0.6458
#>   std. dev.      0.2508  0.2352
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6556  0.6543
#>   std. dev.      0.2419  0.2521
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6936  0.6837
#>   std. dev.      0.2422  0.2258
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7108  0.6879
#>   std. dev.      0.2722  0.2049
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7233  0.6638
#>   std. dev.      0.2598  0.2166
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean            0.673  0.6207
#>   std. dev.      0.2361  0.2424
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0513  0.0367
#>   std. dev.      0.0459  0.0298
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5902  0.5729
#>   std. dev.      0.2079  0.2306
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.476  0.5273
#>   std. dev.      0.2181  0.2033
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4207  0.4407
#>   std. dev.      0.1993  0.2216
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3947  0.4336
#>   std. dev.      0.1841  0.2217
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3569   0.437
#>   std. dev.      0.2007  0.2583
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3164  0.4577
#>   std. dev.      0.2389  0.2593
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3084  0.4704
#>   std. dev.      0.2397   0.259
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3166  0.4241
#>   std. dev.      0.2131  0.2449
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3422  0.3632
#>   std. dev.      0.1916  0.2269
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3497  0.3193
#>   std. dev.      0.1817  0.2218
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0654   0.041
#>   std. dev.      0.0565  0.0326
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3085  0.3305
#>   std. dev.      0.1668  0.2007
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2853  0.2989
#>   std. dev.      0.1631  0.1823
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2941   0.267
#>   std. dev.      0.1628  0.1623
#>   weight sum         72      67
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean            0.273  0.2237
#>   std. dev.      0.1416  0.1286
#>   weight sum         72      67
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2492   0.178
#>   std. dev.      0.1459  0.1176
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2458   0.148
#>   std. dev.      0.1728  0.1023
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1948  0.1272
#>   std. dev.      0.1484  0.0886
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1486  0.0977
#>   std. dev.      0.1011   0.064
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1157  0.0725
#>   std. dev.      0.0714  0.0476
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean            0.066  0.0393
#>   std. dev.      0.0385  0.0288
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean            0.085  0.0615
#>   std. dev.      0.0585  0.0512
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0228  0.0184
#>   std. dev.      0.0137  0.0117
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0201  0.0126
#>   std. dev.      0.0155  0.0084
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0155  0.0107
#>   std. dev.      0.0112  0.0069
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0098
#>   std. dev.      0.0077  0.0065
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0128    0.01
#>   std. dev.      0.0088  0.0054
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099   0.008
#>   std. dev.      0.0078  0.0045
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0067
#>   std. dev.      0.0063  0.0042
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0072
#>   std. dev.      0.0052  0.0049
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0083  0.0066
#>   std. dev.      0.0066  0.0042
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0081  0.0074
#>   std. dev.       0.007  0.0052
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1091  0.0939
#>   std. dev.      0.0529   0.065
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0065  0.0063
#>   std. dev.      0.0062  0.0037
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1259  0.1117
#>   std. dev.       0.059  0.0674
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1475  0.1181
#>   std. dev.      0.0836  0.0766
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2195  0.1432
#>   std. dev.       0.121  0.0979
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
