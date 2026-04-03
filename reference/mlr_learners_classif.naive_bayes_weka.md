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
#>                 (0.54)  (0.46)
#> ===============================
#> V1
#>   mean           0.0335  0.0219
#>   std. dev.      0.0238  0.0127
#>   weight sum         75      64
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2552  0.1706
#>   std. dev.      0.1426  0.1281
#>   weight sum         75      64
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.2909  0.1801
#>   std. dev.      0.1357  0.1215
#>   weight sum         75      64
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2975  0.1924
#>   std. dev.      0.1269   0.133
#>   weight sum         75      64
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3147   0.224
#>   std. dev.      0.1261  0.1251
#>   weight sum         75      64
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3182  0.2659
#>   std. dev.      0.1461  0.1563
#>   weight sum         75      64
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3265  0.3031
#>   std. dev.      0.1844  0.2219
#>   weight sum         75      64
#>   precision      0.0061  0.0061
#> 
#> V16
#>   mean           0.3811  0.3749
#>   std. dev.      0.2017  0.2557
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean             0.42   0.409
#>   std. dev.      0.2267  0.2904
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4639   0.439
#>   std. dev.       0.243  0.2646
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5515  0.4497
#>   std. dev.      0.2424  0.2635
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0439  0.0323
#>   std. dev.      0.0364  0.0259
#>   weight sum         75      64
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6369  0.4939
#>   std. dev.      0.2424  0.2652
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6924  0.5507
#>   std. dev.      0.2429  0.2451
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6976  0.5731
#>   std. dev.      0.2414  0.2478
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6931  0.5884
#>   std. dev.      0.2565  0.2365
#>   weight sum         75      64
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6961  0.6439
#>   std. dev.      0.2548  0.2263
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6852  0.6682
#>   std. dev.        0.25  0.2409
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7052  0.6816
#>   std. dev.      0.2398  0.2328
#>   weight sum         75      64
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7147  0.6849
#>   std. dev.      0.2674  0.2097
#>   weight sum         75      64
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7075  0.6781
#>   std. dev.      0.2559  0.1937
#>   weight sum         75      64
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean            0.647  0.6356
#>   std. dev.      0.2374  0.2396
#>   weight sum         75      64
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0509  0.0377
#>   std. dev.      0.0487  0.0323
#>   weight sum         75      64
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.582  0.5892
#>   std. dev.      0.2066  0.2243
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V31
#>   mean           0.4741  0.5382
#>   std. dev.      0.2146  0.2021
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4155  0.4546
#>   std. dev.      0.2099  0.2192
#>   weight sum         75      64
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3888  0.4328
#>   std. dev.      0.2011   0.215
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3509  0.4293
#>   std. dev.       0.218  0.2433
#>   weight sum         75      64
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3203  0.4418
#>   std. dev.      0.2419  0.2389
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3185  0.4474
#>   std. dev.      0.2396  0.2397
#>   weight sum         75      64
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.325  0.4142
#>   std. dev.      0.2198  0.2265
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3351  0.3605
#>   std. dev.      0.1968  0.2068
#>   weight sum         75      64
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3376  0.3248
#>   std. dev.      0.1807  0.2262
#>   weight sum         75      64
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0686  0.0433
#>   std. dev.      0.0602  0.0351
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2963   0.332
#>   std. dev.      0.1649  0.2051
#>   weight sum         75      64
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean            0.275   0.291
#>   std. dev.      0.1589  0.1819
#>   weight sum         75      64
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2913  0.2531
#>   std. dev.      0.1506  0.1649
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2726  0.2138
#>   std. dev.      0.1164  0.1358
#>   weight sum         75      64
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2456  0.1812
#>   std. dev.      0.1329  0.1157
#>   weight sum         75      64
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2366  0.1516
#>   std. dev.      0.1612  0.1079
#>   weight sum         75      64
#>   precision      0.0045  0.0045
#> 
#> V46
#>   mean           0.1862   0.125
#>   std. dev.      0.1365  0.1036
#>   weight sum         75      64
#>   precision      0.0042  0.0042
#> 
#> V47
#>   mean           0.1404  0.1001
#>   std. dev.      0.0861  0.0745
#>   weight sum         75      64
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1072  0.0709
#>   std. dev.      0.0657  0.0524
#>   weight sum         75      64
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0627  0.0395
#>   std. dev.      0.0351  0.0324
#>   weight sum         75      64
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0857  0.0644
#>   std. dev.      0.0657   0.053
#>   weight sum         75      64
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0179
#>   std. dev.      0.0141  0.0134
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0194  0.0122
#>   std. dev.      0.0116  0.0086
#>   weight sum         75      64
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0155    0.01
#>   std. dev.      0.0092  0.0063
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0113  0.0099
#>   std. dev.      0.0081  0.0065
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013  0.0097
#>   std. dev.      0.0088  0.0055
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0097  0.0092
#>   std. dev.      0.0081  0.0056
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0091  0.0074
#>   std. dev.      0.0069  0.0046
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0085  0.0076
#>   std. dev.      0.0063  0.0054
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0066
#>   std. dev.       0.008  0.0048
#>   weight sum         75      64
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0089  0.0071
#>   std. dev.      0.0067  0.0049
#>   weight sum         75      64
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1079  0.0967
#>   std. dev.      0.0526  0.0714
#>   weight sum         75      64
#>   precision      0.0027  0.0027
#> 
#> V60
#>   mean            0.007  0.0063
#>   std. dev.      0.0051  0.0039
#>   weight sum         75      64
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean            0.125  0.1174
#>   std. dev.      0.0592  0.0736
#>   weight sum         75      64
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1504  0.1267
#>   std. dev.      0.0892  0.0805
#>   weight sum         75      64
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2173  0.1465
#>   std. dev.      0.1242  0.1098
#>   weight sum         75      64
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
