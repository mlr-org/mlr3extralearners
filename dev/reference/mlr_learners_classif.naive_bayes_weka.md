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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0368  0.0209
#>   std. dev.      0.0277  0.0119
#>   weight sum         80      59
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2592  0.1497
#>   std. dev.      0.1381  0.1123
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.3022  0.1634
#>   std. dev.      0.1239  0.1152
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3164   0.185
#>   std. dev.      0.1205  0.1326
#>   weight sum         80      59
#>   precision       0.005   0.005
#> 
#> V13
#>   mean            0.329  0.2214
#>   std. dev.      0.1321  0.1302
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.329  0.2489
#>   std. dev.      0.1749  0.1654
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean            0.332  0.2713
#>   std. dev.      0.2074  0.2122
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3793  0.3358
#>   std. dev.      0.2289  0.2456
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V17
#>   mean           0.4215  0.3795
#>   std. dev.      0.2541  0.2844
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4681  0.4144
#>   std. dev.      0.2629  0.2623
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5422   0.428
#>   std. dev.      0.2642  0.2418
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0475  0.0294
#>   std. dev.      0.0393  0.0251
#>   weight sum         80      59
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6041  0.4437
#>   std. dev.      0.2618  0.2523
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6416  0.4887
#>   std. dev.      0.2611   0.249
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6467  0.5235
#>   std. dev.      0.2434  0.2606
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6678  0.5809
#>   std. dev.       0.261  0.2501
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6852  0.6257
#>   std. dev.       0.252  0.2484
#>   weight sum         80      59
#>   precision      0.0074  0.0074
#> 
#> V25
#>   mean           0.6696  0.6503
#>   std. dev.       0.247  0.2713
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6859  0.6916
#>   std. dev.      0.2437  0.2466
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.6907  0.6786
#>   std. dev.      0.2727  0.2168
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.6854  0.6483
#>   std. dev.      0.2741  0.2036
#>   weight sum         80      59
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6245  0.6219
#>   std. dev.      0.2569  0.2369
#>   weight sum         80      59
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0548  0.0355
#>   std. dev.      0.0474   0.029
#>   weight sum         80      59
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5606  0.5924
#>   std. dev.      0.2122  0.2434
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4776  0.5381
#>   std. dev.      0.2225  0.2197
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4289  0.4639
#>   std. dev.      0.2194  0.2237
#>   weight sum         80      59
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4003  0.4903
#>   std. dev.      0.2049   0.229
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3814  0.4905
#>   std. dev.      0.2125  0.2621
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3537  0.5021
#>   std. dev.       0.239  0.2759
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3259   0.508
#>   std. dev.      0.2416  0.2813
#>   weight sum         80      59
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3141  0.4641
#>   std. dev.      0.2168  0.2524
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean            0.327  0.3878
#>   std. dev.      0.1907  0.2445
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3349  0.3424
#>   std. dev.      0.1763   0.245
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0695  0.0385
#>   std. dev.      0.0593    0.03
#>   weight sum         80      59
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3043  0.3652
#>   std. dev.       0.165  0.2085
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2948  0.3281
#>   std. dev.      0.1702  0.1957
#>   weight sum         80      59
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2981  0.2973
#>   std. dev.      0.1671  0.1815
#>   weight sum         80      59
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2733  0.2403
#>   std. dev.      0.1416  0.1408
#>   weight sum         80      59
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2383  0.1981
#>   std. dev.      0.1418  0.1186
#>   weight sum         80      59
#>   precision      0.0057  0.0057
#> 
#> V45
#>   mean           0.2307   0.167
#>   std. dev.      0.1635  0.1042
#>   weight sum         80      59
#>   precision      0.0046  0.0046
#> 
#> V46
#>   mean           0.1917  0.1336
#>   std. dev.      0.1507  0.1009
#>   weight sum         80      59
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1459  0.1035
#>   std. dev.      0.0976  0.0737
#>   weight sum         80      59
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1119  0.0786
#>   std. dev.      0.0709  0.0511
#>   weight sum         80      59
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0638  0.0426
#>   std. dev.      0.0376  0.0328
#>   weight sum         80      59
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0903  0.0575
#>   std. dev.      0.0659  0.0426
#>   weight sum         80      59
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean            0.023  0.0188
#>   std. dev.      0.0151   0.013
#>   weight sum         80      59
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0198   0.013
#>   std. dev.      0.0149  0.0097
#>   weight sum         80      59
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0164  0.0109
#>   std. dev.       0.011  0.0079
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0117   0.009
#>   std. dev.      0.0078  0.0057
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0096
#>   std. dev.      0.0092  0.0055
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0108  0.0088
#>   std. dev.       0.009  0.0054
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0075
#>   std. dev.      0.0068  0.0052
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0081
#>   std. dev.      0.0065  0.0056
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0098  0.0073
#>   std. dev.       0.008  0.0053
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0095  0.0076
#>   std. dev.      0.0075  0.0055
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1138  0.0878
#>   std. dev.      0.0544  0.0492
#>   weight sum         80      59
#>   precision       0.002   0.002
#> 
#> V60
#>   mean            0.007  0.0062
#>   std. dev.      0.0062  0.0038
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1311  0.1102
#>   std. dev.      0.0564  0.0549
#>   weight sum         80      59
#>   precision       0.002   0.002
#> 
#> V8
#>   mean           0.1535  0.1137
#>   std. dev.      0.0847  0.0766
#>   weight sum         80      59
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2145  0.1231
#>   std. dev.      0.1195  0.1008
#>   weight sum         80      59
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
