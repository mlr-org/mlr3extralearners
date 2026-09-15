# LiblineaR Classification Learner

L2 regularized support vector classification. Calls
[`LiblineaR::LiblineaR()`](https://rdrr.io/pkg/LiblineaR/man/LiblineaR.html)
from [LiblineaR](https://CRAN.R-project.org/package=LiblineaR).

## Details

Type of SVC depends on `type` argument:

- `0` – L2-regularized logistic regression (primal)

- `1` - L2-regularized L2-loss support vector classification (dual)

- `3` - L2-regularized L1-loss support vector classification (dual)

- `2` – L2-regularized L2-loss support vector classification (primal)

- `4` – Support vector classification by Crammer and Singer

- `5` - L1-regularized L2-loss support vector classification

- `6` - L1-regularized logistic regression

- `7` - L2-regularized logistic regression (dual)

If number of records \> number of features, `type = 2` is faster than
`type = 1` (Hsu et al. 2003).

Note that probabilistic predictions are only available for types `0`,
`6`, and `7`. The default `epsilon` value depends on the `type`
parameter, see
[`LiblineaR::LiblineaR()`](https://rdrr.io/pkg/LiblineaR/man/LiblineaR.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.liblinear")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [LiblineaR](https://CRAN.R-project.org/package=LiblineaR)

## Parameters

|          |         |         |             |                       |
|----------|---------|---------|-------------|-----------------------|
| Id       | Type    | Default | Levels      | Range                 |
| type     | integer | 0       |             | \\\[0, 7\]\\          |
| cost     | numeric | 1       |             | \\\[0, \infty)\\      |
| epsilon  | numeric | \-      |             | \\\[0, \infty)\\      |
| bias     | numeric | 1       |             | \\(-\infty, \infty)\\ |
| cross    | integer | 0       |             | \\\[0, \infty)\\      |
| verbose  | logical | FALSE   | TRUE, FALSE | \-                    |
| wi       | untyped | NULL    |             | \-                    |
| findC    | logical | FALSE   | TRUE, FALSE | \-                    |
| useInitC | logical | TRUE    | TRUE, FALSE | \-                    |

## References

Fan, Rong-En, Chang, Kai-Wei, Hsieh, Cho-Jui, Wang, Xiang-Rui, Lin,
Chih-Jen (2008). “LIBLINEAR: A library for large linear classification.”
*the Journal of machine Learning research*, **9**, 1871–1874.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifLiblineaR`

## Methods

### Public methods

- [`LearnerClassifLiblineaR$new()`](#method-LearnerClassifLiblineaR-initialize)

- [`LearnerClassifLiblineaR$clone()`](#method-LearnerClassifLiblineaR-clone)

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

### `LearnerClassifLiblineaR$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLiblineaR$new()

------------------------------------------------------------------------

### `LearnerClassifLiblineaR$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifLiblineaR$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.liblinear")
print(learner)
#> 
#> ── <LearnerClassifLiblineaR> (classif.liblinear): Support Vector Machine ───────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and LiblineaR
#> • Predict Types: [response] and prob
#> • Feature Types: numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass and twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $TypeDetail
#> [1] "L2-regularized logistic regression primal (L2R_LR)"
#> 
#> $Type
#> [1] 0
#> 
#> $W
#>              V1        V10       V11        V12        V13        V14       V15
#> [1,] -0.2104069 -0.9828126 -1.409804 -0.9934658 -0.3806974 0.02786452 0.2964551
#>           V16       V17       V18        V19        V2        V20        V21
#> [1,] 0.660204 0.4654621 0.4052189 0.08142072 -0.156301 -0.4105672 -0.5931833
#>             V22        V23        V24        V25       V26       V27        V28
#> [1,] -0.3119931 -0.2892839 -0.2140215 0.03000102 0.1915396 0.2418947 -0.1934393
#>             V29          V3        V30       V31       V32         V33      V34
#> [1,] -0.2504225 -0.03398012 -0.2786235 0.7594975 0.1290246 -0.02086052 0.490991
#>            V35      V36       V37      V38          V39         V4       V40
#> [1,] 0.8266049 1.187786 0.7484782 0.237678 -0.002296199 -0.1404356 0.3743722
#>              V41       V42        V43       V44       V45        V46        V47
#> [1,] -0.06275912 -0.783986 -0.6598289 -1.055025 -1.332939 -0.9926661 -0.6998079
#>             V48        V49           V5         V50         V51         V52
#> [1,] -0.6294949 -0.3826956 -0.007361009 -0.01195499 -0.06758993 -0.05364897
#>               V53         V54         V55         V56       V57        V58
#> [1,] 0.0005843817 -0.02892484 -0.01444643 -0.03161102 0.0159894 -0.0476265
#>              V59        V6          V60        V7         V8         V9
#> [1,] -0.02236126 0.1868313 -0.008024633 0.0677208 -0.3446827 -0.8832368
#>           Bias
#> [1,] 0.7789808
#> 
#> $Bias
#> [1] 1
#> 
#> $ClassNames
#> [1] R M
#> Levels: M R
#> 
#> $NbClass
#> [1] 2
#> 
#> attr(,"class")
#> [1] "LiblineaR"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3188406 
```
