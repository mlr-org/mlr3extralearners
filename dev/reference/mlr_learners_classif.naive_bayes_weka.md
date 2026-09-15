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
#>                 (0.55)  (0.45)
#> ===============================
#> V1
#>   mean           0.0325  0.0201
#>   std. dev.      0.0225  0.0129
#>   weight sum         76      63
#>   precision       0.001   0.001
#> 
#> V10
#>   mean           0.2457  0.1462
#>   std. dev.      0.1382   0.087
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2853   0.165
#>   std. dev.      0.1258   0.092
#>   weight sum         76      63
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2977   0.187
#>   std. dev.      0.1126  0.1185
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V13
#>   mean           0.3018    0.23
#>   std. dev.      0.1043  0.1367
#>   weight sum         76      63
#>   precision      0.0049  0.0049
#> 
#> V14
#>   mean           0.2887  0.2692
#>   std. dev.      0.1231  0.1748
#>   weight sum         76      63
#>   precision      0.0058  0.0058
#> 
#> V15
#>   mean           0.2898  0.3084
#>   std. dev.       0.161  0.2286
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3472  0.3694
#>   std. dev.      0.1851  0.2629
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V17
#>   mean           0.3852   0.398
#>   std. dev.      0.2078  0.2837
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4356  0.4223
#>   std. dev.      0.2257  0.2615
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V19
#>   mean           0.5237  0.4398
#>   std. dev.      0.2393  0.2518
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean            0.046  0.0272
#>   std. dev.      0.0389  0.0183
#>   weight sum         76      63
#>   precision      0.0019  0.0019
#> 
#> V20
#>   mean           0.5931  0.4771
#>   std. dev.      0.2573  0.2611
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V21
#>   mean           0.6446  0.5175
#>   std. dev.       0.261  0.2415
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V22
#>   mean           0.6633  0.5413
#>   std. dev.      0.2477  0.2549
#>   weight sum         76      63
#>   precision      0.0071  0.0071
#> 
#> V23
#>   mean           0.6871  0.5931
#>   std. dev.      0.2487  0.2361
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.7207   0.646
#>   std. dev.      0.2299  0.2351
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean            0.724  0.6743
#>   std. dev.      0.2172  0.2648
#>   weight sum         76      63
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.7428   0.707
#>   std. dev.       0.222  0.2433
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V27
#>   mean           0.7571  0.7054
#>   std. dev.      0.2529  0.2303
#>   weight sum         76      63
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7513  0.6848
#>   std. dev.      0.2559   0.201
#>   weight sum         76      63
#>   precision      0.0076  0.0076
#> 
#> V29
#>   mean           0.6805  0.6387
#>   std. dev.       0.234  0.2186
#>   weight sum         76      63
#>   precision      0.0073  0.0073
#> 
#> V3
#>   mean            0.052  0.0309
#>   std. dev.      0.0475  0.0228
#>   weight sum         76      63
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5994  0.5649
#>   std. dev.      0.1991  0.2266
#>   weight sum         76      63
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4985  0.5103
#>   std. dev.      0.2243  0.1992
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4334  0.4313
#>   std. dev.      0.2135  0.1953
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3907  0.4231
#>   std. dev.      0.1929  0.1955
#>   weight sum         76      63
#>   precision      0.0065  0.0065
#> 
#> V34
#>   mean           0.3587  0.4466
#>   std. dev.      0.2052  0.2438
#>   weight sum         76      63
#>   precision      0.0067  0.0067
#> 
#> V35
#>   mean           0.3369  0.4692
#>   std. dev.      0.2386  0.2625
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V36
#>   mean           0.3287  0.4771
#>   std. dev.      0.2558  0.2555
#>   weight sum         76      63
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3274  0.4173
#>   std. dev.      0.2348  0.2312
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V38
#>   mean           0.3248  0.3335
#>   std. dev.      0.2009  0.2029
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3234  0.2938
#>   std. dev.      0.1759  0.1916
#>   weight sum         76      63
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0676  0.0381
#>   std. dev.      0.0595  0.0221
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V40
#>   mean           0.3023  0.3061
#>   std. dev.       0.159  0.1861
#>   weight sum         76      63
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.3021  0.2821
#>   std. dev.      0.1641  0.1771
#>   weight sum         76      63
#>   precision      0.0064  0.0064
#> 
#> V42
#>   mean           0.3098  0.2607
#>   std. dev.      0.1663  0.1667
#>   weight sum         76      63
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2858  0.2154
#>   std. dev.      0.1317  0.1194
#>   weight sum         76      63
#>   precision      0.0043  0.0043
#> 
#> V44
#>   mean           0.2509  0.1687
#>   std. dev.      0.1393  0.0823
#>   weight sum         76      63
#>   precision      0.0041  0.0041
#> 
#> V45
#>   mean           0.2431   0.136
#>   std. dev.      0.1688  0.0815
#>   weight sum         76      63
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1944  0.1159
#>   std. dev.      0.1462  0.0895
#>   weight sum         76      63
#>   precision      0.0046  0.0046
#> 
#> V47
#>   mean           0.1447  0.0926
#>   std. dev.      0.0884  0.0666
#>   weight sum         76      63
#>   precision      0.0031  0.0031
#> 
#> V48
#>   mean           0.1124  0.0703
#>   std. dev.      0.0671   0.048
#>   weight sum         76      63
#>   precision      0.0021  0.0021
#> 
#> V49
#>   mean           0.0651   0.038
#>   std. dev.      0.0359  0.0326
#>   weight sum         76      63
#>   precision      0.0015  0.0015
#> 
#> V5
#>   mean           0.0907  0.0585
#>   std. dev.       0.064  0.0403
#>   weight sum         76      63
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0225  0.0185
#>   std. dev.      0.0146  0.0128
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0192  0.0118
#>   std. dev.      0.0118   0.009
#>   weight sum         76      63
#>   precision      0.0007  0.0007
#> 
#> V52
#>   mean           0.0161  0.0099
#>   std. dev.      0.0096   0.007
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V53
#>   mean           0.0121  0.0089
#>   std. dev.      0.0079  0.0056
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0123  0.0093
#>   std. dev.       0.008  0.0056
#>   weight sum         76      63
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0088  0.0084
#>   std. dev.      0.0076  0.0055
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V56
#>   mean            0.009  0.0067
#>   std. dev.      0.0067   0.004
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0082  0.0076
#>   std. dev.      0.0064  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0089  0.0062
#>   std. dev.      0.0074  0.0045
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0085  0.0067
#>   std. dev.      0.0066  0.0051
#>   weight sum         76      63
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1139  0.0909
#>   std. dev.      0.0523  0.0643
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0054
#>   std. dev.      0.0062  0.0034
#>   weight sum         76      63
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean            0.125  0.1101
#>   std. dev.      0.0516  0.0641
#>   weight sum         76      63
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1458  0.1135
#>   std. dev.      0.0835  0.0715
#>   weight sum         76      63
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2094  0.1267
#>   std. dev.      0.1174  0.0789
#>   weight sum         76      63
#>   precision      0.0047  0.0047
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
