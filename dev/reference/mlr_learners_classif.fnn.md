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
#>   2: 0.0453 0.2872 0.4918 0.6552 0.6919 0.7797 0.7464 0.9444 1.0000 0.8874
#>   3: 0.0100 0.1264 0.0881 0.1992 0.0184 0.2261 0.1729 0.2131 0.0693 0.2281
#>   4: 0.0762 0.4459 0.4152 0.3952 0.4256 0.4135 0.4528 0.5326 0.7306 0.6193
#>   5: 0.0286 0.3039 0.2988 0.4250 0.6343 0.8198 1.0000 0.9988 0.9508 0.9025
#>  ---                                                                      
#> 135: 0.0131 0.3193 0.3468 0.3738 0.3055 0.1926 0.1385 0.2122 0.2758 0.4576
#> 136: 0.0335 0.2660 0.3188 0.3553 0.3116 0.1965 0.1780 0.2794 0.2870 0.3969
#> 137: 0.0323 0.2154 0.3085 0.3425 0.2990 0.1402 0.1235 0.1534 0.1901 0.2429
#> 138: 0.0303 0.2354 0.2898 0.2812 0.1578 0.0273 0.0673 0.1444 0.2070 0.2645
#> 139: 0.0260 0.2354 0.2720 0.2442 0.1665 0.0336 0.1302 0.1708 0.2177 0.3175
#>         V19     V2    V20    V21    V22    V23    V24    V25    V26    V27
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.5078 0.0371 0.4797 0.5783 0.5071 0.4328 0.5550 0.6711 0.6415 0.7104
#>   2: 0.8024 0.0523 0.7818 0.5212 0.4052 0.3957 0.3914 0.3250 0.3200 0.3271
#>   3: 0.4060 0.0171 0.3973 0.2741 0.3690 0.5556 0.4846 0.3140 0.5334 0.5256
#>   4: 0.2032 0.0666 0.4636 0.4148 0.4292 0.5730 0.5399 0.3161 0.2285 0.6995
#>   5: 0.7234 0.0453 0.5122 0.2074 0.3985 0.5890 0.2872 0.2043 0.5782 0.5389
#>  ---                                                                      
#> 135: 0.6487 0.0387 0.7154 0.8010 0.7924 0.8793 1.0000 0.9865 0.9474 0.9474
#> 136: 0.5599 0.0258 0.6936 0.7969 0.7452 0.8203 0.9261 0.8810 0.8814 0.9301
#> 137: 0.2120 0.0101 0.2395 0.3272 0.5949 0.8302 0.9045 0.9888 0.9912 0.9448
#> 138: 0.2828 0.0353 0.4293 0.5685 0.6990 0.7246 0.7622 0.9242 1.0000 0.9979
#> 139: 0.3714 0.0363 0.4552 0.5700 0.7397 0.8062 0.8837 0.9432 1.0000 0.9375
#>         V28    V29     V3    V30    V31    V32    V33    V34    V35    V36
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.8080 0.6791 0.0428 0.3857 0.1307 0.2604 0.5121 0.7547 0.8537 0.8507
#>   2: 0.2767 0.4423 0.0843 0.2028 0.3788 0.2947 0.1984 0.2341 0.1306 0.4182
#>   3: 0.2520 0.2090 0.0623 0.3559 0.6260 0.7340 0.6120 0.3497 0.3953 0.3012
#>   4: 1.0000 0.7262 0.0481 0.4724 0.5103 0.5459 0.2881 0.0981 0.1951 0.4181
#>   5: 0.3750 0.3411 0.0277 0.5067 0.5580 0.4778 0.3299 0.2198 0.1407 0.2856
#>  ---                                                                      
#> 135: 0.9315 0.8326 0.0329 0.6213 0.3772 0.2822 0.2042 0.2190 0.2223 0.1327
#> 136: 0.9955 0.8576 0.0398 0.6069 0.3934 0.2464 0.1645 0.1140 0.0956 0.0080
#> 137: 1.0000 0.9092 0.0298 0.7412 0.7691 0.7117 0.5304 0.2131 0.0928 0.1297
#> 138: 0.8297 0.7032 0.0490 0.7141 0.6893 0.4961 0.2584 0.0969 0.0776 0.0364
#> 139: 0.7603 0.7123 0.0136 0.8358 0.7622 0.4567 0.1715 0.1549 0.1641 0.1869
#>         V37    V38    V39     V4    V40    V41    V42    V43    V44    V45
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.6692 0.6097 0.4943 0.0207 0.2744 0.0510 0.2834 0.2825 0.4256 0.2641
#>   2: 0.3835 0.1057 0.1840 0.0689 0.1970 0.1674 0.0583 0.1401 0.1628 0.0621
#>   3: 0.5408 0.8814 0.9857 0.0205 0.9167 0.6121 0.5006 0.3210 0.3202 0.4295
#>   4: 0.4604 0.3217 0.2828 0.0394 0.2430 0.1979 0.2444 0.1847 0.0841 0.0692
#>   5: 0.3807 0.4158 0.4054 0.0174 0.3296 0.2707 0.2650 0.0723 0.1238 0.1192
#>  ---                                                                      
#> 135: 0.0521 0.0618 0.1416 0.0078 0.1460 0.0846 0.1055 0.1639 0.1916 0.2085
#> 136: 0.0702 0.0936 0.0894 0.0570 0.1127 0.0873 0.1020 0.1964 0.2256 0.1814
#> 137: 0.1159 0.1226 0.1768 0.0564 0.0345 0.1562 0.0824 0.1149 0.1694 0.0954
#> 138: 0.1572 0.1823 0.1349 0.0608 0.0849 0.0492 0.1367 0.1552 0.1548 0.1319
#> 139: 0.2655 0.1713 0.0959 0.0272 0.0768 0.0847 0.2076 0.2505 0.1862 0.1439
#>         V46    V47    V48    V49     V5    V50    V51    V52    V53    V54
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.1386 0.1051 0.1343 0.0383 0.0954 0.0324 0.0232 0.0027 0.0065 0.0159
#>   2: 0.0203 0.0530 0.0742 0.0409 0.1183 0.0061 0.0125 0.0084 0.0089 0.0048
#>   3: 0.3654 0.2655 0.1576 0.0681 0.0205 0.0294 0.0241 0.0121 0.0036 0.0150
#>   4: 0.0528 0.0357 0.0085 0.0230 0.0590 0.0046 0.0156 0.0031 0.0054 0.0105
#>   5: 0.1089 0.0623 0.0494 0.0264 0.0384 0.0081 0.0104 0.0045 0.0014 0.0038
#>  ---                                                                      
#> 135: 0.2335 0.1964 0.1300 0.0633 0.0721 0.0183 0.0137 0.0150 0.0076 0.0032
#> 136: 0.2012 0.1688 0.1037 0.0501 0.0529 0.0136 0.0130 0.0120 0.0039 0.0053
#> 137: 0.0080 0.0790 0.1255 0.0647 0.0760 0.0179 0.0051 0.0061 0.0093 0.0135
#> 138: 0.0985 0.1258 0.0954 0.0489 0.0167 0.0241 0.0042 0.0086 0.0046 0.0126
#> 139: 0.1470 0.0991 0.0041 0.0154 0.0214 0.0116 0.0181 0.0146 0.0129 0.0047
#>         V55    V56    V57    V58    V59     V6    V60     V7     V8     V9
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0072 0.0167 0.0180 0.0084 0.0090 0.0986 0.0032 0.1539 0.1601 0.3109
#>   2: 0.0094 0.0191 0.0140 0.0049 0.0052 0.2583 0.0044 0.2156 0.3481 0.3337
#>   3: 0.0085 0.0073 0.0050 0.0044 0.0040 0.0368 0.0117 0.1098 0.1276 0.0598
#>   4: 0.0110 0.0015 0.0072 0.0048 0.0107 0.0649 0.0094 0.1209 0.2467 0.3564
#>   5: 0.0013 0.0089 0.0057 0.0027 0.0051 0.0990 0.0062 0.1201 0.1833 0.2105
#>  ---                                                                      
#> 135: 0.0037 0.0071 0.0040 0.0009 0.0015 0.1341 0.0085 0.1626 0.1902 0.2610
#> 136: 0.0062 0.0046 0.0045 0.0022 0.0005 0.1091 0.0031 0.1709 0.1684 0.1865
#> 137: 0.0063 0.0063 0.0034 0.0032 0.0062 0.0958 0.0067 0.0990 0.1018 0.1030
#> 138: 0.0036 0.0035 0.0034 0.0079 0.0036 0.1354 0.0048 0.1465 0.1123 0.1945
#> 139: 0.0039 0.0061 0.0040 0.0036 0.0061 0.0338 0.0115 0.0655 0.1400 0.1843
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
#>  0.2173913 
```
