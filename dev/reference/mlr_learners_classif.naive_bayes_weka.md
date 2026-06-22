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
#>   mean           0.0374  0.0214
#>   std. dev.      0.0299  0.0128
#>   weight sum         77      62
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2642  0.1525
#>   std. dev.      0.1552  0.1026
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3007  0.1688
#>   std. dev.      0.1374  0.1124
#>   weight sum         77      62
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.304  0.1967
#>   std. dev.      0.1247  0.1424
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3197  0.2384
#>   std. dev.      0.1341  0.1438
#>   weight sum         77      62
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3291  0.2843
#>   std. dev.      0.1594  0.1759
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3524    0.31
#>   std. dev.      0.1899  0.2291
#>   weight sum         77      62
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean            0.398  0.3654
#>   std. dev.       0.211  0.2595
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4152  0.3889
#>   std. dev.      0.2391  0.2848
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4487  0.4321
#>   std. dev.       0.261  0.2562
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5311  0.4536
#>   std. dev.      0.2545  0.2418
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0495  0.0302
#>   std. dev.      0.0413  0.0259
#>   weight sum         77      62
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.627   0.485
#>   std. dev.      0.2533  0.2536
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6823  0.5326
#>   std. dev.      0.2546  0.2438
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6566  0.5718
#>   std. dev.      0.2514  0.2485
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6472  0.6043
#>   std. dev.      0.2771   0.243
#>   weight sum         77      62
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean             0.67  0.6473
#>   std. dev.       0.265  0.2425
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean           0.6621  0.6728
#>   std. dev.      0.2439  0.2461
#>   weight sum         77      62
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6839  0.6972
#>   std. dev.      0.2293  0.2282
#>   weight sum         77      62
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6908  0.6749
#>   std. dev.      0.2673  0.2302
#>   weight sum         77      62
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7045  0.6494
#>   std. dev.      0.2655  0.2158
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean            0.644  0.6302
#>   std. dev.      0.2444  0.2314
#>   weight sum         77      62
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0536  0.0342
#>   std. dev.      0.0454  0.0299
#>   weight sum         77      62
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5779  0.5919
#>   std. dev.      0.2121  0.2411
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4823  0.5436
#>   std. dev.      0.2112  0.2007
#>   weight sum         77      62
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4216  0.4694
#>   std. dev.      0.2046  0.2152
#>   weight sum         77      62
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3905  0.4677
#>   std. dev.      0.1918  0.2314
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3805  0.4628
#>   std. dev.      0.2037  0.2447
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3637  0.4707
#>   std. dev.      0.2474  0.2531
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3393  0.4706
#>   std. dev.      0.2484  0.2612
#>   weight sum         77      62
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3304  0.4209
#>   std. dev.      0.2289  0.2478
#>   weight sum         77      62
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3461  0.3616
#>   std. dev.      0.2162  0.2367
#>   weight sum         77      62
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3564  0.3276
#>   std. dev.      0.1847  0.2321
#>   weight sum         77      62
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0693   0.038
#>   std. dev.      0.0563  0.0263
#>   weight sum         77      62
#>   precision      0.0032  0.0032
#> 
#> V40
#>   mean           0.3174  0.3432
#>   std. dev.      0.1559   0.212
#>   weight sum         77      62
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2991  0.3141
#>   std. dev.      0.1541  0.1912
#>   weight sum         77      62
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3008  0.2769
#>   std. dev.      0.1642  0.1794
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V43
#>   mean           0.2764   0.229
#>   std. dev.      0.1384  0.1393
#>   weight sum         77      62
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2528  0.1854
#>   std. dev.      0.1387  0.1143
#>   weight sum         77      62
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean            0.253  0.1464
#>   std. dev.      0.1784  0.1054
#>   weight sum         77      62
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2049  0.1258
#>   std. dev.       0.156  0.1003
#>   weight sum         77      62
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1505  0.1014
#>   std. dev.      0.0987  0.0739
#>   weight sum         77      62
#>   precision       0.004   0.004
#> 
#> V48
#>   mean            0.115  0.0739
#>   std. dev.      0.0666  0.0513
#>   weight sum         77      62
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0663  0.0403
#>   std. dev.      0.0367  0.0333
#>   weight sum         77      62
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0858  0.0579
#>   std. dev.      0.0546  0.0408
#>   weight sum         77      62
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0226  0.0184
#>   std. dev.      0.0137  0.0138
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0205  0.0133
#>   std. dev.      0.0145  0.0092
#>   weight sum         77      62
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean            0.016  0.0108
#>   std. dev.      0.0113  0.0067
#>   weight sum         77      62
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean            0.012  0.0101
#>   std. dev.      0.0075  0.0061
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0131  0.0093
#>   std. dev.      0.0086  0.0055
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0089
#>   std. dev.       0.008  0.0051
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0079
#>   std. dev.      0.0058   0.005
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0081  0.0071
#>   std. dev.      0.0055  0.0054
#>   weight sum         77      62
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0096  0.0063
#>   std. dev.      0.0073  0.0045
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0094  0.0068
#>   std. dev.      0.0073  0.0048
#>   weight sum         77      62
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1112  0.0954
#>   std. dev.      0.0451  0.0608
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0077  0.0061
#>   std. dev.      0.0067  0.0038
#>   weight sum         77      62
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1314  0.1146
#>   std. dev.      0.0586  0.0617
#>   weight sum         77      62
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1585   0.114
#>   std. dev.      0.0971  0.0782
#>   weight sum         77      62
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2269  0.1264
#>   std. dev.       0.137  0.0921
#>   weight sum         77      62
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
