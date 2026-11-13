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
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0212 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1147 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.11472288   0.02121303   1.00000000 
#> 
#> $freqs
#>   M   R 
#> 0.5 0.5 
#> 
#> $alpha
#>         M         R 
#> -5.488440  2.799199 
#> 
#> $beta
#>          V1       V10       V11       V12        V13        V14        V15
#> M  3.470388  1.181577  1.037745  2.456779  0.8588058 -0.6762992 -0.4204693
#> R -3.470388 -1.181577 -1.037745 -2.456779 -0.8588058  0.6762992  0.4204693
#>          V16        V17      V18        V19        V2        V20       V21
#> M -0.4413742 -0.4530095 -0.45629 -0.2161426  5.145818  0.5782941  1.026879
#> R  0.4413742  0.4530095  0.45629  0.2161426 -5.145818 -0.5782941 -1.026879
#>          V22        V23        V24        V25        V26        V27       V28
#> M  0.4312736  0.7101715  0.8953596 -0.6141196 -0.2266125  0.4717443  0.800415
#> R -0.4312736 -0.7101715 -0.8953596  0.6141196  0.2266125 -0.4717443 -0.800415
#>          V29        V3       V30       V31       V32       V33        V34
#> M -0.5996355 -8.405164  2.113603 -2.455523  0.341099  0.399672 -0.4686683
#> R  0.5996355  8.405164 -2.113603  2.455523 -0.341099 -0.399672  0.4686683
#>           V35      V36       V37       V38       V39        V4      V40
#> M  0.07275047 -1.30625 -1.298156  1.503452  1.253276  4.533515 -2.79842
#> R -0.07275047  1.30625  1.298156 -1.503452 -1.253276 -4.533515  2.79842
#>        V41        V42        V43           V44       V45       V46       V47
#> M  1.47093  0.5517542  0.6902689 -0.0005862043  1.288335  2.745821  1.296361
#> R -1.47093 -0.5517542 -0.6902689  0.0005862043 -1.288335 -2.745821 -1.296361
#>         V48       V49        V5       V50       V51       V52       V53
#> M  3.354371  8.139717  6.081041 -15.27616 -4.296101 -4.351075  1.952121
#> R -3.354371 -8.139717 -6.081041  15.27616  4.296101  4.351075 -1.952121
#>         V54       V55       V56       V57       V58       V59         V6
#> M  4.676156 -13.48756 -4.361172 -4.644782 -5.996969  8.763915  0.4794302
#> R -4.676156  13.48756  4.361172  4.644782  5.996969 -8.763915 -0.4794302
#>         V60        V7        V8        V9
#> M  4.062947 -2.489427 -1.115893  2.223384
#> R -4.062947  2.489427  1.115893 -2.223384
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
