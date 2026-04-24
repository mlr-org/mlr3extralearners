# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/survfit.cv.glmnet.html).
    Parameters `stype` and `ctype` relate to how `lp` predictions are
    transformed into survival predictions and are described in
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

|                      |           |            |                         |                       |
|----------------------|-----------|------------|-------------------------|-----------------------|
| Id                   | Type      | Default    | Levels                  | Range                 |
| alignment            | character | lambda     | lambda, fraction        | \-                    |
| alpha                | numeric   | 1          |                         | \\\[0, 1\]\\          |
| big                  | numeric   | 9.9e+35    |                         | \\(-\infty, \infty)\\ |
| devmax               | numeric   | 0.999      |                         | \\\[0, 1\]\\          |
| dfmax                | integer   | \-         |                         | \\\[0, \infty)\\      |
| eps                  | numeric   | 1e-06      |                         | \\\[0, 1\]\\          |
| epsnr                | numeric   | 1e-08      |                         | \\\[0, 1\]\\          |
| exclude              | untyped   | \-         |                         | \-                    |
| exmx                 | numeric   | 250        |                         | \\(-\infty, \infty)\\ |
| fdev                 | numeric   | 1e-05      |                         | \\\[0, 1\]\\          |
| foldid               | untyped   | NULL       |                         | \-                    |
| gamma                | untyped   | \-         |                         | \-                    |
| grouped              | logical   | TRUE       | TRUE, FALSE             | \-                    |
| intercept            | logical   | TRUE       | TRUE, FALSE             | \-                    |
| keep                 | logical   | FALSE      | TRUE, FALSE             | \-                    |
| lambda               | untyped   | \-         |                         | \-                    |
| lambda.min.ratio     | numeric   | \-         |                         | \\\[0, 1\]\\          |
| lower.limits         | untyped   | -Inf       |                         | \-                    |
| maxit                | integer   | 100000     |                         | \\\[1, \infty)\\      |
| mnlam                | integer   | 5          |                         | \\\[1, \infty)\\      |
| mxit                 | integer   | 100        |                         | \\\[1, \infty)\\      |
| mxitnr               | integer   | 25         |                         | \\\[1, \infty)\\      |
| nfolds               | integer   | 10         |                         | \\\[3, \infty)\\      |
| nlambda              | integer   | 100        |                         | \\\[1, \infty)\\      |
| use_pred_offset      | logical   | TRUE       | TRUE, FALSE             | \-                    |
| parallel             | logical   | FALSE      | TRUE, FALSE             | \-                    |
| penalty.factor       | untyped   | \-         |                         | \-                    |
| pmax                 | integer   | \-         |                         | \\\[0, \infty)\\      |
| pmin                 | numeric   | 1e-09      |                         | \\\[0, 1\]\\          |
| prec                 | numeric   | 1e-10      |                         | \\(-\infty, \infty)\\ |
| predict.gamma        | numeric   | gamma.1se  |                         | \\(-\infty, \infty)\\ |
| relax                | logical   | FALSE      | TRUE, FALSE             | \-                    |
| s                    | numeric   | lambda.1se |                         | \\\[0, \infty)\\      |
| standardize          | logical   | TRUE       | TRUE, FALSE             | \-                    |
| standardize.response | logical   | FALSE      | TRUE, FALSE             | \-                    |
| thresh               | numeric   | 1e-07      |                         | \\\[0, \infty)\\      |
| trace.it             | integer   | 0          |                         | \\\[0, 1\]\\          |
| type.gaussian        | character | \-         | covariance, naive       | \-                    |
| type.logistic        | character | Newton     | Newton, modified.Newton | \-                    |
| type.measure         | character | deviance   | deviance, C             | \-                    |
| type.multinomial     | character | ungrouped  | ungrouped, grouped      | \-                    |
| upper.limits         | untyped   | Inf        |                         | \-                    |
| stype                | integer   | 2          |                         | \\\[1, 2\]\\          |
| ctype                | integer   | \-         |                         | \\\[1, 2\]\\          |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
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

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCVGlmnet`

## Methods

### Public methods

- [`LearnerSurvCVGlmnet$new()`](#method-LearnerSurvCVGlmnet-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCVGlmnet$new()

------------------------------------------------------------------------

### Method `selected_features()`

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

### Method `clone()`

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
#> • Parameters: use_pred_offset=TRUE
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
#> Call:  (if (cv) glmnet::cv.glmnet else glmnet::glmnet)(x = data, y = target,      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure      SE Nonzero
#> min 0.00327    44   2.742 0.09803       6
#> 1se 0.05849    13   2.836 0.08739       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35   2      1          1        1   112
#>   [5,]  37   9      0        180        1   151
#>   [6,]  35   0      0        180        1   119
#>   [7,]  38  12      1          8        1   120
#>   [8,]  36   5      1          0        1   115
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  40  12      1          9        0   153
#>  [12,]  42   3      1          1        1   130
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0        180        1   100
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40   6      0        180        1   138
#>  [18,]  42   2      0        180        0   100
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42  15      1         13        1   125
#>  [22,]  42  12      1         10        1   170
#>  [23,]  41  10      1          8        0   150
#>  [24,]  41  13      1          1        0   140
#>  [25,]  45   9      1          7        0   110
#>  [26,]  45   6      0        180        1   170
#>  [27,]  41   5      1          4        1   141
#>  [28,]  44   2      1          1        1   150
#>  [29,]  46   2      1          1        0   126
#>  [30,]  47   4      1          3        0   118
#>  [31,]  48  15      0        180        1   160
#>  [32,]  45   3      0        150        0   130
#>  [33,]  44   3      1          0        1   180
#>  [34,]  46   7      1          2        0   166
#>  [35,]  43  29      0        180        1   180
#>  [36,]  43  10      0        180        0   185
#>  [37,]  47   6      1          0        1   116
#>  [38,]  44   0      1          0        1    96
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  47   2      0        180        0   108
#>  [46,]  44   9      1          8        1   135
#>  [47,]  46   4      0        180        1   121
#>  [48,]  44   2      0        180        0   142
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
#>  [51,]  48   3      0        180        0   154
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   5      1          3        1   130
#>  [54,]  47   9      1          6        0   170
#>  [55,]  50   6      1          2        1   140
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   9      1          9        1   122
#>  [58,]  50   7      0        180        1   110
#>  [59,]  49   2      0          2        0   105
#>  [60,]  51   1      0          1        1   145
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  49  23      0        179        1   112
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  50   4      0          4        1   100
#>  [67,]  51   3      1          2        0   113
#>  [68,]  50   1      1          0        0   150
#>  [69,]  49   7      1          4        1    90
#>  [70,]  47   8      0        180        0   160
#>  [71,]  47   6      0        180        1   162
#>  [72,]  51   8      0        180        1   140
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   3      0        180        1   120
#>  [75,]  46   1      1          1        0   145
#>  [76,]  50   4      1          1        0   150
#>  [77,]  53   8      0         36        1   160
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49   9      1          3        0   102
#>  [81,]  53   5      0        180        1   140
#>  [82,]  54  17      1         12        1   102
#>  [83,]  53   5      0         77        0   159
#>  [84,]  53   7      1          0        0   199
#>  [85,]  54   6      1          3        0   129
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  14      1         13        0   170
#>  [88,]  53   8      1          7        0   160
#>  [89,]  48   3      1          2        0   150
#>  [90,]  51  25      1          1        0   202
#>  [91,]  48  11      1         10        0   120
#>  [92,]  51  13      0         99        1   160
#>  [93,]  54   9      1          0        1   138
#>  [94,]  55   3      1          1        0   150
#>  [95,]  54  23      1         10        0   131
#>  [96,]  52   7      1          2        0   154
#>  [97,]  54   9      1          1        0   130
#>  [98,]  55   4      1          2        0   150
#>  [99,]  52   4      0        180        1   180
#> [100,]  51  13      1         11        0   145
#> [101,]  54   4      1          0        1   121
#> [102,]  52   4      0        180        0   183
#> [103,]  50   3      0        174        1   153
#> [104,]  55  28      1         13        1   160
#> [105,]  49   6      1          0        1   130
#> [106,]  50   7      1          1        0   156
#> [107,]  50   7      1          0        1   127
#> [108,]  56   4      1          1        1   130
#> [109,]  55   1      0        180        0   127
#> [110,]  55   2      0          2        0   145
#> [111,]  54   1      0        180        0   162
#> [112,]  56   2      0        180        0   132
#> [113,]  52   8      0        180        0   119
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  15      0         15        1    90
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  55   2      0        134        1   140
#> [123,]  54   3      0        180        0   128
#> [124,]  56   3      0          8        1   139
#> [125,]  57   3      0          3        0   120
#> [126,]  54   7      1          2        0   129
#> [127,]  54   2      1          1        1   176
#> [128,]  57   5      1          3        1   138
#> [129,]  57   1      0        180        1   156
#> [130,]  57   1      0          1        1   100
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  58   8      0          8        1   130
#> [138,]  55   3      1          1        1   156
#> [139,]  53  21      1         13        1   130
#> [140,]  53  15      1         10        1   130
#> [141,]  54  17      1          8        1   227
#> [142,]  54  23      1          8        0   120
#> [143,]  57   4      1          2        1   185
#> [144,]  53   4      0        147        1   145
#> [145,]  53   7      1          0        1   120
#> [146,]  54   7      1          0        1   141
#> [147,]  59  15      1         10        0   140
#> [148,]  58   1      1          1        1   200
#> [149,]  55   5      1          0        0   140
#> [150,]  56   7      1          5        1   120
#> [151,]  55   2      0          2        0   106
#> [152,]  57   1      0        180        0   148
#> [153,]  59   3      0        180        0   120
#> [154,]  57   2      0          2        1   120
#> [155,]  57   5      0        180        1   130
#> [156,]  58  11      1          9        1   124
#> [157,]  55   5      1          0        1   160
#> [158,]  57  10      1          9        0   103
#> [159,]  59   6      1          0        1   140
#> [160,]  59   5      0        180        1   155
#> [161,]  59   4      1          0        1   152
#> [162,]  58  26      1          0        1   189
#> [163,]  61   9      0          9        1   160
#> [164,]  58   4      1          3        0   120
#> [165,]  60   0      1          0        1    80
#> [166,]  59   2      1          1        0   140
#> [167,]  61   4      1          3        0   151
#> [168,]  61   3      1          2        1   102
#> [169,]  58   1      0          1        1   100
#> [170,]  61  20      1         13        0   130
#> [171,]  57  13      1         10        0   110
#> [172,]  57   2      1          0        1   116
#> [173,]  57   4      1          3        0   138
#> [174,]  57  11      0        180        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  58  19      1         13        1   140
#> [177,]  56  13      1          6        1   158
#> [178,]  56  18      1         11        1   165
#> [179,]  59   9      1          0        1    80
#> [180,]  55   4      1          3        1   160
#> [181,]  58  11      0        172        1   135
#> [182,]  61  13      1         12        1   130
#> [183,]  57   1      0          1        0   126
#> [184,]  57  15      1         13        1   110
#> [185,]  59   5      1          2        0   182
#> [186,]  58   5      1          1        1   135
#> [187,]  59  10      0        180        0   160
#> [188,]  61   8      0         77        0   120
#> [189,]  58   8      1          5        0   152
#> [190,]  62  10      1          0        1   153
#> [191,]  62   7      1          2        1   180
#> [192,]  61  18      0        170        0   140
#> [193,]  61  28      1          7        0   133
#> [194,]  58   8      1          3        1   150
#> [195,]  57   7      0        169        0   180
#> [196,]  61   7      0          7        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  57  12      1          9        1   120
#> [200,]  62   4      1          3        0   173
#> [201,]  58   2      0         30        0   202
#> [202,]  59   1      0        180        0   155
#> [203,]  59  16      1          9        1   133
#> [204,]  63   6      0         28        1   120
#> [205,]  61  13      0         13        0   120
#> [206,]  61   5      0          5        1   110
#> [207,]  57  18      1          9        1    93
#> [208,]  61   5      0          5        1   160
#> [209,]  58  11      1          9        0   179
#> [210,]  62   1      1          0        1   172
#> [211,]  58   7      0        180        1   150
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  61   7      0        180        0   135
#> [215,]  63   4      0        180        1   190
#> [216,]  64   4      0        180        0   130
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  61   9      1          9        1   150
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  58   2      0        180        0   127
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      1          5        1   141
#> [226,]  60   7      0          7        0   140
#> [227,]  59   5      1          1        0   148
#> [228,]  60   7      1          1        1    90
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  62   6      0        180        0   170
#> [233,]  59   4      0          4        0   149
#> [234,]  60   3      0          3        0   168
#> [235,]  63  12      1         10        0   200
#> [236,]  59  10      0        180        1   130
#> [237,]  60   8      0         17        1   130
#> [238,]  64   6      1          0        1   140
#> [239,]  63  10      1          0        1   148
#> [240,]  65  36      1         11        0   140
#> [241,]  61  10      1          2        1   194
#> [242,]  64  32      1          9        1   160
#> [243,]  63  12      1          9        0   114
#> [244,]  63   7      0        180        0   120
#> [245,]  66   5      1          0        1   110
#> [246,]  65   8      1          0        0   168
#> [247,]  60   6      0        180        0   130
#> [248,]  64  21      1         10        0   190
#> [249,]  61  12      1         11        0   154
#> [250,]  64   9      0        180        0   150
#> [251,]  65   3      0        180        1   190
#> [252,]  64   7      0        180        1   120
#> [253,]  66   6      1          1        1   130
#> [254,]  65   6      0          9        0   112
#> [255,]  65   3      1          0        1    80
#> [256,]  63   5      1          4        0   170
#> [257,]  63   2      1          1        0   180
#> [258,]  62  13      1         11        0   180
#> [259,]  64   2      0          2        0   201
#> [260,]  66  18      1          5        0   142
#> [261,]  66  16      1         11        1   169
#> [262,]  62   9      0        180        0   145
#> [263,]  61  14      1          5        0   140
#> [264,]  61  15      1         10        0   130
#> [265,]  63   9      1          8        1   160
#> [266,]  64  19      1          8        1   160
#> [267,]  65   8      1          0        1   140
#> [268,]  67   6      0        180        1   170
#> [269,]  65  15      1         11        1   160
#> [270,]  68   5      1          4        1   150
#> [271,]  64  13      1         12        1   150
#> [272,]  64   6      1          0        1   125
#> [273,]  66   7      1          0        1   115
#> [274,]  64  14      1         13        1   150
#> [275,]  65   3      0          3        0   105
#> [276,]  64   0      0          0        1   148
#> [277,]  66   3      1          0        1   135
#> [278,]  66   6      1          0        1   140
#> [279,]  65   2      1          1        1   170
#> [280,]  68   1      0        180        1   166
#> [281,]  64  10      1          9        1   110
#> [282,]  63   7      1          0        0   162
#> [283,]  67   8      1          1        1   130
#> [284,]  68   5      0          5        1    90
#> [285,]  64   1      0          1        1   120
#> [286,]  65  17      1         14        1   100
#> [287,]  65  18      1          3        0   120
#> [288,]  63   1      1          0        1   155
#> [289,]  63  10      0         18        1   130
#> [290,]  67  11      0         11        0   150
#> [291,]  68  11      0        180        0   160
#> [292,]  66  12      1         10        1   150
#> [293,]  66  11      1          0        0   100
#> [294,]  69  12      0         15        1   140
#> [295,]  63   2      0        180        0   150
#> [296,]  65  11      1          6        0   130
#> [297,]  66   9      1          8        0   130
#> [298,]  66   3      0          3        1   138
#> [299,]  69   1      1          0        0   170
#> [300,]  68  10      1         10        1   150
#> [301,]  65   1      1          0        0   133
#> [302,]  63   2      1          0        0    99
#> [303,]  67   2      0        180        0   184
#> [304,]  65   6      0          6        0    80
#> [305,]  65  10      1          1        1   148
#> [306,]  69   6      0         99        1   140
#> [307,]  65   4      1          1        0   130
#> [308,]  64   4      0        179        0   160
#> [309,]  66   4      0        180        1   130
#> [310,]  70  15      1         12        1   132
#> [311,]  64   4      0        180        1   140
#> [312,]  64   0      1          0        1   118
#> [313,]  67   2      0         18        0   131
#> [314,]  66   7      1          5        1   131
#> [315,]  66   4      0        180        0   177
#> [316,]  68   4      1          0        1   160
#> [317,]  69   8      0         93        0   140
#> [318,]  64  21      0         21        1   155
#> [319,]  66   6      0        180        0   140
#> [320,]  68  18      1          0        1   160
#> [321,]  65   6      0        101        1   115
#> [322,]  68   4      0          4        1   190
#> [323,]  71   3      0          5        0   112
#> [324,]  70   7      1          0        1   190
#> [325,]  71  20      1          0        1   160
#> [326,]  67   2      0        180        0   128
#> [327,]  70   4      1          0        1   180
#> [328,]  69   8      0        180        1   153
#> [329,]  70  14      0        171        0   166
#> [330,]  66   4      0        180        0   130
#> [331,]  67  10      1          9        0   200
#> [332,]  68   7      1          0        1   150
#> [333,]  67  14      1         13        0   130
#> [334,]  65  14      1         13        1   150
#> [335,]  69   8      0        180        1   180
#> [336,]  66   2      0          2        1   228
#> [337,]  69   5      0          5        1   142
#> [338,]  67   5      0          5        0   130
#> [339,]  68   6      0        180        0   145
#> [340,]  69   8      1          5        1   195
#> [341,]  69   6      1          4        1   174
#> [342,]  72   3      1          0        1   132
#> [343,]  72   7      0          7        1   110
#> [344,]  69   8      1          7        1   108
#> [345,]  66   2      1          1        0   123
#> [346,]  68  18      0         18        1   100
#> [347,]  67  14      0        172        1   140
#> [348,]  66   2      0        180        0   130
#> [349,]  67   7      1          4        0   122
#> [350,]  69   4      1          3        0   132
#> [351,]  68   2      0          7        1   130
#> [352,]  69   8      1          2        0   121
#> [353,]  70   3      0        123        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  72   5      1          4        0   170
#> [356,]  67  22      1          1        1   140
#> [357,]  68   3      0         19        0   135
#> [358,]  67  12      1          8        0   120
#> [359,]  67   1      0          1        1    60
#> [360,]  69   5      0         76        0   120
#> [361,]  67   8      1          0        1   130
#> [362,]  72  13      1         11        1   195
#> [363,]  68  10      1          8        1   160
#> [364,]  70  35      1          0        1   105
#> [365,]  72  30      1          0        1   145
#> [366,]  70   7      0          7        0   102
#> [367,]  73  20      1          0        1   170
#> [368,]  71   6      0          9        0   120
#> [369,]  70  11      0        180        1   210
#> [370,]  67   5      1          0        1   147
#> [371,]  73  13      0        152        1   130
#> [372,]  70   5      0        180        0   150
#> [373,]  72   2      0          2        1   100
#> [374,]  67   4      1          1        0   134
#> [375,]  72   6      1          5        0   115
#> [376,]  70   3      0        180        0   121
#> [377,]  71   3      1          2        0   150
#> [378,]  72   5      0         28        0   120
#> [379,]  69   8      1          1        0   164
#> [380,]  68   7      0        180        1   130
#> [381,]  70   4      0        180        0   180
#> [382,]  73   6      1          0        1   270
#> [383,]  72   8      1          1        1   150
#> [384,]  71   2      1          0        1   180
#> [385,]  73   7      0          7        1   140
#> [386,]  70   3      0          3        1   159
#> [387,]  73   0      0        180        1   161
#> [388,]  74   8      1          0        1    85
#> [389,]  69   2      1          0        1   110
#> [390,]  71   3      1          1        0   150
#> [391,]  71  15      1         11        0   165
#> [392,]  74  20      0         20        1   180
#> [393,]  68   9      0        180        1   120
#> [394,]  71  20      1         10        0   140
#> [395,]  74   0      1          0        1    90
#> [396,]  73   3      1          0        1   136
#> [397,]  70   5      1          0        1   190
#> [398,]  71  17      1         11        0   160
#> [399,]  71   8      1          7        0   149
#> [400,]  73  10      1          8        0   106
#> [401,]  73   4      0         58        1   160
#> [402,]  72   5      1          3        1   160
#> [403,]  70   3      0        180        1   154
#> [404,]  73   6      0        180        0   110
#> [405,]  72  15      1          0        1   150
#> [406,]  72   8      1          0        1   140
#> [407,]  71  13      1          8        0   121
#> [408,]  70   4      1          0        1   140
#> [409,]  71  14      1         13        1   170
#> [410,]  74   7      1          0        1   117
#> [411,]  72  10      1          8        1   153
#> [412,]  69   7      0        180        1   144
#> [413,]  72  15      1         13        0   156
#> [414,]  71  10      1          9        1   120
#> [415,]  73  10      1          9        1   146
#> [416,]  72  10      1          9        1   160
#> [417,]  73  10      1         10        1   120
#> [418,]  73   1      0          1        1    80
#> [419,]  75   9      1          7        0   140
#> [420,]  71  11      1          8        0   110
#> [421,]  72  15      1         12        1   120
#> [422,]  73  10      1          8        0   120
#> [423,]  70   7      1          4        0   184
#> [424,]  72   1      1          1        0   168
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  72   2      0        180        0   120
#> [430,]  72   4      1          0        1   197
#> [431,]  71   3      1          0        0   144
#> [432,]  76   3      1          0        1   120
#> [433,]  72   3      0        180        0   160
#> [434,]  77   4      0          4        0   185
#> [435,]  75   3      1          1        0   180
#> [436,]  72   7      1          2        0   142
#> [437,]  71  16      0        180        0   140
#> [438,]  74   7      0        180        1   150
#> [439,]  74   3      0          3        1   128
#> [440,]  74   2      1          1        0   140
#> [441,]  73   6      0          6        1   114
#> [442,]  75  23      1         14        1   110
#> [443,]  72   4      0         85        1   120
#> [444,]  76  17      1          0        1   200
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  75   7      0          7        0   190
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  76  13      1          8        1   148
#> [452,]  74   6      0        180        0   160
#> [453,]  76   4      0          4        1   155
#> [454,]  75   1      0          1        1   125
#> [455,]  73   1      0         52        1   105
#> [456,]  73   0      0        180        0   156
#> [457,]  72   5      0        180        0   120
#> [458,]  78  12      1         11        1   160
#> [459,]  76  44      1         10        0   105
#> [460,]  74   8      1          8        1   170
#> [461,]  75   9      0        180        1   140
#> [462,]  73  33      1         12        1   175
#> [463,]  77   5      1          0        0   123
#> [464,]  77  12      1          9        1   100
#> [465,]  73  10      1          9        0   146
#> [466,]  77  12      0        180        0   130
#> [467,]  76  12      1         11        1   120
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  74   6      0         79        1   140
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  78   7      0          7        1   133
#> [478,]  76  13      1          1        1   170
#> [479,]  78  32      1          9        1   198
#> [480,]  79   6      0        180        0   170
#> [481,]  78   0      0        180        1   212
#> [482,]  78  15      0        180        1   270
#> [483,]  80   8      0          8        1   120
#> [484,]  74  10      1          8        0   135
#> [485,]  75   4      1          0        0   212
#> [486,]  78  10      0        180        1   130
#> [487,]  76  11      1          0        0   120
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  77  24      0         24        1   160
#> [491,]  78   6      1          0        1   240
#> [492,]  76   3      1          0        1   140
#> [493,]  78  11      1          1        1   140
#> [494,]  79   2      1          0        1   121
#> [495,]  78  11      1          8        1   118
#> [496,]  76   4      0          4        1   160
#> [497,]  76  10      1          8        0   180
#> [498,]  77   6      0          6        1   107
#> [499,]  80   3      1          0        1   120
#> [500,]  78  11      0        180        1   135
#> [501,]  76   1      0          1        1   140
#> [502,]  77  31      1          3        1   161
#> [503,]  76   1      0          1        1    90
#> [504,]  77   7      0        180        1   170
#> [505,]  77   6      0          6        1   144
#> [506,]  80  15      1         12        1   150
#> [507,]  77   9      1          4        0   141
#> [508,]  82   5      0          8        1   120
#> [509,]  78   4      0         59        1   112
#> [510,]  80  17      1         12        0   100
#> [511,]  76   7      0        161        0   151
#> [512,]  79  10      0         10        1   120
#> [513,]  80  15      1          0        1    90
#> [514,]  81   4      1          2        1   126
#> [515,]  80   9      0        118        1   186
#> [516,]  80   6      0        173        1   160
#> [517,]  79   1      0         37        1   140
#> [518,]  81   3      0        180        0   184
#> [519,]  81   2      0        175        0   172
#> [520,]  78   7      0          7        1   147
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  80   5      1          1        1   108
#> [524,]  78   4      0        180        0   175
#> [525,]  79   3      0          3        1   101
#> [526,]  78  26      1          5        0   194
#> [527,]  76   1      0        166        0   131
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
#> [530,]  78   3      1          1        1   152
#> [531,]  77  10      1          8        1   130
#> [532,]  82   3      1          1        1   144
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  80   5      0          5        1   130
#> [538,]  82   1      1          0        1    82
#> [539,]  79  10      0        180        1   150
#> [540,]  78  12      0        180        0   134
#> [541,]  82  21      1          2        0   155
#> [542,]  84  22      1         10        0   180
#> [543,]  80   6      0          6        1   110
#> [544,]  83   9      1          5        1   170
#> [545,]  82   5      0        180        0   110
#> [546,]  79   7      1          6        0   130
#> [547,]  81  11      1          8        0   160
#> [548,]  81   5      0        177        0    41
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  84   5      1          1        1    85
#> [553,]  81  20      1          9        0   170
#> [554,]  83   8      0          8        0   115
#> [555,]  81  16      0         16        1   110
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  81   8      0        180        0   146
#> [559,]  79   7      0        177        0   197
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  83   2      0          2        1   155
#> [564,]  82   6      0        128        1   100
#> [565,]  84   4      0        167        0   198
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  81   1      0          1        1   150
#> [569,]  84   1      0         38        1   205
#> [570,]  83   3      0        180        0   174
#> [571,]  80   2      1          0        1   130
#> [572,]  79   4      0          4        1    60
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  82  19      0         19        0   120
#> [576,]  80  30      1         13        0   220
#> [577,]  83   9      0        180        0   198
#> [578,]  81  14      1         12        1   128
#> [579,]  82   0      0          2        1   100
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  81   4      0          4        0   175
#> [583,]  81   1      0          1        1   145
#> [584,]  82  16      1          8        0   103
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  86  12      0        180        1   120
#> [588,]  83  12      1          2        1   170
#> [589,]  81  19      1         14        0   120
#> [590,]  84   6      0        165        0   145
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  83   9      0        180        1   149
#> [594,]  82   1      0        180        1   193
#> [595,]  87   2      0          5        1   137
#> [596,]  86  12      1          0        1   132
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  83  19      0         43        0   150
#> [600,]  84   3      1          2        0   125
#> [601,]  83  10      1          0        1   190
#> [602,]  86   2      0        180        1   169
#> [603,]  84   3      0          3        1   121
#> [604,]  83  13      1         12        0   170
#> [605,]  87   2      0        180        0   113
#> [606,]  84   3      0        180        1   170
#> [607,]  82   4      0          4        0   130
#> [608,]  86  13      0        177        0   163
#> [609,]  84  13      0         62        1   100
#> [610,]  86   6      1          1        0   112
#> [611,]  88   4      0          4        0   100
#> [612,]  83  20      1          3        1   150
#> [613,]  88   4      0          4        1   115
#> [614,]  86   9      1          7        1   142
#> [615,]  87   2      0        180        1   130
#> [616,]  86   6      0         46        0   173
#> [617,]  88   3      0        115        0   110
#> [618,]  88   2      0        180        1    68
#> [619,]  83   3      0          3        1   130
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  89   4      0          4        1   153
#> [623,]  89   5      0        119        1   140
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  84   0      0        180        1   136
#> [631,]  86   4      0        180        1   145
#> [632,]  91   8      0          8        0   100
#> [633,]  87   2      0        180        0   160
#> [634,]  87   6      1          0        0   125
#> [635,]  88   8      0         50        1   154
#> [636,]  87   6      0        126        1   168
#> [637,]  86  10      0        180        1   137
#> [638,]  86   9      1          7        0   130
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  87  43      0        178        1   130
#> [642,]  87   5      0         36        1   150
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  88   5      0        158        0   100
#> [647,]  87   7      0         74        1   105
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  92   7      0          7        1   110
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  90  16      0         16        1   106
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+   2.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0    1.0 
#>  [61] 179.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0  180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+  99.0  180.0+ 180.0+ 152.0+   7.0+ 180.0+ 180.0+ 180.0+  13.0+
#> [101] 180.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  15.0+ 180.0+ 180.0+
#> [121]  12.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+ 140.0  180.0+   1.0 
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+
#> [141] 171.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [151]   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+
#> [161] 180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 180.0+   3.0    1.0  180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+  17.0   19.0  180.0+ 180.0+   9.0+ 180.0+
#> [181] 172.0+ 180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0    8.0+ 180.0+
#> [191] 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+   6.0  180.0+ 180.0+
#> [201]  30.0  180.0+ 180.0+  28.0   13.0+   5.0   18.0    5.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [221]   9.0    7.0+ 180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [231]   1.0  180.0+   4.0+   3.0+ 180.0+ 180.0+  17.0  180.0+ 180.0+  36.0 
#> [241]  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+ 180.0+   2.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 103.0   15.0  180.0+ 180.0+   5.0+
#> [271]  13.0  180.0+ 179.0+  14.0+   3.0    0.5+   3.0+ 180.0+ 175.0+ 180.0+
#> [281] 180.0+   7.0+   8.0    5.0    1.0  180.0+ 123.0+   1.0+  18.0   11.0+
#> [291] 180.0+  80.0  180.0+  15.0  180.0+ 180.0+ 180.0+   3.0  175.0   10.0 
#> [301] 180.0+ 180.0+ 180.0+   6.0  180.0+  99.0  180.0+ 179.0+ 180.0+ 180.0+
#> [311] 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+  18.0+
#> [321] 101.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+
#> [331] 174.0+ 180.0+ 180.0+  14.0+ 180.0+   2.0    5.0+   5.0+ 180.0+ 180.0+
#> [341]  97.0  180.0+   7.0    8.0+   2.0+  18.0  172.0+ 180.0+   7.0  180.0+
#> [351]   7.0    8.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+   1.0   76.0 
#> [361] 180.0+ 132.0   10.0+ 180.0+ 162.0    7.0+ 124.0    9.0  180.0+ 180.0+
#> [371] 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [381] 180.0+   6.0  180.0+ 180.0+   7.0+   3.0+ 180.0+ 180.0+   2.0    3.0+
#> [391] 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0   87.0 
#> [401]  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0  180.0+  14.0+ 180.0+
#> [411]  10.0+ 180.0+ 180.0+ 179.0+ 180.0+ 159.0   15.0    1.0  180.0+ 180.0+
#> [421] 180.0+  10.0  104.0+   1.0  180.0+  11.0    5.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+   4.0+ 180.0+   7.0  180.0+ 180.0+   3.0  180.0+
#> [441]   6.0  180.0+  85.0   17.0+ 180.0+ 174.0+   7.0  180.0+  12.0  180.0+
#> [451] 180.0+ 180.0+   4.0    1.0   52.0  180.0+ 180.0+  12.0  180.0+   8.0 
#> [461] 180.0+  33.0    5.0  180.0+ 180.0+ 180.0+  12.0  180.0+   7.0+  79.0 
#> [471] 168.0+ 180.0+ 180.0+ 180.0+  47.0  180.0+   7.0  180.0+  32.0  180.0+
#> [481] 180.0+ 180.0+   8.0  180.0+   4.0+ 180.0+  11.0  152.0+   3.0   24.0 
#> [491] 180.0+   3.0+ 180.0+ 180.0+  11.0    4.0   10.0+   6.0    3.0+ 180.0+
#> [501]   1.0  171.0    1.0  180.0+   6.0  180.0+  71.0    8.0   59.0   17.0 
#> [511] 161.0   10.0+ 180.0+  93.0  118.0  173.0   37.0  180.0+ 175.0+   7.0+
#> [521]  22.0   15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  20.0+   1.0    3.0+
#> [531]  10.0  180.0+  85.0   10.0    6.0+   6.0    5.0    1.0  180.0+ 180.0+
#> [541] 180.0+ 180.0+   6.0    9.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#> [551] 180.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5 
#> [561] 180.0+ 180.0+   2.0  128.0  167.0   62.0  180.0+   1.0   38.0  180.0+
#> [571] 180.0+   4.0   71.0    1.0   19.0   30.0  180.0+ 180.0+   2.0  180.0+
#> [581] 180.0+   4.0+   1.0   16.0+   5.0+   4.0+ 180.0+  77.0  180.0+ 165.0 
#> [591] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+   6.0   70.0   43.0  180.0+
#> [601] 180.0+ 180.0+   3.0   13.0  180.0+ 180.0+   4.0  177.0   62.0    6.0+
#> [611]   4.0+  20.0    4.0   11.0  180.0+  46.0  115.0  180.0+   3.0+ 180.0+
#> [621]   4.0    4.0  119.0  180.0+   1.0+ 180.0+ 110.0   29.0  180.0+ 180.0+
#> [631] 180.0+   8.0  180.0+  25.0   50.0  126.0  180.0+ 180.0+   4.0    1.0 
#> [641] 178.0+  36.0    3.0+   1.0   33.0  158.0   74.0  168.0  169.0   52.0 
#> [651]   7.0    0.5  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   8.0+  76.0 
#> [661]  16.0   12.0    8.0   26.0   53.0    7.0+   0.5    2.0    3.0   15.0+
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
#>   0.8358762 
```
