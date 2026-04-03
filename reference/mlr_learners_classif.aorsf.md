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
#>  Average leaves per tree: 5.106
#> Min observations in leaf: 5
#>           OOB stat value: 0.90
#>            OOB stat type: AUC-ROC
#>      Variable importance: anova
#> 
#> -----------------------------------------
print(learner$importance())
#>         V49          V9         V11         V36         V48         V10 
#> 0.383561644 0.348416290 0.341836735 0.336244541 0.328703704 0.310526316 
#>         V37         V52          V1         V45         V46         V12 
#> 0.272251309 0.254716981 0.250000000 0.240740741 0.236842105 0.236714976 
#>         V35         V29         V28         V34         V54         V21 
#> 0.233944954 0.205128205 0.197183099 0.193717277 0.191176471 0.189054726 
#>         V47         V51         V44         V23         V17          V2 
#> 0.182692308 0.181818182 0.172588832 0.169082126 0.157142857 0.156250000 
#>          V4         V18         V22         V20         V13         V24 
#> 0.148471616 0.139423077 0.134199134 0.130232558 0.129186603 0.116883117 
#>         V27         V30         V16          V5         V19         V43 
#> 0.114832536 0.111111111 0.110091743 0.106481481 0.104265403 0.102325581 
#>         V58         V38         V59         V14         V26         V15 
#> 0.099056604 0.094339623 0.089285714 0.082926829 0.072463768 0.070707071 
#>          V8         V33         V41         V50          V6         V39 
#> 0.068807339 0.066350711 0.064814815 0.063583815 0.062500000 0.060747664 
#>         V25         V31         V60          V3         V40         V57 
#> 0.057416268 0.051401869 0.050925926 0.049107143 0.044692737 0.041860465 
#>         V42         V32         V56          V7         V53         V55 
#> 0.037914692 0.037558685 0.033018868 0.023474178 0.010256410 0.009090909 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
