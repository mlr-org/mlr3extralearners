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
#>                 (0.51)  (0.49)
#> ===============================
#> V1
#>   mean           0.0316  0.0224
#>   std. dev.      0.0237  0.0152
#>   weight sum         71      68
#>   precision      0.0009  0.0009
#> 
#> V10
#>   mean           0.2551  0.1654
#>   std. dev.      0.1492  0.1187
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2976  0.1785
#>   std. dev.      0.1276  0.1176
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean            0.303  0.1926
#>   std. dev.      0.1148  0.1307
#>   weight sum         71      68
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3114  0.2261
#>   std. dev.       0.123   0.136
#>   weight sum         71      68
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3092  0.2743
#>   std. dev.      0.1669  0.1646
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V15
#>   mean           0.3235  0.3008
#>   std. dev.      0.1933  0.2179
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V16
#>   mean           0.3782  0.3566
#>   std. dev.      0.1975  0.2512
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V17
#>   mean            0.412  0.3965
#>   std. dev.      0.2219  0.2855
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean           0.4537  0.4384
#>   std. dev.      0.2497  0.2706
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V19
#>   mean           0.5464  0.4672
#>   std. dev.       0.245  0.2578
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0409  0.0286
#>   std. dev.       0.032  0.0196
#>   weight sum         71      68
#>   precision      0.0012  0.0012
#> 
#> V20
#>   mean           0.6352  0.5096
#>   std. dev.      0.2433  0.2628
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V21
#>   mean           0.6884  0.5434
#>   std. dev.      0.2276  0.2486
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V22
#>   mean           0.6901    0.56
#>   std. dev.      0.2277  0.2538
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6979   0.605
#>   std. dev.      0.2494  0.2373
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V24
#>   mean           0.7184  0.6554
#>   std. dev.      0.2432  0.2196
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.7215  0.6719
#>   std. dev.      0.2272  0.2419
#>   weight sum         71      68
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean            0.742  0.6901
#>   std. dev.      0.2308  0.2354
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V27
#>   mean           0.7401  0.6837
#>   std. dev.      0.2652  0.2186
#>   weight sum         71      68
#>   precision      0.0077  0.0077
#> 
#> V28
#>   mean           0.7282  0.6767
#>   std. dev.      0.2562  0.2146
#>   weight sum         71      68
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6594  0.6369
#>   std. dev.      0.2365  0.2472
#>   weight sum         71      68
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean            0.045  0.0324
#>   std. dev.      0.0276  0.0238
#>   weight sum         71      68
#>   precision      0.0011  0.0011
#> 
#> V30
#>   mean           0.5921  0.5724
#>   std. dev.      0.2069  0.2409
#>   weight sum         71      68
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4856  0.5249
#>   std. dev.      0.2265  0.2105
#>   weight sum         71      68
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.4273   0.462
#>   std. dev.       0.207  0.2157
#>   weight sum         71      68
#>   precision      0.0064  0.0064
#> 
#> V33
#>   mean           0.3825  0.4424
#>   std. dev.      0.1811   0.216
#>   weight sum         71      68
#>   precision      0.0058  0.0058
#> 
#> V34
#>   mean           0.3668  0.4399
#>   std. dev.      0.2083  0.2345
#>   weight sum         71      68
#>   precision      0.0068  0.0068
#> 
#> V35
#>   mean           0.3506  0.4433
#>   std. dev.      0.2551  0.2453
#>   weight sum         71      68
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3216  0.4331
#>   std. dev.      0.2568   0.242
#>   weight sum         71      68
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3168  0.3925
#>   std. dev.      0.2273  0.2264
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3385  0.3355
#>   std. dev.      0.2016  0.1959
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V39
#>   mean           0.3388  0.3041
#>   std. dev.      0.1834  0.1857
#>   weight sum         71      68
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0586  0.0395
#>   std. dev.      0.0344    0.03
#>   weight sum         71      68
#>   precision      0.0013  0.0013
#> 
#> V40
#>   mean           0.3003  0.2952
#>   std. dev.      0.1527  0.1712
#>   weight sum         71      68
#>   precision      0.0066  0.0066
#> 
#> V41
#>   mean           0.2995  0.2587
#>   std. dev.      0.1578  0.1393
#>   weight sum         71      68
#>   precision      0.0049  0.0049
#> 
#> V42
#>   mean           0.3021  0.2282
#>   std. dev.      0.1739  0.1298
#>   weight sum         71      68
#>   precision      0.0057  0.0057
#> 
#> V43
#>   mean           0.2775  0.1915
#>   std. dev.      0.1443  0.0902
#>   weight sum         71      68
#>   precision      0.0053  0.0053
#> 
#> V44
#>   mean           0.2537  0.1607
#>   std. dev.       0.136  0.0794
#>   weight sum         71      68
#>   precision      0.0041  0.0041
#> 
#> V45
#>   mean           0.2529  0.1294
#>   std. dev.      0.1757  0.0749
#>   weight sum         71      68
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2022  0.1069
#>   std. dev.      0.1644  0.0705
#>   weight sum         71      68
#>   precision      0.0055  0.0055
#> 
#> V47
#>   mean           0.1488  0.0851
#>   std. dev.      0.0984  0.0541
#>   weight sum         71      68
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1106  0.0622
#>   std. dev.       0.069  0.0388
#>   weight sum         71      68
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0638  0.0361
#>   std. dev.      0.0376  0.0233
#>   weight sum         71      68
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0798  0.0616
#>   std. dev.      0.0458  0.0484
#>   weight sum         71      68
#>   precision      0.0019  0.0019
#> 
#> V50
#>   mean           0.0237  0.0168
#>   std. dev.      0.0149   0.011
#>   weight sum         71      68
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0199  0.0112
#>   std. dev.      0.0155  0.0074
#>   weight sum         71      68
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0162  0.0106
#>   std. dev.      0.0105  0.0072
#>   weight sum         71      68
#>   precision      0.0006  0.0006
#> 
#> V53
#>   mean           0.0125  0.0092
#>   std. dev.      0.0078   0.006
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean            0.013   0.009
#>   std. dev.      0.0085  0.0053
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V55
#>   mean           0.0108  0.0089
#>   std. dev.      0.0094  0.0053
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0095  0.0068
#>   std. dev.      0.0071  0.0045
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0079
#>   std. dev.      0.0057   0.006
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0095  0.0066
#>   std. dev.      0.0083  0.0046
#>   weight sum         71      68
#>   precision      0.0005  0.0005
#> 
#> V59
#>   mean           0.0083  0.0065
#>   std. dev.      0.0068  0.0043
#>   weight sum         71      68
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1076  0.0956
#>   std. dev.      0.0482  0.0696
#>   weight sum         71      68
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0068  0.0055
#>   std. dev.      0.0048  0.0032
#>   weight sum         71      68
#>   precision      0.0003  0.0003
#> 
#> V7
#>   mean           0.1335   0.111
#>   std. dev.      0.0597  0.0681
#>   weight sum         71      68
#>   precision      0.0027  0.0027
#> 
#> V8
#>   mean           0.1509  0.1145
#>   std. dev.      0.0864  0.0824
#>   weight sum         71      68
#>   precision      0.0033  0.0033
#> 
#> V9
#>   mean           0.2148  0.1424
#>   std. dev.      0.1239  0.1041
#>   weight sum         71      68
#>   precision      0.0048  0.0048
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3623188 
```
