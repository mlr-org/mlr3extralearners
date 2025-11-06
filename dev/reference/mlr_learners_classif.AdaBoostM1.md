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
#> • Other settings: use_weights = 'error'

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
#> V49 <= 0.0238 : R
#> V49 > 0.0238 : M
#> V49 is missing : R
#> 
#> Class distributions
#> 
#> V49 <= 0.0238
#> M    R   
#> 0.054409005628517824 0.9455909943714821  
#> V49 > 0.0238
#> M    R   
#> 0.5189290943317297   0.4810709056682702  
#> V49 is missing
#> M    R   
#> 0.40250783699059584  0.5974921630094042  
#> 
#> 
#> Weight: 0.51
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V45 <= 0.32375 : R
#> V45 > 0.32375 : M
#> V45 is missing : R
#> 
#> Class distributions
#> 
#> V45 <= 0.32375
#> M    R   
#> 0.2518639733335287   0.7481360266664713  
#> V45 > 0.32375
#> M    R   
#> 0.8346481787898782   0.16535182121012187 
#> V45 is missing
#> M    R   
#> 0.328892381944902    0.671107618055098   
#> 
#> 
#> Weight: 1.15
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V37 <= 0.45465 : M
#> V37 > 0.45465 : R
#> V37 is missing : M
#> 
#> Class distributions
#> 
#> V37 <= 0.45465
#> M    R   
#> 0.6887887667411455   0.31121123325885447 
#> V37 > 0.45465
#> M    R   
#> 0.1763658609450729   0.8236341390549271  
#> V37 is missing
#> M    R   
#> 0.5271686250118222   0.4728313749881778  
#> 
#> 
#> Weight: 1.0
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V28 <= 0.9233 : R
#> V28 > 0.9233 : M
#> V28 is missing : R
#> 
#> Class distributions
#> 
#> V28 <= 0.9233
#> M    R   
#> 0.3555358063832327   0.6444641936167673  
#> V28 > 0.9233
#> M    R   
#> 0.8760000580301067   0.12399994196989325 
#> V28 is missing
#> M    R   
#> 0.4259092173898291   0.574090782610171   
#> 
#> 
#> Weight: 0.73
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V21 <= 0.53485 : R
#> V21 > 0.53485 : M
#> V21 is missing : M
#> 
#> Class distributions
#> 
#> V21 <= 0.53485
#> M    R   
#> 0.265746902435134    0.7342530975648661  
#> V21 > 0.53485
#> M    R   
#> 0.7145241413888114   0.2854758586111887  
#> V21 is missing
#> M    R   
#> 0.5617822463633587   0.4382177536366412  
#> 
#> 
#> Weight: 0.95
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V42 <= 0.27454999999999996 : R
#> V42 > 0.27454999999999996 : M
#> V42 is missing : R
#> 
#> Class distributions
#> 
#> V42 <= 0.27454999999999996
#> M    R   
#> 0.31736145057646625  0.6826385494235337  
#> V42 > 0.27454999999999996
#> M    R   
#> 0.7516036376180585   0.24839636238194163 
#> V42 is missing
#> M    R   
#> 0.4889845330712027   0.5110154669287973  
#> 
#> 
#> Weight: 0.89
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V51 <= 0.0129 : R
#> V51 > 0.0129 : M
#> V51 is missing : M
#> 
#> Class distributions
#> 
#> V51 <= 0.0129
#> M    R   
#> 0.3427097254871734   0.6572902745128266  
#> V51 > 0.0129
#> M    R   
#> 0.7136968307313384   0.28630316926866156 
#> V51 is missing
#> M    R   
#> 0.5400210207298772   0.4599789792701228  
#> 
#> 
#> Weight: 0.79
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V59 <= 0.01095 : R
#> V59 > 0.01095 : M
#> V59 is missing : M
#> 
#> Class distributions
#> 
#> V59 <= 0.01095
#> M    R   
#> 0.41614983507323616  0.5838501649267639  
#> V59 > 0.01095
#> M    R   
#> 0.8461676836478615   0.15383231635213854 
#> V59 is missing
#> M    R   
#> 0.5326732044900366   0.46732679550996337 
#> 
#> 
#> Weight: 0.64
#> 
#> Decision Stump
#> 
#> Classifications
#> 
#> V28 <= 0.95425 : M
#> V28 > 0.95425 : M
#> V28 is missing : M
#> 
#> Class distributions
#> 
#> V28 <= 0.95425
#> M    R   
#> 0.5390572957843922   0.4609427042156078  
#> V28 > 0.95425
#> M    R   
#> 0.9585642717334097   0.04143572826659032 
#> V28 is missing
#> M    R   
#> 0.6146478470923142   0.3853521529076858  
#> 
#> 
#> Weight: 0.47
#> 
#> Number of performed Iterations: 10
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
