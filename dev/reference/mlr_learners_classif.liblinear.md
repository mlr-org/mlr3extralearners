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
#> [1,] -0.1338546 -0.9731935 -1.361045 -1.094093 -0.8169477 0.007168965 0.3592928
#>           V16       V17       V18        V19         V2       V20        V21
#> [1,] 0.642375 0.5002523 0.2605174 -0.1767728 -0.2175993 -0.409517 -0.4815953
#>             V22        V23        V24       V25      V26        V27        V28
#> [1,] -0.4514174 -0.4868849 -0.1371354 0.6483231 0.323884 0.05601376 -0.1981097
#>            V29         V3        V30      V31       V32         V33        V34
#> [1,] -0.243187 -0.2518344 -0.0788924 1.040425 0.1194838 0.004456125 0.08692027
#>            V35       V36      V37        V38        V39         V4       V40
#> [1,] 0.3907111 0.8891141 1.037802 0.04481532 -0.1734599 -0.4894807 0.4153552
#>              V41        V42        V43        V44       V45       V46
#> [1,] -0.05078803 -0.3731126 -0.6291395 -0.6566581 -1.350178 -1.083905
#>             V47       V48        V49         V5         V50        V51
#> [1,] -0.7967512 -0.756916 -0.4473006 -0.3675314 -0.05131071 -0.1081536
#>             V52         V53         V54         V55        V56        V57
#> [1,] -0.1031522 -0.01636318 -0.03533354 0.006475598 0.01044302 0.00936415
#>              V58         V59         V6         V60         V7        V8
#> [1,] -0.04156293 -0.03001068 -0.2904229 0.001748521 -0.2169323 -0.288389
#>              V9      Bias
#> [1,] -0.7699394 0.7646189
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
#>  0.2028986 
```
