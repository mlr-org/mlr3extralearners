# Regression Linear Mixed Effects Learner

Linear model with random effects. Calls
[`lme4::lmer()`](https://rdrr.io/pkg/lme4/man/lmer.html) from
[lme4](https://CRAN.R-project.org/package=lme4).

## Formula

Although most mlr3 learners don't allow to specify the formula manually,
and automatically set it by valling `task$formula()`, this learner
allows to set the `formula` because it's core functionality depends it.
This means that it might not always use all features that are available
in the [task](https://mlr3.mlr-org.com/reference/Task.html). Be aware,
that this can sometimes lead to unexpected error messages, because mlr3
checks the compatibility between the learner and the task on **all**
available features.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.lmer")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [lme4](https://CRAN.R-project.org/package=lme4)

## Parameters

|                     |           |                                                                             |                                                                             |                  |
|---------------------|-----------|-----------------------------------------------------------------------------|-----------------------------------------------------------------------------|------------------|
| Id                  | Type      | Default                                                                     | Levels                                                                      | Range            |
| formula             | untyped   | \-                                                                          |                                                                             | \-               |
| REML                | logical   | TRUE                                                                        | TRUE, FALSE                                                                 | \-               |
| start               | untyped   | NULL                                                                        |                                                                             | \-               |
| verbose             | integer   | 0                                                                           |                                                                             | \\\[0, \infty)\\ |
| contrasts           | untyped   | NULL                                                                        |                                                                             | \-               |
| optimizer           | character | nloptwrap                                                                   | Nelder_Mead, bobyqa, nlminbwrap, nloptwrap                                  | \-               |
| restart_edge        | logical   | FALSE                                                                       | TRUE, FALSE                                                                 | \-               |
| boundary.tol        | numeric   | 1e-05                                                                       |                                                                             | \\\[0, \infty)\\ |
| calc.derivs         | logical   | TRUE                                                                        | TRUE, FALSE                                                                 | \-               |
| autoscale           | untyped   | NULL                                                                        |                                                                             | \-               |
| check.nobs.vs.rankZ | character | ignore                                                                      | ignore, warning, message, stop                                              | \-               |
| check.nobs.vs.nlev  | character | stop                                                                        | ignore, warning, message, stop                                              | \-               |
| check.nlev.gtreq.5  | character | ignore                                                                      | ignore, warning, message, stop                                              | \-               |
| check.nlev.gtr.1    | character | stop                                                                        | ignore, warning, message, stop                                              | \-               |
| check.nobs.vs.nRE   | character | stop                                                                        | ignore, warning, message, stop                                              | \-               |
| check.rankX         | character | message+drop.cols                                                           | message+drop.cols, silent.drop.cols, warn+drop.cols, stop.deficient, ignore | \-               |
| check.scaleX        | character | warning                                                                     | warning, stop, silent.rescale, message+rescale, warn+rescale, ignore        | \-               |
| check.formula.LHS   | character | stop                                                                        | ignore, warning, message, stop                                              | \-               |
| check.conv.nobsmax  | numeric   | 10000                                                                       |                                                                             | \\\[1, \infty)\\ |
| check.conv.nparmax  | numeric   | 10                                                                          |                                                                             | \\\[1, \infty)\\ |
| check.conv.grad     | untyped   | "lme4::.makeCC(\\warning\\, tol = 2e-3, relTol = NULL)"                     |                                                                             | \-               |
| check.conv.singular | untyped   | "lme4::.makeCC(action = \\message\\, tol = formals(lme4::isSingular)\$tol)" |                                                                             | \-               |
| check.conv.hess     | untyped   | "lme4::.makeCC(action = \\warning\\, tol = 1e-6)"                           |                                                                             | \-               |
| optCtrl             | untyped   | list()                                                                      |                                                                             | \-               |
| newparams           | untyped   | NULL                                                                        |                                                                             | \-               |
| re.form             | untyped   | NULL                                                                        |                                                                             | \-               |
| random.only         | logical   | FALSE                                                                       | TRUE, FALSE                                                                 | \-               |
| allow.new.levels    | logical   | FALSE                                                                       | TRUE, FALSE                                                                 | \-               |
| na.action           | untyped   | "stats::na.pass"                                                            |                                                                             | \-               |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`lme4::lmer()`](https://rdrr.io/pkg/lme4/man/lmer.html). No offset is
applied during prediction for this learner.

## References

Bates, M D (2010). “lme4: Mixed-effects modeling with R.”

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

s-kganz

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrLmer`

## Methods

### Public methods

- [`LearnerRegrLmer$new()`](#method-LearnerRegrLmer-new)

- [`LearnerRegrLmer$clone()`](#method-LearnerRegrLmer-clone)

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

    LearnerRegrLmer$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrLmer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner and set parameter values
learner = lrn("regr.lmer", formula = mpg ~ (1 | gear))

# Define a Task
task = tsk("mtcars")

# Train the learner
learner$train(task)

print(learner$model)
#> Linear mixed model fit by REML ['lmerMod']
#> Formula: mpg ~ (1 | gear)
#>    Data: data
#> REML criterion at convergence: 191.6219
#> Random effects:
#>  Groups   Name        Std.Dev.
#>  gear     (Intercept) 4.159   
#>  Residual             4.701   
#> Number of obs: 32, groups:  gear, 3
#> Fixed Effects:
#> (Intercept)  
#>       20.61  
```
