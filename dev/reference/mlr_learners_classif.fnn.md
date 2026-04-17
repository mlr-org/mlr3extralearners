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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#>   1: 0.0453 0.2872 0.4918 0.6552 0.6919 0.7797 0.7464 0.9444 1.0000 0.8874
#>   2: 0.0100 0.1264 0.0881 0.1992 0.0184 0.2261 0.1729 0.2131 0.0693 0.2281
#>   3: 0.0762 0.4459 0.4152 0.3952 0.4256 0.4135 0.4528 0.5326 0.7306 0.6193
#>   4: 0.0519 0.2838 0.2802 0.3086 0.2657 0.3801 0.5626 0.4376 0.2617 0.1199
#>   5: 0.0223 0.1487 0.1156 0.1654 0.3833 0.3598 0.1713 0.1136 0.0349 0.3796
#>  ---                                                                      
#> 135: 0.0335 0.2660 0.3188 0.3553 0.3116 0.1965 0.1780 0.2794 0.2870 0.3969
#> 136: 0.0272 0.3997 0.3941 0.3309 0.2926 0.1760 0.1739 0.2043 0.2088 0.2678
#> 137: 0.0323 0.2154 0.3085 0.3425 0.2990 0.1402 0.1235 0.1534 0.1901 0.2429
#> 138: 0.0522 0.2529 0.2716 0.2374 0.1878 0.0983 0.0683 0.1503 0.1723 0.2339
#> 139: 0.0260 0.2354 0.2720 0.2442 0.1665 0.0336 0.1302 0.1708 0.2177 0.3175
#>         V19     V2    V20    V21    V22    V23    V24    V25    V26    V27
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.8024 0.0523 0.7818 0.5212 0.4052 0.3957 0.3914 0.3250 0.3200 0.3271
#>   2: 0.4060 0.0171 0.3973 0.2741 0.3690 0.5556 0.4846 0.3140 0.5334 0.5256
#>   3: 0.2032 0.0666 0.4636 0.4148 0.4292 0.5730 0.5399 0.3161 0.2285 0.6995
#>   4: 0.6676 0.0548 0.9402 0.7832 0.5352 0.6809 0.9174 0.7613 0.8220 0.8872
#>   5: 0.7401 0.0375 0.9925 0.9802 0.8890 0.6712 0.4286 0.3374 0.7366 0.9611
#>  ---                                                                      
#> 135: 0.5599 0.0258 0.6936 0.7969 0.7452 0.8203 0.9261 0.8810 0.8814 0.9301
#> 136: 0.2434 0.0378 0.1839 0.2802 0.6172 0.8015 0.8313 0.8440 0.8494 0.9168
#> 137: 0.2120 0.0101 0.2395 0.3272 0.5949 0.8302 0.9045 0.9888 0.9912 0.9448
#> 138: 0.1962 0.0437 0.1395 0.3164 0.5888 0.7631 0.8473 0.9424 0.9986 0.9699
#> 139: 0.3714 0.0363 0.4552 0.5700 0.7397 0.8062 0.8837 0.9432 1.0000 0.9375
#>         V28    V29     V3    V30    V31    V32    V33    V34    V35    V36
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.2767 0.4423 0.0843 0.2028 0.3788 0.2947 0.1984 0.2341 0.1306 0.4182
#>   2: 0.2520 0.2090 0.0623 0.3559 0.6260 0.7340 0.6120 0.3497 0.3953 0.3012
#>   3: 1.0000 0.7262 0.0481 0.4724 0.5103 0.5459 0.2881 0.0981 0.1951 0.4181
#>   4: 0.6091 0.2967 0.0842 0.1103 0.1318 0.0624 0.0990 0.4006 0.3666 0.1050
#>   5: 0.7353 0.4856 0.0484 0.1594 0.3007 0.4096 0.3170 0.3305 0.3408 0.2186
#>  ---                                                                      
#> 135: 0.9955 0.8576 0.0398 0.6069 0.3934 0.2464 0.1645 0.1140 0.0956 0.0080
#> 136: 1.0000 0.7896 0.0488 0.5371 0.6472 0.6505 0.4959 0.2175 0.0990 0.0434
#> 137: 1.0000 0.9092 0.0298 0.7412 0.7691 0.7117 0.5304 0.2131 0.0928 0.1297
#> 138: 1.0000 0.8630 0.0180 0.6979 0.7717 0.7305 0.5197 0.1786 0.1098 0.1446
#> 139: 0.7603 0.7123 0.0136 0.8358 0.7622 0.4567 0.1715 0.1549 0.1641 0.1869
#>         V37    V38    V39     V4    V40    V41    V42    V43    V44    V45
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.3835 0.1057 0.1840 0.0689 0.1970 0.1674 0.0583 0.1401 0.1628 0.0621
#>   2: 0.5408 0.8814 0.9857 0.0205 0.9167 0.6121 0.5006 0.3210 0.3202 0.4295
#>   3: 0.4604 0.3217 0.2828 0.0394 0.2430 0.1979 0.2444 0.1847 0.0841 0.0692
#>   4: 0.1915 0.3930 0.4288 0.0319 0.2546 0.1151 0.2196 0.1879 0.1437 0.2146
#>   5: 0.2463 0.2726 0.1680 0.0475 0.2792 0.2558 0.1740 0.2121 0.1099 0.0985
#>  ---                                                                      
#> 135: 0.0702 0.0936 0.0894 0.0570 0.1127 0.0873 0.1020 0.1964 0.2256 0.1814
#> 136: 0.1708 0.1979 0.1880 0.0848 0.1108 0.1702 0.0585 0.0638 0.1391 0.0638
#> 137: 0.1159 0.1226 0.1768 0.0564 0.0345 0.1562 0.0824 0.1149 0.1694 0.0954
#> 138: 0.1066 0.1440 0.1929 0.0292 0.0325 0.1490 0.0328 0.0537 0.1309 0.0910
#> 139: 0.2655 0.1713 0.0959 0.0272 0.0768 0.0847 0.2076 0.2505 0.1862 0.1439
#>         V46    V47    V48    V49     V5    V50    V51    V52    V53    V54
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0203 0.0530 0.0742 0.0409 0.1183 0.0061 0.0125 0.0084 0.0089 0.0048
#>   2: 0.3654 0.2655 0.1576 0.0681 0.0205 0.0294 0.0241 0.0121 0.0036 0.0150
#>   3: 0.0528 0.0357 0.0085 0.0230 0.0590 0.0046 0.0156 0.0031 0.0054 0.0105
#>   4: 0.2360 0.1125 0.0254 0.0285 0.1158 0.0178 0.0052 0.0081 0.0120 0.0045
#>   5: 0.1271 0.1459 0.1164 0.0777 0.0647 0.0439 0.0061 0.0145 0.0128 0.0145
#>  ---                                                                      
#> 135: 0.2012 0.1688 0.1037 0.0501 0.0529 0.0136 0.0130 0.0120 0.0039 0.0053
#> 136: 0.0581 0.0641 0.1044 0.0732 0.1127 0.0275 0.0146 0.0091 0.0045 0.0043
#> 137: 0.0080 0.0790 0.1255 0.0647 0.0760 0.0179 0.0051 0.0061 0.0093 0.0135
#> 138: 0.0757 0.1059 0.1005 0.0535 0.0351 0.0235 0.0155 0.0160 0.0029 0.0051
#> 139: 0.1470 0.0991 0.0041 0.0154 0.0214 0.0116 0.0181 0.0146 0.0129 0.0047
#>         V55    V56    V57    V58    V59     V6    V60     V7     V8     V9
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0094 0.0191 0.0140 0.0049 0.0052 0.2583 0.0044 0.2156 0.3481 0.3337
#>   2: 0.0085 0.0073 0.0050 0.0044 0.0040 0.0368 0.0117 0.1098 0.1276 0.0598
#>   3: 0.0110 0.0015 0.0072 0.0048 0.0107 0.0649 0.0094 0.1209 0.2467 0.3564
#>   4: 0.0121 0.0097 0.0085 0.0047 0.0048 0.0922 0.0053 0.1027 0.0613 0.1465
#>   5: 0.0058 0.0049 0.0065 0.0093 0.0059 0.0591 0.0022 0.0753 0.0098 0.0684
#>  ---                                                                      
#> 135: 0.0062 0.0046 0.0045 0.0022 0.0005 0.1091 0.0031 0.1709 0.1684 0.1865
#> 136: 0.0043 0.0098 0.0054 0.0051 0.0065 0.1103 0.0103 0.1349 0.2337 0.3113
#> 137: 0.0063 0.0063 0.0034 0.0032 0.0062 0.0958 0.0067 0.0990 0.1018 0.1030
#> 138: 0.0062 0.0089 0.0140 0.0138 0.0077 0.1171 0.0031 0.1257 0.1178 0.1258
#> 139: 0.0039 0.0061 0.0040 0.0036 0.0061 0.0338 0.0115 0.0655 0.1400 0.1843
#> 
#> $cl
#>   [1] R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R
#>  [38] R R R R R R R R R R R R R R R R R R R R R R R R R R R R R M M M M M M M M
#>  [75] M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> [112] M M M M M M M M M M M M M M M M M M M M M M M M M M M M
#> Levels: M R
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
