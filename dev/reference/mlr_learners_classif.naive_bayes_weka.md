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
#>   mean           0.0383  0.0235
#>   std. dev.      0.0306   0.016
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean            0.251  0.1634
#>   std. dev.       0.142  0.1211
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean            0.292  0.1784
#>   std. dev.      0.1162  0.1166
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean            0.299  0.2009
#>   std. dev.      0.1162  0.1315
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3109  0.2245
#>   std. dev.      0.1249  0.1318
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3227  0.2631
#>   std. dev.       0.163   0.152
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3445  0.3019
#>   std. dev.      0.1902  0.2044
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V16
#>   mean           0.3872  0.3717
#>   std. dev.      0.2088   0.243
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.4067  0.4168
#>   std. dev.      0.2302  0.2843
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4381  0.4572
#>   std. dev.      0.2506  0.2755
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5291  0.4746
#>   std. dev.      0.2485  0.2696
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0523  0.0302
#>   std. dev.      0.0398  0.0204
#>   weight sum         72      67
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6215  0.5199
#>   std. dev.      0.2425  0.2608
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6756  0.5618
#>   std. dev.      0.2415  0.2434
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6689  0.5796
#>   std. dev.      0.2337  0.2563
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6698  0.6186
#>   std. dev.      0.2466   0.246
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6795  0.6557
#>   std. dev.       0.241  0.2249
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6641  0.6749
#>   std. dev.      0.2365  0.2517
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7002  0.6934
#>   std. dev.      0.2268  0.2427
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7187  0.6921
#>   std. dev.      0.2595  0.2041
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V28
#>   mean           0.7304   0.686
#>   std. dev.      0.2411  0.2027
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6789  0.6346
#>   std. dev.      0.2222  0.2378
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V3
#>   mean            0.053  0.0351
#>   std. dev.      0.0462  0.0268
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.606  0.5707
#>   std. dev.      0.2036  0.2302
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4918  0.5098
#>   std. dev.       0.222  0.2026
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V32
#>   mean           0.4232    0.44
#>   std. dev.      0.2132  0.2197
#>   weight sum         72      67
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3889  0.4391
#>   std. dev.      0.2071  0.2244
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3696  0.4488
#>   std. dev.      0.2107  0.2565
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3432  0.4565
#>   std. dev.      0.2459  0.2651
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3115   0.453
#>   std. dev.      0.2433  0.2665
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3086  0.4089
#>   std. dev.      0.2245  0.2518
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3288  0.3625
#>   std. dev.      0.2082   0.231
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean             0.33  0.3258
#>   std. dev.      0.1943  0.2094
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0672   0.043
#>   std. dev.      0.0605  0.0319
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3064  0.3162
#>   std. dev.      0.1618  0.1827
#>   weight sum         72      67
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3046  0.2776
#>   std. dev.      0.1653  0.1586
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3187  0.2443
#>   std. dev.      0.1791  0.1501
#>   weight sum         72      67
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2882   0.205
#>   std. dev.      0.1464  0.1079
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2497  0.1628
#>   std. dev.      0.1388  0.0884
#>   weight sum         72      67
#>   precision      0.0044  0.0044
#> 
#> V45
#>   mean           0.2631   0.133
#>   std. dev.      0.1748  0.0746
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2131  0.1089
#>   std. dev.      0.1579  0.0788
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1486  0.0877
#>   std. dev.      0.0976   0.055
#>   weight sum         72      67
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1081  0.0629
#>   std. dev.      0.0661  0.0381
#>   weight sum         72      67
#>   precision      0.0025  0.0025
#> 
#> V49
#>   mean           0.0656  0.0341
#>   std. dev.      0.0373  0.0222
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0913  0.0639
#>   std. dev.      0.0648  0.0496
#>   weight sum         72      67
#>   precision      0.0029  0.0029
#> 
#> V50
#>   mean           0.0233  0.0177
#>   std. dev.      0.0146  0.0116
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V51
#>   mean           0.0192  0.0123
#>   std. dev.       0.015  0.0088
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0167  0.0118
#>   std. dev.      0.0117  0.0076
#>   weight sum         72      67
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0116  0.0103
#>   std. dev.      0.0076  0.0065
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0119  0.0099
#>   std. dev.      0.0084  0.0054
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101   0.009
#>   std. dev.      0.0081  0.0048
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0083  0.0075
#>   std. dev.      0.0055  0.0047
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean           0.0077  0.0079
#>   std. dev.      0.0051  0.0061
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0092  0.0068
#>   std. dev.      0.0062  0.0046
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V59
#>   mean           0.0084  0.0067
#>   std. dev.      0.0057  0.0045
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1146  0.0984
#>   std. dev.      0.0513  0.0694
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0062
#>   std. dev.      0.0048  0.0036
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1281  0.1172
#>   std. dev.      0.0581  0.0681
#>   weight sum         72      67
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1598  0.1207
#>   std. dev.      0.0884  0.0788
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2196  0.1437
#>   std. dev.      0.1222  0.1073
#>   weight sum         72      67
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
