# Shrinkage Discriminant Analysis

Shrinkage Discriminant Analysis for classification. Calls
[`sda::sda()`](https://rdrr.io/pkg/sda/man/sda.html) from
[sda](https://CRAN.R-project.org/package=sda).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.sda")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [sda](https://CRAN.R-project.org/package=sda)

## Parameters

|              |         |         |             |              |
|--------------|---------|---------|-------------|--------------|
| Id           | Type    | Default | Levels      | Range        |
| lambda       | numeric | \-      |             | \\\[0, 1\]\\ |
| lambda.var   | numeric | \-      |             | \\\[0, 1\]\\ |
| lambda.freqs | numeric | \-      |             | \\\[0, 1\]\\ |
| diagonal     | logical | FALSE   | TRUE, FALSE | \-           |
| verbose      | logical | FALSE   | TRUE, FALSE | \-           |

## References

Ahdesmaeki, Miika, Strimmer, Korbinian (2010). “Feature selection in
omics prediction problems using cat scores and false nondiscovery rate
control.” *The Annals of Applied Statistics*, **4**(1). ISSN 1932-6157.
[doi:10.1214/09-aoas277](https://doi.org/10.1214/09-aoas277) .
<http://dx.doi.org/10.1214/09-AOAS277>.

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
-\> `LearnerClassifSda`

## Methods

### Public methods

- [`LearnerClassifSda$new()`](#method-LearnerClassifSda-initialize)

- [`LearnerClassifSda$clone()`](#method-LearnerClassifSda-clone)

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

### `LearnerClassifSda$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifSda$new()

------------------------------------------------------------------------

### `LearnerClassifSda$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifSda$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.sda")
print(learner)
#> 
#> ── <LearnerClassifSda> (classif.sda): Shrinkage Discriminant Analysis ──────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and sda
#> • Predict Types: [response] and prob
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: multiclass and twoclass
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Number of variables: 60 
#> Number of observations: 139 
#> Number of classes: 2 
#> 
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 1 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0198 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1076 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.10756177   0.01984675   1.00000000 
#> 
#> $freqs
#>   M   R 
#> 0.5 0.5 
#> 
#> $alpha
#>         M         R 
#> -3.975038  1.459632 
#> 
#> $beta
#>          V1       V10       V11       V12        V13        V14        V15
#> M  2.554322 -0.292884  1.435373  1.370442 -0.2344615  0.8257663 -0.2799381
#> R -2.554322  0.292884 -1.435373 -1.370442  0.2344615 -0.8257663  0.2799381
#>         V16        V17        V18        V19        V2         V20        V21
#> M -1.014976 -0.9544395  0.3923641  0.7565969  1.864934  0.06277789  0.3273217
#> R  1.014976  0.9544395 -0.3923641 -0.7565969 -1.864934 -0.06277789 -0.3273217
#>          V22        V23       V24        V25        V26         V27         V28
#> M  0.1584521  0.2187087  1.051969 -0.3182736 -0.3530441  0.03569169 -0.07283519
#> R -0.1584521 -0.2187087 -1.051969  0.3182736  0.3530441 -0.03569169  0.07283519
#>          V29        V3        V30       V31         V32        V33        V34
#> M  0.7085358 -9.857109  0.9084382 -2.535897 -0.04068937  0.3985041  0.1555541
#> R -0.7085358  9.857109 -0.9084382  2.535897  0.04068937 -0.3985041 -0.1555541
#>          V35       V36       V37        V38       V39        V4       V40
#> M  0.3207892 -1.169732 -1.066594  0.4179514  1.625067  10.28129 -2.445734
#> R -0.3207892  1.169732  1.066594 -0.4179514 -1.625067 -10.28129  2.445734
#>          V41        V42       V43       V44       V45       V46       V47
#> M -0.5534142  0.7006692  1.147215  2.013501  1.257876  3.061357  2.088534
#> R  0.5534142 -0.7006692 -1.147215 -2.013501 -1.257876 -3.061357 -2.088534
#>         V48       V49        V5       V50       V51      V52       V53
#> M  5.887965  2.819678  1.054397 -13.31699 -12.15855 -3.85459 -2.541925
#> R -5.887965 -2.819678 -1.054397  13.31699  12.15855  3.85459  2.541925
#>         V54      V55       V56       V57       V58       V59        V6
#> M  12.34273 -16.1364 -4.040781 -4.974675  2.941799  11.23894  1.009382
#> R -12.34273  16.1364  4.040781  4.974675 -2.941799 -11.23894 -1.009382
#>         V60        V7         V8        V9
#> M -7.585287 -0.924848 -0.7591931  1.821157
#> R  7.585287  0.924848  0.7591931 -1.821157
#> attr(,"class")
#> [1] "shrinkage"
#> 
#> attr(,"class")
#> [1] "sda"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> Prediction uses 60 features.

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2463768 
```
