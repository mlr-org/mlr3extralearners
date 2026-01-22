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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean            0.033  0.0228
#>   std. dev.      0.0249  0.0149
#>   weight sum         80      59
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2524  0.1504
#>   std. dev.      0.1372   0.111
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2973   0.159
#>   std. dev.      0.1265  0.1071
#>   weight sum         80      59
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean             0.31  0.1749
#>   std. dev.      0.1247  0.1247
#>   weight sum         80      59
#>   precision      0.0049  0.0049
#> 
#> V13
#>   mean           0.3247  0.2205
#>   std. dev.      0.1312  0.1161
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V14
#>   mean           0.3318  0.2542
#>   std. dev.       0.166  0.1389
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean            0.332  0.2939
#>   std. dev.      0.2003  0.1948
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3875  0.3617
#>   std. dev.      0.2179  0.2342
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4272  0.4053
#>   std. dev.      0.2414  0.2697
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4694  0.4447
#>   std. dev.      0.2525  0.2421
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5469  0.4596
#>   std. dev.       0.257  0.2583
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0427  0.0301
#>   std. dev.       0.037  0.0259
#>   weight sum         80      59
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.626  0.5031
#>   std. dev.      0.2498  0.2593
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6772  0.5639
#>   std. dev.      0.2504  0.2399
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6908  0.5858
#>   std. dev.      0.2437  0.2658
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V23
#>   mean           0.6964  0.6134
#>   std. dev.      0.2365  0.2499
#>   weight sum         80      59
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7016  0.6575
#>   std. dev.      0.2273   0.235
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6868   0.683
#>   std. dev.      0.2368  0.2471
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V26
#>   mean           0.7096  0.6968
#>   std. dev.      0.2428  0.2422
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V27
#>   mean           0.7199  0.7175
#>   std. dev.      0.2673  0.2254
#>   weight sum         80      59
#>   precision      0.0076  0.0076
#> 
#> V28
#>   mean           0.7128   0.726
#>   std. dev.      0.2688  0.1888
#>   weight sum         80      59
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6478  0.6832
#>   std. dev.      0.2457    0.22
#>   weight sum         80      59
#>   precision      0.0074  0.0074
#> 
#> V3
#>   mean           0.0503   0.033
#>   std. dev.      0.0468    0.03
#>   weight sum         80      59
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5702  0.6156
#>   std. dev.      0.2135  0.2317
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean           0.4725  0.5565
#>   std. dev.      0.2395  0.1946
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4295  0.4744
#>   std. dev.      0.2315  0.2027
#>   weight sum         80      59
#>   precision      0.0062  0.0062
#> 
#> V33
#>   mean           0.3902   0.454
#>   std. dev.      0.1987  0.2092
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V34
#>   mean           0.3489  0.4468
#>   std. dev.      0.2109  0.2487
#>   weight sum         80      59
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3186  0.4501
#>   std. dev.      0.2408   0.254
#>   weight sum         80      59
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3106  0.4488
#>   std. dev.      0.2425  0.2537
#>   weight sum         80      59
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3161    0.42
#>   std. dev.      0.2195  0.2336
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3419  0.3555
#>   std. dev.      0.1857  0.2068
#>   weight sum         80      59
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3557  0.3126
#>   std. dev.      0.1699  0.2175
#>   weight sum         80      59
#>   precision      0.0068  0.0068
#> 
#> V4
#>   mean           0.0662  0.0397
#>   std. dev.      0.0596  0.0287
#>   weight sum         80      59
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.3161  0.3046
#>   std. dev.      0.1665  0.2033
#>   weight sum         80      59
#>   precision      0.0067  0.0067
#> 
#> V41
#>   mean           0.2943  0.2686
#>   std. dev.      0.1688  0.1868
#>   weight sum         80      59
#>   precision      0.0063  0.0063
#> 
#> V42
#>   mean           0.2978  0.2386
#>   std. dev.      0.1663   0.169
#>   weight sum         80      59
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2764  0.2099
#>   std. dev.      0.1349  0.1418
#>   weight sum         80      59
#>   precision      0.0057  0.0057
#> 
#> V44
#>   mean            0.254  0.1715
#>   std. dev.      0.1482  0.1234
#>   weight sum         80      59
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2457  0.1404
#>   std. dev.      0.1806  0.1076
#>   weight sum         80      59
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1958  0.1151
#>   std. dev.      0.1483  0.1034
#>   weight sum         80      59
#>   precision      0.0047  0.0047
#> 
#> V47
#>   mean           0.1449  0.0966
#>   std. dev.      0.0902  0.0743
#>   weight sum         80      59
#>   precision      0.0032  0.0032
#> 
#> V48
#>   mean           0.1118  0.0677
#>   std. dev.      0.0661  0.0516
#>   weight sum         80      59
#>   precision      0.0022  0.0022
#> 
#> V49
#>   mean           0.0652  0.0354
#>   std. dev.      0.0365  0.0329
#>   weight sum         80      59
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0902   0.055
#>   std. dev.       0.064  0.0387
#>   weight sum         80      59
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0238  0.0194
#>   std. dev.      0.0146  0.0141
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0186  0.0123
#>   std. dev.      0.0123  0.0088
#>   weight sum         80      59
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean            0.015  0.0101
#>   std. dev.      0.0086  0.0066
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0115  0.0098
#>   std. dev.      0.0077  0.0066
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0124  0.0102
#>   std. dev.      0.0083  0.0057
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0101  0.0091
#>   std. dev.      0.0087  0.0056
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean           0.0092  0.0076
#>   std. dev.      0.0068  0.0052
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0075  0.0079
#>   std. dev.      0.0058  0.0062
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0085  0.0069
#>   std. dev.      0.0069  0.0048
#>   weight sum         80      59
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0086  0.0069
#>   std. dev.      0.0064  0.0047
#>   weight sum         80      59
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1053  0.0878
#>   std. dev.      0.0519  0.0515
#>   weight sum         80      59
#>   precision      0.0018  0.0018
#> 
#> V60
#>   mean           0.0065  0.0059
#>   std. dev.      0.0046  0.0036
#>   weight sum         80      59
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1228  0.1099
#>   std. dev.      0.0541   0.056
#>   weight sum         80      59
#>   precision      0.0021  0.0021
#> 
#> V8
#>   mean           0.1467  0.1091
#>   std. dev.      0.0845  0.0706
#>   weight sum         80      59
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2122  0.1303
#>   std. dev.      0.1163  0.0933
#>   weight sum         80      59
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
