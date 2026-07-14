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
-\> `LearnerClassifLogistic`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifLogistic$new()`](#method-LearnerClassifLogistic-initialize)

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

### `LearnerClassifLogistic$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLogistic$new()

------------------------------------------------------------------------

### `LearnerClassifLogistic$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifLogistic$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLogistic$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifLogistic$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifLogistic$clone()`

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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#> V1                        640.0779
#> V10                       -90.8247
#> V11                       270.9276
#> V12                       133.7868
#> V13                       -32.3263
#> V14                       -15.5054
#> V15                        58.7787
#> V16                        -18.025
#> V17                          1.984
#> V18                       -30.3656
#> V19                       -50.3031
#> V2                       -559.4445
#> V20                        40.3469
#> V21                        79.8315
#> V22                      -118.3827
#> V23                         59.561
#> V24                       166.1604
#> V25                      -135.1094
#> V26                        73.7164
#> V27                       -86.3434
#> V28                         -3.531
#> V29                        28.9829
#> V3                       -669.1212
#> V30                       101.9715
#> V31                      -174.8892
#> V32                       128.3617
#> V33                       -29.8377
#> V34                      -129.2294
#> V35                       185.7749
#> V36                       -79.0588
#> V37                       -113.635
#> V38                        80.7868
#> V39                       138.6965
#> V4                         73.0311
#> V40                      -263.1644
#> V41                        86.2612
#> V42                        61.9278
#> V43                      -161.0677
#> V44                       342.8741
#> V45                      -219.3059
#> V46                        64.2893
#> V47                       196.3533
#> V48                       148.9344
#> V49                       692.5001
#> V5                        167.3945
#> V50                     -1453.5026
#> V51                      -574.8259
#> V52                      1280.2735
#> V53                       -78.4081
#> V54                      1437.2145
#> V55                     -3630.4916
#> V56                       778.7774
#> V57                     -1692.9184
#> V58                      2254.4051
#> V59                       -279.672
#> V6                        240.8452
#> V60                      2022.9522
#> V7                       -273.3637
#> V8                       -159.0772
#> V9                         65.5463
#> Intercept                -108.7992
#> 
#> 
#> Odds Ratios...
#>                              Class
#> Variable                         M
#> ==================================
#> V1            9.60049475385519E277
#> V10                              0
#> V11          4.595832803783892E117
#> V12          1.2672124911190685E58
#> V13                              0
#> V14                              0
#> V15          3.3672618284976383E25
#> V16                              0
#> V17                         7.2721
#> V18                              0
#> V19                              0
#> V2                               0
#> V20          3.3300946208773952E17
#> V21           4.681424407730079E34
#> V22                              0
#> V23          7.3622545572576825E25
#> V24           1.454004904581458E72
#> V25                              0
#> V26          1.0342334536888977E32
#> V27                              0
#> V28                         0.0293
#> V29           3.864615083175766E12
#> V3                               0
#> V30          1.9305327430490064E44
#> V31                              0
#> V32           5.581998545183007E55
#> V33                              0
#> V34                              0
#> V35           4.797453255122291E80
#> V36                              0
#> V37                              0
#> V38           1.216915439002371E35
#> V39          1.7184464000620415E60
#> V4            5.212021469487217E31
#> V40                              0
#> V41          2.9024676458945108E37
#> V42           7.850907071297294E26
#> V43                              0
#> V44          8.096974467988046E148
#> V45                              0
#> V46           8.326825055861435E27
#> V47          1.8843751317423058E85
#> V48          4.8016024043318124E64
#> V49          5.609870422202672E300
#> V5            4.994744638342137E72
#> V50                              0
#> V51                              0
#> V52                       Infinity
#> V53                              0
#> V54                       Infinity
#> V55                              0
#> V56                       Infinity
#> V57                              0
#> V58                       Infinity
#> V59                              0
#> V6            3.96053889258853E104
#> V60                       Infinity
#> V7                               0
#> V8                               0
#> V9            2.926910096313502E28
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3333333 
```
