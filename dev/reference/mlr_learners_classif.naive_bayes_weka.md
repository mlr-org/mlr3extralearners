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
#>                 (0.48)  (0.52)
#> ===============================
#> V1
#>   mean           0.0397  0.0214
#>   std. dev.      0.0292  0.0147
#>   weight sum         67      72
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2614  0.1621
#>   std. dev.      0.1449  0.1219
#>   weight sum         67      72
#>   precision      0.0047  0.0047
#> 
#> V11
#>   mean           0.2985  0.1724
#>   std. dev.      0.1267  0.1163
#>   weight sum         67      72
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3009  0.1891
#>   std. dev.      0.1193  0.1303
#>   weight sum         67      72
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3187    0.22
#>   std. dev.      0.1311  0.1307
#>   weight sum         67      72
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3275  0.2633
#>   std. dev.      0.1616  0.1591
#>   weight sum         67      72
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3328  0.2911
#>   std. dev.      0.1995  0.2139
#>   weight sum         67      72
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3757  0.3538
#>   std. dev.      0.2119  0.2474
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.3992  0.4003
#>   std. dev.      0.2287  0.2791
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4363  0.4268
#>   std. dev.      0.2531  0.2585
#>   weight sum         67      72
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5261  0.4447
#>   std. dev.      0.2515  0.2503
#>   weight sum         67      72
#>   precision      0.0068  0.0068
#> 
#> V2
#>   mean           0.0504    0.03
#>   std. dev.      0.0426  0.0254
#>   weight sum         67      72
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6207  0.4867
#>   std. dev.      0.2542  0.2537
#>   weight sum         67      72
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6771  0.5356
#>   std. dev.      0.2546  0.2499
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6674  0.5624
#>   std. dev.      0.2432  0.2573
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6574  0.6193
#>   std. dev.      0.2717  0.2321
#>   weight sum         67      72
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.6676  0.6569
#>   std. dev.      0.2566  0.2273
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6637  0.6682
#>   std. dev.      0.2347  0.2473
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6896  0.6933
#>   std. dev.      0.2235  0.2308
#>   weight sum         67      72
#>   precision      0.0063  0.0063
#> 
#> V27
#>   mean           0.6954  0.6958
#>   std. dev.      0.2638  0.2058
#>   weight sum         67      72
#>   precision      0.0071  0.0071
#> 
#> V28
#>   mean           0.7081  0.6772
#>   std. dev.      0.2522  0.2115
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V29
#>   mean           0.6577  0.6271
#>   std. dev.      0.2345  0.2503
#>   weight sum         67      72
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean           0.0568  0.0358
#>   std. dev.        0.05  0.0299
#>   weight sum         67      72
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.6006  0.5683
#>   std. dev.       0.216  0.2429
#>   weight sum         67      72
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.5064  0.5296
#>   std. dev.      0.2311  0.2087
#>   weight sum         67      72
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4471  0.4716
#>   std. dev.      0.2282   0.212
#>   weight sum         67      72
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.4093  0.4559
#>   std. dev.        0.21   0.223
#>   weight sum         67      72
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3865  0.4597
#>   std. dev.      0.2165  0.2615
#>   weight sum         67      72
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3676  0.4699
#>   std. dev.      0.2615   0.276
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3451  0.4666
#>   std. dev.        0.26  0.2692
#>   weight sum         67      72
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3293  0.4248
#>   std. dev.      0.2416  0.2419
#>   weight sum         67      72
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3475  0.3481
#>   std. dev.       0.216  0.2122
#>   weight sum         67      72
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3614  0.3118
#>   std. dev.       0.193  0.1965
#>   weight sum         67      72
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0741  0.0422
#>   std. dev.      0.0635  0.0344
#>   weight sum         67      72
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3247  0.3067
#>   std. dev.      0.1714  0.1829
#>   weight sum         67      72
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.3008  0.2692
#>   std. dev.      0.1757  0.1575
#>   weight sum         67      72
#>   precision      0.0053  0.0053
#> 
#> V42
#>   mean           0.3056  0.2436
#>   std. dev.      0.1845  0.1436
#>   weight sum         67      72
#>   precision      0.0058  0.0058
#> 
#> V43
#>   mean           0.2881  0.2055
#>   std. dev.       0.146  0.1089
#>   weight sum         67      72
#>   precision      0.0054  0.0054
#> 
#> V44
#>   mean           0.2653   0.177
#>   std. dev.      0.1498  0.0885
#>   weight sum         67      72
#>   precision      0.0042  0.0042
#> 
#> V45
#>   mean           0.2703  0.1379
#>   std. dev.      0.1866  0.0832
#>   weight sum         67      72
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2159  0.1056
#>   std. dev.      0.1635  0.0727
#>   weight sum         67      72
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean            0.153  0.0878
#>   std. dev.       0.098  0.0513
#>   weight sum         67      72
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1165  0.0663
#>   std. dev.      0.0663  0.0421
#>   weight sum         67      72
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0678  0.0363
#>   std. dev.      0.0367  0.0257
#>   weight sum         67      72
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0924  0.0589
#>   std. dev.      0.0675  0.0472
#>   weight sum         67      72
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0237  0.0166
#>   std. dev.      0.0152  0.0091
#>   weight sum         67      72
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0204  0.0116
#>   std. dev.       0.014  0.0076
#>   weight sum         67      72
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean           0.0173  0.0103
#>   std. dev.      0.0115  0.0072
#>   weight sum         67      72
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0123  0.0097
#>   std. dev.      0.0084  0.0062
#>   weight sum         67      72
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean            0.012  0.0098
#>   std. dev.      0.0082  0.0052
#>   weight sum         67      72
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0107  0.0088
#>   std. dev.      0.0091   0.005
#>   weight sum         67      72
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0096  0.0073
#>   std. dev.      0.0069  0.0046
#>   weight sum         67      72
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0087   0.008
#>   std. dev.      0.0061   0.006
#>   weight sum         67      72
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0101  0.0063
#>   std. dev.      0.0082  0.0046
#>   weight sum         67      72
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0098  0.0069
#>   std. dev.      0.0076  0.0048
#>   weight sum         67      72
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1196  0.0898
#>   std. dev.       0.053  0.0599
#>   weight sum         67      72
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean           0.0078  0.0054
#>   std. dev.       0.007  0.0029
#>   weight sum         67      72
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1354  0.1094
#>   std. dev.      0.0593  0.0603
#>   weight sum         67      72
#>   precision      0.0025  0.0025
#> 
#> V8
#>   mean           0.1543  0.1118
#>   std. dev.      0.0924  0.0774
#>   weight sum         67      72
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2204  0.1366
#>   std. dev.      0.1308  0.1038
#>   weight sum         67      72
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4637681 
```
