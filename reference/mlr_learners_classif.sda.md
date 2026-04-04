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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.615 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0238 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1162 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.11616422   0.02381909   0.61500805 
#> 
#> $freqs
#>         M         R 
#> 0.5207729 0.4792271 
#> 
#> $alpha
#>         M         R 
#> -4.793129  2.469219 
#> 
#> $beta
#>          V1        V10       V11       V12         V13        V14        V15
#> M  5.755574  0.5251202  2.822084  2.158029  0.01976926 -0.2324217  0.5083959
#> R -6.254545 -0.5706448 -3.066740 -2.345116 -0.02148313  0.2525711 -0.5524705
#>          V16       V17         V18       V19        V2       V20        V21
#> M -0.8899892 -1.246537 -0.05452851  1.146998  4.940279  1.127337  0.8761217
#> R  0.9671455  1.354604  0.05925578 -1.246435 -5.368569 -1.225070 -0.9520758
#>          V22        V23       V24        V25        V26        V27        V28
#> M -0.2331791 -0.1932641  1.296602 -0.5353094 -0.3811106  0.8334654  0.3768849
#> R  0.2533942  0.2100188 -1.409010  0.5817172  0.4141505 -0.9057214 -0.4095584
#>          V29        V3        V30       V31       V32         V33        V34
#> M -0.1001701 -6.615024  0.5931561 -2.374177  1.787984  0.02352022 -0.2809057
#> R  0.1088542  7.188504 -0.6445789  2.580003 -1.942990 -0.02555927  0.3052584
#>          V35       V36       V37        V38        V39        V4       V40
#> M  0.3771400 -1.649638 -1.417798  0.3793023  0.2872131  5.543015 -1.176338
#> R -0.4098356  1.792651  1.540712 -0.4121853 -0.3121127 -6.023558  1.278319
#>         V41        V42        V43        V44         V45        V46       V47
#> M  1.522687  0.4728841  0.5497814  0.4658809  0.07367442  0.6637954  4.747518
#> R -1.654694 -0.5138801 -0.5974439 -0.5062698 -0.08006151 -0.7213422 -5.159097
#>         V48       V49         V5       V50       V51        V52       V53
#> M  4.586333  4.716448  0.4927951 -15.30578 -11.82325  0.2365787 -3.142850
#> R -4.983938 -5.125334 -0.5355172  16.63269  12.84825 -0.2570885  3.415314
#>          V54       V55        V56       V57       V58       V59         V6
#> M  0.6950371 -10.66148   9.796905  5.038741  4.832013  3.670107  0.9309454
#> R -0.7552923  11.58576 -10.646233 -5.475567 -5.250918 -3.988282 -1.0116523
#>         V60        V7        V8        V9
#> M -1.344935 -2.091700 -3.056049  1.859551
#> R  1.461533  2.273037  3.320988 -2.020762
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
#>  0.2173913 
```
