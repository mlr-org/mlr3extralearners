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
control.” *The Annals of Applied Statistics*, **4**(1). ISSN 1932-6157,
[doi:10.1214/09-aoas277](https://doi.org/10.1214/09-aoas277) ,
<http://dx.doi.org/10.1214/09-AOAS277>.

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
-\> `LearnerClassifSda`

## Methods

### Public methods

- [`LearnerClassifSda$new()`](#method-LearnerClassifSda-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifSda$new()

------------------------------------------------------------------------

### Method `clone()`

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
#> • Other settings: use_weights = 'error'

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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.3102 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0226 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1008 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.10077337   0.02259615   0.31023037 
#> 
#> $freqs
#>         M         R 
#> 0.5521049 0.4478951 
#> 
#> $alpha
#>         M         R 
#> -5.613007  3.629779 
#> 
#> $beta
#>          V1       V10        V11       V12        V13        V14          V15
#> M  1.107610  2.632315  0.8618041  3.571514  0.5566543 -0.7854045  0.007564983
#> R -1.365313 -3.244764 -1.0623163 -4.402483 -0.6861686  0.9681411 -0.009325095
#>         V16        V17        V18       V19        V2        V20         V21
#> M -0.979334 -0.8826301 -0.2419022  1.193466  2.273406  0.6904952  0.01000429
#> R  1.207191  1.0879879  0.2981845 -1.471145 -2.802349 -0.8511497 -0.01233194
#>          V22       V23        V24       V25        V26       V27         V28
#> M  0.6686989  1.241360  0.5647568 -1.276382 -0.6042083  1.442354 -0.02192622
#> R -0.8242822 -1.530181 -0.6961563  1.573353  0.7447868 -1.777940  0.02702770
#>         V29       V3       V30       V31        V32        V33         V34
#> M -1.325305 -8.92512  2.809857 -1.821579 -0.2289280 -0.1107230  0.02740583
#> R  1.633658 11.00169 -3.463614  2.245398  0.2821917  0.1364845 -0.03378223
#>          V35       V36       V37       V38        V39        V4       V40
#> M  0.9063838 -1.810954 -1.619428  1.104677  0.7481127  16.61249 -1.958387
#> R -1.1172682  2.232301  1.996213 -1.361697 -0.9221728 -20.47765  2.414036
#>         V41       V42        V43       V44        V45       V46       V47
#> M  2.067483 -1.004404  0.9155001  1.414289  0.6038965  2.028986  4.634933
#> R -2.548516  1.238094 -1.1285055 -1.743345 -0.7444025 -2.501062 -5.713322
#>          V48       V49         V5       V50       V51       V52       V53
#> M  0.4679362  4.339537  0.1026755 -14.35030 -4.326992  4.509176 -4.337135
#> R -0.5768089 -5.349198 -0.1265645  17.68912  5.333734 -5.558307  5.346238
#>         V54       V55       V56       V57       V58       V59        V6
#> M -1.387049 -3.811881 -4.247512  5.839765 -3.314973  4.193429  1.696938
#> R  1.709768  4.698774  5.235762 -7.198477  4.086254 -5.169095 -2.091757
#>         V60        V7        V8        V9
#> M -2.698110  1.739624 -3.912948  1.944981
#> R  3.325868 -2.144375  4.823357 -2.397511
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
