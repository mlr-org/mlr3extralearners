# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

- `cox.ties` is initialized to `"breslow"` to keep the tie-handling
  behavior of earlier glmnet versions, and to silence the glmnet v5.0
  warning about the upcoming default change to `"efron"`.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    `glmnet:::survfit.cv.glmnet()`. Parameters `stype` and `ctype`
    relate to how `lp` predictions are transformed into survival
    predictions and are described in
    [`survival::survfit.coxph()`](https://rdrr.io/pkg/survival/man/survfit.coxph.html).
    By default the Breslow estimator is used for computing the baseline
    hazard.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.cv_glmnet")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [glmnet](https://CRAN.R-project.org/package=glmnet)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| lambda | untyped | NULL |  | \- |
| type.measure | character | deviance | deviance, C | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| alignment | character | lambda | lambda, fraction | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| keep | logical | FALSE | TRUE, FALSE | \- |
| parallel | logical | FALSE | TRUE, FALSE | \- |
| gamma | untyped | c(0, 0.25, 0.5, 0.75, 1) |  | \- |
| relax | logical | FALSE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| alpha | numeric | 1 |  | \\\[0, 1\]\\ |
| nlambda | integer | 100 |  | \\\[1, \infty)\\ |
| lambda.min.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| intercept | logical | TRUE | TRUE, FALSE | \- |
| exclude | untyped | NULL |  | \- |
| penalty.factor | untyped | \- |  | \- |
| lower.limits | untyped | -Inf |  | \- |
| upper.limits | untyped | Inf |  | \- |
| cox.ties | character | breslow | breslow, efron | \- |
| maxp | integer | \- |  | \\\[1, \infty)\\ |
| path | logical | FALSE | TRUE, FALSE | \- |
| fdev | numeric | 1e-05 |  | \\\[0, 1\]\\ |
| devmax | numeric | 0.999 |  | \\\[0, 1\]\\ |
| eps | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| big | numeric | 9.9e+35 |  | \\(-\infty, \infty)\\ |
| mnlam | integer | 5 |  | \\(-\infty, \infty)\\ |
| pmin | numeric | 1e-09 |  | \\\[0, 1\]\\ |
| exmx | numeric | 250 |  | \\(-\infty, \infty)\\ |
| prec | numeric | 1e-10 |  | \\(-\infty, \infty)\\ |
| mxit | integer | 100 |  | \\\[1, \infty)\\ |
| epsnr | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| mxitnr | integer | 25 |  | \\\[1, \infty)\\ |
| thresh | numeric | 1e-07 |  | \\\[0, \infty)\\ |
| maxit | integer | 100000 |  | \\\[1, \infty)\\ |
| dfmax | integer | NULL |  | \\\[0, \infty)\\ |
| pmax | integer | NULL |  | \\\[0, \infty)\\ |
| s | numeric | lambda.1se |  | \\\[0, \infty)\\ |
| predict.gamma | numeric | gamma.1se |  | \\\[0, 1\]\\ |
| exact | logical | FALSE | TRUE, FALSE | \- |
| stype | integer | 2 |  | \\\[1, 2\]\\ |
| ctype | integer | \- |  | \\\[1, 2\]\\ |
| use_pred_offset | logical | \- | TRUE, FALSE | \- |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

## References

Friedman J, Hastie T, Tibshirani R (2010). “Regularization Paths for
Generalized Linear Models via Coordinate Descent.” *Journal of
Statistical Software*, **33**(1), 1–22.
[doi:10.18637/jss.v033.i01](https://doi.org/10.18637/jss.v033.i01) .

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCVGlmnet`

## Active bindings

- `native_model`:

  (`cv.glmnet`)  
  The fitted model.

## Methods

### Public methods

- [`LearnerSurvCVGlmnet$new()`](#method-LearnerSurvCVGlmnet-initialize)

- [`LearnerSurvCVGlmnet$selected_features()`](#method-LearnerSurvCVGlmnet-selected_features)

- [`LearnerSurvCVGlmnet$clone()`](#method-LearnerSurvCVGlmnet-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCVGlmnet$new()

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$selected_features()`

Returns the set of selected features as reported by
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
with `type` set to `"nonzero"`.

#### Usage

    LearnerSurvCVGlmnet$selected_features(lambda = NULL)

#### Arguments

- `lambda`:

  (`numeric(1)`)  
  Custom `lambda`, defaults to the active lambda depending on parameter
  set.

#### Returns

([`character()`](https://rdrr.io/r/base/character.html)) of feature
names.

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvCVGlmnet$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.cv_glmnet")
print(learner)
#> 
#> ── <LearnerSurvCVGlmnet> (surv.cv_glmnet): Regularized Generalized Linear Model 
#> • Model: -
#> • Parameters: cox.ties=breslow, use_pred_offset=TRUE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and glmnet
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: logical, integer, and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: offset, selected_features, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $model
#> 
#> Call:  glmnet::cv.glmnet(x = data, y = target, cox.ties = "breslow",      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00325    44   2.858 0.1829       6
#> 1se 0.08446     9   3.031 0.1803       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  33   6      1          1        1   115
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40  11      1         10        1   120
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  41  10      1          8        0   150
#>  [25,]  41  13      1          1        0   140
#>  [26,]  45   9      1          7        0   110
#>  [27,]  44   2      1          1        1   150
#>  [28,]  43   2      0        180        1   140
#>  [29,]  46  15      0        180        0   120
#>  [30,]  46   2      1          1        0   126
#>  [31,]  44   3      1          0        1   180
#>  [32,]  43  29      0        180        1   180
#>  [33,]  43  10      0        180        0   185
#>  [34,]  47   6      1          0        1   116
#>  [35,]  44   0      1          0        1    96
#>  [36,]  49   5      0         73        1   136
#>  [37,]  45   5      0          5        0   141
#>  [38,]  44   4      1          0        1   114
#>  [39,]  44   9      1          8        1   135
#>  [40,]  46   4      0        180        1   121
#>  [41,]  44   2      0        180        0   142
#>  [42,]  46  15      0        180        1   120
#>  [43,]  47   3      1          1        1   120
#>  [44,]  48   3      0        180        0   154
#>  [45,]  48  12      1         11        0   200
#>  [46,]  47   5      1          3        1   130
#>  [47,]  46   3      1          0        1   119
#>  [48,]  47  10      0         10        1   140
#>  [49,]  47   7      0        180        0   145
#>  [50,]  50   6      1          2        1   140
#>  [51,]  49   7      1          7        1   110
#>  [52,]  46   3      1          1        1   140
#>  [53,]  46   9      1          9        1   122
#>  [54,]  50   7      0        180        1   110
#>  [55,]  51   1      0          1        1   145
#>  [56,]  47   2      0        180        0   150
#>  [57,]  49  23      0        179        1   112
#>  [58,]  52   2      0        180        1   170
#>  [59,]  50   4      0          4        1   100
#>  [60,]  51   3      1          2        0   113
#>  [61,]  50   9      0        180        0   130
#>  [62,]  49   7      1          4        1    90
#>  [63,]  47   6      0        180        1   162
#>  [64,]  51   8      0        180        1   140
#>  [65,]  52   2      0        180        0   155
#>  [66,]  46   3      0        180        1   120
#>  [67,]  48   7      1          0        1   110
#>  [68,]  48  17      1         10        0   111
#>  [69,]  52   4      1          4        0   152
#>  [70,]  49   9      1          3        0   102
#>  [71,]  49  15      0        180        1   160
#>  [72,]  53   5      0        180        1   140
#>  [73,]  54  17      1         12        1   102
#>  [74,]  54   6      1          3        0   129
#>  [75,]  51   3      1          1        0   140
#>  [76,]  50  14      1         13        0   170
#>  [77,]  53   8      1          7        0   160
#>  [78,]  48   3      1          2        0   150
#>  [79,]  51  25      1          1        0   202
#>  [80,]  49   5      1          2        1   150
#>  [81,]  53   4      0          4        0   140
#>  [82,]  52  14      1          7        1   200
#>  [83,]  48  11      1         10        0   120
#>  [84,]  53   4      1          0        1   156
#>  [85,]  51  13      0         99        1   160
#>  [86,]  49  16      0         16        0   125
#>  [87,]  52   7      1          2        0   154
#>  [88,]  54   9      1          1        0   130
#>  [89,]  55   4      1          2        0   150
#>  [90,]  52   4      0        180        1   180
#>  [91,]  51  13      1         11        0   145
#>  [92,]  50   5      1          4        1   150
#>  [93,]  54   4      1          0        1   121
#>  [94,]  55  28      1         13        1   160
#>  [95,]  49   6      1          0        1   130
#>  [96,]  49   1      0          1        1   110
#>  [97,]  50   7      1          1        0   156
#>  [98,]  50   7      1          0        1   127
#>  [99,]  56   4      1          1        1   130
#> [100,]  52   5      0        175        1   117
#> [101,]  55   1      0        180        0   127
#> [102,]  55   2      0          2        0   145
#> [103,]  54   7      1          0        1   100
#> [104,]  56   3      0        180        1   193
#> [105,]  55   5      1          4        1   120
#> [106,]  52   8      0        180        0   119
#> [107,]  54   3      0        180        1   180
#> [108,]  55   6      0        180        0   170
#> [109,]  52  16      0         16        0   152
#> [110,]  53  10      1          9        0   172
#> [111,]  52  16      1         14        0   170
#> [112,]  53  15      0         15        1    90
#> [113,]  53   4      0        180        1   150
#> [114,]  55   6      0        180        1   100
#> [115,]  54  12      1          0        1   190
#> [116,]  54   3      0        180        0   128
#> [117,]  56   3      0          8        1   139
#> [118,]  55   1      0          2        0   130
#> [119,]  54   7      1          2        0   129
#> [120,]  52   9      1          3        0   170
#> [121,]  57   5      1          3        1   138
#> [122,]  57   1      0          1        1   100
#> [123,]  56   4      1          0        1   140
#> [124,]  52   2      0        180        0   140
#> [125,]  55  11      1          7        0   104
#> [126,]  53   3      1          0        1   200
#> [127,]  57  10      0        180        1   170
#> [128,]  58   8      0          8        1   130
#> [129,]  54   5      0        180        1   108
#> [130,]  55   3      1          1        1   156
#> [131,]  57   0      0          0        1   150
#> [132,]  53  21      1         13        1   130
#> [133,]  59   3      1          1        0   172
#> [134,]  57   4      0        180        1   119
#> [135,]  58   6      1          0        1    90
#> [136,]  54  17      1          8        1   227
#> [137,]  55   9      1          2        1   147
#> [138,]  55  13      0        166        1   140
#> [139,]  56   5      0          5        1   150
#> [140,]  57   4      1          2        1   185
#> [141,]  53   4      0        147        1   145
#> [142,]  53   7      1          0        1   120
#> [143,]  57  11      1         10        1   129
#> [144,]  55   3      1          2        0   140
#> [145,]  54   7      1          0        1   141
#> [146,]  56   4      0          4        0   164
#> [147,]  58   1      1          1        1   200
#> [148,]  56   7      1          5        1   120
#> [149,]  60  11      1          9        0   106
#> [150,]  59   3      0        180        0   120
#> [151,]  58   4      1          0        1   160
#> [152,]  57   2      0          2        1   120
#> [153,]  60   5      1          1        0   138
#> [154,]  57   5      0        180        1   130
#> [155,]  58  11      1          9        1   124
#> [156,]  55   5      1          0        1   160
#> [157,]  58  26      1          0        1   189
#> [158,]  61   9      0          9        1   160
#> [159,]  58   4      1          3        0   120
#> [160,]  59   2      1          1        0   140
#> [161,]  58   8      0        161        1   140
#> [162,]  58  14      1          6        0   190
#> [163,]  61  20      1         13        0   130
#> [164,]  57  13      1         10        0   110
#> [165,]  57   2      1          0        1   116
#> [166,]  58  10      0         10        1   150
#> [167,]  57   4      1          3        0   138
#> [168,]  56  14      0         45        0   130
#> [169,]  58  19      1         13        1   140
#> [170,]  56  18      1         11        1   165
#> [171,]  59   9      1          0        1    80
#> [172,]  55   9      1          7        1   135
#> [173,]  61   4      1          0        1   115
#> [174,]  56   8      1          8        0   120
#> [175,]  61  13      1         12        1   130
#> [176,]  59  11      1          8        1   190
#> [177,]  57   1      0          1        0   126
#> [178,]  57  15      1         13        1   110
#> [179,]  59   5      1          2        0   182
#> [180,]  58   5      1          1        1   135
#> [181,]  61   8      0         77        0   120
#> [182,]  61  13      0         13        0   210
#> [183,]  62   7      1          2        1   180
#> [184,]  57   3      1          0        0   100
#> [185,]  61  18      0        170        0   140
#> [186,]  61  28      1          7        0   133
#> [187,]  58   8      1          3        1   150
#> [188,]  61   7      0          7        1   150
#> [189,]  61   6      0          6        0   134
#> [190,]  59  13      1          2        0   198
#> [191,]  62   4      1          0        0   160
#> [192,]  60  17      1          8        1   140
#> [193,]  58   3      1          0        1   146
#> [194,]  62   4      1          3        0   173
#> [195,]  58   2      0         30        0   202
#> [196,]  59   1      0        180        0   155
#> [197,]  63   6      0         28        1   120
#> [198,]  61   5      0          5        1   110
#> [199,]  58  11      1          9        0   179
#> [200,]  57   2      1          1        0   159
#> [201,]  63   3      1          1        0   180
#> [202,]  63   1      0        180        1   130
#> [203,]  63   4      1          3        0   222
#> [204,]  62   3      0        180        1   105
#> [205,]  63   4      0        180        1   190
#> [206,]  63  15      1         10        1   126
#> [207,]  60  18      1         13        0   132
#> [208,]  59   8      0        180        1   140
#> [209,]  61   9      1          9        1   150
#> [210,]  58   9      1          9        0   110
#> [211,]  62   7      0          7        0   150
#> [212,]  59   1      0         22        1   162
#> [213,]  60   7      1          5        1   141
#> [214,]  60   7      0          7        0   140
#> [215,]  59   5      1          1        0   148
#> [216,]  60   7      1          1        1    90
#> [217,]  65  13      0        180        1   100
#> [218,]  63   1      0          1        0   162
#> [219,]  63   1      0          1        0   130
#> [220,]  61  15      1         13        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  62   6      0          6        0   120
#> [223,]  63  12      1         10        0   200
#> [224,]  59  10      0        180        1   130
#> [225,]  60   8      0         17        1   130
#> [226,]  61   6      1          1        1   117
#> [227,]  64  12      1         11        0   160
#> [228,]  66   1      1          0        1   120
#> [229,]  64   6      1          0        1   140
#> [230,]  63  10      1          0        1   148
#> [231,]  63  14      1          9        0   123
#> [232,]  65  36      1         11        0   140
#> [233,]  63   4      1          3        0   162
#> [234,]  66   3      1          1        0   127
#> [235,]  61  10      1          2        1   194
#> [236,]  63  12      1          9        0   114
#> [237,]  63   7      0        180        0   120
#> [238,]  66   5      1          0        1   110
#> [239,]  65   8      1          0        0   168
#> [240,]  65  10      1          8        1   120
#> [241,]  64   0      0          0        1    90
#> [242,]  64   9      0        180        0   150
#> [243,]  65   3      0        180        1   190
#> [244,]  64   7      0        180        1   120
#> [245,]  66   6      1          1        1   130
#> [246,]  63  12      0         12        1   150
#> [247,]  62   3      1          1        1   199
#> [248,]  65   6      0          9        0   112
#> [249,]  65   3      1          0        1    80
#> [250,]  63   5      1          4        0   170
#> [251,]  63   2      1          1        0   180
#> [252,]  62  13      1         11        0   180
#> [253,]  67  11      0         11        1   100
#> [254,]  66  18      1          5        0   142
#> [255,]  62   9      0        180        0   145
#> [256,]  61  14      1          5        0   140
#> [257,]  63   9      1          8        1   160
#> [258,]  63   3      1          2        0   120
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  65   8      1          0        1   140
#> [262,]  67   6      0        180        1   170
#> [263,]  65  15      1         11        1   160
#> [264,]  64   6      1          0        1   125
#> [265,]  66   7      1          0        1   115
#> [266,]  66  13      1          0        0   118
#> [267,]  65   3      0          3        0   105
#> [268,]  64  10      1          9        1   110
#> [269,]  63   7      1          0        0   162
#> [270,]  67   8      1          1        1   130
#> [271,]  68   5      0          5        1    90
#> [272,]  63  10      0         16        1   160
#> [273,]  66  14      0        180        0   130
#> [274,]  68  18      0        180        1   260
#> [275,]  63   8      1          1        1   162
#> [276,]  65  18      1          3        0   120
#> [277,]  63   1      1          0        1   155
#> [278,]  63  10      0         18        1   130
#> [279,]  67  11      0         11        0   150
#> [280,]  68  11      0        180        0   160
#> [281,]  68  14      0         79        0   172
#> [282,]  65  15      1         12        1   150
#> [283,]  66  11      1          0        0   100
#> [284,]  65   4      1          2        1   145
#> [285,]  69  12      0         15        1   140
#> [286,]  63   2      0        180        0   150
#> [287,]  65  11      1          6        0   130
#> [288,]  65   8      1          0        1    90
#> [289,]  66   3      0          3        1   138
#> [290,]  69   1      1          0        0   170
#> [291,]  67   1      0        180        1   160
#> [292,]  65   1      1          0        0   133
#> [293,]  67   7      1          4        1   130
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  65  10      1          1        1   148
#> [297,]  66  19      1         12        1   150
#> [298,]  67  12      1         12        0   160
#> [299,]  69   6      0         99        1   140
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64  11      0         11        0   125
#> [304,]  64   4      0        180        1   140
#> [305,]  67   2      0         18        0   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  65  13      1         12        1   130
#> [309,]  69  17      1         10        0   140
#> [310,]  69   8      0         93        0   140
#> [311,]  65   6      0        101        1   115
#> [312,]  68   4      0          4        1   190
#> [313,]  71   3      0          5        0   112
#> [314,]  68   7      0        150        0   210
#> [315,]  71  20      1          0        1   160
#> [316,]  67   2      0        180        0   128
#> [317,]  66   9      1          3        1   151
#> [318,]  66   1      1          1        1   165
#> [319,]  70   4      1          0        1   180
#> [320,]  69   8      0        180        1   153
#> [321,]  70  14      0        171        0   166
#> [322,]  67  10      1          9        0   200
#> [323,]  69   3      1          2        0   151
#> [324,]  67  14      1         13        0   130
#> [325,]  69   8      0        180        1   180
#> [326,]  71   7      0          7        0   230
#> [327,]  71   3      0        103        0   133
#> [328,]  69   3      0          3        1   130
#> [329,]  70  22      1         13        0   103
#> [330,]  68   6      0        180        0   145
#> [331,]  69   8      1          5        1   195
#> [332,]  69   6      1          4        1   174
#> [333,]  72   7      0          7        1   110
#> [334,]  69   8      1          7        1   108
#> [335,]  67   3      0        180        0   110
#> [336,]  66   2      1          1        0   123
#> [337,]  69  19      0        180        0   130
#> [338,]  69  11      1          0        1   120
#> [339,]  66   2      0        180        0   130
#> [340,]  67   7      1          4        0   122
#> [341,]  69   4      1          3        0   132
#> [342,]  68   2      0          7        1   130
#> [343,]  67  13      1          9        0   130
#> [344,]  70   3      0        123        0   130
#> [345,]  68   3      0         19        0   135
#> [346,]  67  12      1          8        0   120
#> [347,]  67   1      0          1        1    60
#> [348,]  72  13      1         11        1   195
#> [349,]  68  10      1          8        1   160
#> [350,]  66  24      1         13        0   130
#> [351,]  70  35      1          0        1   105
#> [352,]  72  30      1          0        1   145
#> [353,]  70   7      0          7        0   102
#> [354,]  71   6      0          9        0   120
#> [355,]  72  19      1          8        0   120
#> [356,]  72  12      1         10        0   170
#> [357,]  67   8      0        180        1   170
#> [358,]  67   5      1          0        1   147
#> [359,]  67   9      0        180        0   158
#> [360,]  70   5      0        180        0   150
#> [361,]  72   2      0          2        1   100
#> [362,]  72   6      1          5        0   115
#> [363,]  71   1      0        173        1   188
#> [364,]  68  23      0        180        1   220
#> [365,]  70   3      0        180        0   121
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  71   5      0        180        0   191
#> [369,]  73   6      0        180        1   117
#> [370,]  69  16      1         10        1   140
#> [371,]  69   8      1          1        0   164
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  71   2      1          0        1   180
#> [377,]  73   7      0          7        1   140
#> [378,]  68  15      1         13        1   130
#> [379,]  70   3      0          3        1   159
#> [380,]  73   0      0        180        1   161
#> [381,]  71   3      1          1        0   150
#> [382,]  74  20      0         20        1   180
#> [383,]  71  20      1         10        0   140
#> [384,]  74   0      1          0        1    90
#> [385,]  73   3      1          0        1   136
#> [386,]  70   5      1          0        1   190
#> [387,]  71  17      1         11        0   160
#> [388,]  71   8      1          7        0   149
#> [389,]  71   3      1          2        1   190
#> [390,]  73  10      1          8        0   106
#> [391,]  69  12      1          1        1   149
#> [392,]  73   4      0         58        1   160
#> [393,]  72   5      1          3        1   160
#> [394,]  70   3      0        180        1   154
#> [395,]  73   6      0        180        0   110
#> [396,]  72  15      1          0        1   150
#> [397,]  71   7      1          2        0   143
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  72  10      1          8        1   153
#> [402,]  69   7      0        180        1   144
#> [403,]  72  15      1         13        0   156
#> [404,]  70   8      0          8        0   120
#> [405,]  75   1      0          1        0   133
#> [406,]  73  10      1          9        1   146
#> [407,]  72  10      1          9        1   160
#> [408,]  71   2      0         10        1   112
#> [409,]  73   1      0          1        1    80
#> [410,]  75  13      1          1        1   130
#> [411,]  71  11      1          8        0   110
#> [412,]  70   7      1          4        0   184
#> [413,]  72   1      1          1        0   168
#> [414,]  73  10      0        180        0   162
#> [415,]  72  11      0         11        1   140
#> [416,]  70   3      0          3        0   150
#> [417,]  73   5      1          3        1   112
#> [418,]  76  25      1         12        1   170
#> [419,]  73  12      1         12        1   140
#> [420,]  72   2      0        180        0   120
#> [421,]  75   1      0        180        1   140
#> [422,]  71   3      1          0        0   144
#> [423,]  73   5      0        180        0   126
#> [424,]  73   4      0        180        0   124
#> [425,]  74  34      1          8        1   233
#> [426,]  76   3      1          0        1   120
#> [427,]  72   5      0        180        0   154
#> [428,]  72   3      0        180        0   160
#> [429,]  76   5      0          5        1   130
#> [430,]  77  11      0         11        1   150
#> [431,]  77   4      0          4        0   185
#> [432,]  75   3      1          1        0   180
#> [433,]  72   7      1          2        0   142
#> [434,]  71  16      0        180        0   140
#> [435,]  73  10      1         10        0   124
#> [436,]  74   7      0        180        1   150
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  74   2      1          1        0   140
#> [440,]  76   8      1          0        1   141
#> [441,]  74  19      1          4        1   200
#> [442,]  73   6      0          6        1   114
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  75   4      1          0        1   122
#> [448,]  75   7      0          7        0   190
#> [449,]  73  13      1         11        0   195
#> [450,]  75  12      0         12        1   160
#> [451,]  75   4      1          2        1   188
#> [452,]  74   6      0        180        0   160
#> [453,]  76   4      0          4        1   155
#> [454,]  75   1      0          1        1   125
#> [455,]  74   2      0        180        0   111
#> [456,]  73   1      0         52        1   105
#> [457,]  73   0      0        180        0   156
#> [458,]  72   5      0        180        0   120
#> [459,]  78  12      1         11        1   160
#> [460,]  76  44      1         10        0   105
#> [461,]  76   5      0        180        0   185
#> [462,]  74  10      1          0        1   135
#> [463,]  76   5      1          0        1   167
#> [464,]  74   8      1          8        1   170
#> [465,]  73  33      1         12        1   175
#> [466,]  77   5      1          0        0   123
#> [467,]  73  10      1          9        0   146
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  74   6      0         79        1   140
#> [473,]  75   3      1          1        1   171
#> [474,]  74   9      1          8        0   200
#> [475,]  75   6      0        180        0   150
#> [476,]  79  10      1          8        0   190
#> [477,]  74   2      1          0        1   130
#> [478,]  78  18      0         18        1   144
#> [479,]  77   3      0        180        0   110
#> [480,]  73  11      1          2        1   110
#> [481,]  74   2      0        180        0   100
#> [482,]  78   7      0          7        1   133
#> [483,]  74  15      0        180        1   172
#> [484,]  74   7      0          7        0   161
#> [485,]  76  13      1          1        1   170
#> [486,]  80  10      1          6        1   147
#> [487,]  78  13      1          5        0   130
#> [488,]  75   5      0        119        1   150
#> [489,]  78  15      0        180        1   270
#> [490,]  80   8      0          8        1   120
#> [491,]  75  13      1          6        0   150
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  76  11      1          0        0   120
#> [498,]  75   3      0          3        0     0
#> [499,]  77  24      0         24        1   160
#> [500,]  79   8      0         32        1   120
#> [501,]  80   9      0         23        1   128
#> [502,]  80   6      0          6        1   150
#> [503,]  76   3      1          0        1   140
#> [504,]  78  11      1          1        1   140
#> [505,]  79   2      1          0        1   121
#> [506,]  78  11      1          8        1   118
#> [507,]  76   4      0          4        1   160
#> [508,]  76  12      1         10        1   127
#> [509,]  80   3      1          0        1   120
#> [510,]  75   2      1          1        1   204
#> [511,]  78  11      0        180        1   135
#> [512,]  76   1      0          1        1   140
#> [513,]  77  31      1          3        1   161
#> [514,]  76   1      0          1        1    90
#> [515,]  79   3      0          3        0   120
#> [516,]  77   7      0        180        1   170
#> [517,]  77   6      0          6        1   144
#> [518,]  79   4      1          0        1   120
#> [519,]  81   1      0        180        0   120
#> [520,]  80  15      1         12        1   150
#> [521,]  77   9      1          4        0   141
#> [522,]  78   4      0         59        1   112
#> [523,]  80  17      1         12        0   100
#> [524,]  76   7      0        161        0   151
#> [525,]  79  10      0         10        1   120
#> [526,]  80   6      0        173        1   160
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  78   7      0          7        1   147
#> [531,]  77  13      1          0        1   190
#> [532,]  78  15      0         15        0   165
#> [533,]  80   5      1          1        1   108
#> [534,]  78   4      0        180        0   175
#> [535,]  79   3      0          3        1   101
#> [536,]  81   4      1          1        1   104
#> [537,]  78  20      1          0        1   109
#> [538,]  80   1      0          1        0   100
#> [539,]  78   3      1          1        1   152
#> [540,]  77  10      1          8        1   130
#> [541,]  80   2      1          1        0   168
#> [542,]  80   6      1          0        1   119
#> [543,]  78   2      0        180        0   148
#> [544,]  80   5      0          5        1   130
#> [545,]  82   1      1          0        1    82
#> [546,]  79  10      0        180        1   150
#> [547,]  77   4      0        180        1    98
#> [548,]  82  21      1          2        0   155
#> [549,]  83   9      1          5        1   170
#> [550,]  79   7      1          6        0   130
#> [551,]  81  11      1          8        0   160
#> [552,]  81   5      0        177        0    41
#> [553,]  80  11      1          8        0   170
#> [554,]  78   9      1          4        1   120
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  83   8      0          8        0   115
#> [560,]  81  16      0         16        1   110
#> [561,]  80   6      1          0        1   150
#> [562,]  80  11      1          8        0   110
#> [563,]  81   8      0        180        0   146
#> [564,]  80   8      1          7        0   160
#> [565,]  79   7      0        177        0   197
#> [566,]  85   4      0        180        0    90
#> [567,]  81   2      1          1        0   198
#> [568,]  83   2      0          2        1   155
#> [569,]  80   3      1          1        1   230
#> [570,]  82  23      1          0        0   110
#> [571,]  84   4      0          4        1    85
#> [572,]  81   1      0          1        1   150
#> [573,]  84   1      0         38        1   205
#> [574,]  83   3      0        180        0   174
#> [575,]  79   9      1          8        0   150
#> [576,]  80  13      1          8        1   140
#> [577,]  80   2      1          0        1   130
#> [578,]  80   6      0         71        1   189
#> [579,]  83   1      0          1        1   100
#> [580,]  82  19      0         19        0   120
#> [581,]  80  30      1         13        0   220
#> [582,]  83   9      0        180        0   198
#> [583,]  79  14      1          0        0   110
#> [584,]  83   3      0        114        0    98
#> [585,]  81  14      1         12        1   128
#> [586,]  83   2      0        154        0   130
#> [587,]  82   0      0          2        1   100
#> [588,]  81   4      0          4        0   175
#> [589,]  84  15      1         13        1   110
#> [590,]  81  12      0         12        1   163
#> [591,]  82   5      1          0        1   146
#> [592,]  81   4      0          4        0   160
#> [593,]  86  12      0        180        1   120
#> [594,]  83  12      1          2        1   170
#> [595,]  81  19      1         14        0   120
#> [596,]  80   2      0         88        0   135
#> [597,]  83   7      0        126        0   135
#> [598,]  86   8      0          8        1   132
#> [599,]  81  16      1          9        0   180
#> [600,]  84   6      0        165        0   145
#> [601,]  86   3      0          3        1   140
#> [602,]  84   3      0        180        1   120
#> [603,]  81   2      1          0        1   118
#> [604,]  82   1      0        180        1   193
#> [605,]  83   4      0          4        0   130
#> [606,]  87   2      0          5        1   137
#> [607,]  86  12      1          0        1   132
#> [608,]  82  14      1         11        1   103
#> [609,]  86   6      1          0        1   140
#> [610,]  84   3      1          2        0   125
#> [611,]  83  10      1          0        1   190
#> [612,]  83  13      1         12        0   170
#> [613,]  84   7      1          2        0   148
#> [614,]  87   2      0        180        0   113
#> [615,]  84   9      0         92        1   110
#> [616,]  86   4      0         38        1   122
#> [617,]  82   4      0          4        0   130
#> [618,]  86  13      0        177        0   163
#> [619,]  86   6      0          6        1   117
#> [620,]  84  13      0         62        1   100
#> [621,]  86   6      1          1        0   112
#> [622,]  88   4      0          4        0   100
#> [623,]  83  20      1          3        1   150
#> [624,]  88   4      0          4        1   115
#> [625,]  85  22      0         22        1   184
#> [626,]  87   2      0        180        1   130
#> [627,]  88   3      0        115        0   110
#> [628,]  88   2      0        180        1    68
#> [629,]  83   3      0          3        1   130
#> [630,]  86  15      1          8        1   109
#> [631,]  88   4      0          4        0    86
#> [632,]  89   4      0          4        1   153
#> [633,]  89   5      0        119        1   140
#> [634,]  87   6      0        180        1   110
#> [635,]  87   1      0          1        0   170
#> [636,]  84   8      0        180        1   119
#> [637,]  87  29      0         29        1    97
#> [638,]  89  10      0         46        1   170
#> [639,]  90  14      0         14        1   100
#> [640,]  86   4      0        180        1   145
#> [641,]  87   2      0        180        0   160
#> [642,]  87   6      1          0        0   125
#> [643,]  91  10      0        145        0   135
#> [644,]  86   3      1          0        1    80
#> [645,]  88   7      0         24        0   119
#> [646,]  88   8      0         50        1   154
#> [647,]  87   6      0        126        1   168
#> [648,]  90   4      1          0        0   121
#> [649,]  87  43      0        178        1   130
#> [650,]  90   5      1          0        1   125
#> [651,]  88   3      1          2        0   159
#> [652,]  89   3      1          1        1   160
#> [653,]  88   5      0        158        0   100
#> [654,]  87   7      0         74        1   105
#> [655,]  92   7      0          7        1   110
#> [656,]  89   4      0          4        1   159
#> [657,]  91   0      0          0        0     0
#> [658,]  89  14      0        180        1    84
#> [659,]  90  18      0        180        0   188
#> [660,]  94   6      0         50        0    78
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  96   3      0         12        1    97
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0  180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   6.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+
#>  [51]   7.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 179.0+ 180.0+   4.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   88.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   4.0+  85.0  180.0+ 166.0+  99.0   16.0+   7.0+ 180.0+ 180.0+ 180.0+
#>  [91]  13.0+ 171.0+ 180.0+  28.0    6.0+   1.0  180.0+ 180.0+ 180.0+ 175.0+
#> [101] 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [111]  16.0   15.0+ 180.0+ 180.0+  12.0+ 180.0+   8.0    2.0  180.0+ 180.0+
#> [121] 140.0    1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [131]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+
#> [141] 147.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   1.0  180.0+ 180.0+ 180.0+
#> [151] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+
#> [161] 161.0+ 171.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+  45.0   19.0  180.0+
#> [171]   9.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+
#> [181]  77.0   13.0+ 180.0+ 180.0+ 170.0   94.0  180.0+   7.0    6.0  180.0+
#> [191] 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+  28.0    5.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [211]   7.0+  22.0   84.0    7.0+ 180.0+ 180.0+ 180.0+   1.0    1.0  180.0+
#> [221]   4.0+   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [231]  14.0+  36.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241]   0.5  180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+
#> [251] 180.0+ 180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0 
#> [261]  15.0  180.0+ 180.0+ 180.0+ 179.0+ 166.0+   3.0  180.0+   7.0+   8.0 
#> [271]   5.0   16.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+
#> [281]  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+   8.0+   3.0  175.0 
#> [291] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0  179.0+
#> [301] 180.0+ 180.0+  11.0+ 180.0+  18.0  180.0+ 180.0+ 180.0+ 180.0+  93.0 
#> [311] 101.0    4.0    5.0  150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [321] 171.0  174.0+ 180.0+ 180.0+ 180.0+   7.0+ 103.0    3.0+ 180.0+ 180.0+
#> [331] 180.0+  97.0    7.0    8.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   7.0 
#> [341] 180.0+   7.0   13.0+ 123.0   19.0  180.0+   1.0  132.0   10.0+ 180.0+
#> [351] 180.0+ 162.0    7.0+   9.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [361]   2.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [371] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+
#> [381]   3.0+  20.0   20.0    0.5  180.0+ 180.0+ 180.0+   8.0    3.0   87.0 
#> [391]  12.0   58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0 
#> [401]  10.0+ 180.0+ 180.0+   8.0+   1.0  180.0+ 159.0   10.0    1.0   13.0 
#> [411] 180.0+ 104.0+   1.0  180.0+  11.0    3.0+   5.0  180.0+  12.0  180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+ 180.0+   5.0   11.0+
#> [431]   4.0+ 180.0+   7.0  180.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+ 180.0+ 180.0+ 174.0+   4.0    7.0  180.0+  12.0 
#> [451]  46.0  180.0+   4.0    1.0  180.0+  52.0  180.0+ 180.0+  12.0  180.0+
#> [461] 180.0+ 180.0+ 180.0+   8.0   33.0    5.0  180.0+   1.0   12.0  180.0+
#> [471]   7.0+  79.0    3.0  168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+  11.0 
#> [481] 180.0+   7.0  180.0+   7.0  180.0+  10.0  172.0  119.0  180.0+   8.0 
#> [491] 180.0+  80.0  180.0+ 180.0+   4.0+   2.0   11.0    3.0   24.0   32.0 
#> [501]  23.0    6.0    3.0+ 180.0+ 180.0+  11.0    4.0  180.0+   3.0+   2.0+
#> [511] 180.0+   1.0  171.0    1.0    3.0  180.0+   6.0  138.0  180.0+ 180.0+
#> [521]  71.0   59.0   17.0  161.0   10.0+ 173.0  180.0+  37.0  180.0+   7.0+
#> [531]  22.0   15.0+   5.0+ 180.0+   3.0   71.0   20.0+   1.0    3.0+  10.0 
#> [541]  10.0    6.0  180.0+   5.0    1.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [551] 180.0+ 177.0+ 169.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+   8.0+  16.0 
#> [561] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   2.0    3.0+  62.0 
#> [571]   4.0    1.0   38.0  180.0+ 180.0+ 180.0+ 180.0+  71.0    1.0   19.0 
#> [581]  30.0  180.0+ 180.0+ 114.0  180.0+ 154.0    2.0    4.0+ 180.0+  12.0 
#> [591]   5.0+   4.0+ 180.0+  77.0  180.0+  88.0  126.0    8.0  180.0+ 165.0 
#> [601]   3.0  180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0    6.0  180.0+
#> [611] 180.0+  13.0  180.0+ 180.0+  92.0   38.0    4.0  177.0    6.0+  62.0 
#> [621]   6.0+   4.0+  20.0    4.0   22.0  180.0+ 115.0  180.0+   3.0+ 180.0+
#> [631]   4.0    4.0  119.0  180.0+   1.0+ 180.0+  29.0   46.0   14.0  180.0+
#> [641] 180.0+  25.0  145.0    3.0   24.0   50.0  126.0    4.0  178.0+  89.0 
#> [651]  75.0    3.0+ 158.0   74.0    7.0    4.0    0.5  180.0+ 180.0+  50.0 
#> [661]  76.0  180.0+  16.0   12.0   26.0    7.0+   0.5   69.0  180.0+  15.0+
#> 
#> $weights
#> NULL
#> 
#> $offset
#> NULL
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8521529 
```
