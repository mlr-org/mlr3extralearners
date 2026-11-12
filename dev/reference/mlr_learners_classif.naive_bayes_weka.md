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
#>   mean            0.034  0.0226
#>   std. dev.      0.0264  0.0128
#>   weight sum         72      67
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2491  0.1496
#>   std. dev.      0.1376     0.1
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V11
#>   mean           0.2823  0.1631
#>   std. dev.      0.1304   0.108
#>   weight sum         72      67
#>   precision      0.0052  0.0052
#> 
#> V12
#>   mean           0.2944  0.1909
#>   std. dev.      0.1259   0.137
#>   weight sum         72      67
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3085  0.2272
#>   std. dev.      0.1295  0.1353
#>   weight sum         72      67
#>   precision      0.0049  0.0049
#> 
#> V14
#>   mean           0.3262  0.2584
#>   std. dev.      0.1701  0.1639
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V15
#>   mean           0.3451  0.2964
#>   std. dev.      0.2013  0.2173
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V16
#>   mean           0.4047  0.3643
#>   std. dev.      0.2136   0.246
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V17
#>   mean           0.4518  0.4086
#>   std. dev.      0.2386  0.2768
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V18
#>   mean            0.504  0.4339
#>   std. dev.      0.2575  0.2701
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean           0.5937   0.459
#>   std. dev.      0.2532  0.2585
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V2
#>   mean           0.0437  0.0292
#>   std. dev.      0.0369  0.0214
#>   weight sum         72      67
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6547  0.4827
#>   std. dev.      0.2559  0.2409
#>   weight sum         72      67
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6959  0.5233
#>   std. dev.      0.2468  0.2303
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.7098  0.5554
#>   std. dev.      0.2438  0.2467
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V23
#>   mean            0.714  0.5988
#>   std. dev.      0.2456  0.2434
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V24
#>   mean           0.7123  0.6406
#>   std. dev.      0.2306  0.2333
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V25
#>   mean           0.6886   0.658
#>   std. dev.      0.2312   0.241
#>   weight sum         72      67
#>   precision      0.0073  0.0073
#> 
#> V26
#>   mean           0.6905  0.6932
#>   std. dev.      0.2398  0.2396
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6846   0.699
#>   std. dev.      0.2641  0.2261
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V28
#>   mean           0.6666  0.6943
#>   std. dev.       0.267  0.1985
#>   weight sum         72      67
#>   precision      0.0074  0.0074
#> 
#> V29
#>   mean           0.6151  0.6653
#>   std. dev.      0.2513  0.2281
#>   weight sum         72      67
#>   precision      0.0075  0.0075
#> 
#> V3
#>   mean           0.0471  0.0345
#>   std. dev.      0.0449  0.0268
#>   weight sum         72      67
#>   precision      0.0023  0.0023
#> 
#> V30
#>   mean           0.5506   0.614
#>   std. dev.      0.2232  0.2367
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V31
#>   mean           0.4412  0.5681
#>   std. dev.      0.2183  0.2118
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V32
#>   mean           0.3802   0.494
#>   std. dev.      0.1896  0.2072
#>   weight sum         72      67
#>   precision      0.0063  0.0063
#> 
#> V33
#>   mean           0.3605  0.4616
#>   std. dev.      0.1744  0.2213
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V34
#>   mean            0.347  0.4665
#>   std. dev.      0.1884  0.2496
#>   weight sum         72      67
#>   precision      0.0069  0.0069
#> 
#> V35
#>   mean           0.3296  0.4677
#>   std. dev.      0.2223    0.27
#>   weight sum         72      67
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean           0.3164  0.4612
#>   std. dev.      0.2399   0.274
#>   weight sum         72      67
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3189   0.417
#>   std. dev.      0.2233  0.2495
#>   weight sum         72      67
#>   precision      0.0067  0.0067
#> 
#> V38
#>   mean           0.3259  0.3569
#>   std. dev.       0.195  0.2252
#>   weight sum         72      67
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3226  0.3177
#>   std. dev.      0.1799   0.201
#>   weight sum         72      67
#>   precision      0.0061  0.0061
#> 
#> V4
#>   mean            0.062  0.0385
#>   std. dev.      0.0588  0.0285
#>   weight sum         72      67
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2991  0.3095
#>   std. dev.      0.1592  0.1908
#>   weight sum         72      67
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2777  0.2776
#>   std. dev.       0.159  0.1778
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean            0.275  0.2458
#>   std. dev.      0.1479  0.1579
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V43
#>   mean           0.2636  0.2085
#>   std. dev.      0.1351  0.1291
#>   weight sum         72      67
#>   precision      0.0055  0.0055
#> 
#> V44
#>   mean           0.2358  0.1831
#>   std. dev.       0.131  0.1154
#>   weight sum         72      67
#>   precision      0.0056  0.0056
#> 
#> V45
#>   mean            0.228  0.1423
#>   std. dev.       0.149  0.0929
#>   weight sum         72      67
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.1876  0.1124
#>   std. dev.      0.1432  0.0836
#>   weight sum         72      67
#>   precision      0.0054  0.0054
#> 
#> V47
#>   mean           0.1402  0.0915
#>   std. dev.      0.0975  0.0543
#>   weight sum         72      67
#>   precision      0.0039  0.0039
#> 
#> V48
#>   mean           0.1038  0.0641
#>   std. dev.      0.0702  0.0376
#>   weight sum         72      67
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0618  0.0341
#>   std. dev.      0.0387  0.0205
#>   weight sum         72      67
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0898  0.0614
#>   std. dev.      0.0669  0.0456
#>   weight sum         72      67
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0222  0.0164
#>   std. dev.      0.0151  0.0107
#>   weight sum         72      67
#>   precision      0.0008  0.0008
#> 
#> V51
#>   mean           0.0184  0.0123
#>   std. dev.      0.0147  0.0084
#>   weight sum         72      67
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0156  0.0102
#>   std. dev.      0.0111  0.0077
#>   weight sum         72      67
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0115  0.0097
#>   std. dev.      0.0072  0.0066
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V54
#>   mean           0.0122  0.0086
#>   std. dev.      0.0084  0.0051
#>   weight sum         72      67
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean           0.0096  0.0082
#>   std. dev.      0.0085  0.0052
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0093  0.0078
#>   std. dev.      0.0064   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V57
#>   mean           0.0079  0.0077
#>   std. dev.      0.0058  0.0056
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V58
#>   mean           0.0099  0.0068
#>   std. dev.      0.0082  0.0051
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0067
#>   std. dev.      0.0067   0.005
#>   weight sum         72      67
#>   precision      0.0004  0.0004
#> 
#> V6
#>   mean           0.1183  0.0987
#>   std. dev.      0.0565  0.0668
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean            0.007  0.0058
#>   std. dev.      0.0064  0.0034
#>   weight sum         72      67
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1353  0.1105
#>   std. dev.      0.0582  0.0624
#>   weight sum         72      67
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1473  0.1098
#>   std. dev.      0.0834  0.0739
#>   weight sum         72      67
#>   precision      0.0031  0.0031
#> 
#> V9
#>   mean           0.2087  0.1341
#>   std. dev.        0.12  0.0923
#>   weight sum         72      67
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
