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
1465-4644,
[doi:10.1093/biostatistics/kxm010](https://doi.org/10.1093/biostatistics/kxm010)
, <https://doi.org/10.1093/biostatistics/kxm010>.

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifStepPlr`

## Methods

### Public methods

- [`LearnerClassifStepPlr$new()`](#method-LearnerClassifStepPlr-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifStepPlr$new()

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'use'

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
#>  16.69876  38.58849  28.64685 -26.96672 -63.68397  45.55812 -28.79896   4.61578 
#>       V16       V17       V18       V19        V2       V20       V21       V22 
#>   2.69170  27.79453  -2.45333  -8.28825  24.86726  11.39728  14.94724 -53.78349 
#>       V23       V24       V25       V26       V27       V28       V29        V3 
#>  19.43991 -20.07896  23.32199  -1.89481  11.14924 -21.54805  22.96772  21.56902 
#>       V30       V31       V32       V33       V34       V35       V36       V37 
#> -34.78288  36.27117 -12.14171  -4.29125  12.26022 -25.86326  24.46835  -1.09659 
#>       V38       V39        V4       V40       V41       V42       V43       V44 
#>  16.78777 -47.42810 -59.87226  54.63857  -9.75424 -33.08581  18.88235  -4.72623 
#>       V45       V46       V47       V48       V49        V5       V50       V51 
#> -15.88486  31.91883 -24.73495 -44.08329 -26.68366  -8.89275  46.66825 -56.39104 
#>       V52       V53       V54       V55       V56       V57       V58       V59 
#>  -7.77131  -8.51979 -34.00680 -29.08450   4.64212 -23.67991 -21.88625 -17.97661 
#>        V6       V60        V7        V8        V9 
#>  25.11681  -0.85554  24.77165  14.18793 -65.08879 
#> 
#>     Null deviance: 190.61 on 138 degrees of freedom
#> Residual deviance: 12.97 on 94.86 degrees of freedom
#>             Score: deviance + 4.9 * df = 230.79 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2753623 
```
