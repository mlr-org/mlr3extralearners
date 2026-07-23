# Regression Fuzzy Rule-based System Learner

Fuzzy rule-based regression learner supporting multiple inference
engines such as WM, HYFIS, ANFIS, DENFIS, SBC, and several genetic fuzzy
systems. Calls
[`frbs::frbs.learn()`](https://rdrr.io/pkg/frbs/man/frbs.learn.html)
from [frbs](https://CRAN.R-project.org/package=frbs).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.frbs")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [frbs](https://CRAN.R-project.org/package=frbs)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| alpha.heuristic | numeric | 1 |  | \\\[2.22044604925031e-16, \infty)\\ |
| d | numeric | 2 |  | \\(-\infty, \infty)\\ |
| Dthr | numeric | 0.1 |  | \\\[0, 1\]\\ |
| eps.high | numeric | 0.5 |  | \\\[2.22044604925031e-16, \infty)\\ |
| eps.low | numeric | 0.15 |  | \\\[2.22044604925031e-16, \infty)\\ |
| epsilon | numeric | 0.9 |  | \\\[0, 1\]\\ |
| max.gen | integer | 10 |  | \\\[1, \infty)\\ |
| max.iter | integer | 10 |  | \\\[1, \infty)\\ |
| max.tune | integer | 10 |  | \\\[1, \infty)\\ |
| method.type | character | WM | WM, SBC, HYFIS, ANFIS, DENFIS, FS.HGD, FIR.DM, GFS.FR.MOGUL, GFS.THRIFT, GFS.LT.RS | \- |
| mode.tuning | character | GLOBAL | GLOBAL, LOCAL | \- |
| num.labels | integer | 7 |  | \\\[1, \infty)\\ |
| persen_cross | numeric | 1 |  | \\\[0, 1\]\\ |
| persen_mutant | numeric | 1 |  | \\\[0, 1\]\\ |
| popu.size | integer | 10 |  | \\\[1, \infty)\\ |
| r.a | numeric | 0.5 |  | \\\[2.22044604925031e-16, \infty)\\ |
| range.data | untyped | NULL |  | \- |
| rule.selection | logical | FALSE | TRUE, FALSE | \- |
| step.size | numeric | 0.01 |  | \\\[0, 1\]\\ |
| type.defuz | character | WAM | WAM, FIRST.MAX, LAST.MAX, MEAN.MAX, COG | \- |
| type.implication.func | character | ZADEH | DIENES_RESHER, LUKASIEWICZ, ZADEH, GOGUEN, GODEL, SHARP, MIZUMOTO, DUBOIS_PRADE, MIN | \- |
| type.mf | character | GAUSSIAN | TRIANGLE, TRAPEZOID, GAUSSIAN, SIGMOID, BELL | \- |
| type.snorm | character | MAX | MAX, HAMACHER, YAGER, PRODUCT, BOUNDED | \- |
| type.tnorm | character | MIN | MIN, HAMACHER, YAGER, PRODUCT, BOUNDED | \- |

## References

Riza LS, Bergmeir C, Herrera F, Benitez JM (2015). “frbs: Fuzzy
Rule-Based Systems for Classification and Regression in R.” *Journal of
Statistical Software*, **65**(6), 1–30.
<http://www.jstatsoft.org/v65/i06/>.

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrFrbs`

## Methods

### Public methods

- [`LearnerRegrFrbs$new()`](#method-LearnerRegrFrbs-initialize)

- [`LearnerRegrFrbs$clone()`](#method-LearnerRegrFrbs-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### `LearnerRegrFrbs$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrFrbs$new()

------------------------------------------------------------------------

### `LearnerRegrFrbs$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrFrbs$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.frbs")
print(learner)
#> 
#> ── <LearnerRegrFrbs> (regr.frbs): Fuzzy Rule-based System ──────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and frbs
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $num.labels
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
#> [1,]    7    7    7    7    7    7    7    7    7     7     7
#> 
#> $varout.mf
#>        vv.small    v.small      small     medium      large    v.large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.00000000 0.16666667 0.33333333 0.50000000 0.66666667 0.83333333
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>        vv.large
#> [1,] 5.00000000
#> [2,] 1.00000000
#> [3,] 0.05833333
#> [4,]         NA
#> [5,]         NA
#> 
#> $rule
#>       [,1] [,2] [,3] [,4]       [,5]  [,6]   [,7] [,8]       [,9]  [,10] [,11]
#>  [1,] "IF" "am" "is" "vv.small" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [2,] "IF" "am" "is" "vv.small" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [3,] "IF" "am" "is" "vv.small" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [4,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [5,] "IF" "am" "is" "vv.small" "and" "carb" "is" "small"    "and" "cyl" "is" 
#>  [6,] "IF" "am" "is" "vv.small" "and" "carb" "is" "small"    "and" "cyl" "is" 
#>  [7,] "IF" "am" "is" "vv.small" "and" "carb" "is" "small"    "and" "cyl" "is" 
#>  [8,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#>  [9,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#> [10,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [11,] "IF" "am" "is" "vv.large" "and" "carb" "is" "large"    "and" "cyl" "is" 
#> [12,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#> [13,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [14,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [15,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [16,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#> [17,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.large" "and" "cyl" "is" 
#> [18,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#> [19,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#> [20,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [21,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#>       [,12]      [,13] [,14]  [,15] [,16]      [,17] [,18]  [,19] [,20]     
#>  [1,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#>  [2,] "medium"   "and" "disp" "is"  "small"    "and" "drat" "is"  "vv.small"
#>  [3,] "medium"   "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [4,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "vv.large"
#>  [5,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [6,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [7,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [8,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#>  [9,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "v.large" 
#> [10,] "vv.large" "and" "disp" "is"  "large"    "and" "drat" "is"  "vv.large"
#> [11,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#> [12,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "v.large" 
#> [13,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [14,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [15,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [16,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "small"   
#> [17,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "medium"  
#> [18,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#> [19,] "vv.large" "and" "disp" "is"  "large"    "and" "drat" "is"  "small"   
#> [20,] "vv.large" "and" "disp" "is"  "vv.large" "and" "drat" "is"  "v.small" 
#> [21,] "vv.large" "and" "disp" "is"  "vv.large" "and" "drat" "is"  "v.small" 
#>       [,21] [,22]  [,23] [,24]      [,25] [,26] [,27] [,28]      [,29] [,30] 
#>  [1,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [2,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [3,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [4,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#>  [5,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>  [6,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>  [7,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>  [8,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#>  [9,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#> [10,] "and" "gear" "is"  "vv.large" "and" "hp"  "is"  "large"    "and" "qsec"
#> [11,] "and" "gear" "is"  "vv.large" "and" "hp"  "is"  "small"    "and" "qsec"
#> [12,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#> [13,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [14,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [15,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [16,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "small"    "and" "qsec"
#> [17,] "and" "gear" "is"  "vv.large" "and" "hp"  "is"  "vv.large" "and" "qsec"
#> [18,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [19,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "small"    "and" "qsec"
#> [20,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#> [21,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>       [,31] [,32]      [,33] [,34] [,35] [,36]      [,37] [,38] [,39]
#>  [1,] "is"  "vv.large" "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [2,] "is"  "vv.large" "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [3,] "is"  "v.large"  "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [4,] "is"  "vv.large" "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [5,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>  [6,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>  [7,] "is"  "large"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>  [8,] "is"  "vv.large" "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [9,] "is"  "v.large"  "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [10,] "is"  "vv.small" "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [11,] "is"  "v.small"  "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [12,] "is"  "v.large"  "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [13,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [14,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [15,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [16,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [17,] "is"  "vv.small" "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [18,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [19,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [20,] "is"  "large"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [21,] "is"  "medium"   "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>       [,40]      [,41]  [,42] [,43] [,44]     
#>  [1,] "v.small"  "THEN" "mpg" "is"  "medium"  
#>  [2,] "medium"   "THEN" "mpg" "is"  "small"   
#>  [3,] "small"    "THEN" "mpg" "is"  "medium"  
#>  [4,] "vv.small" "THEN" "mpg" "is"  "vv.large"
#>  [5,] "large"    "THEN" "mpg" "is"  "small"   
#>  [6,] "medium"   "THEN" "mpg" "is"  "small"   
#>  [7,] "medium"   "THEN" "mpg" "is"  "v.small" 
#>  [8,] "small"    "THEN" "mpg" "is"  "large"   
#>  [9,] "v.small"  "THEN" "mpg" "is"  "vv.large"
#> [10,] "small"    "THEN" "mpg" "is"  "v.small" 
#> [11,] "small"    "THEN" "mpg" "is"  "small"   
#> [12,] "vv.small" "THEN" "mpg" "is"  "large"   
#> [13,] "v.small"  "THEN" "mpg" "is"  "medium"  
#> [14,] "small"    "THEN" "mpg" "is"  "medium"  
#> [15,] "medium"   "THEN" "mpg" "is"  "small"   
#> [16,] "medium"   "THEN" "mpg" "is"  "v.small" 
#> [17,] "medium"   "THEN" "mpg" "is"  "v.small" 
#> [18,] "v.small"  "THEN" "mpg" "is"  "medium"  
#> [19,] "medium"   "THEN" "mpg" "is"  "small"   
#> [20,] "vv.large" "THEN" "mpg" "is"  "vv.small"
#> [21,] "vv.large" "THEN" "mpg" "is"  "vv.small"
#> 
#> $varinp.mf
#>        vv.small    v.small      small     medium      large    v.large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.00000000 0.16666667 0.33333333 0.50000000 0.66666667 0.83333333
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>        vv.large   vv.small    v.small      small     medium      large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 1.00000000 0.00000000 0.16666667 0.33333333 0.50000000 0.66666667
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>         v.large   vv.large   vv.small    v.small      small     medium
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.83333333 1.00000000 0.00000000 0.16666667 0.33333333 0.50000000
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>           large    v.large   vv.large   vv.small    v.small      small
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.66666667 0.83333333 1.00000000 0.00000000 0.16666667 0.33333333
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>          medium      large    v.large   vv.large   vv.small    v.small
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.50000000 0.66666667 0.83333333 1.00000000 0.00000000 0.16666667
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>           small     medium      large    v.large   vv.large   vv.small
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.33333333 0.50000000 0.66666667 0.83333333 1.00000000 0.00000000
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>         v.small      small     medium      large    v.large   vv.large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.16666667 0.33333333 0.50000000 0.66666667 0.83333333 1.00000000
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>        vv.small    v.small      small     medium      large    v.large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.00000000 0.16666667 0.33333333 0.50000000 0.66666667 0.83333333
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>        vv.large   vv.small    v.small      small     medium      large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 1.00000000 0.00000000 0.16666667 0.33333333 0.50000000 0.66666667
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>         v.large   vv.large   vv.small    v.small      small     medium
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.83333333 1.00000000 0.00000000 0.16666667 0.33333333 0.50000000
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>           large    v.large   vv.large   vv.small    v.small      small
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.66666667 0.83333333 1.00000000 0.00000000 0.16666667 0.33333333
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA         NA         NA
#>          medium      large    v.large   vv.large
#> [1,] 5.00000000 5.00000000 5.00000000 5.00000000
#> [2,] 0.50000000 0.66666667 0.83333333 1.00000000
#> [3,] 0.05833333 0.05833333 0.05833333 0.05833333
#> [4,]         NA         NA         NA         NA
#> [5,]         NA         NA         NA         NA
#> 
#> $degree.ante
#>                
#>  [1,] 0.7481040
#>  [2,] 0.6869344
#>  [3,] 0.6668593
#>  [4,] 0.6313595
#>  [5,] 0.5092745
#>  [6,] 0.5092745
#>  [7,] 0.5092745
#>  [8,] 0.7503733
#>  [9,] 0.4789988
#> [10,] 0.4544688
#> [11,] 0.3851057
#> [12,] 0.4789988
#> [13,] 0.4725141
#> [14,] 0.4725141
#> [15,] 0.4468445
#> [16,] 0.3818582
#> [17,] 0.4525169
#> [18,] 0.3913072
#> [19,] 0.3851057
#> [20,] 0.4725141
#> [21,] 0.3866256
#> 
#> $rule.data.num
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
#>  [1,]    1    8   15   23   33   36   44   56   63    65    74
#>  [2,]    1    8   18   24   29   36   44   56   63    67    73
#>  [3,]    1    8   18   25   30   36   44   55   63    66    74
#>  [4,]    7    8   15   22   35   39   43   56   63    64    77
#>  [5,]    1   10   21   25   30   36   46   53   57    68    73
#>  [6,]    1   10   21   25   30   36   46   53   57    67    73
#>  [7,]    1   10   21   25   30   36   46   54   57    67    72
#>  [8,]    1    9   15   23   33   39   43   56   63    66    75
#>  [9,]    7    8   15   22   34   39   43   55   63    65    77
#> [10,]    7   11   21   26   35   42   47   50   57    66    72
#> [11,]    7   12   18   23   33   42   45   51   57    66    73
#> [12,]    7    8   15   22   34   39   43   55   63    64    75
#> [13,]    7   11   18   23   34   39   44   52   57    65    74
#> [14,]    7   11   18   23   34   39   44   53   57    66    74
#> [15,]    1   11   18   23   34   39   44   54   63    67    73
#> [16,]    1    9   21   25   31   36   45   53   57    67    72
#> [17,]    7   14   21   25   32   42   49   50   57    67    72
#> [18,]    7    8   15   23   33   39   44   54   63    65    74
#> [19,]    1    9   21   26   31   36   45   53   57    67    73
#> [20,]    1   11   21   28   30   36   46   54   57    70    71
#> [21,]    1   11   21   28   30   36   46   53   57    70    71
#> 
#> $degree.rule
#>                 
#>  [1,] 0.74810403
#>  [2,] 0.68693443
#>  [3,] 0.66685934
#>  [4,] 0.63135954
#>  [5,] 0.59110655
#>  [6,] 0.50927448
#>  [7,] 0.50927448
#>  [8,] 0.47754758
#>  [9,] 0.45045471
#> [10,] 0.44313607
#> [11,] 0.43580336
#> [12,] 0.33284074
#> [13,] 0.29663650
#> [14,] 0.29663650
#> [15,] 0.22013182
#> [16,] 0.18747679
#> [17,] 0.11683327
#> [18,] 0.10632742
#> [19,] 0.05629793
#> [20,] 0.00000000
#> [21,] 0.00000000
#> 
#> $range.data.ori
#>      [,1] [,2] [,3]  [,4] [,5] [,6] [,7]  [,8] [,9] [,10] [,11]
#> [1,]    0    1    4  71.1 2.76    3   62 14.50    0 1.835  10.4
#> [2,]    1    8    8 472.0 4.22    5  335 20.22    1 5.424  33.9
#> 
#> $type.mf
#> [1] "GAUSSIAN"
#> 
#> $type.tnorm
#> [1] "MIN"
#> 
#> $type.implication.func
#> [1] "ZADEH"
#> 
#> $type.model
#> [1] "MAMDANI"
#> 
#> $type.defuz
#> [1] "WAM"
#> 
#> $type.snorm
#> [1] "MAX"
#> 
#> $method.type
#> [1] "WM"
#> 
#> $name
#> [1] "sim-0"
#> 
#> $colnames.var
#>  [1] "am"   "carb" "cyl"  "disp" "drat" "gear" "hp"   "qsec" "vs"   "wt"  
#> [11] "mpg" 
#> 
#> attr(,"class")
#> [1] "frbs"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> [1] "note: Some of your new data are out of the previously specified range"
#> [1] "note: Some of your new data are out of the previously specified range"
#> [1] "note: Some of your new data are out of the previously specified range"
#> [1] "note: Some of your new data are out of the previously specified range"

# Score the predictions
predictions$score()
#> regr.mse 
#> 22.55041 
```
