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

|                       |           |          |                                                                                      |                                     |
|-----------------------|-----------|----------|--------------------------------------------------------------------------------------|-------------------------------------|
| Id                    | Type      | Default  | Levels                                                                               | Range                               |
| alpha.heuristic       | numeric   | 1        |                                                                                      | \\\[2.22044604925031e-16, \infty)\\ |
| d                     | numeric   | 2        |                                                                                      | \\(-\infty, \infty)\\               |
| Dthr                  | numeric   | 0.1      |                                                                                      | \\\[0, 1\]\\                        |
| eps.high              | numeric   | 0.5      |                                                                                      | \\\[2.22044604925031e-16, \infty)\\ |
| eps.low               | numeric   | 0.15     |                                                                                      | \\\[2.22044604925031e-16, \infty)\\ |
| epsilon               | numeric   | 0.9      |                                                                                      | \\\[0, 1\]\\                        |
| max.gen               | integer   | 10       |                                                                                      | \\\[1, \infty)\\                    |
| max.iter              | integer   | 10       |                                                                                      | \\\[1, \infty)\\                    |
| max.tune              | integer   | 10       |                                                                                      | \\\[1, \infty)\\                    |
| method.type           | character | WM       | WM, SBC, HYFIS, ANFIS, DENFIS, FS.HGD, FIR.DM, GFS.FR.MOGUL, GFS.THRIFT, GFS.LT.RS   | \-                                  |
| mode.tuning           | character | GLOBAL   | GLOBAL, LOCAL                                                                        | \-                                  |
| num.labels            | integer   | 7        |                                                                                      | \\\[1, \infty)\\                    |
| persen_cross          | numeric   | 1        |                                                                                      | \\\[0, 1\]\\                        |
| persen_mutant         | numeric   | 1        |                                                                                      | \\\[0, 1\]\\                        |
| popu.size             | integer   | 10       |                                                                                      | \\\[1, \infty)\\                    |
| r.a                   | numeric   | 0.5      |                                                                                      | \\\[2.22044604925031e-16, \infty)\\ |
| range.data            | untyped   | NULL     |                                                                                      | \-                                  |
| rule.selection        | logical   | FALSE    | TRUE, FALSE                                                                          | \-                                  |
| step.size             | numeric   | 0.01     |                                                                                      | \\\[0, 1\]\\                        |
| type.defuz            | character | WAM      | WAM, FIRST.MAX, LAST.MAX, MEAN.MAX, COG                                              | \-                                  |
| type.implication.func | character | ZADEH    | DIENES_RESHER, LUKASIEWICZ, ZADEH, GOGUEN, GODEL, SHARP, MIZUMOTO, DUBOIS_PRADE, MIN | \-                                  |
| type.mf               | character | GAUSSIAN | TRIANGLE, TRAPEZOID, GAUSSIAN, SIGMOID, BELL                                         | \-                                  |
| type.snorm            | character | MAX      | MAX, HAMACHER, YAGER, PRODUCT, BOUNDED                                               | \-                                  |
| type.tnorm            | character | MIN      | MIN, HAMACHER, YAGER, PRODUCT, BOUNDED                                               | \-                                  |

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrFrbs`

## Methods

### Public methods

- [`LearnerRegrFrbs$new()`](#method-LearnerRegrFrbs-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrFrbs$new()

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#>  [1,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [2,] "IF" "am" "is" "vv.small" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [3,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#>  [4,] "IF" "am" "is" "vv.small" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [5,] "IF" "am" "is" "vv.small" "and" "carb" "is" "small"    "and" "cyl" "is" 
#>  [6,] "IF" "am" "is" "vv.small" "and" "carb" "is" "small"    "and" "cyl" "is" 
#>  [7,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#>  [8,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#>  [9,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [10,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#> [11,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [12,] "IF" "am" "is" "vv.large" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [13,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [14,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [15,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#> [16,] "IF" "am" "is" "vv.large" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#> [17,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.large" "and" "cyl" "is" 
#> [18,] "IF" "am" "is" "vv.large" "and" "carb" "is" "vv.small" "and" "cyl" "is" 
#> [19,] "IF" "am" "is" "vv.small" "and" "carb" "is" "v.small"  "and" "cyl" "is" 
#> [20,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#> [21,] "IF" "am" "is" "vv.small" "and" "carb" "is" "medium"   "and" "cyl" "is" 
#>       [,12]      [,13] [,14]  [,15] [,16]      [,17] [,18]  [,19] [,20]     
#>  [1,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "vv.large"
#>  [2,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#>  [3,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#>  [4,] "medium"   "and" "disp" "is"  "small"    "and" "drat" "is"  "vv.small"
#>  [5,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [6,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "v.small" 
#>  [7,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#>  [8,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "v.large" 
#>  [9,] "vv.large" "and" "disp" "is"  "large"    "and" "drat" "is"  "vv.large"
#> [10,] "vv.small" "and" "disp" "is"  "vv.small" "and" "drat" "is"  "v.large" 
#> [11,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [12,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [13,] "vv.large" "and" "disp" "is"  "large"    "and" "drat" "is"  "large"   
#> [14,] "medium"   "and" "disp" "is"  "v.small"  "and" "drat" "is"  "v.large" 
#> [15,] "vv.large" "and" "disp" "is"  "v.large"  "and" "drat" "is"  "v.small" 
#> [16,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "vv.large"
#> [17,] "vv.large" "and" "disp" "is"  "medium"   "and" "drat" "is"  "medium"  
#> [18,] "vv.small" "and" "disp" "is"  "v.small"  "and" "drat" "is"  "large"   
#> [19,] "vv.large" "and" "disp" "is"  "large"    "and" "drat" "is"  "small"   
#> [20,] "vv.large" "and" "disp" "is"  "vv.large" "and" "drat" "is"  "small"   
#> [21,] "vv.large" "and" "disp" "is"  "vv.large" "and" "drat" "is"  "v.small" 
#>       [,21] [,22]  [,23] [,24]      [,25] [,26] [,27] [,28]      [,29] [,30] 
#>  [1,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#>  [2,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [3,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [4,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "v.small"  "and" "qsec"
#>  [5,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>  [6,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>  [7,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#>  [8,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#>  [9,] "and" "gear" "is"  "vv.large" "and" "hp"  "is"  "large"    "and" "qsec"
#> [10,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "vv.small" "and" "qsec"
#> [11,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [12,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [13,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "large"    "and" "qsec"
#> [14,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [15,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "small"    "and" "qsec"
#> [16,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [17,] "and" "gear" "is"  "vv.large" "and" "hp"  "is"  "vv.large" "and" "qsec"
#> [18,] "and" "gear" "is"  "medium"   "and" "hp"  "is"  "v.small"  "and" "qsec"
#> [19,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "small"    "and" "qsec"
#> [20,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "large"    "and" "qsec"
#> [21,] "and" "gear" "is"  "vv.small" "and" "hp"  "is"  "medium"   "and" "qsec"
#>       [,31] [,32]      [,33] [,34] [,35] [,36]      [,37] [,38] [,39]
#>  [1,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [2,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [3,] "is"  "vv.large" "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [4,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [5,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>  [6,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>  [7,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [8,] "is"  "large"    "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#>  [9,] "is"  "vv.small" "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [10,] "is"  "medium"   "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [11,] "is"  "v.small"  "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [12,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [13,] "is"  "v.small"  "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [14,] "is"  "medium"   "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [15,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [16,] "is"  "medium"   "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [17,] "is"  "vv.small" "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [18,] "is"  "medium"   "and" "vs"  "is"  "vv.large" "and" "wt"  "is" 
#> [19,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [20,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#> [21,] "is"  "small"    "and" "vs"  "is"  "vv.small" "and" "wt"  "is" 
#>       [,40]      [,41]  [,42] [,43] [,44]     
#>  [1,] "vv.small" "THEN" "mpg" "is"  "vv.large"
#>  [2,] "v.small"  "THEN" "mpg" "is"  "medium"  
#>  [3,] "small"    "THEN" "mpg" "is"  "medium"  
#>  [4,] "medium"   "THEN" "mpg" "is"  "small"   
#>  [5,] "large"    "THEN" "mpg" "is"  "small"   
#>  [6,] "medium"   "THEN" "mpg" "is"  "small"   
#>  [7,] "small"    "THEN" "mpg" "is"  "large"   
#>  [8,] "v.small"  "THEN" "mpg" "is"  "vv.large"
#>  [9,] "small"    "THEN" "mpg" "is"  "v.small" 
#> [10,] "vv.small" "THEN" "mpg" "is"  "large"   
#> [11,] "v.small"  "THEN" "mpg" "is"  "medium"  
#> [12,] "small"    "THEN" "mpg" "is"  "medium"  
#> [13,] "medium"   "THEN" "mpg" "is"  "v.small" 
#> [14,] "medium"   "THEN" "mpg" "is"  "small"   
#> [15,] "medium"   "THEN" "mpg" "is"  "small"   
#> [16,] "small"    "THEN" "mpg" "is"  "medium"  
#> [17,] "medium"   "THEN" "mpg" "is"  "v.small" 
#> [18,] "v.small"  "THEN" "mpg" "is"  "medium"  
#> [19,] "medium"   "THEN" "mpg" "is"  "small"   
#> [20,] "vv.large" "THEN" "mpg" "is"  "v.small" 
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
#>  [1,] 0.9200763
#>  [2,] 0.7481040
#>  [3,] 0.7348734
#>  [4,] 0.6869344
#>  [5,] 0.5092745
#>  [6,] 0.5092745
#>  [7,] 0.6648505
#>  [8,] 0.4375647
#>  [9,] 0.4544688
#> [10,] 0.4789988
#> [11,] 0.4725141
#> [12,] 0.4725141
#> [13,] 0.4725141
#> [14,] 0.4468445
#> [15,] 0.3851057
#> [16,] 0.4342669
#> [17,] 0.4525169
#> [18,] 0.3913072
#> [19,] 0.3851057
#> [20,] 0.3921187
#> [21,] 0.3817718
#> 
#> $rule.data.num
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
#>  [1,]    7    8   15   22   35   39   43   54   63    64    77
#>  [2,]    1    8   15   23   33   36   44   54   63    65    74
#>  [3,]    1    9   15   23   34   39   44   56   63    66    74
#>  [4,]    1    8   18   24   29   36   44   54   63    67    73
#>  [5,]    1   10   21   25   30   36   46   52   57    68    73
#>  [6,]    1   10   21   25   30   36   46   52   57    67    73
#>  [7,]    1    9   15   23   33   39   43   54   63    66    75
#>  [8,]    7    8   15   22   34   39   43   54   63    65    77
#>  [9,]    7   11   21   26   35   42   47   50   57    66    72
#> [10,]    7    8   15   22   34   39   43   53   63    64    75
#> [11,]    7   11   18   23   34   39   44   51   57    65    74
#> [12,]    7   11   18   23   34   39   44   52   57    66    74
#> [13,]    1   11   21   26   33   36   47   51   57    67    72
#> [14,]    1   11   18   23   34   39   44   53   63    67    73
#> [15,]    1    9   21   27   30   36   45   52   57    67    73
#> [16,]    7    9   15   23   35   39   44   53   63    66    74
#> [17,]    7   14   21   25   32   42   49   50   57    67    72
#> [18,]    7    8   15   23   33   39   44   53   63    65    74
#> [19,]    1    9   21   26   31   36   45   52   57    67    73
#> [20,]    1   11   21   28   31   36   47   52   57    70    72
#> [21,]    1   11   21   28   30   36   46   52   57    70    71
#> 
#> $degree.rule
#>                 
#>  [1,] 0.92007635
#>  [2,] 0.74810403
#>  [3,] 0.73487339
#>  [4,] 0.68693443
#>  [5,] 0.59110655
#>  [6,] 0.50927448
#>  [7,] 0.47754758
#>  [8,] 0.45045471
#>  [9,] 0.44313607
#> [10,] 0.33284074
#> [11,] 0.29663650
#> [12,] 0.29663650
#> [13,] 0.24043998
#> [14,] 0.22013182
#> [15,] 0.22013182
#> [16,] 0.13900452
#> [17,] 0.11683327
#> [18,] 0.10632742
#> [19,] 0.05629793
#> [20,] 0.03834348
#> [21,] 0.00000000
#> 
#> $range.data.ori
#>      [,1] [,2] [,3]  [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
#> [1,]    0    1    4  71.1 2.76    3   62 14.5    0 1.835  10.4
#> [2,]    1    8    8 472.0 4.22    5  335 22.9    1 5.345  33.9
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

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.103764 
```
