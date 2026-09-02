# OPLS-DA Classification Learner

Binary classification with orthogonal partial least squares discriminant
analysis (OPLS-DA). Calls
[`ropls::opls()`](https://rdrr.io/pkg/ropls/man/opls.html) from
Bioconductor package [ropls](https://CRAN.R-project.org/package=ropls).

`ropls` is distributed via Bioconductor and not via CRAN, so it has to
be installed with `BiocManager::install("ropls")`.

## Initial parameter values

- `predI`

  - Actual default: `NA`, which lets
    [`ropls::opls()`](https://rdrr.io/pkg/ropls/man/opls.html) determine
    the number of predictive components by cross-validation.

  - Adjusted default: `1`

  - Reason for change: OPLS-DA is defined with a single predictive
    component, and a fixed number of components keeps the model
    comparable across resampling iterations.

- `orthoI`

  - Actual default: `0`

  - Adjusted default: `1`

  - Reason for change: With `orthoI = 0` no orthogonal component is
    extracted and
    [`ropls::opls()`](https://rdrr.io/pkg/ropls/man/opls.html) fits
    plain PLS-DA instead of OPLS-DA.

- `permI`

  - Actual default: `20`

  - Adjusted default: `0`

  - Reason for change: The permutation test is a model diagnostic that
    is not used for prediction and costs `permI` extra model fits.

## Suppressed output

[`ropls::opls()`](https://rdrr.io/pkg/ropls/man/opls.html) writes a
diagnostic figure and a model summary by default. Both are suppressed by
fixing `fig.pdfC` and `info.txtC` to `"none"`, so neither is exposed as
a hyperparameter.

## Number of components

[`ropls::opls()`](https://rdrr.io/pkg/ropls/man/opls.html) requires
`predI + orthoI` to not exceed the smaller of the number of observations
and the number of features, and errors otherwise. With the initial
parameter values this means that the learner needs at least two
features.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.opls")

## Meta Information

- Task type: “classif”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [ropls](https://CRAN.R-project.org/package=ropls)

## Parameters

|           |           |          |                                |                  |
|-----------|-----------|----------|--------------------------------|------------------|
| Id        | Type      | Default  | Levels                         | Range            |
| predI     | integer   | \-       |                                | \\\[1, \infty)\\ |
| orthoI    | integer   | 0        |                                | \\\[0, \infty)\\ |
| algoC     | character | default  | default, nipals, svd           | \-               |
| crossvalI | integer   | 7        |                                | \\\[1, \infty)\\ |
| log10L    | logical   | FALSE    | TRUE, FALSE                    | \-               |
| scaleC    | character | standard | none, center, pareto, standard | \-               |
| permI     | integer   | 20       |                                | \\\[0, \infty)\\ |

## References

Thévenot, A. E, Roux, Aurélie, Xu, Ying, Ezan, Eric, Junot, Christophe
(2015). “Analysis of the Human Adult Urinary Metabolome Variations with
Age, Body Mass Index, and Gender by Implementing a Comprehensive
Workflow for Univariate and OPLS Statistical Analyses.” *Journal of
Proteome Research*, **14**(8), 3322–3335.
[doi:10.1021/acs.jproteome.5b00354](https://doi.org/10.1021/acs.jproteome.5b00354)
.

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

Takha65

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifOPLS`

## Methods

### Public methods

- [`LearnerClassifOPLS$new()`](#method-LearnerClassifOPLS-initialize)

- [`LearnerClassifOPLS$clone()`](#method-LearnerClassifOPLS-clone)

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

### `LearnerClassifOPLS$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifOPLS$new()

------------------------------------------------------------------------

### `LearnerClassifOPLS$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifOPLS$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.opls")
print(learner)
#> 
#> ── <LearnerClassifOPLS> (classif.opls): OPLS-DA ────────────────────────────────
#> • Model: -
#> • Parameters: predI=1, orthoI=1, permI=0
#> • Packages: mlr3, mlr3extralearners, and ropls
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> OPLS-DA
#> 139 samples x 60 variables and 1 response
#> standard scaling of predictors and response(s)
#>       R2X(cum) R2Y(cum) Q2(cum) RMSEE pre ort
#> Total    0.279    0.522   0.432 0.349   1   1


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
