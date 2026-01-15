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
#>   3: 0.0100 0.1264 0.0881 0.1992 0.0184 0.2261 0.1729 0.2131 0.0693 0.2281
#>   4: 0.0762 0.4459 0.4152 0.3952 0.4256 0.4135 0.4528 0.5326 0.7306 0.6193
#>   5: 0.0286 0.3039 0.2988 0.4250 0.6343 0.8198 1.0000 0.9988 0.9508 0.9025
#>  ---                                                                      
#> 135: 0.0187 0.2684 0.3108 0.2933 0.2275 0.0994 0.1801 0.2200 0.2732 0.2862
#> 136: 0.0323 0.2154 0.3085 0.3425 0.2990 0.1402 0.1235 0.1534 0.1901 0.2429
#> 137: 0.0522 0.2529 0.2716 0.2374 0.1878 0.0983 0.0683 0.1503 0.1723 0.2339
#> 138: 0.0303 0.2354 0.2898 0.2812 0.1578 0.0273 0.0673 0.1444 0.2070 0.2645
#> 139: 0.0260 0.2354 0.2720 0.2442 0.1665 0.0336 0.1302 0.1708 0.2177 0.3175
#>         V19     V2    V20    V21    V22    V23    V24    V25    V26    V27
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.5078 0.0371 0.4797 0.5783 0.5071 0.4328 0.5550 0.6711 0.6415 0.7104
#>   2: 0.8929 0.0582 0.8619 0.7974 0.6737 0.4293 0.3648 0.5331 0.2413 0.5070
#>   3: 0.4060 0.0171 0.3973 0.2741 0.3690 0.5556 0.4846 0.3140 0.5334 0.5256
#>   4: 0.2032 0.0666 0.4636 0.4148 0.4292 0.5730 0.5399 0.3161 0.2285 0.6995
#>   5: 0.7234 0.0453 0.5122 0.2074 0.3985 0.5890 0.2872 0.2043 0.5782 0.5389
#>  ---                                                                      
#> 135: 0.2034 0.0346 0.1740 0.4130 0.6879 0.8120 0.8453 0.8919 0.9300 0.9987
#> 136: 0.2120 0.0101 0.2395 0.3272 0.5949 0.8302 0.9045 0.9888 0.9912 0.9448
#> 137: 0.1962 0.0437 0.1395 0.3164 0.5888 0.7631 0.8473 0.9424 0.9986 0.9699
#> 138: 0.2828 0.0353 0.4293 0.5685 0.6990 0.7246 0.7622 0.9242 1.0000 0.9979
#> 139: 0.3714 0.0363 0.4552 0.5700 0.7397 0.8062 0.8837 0.9432 1.0000 0.9375
#>         V28    V29     V3    V30    V31    V32    V33    V34    V35    V36
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.8080 0.6791 0.0428 0.3857 0.1307 0.2604 0.5121 0.7547 0.8537 0.8507
#>   2: 0.8533 0.6036 0.1099 0.8514 0.8512 0.5045 0.1862 0.2709 0.4232 0.3043
#>   3: 0.2520 0.2090 0.0623 0.3559 0.6260 0.7340 0.6120 0.3497 0.3953 0.3012
#>   4: 1.0000 0.7262 0.0481 0.4724 0.5103 0.5459 0.2881 0.0981 0.1951 0.4181
#>   5: 0.3750 0.3411 0.0277 0.5067 0.5580 0.4778 0.3299 0.2198 0.1407 0.2856
#>  ---                                                                      
#> 135: 1.0000 0.8104 0.0168 0.6199 0.6041 0.5547 0.4160 0.1472 0.0849 0.0608
#> 136: 1.0000 0.9092 0.0298 0.7412 0.7691 0.7117 0.5304 0.2131 0.0928 0.1297
#> 137: 1.0000 0.8630 0.0180 0.6979 0.7717 0.7305 0.5197 0.1786 0.1098 0.1446
#> 138: 0.8297 0.7032 0.0490 0.7141 0.6893 0.4961 0.2584 0.0969 0.0776 0.0364
#> 139: 0.7603 0.7123 0.0136 0.8358 0.7622 0.4567 0.1715 0.1549 0.1641 0.1869
#>         V37    V38    V39     V4    V40    V41    V42    V43    V44    V45
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.6692 0.6097 0.4943 0.0207 0.2744 0.0510 0.2834 0.2825 0.4256 0.2641
#>   2: 0.6116 0.6756 0.5375 0.1083 0.4719 0.4647 0.2587 0.2129 0.2222 0.2111
#>   3: 0.5408 0.8814 0.9857 0.0205 0.9167 0.6121 0.5006 0.3210 0.3202 0.4295
#>   4: 0.4604 0.3217 0.2828 0.0394 0.2430 0.1979 0.2444 0.1847 0.0841 0.0692
#>   5: 0.3807 0.4158 0.4054 0.0174 0.3296 0.2707 0.2650 0.0723 0.1238 0.1192
#>  ---                                                                      
#> 135: 0.0969 0.1411 0.1676 0.0177 0.1200 0.1201 0.1036 0.1977 0.1339 0.0902
#> 136: 0.1159 0.1226 0.1768 0.0564 0.0345 0.1562 0.0824 0.1149 0.1694 0.0954
#> 137: 0.1066 0.1440 0.1929 0.0292 0.0325 0.1490 0.0328 0.0537 0.1309 0.0910
#> 138: 0.1572 0.1823 0.1349 0.0608 0.0849 0.0492 0.1367 0.1552 0.1548 0.1319
#> 139: 0.2655 0.1713 0.0959 0.0272 0.0768 0.0847 0.2076 0.2505 0.1862 0.1439
#>         V46    V47    V48    V49     V5    V50    V51    V52    V53    V54
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.1386 0.1051 0.1343 0.0383 0.0954 0.0324 0.0232 0.0027 0.0065 0.0159
#>   2: 0.0176 0.1348 0.0744 0.0130 0.0974 0.0106 0.0033 0.0232 0.0166 0.0095
#>   3: 0.3654 0.2655 0.1576 0.0681 0.0205 0.0294 0.0241 0.0121 0.0036 0.0150
#>   4: 0.0528 0.0357 0.0085 0.0230 0.0590 0.0046 0.0156 0.0031 0.0054 0.0105
#>   5: 0.1089 0.0623 0.0494 0.0264 0.0384 0.0081 0.0104 0.0045 0.0014 0.0038
#>  ---                                                                      
#> 135: 0.1085 0.1521 0.1363 0.0858 0.0393 0.0290 0.0203 0.0116 0.0098 0.0199
#> 136: 0.0080 0.0790 0.1255 0.0647 0.0760 0.0179 0.0051 0.0061 0.0093 0.0135
#> 137: 0.0757 0.1059 0.1005 0.0535 0.0351 0.0235 0.0155 0.0160 0.0029 0.0051
#> 138: 0.0985 0.1258 0.0954 0.0489 0.0167 0.0241 0.0042 0.0086 0.0046 0.0126
#> 139: 0.1470 0.0991 0.0041 0.0154 0.0214 0.0116 0.0181 0.0146 0.0129 0.0047
#>         V55    V56    V57    V58    V59     V6    V60     V7     V8     V9
#>       <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>  <num>
#>   1: 0.0072 0.0167 0.0180 0.0084 0.0090 0.0986 0.0032 0.1539 0.1601 0.3109
#>   2: 0.0180 0.0244 0.0316 0.0164 0.0095 0.2280 0.0078 0.2431 0.3771 0.5598
#>   3: 0.0085 0.0073 0.0050 0.0044 0.0040 0.0368 0.0117 0.1098 0.1276 0.0598
#>   4: 0.0110 0.0015 0.0072 0.0048 0.0107 0.0649 0.0094 0.1209 0.2467 0.3564
#>   5: 0.0013 0.0089 0.0057 0.0027 0.0051 0.0990 0.0062 0.1201 0.1833 0.2105
#>  ---                                                                      
#> 135: 0.0033 0.0101 0.0065 0.0115 0.0193 0.1630 0.0157 0.2028 0.1694 0.2328
#> 136: 0.0063 0.0063 0.0034 0.0032 0.0062 0.0958 0.0067 0.0990 0.1018 0.1030
#> 137: 0.0062 0.0089 0.0140 0.0138 0.0077 0.1171 0.0031 0.1257 0.1178 0.1258
#> 138: 0.0036 0.0035 0.0034 0.0079 0.0036 0.1354 0.0048 0.1465 0.1123 0.1945
#> 139: 0.0039 0.0061 0.0040 0.0036 0.0061 0.0338 0.0115 0.0655 0.1400 0.1843
#> 
#> $cl
#>   [1] R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R R
#>  [38] R R R R R R R R R R R R R R R R R R R R R R R R R R R R M M M M M M M M M
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
