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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>   mean            0.036  0.0214
#>   std. dev.      0.0277  0.0147
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2568  0.1511
#>   std. dev.      0.1445  0.1113
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2989  0.1683
#>   std. dev.      0.1343  0.1042
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3067  0.1901
#>   std. dev.      0.1328  0.1241
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3217  0.2277
#>   std. dev.       0.143  0.1331
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3335  0.2601
#>   std. dev.      0.1648  0.1635
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3418  0.2816
#>   std. dev.      0.1955  0.2118
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3898  0.3566
#>   std. dev.      0.2112  0.2405
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4268  0.3928
#>   std. dev.      0.2363  0.2651
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4668  0.4261
#>   std. dev.      0.2587  0.2489
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5619   0.447
#>   std. dev.      0.2481  0.2376
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0475  0.0307
#>   std. dev.      0.0328  0.0246
#>   weight sum         76      63
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6603  0.4792
#>   std. dev.      0.2372  0.2473
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.7203  0.5307
#>   std. dev.      0.2194  0.2456
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7078  0.5476
#>   std. dev.      0.2226  0.2652
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean           0.6802  0.6055
#>   std. dev.       0.254  0.2452
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean            0.679  0.6593
#>   std. dev.      0.2516  0.2322
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6612  0.6792
#>   std. dev.      0.2454  0.2588
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6851  0.6893
#>   std. dev.      0.2316  0.2448
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.6855  0.6946
#>   std. dev.      0.2727  0.2184
#>   weight sum         76      63
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.6864  0.6974
#>   std. dev.      0.2661  0.2014
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6279  0.6517
#>   std. dev.      0.2493  0.2335
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0509  0.0332
#>   std. dev.      0.0386  0.0274
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5668  0.5757
#>   std. dev.      0.2086  0.2243
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4671  0.5151
#>   std. dev.      0.2052  0.1955
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean            0.425  0.4357
#>   std. dev.      0.2135  0.1882
#>   weight sum         76      63
#>   precision      0.0061  0.0061
#> 
#> V33
#>   mean           0.4046  0.4217
#>   std. dev.      0.1998  0.1979
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3805  0.4264
#>   std. dev.      0.2102  0.2427
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3508  0.4459
#>   std. dev.      0.2496  0.2585
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3211  0.4587
#>   std. dev.      0.2391  0.2605
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3102  0.4152
#>   std. dev.      0.2246   0.246
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3405  0.3558
#>   std. dev.       0.211  0.2206
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3477  0.3242
#>   std. dev.      0.1921   0.208
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0628  0.0404
#>   std. dev.      0.0463  0.0272
#>   weight sum         76      63
#>   precision      0.0021  0.0021
#> 
#> V40
#>   mean           0.2999  0.3152
#>   std. dev.      0.1633  0.1903
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2847   0.271
#>   std. dev.      0.1721  0.1699
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.3041  0.2449
#>   std. dev.      0.1839  0.1653
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2896  0.2082
#>   std. dev.      0.1406  0.1344
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2597  0.1753
#>   std. dev.      0.1419  0.1119
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2527   0.136
#>   std. dev.      0.1788  0.0989
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2042  0.1105
#>   std. dev.      0.1601  0.0914
#>   weight sum         76      63
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1464  0.0895
#>   std. dev.      0.0968  0.0662
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1106  0.0664
#>   std. dev.      0.0665  0.0493
#>   weight sum         76      63
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0646  0.0371
#>   std. dev.      0.0357  0.0322
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0835  0.0625
#>   std. dev.      0.0552  0.0423
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0226  0.0177
#>   std. dev.      0.0144  0.0134
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0212  0.0118
#>   std. dev.      0.0151  0.0088
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0163  0.0109
#>   std. dev.      0.0112  0.0074
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0114  0.0101
#>   std. dev.      0.0082  0.0059
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0098
#>   std. dev.      0.0088  0.0054
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104  0.0087
#>   std. dev.      0.0086  0.0052
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0092  0.0074
#>   std. dev.       0.007  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0076
#>   std. dev.      0.0063  0.0056
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0067
#>   std. dev.       0.008   0.005
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0076
#>   std. dev.       0.007  0.0057
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1087  0.0973
#>   std. dev.       0.051  0.0687
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0062
#>   std. dev.      0.0064   0.004
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.125  0.1191
#>   std. dev.      0.0618  0.0699
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1465  0.1193
#>   std. dev.       0.088  0.0786
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2195  0.1345
#>   std. dev.      0.1225  0.0992
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
