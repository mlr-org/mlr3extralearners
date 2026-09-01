# Classification Logistic Regression Learner

Logistic regression with a quadratic penalization on the coefficient.
Calls [`stepPlr::plr()`](https://rdrr.io/pkg/stepPlr/man/plr.html) from
[stepPlr](https://CRAN.R-project.org/package=stepPlr).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.stepPlr")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [stepPlr](https://CRAN.R-project.org/package=stepPlr)

## Parameters

|                     |           |         |          |                  |
|---------------------|-----------|---------|----------|------------------|
| Id                  | Type      | Default | Levels   | Range            |
| cp                  | character | aic     | aic, bic | \-               |
| lambda              | numeric   | 1e-04   |          | \\\[0, \infty)\\ |
| offset.coefficients | untyped   | \-      |          | \-               |
| offset.subset       | untyped   | \-      |          | \-               |

## References

Park, Young M, Hastie, Trevor (2007). “Penalized logistic regression for
detecting gene interactions.” *Biostatistics*, **9**(1), 30-50. ISSN
1465-4644.
[doi:10.1093/biostatistics/kxm010](https://doi.org/10.1093/biostatistics/kxm010)
. <https://doi.org/10.1093/biostatistics/kxm010>.

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifStepPlr`

## Methods

### Public methods

- [`LearnerClassifStepPlr$new()`](#method-LearnerClassifStepPlr-initialize)

- [`LearnerClassifStepPlr$clone()`](#method-LearnerClassifStepPlr-clone)

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

### `LearnerClassifStepPlr$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifStepPlr$new()

------------------------------------------------------------------------

### `LearnerClassifStepPlr$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifStepPlr$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.stepPlr")
print(learner)
#> 
#> ── <LearnerClassifStepPlr> (classif.stepPlr): Logistic Regression with a L2 Pena
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and stepPlr
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: twoclass and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#> stepPlr::plr(x = data, y = y)
#> 
#> Coefficients:
#> Intercept        V1       V10       V11       V12       V13       V14       V15 
#>  27.52054 -33.24849  -4.78592 -18.02159 -20.23086  -5.83820 -12.22683  23.08575 
#>       V16       V17       V18       V19        V2       V20       V21       V22 
#>  -2.59739  25.42476  -7.37101 -12.50960 -16.22193   7.90245 -15.78112  -4.50384 
#>       V23       V24       V25       V26       V27       V28       V29        V3 
#>   2.56306 -35.63528  49.97173 -24.53618   3.57326  -2.44101   3.51035  28.29996 
#>       V30       V31       V32       V33       V34       V35       V36       V37 
#> -23.05904  22.94186 -10.65047  -8.18723   7.62176  13.53926  -3.81590 -10.40792 
#>       V38       V39        V4       V40       V41       V42       V43       V44 
#>  26.29276 -30.13860 -76.91449  33.77477 -12.76834 -19.32656  25.92406  -8.87699 
#>       V45       V46       V47       V48       V49        V5       V50       V51 
#> -11.61588   0.42244  15.32305 -49.59130 -70.77502 -12.94774  30.71389 -30.81679 
#>       V52       V53       V54       V55       V56       V57       V58       V59 
#> -23.06851   4.98572   6.21714   4.70981  -2.80175 -10.52489  -1.95810 -19.34644 
#>        V6       V60        V7        V8        V9 
#>  14.95937 -11.10452   9.11944  45.94681 -24.75247 
#> 
#>     Null deviance: 191.07 on 138 degrees of freedom
#> Residual deviance: 5.59 on 98.12 degrees of freedom
#>             Score: deviance + 4.9 * df = 207.31 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.3913043 
```
