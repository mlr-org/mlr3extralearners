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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0324  0.0231
#>   std. dev.      0.0248  0.0151
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2537  0.1676
#>   std. dev.      0.1369   0.127
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2964  0.1793
#>   std. dev.       0.129  0.1193
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3014  0.1856
#>   std. dev.      0.1261   0.134
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean             0.31  0.2174
#>   std. dev.      0.1301  0.1374
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3197  0.2755
#>   std. dev.      0.1673  0.1643
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3444   0.323
#>   std. dev.       0.202  0.2196
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.4057  0.3952
#>   std. dev.       0.221  0.2506
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.4417  0.4357
#>   std. dev.      0.2405  0.2865
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4823  0.4555
#>   std. dev.      0.2497  0.2651
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V19
#>   mean           0.5645  0.4565
#>   std. dev.      0.2481  0.2562
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0423  0.0317
#>   std. dev.       0.029   0.026
#>   weight sum         72      67
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6305  0.4809
#>   std. dev.      0.2484  0.2577
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean            0.679  0.5246
#>   std. dev.      0.2486  0.2508
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6902  0.5659
#>   std. dev.      0.2503  0.2544
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6932  0.6169
#>   std. dev.       0.245  0.2477
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7007  0.6618
#>   std. dev.      0.2381  0.2266
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6948  0.6598
#>   std. dev.      0.2297   0.246
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7186  0.6797
#>   std. dev.       0.228  0.2345
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean             0.72  0.6786
#>   std. dev.      0.2555  0.2183
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7027  0.6736
#>   std. dev.      0.2649  0.2065
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6469  0.6332
#>   std. dev.      0.2483  0.2381
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0445  0.0376
#>   std. dev.      0.0357  0.0314
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean            0.577  0.6028
#>   std. dev.      0.1972  0.2247
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4752  0.5547
#>   std. dev.      0.2213  0.1993
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4215  0.4582
#>   std. dev.      0.2046  0.2172
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3934  0.4216
#>   std. dev.      0.1845  0.2071
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V34
#>   mean           0.3574  0.4269
#>   std. dev.      0.1956  0.2503
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V35
#>   mean           0.3208  0.4524
#>   std. dev.        0.23   0.258
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2964   0.472
#>   std. dev.      0.2335  0.2542
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2996  0.4321
#>   std. dev.       0.216   0.247
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3081  0.3663
#>   std. dev.      0.1847  0.2295
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3128  0.3131
#>   std. dev.       0.165  0.2208
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0585  0.0457
#>   std. dev.      0.0416   0.035
#>   weight sum         72      67
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2978  0.3115
#>   std. dev.       0.151  0.1972
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2826  0.2885
#>   std. dev.      0.1528  0.1664
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.2989  0.2397
#>   std. dev.      0.1639  0.1537
#>   weight sum         72      67
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2756  0.1992
#>   std. dev.      0.1385  0.1209
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2446  0.1681
#>   std. dev.       0.139  0.1077
#>   weight sum         72      67
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2332  0.1377
#>   std. dev.      0.1726  0.0983
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1853  0.1128
#>   std. dev.       0.146   0.088
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1352  0.0933
#>   std. dev.      0.0878  0.0631
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1005  0.0686
#>   std. dev.      0.0607  0.0469
#>   weight sum         72      67
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0583  0.0384
#>   std. dev.      0.0332  0.0287
#>   weight sum         72      67
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0826   0.063
#>   std. dev.      0.0515  0.0495
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0206  0.0171
#>   std. dev.      0.0113  0.0116
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0187  0.0124
#>   std. dev.       0.013  0.0089
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0155  0.0113
#>   std. dev.      0.0105  0.0076
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0123    0.01
#>   std. dev.      0.0077  0.0064
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0121  0.0094
#>   std. dev.       0.008  0.0053
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0087  0.0082
#>   std. dev.      0.0075  0.0053
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0079  0.0068
#>   std. dev.      0.0049  0.0045
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0072  0.0077
#>   std. dev.      0.0055  0.0058
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0082  0.0067
#>   std. dev.      0.0063  0.0049
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0075   0.007
#>   std. dev.      0.0052  0.0048
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1125  0.0962
#>   std. dev.      0.0519  0.0685
#>   weight sum         72      67
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0059  0.0059
#>   std. dev.      0.0042  0.0036
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1265  0.1161
#>   std. dev.      0.0571  0.0681
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1498  0.1249
#>   std. dev.      0.0812  0.0826
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2123  0.1486
#>   std. dev.      0.1077   0.107
#>   weight sum         72      67
#>   precision       0.004   0.004
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
