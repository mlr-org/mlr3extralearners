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
  <https://mlr3book.mlr-org.com/basics.html#learners>

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
#> • Other settings: use_weights = 'error'

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
#>   mean           0.0341  0.0222
#>   std. dev.      0.0255  0.0137
#>   weight sum         77      62
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2626  0.1617
#>   std. dev.      0.1431  0.1069
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3003  0.1709
#>   std. dev.      0.1329  0.1047
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.3159  0.1739
#>   std. dev.      0.1246  0.1273
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3237  0.2155
#>   std. dev.      0.1291  0.1268
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.321  0.2713
#>   std. dev.      0.1441  0.1635
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3315  0.3199
#>   std. dev.      0.1848  0.2227
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3778  0.3853
#>   std. dev.      0.2033  0.2651
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4056  0.4339
#>   std. dev.      0.2336  0.3099
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4439  0.4759
#>   std. dev.      0.2545   0.278
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5227  0.4895
#>   std. dev.      0.2519  0.2602
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0466  0.0305
#>   std. dev.      0.0395  0.0253
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6014  0.5039
#>   std. dev.      0.2612  0.2472
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6507  0.5525
#>   std. dev.      0.2579  0.2335
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6595  0.6053
#>   std. dev.      0.2475  0.2387
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V23
#>   mean           0.6691  0.6498
#>   std. dev.      0.2502  0.2233
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6842  0.6831
#>   std. dev.      0.2493  0.2183
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6728  0.6969
#>   std. dev.      0.2467   0.225
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6917  0.7165
#>   std. dev.      0.2414  0.2169
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean            0.706  0.7084
#>   std. dev.      0.2667  0.2122
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7156  0.6876
#>   std. dev.      0.2565  0.1992
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6508  0.6457
#>   std. dev.      0.2448  0.2346
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.053  0.0351
#>   std. dev.      0.0462  0.0305
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5788  0.5909
#>   std. dev.      0.2166  0.2518
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4967  0.5261
#>   std. dev.      0.2195  0.2144
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4499  0.4346
#>   std. dev.      0.2139  0.2169
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4223  0.4361
#>   std. dev.      0.2024  0.2295
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3843  0.4414
#>   std. dev.      0.2209  0.2534
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3443  0.4469
#>   std. dev.      0.2597  0.2559
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean            0.327   0.436
#>   std. dev.      0.2488  0.2539
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3186  0.3971
#>   std. dev.      0.2278  0.2252
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3395  0.3347
#>   std. dev.      0.1991  0.1945
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean           0.3459  0.2838
#>   std. dev.      0.1797  0.1881
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V4
#>   mean           0.0691  0.0407
#>   std. dev.      0.0594  0.0283
#>   weight sum         77      62
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3194  0.2895
#>   std. dev.      0.1633  0.1693
#>   weight sum         77      62
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.3128  0.2666
#>   std. dev.      0.1713  0.1709
#>   weight sum         77      62
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.3243  0.2473
#>   std. dev.      0.1752  0.1593
#>   weight sum         77      62
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2864  0.2135
#>   std. dev.      0.1526  0.1332
#>   weight sum         77      62
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2553   0.175
#>   std. dev.      0.1557  0.1177
#>   weight sum         77      62
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2581  0.1457
#>   std. dev.      0.1809   0.096
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2057  0.1167
#>   std. dev.      0.1553  0.0877
#>   weight sum         77      62
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1512  0.0968
#>   std. dev.      0.1016  0.0608
#>   weight sum         77      62
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1173  0.0703
#>   std. dev.      0.0693  0.0447
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0668  0.0359
#>   std. dev.      0.0375  0.0268
#>   weight sum         77      62
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0885  0.0581
#>   std. dev.      0.0623  0.0409
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0231  0.0182
#>   std. dev.      0.0136  0.0114
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0203   0.013
#>   std. dev.      0.0153  0.0089
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0178  0.0111
#>   std. dev.       0.012   0.008
#>   weight sum         77      62
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0123  0.0098
#>   std. dev.      0.0077  0.0065
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0097
#>   std. dev.      0.0084   0.005
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0082
#>   std. dev.      0.0078  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0076
#>   std. dev.       0.006  0.0047
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0077
#>   std. dev.       0.005  0.0058
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0064
#>   std. dev.      0.0063  0.0045
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0089  0.0069
#>   std. dev.      0.0073  0.0045
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1172  0.0929
#>   std. dev.      0.0543  0.0496
#>   weight sum         77      62
#>   precision       0.002   0.002
#> 
#> V60
#>   mean            0.007  0.0062
#>   std. dev.      0.0065  0.0039
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1315  0.1125
#>   std. dev.      0.0573  0.0537
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1591  0.1124
#>   std. dev.      0.0861  0.0683
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2231  0.1335
#>   std. dev.      0.1271  0.0907
#>   weight sum         77      62
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4347826 
```
