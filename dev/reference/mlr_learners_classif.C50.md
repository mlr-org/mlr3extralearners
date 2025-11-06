# Classification C5.0 Learner

Decision Tree Algorithm. Calls
[`C50::C5.0.formula()`](https://topepo.github.io/C5.0/reference/C5.0.html)
from [C50](https://CRAN.R-project.org/package=C50).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.C50")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [C50](https://CRAN.R-project.org/package=C50)

## Parameters

|                 |         |                  |             |                       |
|-----------------|---------|------------------|-------------|-----------------------|
| Id              | Type    | Default          | Levels      | Range                 |
| trials          | integer | 1                |             | \\\[1, \infty)\\      |
| rules           | logical | FALSE            | TRUE, FALSE | \-                    |
| costs           | untyped | NULL             |             | \-                    |
| subset          | logical | TRUE             | TRUE, FALSE | \-                    |
| bands           | integer | \-               |             | \\\[0, 1000\]\\       |
| winnow          | logical | FALSE            | TRUE, FALSE | \-                    |
| noGlobalPruning | logical | FALSE            | TRUE, FALSE | \-                    |
| CF              | numeric | 0.25             |             | \\\[0, 1\]\\          |
| minCases        | integer | 2                |             | \\\[0, \infty)\\      |
| fuzzyThreshold  | logical | FALSE            | TRUE, FALSE | \-                    |
| sample          | numeric | 0                |             | \\\[0, 0.999\]\\      |
| seed            | integer | \-               |             | \\(-\infty, \infty)\\ |
| earlyStopping   | logical | TRUE             | TRUE, FALSE | \-                    |
| label           | untyped | "outcome"        |             | \-                    |
| na.action       | untyped | "stats::na.pass" |             | \-                    |

## References

Quinlan, Ross J (2014). *C4. 5: programs for machine learning*.
Elsevier.

## Author

henrifnk

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifC50`

## Methods

### Public methods

- [`LearnerClassifC50$new()`](#method-LearnerClassifC50-new)

- [`LearnerClassifC50$clone()`](#method-LearnerClassifC50-clone)

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

    LearnerClassifC50$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifC50$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
