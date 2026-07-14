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
#>  Average leaves per tree: 4.87
#> Min observations in leaf: 5
#>           OOB stat value: 0.90
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>         V52         V36         V12         V11         V51         V37 
#> 0.419512195 0.386934673 0.370833333 0.368663594 0.314285714 0.306034483 
#>         V21         V49         V48         V47         V22          V4 
#> 0.299065421 0.279620853 0.269230769 0.246376812 0.230769231 0.224390244 
#>         V13         V35         V20          V9         V17         V46 
#> 0.223809524 0.205263158 0.200892857 0.165137615 0.161290323 0.154589372 
#>         V18         V10         V43         V16         V45         V23 
#> 0.152838428 0.152284264 0.147982063 0.144278607 0.139037433 0.137055838 
#>          V1         V19         V44         V28         V53          V5 
#> 0.135265700 0.134020619 0.133027523 0.125000000 0.122641509 0.121951220 
#>         V38         V29         V15         V56         V57         V59 
#> 0.113043478 0.104545455 0.103286385 0.099099099 0.097674419 0.089068826 
#>         V30          V8         V50         V42         V31          V2 
#> 0.085201794 0.081339713 0.075892857 0.075555556 0.073170732 0.071770335 
#>         V39         V14         V34         V27         V24         V41 
#> 0.067226891 0.065727700 0.065573770 0.064102564 0.060185185 0.059090909 
#>         V33         V40         V26          V3         V32          V7 
#> 0.053921569 0.053571429 0.049327354 0.037558685 0.033492823 0.032786885 
#>          V6         V25         V55         V54         V58         V60 
#> 0.028436019 0.022857143 0.022522523 0.020100503 0.019417476 0.009615385 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
