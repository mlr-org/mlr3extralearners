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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0369  0.0208
#>   std. dev.      0.0301  0.0136
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2375  0.1644
#>   std. dev.      0.1269  0.1206
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V11
#>   mean           0.2833  0.1697
#>   std. dev.      0.1148  0.1197
#>   weight sum         78      61
#>   precision      0.0044  0.0044
#> 
#> V12
#>   mean           0.2997  0.1859
#>   std. dev.      0.1211   0.137
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3095  0.2177
#>   std. dev.      0.1391  0.1424
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3159   0.254
#>   std. dev.      0.1592  0.1605
#>   weight sum         78      61
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3311  0.2964
#>   std. dev.      0.1999  0.2109
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean            0.385  0.3557
#>   std. dev.      0.2206  0.2371
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4225  0.4005
#>   std. dev.       0.249  0.2863
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4648  0.4426
#>   std. dev.      0.2596  0.2652
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5429  0.4591
#>   std. dev.      0.2526  0.2571
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0464  0.0267
#>   std. dev.      0.0417  0.0207
#>   weight sum         78      61
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6186  0.4926
#>   std. dev.      0.2431  0.2566
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6599  0.5274
#>   std. dev.      0.2456  0.2553
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6671  0.5609
#>   std. dev.      0.2372  0.2693
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean             0.67  0.5997
#>   std. dev.      0.2513  0.2567
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6727  0.6273
#>   std. dev.      0.2433  0.2273
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.6639  0.6382
#>   std. dev.      0.2443  0.2498
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6907  0.6767
#>   std. dev.      0.2372  0.2525
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6954  0.6743
#>   std. dev.      0.2649  0.2403
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.6837  0.6814
#>   std. dev.      0.2552  0.2076
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6228    0.66
#>   std. dev.      0.2461  0.2174
#>   weight sum         78      61
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0507  0.0342
#>   std. dev.       0.046  0.0273
#>   weight sum         78      61
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.571   0.618
#>   std. dev.      0.2114  0.2121
#>   weight sum         78      61
#>   precision      0.0062  0.0062
#> 
#> V31
#>   mean            0.482  0.5523
#>   std. dev.       0.227  0.1946
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4415  0.4537
#>   std. dev.      0.2128  0.2098
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4101  0.4348
#>   std. dev.      0.2033  0.2159
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean            0.374  0.4492
#>   std. dev.      0.2037   0.254
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3427  0.4355
#>   std. dev.      0.2405  0.2634
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3178  0.4269
#>   std. dev.      0.2427  0.2586
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3179  0.3874
#>   std. dev.      0.2249  0.2478
#>   weight sum         78      61
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3238  0.3618
#>   std. dev.      0.1985  0.2342
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3363  0.3362
#>   std. dev.      0.1755   0.236
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0632  0.0402
#>   std. dev.      0.0568  0.0332
#>   weight sum         78      61
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3081  0.3271
#>   std. dev.      0.1601  0.2114
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2912  0.2856
#>   std. dev.      0.1646   0.179
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2996  0.2351
#>   std. dev.      0.1757  0.1627
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean            0.281  0.1993
#>   std. dev.      0.1401  0.1321
#>   weight sum         78      61
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.243  0.1616
#>   std. dev.      0.1459  0.1073
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2435   0.133
#>   std. dev.      0.1827  0.1014
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2046  0.1113
#>   std. dev.      0.1592  0.1044
#>   weight sum         78      61
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1484  0.0942
#>   std. dev.      0.0968  0.0756
#>   weight sum         78      61
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1054  0.0651
#>   std. dev.      0.0678  0.0493
#>   weight sum         78      61
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0615   0.036
#>   std. dev.      0.0369  0.0298
#>   weight sum         78      61
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0854    0.06
#>   std. dev.      0.0602  0.0473
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0231  0.0187
#>   std. dev.      0.0147  0.0138
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean            0.018  0.0131
#>   std. dev.       0.013   0.009
#>   weight sum         78      61
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0159  0.0111
#>   std. dev.      0.0116  0.0075
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0097
#>   std. dev.      0.0077  0.0064
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0117  0.0093
#>   std. dev.      0.0077  0.0051
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0089
#>   std. dev.      0.0082  0.0052
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0086  0.0072
#>   std. dev.      0.0062  0.0047
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0077  0.0073
#>   std. dev.      0.0061  0.0055
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0067
#>   std. dev.      0.0074  0.0054
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0071
#>   std. dev.       0.006  0.0055
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1093  0.0963
#>   std. dev.      0.0525   0.066
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007  0.0063
#>   std. dev.      0.0049  0.0037
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1261  0.1156
#>   std. dev.       0.057  0.0703
#>   weight sum         78      61
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1421  0.1187
#>   std. dev.      0.0864  0.0834
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2042   0.139
#>   std. dev.      0.1188  0.1068
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3043478 
```
