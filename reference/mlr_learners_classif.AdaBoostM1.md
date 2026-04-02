# Classification AdaBoostM1 Learner

Adaptive boosting algorithm for classification. Calls
[`RWeka::AdaBoostM1()`](https://rdrr.io/pkg/RWeka/man/Weka_classifier_meta.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.AdaBoostM1")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |                 |             |                  |
|---------------------------|---------|-----------------|-------------|------------------|
| Id                        | Type    | Default         | Levels      | Range            |
| subset                    | untyped | \-              |             | \-               |
| na.action                 | untyped | \-              |             | \-               |
| P                         | integer | 100             |             | \\\[90, 100\]\\  |
| Q                         | logical | FALSE           | TRUE, FALSE | \-               |
| S                         | integer | 1               |             | \\\[1, \infty)\\ |
| I                         | integer | 10              |             | \\\[1, \infty)\\ |
| W                         | untyped | "DecisionStump" |             | \-               |
| output_debug_info         | logical | FALSE           | TRUE, FALSE | \-               |
| do_not_check_capabilities | logical | FALSE           | TRUE, FALSE | \-               |
| num_decimal_places        | integer | 2               |             | \\\[1, \infty)\\ |
| batch_size                | integer | 100             |             | \\\[1, \infty)\\ |
| options                   | untyped | NULL            |             | \-               |

## Parameter changes

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

## References

Freund, Yoav, Schapire, E R, others (1996). “Experiments with a new
boosting algorithm.” In *icml*, volume 96, 148–156. Citeseer.

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

henrifnk

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifAdaBoostM1`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifAdaBoostM1$new()`](#method-LearnerClassifAdaBoostM1-new)

- [`LearnerClassifAdaBoostM1$marshal()`](#method-LearnerClassifAdaBoostM1-marshal)

- [`LearnerClassifAdaBoostM1$unmarshal()`](#method-LearnerClassifAdaBoostM1-unmarshal)

- [`LearnerClassifAdaBoostM1$clone()`](#method-LearnerClassifAdaBoostM1-clone)

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

    LearnerClassifAdaBoostM1$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifAdaBoostM1$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifAdaBoostM1$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifAdaBoostM1$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.AdaBoostM1")
print(learner)
#> 
#> ── <LearnerClassifAdaBoostM1> (classif.AdaBoostM1): Adaptive Boosting ──────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, multiclass, and twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> AdaBoostM1: Base classifiers and their weights: 
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V11 <= 0.17070000000000002 : R
#> V11 > 0.17070000000000002 : M
#> V11 is missing : R
#> 
#> Class distributions
#> 
#> V11 <= 0.17070000000000002
#> M    R   
#> 0.12727272727272726  0.8727272727272727  
#> V11 > 0.17070000000000002
#> M    R   
#> 0.7380952380952381   0.2619047619047619  
#> V11 is missing
#> M    R   
#> 0.49640287769784175  0.5035971223021583  
#> 
#> 
#> Weight: 1.33
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V36 <= 0.46475 : M
#> V36 > 0.46475 : R
#> V36 is missing : R
#> 
#> Class distributions
#> 
#> V36 <= 0.46475
#> M    R   
#> 0.5520373097692686   0.44796269023073143 
#> V36 > 0.46475
#> M    R   
#> 0.13833477883781428  0.8616652211621857  
#> V36 is missing
#> M    R   
#> 0.4025078369905959   0.5974921630094042  
#> 
#> 
#> Weight: 0.68
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V45 <= 0.38545 : R
#> V45 > 0.38545 : M
#> V45 is missing : R
#> 
#> Class distributions
#> 
#> V45 <= 0.38545
#> M    R   
#> 0.2557859638254008   0.7442140361745991  
#> V45 > 0.38545
#> M    R   
#> 0.8963128382890337   0.1036871617109662  
#> V45 is missing
#> M    R   
#> 0.3398563573774193   0.6601436426225806  
#> 
#> 
#> Weight: 1.18
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V11 <= 0.1117 : R
#> V11 > 0.1117 : M
#> V11 is missing : M
#> 
#> Class distributions
#> 
#> V11 <= 0.1117
#> M    R   
#> 0.0  1.0 
#> V11 > 0.1117
#> M    R   
#> 0.6177127230427156   0.3822872769572844  
#> V11 is missing
#> M    R   
#> 0.5481188931977876   0.45188110680221233 
#> 
#> 
#> Weight: 0.67
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V21 <= 0.81445 : R
#> V21 > 0.81445 : M
#> V21 is missing : R
#> 
#> Class distributions
#> 
#> V21 <= 0.81445
#> M    R   
#> 0.2802042213569229   0.7197957786430771  
#> V21 > 0.81445
#> M    R   
#> 0.7393119305731614   0.26068806942683853 
#> V21 is missing
#> M    R   
#> 0.414749767920319    0.585250232079681   
#> 
#> 
#> Weight: 0.97
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V13 <= 0.17670000000000002 : R
#> V13 > 0.17670000000000002 : M
#> V13 is missing : M
#> 
#> Class distributions
#> 
#> V13 <= 0.17670000000000002
#> M    R   
#> 0.14987114364134382  0.8501288563586562  
#> V13 > 0.17670000000000002
#> M    R   
#> 0.5998842960297699   0.4001157039702301  
#> V13 is missing
#> M    R   
#> 0.510151667468419    0.4898483325315811  
#> 
#> 
#> Weight: 0.62
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V4 <= 0.04915 : R
#> V4 > 0.04915 : M
#> V4 is missing : R
#> 
#> Class distributions
#> 
#> V4 <= 0.04915
#> M    R   
#> 0.28162643946554067  0.7183735605344593  
#> V4 > 0.04915
#> M    R   
#> 0.6536359573606423   0.3463640426393577  
#> V4 is missing
#> M    R   
#> 0.4122251936073745   0.5877748063926255  
#> 
#> 
#> Weight: 0.83
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V27 <= 0.71825 : R
#> V27 > 0.71825 : M
#> V27 is missing : R
#> 
#> Class distributions
#> 
#> V27 <= 0.71825
#> M    R   
#> 0.2779729071294684   0.7220270928705317  
#> V27 > 0.71825
#> M    R   
#> 0.7191849164493896   0.28081508355061036 
#> V27 is missing
#> M    R   
#> 0.46517049142384254  0.5348295085761575  
#> 
#> 
#> Weight: 0.95
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V54 <= 0.0225 : R
#> V54 > 0.0225 : M
#> V54 is missing : R
#> 
#> Class distributions
#> 
#> V54 <= 0.0225
#> M    R   
#> 0.42865372888056585  0.571346271119434   
#> V54 > 0.0225
#> M    R   
#> 0.9664629607162379   0.03353703928376202 
#> V54 is missing
#> M    R   
#> 0.49827505587385607  0.5017249441261441  
#> 
#> 
#> Weight: 0.5
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V23 <= 0.6987 : R
#> V23 > 0.6987 : M
#> V23 is missing : M
#> 
#> Class distributions
#> 
#> V23 <= 0.6987
#> M    R   
#> 0.41528907103125384  0.5847109289687461  
#> V23 > 0.6987
#> M    R   
#> 0.7991221642884683   0.20087783571153184 
#> V23 is missing
#> M    R   
#> 0.5947421046222063   0.4052578953777938  
#> 
#> 
#> Weight: 0.78
#> 
#> Number of performed Iterations: 10
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
