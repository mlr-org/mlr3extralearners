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
#>  Average leaves per tree: 4.77
#> Min observations in leaf: 5
#>           OOB stat value: 0.88
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>         V12         V11         V47         V21         V48         V36 
#> 0.470297030 0.459090909 0.375565611 0.338308458 0.309644670 0.299539171 
#>         V22         V46         V10         V20         V37         V19 
#> 0.280373832 0.279835391 0.274038462 0.273972603 0.238095238 0.228699552 
#>         V13         V45          V9         V49         V44         V52 
#> 0.228070175 0.226244344 0.218009479 0.215517241 0.181818182 0.172897196 
#>          V1         V35         V31         V17         V16          V5 
#> 0.161434978 0.156398104 0.133928571 0.128078818 0.126903553 0.113744076 
#>         V39          V4         V18         V34         V57         V29 
#> 0.108786611 0.105726872 0.104265403 0.100502513 0.098214286 0.096330275 
#>         V55         V38         V51         V43         V14         V28 
#> 0.094786730 0.089743590 0.085714286 0.083333333 0.082191781 0.076530612 
#>         V32         V23         V41          V2         V42         V15 
#> 0.063492063 0.061032864 0.058823529 0.054852321 0.054726368 0.051948052 
#>          V8         V30         V25         V58         V40         V33 
#> 0.051383399 0.050691244 0.050420168 0.042328042 0.039823009 0.039603960 
#>         V50         V53         V24          V3         V60         V27 
#> 0.037914692 0.037037037 0.034313725 0.030973451 0.030000000 0.029268293 
#>         V26          V7         V59         V56         V54          V6 
#> 0.027522936 0.025862069 0.023364486 0.018181818 0.008968610 0.008810573 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2318841 
```
