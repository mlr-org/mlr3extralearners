# Classification Linear Mixed Effect Learner

Generalized linear model with random effects. Calls
[`lme4::glmer()`](https://rdrr.io/pkg/lme4/man/glmer.html) from
[lme4](https://CRAN.R-project.org/package=lme4).

## Initial parameter values

- `family` - Is set to `stats::binomial(link = "logit")`.

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

    lrn("classif.glmer")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [lme4](https://CRAN.R-project.org/package=lme4)

## Parameters

|                          |           |                                                                              |                                                                             |                  |
|--------------------------|-----------|------------------------------------------------------------------------------|-----------------------------------------------------------------------------|------------------|
| Id                       | Type      | Default                                                                      | Levels                                                                      | Range            |
| formula                  | untyped   | \-                                                                           |                                                                             | \-               |
| start                    | untyped   | NULL                                                                         |                                                                             | \-               |
| verbose                  | integer   | 0                                                                            |                                                                             | \\\[0, \infty)\\ |
| contrasts                | untyped   | NULL                                                                         |                                                                             | \-               |
| optimizer                | character | \-                                                                           | Nelder_Mead, bobyqa, nlminbwrap, nloptwrap                                  | \-               |
| restart_edge             | logical   | FALSE                                                                        | TRUE, FALSE                                                                 | \-               |
| boundary.tol             | numeric   | 1e-05                                                                        |                                                                             | \\\[0, \infty)\\ |
| calc.derivs              | logical   | TRUE                                                                         | TRUE, FALSE                                                                 | \-               |
| check.nobs.vs.rankZ      | character | ignore                                                                       | ignore, warning, message, stop                                              | \-               |
| check.nobs.vs.nlev       | character | stop                                                                         | ignore, warning, message, stop                                              | \-               |
| check.nlev.gtreq.5       | character | ignore                                                                       | ignore, warning, message, stop                                              | \-               |
| check.nlev.gtr.1         | character | stop                                                                         | ignore, warning, message, stop                                              | \-               |
| check.nobs.vs.nRE        | character | stop                                                                         | ignore, warning, message, stop                                              | \-               |
| check.rankX              | character | message+drop.cols                                                            | message+drop.cols, silent.drop.cols, warn+drop.cols, stop.deficient, ignore | \-               |
| check.scaleX             | character | warning                                                                      | warning, stop, silent.rescale, message+rescale, warn+rescale, ignore        | \-               |
| check.formula.LHS        | character | stop                                                                         | ignore, warning, message, stop                                              | \-               |
| family                   | untyped   | "stats::binomial(link = \\logit\\)"                                          |                                                                             | \-               |
| nAGQ                     | integer   | 1                                                                            |                                                                             | \\\[0, \infty)\\ |
| mustart                  | untyped   | \-                                                                           |                                                                             | \-               |
| etastart                 | untyped   | \-                                                                           |                                                                             | \-               |
| check.conv.grad          | untyped   | "lme4::.makeCC(\\warning\\, tol = 2e-3, relTol = NULL)"                      |                                                                             | \-               |
| check.conv.singular      | untyped   | "lme4::.makeCC( action = \\message\\, tol = formals(lme4::isSingular)\$tol)" |                                                                             | \-               |
| check.conv.hess          | untyped   | "lme4::.makeCC(action = \\warning\\, tol = 1e-6)"                            |                                                                             | \-               |
| optCtrl                  | untyped   | list()                                                                       |                                                                             | \-               |
| tolPwrss                 | untyped   | \-                                                                           |                                                                             | \-               |
| compDev                  | logical   | TRUE                                                                         | TRUE, FALSE                                                                 | \-               |
| nAGQ0initStep            | logical   | TRUE                                                                         | TRUE, FALSE                                                                 | \-               |
| check.response.not.const | untyped   | "stop"                                                                       |                                                                             | \-               |
| newparams                | untyped   | NULL                                                                         |                                                                             | \-               |
| re.form                  | untyped   | NULL                                                                         |                                                                             | \-               |
| random.only              | logical   | FALSE                                                                        | TRUE, FALSE                                                                 | \-               |
| allow.new.levels         | logical   | FALSE                                                                        | TRUE, FALSE                                                                 | \-               |
| na.action                | untyped   | "stats::na.pass"                                                             |                                                                             | \-               |

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

sebffischer

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifGlmer`

## Methods

### Public methods

- [`LearnerClassifGlmer$new()`](#method-LearnerClassifGlmer-new)

- [`LearnerClassifGlmer$clone()`](#method-LearnerClassifGlmer-clone)

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

    LearnerClassifGlmer$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifGlmer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner and set parameter values
learner = lrn("classif.glmer",
  formula = credit_risk ~ (1 | credit_history) + job + property + telephone + savings)

# Define a Task
task = tsk("german_credit")
task$select(c("credit_history", "job", "property", "telephone", "savings"))

# Train the learner
learner$train(task)

print(learner$model)
#> $model
#> Generalized linear mixed model fit by maximum likelihood (Laplace
#>   Approximation) [glmerMod]
#>  Family: binomial  ( logit )
#> Formula: credit_risk ~ (1 | credit_history) + job + property + telephone +  
#>     savings
#>    Data: data
#>       AIC       BIC    logLik -2*log(L)  df.resid 
#> 1143.8155 1207.6163 -558.9077 1117.8155       987 
#> Random effects:
#>  Groups         Name        Std.Dev.
#>  credit_history (Intercept) 0.687   
#> Number of obs: 1000, groups:  credit_history, 5
#> Fixed Effects:
#>                                         (Intercept)  
#>                                            -0.49717  
#>                             jobunskilled - resident  
#>                                            -0.19140  
#>                        jobskilled employee/official  
#>                                            -0.13545  
#>        jobmanager/self-empl/highly qualif. employee  
#>                                            -0.02365  
#>                                propertycar or other  
#>                                             0.56578  
#> propertybuilding soc. savings agr. / life insurance  
#>                                             0.50721  
#>                                 propertyreal estate  
#>                                             1.11105  
#>                  telephoneyes (under customer name)  
#>                                            -0.26806  
#>                                 savings... < 100 DM  
#>                                            -0.33521  
#>                          savings100 <= ... < 500 DM  
#>                                            -1.08991  
#>                         savings500 <= ... < 1000 DM  
#>                                            -1.24678  
#>                               savings... >= 1000 DM  
#>                                            -1.04640  
#> 
#> $target_levels
#> [1] "good" "bad" 
#> 
```
