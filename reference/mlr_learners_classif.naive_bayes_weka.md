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
#>   mean           0.0353  0.0232
#>   std. dev.      0.0284  0.0147
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2413  0.1563
#>   std. dev.      0.1263   0.113
#>   weight sum         72      67
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2806  0.1733
#>   std. dev.      0.1161   0.108
#>   weight sum         72      67
#>   precision      0.0045  0.0045
#> 
#> V12
#>   mean           0.2965  0.1901
#>   std. dev.      0.1182  0.1365
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3155  0.2221
#>   std. dev.      0.1313   0.135
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3255  0.2718
#>   std. dev.      0.1582   0.172
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3292  0.3182
#>   std. dev.      0.1875  0.2285
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3774   0.392
#>   std. dev.      0.2011  0.2641
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean            0.415  0.4315
#>   std. dev.      0.2319  0.2876
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4562  0.4535
#>   std. dev.       0.247    0.27
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5404  0.4632
#>   std. dev.        0.24  0.2564
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0434   0.032
#>   std. dev.      0.0381  0.0252
#>   weight sum         72      67
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6104  0.4906
#>   std. dev.       0.246  0.2578
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6594  0.5221
#>   std. dev.      0.2487   0.242
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6688  0.5468
#>   std. dev.      0.2459  0.2658
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V23
#>   mean           0.6739  0.6073
#>   std. dev.      0.2601  0.2499
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6914  0.6534
#>   std. dev.      0.2506  0.2483
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6955  0.6671
#>   std. dev.      0.2316  0.2615
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7253  0.6825
#>   std. dev.      0.2324   0.243
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7337  0.6962
#>   std. dev.      0.2644  0.2103
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7326  0.6937
#>   std. dev.      0.2571  0.1786
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6627   0.649
#>   std. dev.      0.2441  0.2289
#>   weight sum         72      67
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0501  0.0381
#>   std. dev.       0.045  0.0324
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5712  0.5939
#>   std. dev.      0.1995  0.2269
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4764  0.5402
#>   std. dev.      0.2039  0.1915
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4368  0.4556
#>   std. dev.      0.2081  0.2072
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3961  0.4584
#>   std. dev.      0.1909  0.2045
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3452  0.4593
#>   std. dev.      0.1962  0.2515
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3075  0.4683
#>   std. dev.      0.2387  0.2559
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.2902  0.4823
#>   std. dev.      0.2318  0.2641
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.2883  0.4447
#>   std. dev.      0.2156  0.2549
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3154    0.37
#>   std. dev.      0.1898  0.2336
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V39
#>   mean           0.3232   0.323
#>   std. dev.      0.1829   0.212
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0636  0.0427
#>   std. dev.      0.0578  0.0309
#>   weight sum         72      67
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2946  0.3202
#>   std. dev.       0.153  0.1818
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2833  0.2848
#>   std. dev.      0.1576  0.1746
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2892  0.2544
#>   std. dev.      0.1718  0.1653
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2682  0.2085
#>   std. dev.      0.1429   0.118
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2484  0.1673
#>   std. dev.      0.1472  0.0831
#>   weight sum         72      67
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2419  0.1363
#>   std. dev.      0.1815  0.0777
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2019  0.1148
#>   std. dev.      0.1548  0.0877
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1494  0.0943
#>   std. dev.      0.0992  0.0656
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1114   0.071
#>   std. dev.      0.0681  0.0496
#>   weight sum         72      67
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0621  0.0404
#>   std. dev.      0.0352   0.033
#>   weight sum         72      67
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0871  0.0616
#>   std. dev.      0.0593   0.044
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0222   0.018
#>   std. dev.       0.013  0.0136
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0192  0.0128
#>   std. dev.      0.0135  0.0094
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0117
#>   std. dev.      0.0121  0.0076
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0114  0.0105
#>   std. dev.      0.0084  0.0066
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0095
#>   std. dev.      0.0084  0.0058
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0099  0.0089
#>   std. dev.      0.0086  0.0054
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0072
#>   std. dev.      0.0061  0.0045
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079   0.008
#>   std. dev.      0.0063  0.0058
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0092  0.0071
#>   std. dev.       0.008   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0087   0.007
#>   std. dev.      0.0073  0.0049
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1084  0.0967
#>   std. dev.      0.0519  0.0597
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V60
#>   mean           0.0069  0.0061
#>   std. dev.      0.0064  0.0036
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1303  0.1144
#>   std. dev.       0.056  0.0637
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V8
#>   mean            0.144   0.118
#>   std. dev.      0.0787  0.0768
#>   weight sum         72      67
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2107  0.1395
#>   std. dev.      0.1118  0.0977
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
