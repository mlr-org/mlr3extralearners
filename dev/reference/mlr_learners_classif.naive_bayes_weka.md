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
#>   mean           0.0347  0.0224
#>   std. dev.      0.0282  0.0153
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2565  0.1558
#>   std. dev.      0.1449  0.1138
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2922  0.1683
#>   std. dev.      0.1259  0.1043
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2997  0.1874
#>   std. dev.      0.1092  0.1173
#>   weight sum         76      63
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3041  0.2291
#>   std. dev.      0.1211  0.1239
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean            0.312  0.2598
#>   std. dev.       0.152  0.1607
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3276  0.2969
#>   std. dev.      0.1933  0.2149
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3735  0.3756
#>   std. dev.      0.2132   0.254
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.3965  0.4221
#>   std. dev.      0.2351  0.2865
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4381  0.4403
#>   std. dev.      0.2541  0.2568
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5294   0.449
#>   std. dev.      0.2475  0.2425
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V2
#>   mean            0.044  0.0293
#>   std. dev.      0.0337  0.0246
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean            0.612  0.4888
#>   std. dev.      0.2586  0.2611
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6702   0.543
#>   std. dev.      0.2575  0.2484
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6733  0.5694
#>   std. dev.      0.2389  0.2491
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6812  0.6173
#>   std. dev.      0.2558  0.2184
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean            0.714  0.6736
#>   std. dev.      0.2426  0.2193
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7206  0.7075
#>   std. dev.       0.221   0.229
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7439  0.7351
#>   std. dev.      0.2128  0.2075
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7433  0.7242
#>   std. dev.      0.2474  0.2027
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7447  0.6945
#>   std. dev.       0.245  0.1893
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6851  0.6325
#>   std. dev.      0.2356  0.2381
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0449  0.0325
#>   std. dev.      0.0336  0.0267
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V30
#>   mean           0.6048  0.5683
#>   std. dev.      0.2024  0.2278
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4986  0.5149
#>   std. dev.      0.2224  0.2016
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4336  0.4457
#>   std. dev.      0.2137  0.2131
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3959  0.4441
#>   std. dev.      0.1936  0.2191
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3684  0.4479
#>   std. dev.      0.2098  0.2433
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3435  0.4599
#>   std. dev.      0.2475  0.2501
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3166  0.4607
#>   std. dev.      0.2428  0.2701
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3126  0.4201
#>   std. dev.      0.2299  0.2522
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3225  0.3498
#>   std. dev.      0.2093  0.2214
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V39
#>   mean           0.3259  0.3003
#>   std. dev.      0.1836  0.2093
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0571  0.0402
#>   std. dev.      0.0366  0.0324
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3039  0.3062
#>   std. dev.      0.1556  0.1952
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2912  0.2854
#>   std. dev.      0.1591  0.1827
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2983  0.2602
#>   std. dev.      0.1678  0.1742
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2749  0.2166
#>   std. dev.      0.1409  0.1372
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2482    0.18
#>   std. dev.       0.143  0.1176
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2432  0.1547
#>   std. dev.      0.1773  0.1025
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2009  0.1332
#>   std. dev.      0.1576  0.0988
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1529  0.0949
#>   std. dev.      0.0981  0.0732
#>   weight sum         76      63
#>   precision       0.004   0.004
#> 
#> V48
#>   mean            0.115  0.0686
#>   std. dev.      0.0655  0.0515
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0644  0.0389
#>   std. dev.      0.0364  0.0336
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0828  0.0636
#>   std. dev.      0.0439  0.0507
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0222   0.018
#>   std. dev.      0.0132  0.0129
#>   weight sum         76      63
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0196  0.0117
#>   std. dev.      0.0147  0.0088
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0152  0.0103
#>   std. dev.       0.011  0.0067
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117  0.0092
#>   std. dev.      0.0073  0.0056
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0094
#>   std. dev.      0.0085  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0094  0.0086
#>   std. dev.      0.0078  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087   0.007
#>   std. dev.      0.0053  0.0045
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0073   0.007
#>   std. dev.      0.0048  0.0047
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0083  0.0056
#>   std. dev.      0.0059  0.0038
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0079  0.0065
#>   std. dev.      0.0066  0.0044
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1121  0.0939
#>   std. dev.      0.0515  0.0591
#>   weight sum         76      63
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0067  0.0055
#>   std. dev.      0.0061  0.0034
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1314  0.1182
#>   std. dev.      0.0581  0.0609
#>   weight sum         76      63
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1514  0.1176
#>   std. dev.      0.0876  0.0742
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2194   0.135
#>   std. dev.      0.1268  0.0933
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
