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
#>                  (0.5)   (0.5)
#> ===============================
#> V1
#>   mean           0.0357  0.0232
#>   std. dev.       0.027  0.0142
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2619  0.1479
#>   std. dev.      0.1325   0.103
#>   weight sum         70      69
#>   precision       0.005   0.005
#> 
#> V11
#>   mean           0.3032  0.1682
#>   std. dev.      0.1259  0.1086
#>   weight sum         70      69
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.3132  0.1901
#>   std. dev.      0.1264  0.1278
#>   weight sum         70      69
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3324  0.2262
#>   std. dev.      0.1357  0.1407
#>   weight sum         70      69
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3366  0.2745
#>   std. dev.      0.1708  0.1699
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3342  0.3159
#>   std. dev.      0.2072  0.2253
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean           0.3912  0.3835
#>   std. dev.      0.2189  0.2594
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4414   0.418
#>   std. dev.      0.2392  0.2932
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4947  0.4485
#>   std. dev.      0.2525  0.2758
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5773  0.4769
#>   std. dev.       0.248  0.2561
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0446  0.0293
#>   std. dev.      0.0384   0.024
#>   weight sum         70      69
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6475  0.5059
#>   std. dev.      0.2333  0.2604
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6975  0.5473
#>   std. dev.      0.2316  0.2512
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7081  0.5927
#>   std. dev.      0.2262  0.2562
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.7089  0.6278
#>   std. dev.      0.2566  0.2485
#>   weight sum         70      69
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7243  0.6501
#>   std. dev.      0.2463  0.2378
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V25
#>   mean           0.7127  0.6482
#>   std. dev.      0.2275  0.2561
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7234  0.6783
#>   std. dev.      0.2377  0.2277
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7124  0.6826
#>   std. dev.       0.274  0.2138
#>   weight sum         70      69
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.6944   0.665
#>   std. dev.      0.2643  0.2077
#>   weight sum         70      69
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean           0.6415  0.6414
#>   std. dev.      0.2436   0.221
#>   weight sum         70      69
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.053  0.0355
#>   std. dev.      0.0449  0.0276
#>   weight sum         70      69
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5648  0.6091
#>   std. dev.      0.2032  0.2222
#>   weight sum         70      69
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4657   0.557
#>   std. dev.      0.2089  0.1903
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4138  0.4681
#>   std. dev.      0.2146  0.2084
#>   weight sum         70      69
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3895  0.4623
#>   std. dev.      0.2017  0.2037
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3483  0.4668
#>   std. dev.      0.2109   0.258
#>   weight sum         70      69
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3111   0.479
#>   std. dev.      0.2334  0.2783
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2832  0.4949
#>   std. dev.      0.2226  0.2715
#>   weight sum         70      69
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.281  0.4363
#>   std. dev.      0.2034  0.2356
#>   weight sum         70      69
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3057  0.3526
#>   std. dev.      0.1817  0.2227
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3168  0.3128
#>   std. dev.      0.1791  0.2155
#>   weight sum         70      69
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0661  0.0403
#>   std. dev.      0.0566  0.0301
#>   weight sum         70      69
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2919  0.3268
#>   std. dev.      0.1619  0.1988
#>   weight sum         70      69
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2719  0.2903
#>   std. dev.      0.1579  0.1762
#>   weight sum         70      69
#>   precision      0.0055  0.0055
#> 
#> V42
#>   mean            0.272  0.2487
#>   std. dev.      0.1626  0.1646
#>   weight sum         70      69
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2477  0.2159
#>   std. dev.      0.1264  0.1371
#>   weight sum         70      69
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2303  0.1826
#>   std. dev.      0.1341  0.1179
#>   weight sum         70      69
#>   precision       0.006   0.006
#> 
#> V45
#>   mean           0.2209  0.1457
#>   std. dev.      0.1643  0.0999
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1735  0.1217
#>   std. dev.      0.1344  0.0891
#>   weight sum         70      69
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1321  0.0999
#>   std. dev.      0.0789  0.0629
#>   weight sum         70      69
#>   precision      0.0026  0.0026
#> 
#> V48
#>   mean           0.1028  0.0736
#>   std. dev.      0.0585  0.0464
#>   weight sum         70      69
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0591  0.0397
#>   std. dev.      0.0328  0.0286
#>   weight sum         70      69
#>   precision      0.0011  0.0011
#> 
#> V5
#>   mean           0.0881  0.0587
#>   std. dev.      0.0592  0.0475
#>   weight sum         70      69
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0216  0.0188
#>   std. dev.      0.0133  0.0119
#>   weight sum         70      69
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean            0.018   0.013
#>   std. dev.      0.0095  0.0084
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V52
#>   mean           0.0151  0.0101
#>   std. dev.      0.0096  0.0068
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0114  0.0098
#>   std. dev.      0.0082  0.0061
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0097
#>   std. dev.      0.0085  0.0057
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0098  0.0075
#>   std. dev.      0.0085  0.0043
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0091  0.0076
#>   std. dev.      0.0067  0.0045
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0078  0.0082
#>   std. dev.      0.0062  0.0055
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean            0.009  0.0071
#>   std. dev.      0.0082  0.0048
#>   weight sum         70      69
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0082  0.0074
#>   std. dev.      0.0067  0.0052
#>   weight sum         70      69
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1135  0.0946
#>   std. dev.      0.0488  0.0646
#>   weight sum         70      69
#>   precision      0.0029  0.0029
#> 
#> V60
#>   mean           0.0063  0.0062
#>   std. dev.      0.0046  0.0038
#>   weight sum         70      69
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1311  0.1138
#>   std. dev.      0.0542   0.065
#>   weight sum         70      69
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean             0.15  0.1179
#>   std. dev.      0.0736   0.079
#>   weight sum         70      69
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2191  0.1324
#>   std. dev.      0.1088  0.0955
#>   weight sum         70      69
#>   precision      0.0042  0.0042
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
