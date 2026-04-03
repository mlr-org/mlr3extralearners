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
#>   mean            0.033   0.023
#>   std. dev.      0.0258  0.0155
#>   weight sum         69      70
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2561   0.164
#>   std. dev.      0.1297  0.1123
#>   weight sum         69      70
#>   precision      0.0042  0.0042
#> 
#> V11
#>   mean           0.2973  0.1687
#>   std. dev.      0.1277  0.1039
#>   weight sum         69      70
#>   precision      0.0046  0.0046
#> 
#> V12
#>   mean           0.3207  0.1714
#>   std. dev.       0.131  0.1177
#>   weight sum         69      70
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3289  0.2121
#>   std. dev.      0.1413   0.127
#>   weight sum         69      70
#>   precision      0.0053  0.0053
#> 
#> V14
#>   mean           0.3252  0.2651
#>   std. dev.      0.1473  0.1608
#>   weight sum         69      70
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.3272  0.3117
#>   std. dev.      0.1858  0.2212
#>   weight sum         69      70
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3777  0.3779
#>   std. dev.      0.2063  0.2584
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4205   0.421
#>   std. dev.      0.2484  0.2981
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4615  0.4618
#>   std. dev.      0.2564  0.2752
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5449  0.4831
#>   std. dev.      0.2439  0.2599
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.044  0.0312
#>   std. dev.      0.0363  0.0256
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6259  0.5194
#>   std. dev.      0.2361  0.2678
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6837  0.5555
#>   std. dev.      0.2442  0.2662
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6828  0.5928
#>   std. dev.      0.2367  0.2683
#>   weight sum         69      70
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6716  0.6375
#>   std. dev.       0.256  0.2443
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6782   0.666
#>   std. dev.      0.2458  0.2263
#>   weight sum         69      70
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6708  0.6639
#>   std. dev.      0.2426  0.2447
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7108  0.6886
#>   std. dev.       0.214  0.2328
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7298   0.674
#>   std. dev.       0.246  0.2255
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7172  0.6437
#>   std. dev.      0.2493  0.2046
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V29
#>   mean           0.6452  0.6024
#>   std. dev.      0.2438   0.241
#>   weight sum         69      70
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0501  0.0372
#>   std. dev.      0.0387  0.0297
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.5753  0.5629
#>   std. dev.      0.2173  0.2348
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4684  0.5211
#>   std. dev.      0.2332  0.2004
#>   weight sum         69      70
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4325  0.4379
#>   std. dev.      0.2208  0.2163
#>   weight sum         69      70
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4052  0.4317
#>   std. dev.      0.2007  0.2102
#>   weight sum         69      70
#>   precision      0.0068  0.0068
#> 
#> V34
#>   mean           0.3799  0.4468
#>   std. dev.      0.2031  0.2391
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3513  0.4474
#>   std. dev.      0.2504  0.2412
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3473  0.4467
#>   std. dev.       0.255  0.2434
#>   weight sum         69      70
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3487  0.4034
#>   std. dev.      0.2297   0.232
#>   weight sum         69      70
#>   precision      0.0064  0.0064
#> 
#> V38
#>   mean           0.3523  0.3479
#>   std. dev.      0.2019  0.2196
#>   weight sum         69      70
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.362  0.3184
#>   std. dev.       0.182  0.2243
#>   weight sum         69      70
#>   precision      0.0071  0.0071
#> 
#> V4
#>   mean           0.0621  0.0425
#>   std. dev.      0.0413  0.0327
#>   weight sum         69      70
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean            0.327  0.3348
#>   std. dev.      0.1636  0.1979
#>   weight sum         69      70
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3014  0.2978
#>   std. dev.      0.1688   0.186
#>   weight sum         69      70
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3083  0.2578
#>   std. dev.      0.1596  0.1799
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2938  0.2153
#>   std. dev.      0.1364  0.1432
#>   weight sum         69      70
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2654  0.1724
#>   std. dev.      0.1559   0.111
#>   weight sum         69      70
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2593  0.1458
#>   std. dev.      0.1793   0.102
#>   weight sum         69      70
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2016  0.1216
#>   std. dev.      0.1415  0.1026
#>   weight sum         69      70
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1483  0.0984
#>   std. dev.      0.0904  0.0737
#>   weight sum         69      70
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1128  0.0694
#>   std. dev.      0.0675  0.0515
#>   weight sum         69      70
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean            0.066  0.0398
#>   std. dev.      0.0381  0.0315
#>   weight sum         69      70
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0842  0.0673
#>   std. dev.      0.0478  0.0501
#>   weight sum         69      70
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean            0.023  0.0185
#>   std. dev.      0.0142  0.0134
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0194   0.013
#>   std. dev.      0.0123  0.0089
#>   weight sum         69      70
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0147  0.0111
#>   std. dev.      0.0092  0.0076
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0104  0.0098
#>   std. dev.      0.0065  0.0063
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0118  0.0095
#>   std. dev.      0.0082  0.0055
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0091  0.0083
#>   std. dev.       0.007   0.005
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0067
#>   std. dev.       0.006  0.0039
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0076  0.0073
#>   std. dev.      0.0052  0.0049
#>   weight sum         69      70
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0087  0.0067
#>   std. dev.      0.0068   0.005
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean            0.009  0.0074
#>   std. dev.      0.0073  0.0056
#>   weight sum         69      70
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1117  0.0967
#>   std. dev.       0.049  0.0677
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0078  0.0064
#>   std. dev.      0.0064  0.0039
#>   weight sum         69      70
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1287  0.1128
#>   std. dev.      0.0548  0.0708
#>   weight sum         69      70
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.148   0.119
#>   std. dev.       0.083  0.0788
#>   weight sum         69      70
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2198  0.1396
#>   std. dev.       0.122  0.0931
#>   weight sum         69      70
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
