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

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| ntree | integer | 500 |  | \\\[1, \infty)\\ |
| mtry | integer | \- |  | \\\[1, \infty)\\ |
| mtry.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| nodesize | integer | 15 |  | \\\[1, \infty)\\ |
| nodedepth | integer | \- |  | \\\[1, \infty)\\ |
| splitrule | character | logrankCR | logrankCR, logrank | \- |
| nsplit | integer | 10 |  | \\\[0, \infty)\\ |
| importance | character | FALSE | FALSE, TRUE, none, anti, permute, random | \- |
| block.size | integer | 10 |  | \\\[1, \infty)\\ |
| bootstrap | character | by.root | by.root, by.node, none, by.user | \- |
| samptype | character | swor | swor, swr | \- |
| samp | untyped | \- |  | \- |
| membership | logical | FALSE | TRUE, FALSE | \- |
| sampsize | untyped | \- |  | \- |
| sampsize.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| na.action | character | na.omit | na.omit, na.impute | \- |
| nimpute | integer | 1 |  | \\\[1, \infty)\\ |
| ntime | integer | 150 |  | \\\[0, \infty)\\ |
| cause | untyped | \- |  | \- |
| proximity | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| distance | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| forest.wt | character | FALSE | FALSE, TRUE, inbag, oob, all | \- |
| xvar.wt | untyped | \- |  | \- |
| split.wt | untyped | \- |  | \- |
| forest | logical | TRUE | TRUE, FALSE | \- |
| var.used | character | FALSE | FALSE, all.trees | \- |
| split.depth | character | FALSE | FALSE, all.trees, by.tree | \- |
| seed | integer | \- |  | \\(-\infty, -1\]\\ |
| do.trace | logical | FALSE | TRUE, FALSE | \- |
| get.tree | untyped | \- |  | \- |
| outcome | character | train | train, test | \- |
| ptn.count | integer | 0 |  | \\\[0, \infty)\\ |
| cores | integer | 1 |  | \\\[1, \infty)\\ |
| save.memory | logical | FALSE | TRUE, FALSE | \- |
| use.uno | logical | TRUE | TRUE, FALSE | \- |
| perf.type | character | \- | none | \- |
| case.depth | logical | FALSE | TRUE, FALSE | \- |
| marginal.xvar | untyped | NULL |  | \- |

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
. <https://doi.org/10.1093/BIOSTATISTICS/KXU010>.

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3cmprsk::LearnerCompRisks`](https://rdrr.io/pkg/mlr3cmprsk/man/LearnerCompRisks.html)
-\> `LearnerCompRisksRandomForestSRC`

## Methods

### Public methods

- [`LearnerCompRisksRandomForestSRC$new()`](#method-LearnerCompRisksRandomForestSRC-initialize)

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

### `LearnerCompRisksRandomForestSRC$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerCompRisksRandomForestSRC$new()

------------------------------------------------------------------------

### `LearnerCompRisksRandomForestSRC$importance()`

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

### `LearnerCompRisksRandomForestSRC$selected_features()`

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

### `LearnerCompRisksRandomForestSRC$oob_error()`

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

### `LearnerCompRisksRandomForestSRC$clone()`

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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

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
#>        Average no. of terminal nodes: 9.162
#> No. of variables tried at each split: 5
#>               Total no. of variables: 17
#>        Resampling used to grow trees: swor
#>     Resample size used to grow trees: 116
#>                             Analysis: RSF
#>                               Family: surv-CR
#>                       Splitting rule: logrankCR *random*
#>        Number of random split points: 10
#>    (OOB) Requested performance error: 0.29842852, 0.19636431
#> 
print(learner$importance(cause = 1)) # VIMP for cause = 1
#>          bili        copper       protime        hepato         stage 
#>  0.1928074288  0.0808996088  0.0628195140  0.0578123424  0.0459323374 
#>           age      alk.phos       ascites       albumin         edema 
#>  0.0432028842  0.0425858266  0.0380589375  0.0331685323  0.0273144213 
#>           sex          chol           ast      platelet           trt 
#>  0.0271712282  0.0123623303  0.0064353981 -0.0008048417 -0.0022840915 
#>       spiders          trig 
#> -0.0043880142 -0.0068264023 
print(learner$importance(cause = 2)) # VIMP for cause = 2
#>         bili        edema      ascites       copper     alk.phos      albumin 
#> 0.1565495123 0.1457707986 0.0881622573 0.0821546685 0.0517512203 0.0455399863 
#>          age      protime       hepato         trig         chol        stage 
#> 0.0354788026 0.0298630395 0.0235534418 0.0185672237 0.0111825300 0.0098054661 
#>          ast      spiders          sex     platelet          trt 
#> 0.0074064923 0.0066394473 0.0053229579 0.0048731165 0.0002512295 
print(learner$oob_error()) # weighted-mean across causes
#> [1] 0.2106058

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> cmprsk.auc 
#>  0.8697683 
```
