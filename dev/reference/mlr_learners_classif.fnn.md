# Fast Nearest Neighbour Classification

Fast Nearest Neighbour Classification. Calls
[`FNN::knn()`](https://rdrr.io/pkg/FNN/man/knn.html) from
[FNN](https://CRAN.R-project.org/package=FNN).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.fnn")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [FNN](https://CRAN.R-project.org/package=FNN)

## Parameters

|           |           |         |                            |                  |
|-----------|-----------|---------|----------------------------|------------------|
| Id        | Type      | Default | Levels                     | Range            |
| k         | integer   | 1       |                            | \\\[1, \infty)\\ |
| algorithm | character | kd_tree | kd_tree, cover_tree, brute | \-               |

## References

Boltz, Sylvain, Debreuve, Eric, Barlaud, Michel (2007). “kNN-based
high-dimensional Kullback-Leibler distance for tracking.” In *Eighth
International Workshop on Image Analysis for Multimedia Interactive
Services (WIAMIS'07)*, 16–16. IEEE.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifFNN`

## Methods

### Public methods

- [`LearnerClassifFNN$new()`](#method-LearnerClassifFNN-new)

- [`LearnerClassifFNN$clone()`](#method-LearnerClassifFNN-clone)

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

    LearnerClassifFNN$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifFNN$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.fnn")
print(learner)
#> 
#> ── <LearnerClassifFNN> (classif.fnn): Fast Nearest Neighbour ───────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and FNN
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

print(learner$model)
#> $train
#>          V1    V10    V11    V12    V13    V14    V15    V16    V17    V18
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0200 0.2111 0.1609 0.1582 0.2238 0.0645 0.0660 0.2273 0.3100 0.2999
#>   2: 0.0262 0.6194 0.6333 0.7060 0.5544 0.5320 0.6479 0.6931 0.6759 0.7551
#>   3: 0.0286 0.3039 0.2988 0.4250 0.6343 0.8198 1.0000 0.9988 0.9508 0.9025
#>   4: 0.0317 0.3513 0.1786 0.0658 0.0513 0.3752 0.5419 0.5440 0.5150 0.4262
#>   5: 0.0039 0.0452 0.0492 0.0996 0.1424 0.1194 0.0628 0.0907 0.1177 0.1429
#>  ---                                                                      
#> 135: 0.0129 0.2245 0.2431 0.3134 0.3206 0.2917 0.2249 0.2347 0.2143 0.2939
#> 136: 0.0366 0.1847 0.2222 0.2648 0.2508 0.2291 0.1555 0.1863 0.2387 0.3345
#> 137: 0.0131 0.3193 0.3468 0.3738 0.3055 0.1926 0.1385 0.2122 0.2758 0.4576
#> 138: 0.0272 0.3997 0.3941 0.3309 0.2926 0.1760 0.1739 0.2043 0.2088 0.2678
#> 139: 0.0323 0.2154 0.3085 0.3425 0.2990 0.1402 0.1235 0.1534 0.1901 0.2429
#>         V19     V2    V20    V21    V22    V23    V24    V25    V26    V27
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.5078 0.0371 0.4797 0.5783 0.5071 0.4328 0.5550 0.6711 0.6415 0.7104
#>   2: 0.8929 0.0582 0.8619 0.7974 0.6737 0.4293 0.3648 0.5331 0.2413 0.5070
#>   3: 0.7234 0.0453 0.5122 0.2074 0.3985 0.5890 0.2872 0.2043 0.5782 0.5389
#>   4: 0.2024 0.0956 0.4233 0.7723 0.9735 0.9390 0.5559 0.5268 0.6826 0.5713
#>   5: 0.1223 0.0063 0.1104 0.1847 0.3715 0.4382 0.5707 0.6654 0.7476 0.7654
#>  ---                                                                      
#> 135: 0.4898 0.0141 0.6127 0.7531 0.7718 0.7432 0.8673 0.9308 0.9836 1.0000
#> 136: 0.5233 0.0421 0.6684 0.7766 0.7928 0.7940 0.9129 0.9498 0.9835 1.0000
#> 137: 0.6487 0.0387 0.7154 0.8010 0.7924 0.8793 1.0000 0.9865 0.9474 0.9474
#> 138: 0.2434 0.0378 0.1839 0.2802 0.6172 0.8015 0.8313 0.8440 0.8494 0.9168
#> 139: 0.2120 0.0101 0.2395 0.3272 0.5949 0.8302 0.9045 0.9888 0.9912 0.9448
#>         V28    V29     V3    V30    V31    V32    V33    V34    V35    V36
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.8080 0.6791 0.0428 0.3857 0.1307 0.2604 0.5121 0.7547 0.8537 0.8507
#>   2: 0.8533 0.6036 0.1099 0.8514 0.8512 0.5045 0.1862 0.2709 0.4232 0.3043
#>   3: 0.3750 0.3411 0.0277 0.5067 0.5580 0.4778 0.3299 0.2198 0.1407 0.2856
#>   4: 0.5429 0.2177 0.1321 0.2149 0.5811 0.6323 0.2965 0.1873 0.2969 0.5163
#>   5: 0.8555 0.9720 0.0152 0.9221 0.7502 0.7209 0.7757 0.6055 0.5021 0.4499
#>  ---                                                                      
#> 135: 0.9595 0.8722 0.0309 0.6862 0.4901 0.3280 0.3115 0.1969 0.1019 0.0317
#> 136: 0.9471 0.8237 0.0504 0.6252 0.4181 0.3209 0.2658 0.2196 0.1588 0.0561
#> 137: 0.9315 0.8326 0.0329 0.6213 0.3772 0.2822 0.2042 0.2190 0.2223 0.1327
#> 138: 1.0000 0.7896 0.0488 0.5371 0.6472 0.6505 0.4959 0.2175 0.0990 0.0434
#> 139: 1.0000 0.9092 0.0298 0.7412 0.7691 0.7117 0.5304 0.2131 0.0928 0.1297
#>         V37    V38    V39     V4    V40    V41    V42    V43    V44    V45
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.6692 0.6097 0.4943 0.0207 0.2744 0.0510 0.2834 0.2825 0.4256 0.2641
#>   2: 0.6116 0.6756 0.5375 0.1083 0.4719 0.4647 0.2587 0.2129 0.2222 0.2111
#>   3: 0.3807 0.4158 0.4054 0.0174 0.3296 0.2707 0.2650 0.0723 0.1238 0.1192
#>   4: 0.6153 0.4283 0.5479 0.1408 0.6133 0.5017 0.2377 0.1957 0.1749 0.1304
#>   5: 0.3947 0.4281 0.4427 0.0336 0.3749 0.1972 0.0511 0.0793 0.1269 0.1533
#>  ---                                                                      
#> 135: 0.0756 0.0907 0.1066 0.0375 0.1380 0.0665 0.1475 0.2470 0.2788 0.2709
#> 136: 0.0948 0.1700 0.1215 0.0250 0.1282 0.0386 0.1329 0.2331 0.2468 0.1960
#> 137: 0.0521 0.0618 0.1416 0.0078 0.1460 0.0846 0.1055 0.1639 0.1916 0.2085
#> 138: 0.1708 0.1979 0.1880 0.0848 0.1108 0.1702 0.0585 0.0638 0.1391 0.0638
#> 139: 0.1159 0.1226 0.1768 0.0564 0.0345 0.1562 0.0824 0.1149 0.1694 0.0954
#>         V46    V47    V48    V49     V5    V50    V51    V52    V53    V54
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.1386 0.1051 0.1343 0.0383 0.0954 0.0324 0.0232 0.0027 0.0065 0.0159
#>   2: 0.0176 0.1348 0.0744 0.0130 0.0974 0.0106 0.0033 0.0232 0.0166 0.0095
#>   3: 0.1089 0.0623 0.0494 0.0264 0.0384 0.0081 0.0104 0.0045 0.0014 0.0038
#>   4: 0.0597 0.1124 0.1047 0.0507 0.1674 0.0159 0.0195 0.0201 0.0248 0.0131
#>   5: 0.0690 0.0402 0.0534 0.0228 0.0310 0.0073 0.0062 0.0062 0.0120 0.0052
#>  ---                                                                      
#> 135: 0.2283 0.1818 0.1185 0.0546 0.0767 0.0219 0.0204 0.0124 0.0093 0.0072
#> 136: 0.1985 0.1570 0.0921 0.0549 0.0596 0.0194 0.0166 0.0132 0.0027 0.0022
#> 137: 0.2335 0.1964 0.1300 0.0633 0.0721 0.0183 0.0137 0.0150 0.0076 0.0032
#> 138: 0.0581 0.0641 0.1044 0.0732 0.1127 0.0275 0.0146 0.0091 0.0045 0.0043
#> 139: 0.0080 0.0790 0.1255 0.0647 0.0760 0.0179 0.0051 0.0061 0.0093 0.0135
#>         V55    V56    V57    V58    V59     V6    V60     V7     V8     V9
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0072 0.0167 0.0180 0.0084 0.0090 0.0986 0.0032 0.1539 0.1601 0.3109
#>   2: 0.0180 0.0244 0.0316 0.0164 0.0095 0.2280 0.0078 0.2431 0.3771 0.5598
#>   3: 0.0013 0.0089 0.0057 0.0027 0.0051 0.0990 0.0062 0.1201 0.1833 0.2105
#>   4: 0.0070 0.0138 0.0092 0.0143 0.0036 0.1710 0.0103 0.0731 0.1401 0.2083
#>   5: 0.0056 0.0093 0.0042 0.0003 0.0053 0.0284 0.0036 0.0396 0.0272 0.0323
#>  ---                                                                      
#> 135: 0.0019 0.0027 0.0054 0.0017 0.0024 0.0787 0.0029 0.0662 0.1108 0.1777
#> 136: 0.0059 0.0016 0.0025 0.0017 0.0027 0.0252 0.0027 0.0958 0.0991 0.1419
#> 137: 0.0037 0.0071 0.0040 0.0009 0.0015 0.1341 0.0085 0.1626 0.1902 0.2610
#> 138: 0.0043 0.0098 0.0054 0.0051 0.0065 0.1103 0.0103 0.1349 0.2337 0.3113
#> 139: 0.0063 0.0063 0.0034 0.0032 0.0062 0.0958 0.0067 0.0990 0.1018 0.1030
#> 
#> $cl
#>   [1] R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R
#>  [38] R R R R R R R R R R R R R R R R R R R R R R R M M M M M M M M M M M M M M
#>  [75] M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> [112] M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> Levels: M R
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
