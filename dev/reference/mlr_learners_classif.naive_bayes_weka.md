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
#>   mean           0.0342  0.0215
#>   std. dev.      0.0257  0.0133
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2473  0.1449
#>   std. dev.      0.1304  0.0892
#>   weight sum         72      67
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2806  0.1622
#>   std. dev.      0.1167  0.0881
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2968  0.1752
#>   std. dev.      0.1191   0.108
#>   weight sum         72      67
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3264  0.2107
#>   std. dev.      0.1243  0.1114
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3408  0.2494
#>   std. dev.       0.165  0.1556
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3441  0.2855
#>   std. dev.      0.1991   0.218
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3848  0.3534
#>   std. dev.      0.2169  0.2544
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4272  0.4012
#>   std. dev.       0.239   0.284
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4764  0.4429
#>   std. dev.      0.2619  0.2549
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5602  0.4719
#>   std. dev.      0.2691  0.2425
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean           0.0431  0.0288
#>   std. dev.      0.0296  0.0243
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6357  0.5085
#>   std. dev.       0.264  0.2661
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6882  0.5519
#>   std. dev.      0.2502  0.2556
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6916    0.57
#>   std. dev.      0.2276  0.2627
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6991  0.6082
#>   std. dev.      0.2412  0.2433
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7084  0.6619
#>   std. dev.      0.2329  0.2384
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6945   0.685
#>   std. dev.      0.2298  0.2565
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7185  0.7102
#>   std. dev.      0.2201   0.235
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7209  0.7047
#>   std. dev.      0.2586  0.2323
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7248   0.681
#>   std. dev.      0.2508  0.1991
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6688  0.6341
#>   std. dev.      0.2204  0.2163
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V3
#>   mean           0.0503  0.0317
#>   std. dev.      0.0364  0.0272
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5883  0.5746
#>   std. dev.       0.191  0.2274
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4851  0.5212
#>   std. dev.      0.2159  0.1966
#>   weight sum         72      67
#>   precision      0.0061  0.0061
#> 
#> V32
#>   mean           0.4209  0.4468
#>   std. dev.      0.2261  0.2121
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean            0.391    0.45
#>   std. dev.      0.2078  0.2147
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3626  0.4604
#>   std. dev.       0.216  0.2474
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3332  0.4706
#>   std. dev.      0.2427  0.2599
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3073  0.4821
#>   std. dev.      0.2484  0.2671
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3006  0.4422
#>   std. dev.      0.2253  0.2384
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3201  0.3604
#>   std. dev.      0.2034  0.2034
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3234  0.3182
#>   std. dev.      0.1797  0.2096
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0611  0.0382
#>   std. dev.       0.045  0.0239
#>   weight sum         72      67
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.2967  0.3216
#>   std. dev.       0.154  0.1878
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2983  0.2807
#>   std. dev.      0.1766  0.1806
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3014  0.2564
#>   std. dev.      0.1786  0.1723
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2703  0.2111
#>   std. dev.      0.1451  0.1431
#>   weight sum         72      67
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.244  0.1763
#>   std. dev.      0.1446   0.118
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2371  0.1486
#>   std. dev.      0.1757   0.101
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1954  0.1264
#>   std. dev.      0.1588  0.0965
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1474  0.0984
#>   std. dev.      0.1012  0.0709
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1114  0.0717
#>   std. dev.      0.0712  0.0518
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0645  0.0407
#>   std. dev.      0.0377  0.0335
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0851  0.0524
#>   std. dev.      0.0546  0.0362
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0232  0.0191
#>   std. dev.      0.0152  0.0138
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0204  0.0119
#>   std. dev.      0.0157  0.0088
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0161  0.0101
#>   std. dev.      0.0114  0.0071
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0119  0.0095
#>   std. dev.      0.0081   0.006
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0134  0.0096
#>   std. dev.      0.0094  0.0058
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0103  0.0088
#>   std. dev.      0.0089  0.0057
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0071
#>   std. dev.      0.0071  0.0043
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0075
#>   std. dev.      0.0062  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0096  0.0067
#>   std. dev.      0.0082   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0092  0.0069
#>   std. dev.      0.0074  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1194  0.0845
#>   std. dev.      0.0517  0.0492
#>   weight sum         72      67
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0067  0.0058
#>   std. dev.      0.0062  0.0035
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1367  0.1073
#>   std. dev.      0.0569  0.0544
#>   weight sum         72      67
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1549  0.1076
#>   std. dev.      0.0839  0.0619
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2133  0.1201
#>   std. dev.      0.1211  0.0725
#>   weight sum         72      67
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4202899 
```
