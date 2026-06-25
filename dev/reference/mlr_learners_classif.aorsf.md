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
#>  Average leaves per tree: 5.29
#> Min observations in leaf: 5
#>           OOB stat value: 0.88
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>        V11        V12         V4        V45        V37        V10        V47 
#> 0.40851064 0.37068966 0.32911392 0.30952381 0.24521073 0.23394495 0.20535714 
#>        V36        V46         V9        V44        V21        V48         V1 
#> 0.20454545 0.19911504 0.19004525 0.18367347 0.18222222 0.18018018 0.17167382 
#>        V20        V13        V49        V35        V52         V5        V51 
#> 0.16228070 0.15458937 0.15350877 0.14084507 0.13839286 0.13445378 0.11934156 
#>        V28        V42        V43        V38        V31        V29        V16 
#> 0.11061947 0.09486166 0.09426230 0.08936170 0.08771930 0.08333333 0.07048458 
#>        V27        V53        V26        V15        V23        V41        V19 
#> 0.06696429 0.06572770 0.06493506 0.06306306 0.06250000 0.06147541 0.06122449 
#>        V57        V18        V22        V50        V40        V14        V54 
#> 0.05928854 0.05761317 0.05607477 0.05581395 0.05531915 0.05042017 0.04587156 
#>        V30        V17         V7        V34         V2        V55        V33 
#> 0.04347826 0.04255319 0.03906250 0.03862661 0.03765690 0.02978723 0.02816901 
#>        V25        V56        V24        V32         V8         V3        V59 
#> 0.02777778 0.02752294 0.02666667 0.02531646 0.02500000 0.02392344 0.02325581 
#>        V60        V58         V6        V39 
#> 0.01913876 0.01843318 0.01357466 0.01282051 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
