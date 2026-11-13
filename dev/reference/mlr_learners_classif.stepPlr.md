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
#>  29.46358 -22.01016  -3.12946 -32.69488 -10.52617  -1.84504   4.57124  -5.07834 
#>       V16       V17       V18       V19        V2       V20       V21       V22 
#>  20.57734   6.90333   8.36198 -23.20681 -27.82941 -27.01862  19.80478 -18.27754 
#>       V23       V24       V25       V26       V27       V28       V29        V3 
#>  30.46974 -63.24916  45.85262   0.17305 -29.67076  19.37058  -6.26374   5.99030 
#>       V30       V31       V32       V33       V34       V35       V36       V37 
#> -20.21844  43.86445 -29.96055 -18.60882  44.12265 -43.09387  37.06486   9.44314 
#>       V38       V39        V4       V40       V41       V42       V43       V44 
#>   0.18900 -11.80533 -14.87118  31.20446   7.51977 -17.14485 -23.57021  17.76954 
#>       V45       V46       V47       V48       V49        V5       V50       V51 
#> -25.75933 -31.14746  -0.36888 -32.48095 -60.95219  -0.71274  16.49723  -2.22669 
#>       V52       V53       V54       V55       V56       V57       V58       V59 
#>  -4.18997  -6.25158 -20.26629 -13.50069   2.26595   4.76066  -8.58892  -1.55373 
#>        V6       V60        V7        V8        V9 
#>   9.44782   9.11219  41.90567  11.12796 -25.05511 
#> 
#>     Null deviance: 192.52 on 138 degrees of freedom
#> Residual deviance: 5.71 on 99.92 degrees of freedom
#>             Score: deviance + 4.9 * df = 198.53 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
