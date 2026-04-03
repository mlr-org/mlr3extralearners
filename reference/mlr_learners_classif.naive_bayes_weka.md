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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean            0.033  0.0213
#>   std. dev.      0.0261  0.0139
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2342  0.1601
#>   std. dev.      0.1215   0.096
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2808  0.1714
#>   std. dev.      0.1166  0.0963
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2986  0.1909
#>   std. dev.      0.1252  0.1232
#>   weight sum         75      64
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3188  0.2325
#>   std. dev.      0.1321  0.1421
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3207  0.2832
#>   std. dev.      0.1642  0.1739
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3285  0.3189
#>   std. dev.      0.1891  0.2217
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3833  0.3862
#>   std. dev.      0.2108  0.2552
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4355  0.4164
#>   std. dev.      0.2445  0.2801
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4847  0.4465
#>   std. dev.      0.2624  0.2559
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V19
#>   mean           0.5628  0.4595
#>   std. dev.      0.2597  0.2395
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0445  0.0306
#>   std. dev.      0.0389  0.0265
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6273  0.4989
#>   std. dev.       0.249  0.2498
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6711  0.5359
#>   std. dev.      0.2341  0.2439
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6895  0.5529
#>   std. dev.      0.2333   0.261
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.7032  0.6059
#>   std. dev.      0.2404  0.2544
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7147  0.6494
#>   std. dev.      0.2244  0.2386
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean            0.701  0.6603
#>   std. dev.      0.2361  0.2657
#>   weight sum         75      64
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7028  0.6932
#>   std. dev.      0.2472  0.2456
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.706  0.6924
#>   std. dev.      0.2745  0.2225
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7041  0.6802
#>   std. dev.       0.277  0.2133
#>   weight sum         75      64
#>   precision      0.0077  0.0077
#> 
#> V29
#>   mean           0.6362  0.6305
#>   std. dev.      0.2496  0.2387
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0494  0.0343
#>   std. dev.      0.0436  0.0314
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.557  0.5575
#>   std. dev.      0.1948  0.2293
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4763   0.515
#>   std. dev.      0.2072   0.198
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.421  0.4378
#>   std. dev.       0.208  0.2173
#>   weight sum         75      64
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3863  0.4159
#>   std. dev.       0.188  0.2088
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3611    0.42
#>   std. dev.      0.2004  0.2278
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3292  0.4414
#>   std. dev.      0.2311   0.248
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V36
#>   mean           0.2927  0.4634
#>   std. dev.      0.2294  0.2517
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2807  0.4163
#>   std. dev.      0.2052  0.2479
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3046  0.3568
#>   std. dev.       0.181  0.2339
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3165  0.3266
#>   std. dev.      0.1676  0.2216
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.061  0.0413
#>   std. dev.      0.0553  0.0275
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2898  0.3133
#>   std. dev.      0.1592  0.2026
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2812   0.271
#>   std. dev.      0.1733  0.1723
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean            0.284  0.2433
#>   std. dev.       0.168  0.1632
#>   weight sum         75      64
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2612  0.2075
#>   std. dev.      0.1432  0.1149
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2319  0.1635
#>   std. dev.      0.1357  0.0911
#>   weight sum         75      64
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2202  0.1325
#>   std. dev.      0.1683  0.0897
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1855   0.111
#>   std. dev.      0.1534  0.0888
#>   weight sum         75      64
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1445  0.0889
#>   std. dev.      0.0956  0.0652
#>   weight sum         75      64
#>   precision      0.0042  0.0042
#> 
#> V48
#>   mean           0.1058  0.0691
#>   std. dev.      0.0665  0.0496
#>   weight sum         75      64
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0611  0.0385
#>   std. dev.      0.0361   0.032
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0821  0.0591
#>   std. dev.      0.0605  0.0403
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0223  0.0182
#>   std. dev.      0.0152  0.0134
#>   weight sum         75      64
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0188   0.013
#>   std. dev.      0.0153  0.0088
#>   weight sum         75      64
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0149  0.0108
#>   std. dev.      0.0107  0.0072
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean            0.011  0.0093
#>   std. dev.      0.0073  0.0062
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0116  0.0093
#>   std. dev.      0.0085  0.0055
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0102  0.0084
#>   std. dev.      0.0092   0.005
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0071
#>   std. dev.      0.0066  0.0043
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0076  0.0066
#>   std. dev.      0.0063  0.0039
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0094   0.006
#>   std. dev.      0.0082   0.004
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0067
#>   std. dev.      0.0072  0.0038
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1098   0.096
#>   std. dev.      0.0478  0.0605
#>   weight sum         75      64
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean           0.0068  0.0062
#>   std. dev.      0.0063  0.0036
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1268  0.1104
#>   std. dev.      0.0518  0.0603
#>   weight sum         75      64
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean             0.14  0.1139
#>   std. dev.       0.076  0.0698
#>   weight sum         75      64
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.1975  0.1347
#>   std. dev.      0.0988  0.0851
#>   weight sum         75      64
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
