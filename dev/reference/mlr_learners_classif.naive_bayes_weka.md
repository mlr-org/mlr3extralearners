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
#>                 (0.53)  (0.47)
#> ===============================
#> V1
#>   mean            0.035  0.0242
#>   std. dev.      0.0273  0.0162
#>   weight sum         74      65
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2548  0.1578
#>   std. dev.      0.1222  0.1085
#>   weight sum         74      65
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2971  0.1743
#>   std. dev.       0.119  0.1136
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3105  0.1877
#>   std. dev.      0.1258  0.1288
#>   weight sum         74      65
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3267  0.2228
#>   std. dev.      0.1264  0.1305
#>   weight sum         74      65
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3302  0.2661
#>   std. dev.      0.1603  0.1537
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3248     0.3
#>   std. dev.      0.1924  0.1999
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean           0.3667  0.3682
#>   std. dev.      0.2078  0.2426
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V17
#>   mean           0.3994   0.417
#>   std. dev.      0.2264  0.2875
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4403  0.4487
#>   std. dev.      0.2422   0.267
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5188  0.4735
#>   std. dev.      0.2488    0.26
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0424   0.033
#>   std. dev.      0.0357  0.0254
#>   weight sum         74      65
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean            0.597  0.4967
#>   std. dev.      0.2451  0.2692
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6582   0.537
#>   std. dev.       0.248  0.2508
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6734  0.5652
#>   std. dev.      0.2421  0.2721
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6888  0.6074
#>   std. dev.      0.2448  0.2472
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7187  0.6413
#>   std. dev.      0.2247  0.2409
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V25
#>   mean           0.7114  0.6507
#>   std. dev.      0.2262  0.2548
#>   weight sum         74      65
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7376  0.6675
#>   std. dev.       0.221  0.2462
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.747  0.6673
#>   std. dev.      0.2473  0.2345
#>   weight sum         74      65
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7365  0.6505
#>   std. dev.      0.2466   0.214
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean            0.664  0.6062
#>   std. dev.      0.2409  0.2219
#>   weight sum         74      65
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0507   0.038
#>   std. dev.      0.0458  0.0303
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5859  0.5487
#>   std. dev.      0.1944  0.2227
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4933  0.5083
#>   std. dev.       0.214  0.1941
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4366  0.4414
#>   std. dev.      0.2168  0.2162
#>   weight sum         74      65
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3974  0.4485
#>   std. dev.      0.1972   0.216
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3501   0.451
#>   std. dev.       0.205  0.2672
#>   weight sum         74      65
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean            0.299  0.4681
#>   std. dev.      0.2301   0.279
#>   weight sum         74      65
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2776  0.4952
#>   std. dev.      0.2242   0.279
#>   weight sum         74      65
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.268  0.4539
#>   std. dev.      0.2013  0.2559
#>   weight sum         74      65
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.2988  0.3765
#>   std. dev.      0.1893  0.2391
#>   weight sum         74      65
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3267  0.3562
#>   std. dev.       0.185  0.2312
#>   weight sum         74      65
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0627  0.0427
#>   std. dev.      0.0592  0.0342
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3028  0.3598
#>   std. dev.       0.168  0.2094
#>   weight sum         74      65
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2842  0.3124
#>   std. dev.      0.1638  0.1865
#>   weight sum         74      65
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean            0.291  0.2751
#>   std. dev.      0.1643  0.1707
#>   weight sum         74      65
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2686   0.227
#>   std. dev.      0.1345  0.1365
#>   weight sum         74      65
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2446  0.1888
#>   std. dev.      0.1434  0.1153
#>   weight sum         74      65
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean           0.2369   0.154
#>   std. dev.       0.168  0.0992
#>   weight sum         74      65
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1881  0.1252
#>   std. dev.      0.1442  0.0986
#>   weight sum         74      65
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1469  0.1046
#>   std. dev.      0.0919  0.0724
#>   weight sum         74      65
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1164  0.0812
#>   std. dev.      0.0654  0.0521
#>   weight sum         74      65
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0645  0.0448
#>   std. dev.      0.0343  0.0333
#>   weight sum         74      65
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0886  0.0662
#>   std. dev.      0.0642  0.0507
#>   weight sum         74      65
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0214  0.0188
#>   std. dev.      0.0137  0.0131
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0206  0.0133
#>   std. dev.      0.0133  0.0084
#>   weight sum         74      65
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0151  0.0104
#>   std. dev.      0.0101  0.0063
#>   weight sum         74      65
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean            0.011  0.0105
#>   std. dev.      0.0072  0.0064
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012  0.0104
#>   std. dev.      0.0087  0.0052
#>   weight sum         74      65
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0091
#>   std. dev.      0.0088  0.0052
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0077
#>   std. dev.      0.0068  0.0046
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0081  0.0079
#>   std. dev.      0.0065  0.0053
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0088  0.0071
#>   std. dev.      0.0077  0.0048
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0088  0.0076
#>   std. dev.      0.0073  0.0055
#>   weight sum         74      65
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean            0.114  0.0956
#>   std. dev.      0.0469  0.0585
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0068  0.0063
#>   std. dev.      0.0064  0.0038
#>   weight sum         74      65
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1279   0.116
#>   std. dev.      0.0518  0.0621
#>   weight sum         74      65
#>   precision      0.0022  0.0022
#> 
#> V8
#>   mean           0.1514  0.1169
#>   std. dev.      0.0782  0.0795
#>   weight sum         74      65
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2129  0.1323
#>   std. dev.      0.1044  0.0965
#>   weight sum         74      65
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
