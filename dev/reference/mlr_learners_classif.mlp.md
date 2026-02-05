# Classification Multilayer Perceptron Learner

Calls [`RSNNS::mlp()`](https://rdrr.io/pkg/RSNNS/man/mlp.html) from
[RSNNS](https://CRAN.R-project.org/package=RSNNS).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.mlp")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RSNNS](https://CRAN.R-project.org/package=RSNNS)

## Parameters

|                  |         |                       |             |                  |
|------------------|---------|-----------------------|-------------|------------------|
| Id               | Type    | Default               | Levels      | Range            |
| size             | untyped | 5L                    |             | \-               |
| maxit            | integer | 100                   |             | \\\[1, \infty)\\ |
| initFunc         | untyped | "Randomize_Weights"   |             | \-               |
| initFuncParams   | untyped | \-                    |             | \-               |
| learnFunc        | untyped | "Std_Backpropagation" |             | \-               |
| learnFuncParams  | untyped | \-                    |             | \-               |
| updateFunc       | untyped | "Topological_Order"   |             | \-               |
| updateFuncParams | untyped | \-                    |             | \-               |
| hiddenActFunc    | untyped | "Act_Logistic"        |             | \-               |
| shufflePatterns  | logical | TRUE                  | TRUE, FALSE | \-               |
| linOut           | logical | FALSE                 | TRUE, FALSE | \-               |
| inputsTest       | untyped | \-                    |             | \-               |
| targetsTest      | untyped | \-                    |             | \-               |
| pruneFunc        | untyped | \-                    |             | \-               |
| pruneFuncParams  | untyped | \-                    |             | \-               |

## References

`r format_bib("rsnns2023")`

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifMLP`

## Methods

### Public methods

- [`LearnerClassifMLP$new()`](#method-LearnerClassifMLP-new)

- [`LearnerClassifMLP$clone()`](#method-LearnerClassifMLP-clone)

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

    LearnerClassifMLP$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifMLP$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.mlp")
print(learner)
#> 
#> ── <LearnerClassifMLP> (classif.mlp): Multi-Layer Perceptron ───────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RSNNS
#> • Predict Types: [response] and prob
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Class: mlp->rsnns
#> Number of inputs: 60 
#> Number of outputs: 2 
#> Maximal iterations: 100 
#> Initialization function: Randomize_Weights 
#> Initialization function parameters: -0.3 0.3 
#> Learning function: Std_Backpropagation 
#> Learning function parameters: 0.2 0 
#> Update function:Topological_Order
#> Update function parameters: 0 
#> Patterns are shuffled internally: TRUE 
#> Compute error in every iteration: TRUE 
#> Architecture Parameters:
#> $size
#> [1] 5
#> 
#> All members of model:
#>  [1] "nInputs"               "maxit"                 "initFunc"             
#>  [4] "initFuncParams"        "learnFunc"             "learnFuncParams"      
#>  [7] "updateFunc"            "updateFuncParams"      "shufflePatterns"      
#> [10] "computeIterativeError" "snnsObject"            "archParams"           
#> [13] "IterativeFitError"     "fitted.values"         "nOutputs"             


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
