# Classification Bayes Network Learner

Bayes Network learning using various search algorithms. Calls
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

- `N` removed:

  - Initial structure is empty

- `P` removed:

  - Maximum number of parents

- `R` removed:

  - Random order

- `mbc` removed:

  - Applies a Markov Blanket correction to the network structure, after
    a network structure is learned

- `S` removed:

  - Score type

- `A` removed:

  - Initial count (alpha)

- Reason for change: The parameters are removed because they don't work
  out of the box and it's unclear how to use them.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.bayes_net")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |           |         |                                                                                                                                                                                                                                  |                  |
|---------------------------|-----------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|
| Id                        | Type      | Default | Levels                                                                                                                                                                                                                           | Range            |
| subset                    | untyped   | \-      |                                                                                                                                                                                                                                  | \-               |
| na.action                 | untyped   | \-      |                                                                                                                                                                                                                                  | \-               |
| D                         | logical   | \-      | TRUE, FALSE                                                                                                                                                                                                                      | \-               |
| B                         | untyped   | \-      |                                                                                                                                                                                                                                  | \-               |
| Q                         | character | \-      | global.K2, global.HillClimber, global.SimulatedAnnealing, global.TabuSearch, global.TAN, local.K2, local.HillClimber, local.LAGDHillClimber, local.SimulatedAnnealing, local.TabuSearch, [...](https://rdrr.io/r/base/dots.html) | \-               |
| E                         | character | \-      | estimate.SimpleEstimator, estimate.BMAEstimator, estimate.MultiNomialBMAEstimator                                                                                                                                                | \-               |
| output_debug_info         | logical   | FALSE   | TRUE, FALSE                                                                                                                                                                                                                      | \-               |
| do_not_check_capabilities | logical   | FALSE   | TRUE, FALSE                                                                                                                                                                                                                      | \-               |
| num_decimal_places        | integer   | 2       |                                                                                                                                                                                                                                  | \\\[1, \infty)\\ |
| batch_size                | integer   | 100     |                                                                                                                                                                                                                                  | \\\[1, \infty)\\ |
| options                   | untyped   | NULL    |                                                                                                                                                                                                                                  | \-               |

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
-\> `LearnerClassifBayesNet`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifBayesNet$new()`](#method-LearnerClassifBayesNet-new)

- [`LearnerClassifBayesNet$marshal()`](#method-LearnerClassifBayesNet-marshal)

- [`LearnerClassifBayesNet$unmarshal()`](#method-LearnerClassifBayesNet-unmarshal)

- [`LearnerClassifBayesNet$clone()`](#method-LearnerClassifBayesNet-clone)

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

    LearnerClassifBayesNet$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifBayesNet$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifBayesNet$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifBayesNet$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.bayes_net")
print(learner)
#> 
#> ── <LearnerClassifBayesNet> (classif.bayes_net): Bayes Network ─────────────────
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
#> Bayes Network Classifier
#> not using ADTree
#> #attributes=61 #classindex=0
#> Network structure (nodes followed by parents)
#> Class(2): 
#> V1(1): Class 
#> V10(2): Class 
#> V11(2): Class 
#> V12(2): Class 
#> V13(2): Class 
#> V14(1): Class 
#> V15(1): Class 
#> V16(1): Class 
#> V17(1): Class 
#> V18(1): Class 
#> V19(1): Class 
#> V2(1): Class 
#> V20(1): Class 
#> V21(1): Class 
#> V22(1): Class 
#> V23(1): Class 
#> V24(1): Class 
#> V25(1): Class 
#> V26(1): Class 
#> V27(1): Class 
#> V28(1): Class 
#> V29(1): Class 
#> V3(1): Class 
#> V30(1): Class 
#> V31(2): Class 
#> V32(1): Class 
#> V33(1): Class 
#> V34(1): Class 
#> V35(1): Class 
#> V36(2): Class 
#> V37(1): Class 
#> V38(1): Class 
#> V39(1): Class 
#> V4(1): Class 
#> V40(1): Class 
#> V41(1): Class 
#> V42(1): Class 
#> V43(1): Class 
#> V44(1): Class 
#> V45(2): Class 
#> V46(1): Class 
#> V47(1): Class 
#> V48(2): Class 
#> V49(2): Class 
#> V5(1): Class 
#> V50(1): Class 
#> V51(1): Class 
#> V52(1): Class 
#> V53(1): Class 
#> V54(1): Class 
#> V55(1): Class 
#> V56(1): Class 
#> V57(1): Class 
#> V58(1): Class 
#> V59(1): Class 
#> V6(1): Class 
#> V60(1): Class 
#> V7(1): Class 
#> V8(1): Class 
#> V9(2): Class 
#> LogScore Bayes: -943.2406417144924
#> LogScore BDeu: -960.4196461269338
#> LogScore MDL: -962.6991741397649
#> LogScore ENTROPY: -910.8871978418928
#> LogScore AIC: -931.8871978418928
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
