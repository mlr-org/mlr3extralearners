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

- [`LearnerClassifLiblineaR$new()`](#method-LearnerClassifLiblineaR-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifLiblineaR$new()

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#>              V1        V10       V11       V12        V13         V14       V15
#> [1,] -0.2393352 -0.7132251 -1.186104 -1.037922 -0.7509016 -0.09646513 0.2648387
#>            V16       V17       V18        V19         V2        V20        V21
#> [1,] 0.6130993 0.4449434 0.2876784 -0.2170967 -0.2664004 -0.1212935 -0.4677614
#>             V22         V23        V24       V25       V26         V27
#> [1,] -0.5023897 -0.04297988 -0.1268369 0.3106031 0.1742721 -0.03458045
#>             V28        V29         V3         V30      V31        V32       V33
#> [1,] -0.2220412 -0.2386928 -0.3047802 -0.03616971 1.059978 0.08392441 0.1862832
#>            V34       V35       V36       V37         V38        V39        V4
#> [1,] 0.2702586 0.1064693 0.7780759 0.9871662 0.008017672 -0.3264137 -0.473641
#>           V40      V41        V42        V43       V44       V45        V46
#> [1,] 0.371685 0.167289 -0.4344687 -0.9664674 -1.267637 -1.239547 -0.9429018
#>             V47        V48        V49         V5         V50         V51
#> [1,] -0.6992825 -0.6461085 -0.4406855 -0.4457246 -0.03465582 -0.07713578
#>              V52         V53         V54        V55         V56       V57
#> [1,] -0.04724368 -0.02897777 -0.05067284 0.01875376 -0.02214225 0.0158362
#>              V58         V59         V6         V60        V7        V8
#> [1,] -0.05576269 -0.04996819 -0.1301471 -0.02680863 0.1901859 0.1821099
#>              V9      Bias
#> [1,] -0.6066744 0.8301302
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
#>  0.2318841 
```
