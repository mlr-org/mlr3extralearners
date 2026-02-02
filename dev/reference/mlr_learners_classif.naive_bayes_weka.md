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
#>   mean           0.0344  0.0232
#>   std. dev.      0.0286   0.014
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2533  0.1509
#>   std. dev.      0.1414  0.1075
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2892  0.1759
#>   std. dev.      0.1196  0.1154
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3039  0.2029
#>   std. dev.      0.1211  0.1347
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean             0.31  0.2454
#>   std. dev.      0.1292  0.1475
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3203  0.2928
#>   std. dev.      0.1656  0.1736
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3286  0.3433
#>   std. dev.      0.2015  0.2209
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3735  0.4045
#>   std. dev.      0.2133  0.2564
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3955  0.4361
#>   std. dev.      0.2321  0.2946
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4456  0.4632
#>   std. dev.      0.2433  0.2804
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5323  0.4872
#>   std. dev.      0.2437   0.277
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean            0.044  0.0307
#>   std. dev.      0.0368  0.0205
#>   weight sum         79      60
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6216  0.5194
#>   std. dev.      0.2508  0.2806
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6727  0.5389
#>   std. dev.      0.2573  0.2672
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6686  0.5417
#>   std. dev.      0.2444  0.2741
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6783  0.5898
#>   std. dev.      0.2523  0.2315
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7024  0.6516
#>   std. dev.      0.2392  0.2183
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6947  0.6745
#>   std. dev.        0.24  0.2523
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7221  0.7036
#>   std. dev.      0.2286  0.2346
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7186  0.6852
#>   std. dev.      0.2661  0.2041
#>   weight sum         79      60
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7081  0.6603
#>   std. dev.      0.2562  0.1964
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6476  0.6111
#>   std. dev.      0.2399  0.2423
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean            0.048  0.0378
#>   std. dev.      0.0422  0.0264
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5821   0.551
#>   std. dev.      0.2064  0.2452
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.469  0.5023
#>   std. dev.      0.2151  0.2002
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4115  0.4291
#>   std. dev.      0.2064  0.2115
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4008  0.4143
#>   std. dev.      0.2059  0.2167
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3811  0.4166
#>   std. dev.      0.2147  0.2614
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean             0.35  0.4054
#>   std. dev.       0.254  0.2693
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3474  0.4113
#>   std. dev.      0.2669  0.2643
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3473  0.3641
#>   std. dev.      0.2488  0.2455
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3465  0.2871
#>   std. dev.      0.2276  0.2062
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V39
#>   mean            0.348  0.2865
#>   std. dev.      0.1917  0.1865
#>   weight sum         79      60
#>   precision      0.0062  0.0062
#> 
#> V4
#>   mean           0.0609  0.0429
#>   std. dev.      0.0553  0.0315
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3321  0.3029
#>   std. dev.      0.1622  0.1713
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V41
#>   mean           0.2945  0.2771
#>   std. dev.      0.1639  0.1469
#>   weight sum         79      60
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.2949  0.2487
#>   std. dev.      0.1415  0.1428
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V43
#>   mean           0.2797  0.1987
#>   std. dev.      0.1211  0.1049
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V44
#>   mean           0.2554  0.1624
#>   std. dev.      0.1426  0.0791
#>   weight sum         79      60
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2488  0.1259
#>   std. dev.       0.161   0.065
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.1918  0.1044
#>   std. dev.      0.1204  0.0646
#>   weight sum         79      60
#>   precision      0.0044  0.0044
#> 
#> V47
#>   mean           0.1392  0.0854
#>   std. dev.       0.079  0.0472
#>   weight sum         79      60
#>   precision       0.003   0.003
#> 
#> V48
#>   mean           0.1074  0.0628
#>   std. dev.      0.0637  0.0353
#>   weight sum         79      60
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0618  0.0366
#>   std. dev.      0.0335  0.0221
#>   weight sum         79      60
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0829  0.0626
#>   std. dev.      0.0573  0.0515
#>   weight sum         79      60
#>   precision       0.003   0.003
#> 
#> V50
#>   mean            0.021   0.017
#>   std. dev.       0.012  0.0098
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V51
#>   mean           0.0171  0.0118
#>   std. dev.      0.0093  0.0069
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0148  0.0094
#>   std. dev.      0.0092  0.0056
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0092
#>   std. dev.      0.0069  0.0058
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0118  0.0096
#>   std. dev.      0.0083  0.0052
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0093   0.008
#>   std. dev.      0.0076  0.0047
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0081  0.0073
#>   std. dev.      0.0059  0.0046
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0074  0.0078
#>   std. dev.       0.005  0.0053
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0079  0.0059
#>   std. dev.      0.0055  0.0044
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0078  0.0068
#>   std. dev.      0.0063  0.0043
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1072   0.092
#>   std. dev.      0.0525  0.0671
#>   weight sum         79      60
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0067  0.0058
#>   std. dev.      0.0061  0.0032
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1276  0.1052
#>   std. dev.      0.0606  0.0624
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1507  0.1074
#>   std. dev.       0.093  0.0781
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2169  0.1301
#>   std. dev.      0.1332  0.0897
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3768116 
```
