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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0362  0.0239
#>   std. dev.      0.0301  0.0153
#>   weight sum         76      63
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2637   0.166
#>   std. dev.      0.1433  0.1158
#>   weight sum         76      63
#>   precision       0.005   0.005
#> 
#> V11
#>   mean            0.293  0.1846
#>   std. dev.      0.1302  0.1141
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V12
#>   mean           0.2988  0.2081
#>   std. dev.      0.1283  0.1342
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3087  0.2393
#>   std. dev.      0.1409  0.1341
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3079  0.2811
#>   std. dev.      0.1482  0.1654
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V15
#>   mean           0.3189  0.3118
#>   std. dev.      0.1864  0.2199
#>   weight sum         76      63
#>   precision      0.0063  0.0063
#> 
#> V16
#>   mean           0.3725  0.3698
#>   std. dev.       0.204  0.2507
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.3986  0.4076
#>   std. dev.      0.2349  0.2845
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V18
#>   mean           0.4309  0.4412
#>   std. dev.      0.2535  0.2614
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V19
#>   mean           0.5183  0.4504
#>   std. dev.      0.2471  0.2584
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0451  0.0313
#>   std. dev.      0.0401  0.0206
#>   weight sum         76      63
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6064  0.4987
#>   std. dev.      0.2513  0.2594
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6577  0.5407
#>   std. dev.      0.2582  0.2302
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6537  0.5586
#>   std. dev.      0.2484  0.2526
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6504   0.602
#>   std. dev.      0.2595  0.2388
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.6649  0.6465
#>   std. dev.      0.2508  0.2312
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6623  0.6561
#>   std. dev.      0.2507   0.257
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V26
#>   mean           0.6954  0.6635
#>   std. dev.      0.2405  0.2414
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7124  0.6745
#>   std. dev.      0.2616  0.2129
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7255  0.6894
#>   std. dev.      0.2417  0.1809
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V29
#>   mean           0.6608  0.6484
#>   std. dev.      0.2374  0.2317
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0485  0.0377
#>   std. dev.      0.0437  0.0282
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean            0.592  0.5824
#>   std. dev.      0.2136  0.2457
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4835   0.539
#>   std. dev.      0.2352  0.1982
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean            0.442  0.4685
#>   std. dev.      0.2185  0.2018
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4132  0.4538
#>   std. dev.      0.1901  0.2193
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3909  0.4544
#>   std. dev.      0.2082   0.247
#>   weight sum         76      63
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3742  0.4491
#>   std. dev.      0.2558  0.2463
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3494  0.4495
#>   std. dev.      0.2636  0.2419
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V37
#>   mean           0.3425  0.4099
#>   std. dev.      0.2438  0.2387
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V38
#>   mean           0.3552  0.3459
#>   std. dev.      0.2229  0.2059
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3527  0.3182
#>   std. dev.      0.1898  0.1953
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0611  0.0438
#>   std. dev.      0.0572  0.0292
#>   weight sum         76      63
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3175  0.3281
#>   std. dev.      0.1634  0.1821
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3078  0.2941
#>   std. dev.      0.1663  0.1777
#>   weight sum         76      63
#>   precision      0.0062  0.0062
#> 
#> V42
#>   mean           0.3101  0.2605
#>   std. dev.      0.1764  0.1648
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2825  0.2216
#>   std. dev.      0.1474  0.1179
#>   weight sum         76      63
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2696  0.1715
#>   std. dev.      0.1506  0.0816
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V45
#>   mean           0.2773  0.1351
#>   std. dev.      0.1805   0.084
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2247  0.1161
#>   std. dev.       0.159  0.0902
#>   weight sum         76      63
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1577  0.0964
#>   std. dev.      0.1018  0.0679
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1163  0.0666
#>   std. dev.      0.0686  0.0491
#>   weight sum         76      63
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0657  0.0385
#>   std. dev.      0.0363   0.033
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0802  0.0616
#>   std. dev.      0.0571  0.0479
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0233  0.0194
#>   std. dev.      0.0132  0.0138
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0202  0.0118
#>   std. dev.      0.0149  0.0088
#>   weight sum         76      63
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0166  0.0111
#>   std. dev.      0.0115   0.008
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0112  0.0104
#>   std. dev.      0.0076  0.0064
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0126  0.0101
#>   std. dev.       0.009  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0092
#>   std. dev.      0.0069  0.0053
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0076
#>   std. dev.      0.0056  0.0048
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean            0.007  0.0085
#>   std. dev.      0.0051  0.0061
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0086  0.0068
#>   std. dev.      0.0067  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0083  0.0069
#>   std. dev.      0.0071  0.0049
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1072  0.0999
#>   std. dev.      0.0505  0.0734
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0071  0.0061
#>   std. dev.      0.0064  0.0033
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1271  0.1168
#>   std. dev.      0.0574   0.071
#>   weight sum         76      63
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1463  0.1227
#>   std. dev.      0.0936  0.0838
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2254  0.1389
#>   std. dev.      0.1348  0.1031
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
