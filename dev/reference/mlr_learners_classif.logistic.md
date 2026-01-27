# Classification Logistic Regression Learner

Multinomial Logistic Regression model with a ridge estimator. Calls
[`RWeka::Logistic()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_functions.html)
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

    lrn("classif.logistic")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |         |             |                       |
|---------------------------|---------|---------|-------------|-----------------------|
| Id                        | Type    | Default | Levels      | Range                 |
| subset                    | untyped | \-      |             | \-                    |
| na.action                 | untyped | \-      |             | \-                    |
| C                         | logical | FALSE   | TRUE, FALSE | \-                    |
| R                         | numeric | \-      |             | \\(-\infty, \infty)\\ |
| M                         | integer | -1      |             | \\(-\infty, \infty)\\ |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-                    |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-                    |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\      |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\      |
| options                   | untyped | NULL    |             | \-                    |

## References

le Cessie, S., van Houwelingen, J.C. (1992). “Ridge Estimators in
Logistic Regression.” *Applied Statistics*, **41**(1), 191-201.

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
-\> `LearnerClassifLogistic`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifLogistic$new()`](#method-LearnerClassifLogistic-new)

- [`LearnerClassifLogistic$marshal()`](#method-LearnerClassifLogistic-marshal)

- [`LearnerClassifLogistic$unmarshal()`](#method-LearnerClassifLogistic-unmarshal)

- [`LearnerClassifLogistic$clone()`](#method-LearnerClassifLogistic-clone)

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

    LearnerClassifLogistic$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifLogistic$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifLogistic$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLogistic$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.logistic")
print(learner)
#> 
#> ── <LearnerClassifLogistic> (classif.logistic): Multinomial Logistic Regression 
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
#> Logistic Regression with ridge parameter of 1.0E-8
#> Coefficients...
#>                              Class
#> Variable                         M
#> ==================================
#> V1                       1090.2192
#> V10                      -110.9116
#> V11                       -60.6662
#> V12                       198.8645
#> V13                       194.1061
#> V14                      -247.8868
#> V15                        57.5119
#> V16                       -35.2637
#> V17                       -43.1384
#> V18                        -5.2721
#> V19                        69.4701
#> V2                         90.4963
#> V20                      -147.8005
#> V21                       147.7637
#> V22                       210.6123
#> V23                      -294.9755
#> V24                       294.3987
#> V25                      -196.3369
#> V26                         11.875
#> V27                       184.3992
#> V28                      -249.6062
#> V29                       217.4904
#> V3                       -672.1103
#> V30                        81.3903
#> V31                      -250.3271
#> V32                       174.9971
#> V33                      -110.2193
#> V34                      -109.5006
#> V35                       310.1631
#> V36                      -295.1481
#> V37                       -73.1498
#> V38                        99.8886
#> V39                        82.5753
#> V4                         -9.1776
#> V40                      -128.4583
#> V41                       105.5812
#> V42                        73.8863
#> V43                       -76.0959
#> V44                       194.6792
#> V45                       -19.6493
#> V46                       234.2969
#> V47                      -689.2153
#> V48                       623.7791
#> V49                       -27.6261
#> V5                        187.3583
#> V50                      -156.6671
#> V51                      2959.9495
#> V52                      -140.4126
#> V53                      1213.0253
#> V54                       680.9389
#> V55                       -996.134
#> V56                       144.1241
#> V57                       218.1029
#> V58                      2017.0555
#> V59                        39.1296
#> V6                       -176.9931
#> V60                      -2437.534
#> V7                       -248.5607
#> V8                         170.637
#> V9                        155.1639
#> Intercept                -165.5958
#> 
#> 
#> Odds Ratios...
#>                              Class
#> Variable                         M
#> ==================================
#> V1                        Infinity
#> V10                              0
#> V11                              0
#> V12            2.32139078293608E86
#> V13          1.9915736355038413E84
#> V14                              0
#> V15           9.486174374389407E24
#> V16                              0
#> V17                              0
#> V18                         0.0051
#> V19          1.4806898260692615E30
#> V2           2.0047053612817287E39
#> V20                              0
#> V21          1.4891973888698986E64
#> V22           2.936002873693422E91
#> V23                              0
#> V24          7.173829502695271E127
#> V25                              0
#> V26                    143637.5283
#> V27          1.2121233829319876E80
#> V28                              0
#> V29          2.8502968578551262E94
#> V3                               0
#> V30          2.2250908382367208E35
#> V31                              0
#> V32           1.000617497146402E76
#> V33                              0
#> V34                              0
#> V35          5.036624521354542E134
#> V36                              0
#> V37                              0
#> V38             2.4047642023565E43
#> V39           7.278076075755032E35
#> V4                          0.0001
#> V40                              0
#> V41           7.134231870473384E45
#> V42          1.2257357884167647E32
#> V43                              0
#> V44           3.532611858783399E84
#> V45                              0
#> V46           5.67340848740583E101
#> V47                              0
#> V48          8.013607717048785E270
#> V49                              0
#> V5           2.3371738790276573E81
#> V50                              0
#> V51                       Infinity
#> V52                              0
#> V53                       Infinity
#> V54          5.345894304283477E295
#> V55                              0
#> V56          3.9109871004703513E62
#> V57          5.2586809964001835E94
#> V58                       Infinity
#> V59           9.857194527594952E16
#> V6                               0
#> V60                              0
#> V7                               0
#> V8            1.278546684432694E74
#> V9           2.4367277943149016E67
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
