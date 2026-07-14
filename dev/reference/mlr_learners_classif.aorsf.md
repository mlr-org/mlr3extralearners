# Oblique Random Forest Classifier

Accelerated oblique random classification forest. Calls
[`aorsf::orsf()`](https://docs.ropensci.org/aorsf/reference/orsf.html)
from [aorsf](https://CRAN.R-project.org/package=aorsf). Note that
although the learner has the property `"missing"` and it can in
principle deal with missing values, the behavior has to be configured
using the parameter `na_action`.

## Initial parameter values

- `n_thread`: This parameter is initialized to 1 (default is 0) to avoid
  conflicts with the mlr3 parallelization.

- `pred_simplify` has to be TRUE, otherwise response is NA in prediction

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.aorsf")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [aorsf](https://CRAN.R-project.org/package=aorsf)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| attach_data | logical | TRUE | TRUE, FALSE | \- |
| epsilon | numeric | 1e-09 |  | \\\[0, \infty)\\ |
| importance | character | anova | none, anova, negate, permute | \- |
| importance_max_pvalue | numeric | 0.01 |  | \\\[1e-04, 0.9999\]\\ |
| leaf_min_events | integer | 1 |  | \\\[1, \infty)\\ |
| leaf_min_obs | integer | 5 |  | \\\[1, \infty)\\ |
| max_iter | integer | 20 |  | \\\[1, \infty)\\ |
| method | character | glm | glm, net, pca, random | \- |
| mtry | integer | NULL |  | \\\[1, \infty)\\ |
| mtry_ratio | numeric | \- |  | \\\[0, 1\]\\ |
| n_retry | integer | 3 |  | \\\[0, \infty)\\ |
| n_split | integer | 5 |  | \\\[1, \infty)\\ |
| n_thread | integer | \- |  | \\\[0, \infty)\\ |
| n_tree | integer | 500 |  | \\\[1, \infty)\\ |
| na_action | character | fail | fail, impute_meanmode | \- |
| net_mix | numeric | 0.5 |  | \\(-\infty, \infty)\\ |
| oobag | logical | FALSE | TRUE, FALSE | \- |
| oobag_eval_every | integer | NULL |  | \\\[1, \infty)\\ |
| oobag_fun | untyped | NULL |  | \- |
| oobag_pred_type | character | prob | none, leaf, prob, class | \- |
| pred_aggregate | logical | TRUE | TRUE, FALSE | \- |
| sample_fraction | numeric | 0.632 |  | \\\[0, 1\]\\ |
| sample_with_replacement | logical | TRUE | TRUE, FALSE | \- |
| scale_x | logical | FALSE | TRUE, FALSE | \- |
| split_min_events | integer | 5 |  | \\\[1, \infty)\\ |
| split_min_obs | integer | 10 |  | \\\[1, \infty)\\ |
| split_min_stat | numeric | NULL |  | \\\[0, \infty)\\ |
| split_rule | character | gini | gini, cstat | \- |
| target_df | integer | NULL |  | \\\[1, \infty)\\ |
| tree_seeds | integer | NULL |  | \\\[1, \infty)\\ |
| verbose_progress | logical | FALSE | TRUE, FALSE | \- |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifObliqueRandomForest`

## Methods

### Public methods

- [`LearnerClassifObliqueRandomForest$new()`](#method-LearnerClassifObliqueRandomForest-initialize)

- [`LearnerClassifObliqueRandomForest$oob_error()`](#method-LearnerClassifObliqueRandomForest-oob_error)

- [`LearnerClassifObliqueRandomForest$importance()`](#method-LearnerClassifObliqueRandomForest-importance)

- [`LearnerClassifObliqueRandomForest$clone()`](#method-LearnerClassifObliqueRandomForest-clone)

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

### `LearnerClassifObliqueRandomForest$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifObliqueRandomForest$new()

------------------------------------------------------------------------

### `LearnerClassifObliqueRandomForest$oob_error()`

OOB concordance error extracted from the model slot
`eval_oobag$stat_values`

#### Usage

    LearnerClassifObliqueRandomForest$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifObliqueRandomForest$importance()`

The importance scores are extracted from the model.

#### Usage

    LearnerClassifObliqueRandomForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### `LearnerClassifObliqueRandomForest$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifObliqueRandomForest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.aorsf")
print(learner)
#> 
#> ── <LearnerClassifObliqueRandomForest> (classif.aorsf): Oblique Random Forest Cl
#> • Model: -
#> • Parameters: n_thread=1
#> • Packages: mlr3, mlr3extralearners, and aorsf
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, multiclass, oob_error, twoclass, and
#> weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> ---------- Oblique random classification forest
#> 
#>      Linear combinations: Logistic regression
#>           N observations: 139
#>                N classes: 2
#>                  N trees: 500
#>       N predictors total: 60
#>    N predictors per node: 8
#>  Average leaves per tree: 4.99
#> Min observations in leaf: 5
#>           OOB stat value: 0.89
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>         V11         V10          V9          V4         V45         V49 
#> 0.459183673 0.355450237 0.303482587 0.298507463 0.291262136 0.279569892 
#>         V36         V48         V12         V51         V47         V44 
#> 0.266666667 0.255605381 0.250000000 0.247706422 0.236111111 0.221198157 
#>         V22         V35         V21         V46         V37         V52 
#> 0.214285714 0.213270142 0.208121827 0.203539823 0.203045685 0.201030928 
#>         V43         V13         V34         V31          V1         V23 
#> 0.191919192 0.187214612 0.177339901 0.156565657 0.140350877 0.139534884 
#>         V39         V20         V19          V8         V17         V18 
#> 0.113636364 0.111111111 0.106194690 0.098654709 0.096774194 0.096234310 
#>          V5         V59         V55         V16         V15         V42 
#> 0.095890411 0.095022624 0.086363636 0.082608696 0.077669903 0.075471698 
#>          V2         V40         V41         V28         V57          V7 
#> 0.066079295 0.065789474 0.065502183 0.064516129 0.064377682 0.061403509 
#>         V38          V3          V6         V26         V50         V54 
#> 0.055813953 0.048076923 0.043859649 0.041284404 0.039603960 0.038277512 
#>         V32         V24         V53         V14         V29         V27 
#> 0.037558685 0.035555556 0.033175355 0.031390135 0.026905830 0.025773196 
#>         V30         V56         V33         V58         V60         V25 
#> 0.024630542 0.023364486 0.020725389 0.020202020 0.014018692 0.004807692 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
