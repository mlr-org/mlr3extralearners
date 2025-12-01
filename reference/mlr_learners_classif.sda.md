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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.2574 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0226 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.104 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.10401162   0.02260392   0.25741760 
#> 
#> $freqs
#>         M         R 
#> 0.5614367 0.4385633 
#> 
#> $alpha
#>         M         R 
#> -4.764397  3.163943 
#> 
#> $beta
#>          V1         V10       V11       V12        V13        V14        V15
#> M  1.479408  0.06193280  2.882361  3.469622  0.3194017 -0.1743968 -0.1012321
#> R -1.893897 -0.07928466 -3.689919 -4.441714 -0.4088892  0.2232579  0.1295946
#>          V16       V17        V18        V19        V2        V20         V21
#> M -0.5079824 -1.427008  0.6567020  0.6292522  2.610524  0.3417547  0.05846685
#> R  0.6503051  1.826816 -0.8406918 -0.8055513 -3.341921 -0.4375049 -0.07484764
#>          V22        V23        V24        V25        V26        V27        V28
#> M  0.5024849  0.7152404  0.1958686  0.3850982 -0.4969277 -0.4316027  0.6824788
#> R -0.6432673 -0.9156311 -0.2507455 -0.4929921  0.6361531  0.5525259 -0.8736906
#>          V29        V3       V30        V31        V32        V33        V34
#> M  0.3328129 -7.003991  1.087886 -0.9692441  0.5261432 -0.6253899 -0.6970307
#> R -0.4260580  8.966316 -1.392681  1.2407996 -0.6735540  0.8006068  0.8923194
#>         V35       V36       V37       V38        V39        V4       V40
#> M  1.018081 -1.571428 -1.639931  1.254907  0.3566359  6.835951 -1.907000
#> R -1.303320  2.011699  2.099395 -1.606498 -0.4565554 -8.751196  2.441288
#>         V41         V42       V43        V44        V45        V46       V47
#> M  1.034543 -0.02070484  1.424067  0.7181897 -0.3441615  0.3073069  4.203075
#> R -1.324394  0.02650577 -1.823051 -0.9194067  0.4405861 -0.3934058 -5.380661
#>         V48      V49        V5       V50       V51       V52       V53
#> M  5.009638  4.02431  1.481563 -17.70452 -4.059113  2.597576  4.491781
#> R -6.413201 -5.15181 -1.896656  22.66484  5.196365 -3.325346 -5.750254
#>         V54       V55        V56         V57       V58       V59         V6
#> M  5.731551 -7.262527 -0.4943327  0.04314868  1.234302  7.094040 -0.7518982
#> R -7.337373  9.297287  0.6328311 -0.05523776 -1.580120 -9.081595  0.9625594
#>           V60         V7        V8        V9
#> M  0.04004780 -0.6307288 -2.747854  2.145372
#> R -0.05126808  0.8074417  3.517727 -2.746446
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
