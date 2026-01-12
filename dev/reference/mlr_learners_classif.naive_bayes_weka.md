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
#>                 (0.51)  (0.49)
#> ===============================
#> V1
#>   mean           0.0354  0.0233
#>   std. dev.      0.0259  0.0159
#>   weight sum         71      68
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2635  0.1521
#>   std. dev.       0.144  0.0903
#>   weight sum         71      68
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2991  0.1682
#>   std. dev.      0.1335  0.0953
#>   weight sum         71      68
#>   precision      0.0053  0.0053
#> 
#> V12
#>   mean           0.3026  0.1802
#>   std. dev.      0.1322  0.1224
#>   weight sum         71      68
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3171  0.2113
#>   std. dev.      0.1374  0.1199
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3254   0.252
#>   std. dev.      0.1751  0.1487
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3393  0.2897
#>   std. dev.      0.2058   0.206
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.4012  0.3664
#>   std. dev.      0.2156  0.2429
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V17
#>   mean           0.4341  0.4255
#>   std. dev.      0.2452  0.2874
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.478  0.4546
#>   std. dev.       0.255  0.2591
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5544  0.4612
#>   std. dev.      0.2526  0.2491
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0457  0.0288
#>   std. dev.      0.0355  0.0238
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6416  0.4849
#>   std. dev.      0.2475  0.2499
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6919  0.5263
#>   std. dev.      0.2379  0.2401
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6875   0.568
#>   std. dev.      0.2356  0.2485
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6837  0.6208
#>   std. dev.      0.2653  0.2462
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6881  0.6709
#>   std. dev.      0.2612  0.2385
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6902  0.6793
#>   std. dev.      0.2587  0.2459
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7233  0.6975
#>   std. dev.      0.2488  0.2352
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7145  0.6866
#>   std. dev.      0.2789  0.2234
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.6993   0.667
#>   std. dev.       0.259  0.2077
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6262  0.6385
#>   std. dev.      0.2315  0.2325
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0498  0.0372
#>   std. dev.      0.0388  0.0278
#>   weight sum         71      68
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5636  0.5742
#>   std. dev.      0.1967  0.2388
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4597  0.5209
#>   std. dev.      0.2127  0.2084
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4087  0.4533
#>   std. dev.      0.2049  0.2242
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean            0.379  0.4494
#>   std. dev.      0.1996  0.2242
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3497  0.4515
#>   std. dev.      0.2153  0.2575
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3285  0.4575
#>   std. dev.       0.253  0.2531
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3142  0.4682
#>   std. dev.      0.2681  0.2606
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3188  0.4334
#>   std. dev.      0.2465   0.255
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3374  0.3515
#>   std. dev.      0.2173  0.2373
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3376  0.2906
#>   std. dev.      0.1864  0.2238
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0666  0.0403
#>   std. dev.      0.0458  0.0266
#>   weight sum         71      68
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2885  0.2977
#>   std. dev.       0.169  0.1928
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2706  0.2818
#>   std. dev.      0.1688  0.1823
#>   weight sum         71      68
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2824  0.2565
#>   std. dev.      0.1597  0.1637
#>   weight sum         71      68
#>   precision      0.0055  0.0055
#> 
#> V43
#>   mean           0.2666  0.2175
#>   std. dev.      0.1312  0.1201
#>   weight sum         71      68
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2374  0.1762
#>   std. dev.      0.1332  0.0918
#>   weight sum         71      68
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2291  0.1451
#>   std. dev.      0.1609  0.0919
#>   weight sum         71      68
#>   precision      0.0043  0.0043
#> 
#> V46
#>   mean            0.186  0.1262
#>   std. dev.      0.1354  0.0954
#>   weight sum         71      68
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1334  0.0994
#>   std. dev.      0.0763  0.0693
#>   weight sum         71      68
#>   precision      0.0033  0.0033
#> 
#> V48
#>   mean           0.1026  0.0721
#>   std. dev.      0.0589  0.0523
#>   weight sum         71      68
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0609  0.0408
#>   std. dev.      0.0345  0.0336
#>   weight sum         71      68
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0863  0.0551
#>   std. dev.      0.0565  0.0367
#>   weight sum         71      68
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0234  0.0196
#>   std. dev.      0.0149  0.0138
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0132
#>   std. dev.      0.0119  0.0092
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0152   0.011
#>   std. dev.      0.0093  0.0074
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0121  0.0098
#>   std. dev.       0.008   0.006
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0122  0.0089
#>   std. dev.      0.0085   0.005
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0102  0.0082
#>   std. dev.      0.0089  0.0051
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0089   0.007
#>   std. dev.      0.0073  0.0044
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0079
#>   std. dev.      0.0063   0.005
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0064
#>   std. dev.      0.0082  0.0046
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0072
#>   std. dev.      0.0066  0.0049
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1102  0.0863
#>   std. dev.      0.0494  0.0512
#>   weight sum         71      68
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0071  0.0059
#>   std. dev.      0.0063  0.0034
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1302  0.1077
#>   std. dev.      0.0597  0.0563
#>   weight sum         71      68
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1616  0.1109
#>   std. dev.      0.0936  0.0693
#>   weight sum         71      68
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2232  0.1289
#>   std. dev.      0.1317  0.0829
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
