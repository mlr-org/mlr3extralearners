# Random Forest Competing Risks Learner

Random survival forests for competing risks. Calls
[`randomForestSRC::rfsrc()`](https://www.randomforestsrc.org//reference/rfsrc.html)
from
[randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("cmprsk.rfsrc")

## Meta Information

- Task type: “cmprsk”

- Predict Types: “cif”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3cmprsk](https://CRAN.R-project.org/package=mlr3cmprsk),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [randomForestSRC](https://CRAN.R-project.org/package=randomForestSRC)

## Parameters

|                |           |           |                                          |                    |
|----------------|-----------|-----------|------------------------------------------|--------------------|
| Id             | Type      | Default   | Levels                                   | Range              |
| ntree          | integer   | 500       |                                          | \\\[1, \infty)\\   |
| mtry           | integer   | \-        |                                          | \\\[1, \infty)\\   |
| mtry.ratio     | numeric   | \-        |                                          | \\\[0, 1\]\\       |
| nodesize       | integer   | 15        |                                          | \\\[1, \infty)\\   |
| nodedepth      | integer   | \-        |                                          | \\\[1, \infty)\\   |
| splitrule      | character | logrankCR | logrankCR, logrank                       | \-                 |
| nsplit         | integer   | 10        |                                          | \\\[0, \infty)\\   |
| importance     | character | FALSE     | FALSE, TRUE, none, anti, permute, random | \-                 |
| block.size     | integer   | 10        |                                          | \\\[1, \infty)\\   |
| bootstrap      | character | by.root   | by.root, by.node, none, by.user          | \-                 |
| samptype       | character | swor      | swor, swr                                | \-                 |
| samp           | untyped   | \-        |                                          | \-                 |
| membership     | logical   | FALSE     | TRUE, FALSE                              | \-                 |
| sampsize       | untyped   | \-        |                                          | \-                 |
| sampsize.ratio | numeric   | \-        |                                          | \\\[0, 1\]\\       |
| na.action      | character | na.omit   | na.omit, na.impute                       | \-                 |
| nimpute        | integer   | 1         |                                          | \\\[1, \infty)\\   |
| ntime          | integer   | 150       |                                          | \\\[0, \infty)\\   |
| cause          | untyped   | \-        |                                          | \-                 |
| proximity      | character | FALSE     | FALSE, TRUE, inbag, oob, all             | \-                 |
| distance       | character | FALSE     | FALSE, TRUE, inbag, oob, all             | \-                 |
| forest.wt      | character | FALSE     | FALSE, TRUE, inbag, oob, all             | \-                 |
| xvar.wt        | untyped   | \-        |                                          | \-                 |
| split.wt       | untyped   | \-        |                                          | \-                 |
| forest         | logical   | TRUE      | TRUE, FALSE                              | \-                 |
| var.used       | character | FALSE     | FALSE, all.trees                         | \-                 |
| split.depth    | character | FALSE     | FALSE, all.trees, by.tree                | \-                 |
| seed           | integer   | \-        |                                          | \\(-\infty, -1\]\\ |
| do.trace       | logical   | FALSE     | TRUE, FALSE                              | \-                 |
| get.tree       | untyped   | \-        |                                          | \-                 |
| outcome        | character | train     | train, test                              | \-                 |
| ptn.count      | integer   | 0         |                                          | \\\[0, \infty)\\   |
| cores          | integer   | 1         |                                          | \\\[1, \infty)\\   |
| save.memory    | logical   | FALSE     | TRUE, FALSE                              | \-                 |
| perf.type      | character | \-        | none                                     | \-                 |
| case.depth     | logical   | FALSE     | TRUE, FALSE                              | \-                 |
| marginal.xvar  | untyped   | NULL      |                                          | \-                 |

## Initial parameter values

- `ntime`: Number of time points to coerce the observed event times for
  use in the estimated cumulative incidence functions during prediction.
  We changed the default value of `150` to `0`, meaning we now use all
  the **unique event times from the train set** across all competing
  causes.

## Custom mlr3 parameters

- `mtry`: This hyperparameter can alternatively be set via the added
  hyperparameter `mtry.ratio` as
  `mtry = max(ceiling(mtry.ratio * n_features), 1)`. Note that `mtry`
  and `mtry.ratio` are mutually exclusive.

- `sampsize`: This hyperparameter can alternatively be set via the added
  hyperparameter `sampsize.ratio` as
  `sampsize = max(ceiling(sampsize.ratio * n_obs), 1)`. Note that
  `sampsize` and `sampsize.ratio` are mutually exclusive.

- `cores`: This value is set as the option `rf.cores` during training
  and is set to 1 by default.

## References

Ishwaran, H., Gerds, A. T, Kogalur, B. U, Moore, D. R, Gange, J. S, Lau,
M. B (2014). “Random survival forests for competing risks.”
*Biostatistics*, **15**(4), 757–773.
[doi:10.1093/BIOSTATISTICS/KXU010](https://doi.org/10.1093/BIOSTATISTICS/KXU010)
, <https://doi.org/10.1093/BIOSTATISTICS/KXU010>.

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3cmprsk::LearnerCompRisks`](https://rdrr.io/pkg/mlr3cmprsk/man/LearnerCompRisks.html)
-\> `LearnerCompRisksRandomForestSRC`

## Methods

### Public methods

- [`LearnerCompRisksRandomForestSRC$new()`](#method-LearnerCompRisksRandomForestSRC-new)

- [`LearnerCompRisksRandomForestSRC$importance()`](#method-LearnerCompRisksRandomForestSRC-importance)

- [`LearnerCompRisksRandomForestSRC$selected_features()`](#method-LearnerCompRisksRandomForestSRC-selected_features)

- [`LearnerCompRisksRandomForestSRC$oob_error()`](#method-LearnerCompRisksRandomForestSRC-oob_error)

- [`LearnerCompRisksRandomForestSRC$clone()`](#method-LearnerCompRisksRandomForestSRC-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerCompRisksRandomForestSRC$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot `importance` and
are cause-specific.

#### Usage

    LearnerCompRisksRandomForestSRC$importance(cause = 1)

#### Arguments

- `cause`:

  Integer value indicating the event of interest

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `selected_features()`

Selected features are extracted from the model slot `var.used`.

**Note**: Due to a known issue in `randomForestSRC`, enabling
`var.used = "all.trees"` causes prediction to fail. Therefore, this
setting should be used exclusively for feature selection purposes and
not when prediction is required.

#### Usage

    LearnerCompRisksRandomForestSRC$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `oob_error()`

Extracts the out-of-bag (OOB) cumulative incidence function (CIF) error
from the model's `err.rate` slot.

If `cause = "mean"` (default), the function returns a weighted average
of the cause-specific OOB errors, where the weights correspond to the
observed proportion of events for each cause in the training data.

#### Usage

    LearnerCompRisksRandomForestSRC$oob_error(cause = "mean")

#### Arguments

- `cause`:

  Integer (event type) or `"mean"` (default). Use a specific event type
  to retrieve its OOB error, or `"mean"` to compute the weighted average
  across causes.

#### Returns

[`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerCompRisksRandomForestSRC$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("cmprsk.rfsrc", importance = "TRUE")
print(learner)
#> 
#> ── <LearnerCompRisksRandomForestSRC> (cmprsk.rfsrc): Competing Risk Survival For
#> • Model: -
#> • Parameters: importance=TRUE, ntime=0, cores=1
#> • Packages: mlr3, mlr3cmprsk, mlr3extralearners, and randomForestSRC
#> • Predict Types: [cif]
#> • Feature Types: logical, integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, oob_error, selected_features, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("pbc")

# Stratification based on event
task$set_col_roles(cols = "status", add_to = "stratum")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#>                          Sample size: 184
#>                     Number of events: 1=12, 2=74
#>                      Number of trees: 500
#>            Forest terminal node size: 15
#>        Average no. of terminal nodes: 9.056
#> No. of variables tried at each split: 5
#>               Total no. of variables: 17
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 116
#>                             Analysis: RSF
#>                               Family: surv-CR
#>                       Splitting rule: logrankCR *random*
#>        Number of random split points: 10
#>    (OOB) Requested performance error: 0.24010417, 0.1777439
#> 
print(learner$importance(cause = 1)) # VIMP for cause = 1
#>        bili         ast        chol      copper         age    platelet 
#> 0.301713959 0.060573139 0.059512646 0.055324658 0.053331344 0.052660187 
#>     ascites       edema     protime        trig       stage     spiders 
#> 0.042769835 0.041762144 0.032741837 0.027824621 0.019872060 0.009558798 
#>    alk.phos      hepato         sex     albumin         trt 
#> 0.009458214 0.004134059 0.004085158 0.001805278 0.001130083 
print(learner$importance(cause = 2)) # VIMP for cause = 2
#>          bili         edema       ascites       albumin        copper 
#>  0.1867474457  0.1002319391  0.0806389264  0.0786260861  0.0753726428 
#>           age       protime          chol      platelet          trig 
#>  0.0713868126  0.0405210800  0.0280895084  0.0222492476  0.0209618632 
#>      alk.phos         stage           ast       spiders        hepato 
#>  0.0125071440  0.0084378224  0.0068434995  0.0033899867  0.0020349366 
#>           sex           trt 
#>  0.0009763517 -0.0003638758 
print(learner$oob_error()) # weighted-mean across causes
#> [1] 0.1864453

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> cmprsk.auc 
#>  0.9077407 
```
