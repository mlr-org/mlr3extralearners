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
#>                 (0.52)  (0.48)
#> ===============================
#> V1
#>   mean           0.0333  0.0209
#>   std. dev.      0.0217  0.0123
#>   weight sum         73      66
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2414  0.1565
#>   std. dev.      0.1404   0.106
#>   weight sum         73      66
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean             0.28   0.172
#>   std. dev.      0.1324  0.0987
#>   weight sum         73      66
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.294  0.1938
#>   std. dev.      0.1216  0.1165
#>   weight sum         73      66
#>   precision      0.0039  0.0039
#> 
#> V13
#>   mean           0.3117  0.2315
#>   std. dev.      0.1204  0.1329
#>   weight sum         73      66
#>   precision      0.0047  0.0047
#> 
#> V14
#>   mean           0.3299  0.2756
#>   std. dev.      0.1659  0.1649
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3484  0.3138
#>   std. dev.      0.2014  0.2251
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.3994  0.3885
#>   std. dev.      0.2258  0.2592
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4412  0.4235
#>   std. dev.      0.2494  0.2905
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4775   0.449
#>   std. dev.      0.2659  0.2686
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5572  0.4758
#>   std. dev.      0.2648  0.2523
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0442  0.0282
#>   std. dev.       0.032  0.0189
#>   weight sum         73      66
#>   precision       0.001   0.001
#> 
#> V20
#>   mean           0.6192  0.5149
#>   std. dev.      0.2652  0.2576
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V21
#>   mean           0.6663  0.5624
#>   std. dev.      0.2507  0.2454
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6855  0.5916
#>   std. dev.      0.2375  0.2514
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V23
#>   mean           0.6947  0.6386
#>   std. dev.      0.2325  0.2331
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6977  0.6752
#>   std. dev.      0.2384  0.2241
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6839  0.6788
#>   std. dev.        0.24  0.2274
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V26
#>   mean           0.7054  0.6986
#>   std. dev.      0.2434  0.2079
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V27
#>   mean           0.7198  0.6863
#>   std. dev.      0.2609  0.2066
#>   weight sum         73      66
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7159  0.6693
#>   std. dev.      0.2608  0.2114
#>   weight sum         73      66
#>   precision      0.0073  0.0073
#> 
#> V29
#>   mean             0.66  0.6442
#>   std. dev.      0.2512  0.2603
#>   weight sum         73      66
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0501  0.0346
#>   std. dev.      0.0392   0.026
#>   weight sum         73      66
#>   precision      0.0015  0.0015
#> 
#> V30
#>   mean           0.5917  0.5939
#>   std. dev.      0.2113  0.2486
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V31
#>   mean            0.502  0.5454
#>   std. dev.      0.2181  0.2148
#>   weight sum         73      66
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4285  0.4727
#>   std. dev.      0.2173  0.2132
#>   weight sum         73      66
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3851  0.4576
#>   std. dev.      0.1891  0.2134
#>   weight sum         73      66
#>   precision      0.0067  0.0067
#> 
#> V34
#>   mean           0.3472    0.46
#>   std. dev.      0.1964  0.2424
#>   weight sum         73      66
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3179  0.4639
#>   std. dev.      0.2275  0.2603
#>   weight sum         73      66
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2823  0.4553
#>   std. dev.      0.2172  0.2631
#>   weight sum         73      66
#>   precision      0.0071  0.0071
#> 
#> V37
#>   mean           0.2872  0.4071
#>   std. dev.      0.2047  0.2389
#>   weight sum         73      66
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3062  0.3438
#>   std. dev.      0.1735  0.2235
#>   weight sum         73      66
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3094  0.3216
#>   std. dev.      0.1596  0.2175
#>   weight sum         73      66
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0602    0.04
#>   std. dev.       0.045  0.0311
#>   weight sum         73      66
#>   precision       0.002   0.002
#> 
#> V40
#>   mean           0.2803  0.3189
#>   std. dev.      0.1458  0.2022
#>   weight sum         73      66
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2821  0.2766
#>   std. dev.      0.1638  0.1696
#>   weight sum         73      66
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean            0.301  0.2439
#>   std. dev.      0.1769  0.1589
#>   weight sum         73      66
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2744  0.2153
#>   std. dev.      0.1434  0.1287
#>   weight sum         73      66
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2483  0.1847
#>   std. dev.      0.1447  0.1126
#>   weight sum         73      66
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2377  0.1482
#>   std. dev.      0.1785  0.0954
#>   weight sum         73      66
#>   precision       0.005   0.005
#> 
#> V46
#>   mean           0.1998  0.1222
#>   std. dev.      0.1649  0.0829
#>   weight sum         73      66
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1523  0.0928
#>   std. dev.      0.1034  0.0576
#>   weight sum         73      66
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1118  0.0672
#>   std. dev.      0.0683  0.0402
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0634  0.0372
#>   std. dev.      0.0367  0.0249
#>   weight sum         73      66
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0884  0.0635
#>   std. dev.      0.0538  0.0528
#>   weight sum         73      66
#>   precision      0.0024  0.0024
#> 
#> V50
#>   mean           0.0234  0.0189
#>   std. dev.      0.0141  0.0111
#>   weight sum         73      66
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0199  0.0127
#>   std. dev.      0.0151  0.0078
#>   weight sum         73      66
#>   precision      0.0008  0.0008
#> 
#> V52
#>   mean            0.017  0.0103
#>   std. dev.      0.0114   0.007
#>   weight sum         73      66
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean            0.013  0.0093
#>   std. dev.      0.0081  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0132  0.0092
#>   std. dev.      0.0082  0.0053
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0102  0.0081
#>   std. dev.      0.0091  0.0047
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0067
#>   std. dev.       0.006  0.0041
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0074
#>   std. dev.       0.006  0.0044
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0091  0.0069
#>   std. dev.      0.0072  0.0048
#>   weight sum         73      66
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083  0.0076
#>   std. dev.      0.0064  0.0056
#>   weight sum         73      66
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1148  0.0964
#>   std. dev.       0.057  0.0688
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0062  0.0062
#>   std. dev.      0.0043  0.0038
#>   weight sum         73      66
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1287  0.1137
#>   std. dev.      0.0599  0.0672
#>   weight sum         73      66
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1431  0.1141
#>   std. dev.       0.079  0.0739
#>   weight sum         73      66
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2033  0.1348
#>   std. dev.      0.1065  0.0919
#>   weight sum         73      66
#>   precision      0.0041  0.0041
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
