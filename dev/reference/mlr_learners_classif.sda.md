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
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0239 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1139 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>    0.1138992    0.0238551    1.0000000 
#> 
#> $freqs
#>   M   R 
#> 0.5 0.5 
#> 
#> $alpha
#>         M         R 
#> -4.357321  1.767963 
#> 
#> $beta
#>          V1        V10       V11       V12        V13        V14       V15
#> M  4.912673  0.6781366  1.789047  2.596375  0.5176216  0.4981384 -1.032399
#> R -4.912673 -0.6781366 -1.789047 -2.596375 -0.5176216 -0.4981384  1.032399
#>        V16        V17        V18        V19        V2        V20        V21
#> M -1.19328 -0.6016809  0.5924796  0.4479143  3.670665  0.4931135  0.2771762
#> R  1.19328  0.6016809 -0.5924796 -0.4479143 -3.670665 -0.4931135 -0.2771762
#>          V22        V23        V24        V25        V26        V27        V28
#> M  0.3224717  0.9261851  0.9289611 -0.9104687 -0.5795677  0.2199983  0.2624961
#> R -0.3224717 -0.9261851 -0.9289611  0.9104687  0.5795677 -0.2199983 -0.2624961
#>          V29        V3       V30       V31     V32        V33       V34
#> M  0.4274783 -6.619162  1.294228 -2.275153  1.0799 -0.3768833 -1.108936
#> R -0.4274783  6.619162 -1.294228  2.275153 -1.0799  0.3768833  1.108936
#>          V35       V36      V37      V38        V39        V4      V40     V41
#> M  0.2925298 -1.264848 -1.33275  1.56289  0.9682576  7.995265 -2.48133  1.4853
#> R -0.2925298  1.264848  1.33275 -1.56289 -0.9682576 -7.995265  2.48133 -1.4853
#>          V42      V43       V44       V45       V46       V47        V48
#> M -0.4523644  1.06748  1.411008  0.646674  1.739717  2.511948  0.9347909
#> R  0.4523644 -1.06748 -1.411008 -0.646674 -1.739717 -2.511948 -0.9347909
#>        V49         V5       V50       V51       V52       V53       V54
#> M  7.85196  0.2992464 -14.03581 -1.690308 -1.520682 -5.368886  3.366488
#> R -7.85196 -0.2992464  14.03581  1.690308  1.520682  5.368886 -3.366488
#>         V55       V56       V57       V58       V59         V6        V60
#> M -8.677843  6.152937 -9.239308 -1.635446  10.80269  0.2995505 -0.1229001
#> R  8.677843 -6.152937  9.239308  1.635446 -10.80269 -0.2995505  0.1229001
#>          V7        V8        V9
#> M -1.081919 -3.175151  2.263846
#> R  1.081919  3.175151 -2.263846
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
