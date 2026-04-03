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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.4772 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0218 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1178 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.11776332   0.02183769   0.47720776 
#> 
#> $freqs
#>         M         R 
#> 0.5319693 0.4680307 
#> 
#> $alpha
#>         M         R 
#> -4.234399  2.091732 
#> 
#> $beta
#>          V1        V10       V11       V12        V13       V14         V15
#> M  3.288733  0.4868311  1.953073  1.903996  0.8008390 -1.315248  0.09880576
#> R -3.738013 -0.5533380 -2.219886 -2.164105 -0.9102432  1.494927 -0.11230381
#>          V16        V17        V18       V19        V2        V20        V21
#> M -0.8468111 -0.2806203  0.3317950  1.017760  5.062736 -0.1846854  0.1784246
#> R  0.9624957  0.3189564 -0.3771222 -1.156799 -5.754367  0.2099157 -0.2027996
#>          V22        V23        V24        V25        V26         V27        V28
#> M  0.3915779  0.3443013  0.5020248  0.2003203 -0.5163997 -0.09802131  0.2471136
#> R -0.4450721 -0.3913370 -0.5706074 -0.2276865  0.5869462  0.11141220 -0.2808723
#>          V29        V3       V30       V31        V32        V33        V34
#> M -0.1607682 -6.768627  1.965722 -2.427788  0.3988096 -0.4397143 -0.7514892
#> R  0.1827311  7.693303 -2.234263  2.759453 -0.4532918  0.4997845  0.8541517
#>          V35        V36       V37       V38       V39        V4       V40
#> M  0.5546637 -0.9494979 -1.717164  1.409837  2.212734  4.589353 -2.017460
#> R -0.6304375  1.0792107  1.951749 -1.602438 -2.515020 -5.216314  2.293069
#>          V41        V42        V43       V44       V45        V46       V47
#> M  0.3256746  0.7991885  0.3883056  1.441942  1.263708 -0.1432582  3.633728
#> R -0.3701656 -0.9083673 -0.4413529 -1.638929 -1.436346  0.1628290 -4.130139
#>         V48       V49        V5      V50       V51       V52       V53
#> M  6.199893  3.317373  1.639594 -11.9492 -9.068326 -3.162505  3.216856
#> R -7.046873 -3.770566 -1.863582  13.5816 10.307168  3.594541 -3.656317
#>         V54       V55       V56       V57       V58       V59         V6
#> M  5.648441 -14.96090 -1.636424 -2.869972  2.789373  7.109654  0.9276274
#> R -6.420086  17.00474  1.859979  3.262045 -3.170435 -8.080918 -1.0543524
#>         V60        V7         V8        V9
#> M -2.252240 -2.243194 -0.5733469  1.385732
#> R  2.559923  2.549641  0.6516730 -1.575040
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
#>  0.2318841 
```
