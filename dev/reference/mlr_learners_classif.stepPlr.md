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
#>  20.95434  -9.82340  -4.12508 -26.83292   2.51509 -18.23171  -9.98791  17.25861 
#>       V16       V17       V18       V19        V2       V20       V21       V22 
#>   7.64383  18.56776 -29.47458  17.78058  -3.94883 -21.94956  32.28948 -29.49037 
#>       V23       V24       V25       V26       V27       V28       V29        V3 
#>  26.43093 -45.32551  32.76099 -22.16169   4.97182   4.71955  11.78698  55.97376 
#>       V30       V31       V32       V33       V34       V35       V36       V37 
#> -41.44296  57.10370 -26.04830 -12.44567  24.78386 -15.93114  17.77698  16.78270 
#>       V38       V39        V4       V40       V41       V42       V43       V44 
#>   2.29165 -36.87629 -98.97015  31.92074  -3.34921 -27.53348  21.76356 -26.96873 
#>       V45       V46       V47       V48       V49        V5       V50       V51 
#>  19.37991 -34.27869  29.26491  -4.58401 -61.96956 -16.40752  49.42518 -24.41505 
#>       V52       V53       V54       V55       V56       V57       V58       V59 
#> -53.35735 -13.05644 -23.53599 -10.79639  18.84469   3.62717 -11.11807 -24.63971 
#>        V6       V60        V7        V8        V9 
#> -30.63503 -11.35068  12.56199  17.12807 -31.05670 
#> 
#>     Null deviance: 186.6 on 138 degrees of freedom
#> Residual deviance: 11.58 on 94.7 degrees of freedom
#>             Score: deviance + 4.9 * df = 230.17 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
