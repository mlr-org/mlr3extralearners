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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.8212 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0249 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1233 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>    0.1232594    0.0248645    0.8211989 
#> 
#> $freqs
#>         M         R 
#> 0.5083612 0.4916388 
#> 
#> $alpha
#>          M          R 
#> -3.2173320  0.9116546 
#> 
#> $beta
#>          V1        V10       V11       V12        V13        V14        V15
#> M  2.807378 -0.3152355  3.187206  1.922769 -0.1707875  0.2908120 -0.4487242
#> R -2.902867  0.3259578 -3.295614 -1.988169  0.1765966 -0.3007035  0.4639869
#>          V16        V17        V18        V19        V2        V20        V21
#> M -0.8891583 -0.3681918  0.5160531 -0.6028709  3.608448  0.5348030  0.5615280
#> R  0.9194018  0.3807154 -0.5336060  0.6233767 -3.731184 -0.5529936 -0.5806275
#>          V22        V23       V24        V25        V26        V27          V28
#> M  0.1007747  0.8018008  1.198721 -0.9566168 -0.6227397  0.3854820 -0.002339636
#> R -0.1042024 -0.8290729 -1.239494  0.9891547  0.6439213 -0.3985937  0.002419215
#>          V29        V3        V30       V31        V32        V33       V34
#> M -0.1380617 -8.008542  0.8526729 -2.216281  0.7966499  0.5877453 -1.134144
#> R  0.1427577  8.280942 -0.8816754  2.291664 -0.8237468 -0.6077367  1.172720
#>          V35       V36       V37        V38        V39        V4       V40
#> M  0.4051734 -1.116419 -1.078239  0.7353739  0.6571904  9.297049 -1.750889
#> R -0.4189548  1.154392  1.114914 -0.7603867 -0.6795438 -9.613275  1.810443
#>           V41        V42        V43        V44       V45       V46       V47
#> M  0.05201025  0.5949901  0.9594579  0.4457022  1.182283  2.955909  2.619392
#> R -0.05377930 -0.6152279 -0.9920926 -0.4608621 -1.222497 -3.056450 -2.708487
#>         V48       V49        V5       V50       V51       V52       V53
#> M  2.284803  2.743041 -2.959835 -11.78053 -6.261940  2.129962 -3.201388
#> R -2.362518 -2.836342  3.060509  12.18122  6.474931 -2.202409  3.310279
#>         V54       V55       V56       V57        V58       V59         V6
#> M  5.457709 -5.014380  2.903317 -8.450781  0.7062660  8.171034 -0.8653876
#> R -5.643345  5.184937 -3.002069  8.738223 -0.7302886 -8.448961  0.8948225
#>         V60         V7        V8        V9
#> M -1.476634 -0.1769118 -2.006768  1.650465
#> R  1.526860  0.1829293  2.075025 -1.706604
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
