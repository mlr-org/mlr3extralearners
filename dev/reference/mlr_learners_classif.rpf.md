# Classification Random Planted Forest Learner

Random planted forest: a directly interpretable tree ensemble. Calls
[`randomPlantedForest::rpf()`](https://plantedml.com/randomPlantedForest/reference/rpf.html)
from package 'randomPlantedForest'.

## Installation

Package 'randomPlantedForest' is not on CRAN and has to be installed
from GitHub via
`remotes::install_github("PlantedML/randomPlantedForest")`.

## Saving a Learner

The fitted forest lives in C++ memory and does not survive R
serialization. Call `$marshal()` before writing a trained learner to
disk, and `$unmarshal()` after loading it again. By default, marshaling
does not store the training data, so a restored model cannot be purified
afterwards. Set `purify = TRUE` at training time if purification is
needed, or include the training data in the marshaled model via the
`marshal_include_data` parameter or `$marshal(include_data = TRUE)`.

## Custom mlr3 parameters

- `max_interaction`:

  - This hyperparameter can alternatively be set via
    `max_interaction_ratio` as
    `max_interaction = max(ceiling(max_interaction_ratio * n_features), 1)`.
    The parameter `max_interaction_limit` can optionally be set as an
    upper bound, such that
    `max_interaction_ratio * min(n_features, max_interaction_limit)` is
    used instead. This is analogous to `mtry.ratio` in
    [`classif.ranger`](https://mlr3learners.mlr-org.com/reference/mlr_learners_classif.ranger.html),
    with `max_interaction_limit` as an additional constraint. The
    parameter `max_interaction_limit` is initialized to `Inf`.

- `marshal_include_data`:

  - Whether to store the training data when marshaling the model, which
    is required to call
    [`randomPlantedForest::purify()`](https://plantedml.com/randomPlantedForest/reference/purify.html)
    on a restored model. Defaults to `FALSE` to keep marshaled models
    small. Can be overridden for a single call via
    `$marshal(include_data = TRUE)`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.rpf")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [randomPlantedForest](https://CRAN.R-project.org/package=randomPlantedForest)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| max_interaction | integer | 2 |  | \\\[0, \infty)\\ |
| max_interaction_ratio | numeric | \- |  | \\\[0, 1\]\\ |
| max_interaction_limit | integer | \- |  | \\\[1, \infty)\\ |
| ntrees | integer | 50 |  | \\\[1, \infty)\\ |
| splits | integer | 30 |  | \\\[1, \infty)\\ |
| split_structure | character | leaves | leaves, hist, cur_trees_1, cur_trees_2, res_trees | \- |
| split_try | integer | 10 |  | \\\[1, \infty)\\ |
| t_try | numeric | 0.4 |  | \\\[0, 1\]\\ |
| max_candidates | integer | 50 |  | \\\[1, \infty)\\ |
| split_decay_rate | numeric | 0.1 |  | \\\[0, \infty)\\ |
| delete_leaves | logical | TRUE | TRUE, FALSE | \- |
| loss | character | exponential | L1, L2, logit, exponential | \- |
| delta | numeric | 0.001 |  | \\\[0, 1\]\\ |
| epsilon | numeric | 0.1 |  | \\\[0, 1\]\\ |
| purify | logical | FALSE | TRUE, FALSE | \- |
| nthreads | integer | 1 |  | \\\[1, \infty)\\ |
| export_forest | logical | FALSE | TRUE, FALSE | \- |
| deterministic | logical | FALSE | TRUE, FALSE | \- |
| marshal_include_data | logical | FALSE | TRUE, FALSE | \- |

## References

Hiabu, Munir, Mammen, Enno, Meyer, T. J (2023). “Random Planted Forest:
a directly interpretable tree ensemble.” *arXiv preprint
arXiv:2012.14563*.
[doi:10.48550/ARXIV.2012.14563](https://doi.org/10.48550/ARXIV.2012.14563)
.

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

jemus42

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifRandomPlantedForest`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifRandomPlantedForest$new()`](#method-LearnerClassifRandomPlantedForest-initialize)

- [`LearnerClassifRandomPlantedForest$marshal()`](#method-LearnerClassifRandomPlantedForest-marshal)

- [`LearnerClassifRandomPlantedForest$unmarshal()`](#method-LearnerClassifRandomPlantedForest-unmarshal)

- [`LearnerClassifRandomPlantedForest$clone()`](#method-LearnerClassifRandomPlantedForest-clone)

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

### `LearnerClassifRandomPlantedForest$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifRandomPlantedForest$new()

------------------------------------------------------------------------

### `LearnerClassifRandomPlantedForest$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifRandomPlantedForest$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifRandomPlantedForest$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifRandomPlantedForest$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifRandomPlantedForest$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifRandomPlantedForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.rpf")
print(learner)
#> 
#> ── <LearnerClassifRandomPlantedForest> (classif.rpf): Random Planted Forest ────
#> • Model: -
#> • Parameters: max_interaction_limit=Inf
#> • Packages: mlr3, mlr3extralearners, and randomPlantedForest
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
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
#> ── Random Planted Forest model ─────────────────────────────────────────────────
#> Classification (logit loss), 2 classes: M, R. Scores = intercept + the sum of 36 components.
#> Intercept: -0.467273
#> 
#> Components (largest first), importance = share of the variance of the prediction on the training rows:
#>  component importance
#>  V11       3.3%      
#>  V12       3.2%      
#>  V49       2.1%      
#>  V51       1.9%      
#>  V48       1.5%      
#>  V37       1.1%      
#>  V47       1.1%      
#>  V36       0.9%      
#>  V46       0.79%     
#>  V52       0.62%     
#>  V35       0.61%     
#>  V10       0.54%     
#>  V9        0.47%     
#>  V45       0.42%     
#>  V28       0.41%     
#>  V21       0.36%     
#>  V23       0.32%     
#>  V39       0.31%     
#>  V59       0.2%      
#>  V27       0.17%     
#> ... and 16 more
#> 
#> How it was chosen:
#>   The forest: 200 tree families of 50 splits (chosen out of bag; growing stopped at 50).
#>   From the forest's 2625 nonzero components (purified): those with a share of at least 0.03% of the forest's Var(prediction), as they are (rule D).
#>   Rule and threshold chosen by out-of-bag error (1-SE rule; 5 folds, seed 1116950216) among 16 candidates.
#>   Left out: 2589 components, shares together 0.63% (largest V40, 0.028%).


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
