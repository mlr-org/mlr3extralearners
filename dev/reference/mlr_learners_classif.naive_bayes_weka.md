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
#>   mean           0.0361  0.0227
#>   std. dev.      0.0283  0.0149
#>   weight sum         73      66
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2627  0.1589
#>   std. dev.      0.1417   0.116
#>   weight sum         73      66
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean            0.297  0.1763
#>   std. dev.      0.1215  0.1176
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.2918  0.1922
#>   std. dev.      0.1188  0.1432
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3027  0.2223
#>   std. dev.      0.1265  0.1402
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V14
#>   mean           0.3072  0.2585
#>   std. dev.      0.1564  0.1494
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3174  0.2944
#>   std. dev.      0.1924  0.1948
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V16
#>   mean             0.37  0.3629
#>   std. dev.      0.2109  0.2392
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4056  0.4014
#>   std. dev.      0.2317   0.276
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V18
#>   mean           0.4458  0.4458
#>   std. dev.      0.2462   0.252
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5304  0.4742
#>   std. dev.      0.2451  0.2579
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0481  0.0288
#>   std. dev.      0.0386  0.0252
#>   weight sum         73      66
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.6096  0.5248
#>   std. dev.      0.2593  0.2583
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6563  0.5742
#>   std. dev.      0.2638  0.2471
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean            0.656  0.5931
#>   std. dev.      0.2461  0.2572
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V23
#>   mean           0.6587  0.6255
#>   std. dev.      0.2574  0.2372
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6751  0.6638
#>   std. dev.      0.2425  0.2298
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6725  0.6852
#>   std. dev.      0.2363  0.2547
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.6997  0.7002
#>   std. dev.      0.2474  0.2418
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7045  0.6958
#>   std. dev.      0.2852  0.2235
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7111  0.6925
#>   std. dev.      0.2756  0.2014
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6536  0.6469
#>   std. dev.      0.2504  0.2343
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.051   0.034
#>   std. dev.      0.0482  0.0301
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5894   0.575
#>   std. dev.      0.2034  0.2357
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V31
#>   mean           0.4947  0.5232
#>   std. dev.      0.2236  0.1838
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean             0.45  0.4494
#>   std. dev.       0.215  0.1989
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.4162  0.4381
#>   std. dev.       0.196  0.2048
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V34
#>   mean           0.3806   0.431
#>   std. dev.      0.2043  0.2519
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3502  0.4294
#>   std. dev.      0.2529  0.2513
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3317  0.4342
#>   std. dev.      0.2559  0.2414
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3262  0.4007
#>   std. dev.      0.2477  0.2204
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3441   0.327
#>   std. dev.      0.2145   0.202
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V39
#>   mean           0.3424  0.3026
#>   std. dev.      0.1948  0.2208
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V4
#>   mean            0.063  0.0425
#>   std. dev.      0.0614  0.0328
#>   weight sum         73      66
#>   precision      0.0035  0.0035
#> 
#> V40
#>   mean           0.3018  0.3161
#>   std. dev.      0.1669  0.2135
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2836  0.2819
#>   std. dev.      0.1686  0.1818
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.2928  0.2458
#>   std. dev.      0.1824  0.1684
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2744  0.2149
#>   std. dev.        0.15  0.1379
#>   weight sum         73      66
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean           0.2647  0.1721
#>   std. dev.      0.1491  0.1158
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2638  0.1386
#>   std. dev.      0.1837  0.1071
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V46
#>   mean           0.2089  0.1188
#>   std. dev.      0.1593  0.1052
#>   weight sum         73      66
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1521  0.0963
#>   std. dev.      0.0962  0.0743
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> V48
#>   mean           0.1152  0.0684
#>   std. dev.      0.0672  0.0492
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0655  0.0371
#>   std. dev.      0.0367  0.0318
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0885  0.0601
#>   std. dev.      0.0627  0.0479
#>   weight sum         73      66
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0232  0.0184
#>   std. dev.       0.014  0.0138
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0191  0.0124
#>   std. dev.      0.0132  0.0087
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean            0.016    0.01
#>   std. dev.      0.0119  0.0065
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0115  0.0098
#>   std. dev.      0.0084   0.006
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0101
#>   std. dev.      0.0079  0.0052
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0104   0.009
#>   std. dev.      0.0085  0.0055
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0085  0.0078
#>   std. dev.      0.0063  0.0051
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0083  0.0083
#>   std. dev.      0.0064  0.0062
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0093  0.0068
#>   std. dev.      0.0077  0.0048
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0082  0.0074
#>   std. dev.      0.0064  0.0054
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1125  0.0925
#>   std. dev.      0.0531  0.0563
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V60
#>   mean           0.0065  0.0061
#>   std. dev.      0.0049  0.0038
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean            0.131  0.1119
#>   std. dev.      0.0598  0.0574
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1522  0.1144
#>   std. dev.      0.0906   0.081
#>   weight sum         73      66
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2229  0.1325
#>   std. dev.      0.1269  0.0991
#>   weight sum         73      66
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
