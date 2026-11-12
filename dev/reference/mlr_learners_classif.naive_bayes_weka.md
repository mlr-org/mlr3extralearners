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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0348  0.0222
#>   std. dev.      0.0274  0.0128
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2416  0.1634
#>   std. dev.      0.1224  0.1239
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean           0.2872  0.1817
#>   std. dev.      0.1114  0.1207
#>   weight sum         79      60
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3063  0.1894
#>   std. dev.      0.1217  0.1398
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3152  0.2232
#>   std. dev.      0.1315    0.14
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3121  0.2624
#>   std. dev.      0.1454  0.1656
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V15
#>   mean           0.3158  0.3148
#>   std. dev.      0.1828  0.2173
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3635  0.3922
#>   std. dev.      0.2076   0.249
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4018  0.4407
#>   std. dev.      0.2349  0.2866
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4397  0.4681
#>   std. dev.      0.2512  0.2761
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5167  0.4726
#>   std. dev.       0.258  0.2783
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.046  0.0306
#>   std. dev.      0.0404  0.0262
#>   weight sum         79      60
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6002  0.4968
#>   std. dev.      0.2602  0.2789
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6577  0.5434
#>   std. dev.      0.2548  0.2691
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6651  0.5742
#>   std. dev.      0.2321  0.2764
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean            0.671  0.6068
#>   std. dev.      0.2319  0.2567
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6936  0.6395
#>   std. dev.      0.2172  0.2417
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6896  0.6479
#>   std. dev.      0.2334  0.2672
#>   weight sum         79      60
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7175  0.6722
#>   std. dev.       0.234  0.2506
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V27
#>   mean            0.728  0.6699
#>   std. dev.      0.2654  0.2256
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7256  0.6749
#>   std. dev.      0.2652  0.2052
#>   weight sum         79      60
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6553  0.6279
#>   std. dev.      0.2518  0.2145
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0524   0.037
#>   std. dev.      0.0481  0.0309
#>   weight sum         79      60
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5935  0.5764
#>   std. dev.      0.1984  0.2092
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V31
#>   mean           0.4981  0.5267
#>   std. dev.       0.218   0.199
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean            0.446  0.4378
#>   std. dev.      0.2183  0.2108
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4023  0.4111
#>   std. dev.      0.1986  0.2025
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3629  0.4307
#>   std. dev.      0.2047  0.2594
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3299  0.4545
#>   std. dev.      0.2437  0.2649
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3112  0.4573
#>   std. dev.      0.2491  0.2632
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3035  0.3971
#>   std. dev.      0.2215  0.2451
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V38
#>   mean           0.3261  0.3399
#>   std. dev.      0.2012  0.2281
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3386  0.3133
#>   std. dev.      0.1887  0.2335
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0665  0.0437
#>   std. dev.      0.0609  0.0335
#>   weight sum         79      60
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.2996  0.3257
#>   std. dev.      0.1652  0.2196
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2958   0.289
#>   std. dev.      0.1749  0.1921
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3101   0.251
#>   std. dev.      0.1747  0.1709
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2797  0.2128
#>   std. dev.      0.1332  0.1362
#>   weight sum         79      60
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2527  0.1753
#>   std. dev.      0.1436  0.1108
#>   weight sum         79      60
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean            0.251  0.1374
#>   std. dev.       0.178  0.0998
#>   weight sum         79      60
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.2001  0.1141
#>   std. dev.      0.1506  0.1007
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1464  0.0984
#>   std. dev.      0.0851   0.075
#>   weight sum         79      60
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean            0.112  0.0733
#>   std. dev.        0.06  0.0506
#>   weight sum         79      60
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0638  0.0407
#>   std. dev.      0.0336  0.0307
#>   weight sum         79      60
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0872  0.0673
#>   std. dev.      0.0637   0.049
#>   weight sum         79      60
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0224  0.0183
#>   std. dev.      0.0148  0.0137
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0198  0.0135
#>   std. dev.      0.0118  0.0088
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0159  0.0108
#>   std. dev.      0.0097  0.0073
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0112  0.0098
#>   std. dev.      0.0077  0.0063
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.012  0.0098
#>   std. dev.      0.0082  0.0053
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0089
#>   std. dev.      0.0084  0.0053
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0072
#>   std. dev.      0.0069  0.0046
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0079
#>   std. dev.      0.0064  0.0058
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0084  0.0072
#>   std. dev.      0.0069  0.0052
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0087  0.0074
#>   std. dev.      0.0072  0.0058
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1104  0.0985
#>   std. dev.      0.0481  0.0626
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0072  0.0064
#>   std. dev.      0.0066   0.004
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1248  0.1177
#>   std. dev.      0.0516  0.0658
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean            0.141   0.124
#>   std. dev.      0.0787    0.08
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2039   0.143
#>   std. dev.      0.1134  0.1042
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2173913 
```
