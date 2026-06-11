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
#>                 (0.56)  (0.44)
#> ===============================
#> V1
#>   mean           0.0374  0.0238
#>   std. dev.      0.0286  0.0168
#>   weight sum         78      61
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2379  0.1565
#>   std. dev.      0.1326  0.0988
#>   weight sum         78      61
#>   precision      0.0043  0.0043
#> 
#> V11
#>   mean            0.291  0.1664
#>   std. dev.      0.1223  0.0959
#>   weight sum         78      61
#>   precision      0.0048  0.0048
#> 
#> V12
#>   mean           0.3084  0.1763
#>   std. dev.      0.1293  0.1105
#>   weight sum         78      61
#>   precision       0.004   0.004
#> 
#> V13
#>   mean           0.3267   0.219
#>   std. dev.      0.1412  0.1248
#>   weight sum         78      61
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3294  0.2705
#>   std. dev.      0.1787  0.1655
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean            0.343  0.3097
#>   std. dev.      0.2065  0.2293
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V16
#>   mean            0.389  0.3709
#>   std. dev.      0.2187  0.2621
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V17
#>   mean           0.4189  0.4189
#>   std. dev.      0.2441  0.2964
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4586  0.4542
#>   std. dev.      0.2624  0.2758
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V19
#>   mean           0.5429  0.4669
#>   std. dev.      0.2644  0.2593
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0485  0.0305
#>   std. dev.      0.0396  0.0246
#>   weight sum         78      61
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean            0.622  0.5018
#>   std. dev.      0.2578  0.2554
#>   weight sum         78      61
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6694  0.5458
#>   std. dev.      0.2472  0.2399
#>   weight sum         78      61
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6892  0.5829
#>   std. dev.      0.2358  0.2343
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V23
#>   mean           0.6955  0.6384
#>   std. dev.      0.2335  0.2188
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7008   0.681
#>   std. dev.      0.2281  0.2255
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6884  0.6997
#>   std. dev.      0.2302   0.229
#>   weight sum         78      61
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.7032  0.7201
#>   std. dev.      0.2348  0.2236
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.7124  0.7119
#>   std. dev.      0.2637  0.2082
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.7097  0.6686
#>   std. dev.      0.2641  0.1961
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6442  0.6085
#>   std. dev.      0.2483  0.2231
#>   weight sum         78      61
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.053  0.0362
#>   std. dev.       0.048  0.0286
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5646  0.5642
#>   std. dev.      0.2158  0.2149
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V31
#>   mean            0.479  0.5214
#>   std. dev.       0.216  0.1891
#>   weight sum         78      61
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4184  0.4516
#>   std. dev.      0.2077  0.2149
#>   weight sum         78      61
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3743  0.4322
#>   std. dev.      0.1821  0.2052
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V34
#>   mean           0.3426  0.4231
#>   std. dev.       0.184  0.2384
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3169  0.4497
#>   std. dev.       0.237  0.2469
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.2993  0.4502
#>   std. dev.      0.2401  0.2573
#>   weight sum         78      61
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean            0.298  0.4036
#>   std. dev.      0.2216  0.2295
#>   weight sum         78      61
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3107  0.3422
#>   std. dev.      0.1893  0.2035
#>   weight sum         78      61
#>   precision      0.0069  0.0069
#> 
#> V39
#>   mean           0.3186  0.3049
#>   std. dev.      0.1726   0.199
#>   weight sum         78      61
#>   precision       0.007   0.007
#> 
#> V4
#>   mean           0.0692   0.038
#>   std. dev.      0.0599  0.0264
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2768    0.31
#>   std. dev.      0.1408  0.1694
#>   weight sum         78      61
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2645  0.2714
#>   std. dev.      0.1518    0.15
#>   weight sum         78      61
#>   precision       0.005   0.005
#> 
#> V42
#>   mean           0.2896  0.2452
#>   std. dev.      0.1706  0.1392
#>   weight sum         78      61
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2692  0.2036
#>   std. dev.      0.1341  0.1149
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2418  0.1714
#>   std. dev.      0.1433  0.0903
#>   weight sum         78      61
#>   precision       0.004   0.004
#> 
#> V45
#>   mean           0.2414  0.1378
#>   std. dev.      0.1705  0.0775
#>   weight sum         78      61
#>   precision      0.0047  0.0047
#> 
#> V46
#>   mean           0.1912   0.115
#>   std. dev.      0.1494  0.0725
#>   weight sum         78      61
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1379  0.0923
#>   std. dev.      0.0914  0.0555
#>   weight sum         78      61
#>   precision      0.0039  0.0039
#> 
#> V48
#>   mean           0.1035  0.0702
#>   std. dev.      0.0608  0.0457
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0612  0.0399
#>   std. dev.      0.0327  0.0283
#>   weight sum         78      61
#>   precision      0.0012  0.0012
#> 
#> V5
#>   mean           0.0907   0.052
#>   std. dev.      0.0658  0.0343
#>   weight sum         78      61
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0215  0.0185
#>   std. dev.      0.0132  0.0117
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0193  0.0115
#>   std. dev.      0.0132  0.0072
#>   weight sum         78      61
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0173   0.009
#>   std. dev.      0.0116  0.0051
#>   weight sum         78      61
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0116  0.0087
#>   std. dev.      0.0076  0.0059
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0093
#>   std. dev.      0.0083  0.0059
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0108  0.0079
#>   std. dev.      0.0092  0.0049
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0088  0.0072
#>   std. dev.      0.0063  0.0041
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean            0.008  0.0076
#>   std. dev.      0.0058  0.0052
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0065
#>   std. dev.       0.008  0.0048
#>   weight sum         78      61
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0094  0.0068
#>   std. dev.       0.007  0.0053
#>   weight sum         78      61
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1175  0.0825
#>   std. dev.      0.0539  0.0512
#>   weight sum         78      61
#>   precision      0.0022  0.0022
#> 
#> V60
#>   mean            0.007  0.0057
#>   std. dev.      0.0052  0.0035
#>   weight sum         78      61
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1341  0.1078
#>   std. dev.      0.0573  0.0553
#>   weight sum         78      61
#>   precision      0.0024  0.0024
#> 
#> V8
#>   mean           0.1524  0.1081
#>   std. dev.      0.0898  0.0619
#>   weight sum         78      61
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2012  0.1365
#>   std. dev.      0.1188  0.0861
#>   weight sum         78      61
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.4057971 
```
