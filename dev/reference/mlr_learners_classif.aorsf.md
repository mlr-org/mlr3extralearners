# Oblique Random Forest Classifier

Accelerated oblique random classification forest. Calls
[`aorsf::orsf()`](https://docs.ropensci.org/aorsf/reference/orsf.html)
from [aorsf](https://CRAN.R-project.org/package=aorsf). Note that
although the learner has the property `"missing"` and it can in
principle deal with missing values, the behaviour has to be configured
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

|                         |           |         |                              |                       |
|-------------------------|-----------|---------|------------------------------|-----------------------|
| Id                      | Type      | Default | Levels                       | Range                 |
| attach_data             | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| epsilon                 | numeric   | 1e-09   |                              | \\\[0, \infty)\\      |
| importance              | character | anova   | none, anova, negate, permute | \-                    |
| importance_max_pvalue   | numeric   | 0.01    |                              | \\\[1e-04, 0.9999\]\\ |
| leaf_min_events         | integer   | 1       |                              | \\\[1, \infty)\\      |
| leaf_min_obs            | integer   | 5       |                              | \\\[1, \infty)\\      |
| max_iter                | integer   | 20      |                              | \\\[1, \infty)\\      |
| method                  | character | glm     | glm, net, pca, random        | \-                    |
| mtry                    | integer   | NULL    |                              | \\\[1, \infty)\\      |
| mtry_ratio              | numeric   | \-      |                              | \\\[0, 1\]\\          |
| n_retry                 | integer   | 3       |                              | \\\[0, \infty)\\      |
| n_split                 | integer   | 5       |                              | \\\[1, \infty)\\      |
| n_thread                | integer   | \-      |                              | \\\[0, \infty)\\      |
| n_tree                  | integer   | 500     |                              | \\\[1, \infty)\\      |
| na_action               | character | fail    | fail, impute_meanmode        | \-                    |
| net_mix                 | numeric   | 0.5     |                              | \\(-\infty, \infty)\\ |
| oobag                   | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| oobag_eval_every        | integer   | NULL    |                              | \\\[1, \infty)\\      |
| oobag_fun               | untyped   | NULL    |                              | \-                    |
| oobag_pred_type         | character | prob    | none, leaf, prob, class      | \-                    |
| pred_aggregate          | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| sample_fraction         | numeric   | 0.632   |                              | \\\[0, 1\]\\          |
| sample_with_replacement | logical   | TRUE    | TRUE, FALSE                  | \-                    |
| scale_x                 | logical   | FALSE   | TRUE, FALSE                  | \-                    |
| split_min_events        | integer   | 5       |                              | \\\[1, \infty)\\      |
| split_min_obs           | integer   | 10      |                              | \\\[1, \infty)\\      |
| split_min_stat          | numeric   | NULL    |                              | \\\[0, \infty)\\      |
| split_rule              | character | gini    | gini, cstat                  | \-                    |
| target_df               | integer   | NULL    |                              | \\\[1, \infty)\\      |
| tree_seeds              | integer   | NULL    |                              | \\\[1, \infty)\\      |
| verbose_progress        | logical   | FALSE   | TRUE, FALSE                  | \-                    |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifObliqueRandomForest`

## Methods

### Public methods

- [`LearnerClassifObliqueRandomForest$new()`](#method-LearnerClassifObliqueRandomForest-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifObliqueRandomForest$new()

------------------------------------------------------------------------

### Method `oob_error()`

OOB concordance error extracted from the model slot
`eval_oobag$stat_values`

#### Usage

    LearnerClassifObliqueRandomForest$oob_error()

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model.

#### Usage

    LearnerClassifObliqueRandomForest$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'use'

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
#>  Average leaves per tree: 4.834
#> Min observations in leaf: 5
#>           OOB stat value: 0.91
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>        V11        V12        V36        V13        V10         V9        V37 
#> 0.55208333 0.52849741 0.39500000 0.37914692 0.36500000 0.31775701 0.27040816 
#>        V48        V47        V45        V46        V49        V20        V52 
#> 0.26344086 0.25345622 0.25108225 0.23783784 0.23560209 0.21962617 0.21666667 
#>        V35        V41         V1         V8        V19        V31        V43 
#> 0.20312500 0.16836735 0.16494845 0.15533981 0.15044248 0.14814815 0.14720812 
#>        V23        V21        V28        V51        V29        V16        V14 
#> 0.13761468 0.13654618 0.13291139 0.12871287 0.12299465 0.11914894 0.10471204 
#>        V57        V44        V34         V6        V22        V24        V38 
#> 0.10087719 0.09852217 0.09734513 0.09405941 0.08955224 0.08823529 0.08474576 
#>        V40        V18        V42        V17        V39        V15        V27 
#> 0.08290155 0.07894737 0.07812500 0.07575758 0.07359307 0.07035176 0.06666667 
#>         V5         V2        V50        V30        V33        V55         V4 
#> 0.05741627 0.05288462 0.05050505 0.04812834 0.04265403 0.04166667 0.04147465 
#>        V53        V60        V54        V25        V58        V59         V7 
#> 0.03723404 0.03603604 0.03448276 0.03365385 0.02955665 0.02926829 0.02912621 
#>        V32         V3        V26        V56 
#> 0.02752294 0.02500000 0.02403846 0.01538462 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2898551 
```
