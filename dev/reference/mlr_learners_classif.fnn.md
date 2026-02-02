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
#>   1: 0.0100 0.1264 0.0881 0.1992 0.0184 0.2261 0.1729 0.2131 0.0693 0.2281
#>   2: 0.0762 0.4459 0.4152 0.3952 0.4256 0.4135 0.4528 0.5326 0.7306 0.6193
#>   3: 0.0317 0.3513 0.1786 0.0658 0.0513 0.3752 0.5419 0.5440 0.5150 0.4262
#>   4: 0.0519 0.2838 0.2802 0.3086 0.2657 0.3801 0.5626 0.4376 0.2617 0.1199
#>   5: 0.0223 0.1487 0.1156 0.1654 0.3833 0.3598 0.1713 0.1136 0.0349 0.3796
#>  ---                                                                      
#> 135: 0.0238 0.2048 0.2652 0.3100 0.2381 0.1918 0.1430 0.1735 0.1781 0.2852
#> 136: 0.0131 0.3193 0.3468 0.3738 0.3055 0.1926 0.1385 0.2122 0.2758 0.4576
#> 137: 0.0272 0.3997 0.3941 0.3309 0.2926 0.1760 0.1739 0.2043 0.2088 0.2678
#> 138: 0.0323 0.2154 0.3085 0.3425 0.2990 0.1402 0.1235 0.1534 0.1901 0.2429
#> 139: 0.0303 0.2354 0.2898 0.2812 0.1578 0.0273 0.0673 0.1444 0.2070 0.2645
#>         V19     V2    V20    V21    V22    V23    V24    V25    V26    V27
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.4060 0.0171 0.3973 0.2741 0.3690 0.5556 0.4846 0.3140 0.5334 0.5256
#>   2: 0.2032 0.0666 0.4636 0.4148 0.4292 0.5730 0.5399 0.3161 0.2285 0.6995
#>   3: 0.2024 0.0956 0.4233 0.7723 0.9735 0.9390 0.5559 0.5268 0.6826 0.5713
#>   4: 0.6676 0.0548 0.9402 0.7832 0.5352 0.6809 0.9174 0.7613 0.8220 0.8872
#>   5: 0.7401 0.0375 0.9925 0.9802 0.8890 0.6712 0.4286 0.3374 0.7366 0.9611
#>  ---                                                                      
#> 135: 0.5036 0.0318 0.6166 0.7616 0.8125 0.7793 0.8788 0.8813 0.9470 1.0000
#> 136: 0.6487 0.0387 0.7154 0.8010 0.7924 0.8793 1.0000 0.9865 0.9474 0.9474
#> 137: 0.2434 0.0378 0.1839 0.2802 0.6172 0.8015 0.8313 0.8440 0.8494 0.9168
#> 138: 0.2120 0.0101 0.2395 0.3272 0.5949 0.8302 0.9045 0.9888 0.9912 0.9448
#> 139: 0.2828 0.0353 0.4293 0.5685 0.6990 0.7246 0.7622 0.9242 1.0000 0.9979
#>         V28    V29     V3    V30    V31    V32    V33    V34    V35    V36
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.2520 0.2090 0.0623 0.3559 0.6260 0.7340 0.6120 0.3497 0.3953 0.3012
#>   2: 1.0000 0.7262 0.0481 0.4724 0.5103 0.5459 0.2881 0.0981 0.1951 0.4181
#>   3: 0.5429 0.2177 0.1321 0.2149 0.5811 0.6323 0.2965 0.1873 0.2969 0.5163
#>   4: 0.6091 0.2967 0.0842 0.1103 0.1318 0.0624 0.0990 0.4006 0.3666 0.1050
#>   5: 0.7353 0.4856 0.0484 0.1594 0.3007 0.4096 0.3170 0.3305 0.3408 0.2186
#>  ---                                                                      
#> 135: 0.9739 0.8446 0.0422 0.6151 0.4302 0.3165 0.2869 0.2017 0.1206 0.0271
#> 136: 0.9315 0.8326 0.0329 0.6213 0.3772 0.2822 0.2042 0.2190 0.2223 0.1327
#> 137: 1.0000 0.7896 0.0488 0.5371 0.6472 0.6505 0.4959 0.2175 0.0990 0.0434
#> 138: 1.0000 0.9092 0.0298 0.7412 0.7691 0.7117 0.5304 0.2131 0.0928 0.1297
#> 139: 0.8297 0.7032 0.0490 0.7141 0.6893 0.4961 0.2584 0.0969 0.0776 0.0364
#>         V37    V38    V39     V4    V40    V41    V42    V43    V44    V45
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.5408 0.8814 0.9857 0.0205 0.9167 0.6121 0.5006 0.3210 0.3202 0.4295
#>   2: 0.4604 0.3217 0.2828 0.0394 0.2430 0.1979 0.2444 0.1847 0.0841 0.0692
#>   3: 0.6153 0.4283 0.5479 0.1408 0.6133 0.5017 0.2377 0.1957 0.1749 0.1304
#>   4: 0.1915 0.3930 0.4288 0.0319 0.2546 0.1151 0.2196 0.1879 0.1437 0.2146
#>   5: 0.2463 0.2726 0.1680 0.0475 0.2792 0.2558 0.1740 0.2121 0.1099 0.0985
#>  ---                                                                      
#> 135: 0.0580 0.1262 0.1072 0.0399 0.1082 0.0360 0.1197 0.2061 0.2054 0.1878
#> 136: 0.0521 0.0618 0.1416 0.0078 0.1460 0.0846 0.1055 0.1639 0.1916 0.2085
#> 137: 0.1708 0.1979 0.1880 0.0848 0.1108 0.1702 0.0585 0.0638 0.1391 0.0638
#> 138: 0.1159 0.1226 0.1768 0.0564 0.0345 0.1562 0.0824 0.1149 0.1694 0.0954
#> 139: 0.1572 0.1823 0.1349 0.0608 0.0849 0.0492 0.1367 0.1552 0.1548 0.1319
#>         V46    V47    V48    V49     V5    V50    V51    V52    V53    V54
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.3654 0.2655 0.1576 0.0681 0.0205 0.0294 0.0241 0.0121 0.0036 0.0150
#>   2: 0.0528 0.0357 0.0085 0.0230 0.0590 0.0046 0.0156 0.0031 0.0054 0.0105
#>   3: 0.0597 0.1124 0.1047 0.0507 0.1674 0.0159 0.0195 0.0201 0.0248 0.0131
#>   4: 0.2360 0.1125 0.0254 0.0285 0.1158 0.0178 0.0052 0.0081 0.0120 0.0045
#>   5: 0.1271 0.1459 0.1164 0.0777 0.0647 0.0439 0.0061 0.0145 0.0128 0.0145
#>  ---                                                                      
#> 135: 0.2047 0.1716 0.1069 0.0477 0.0788 0.0170 0.0186 0.0096 0.0071 0.0084
#> 136: 0.2335 0.1964 0.1300 0.0633 0.0721 0.0183 0.0137 0.0150 0.0076 0.0032
#> 137: 0.0581 0.0641 0.1044 0.0732 0.1127 0.0275 0.0146 0.0091 0.0045 0.0043
#> 138: 0.0080 0.0790 0.1255 0.0647 0.0760 0.0179 0.0051 0.0061 0.0093 0.0135
#> 139: 0.0985 0.1258 0.0954 0.0489 0.0167 0.0241 0.0042 0.0086 0.0046 0.0126
#>         V55    V56    V57    V58    V59     V6    V60     V7     V8     V9
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0085 0.0073 0.0050 0.0044 0.0040 0.0368 0.0117 0.1098 0.1276 0.0598
#>   2: 0.0110 0.0015 0.0072 0.0048 0.0107 0.0649 0.0094 0.1209 0.2467 0.3564
#>   3: 0.0070 0.0138 0.0092 0.0143 0.0036 0.1710 0.0103 0.0731 0.1401 0.2083
#>   4: 0.0121 0.0097 0.0085 0.0047 0.0048 0.0922 0.0053 0.1027 0.0613 0.1465
#>   5: 0.0058 0.0049 0.0065 0.0093 0.0059 0.0591 0.0022 0.0753 0.0098 0.0684
#>  ---                                                                      
#> 135: 0.0038 0.0026 0.0028 0.0013 0.0035 0.0766 0.0060 0.0881 0.1143 0.1594
#> 136: 0.0037 0.0071 0.0040 0.0009 0.0015 0.1341 0.0085 0.1626 0.1902 0.2610
#> 137: 0.0043 0.0098 0.0054 0.0051 0.0065 0.1103 0.0103 0.1349 0.2337 0.3113
#> 138: 0.0063 0.0063 0.0034 0.0032 0.0062 0.0958 0.0067 0.0990 0.1018 0.1030
#> 139: 0.0036 0.0035 0.0034 0.0079 0.0036 0.1354 0.0048 0.1465 0.1123 0.1945
#> 
#> $cl
#>   [1] R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R
#>  [38] R R R R R R R R R R R R R R R R R R R R R R R R R R M M M M M M M M M M M
#>  [75] M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> [112] M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> Levels: M R
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
