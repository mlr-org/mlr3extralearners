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
#> Estimating optimal shrinkage intensity lambda.freq (frequencies): 0.4772 
#> Estimating variances (pooled across classes)
#> Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0253 
#> 
#> 
#> Computing inverse correlation matrix (pooled across classes)
#> Estimating optimal shrinkage intensity lambda (correlation matrix): 0.1149 

print(learner$model)
#> $regularization
#>       lambda   lambda.var lambda.freqs 
#>   0.11494416   0.02528125   0.47720776 
#> 
#> $freqs
#>         M         R 
#> 0.5319693 0.4680307 
#> 
#> $alpha
#>          M          R 
#> -2.5627320  0.1476018 
#> 
#> $beta
#>           V1        V10       V11       V12        V13        V14         V15
#> M  0.6480471  0.3957772  2.530344  2.855128 -0.6733041 -0.5596986  0.02238430
#> R -0.7365781 -0.4498451 -2.876019 -3.245173  0.7652855  0.6361601 -0.02544226
#>          V16        V17        V18        V19        V2        V20        V21
#> M -0.1926270 -0.7496412 -0.1960648  0.2459017  5.331819  0.2462243  0.3173638
#> R  0.2189421  0.8520512  0.2228497 -0.2794949 -6.060210 -0.2798615 -0.3607196
#>           V22        V23       V24        V25        V26        V27        V28
#> M -0.03727885  0.7198965  1.341331 -0.7773559 -0.2797788  0.3735583  0.3338506
#> R  0.04237158 -0.8182430 -1.524572  0.8835521  0.3180000 -0.4245908 -0.3794586
#>          V29        V3        V30       V31        V32        V33       V34
#> M -0.5168066 -8.326386  0.4725703 -2.476230  0.4201691  0.5005212 -0.708832
#> R  0.5874086  9.463871 -0.5371291  2.814513 -0.4775693 -0.5688984  0.805667
#>          V35       V36       V37       V38        V39        V4       V40
#> M  0.3415539 -1.776868 -1.958990  1.694102  0.4970968  5.065933 -1.979555
#> R -0.3882143  2.019609  2.226612 -1.925537 -0.5650062 -5.758000  2.249986
#>         V41        V42        V43      V44        V45       V46       V47
#> M  1.181376  0.1609319  0.9368852  1.02868  0.4905314  3.027276  1.313554
#> R -1.342766 -0.1829172 -1.0648750 -1.16921 -0.5575439 -3.440838 -1.493001
#>         V48       V49        V5       V50       V51        V52       V53
#> M  2.572151  4.662926  3.614533 -11.45392 -5.586502  0.2685537  2.428205
#> R -2.923537 -5.299938 -4.108321  13.01866  6.349685 -0.3052414 -2.759927
#>         V54       V55        V56       V57        V58       V59        V6
#> M  1.239794 -7.696758 -0.9026333  2.113283  0.7979077  4.786116 -1.704338
#> R -1.409164  8.748228  1.0259439 -2.401983 -0.9069115 -5.439957  1.937171
#>         V60        V7        V8        V9
#> M -6.303927 -1.450295 -2.464707  1.302793
#> R  7.165119  1.648423  2.801416 -1.480770
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
#>  0.1594203 
```
