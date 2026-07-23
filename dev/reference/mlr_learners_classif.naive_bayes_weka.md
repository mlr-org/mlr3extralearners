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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean           0.0332  0.0236
#>   std. dev.      0.0252  0.0143
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.252  0.1715
#>   std. dev.      0.1296  0.1227
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2898  0.1833
#>   std. dev.      0.1217  0.1212
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3043  0.2044
#>   std. dev.      0.1303   0.142
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3207  0.2369
#>   std. dev.       0.137  0.1427
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean            0.329  0.2657
#>   std. dev.      0.1665  0.1697
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3295  0.2946
#>   std. dev.      0.1938  0.2153
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3821  0.3579
#>   std. dev.      0.2132  0.2534
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4111  0.3977
#>   std. dev.      0.2434  0.2856
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4516  0.4346
#>   std. dev.      0.2506  0.2675
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5264  0.4656
#>   std. dev.      0.2506    0.25
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0432  0.0297
#>   std. dev.      0.0346  0.0198
#>   weight sum         74      65
#>   precision      0.0013  0.0013
#> 
#> V20
#>   mean           0.6057  0.5106
#>   std. dev.      0.2552  0.2559
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean            0.652  0.5517
#>   std. dev.       0.261  0.2562
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean            0.654  0.5693
#>   std. dev.      0.2505  0.2691
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean             0.66  0.6069
#>   std. dev.      0.2622  0.2405
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6729  0.6252
#>   std. dev.      0.2463  0.2351
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.6804  0.6387
#>   std. dev.      0.2354  0.2597
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean             0.72  0.6797
#>   std. dev.      0.2253  0.2517
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V27
#>   mean           0.7368  0.6874
#>   std. dev.      0.2587  0.2296
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V28
#>   mean           0.7488  0.6778
#>   std. dev.      0.2513  0.2138
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6871  0.6492
#>   std. dev.      0.2426  0.2394
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0485  0.0349
#>   std. dev.      0.0395  0.0269
#>   weight sum         74      65
#>   precision      0.0016  0.0016
#> 
#> V30
#>   mean           0.6014   0.587
#>   std. dev.      0.2171  0.2401
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean            0.488   0.525
#>   std. dev.      0.2248  0.2039
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4339  0.4506
#>   std. dev.      0.2051  0.2062
#>   weight sum         74      65
#>   precision      0.0061  0.0061
#> 
#> V33
#>   mean           0.3984  0.4462
#>   std. dev.      0.1835  0.2179
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3517  0.4532
#>   std. dev.      0.1907  0.2429
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3071  0.4405
#>   std. dev.      0.2307  0.2622
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean            0.297  0.4437
#>   std. dev.      0.2414  0.2583
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.3041  0.4056
#>   std. dev.      0.2187  0.2248
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3254   0.349
#>   std. dev.      0.1969  0.2174
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3405  0.3281
#>   std. dev.      0.1831  0.2114
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0659  0.0413
#>   std. dev.      0.0453  0.0306
#>   weight sum         74      65
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.3004  0.3181
#>   std. dev.       0.163  0.2016
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2867  0.2782
#>   std. dev.      0.1536    0.19
#>   weight sum         74      65
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean            0.306  0.2442
#>   std. dev.      0.1606  0.1753
#>   weight sum         74      65
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2821  0.2093
#>   std. dev.      0.1351  0.1424
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2463  0.1766
#>   std. dev.       0.145  0.1199
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V45
#>   mean           0.2468  0.1386
#>   std. dev.      0.1663  0.0999
#>   weight sum         74      65
#>   precision      0.0044  0.0044
#> 
#> V46
#>   mean           0.1937  0.1079
#>   std. dev.      0.1388  0.0999
#>   weight sum         74      65
#>   precision      0.0043  0.0043
#> 
#> V47
#>   mean           0.1437  0.0909
#>   std. dev.      0.0861  0.0694
#>   weight sum         74      65
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1138  0.0661
#>   std. dev.      0.0639  0.0462
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0668  0.0358
#>   std. dev.      0.0363  0.0284
#>   weight sum         74      65
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0923  0.0622
#>   std. dev.      0.0549  0.0439
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0228  0.0178
#>   std. dev.      0.0154  0.0122
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0196  0.0112
#>   std. dev.      0.0117  0.0081
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0155  0.0105
#>   std. dev.      0.0095  0.0074
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0115  0.0103
#>   std. dev.      0.0078  0.0064
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0113  0.0092
#>   std. dev.      0.0083  0.0053
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0086
#>   std. dev.      0.0083   0.005
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0093  0.0081
#>   std. dev.      0.0071  0.0052
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0079
#>   std. dev.      0.0064  0.0056
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0072
#>   std. dev.      0.0085  0.0053
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0085  0.0075
#>   std. dev.      0.0064  0.0054
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1121  0.0951
#>   std. dev.      0.0516    0.06
#>   weight sum         74      65
#>   precision      0.0023  0.0023
#> 
#> V60
#>   mean           0.0066   0.006
#>   std. dev.      0.0047  0.0039
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1253  0.1109
#>   std. dev.      0.0544  0.0636
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1543  0.1197
#>   std. dev.      0.0842  0.0798
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2157  0.1435
#>   std. dev.      0.1229  0.1073
#>   weight sum         74      65
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
