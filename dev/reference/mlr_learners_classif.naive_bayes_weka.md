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
#>                 (0.57)  (0.43)
#> ===============================
#> V1
#>   mean           0.0381  0.0235
#>   std. dev.      0.0297  0.0164
#>   weight sum         79      60
#>   precision      0.0011  0.0011
#> 
#> V10
#>   mean           0.2565  0.1743
#>   std. dev.      0.1423  0.1306
#>   weight sum         79      60
#>   precision      0.0046  0.0046
#> 
#> V11
#>   mean            0.294  0.1841
#>   std. dev.       0.125  0.1171
#>   weight sum         79      60
#>   precision      0.0047  0.0047
#> 
#> V12
#>   mean           0.3009  0.1968
#>   std. dev.      0.1297  0.1356
#>   weight sum         79      60
#>   precision       0.005   0.005
#> 
#> V13
#>   mean           0.3143   0.233
#>   std. dev.      0.1382  0.1368
#>   weight sum         79      60
#>   precision      0.0052  0.0052
#> 
#> V14
#>   mean           0.3178  0.2854
#>   std. dev.       0.168  0.1579
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V15
#>   mean           0.3345  0.3282
#>   std. dev.      0.2061   0.209
#>   weight sum         79      60
#>   precision      0.0067  0.0067
#> 
#> V16
#>   mean           0.3838  0.3892
#>   std. dev.      0.2221  0.2426
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V17
#>   mean           0.4037  0.4216
#>   std. dev.      0.2424  0.2941
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V18
#>   mean           0.4376  0.4457
#>   std. dev.      0.2547  0.2694
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V19
#>   mean            0.525  0.4475
#>   std. dev.      0.2473  0.2562
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V2
#>   mean           0.0489  0.0325
#>   std. dev.      0.0417   0.026
#>   weight sum         79      60
#>   precision      0.0018  0.0018
#> 
#> V20
#>   mean           0.6065  0.4778
#>   std. dev.      0.2501  0.2552
#>   weight sum         79      60
#>   precision      0.0068  0.0068
#> 
#> V21
#>   mean           0.6551  0.5315
#>   std. dev.      0.2497  0.2351
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V22
#>   mean           0.6441  0.5591
#>   std. dev.      0.2413  0.2547
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V23
#>   mean           0.6416  0.6043
#>   std. dev.      0.2678  0.2453
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V24
#>   mean           0.6618  0.6448
#>   std. dev.      0.2592  0.2335
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V25
#>   mean           0.6577  0.6487
#>   std. dev.      0.2487  0.2598
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V26
#>   mean           0.6828  0.6717
#>   std. dev.      0.2407   0.234
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V27
#>   mean           0.6975  0.6831
#>   std. dev.      0.2706  0.1795
#>   weight sum         79      60
#>   precision      0.0074  0.0074
#> 
#> V28
#>   mean           0.7126  0.6781
#>   std. dev.      0.2638  0.1848
#>   weight sum         79      60
#>   precision      0.0075  0.0075
#> 
#> V29
#>   mean           0.6465  0.6386
#>   std. dev.       0.255  0.2416
#>   weight sum         79      60
#>   precision      0.0076  0.0076
#> 
#> V3
#>   mean           0.0536  0.0402
#>   std. dev.      0.0481  0.0319
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V30
#>   mean           0.5815  0.5927
#>   std. dev.      0.2196  0.2357
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V31
#>   mean           0.4807  0.5208
#>   std. dev.      0.2242  0.2101
#>   weight sum         79      60
#>   precision      0.0063  0.0063
#> 
#> V32
#>   mean           0.4266  0.4187
#>   std. dev.      0.2018  0.2053
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V33
#>   mean           0.3961  0.4261
#>   std. dev.      0.1892  0.2093
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V34
#>   mean           0.3779  0.4439
#>   std. dev.      0.2034  0.2439
#>   weight sum         79      60
#>   precision      0.0064  0.0064
#> 
#> V35
#>   mean           0.3609  0.4489
#>   std. dev.      0.2525  0.2612
#>   weight sum         79      60
#>   precision      0.0071  0.0071
#> 
#> V36
#>   mean             0.34  0.4388
#>   std. dev.      0.2677  0.2716
#>   weight sum         79      60
#>   precision      0.0072  0.0072
#> 
#> V37
#>   mean           0.3371  0.4019
#>   std. dev.      0.2481  0.2582
#>   weight sum         79      60
#>   precision      0.0066  0.0066
#> 
#> V38
#>   mean           0.3419  0.3632
#>   std. dev.      0.2269  0.2399
#>   weight sum         79      60
#>   precision       0.007   0.007
#> 
#> V39
#>   mean           0.3316  0.3284
#>   std. dev.      0.1945  0.2313
#>   weight sum         79      60
#>   precision      0.0069  0.0069
#> 
#> V4
#>   mean           0.0681  0.0438
#>   std. dev.      0.0601  0.0349
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V40
#>   mean           0.2974  0.3303
#>   std. dev.      0.1618  0.1999
#>   weight sum         79      60
#>   precision      0.0065  0.0065
#> 
#> V41
#>   mean           0.2942  0.2937
#>   std. dev.      0.1711  0.1755
#>   weight sum         79      60
#>   precision      0.0054  0.0054
#> 
#> V42
#>   mean           0.3055  0.2637
#>   std. dev.      0.1764  0.1597
#>   weight sum         79      60
#>   precision      0.0059  0.0059
#> 
#> V43
#>   mean           0.2841  0.2264
#>   std. dev.      0.1454  0.1228
#>   weight sum         79      60
#>   precision      0.0056  0.0056
#> 
#> V44
#>   mean           0.2559  0.1771
#>   std. dev.      0.1457   0.109
#>   weight sum         79      60
#>   precision      0.0058  0.0058
#> 
#> V45
#>   mean           0.2578  0.1441
#>   std. dev.      0.1764  0.0943
#>   weight sum         79      60
#>   precision      0.0051  0.0051
#> 
#> V46
#>   mean           0.2135  0.1181
#>   std. dev.      0.1572  0.0903
#>   weight sum         79      60
#>   precision      0.0053  0.0053
#> 
#> V47
#>   mean           0.1541   0.095
#>   std. dev.      0.1014  0.0641
#>   weight sum         79      60
#>   precision       0.004   0.004
#> 
#> V48
#>   mean           0.1156  0.0698
#>   std. dev.      0.0701  0.0465
#>   weight sum         79      60
#>   precision      0.0024  0.0024
#> 
#> V49
#>   mean           0.0666  0.0386
#>   std. dev.      0.0376  0.0261
#>   weight sum         79      60
#>   precision      0.0014  0.0014
#> 
#> V5
#>   mean           0.0877  0.0673
#>   std. dev.      0.0612  0.0509
#>   weight sum         79      60
#>   precision       0.003   0.003
#> 
#> V50
#>   mean           0.0229  0.0184
#>   std. dev.      0.0143  0.0104
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V51
#>   mean           0.0205  0.0136
#>   std. dev.      0.0148  0.0091
#>   weight sum         79      60
#>   precision      0.0009  0.0009
#> 
#> V52
#>   mean           0.0171  0.0116
#>   std. dev.      0.0119  0.0076
#>   weight sum         79      60
#>   precision      0.0007  0.0007
#> 
#> V53
#>   mean           0.0118  0.0096
#>   std. dev.      0.0078  0.0062
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V54
#>   mean           0.0125  0.0098
#>   std. dev.      0.0086  0.0055
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V55
#>   mean             0.01   0.009
#>   std. dev.      0.0077  0.0049
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V56
#>   mean           0.0089  0.0072
#>   std. dev.      0.0057  0.0048
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V57
#>   mean            0.008  0.0082
#>   std. dev.      0.0057  0.0059
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V58
#>   mean           0.0089  0.0072
#>   std. dev.      0.0073  0.0048
#>   weight sum         79      60
#>   precision      0.0004  0.0004
#> 
#> V59
#>   mean           0.0088  0.0072
#>   std. dev.      0.0066  0.0049
#>   weight sum         79      60
#>   precision      0.0003  0.0003
#> 
#> V6
#>   mean           0.1107  0.1048
#>   std. dev.      0.0551  0.0684
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V60
#>   mean           0.0074  0.0069
#>   std. dev.      0.0063  0.0039
#>   weight sum         79      60
#>   precision      0.0005  0.0005
#> 
#> V7
#>   mean           0.1298  0.1232
#>   std. dev.      0.0626  0.0706
#>   weight sum         79      60
#>   precision      0.0028  0.0028
#> 
#> V8
#>   mean           0.1603  0.1276
#>   std. dev.      0.0966  0.0859
#>   weight sum         79      60
#>   precision      0.0034  0.0034
#> 
#> V9
#>   mean           0.2232   0.154
#>   std. dev.      0.1341  0.1134
#>   weight sum         79      60
#>   precision      0.0049  0.0049
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
