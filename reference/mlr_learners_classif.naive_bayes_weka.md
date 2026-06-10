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
#>                 (0.49)  (0.51)
#> ===============================
#> V1
#>   mean           0.0324  0.0214
#>   std. dev.      0.0214   0.014
#>   weight sum         68      71
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2323  0.1627
#>   std. dev.      0.1167  0.1121
#>   weight sum         68      71
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2659  0.1771
#>   std. dev.      0.1132   0.112
#>   weight sum         68      71
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.2918  0.1803
#>   std. dev.      0.1084  0.1302
#>   weight sum         68      71
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3073  0.2164
#>   std. dev.      0.1051  0.1289
#>   weight sum         68      71
#>   precision      0.0043  0.0043
#> 
#> V14
#>   mean           0.3085  0.2656
#>   std. dev.      0.1299  0.1496
#>   weight sum         68      71
#>   precision      0.0049  0.0049
#> 
#> V15
#>   mean           0.3148  0.3084
#>   std. dev.      0.1661   0.201
#>   weight sum         68      71
#>   precision      0.0061  0.0061
#> 
#> V16
#>   mean           0.3623  0.3802
#>   std. dev.      0.1952  0.2418
#>   weight sum         68      71
#>   precision      0.0068  0.0068
#> 
#> V17
#>   mean           0.4165  0.4211
#>   std. dev.      0.2259  0.2785
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4642  0.4542
#>   std. dev.      0.2408  0.2596
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V19
#>   mean           0.5471  0.4822
#>   std. dev.       0.253  0.2586
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V2
#>   mean           0.0436  0.0302
#>   std. dev.      0.0373  0.0256
#>   weight sum         68      71
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6066  0.5095
#>   std. dev.      0.2623  0.2551
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V21
#>   mean           0.6513  0.5586
#>   std. dev.      0.2559  0.2529
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6686  0.5962
#>   std. dev.       0.236  0.2536
#>   weight sum         68      71
#>   precision      0.0065  0.0065
#> 
#> V23
#>   mean           0.6901   0.633
#>   std. dev.      0.2157  0.2381
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7162  0.6773
#>   std. dev.      0.2056  0.2204
#>   weight sum         68      71
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7102  0.6981
#>   std. dev.      0.2097  0.2189
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7293  0.7178
#>   std. dev.      0.2302  0.2225
#>   weight sum         68      71
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7494  0.6994
#>   std. dev.      0.2549   0.216
#>   weight sum         68      71
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7409  0.6764
#>   std. dev.      0.2632  0.1991
#>   weight sum         68      71
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6837  0.6238
#>   std. dev.       0.246  0.2291
#>   weight sum         68      71
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0512  0.0354
#>   std. dev.      0.0491  0.0307
#>   weight sum         68      71
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.6065  0.5743
#>   std. dev.      0.2054  0.2306
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.5128  0.5181
#>   std. dev.      0.2182  0.2042
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4491  0.4421
#>   std. dev.       0.212  0.2151
#>   weight sum         68      71
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3939  0.4252
#>   std. dev.      0.1918  0.2151
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V34
#>   mean           0.3389   0.419
#>   std. dev.      0.1872  0.2485
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.2921  0.4394
#>   std. dev.      0.2102  0.2483
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2747  0.4462
#>   std. dev.      0.2073  0.2545
#>   weight sum         68      71
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.2846  0.4053
#>   std. dev.      0.1971   0.247
#>   weight sum         68      71
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.2991  0.3321
#>   std. dev.      0.1703  0.2226
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3031   0.296
#>   std. dev.      0.1631  0.2093
#>   weight sum         68      71
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.066  0.0451
#>   std. dev.      0.0636  0.0338
#>   weight sum         68      71
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2835  0.3049
#>   std. dev.      0.1544  0.1921
#>   weight sum         68      71
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2939  0.2755
#>   std. dev.      0.1647  0.1633
#>   weight sum         68      71
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean           0.2996  0.2338
#>   std. dev.      0.1621   0.152
#>   weight sum         68      71
#>   precision      0.0052  0.0052
#> 
#> V43
#>   mean           0.2604   0.194
#>   std. dev.      0.1387  0.1194
#>   weight sum         68      71
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2321  0.1763
#>   std. dev.      0.1484  0.1114
#>   weight sum         68      71
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2216  0.1405
#>   std. dev.      0.1753  0.0929
#>   weight sum         68      71
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean            0.182  0.1119
#>   std. dev.       0.147  0.0842
#>   weight sum         68      71
#>   precision      0.0045  0.0045
#> 
#> V47
#>   mean           0.1422   0.093
#>   std. dev.      0.0937  0.0613
#>   weight sum         68      71
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1078  0.0698
#>   std. dev.      0.0677  0.0451
#>   weight sum         68      71
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0607   0.039
#>   std. dev.      0.0371  0.0273
#>   weight sum         68      71
#>   precision      0.0013  0.0013
#> 
#> V5
#>   mean           0.0944  0.0638
#>   std. dev.      0.0657  0.0484
#>   weight sum         68      71
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0213  0.0171
#>   std. dev.      0.0143  0.0107
#>   weight sum         68      71
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0186  0.0131
#>   std. dev.      0.0116  0.0086
#>   weight sum         68      71
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0158  0.0114
#>   std. dev.      0.0093  0.0074
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0101
#>   std. dev.      0.0077  0.0062
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0094
#>   std. dev.       0.008   0.005
#>   weight sum         68      71
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0094  0.0086
#>   std. dev.      0.0082  0.0052
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0087  0.0077
#>   std. dev.      0.0065  0.0048
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0074  0.0078
#>   std. dev.      0.0056  0.0062
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0081  0.0067
#>   std. dev.      0.0066   0.005
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0082  0.0071
#>   std. dev.      0.0072   0.005
#>   weight sum         68      71
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1079   0.096
#>   std. dev.      0.0525  0.0665
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0058
#>   std. dev.      0.0066  0.0038
#>   weight sum         68      71
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1203  0.1183
#>   std. dev.       0.052  0.0677
#>   weight sum         68      71
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1337   0.119
#>   std. dev.      0.0601  0.0809
#>   weight sum         68      71
#>   precision       0.003   0.003
#> 
#> V9
#>   mean           0.1976  0.1421
#>   std. dev.      0.0925  0.1004
#>   weight sum         68      71
#>   precision       0.004   0.004
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
