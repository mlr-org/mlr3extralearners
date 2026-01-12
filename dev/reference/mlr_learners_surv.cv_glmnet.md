# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://glmnet.stanford.edu/reference/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://glmnet.stanford.edu/reference/survfit.cv.glmnet.html).
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
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html).
During prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html).
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
[`glmnet::predict.glmnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html)
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
#> • Other settings: use_weights = 'use'

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
#>      Lambda Index Measure     SE Nonzero
#> min 0.00345    43   2.648 0.1306       6
#> 1se 0.06172    12   2.766 0.1206       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40  12      1          9        0   153
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  42   2      0        180        1   100
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  40   3      1          1        0   170
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   9      1          7        0   110
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  47   4      1          3        0   118
#>  [37,]  46  13      1         10        0   100
#>  [38,]  44   0      1          0        1    96
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  46   2      1          1        1   122
#>  [44,]  46   6      1          0        1   100
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  46  15      0        180        1   120
#>  [50,]  47   3      1          1        1   120
#>  [51,]  48   3      0        180        0   154
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   9      1          6        0   170
#>  [54,]  46   3      1          0        1   119
#>  [55,]  49   4      0        180        0   117
#>  [56,]  50   1      1          0        1   129
#>  [57,]  48   2      1          0        0   184
#>  [58,]  47   7      0        180        0   145
#>  [59,]  50   4      1          1        0   125
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  50   7      0        180        1   110
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  50   4      0          4        1   100
#>  [67,]  51   3      1          2        0   113
#>  [68,]  50   9      0        180        0   130
#>  [69,]  49   7      1          4        1    90
#>  [70,]  47   8      0        180        0   160
#>  [71,]  51   8      0        180        1   140
#>  [72,]  46   3      0        180        1   120
#>  [73,]  50   4      1          1        0   150
#>  [74,]  48   7      1          0        1   110
#>  [75,]  52   4      1          4        0   152
#>  [76,]  49   9      1          3        0   102
#>  [77,]  54  17      1         12        1   102
#>  [78,]  53   5      0         77        0   159
#>  [79,]  53   7      1          0        0   199
#>  [80,]  54   6      1          3        0   129
#>  [81,]  50   2      0          5        1   106
#>  [82,]  50  10      1          6        0   122
#>  [83,]  50  14      1         13        0   170
#>  [84,]  53   8      1          7        0   160
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  49   5      1          2        1   150
#>  [88,]  53   4      0          4        0   140
#>  [89,]  52  14      1          7        1   200
#>  [90,]  48   6      0        180        0   160
#>  [91,]  48  11      1         10        0   120
#>  [92,]  51  13      0         99        1   160
#>  [93,]  55   3      1          1        0   150
#>  [94,]  52   7      1          2        0   154
#>  [95,]  55   6      1          2        1   114
#>  [96,]  54   9      1          1        0   130
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  50   5      1          4        1   150
#> [101,]  50   3      0        174        1   153
#> [102,]  55  28      1         13        1   160
#> [103,]  50   7      1          1        0   156
#> [104,]  53   8      1          0        1   130
#> [105,]  50   7      1          0        1   127
#> [106,]  52   5      0        175        1   117
#> [107,]  55   1      0        180        0   127
#> [108,]  55   2      0          2        0   145
#> [109,]  54   1      0        180        0   162
#> [110,]  56   3      0        180        1   193
#> [111,]  56   2      0        180        0   132
#> [112,]  55   5      1          4        1   120
#> [113,]  53  18      1          9        1   150
#> [114,]  54   3      0        180        1   180
#> [115,]  52  16      0         16        0   152
#> [116,]  53  10      1          9        0   172
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   6      1          5        1   138
#> [120,]  54  12      1          0        1   190
#> [121,]  54   3      0        180        0   128
#> [122,]  56   3      0          8        1   139
#> [123,]  54   2      1          1        0   135
#> [124,]  52   9      1          3        0   170
#> [125,]  54   2      1          1        1   176
#> [126,]  57   5      1          3        1   138
#> [127,]  57   1      0          1        1   100
#> [128,]  56   4      1          0        1   140
#> [129,]  52   2      0        180        0   140
#> [130,]  55  11      1          7        0   104
#> [131,]  52  15      1         14        0   130
#> [132,]  56  14      1         11        0   130
#> [133,]  53   3      1          0        1   200
#> [134,]  57  10      0        180        1   170
#> [135,]  58   8      0          8        1   130
#> [136,]  54   5      0        180        1   108
#> [137,]  57   0      0          0        1   150
#> [138,]  53  21      1         13        1   130
#> [139,]  59   3      1          1        0   172
#> [140,]  57   4      0        180        1   119
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  55  13      0        166        1   140
#> [145,]  56   5      0          5        1   150
#> [146,]  54  23      1          8        0   120
#> [147,]  57   4      1          2        1   185
#> [148,]  53   4      0        147        1   145
#> [149,]  53   7      1          0        1   120
#> [150,]  57  11      1         10        1   129
#> [151,]  55   5      0          5        1   131
#> [152,]  58   1      1          1        1   200
#> [153,]  55   5      1          0        0   140
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  57   1      0        180        0   148
#> [157,]  60  11      1          9        0   106
#> [158,]  59   3      0        180        0   120
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  58  11      1          9        1   124
#> [162,]  55   5      1          0        1   160
#> [163,]  59   6      1          0        1   140
#> [164,]  59   5      0        180        1   155
#> [165,]  59   4      1          0        1   152
#> [166,]  61   9      0          9        1   160
#> [167,]  58   4      1          3        0   120
#> [168,]  61   9      1          8        0   150
#> [169,]  61   3      1          2        1   102
#> [170,]  58   1      0          1        1   100
#> [171,]  61  20      1         13        0   130
#> [172,]  57  13      1         10        0   110
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  57   4      1          3        0   138
#> [176,]  61   3      0         17        0   143
#> [177,]  57   3      1          2        0   120
#> [178,]  56  13      1          6        1   158
#> [179,]  56  18      1         11        1   165
#> [180,]  59   9      1          0        1    80
#> [181,]  55   4      1          3        1   160
#> [182,]  58  11      0        172        1   135
#> [183,]  60  12      1          0        1   114
#> [184,]  55   9      1          7        1   135
#> [185,]  61   4      1          0        1   115
#> [186,]  56   8      1          8        0   120
#> [187,]  59  11      1          8        1   190
#> [188,]  57   1      0          1        0   126
#> [189,]  57  15      1         13        1   110
#> [190,]  59   5      1          2        0   182
#> [191,]  59  10      0        180        0   160
#> [192,]  61   8      0         77        0   120
#> [193,]  62   7      1          2        1   180
#> [194,]  57   3      1          0        0   100
#> [195,]  61  18      0        170        0   140
#> [196,]  61  28      1          7        0   133
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  61   6      0          6        0   134
#> [201,]  59  13      1          2        0   198
#> [202,]  57  12      1          9        1   120
#> [203,]  60  17      1          8        1   140
#> [204,]  58   3      1          0        1   146
#> [205,]  62   4      1          3        0   173
#> [206,]  58   2      0         30        0   202
#> [207,]  59  16      1          9        1   133
#> [208,]  63   6      0         28        1   120
#> [209,]  61   5      0          5        1   110
#> [210,]  57  18      1          9        1    93
#> [211,]  58  11      1          9        0   179
#> [212,]  57   2      1          1        0   159
#> [213,]  58   7      0        180        1   150
#> [214,]  63   3      1          1        0   180
#> [215,]  61   7      0        180        0   135
#> [216,]  64   4      0        180        0   130
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  61   9      1          9        1   150
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  58   2      0        180        0   127
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      1          5        1   141
#> [226,]  60   7      0          7        0   140
#> [227,]  59   5      1          1        0   148
#> [228,]  60   7      1          1        1    90
#> [229,]  63   1      0          1        0   162
#> [230,]  63   1      0          1        0   130
#> [231,]  62   6      0        180        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  63  12      1         10        0   200
#> [234,]  59  10      0        180        1   130
#> [235,]  64  12      1         11        0   160
#> [236,]  66   1      1          0        1   120
#> [237,]  64   6      1          0        1   140
#> [238,]  63  10      1          0        1   148
#> [239,]  63  14      1          9        0   123
#> [240,]  65  36      1         11        0   140
#> [241,]  63   4      1          3        0   162
#> [242,]  61  10      1          2        1   194
#> [243,]  63  12      1          9        0   114
#> [244,]  63   7      0        180        0   120
#> [245,]  66   5      1          0        1   110
#> [246,]  65   8      1          0        0   168
#> [247,]  65  10      1          8        1   120
#> [248,]  64   0      0          0        1    90
#> [249,]  60   6      0        180        0   130
#> [250,]  61  12      1         11        0   154
#> [251,]  64   9      0        180        0   150
#> [252,]  61   4      0        180        1   113
#> [253,]  65   3      0        180        1   190
#> [254,]  64   7      0        180        1   120
#> [255,]  63  12      0         12        1   150
#> [256,]  62   3      1          1        1   199
#> [257,]  65   6      0          9        0   112
#> [258,]  65   3      1          0        1    80
#> [259,]  63   2      1          1        0   180
#> [260,]  62  13      1         11        0   180
#> [261,]  67  11      0         11        1   100
#> [262,]  66  18      1          5        0   142
#> [263,]  66  16      1         11        1   169
#> [264,]  62   9      0        180        0   145
#> [265,]  61  14      1          5        0   140
#> [266,]  63   9      1          8        1   160
#> [267,]  63   3      1          2        0   120
#> [268,]  63   2      1          0        0   140
#> [269,]  64  19      1          8        1   160
#> [270,]  65   8      1          0        1   140
#> [271,]  67   6      0        180        1   170
#> [272,]  68   5      1          4        1   150
#> [273,]  64  13      1         12        1   150
#> [274,]  64  14      1         13        1   150
#> [275,]  65   3      0          3        0   105
#> [276,]  64   0      0          0        1   148
#> [277,]  66   3      1          0        1   135
#> [278,]  65   2      1          1        1   170
#> [279,]  68   1      0        180        1   166
#> [280,]  64  10      1          9        1   110
#> [281,]  63   7      1          0        0   162
#> [282,]  67   8      1          1        1   130
#> [283,]  68   5      0          5        1    90
#> [284,]  66  14      0        180        0   130
#> [285,]  68  18      0        180        1   260
#> [286,]  63   8      1          1        1   162
#> [287,]  67  11      0         11        0   150
#> [288,]  68  11      0        180        0   160
#> [289,]  65  15      1         12        1   150
#> [290,]  66  11      1          0        0   100
#> [291,]  65   4      1          2        1   145
#> [292,]  69  12      0         15        1   140
#> [293,]  66  15      1         13        1   160
#> [294,]  63   2      0        180        0   150
#> [295,]  65  11      1          6        0   130
#> [296,]  69   6      0        180        1   100
#> [297,]  66   9      1          8        0   130
#> [298,]  63   8      0        180        1   120
#> [299,]  68  14      1         13        1   140
#> [300,]  67   1      0        180        1   160
#> [301,]  68  10      1         10        1   150
#> [302,]  65   1      1          0        0   133
#> [303,]  63   2      1          0        0    99
#> [304,]  67   2      0        180        0   184
#> [305,]  65  10      1          1        1   148
#> [306,]  69   6      0         99        1   140
#> [307,]  65   4      1          1        0   130
#> [308,]  64   4      0        179        0   160
#> [309,]  70  15      1         12        1   132
#> [310,]  64  11      0         11        0   125
#> [311,]  64   0      1          0        1   118
#> [312,]  66   7      1          5        1   131
#> [313,]  69   4      1          3        1   150
#> [314,]  65  13      1         12        1   130
#> [315,]  69  17      1         10        0   140
#> [316,]  64  21      0         21        1   155
#> [317,]  68  18      1          0        1   160
#> [318,]  68   4      0          4        1   190
#> [319,]  68   7      0        150        0   210
#> [320,]  71  20      1          0        1   160
#> [321,]  67   2      0        180        0   128
#> [322,]  66   9      1          3        1   151
#> [323,]  66   1      1          1        1   165
#> [324,]  70   4      1          0        1   180
#> [325,]  69   8      0        180        1   153
#> [326,]  70  14      0        171        0   166
#> [327,]  66   4      0        180        0   130
#> [328,]  68  18      1         14        1   170
#> [329,]  65   2      0        180        0   130
#> [330,]  69   3      1          2        0   151
#> [331,]  67  14      1         13        0   130
#> [332,]  65  14      1         13        1   150
#> [333,]  69   8      0        180        1   180
#> [334,]  71   7      0          7        0   230
#> [335,]  66   2      0          2        1   228
#> [336,]  71   6      0         45        1   158
#> [337,]  69   5      0          5        1   142
#> [338,]  71   3      0        103        0   133
#> [339,]  70  22      1         13        0   103
#> [340,]  67   1      0         36        1   104
#> [341,]  67   5      0          5        0   130
#> [342,]  68   6      0        180        0   145
#> [343,]  69   6      1          4        1   174
#> [344,]  72   3      1          0        1   132
#> [345,]  72   7      0          7        1   110
#> [346,]  69   8      1          7        1   108
#> [347,]  66   2      1          1        0   123
#> [348,]  69  19      0        180        0   130
#> [349,]  68  18      0         18        1   100
#> [350,]  67  14      0        172        1   140
#> [351,]  69   4      1          3        0   132
#> [352,]  68   2      0          7        1   130
#> [353,]  69   8      1          2        0   121
#> [354,]  67  13      1          9        0   130
#> [355,]  72   5      1          4        0   170
#> [356,]  67  12      1          8        0   120
#> [357,]  69   1      0          1        1   110
#> [358,]  67   1      0          1        1    60
#> [359,]  67   8      1          0        1   130
#> [360,]  72  13      1         11        1   195
#> [361,]  68  10      1          8        1   160
#> [362,]  66  24      1         13        0   130
#> [363,]  70  35      1          0        1   105
#> [364,]  70   7      0          7        0   102
#> [365,]  68   7      1          2        0   135
#> [366,]  73  20      1          0        1   170
#> [367,]  69  10      1          6        1   120
#> [368,]  70  11      0        180        1   210
#> [369,]  72  19      1          8        0   120
#> [370,]  67   8      0        180        1   170
#> [371,]  67   9      0        180        0   158
#> [372,]  70   5      0        180        0   150
#> [373,]  67   4      1          1        0   134
#> [374,]  68  23      0        180        1   220
#> [375,]  70   3      0        180        0   121
#> [376,]  69   3      0        180        0   220
#> [377,]  71   3      1          2        0   150
#> [378,]  68   4      1          3        0   210
#> [379,]  71   5      0        180        0   191
#> [380,]  69   8      1          1        0   164
#> [381,]  68   7      0        180        1   130
#> [382,]  70   4      0        180        0   180
#> [383,]  69   1      1          0        0   155
#> [384,]  71   2      1          0        1   180
#> [385,]  68  15      1         13        1   130
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  74   8      1          0        1    85
#> [391,]  73   4      0        180        1   154
#> [392,]  71   3      1          1        0   150
#> [393,]  74  20      0         20        1   180
#> [394,]  68   9      0        180        1   120
#> [395,]  71  20      1         10        0   140
#> [396,]  74   0      1          0        1    90
#> [397,]  70   5      1          0        1   190
#> [398,]  71  17      1         11        0   160
#> [399,]  71   3      1          2        1   190
#> [400,]  73  10      1          8        0   106
#> [401,]  69  12      1          1        1   149
#> [402,]  74   4      0          4        0   120
#> [403,]  72   5      1          3        1   160
#> [404,]  72  15      1          0        1   150
#> [405,]  72   8      1          0        1   140
#> [406,]  74   3      0          3        1   150
#> [407,]  73  17      1         11        0   140
#> [408,]  71  13      1          8        0   121
#> [409,]  69   2      1          1        1    80
#> [410,]  70   4      1          0        1   140
#> [411,]  74   7      1          0        1   117
#> [412,]  72  10      1          8        1   153
#> [413,]  70   8      0          8        0   120
#> [414,]  75   1      0          1        0   133
#> [415,]  75   2      1          1        0   145
#> [416,]  72  10      1          9        1   160
#> [417,]  73  10      1         10        1   120
#> [418,]  74  15      1          9        1   179
#> [419,]  71   2      0         10        1   112
#> [420,]  73   1      0          1        1    80
#> [421,]  71  11      1          8        0   110
#> [422,]  71   4      0          4        0   134
#> [423,]  72  15      1         12        1   120
#> [424,]  70   7      1          4        0   184
#> [425,]  72   7      0         57        1   145
#> [426,]  73  10      0        180        0   162
#> [427,]  70   3      0          3        0   150
#> [428,]  73   5      1          3        1   112
#> [429,]  72   4      1          0        1   197
#> [430,]  71   3      1          0        0   144
#> [431,]  73   4      0        180        0   124
#> [432,]  76   3      1          0        1   120
#> [433,]  71  32      1         12        1   107
#> [434,]  77  11      0         11        1   150
#> [435,]  77   4      0          4        0   185
#> [436,]  72   7      1          2        0   142
#> [437,]  71  16      0        180        0   140
#> [438,]  73  10      1         10        0   124
#> [439,]  74   7      0        180        1   150
#> [440,]  76   1      0        180        0   114
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  74  19      1          4        1   200
#> [444,]  73   6      0          6        1   114
#> [445,]  72   4      0         85        1   120
#> [446,]  72   4      1          3        0   160
#> [447,]  76  17      1          0        1   200
#> [448,]  76  13      1         10        0   110
#> [449,]  75   4      1          0        1   122
#> [450,]  75   0      0          0        1   130
#> [451,]  73  13      1         11        0   195
#> [452,]  75  12      0         12        1   160
#> [453,]  74   8      1          0        1   105
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  75   1      0          1        1   125
#> [458,]  74   2      0        180        0   111
#> [459,]  73   1      0         52        1   105
#> [460,]  73   0      0        180        0   156
#> [461,]  78  12      1         11        1   160
#> [462,]  76  44      1         10        0   105
#> [463,]  76   5      0        180        0   185
#> [464,]  74  10      1          0        1   135
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  73  33      1         12        1   175
#> [468,]  77   5      1          0        0   123
#> [469,]  73  10      1          9        0   146
#> [470,]  77  12      0        180        0   130
#> [471,]  77   1      1          0        1    90
#> [472,]  76  12      1         11        1   120
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  79  10      1          8        0   190
#> [478,]  77   3      0        180        0   110
#> [479,]  76  29      0         47        0    90
#> [480,]  73   8      1          1        1   162
#> [481,]  74   2      0        180        0   100
#> [482,]  78   7      0          7        1   133
#> [483,]  74  15      0        180        1   172
#> [484,]  78   8      1          6        1   110
#> [485,]  74   7      0          7        0   161
#> [486,]  76  13      1          1        1   170
#> [487,]  79   6      0        180        0   170
#> [488,]  78   0      0        180        1   212
#> [489,]  78  13      1          5        0   130
#> [490,]  75  12      1          1        1   120
#> [491,]  80   8      0          8        1   120
#> [492,]  75  13      1          6        0   150
#> [493,]  74  10      1          8        0   135
#> [494,]  79   4      0         80        0   145
#> [495,]  78  12      1          9        0   150
#> [496,]  75   4      1          0        0   212
#> [497,]  77   2      1          0        1   143
#> [498,]  78  10      0        180        1   130
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  77  24      0         24        1   160
#> [502,]  80   6      0          6        1   150
#> [503,]  76   3      1          0        1   140
#> [504,]  79  11      0        180        0   160
#> [505,]  79   2      1          0        1   121
#> [506,]  78  14      1          0        1   140
#> [507,]  81   1      0          1        0   130
#> [508,]  78  11      1          8        1   118
#> [509,]  76   4      0          4        1   160
#> [510,]  79   4      0          4        1   125
#> [511,]  76  10      1          8        0   180
#> [512,]  77   6      0          6        1   107
#> [513,]  80   3      1          0        1   120
#> [514,]  78  11      0        180        1   135
#> [515,]  77  31      1          3        1   161
#> [516,]  76   1      0          1        1    90
#> [517,]  78   7      1          0        1   110
#> [518,]  79   3      0          3        0   120
#> [519,]  77   7      0        180        1   170
#> [520,]  80  15      1         12        1   150
#> [521,]  77   9      1          4        0   141
#> [522,]  82   5      0          8        1   120
#> [523,]  80  40      1          0        1   138
#> [524,]  80  17      1         12        0   100
#> [525,]  79  10      0         10        1   120
#> [526,]  80  15      1          0        1    90
#> [527,]  81   4      1          2        1   126
#> [528,]  79  28      0        164        0   100
#> [529,]  80   9      0        118        1   186
#> [530,]  81   3      0        180        0   184
#> [531,]  81   2      0        175        0   172
#> [532,]  78  15      0         15        0   165
#> [533,]  80   5      1          1        1   108
#> [534,]  79   3      0          3        1   101
#> [535,]  78  26      1          5        0   194
#> [536,]  81   4      1          1        1   104
#> [537,]  78  20      1          0        1   109
#> [538,]  80   1      0          1        0   100
#> [539,]  78   3      1          1        1   152
#> [540,]  77  10      1          8        1   130
#> [541,]  82   3      1          1        1   144
#> [542,]  80   2      1          1        0   168
#> [543,]  79   6      0          6        0   152
#> [544,]  80   6      1          0        1   119
#> [545,]  80   5      0          5        1   130
#> [546,]  79  10      0        180        1   150
#> [547,]  77   4      0        180        1    98
#> [548,]  81   1      0        108        0   129
#> [549,]  78  12      0        180        0   134
#> [550,]  79   1      0        125        0   193
#> [551,]  82  21      1          2        0   155
#> [552,]  79   4      0          4        1   121
#> [553,]  80   6      0          6        1   110
#> [554,]  83   9      1          5        1   170
#> [555,]  83   5      0        180        0   148
#> [556,]  79   7      1          6        0   130
#> [557,]  83   4      0        103        0    97
#> [558,]  81  11      1          8        0   160
#> [559,]  78  23      1         10        1   145
#> [560,]  79   4      0          4        1   183
#> [561,]  78   9      1          4        1   120
#> [562,]  82   8      1          1        0   128
#> [563,]  79   1      0        180        1   170
#> [564,]  80   7      1          0        1   146
#> [565,]  84   5      1          1        1    85
#> [566,]  81  20      1          9        0   170
#> [567,]  80   8      1          7        0   160
#> [568,]  79   7      0        177        0   197
#> [569,]  85   4      0        180        0    90
#> [570,]  81   2      1          1        0   198
#> [571,]  82   6      0        128        1   100
#> [572,]  80   3      1          1        1   230
#> [573,]  84   5      0        180        1   203
#> [574,]  84   4      0          4        1    85
#> [575,]  81   1      0          1        1   150
#> [576,]  83   3      0        180        0   174
#> [577,]  81   4      0         90        1   138
#> [578,]  79   9      1          8        0   150
#> [579,]  85   3      1          2        1   160
#> [580,]  80  13      1          8        1   140
#> [581,]  84   4      0         89        1   129
#> [582,]  79   4      0          4        1    60
#> [583,]  80   6      0         71        1   189
#> [584,]  83   1      0          1        1   100
#> [585,]  80  30      1         13        0   220
#> [586,]  83   3      0        114        0    98
#> [587,]  83   2      0        154        0   130
#> [588,]  82   0      0          2        1   100
#> [589,]  85   9      1          6        1   160
#> [590,]  83   1      0        180        0   160
#> [591,]  84  15      1         13        1   110
#> [592,]  81   1      0          1        1   145
#> [593,]  82  16      1          8        0   103
#> [594,]  81   4      0          4        0   160
#> [595,]  81  19      1         14        0   120
#> [596,]  82  15      1          0        0   183
#> [597,]  86   8      0          8        1   132
#> [598,]  81  16      1          9        0   180
#> [599,]  86   3      0          3        1   140
#> [600,]  85   3      0          3        1   118
#> [601,]  81   4      0        180        0   160
#> [602,]  83   9      0        180        1   149
#> [603,]  82   1      0        180        1   193
#> [604,]  86  12      1          0        1   132
#> [605,]  82  14      1         11        1   103
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  83  10      1          0        1   190
#> [609,]  86   2      0        180        1   169
#> [610,]  88  14      1          3        1   130
#> [611,]  84   3      0          3        1   121
#> [612,]  84   7      1          2        0   148
#> [613,]  87   2      0        180        0   113
#> [614,]  84   9      0         92        1   110
#> [615,]  84   3      0        180        1   170
#> [616,]  86  13      0        177        0   163
#> [617,]  86   6      1          1        0   112
#> [618,]  88   4      0          4        0   100
#> [619,]  85  22      0         22        1   184
#> [620,]  83   9      0         65        1   150
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  88   2      0        180        1    68
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  84   8      0        180        1   119
#> [631,]  85   8      0          8        1   136
#> [632,]  84   2      0        110        1   174
#> [633,]  87  29      0         29        1    97
#> [634,]  84   0      0        180        1   136
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  90  11      1         10        1   186
#> [643,]  87   6      0        126        1   168
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  88   3      1          2        0   159
#> [650,]  89   3      1          1        1   160
#> [651,]  92   1      0          1        1   167
#> [652,]  87   7      0         74        1   105
#> [653,]  89   2      0        168        0   118
#> [654,]  91   5      0        169        1   176
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  90  16      0         16        1   106
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0    4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+
#>  [81]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+
#>  [91] 180.0+  99.0  180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+
#> [101] 174.0+  28.0  180.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+
#> [121] 180.0+   8.0  180.0+ 180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+
#> [151]   5.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+ 180.0+   3.0    1.0 
#> [171] 180.0+ 180.0+ 180.0+  10.0+ 180.0+  17.0    3.0+ 180.0+ 180.0+   9.0+
#> [181] 180.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+  15.0  180.0+
#> [191] 180.0+  77.0  180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    6.0 
#> [201] 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+  28.0    5.0   18.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [221]   7.0+  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0    1.0 
#> [231] 180.0+   4.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+  14.0+  36.0 
#> [241] 180.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+
#> [261]  11.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0 
#> [271] 180.0+   5.0+  13.0   14.0+   3.0    0.5+   3.0+ 175.0+ 180.0+ 180.0+
#> [281]   7.0+   8.0    5.0  180.0+ 180.0+ 180.0+  11.0+ 180.0+  15.0+ 180.0+
#> [291]   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [301]  10.0  180.0+ 180.0+ 180.0+ 180.0+  99.0  180.0+ 179.0+ 180.0+  11.0+
#> [311]   0.5    7.0+ 152.0+ 180.0+ 180.0+  21.0+  18.0+   4.0  150.0  180.0+
#> [321] 180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+ 180.0+ 180.0+ 180.0+
#> [331] 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0  180.0+  36.0 
#> [341]   5.0+ 180.0+  97.0  180.0+   7.0    8.0+   2.0+ 180.0+  18.0  172.0+
#> [351] 180.0+   7.0    8.0+  13.0+ 180.0+ 180.0+   1.0    1.0  180.0+ 132.0 
#> [361]  10.0+ 180.0+ 180.0+   7.0+   7.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+  76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [391] 180.0+   3.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+   3.0   87.0 
#> [401]  12.0    4.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+
#> [411] 180.0+  10.0+   8.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0    1.0 
#> [421] 180.0+   4.0+ 180.0+ 104.0+  57.0  180.0+   3.0+   5.0  180.0+ 180.0+
#> [431] 180.0+ 180.0+ 177.0+  11.0+   4.0+   7.0  180.0+  10.0  180.0+ 180.0+
#> [441] 180.0+ 180.0+ 180.0+   6.0   85.0  180.0+  17.0+ 174.0+   4.0    0.5 
#> [451] 180.0+  12.0  180.0+ 180.0+  46.0  180.0+   1.0  180.0+  52.0  180.0+
#> [461]  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+
#> [471]   1.0   12.0  180.0+   7.0+   3.0  168.0+ 180.0+ 180.0+  47.0  180.0+
#> [481] 180.0+   7.0  180.0+   8.0+   7.0  180.0+ 180.0+ 180.0+ 172.0   12.0 
#> [491]   8.0  180.0+ 180.0+  80.0  180.0+   4.0+   2.0  180.0+ 152.0+   3.0 
#> [501]  24.0    6.0    3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0 
#> [511]  10.0+   6.0    3.0+ 180.0+ 171.0    1.0   43.0    3.0  180.0+ 180.0+
#> [521]  71.0    8.0   40.0   17.0   10.0+ 180.0+  93.0  164.0  118.0  180.0+
#> [531] 175.0+  15.0+   5.0+   3.0  171.0+  71.0   20.0+   1.0    3.0+  10.0 
#> [541] 180.0+  10.0    6.0+   6.0    5.0  180.0+ 180.0+ 108.0  180.0+ 125.0 
#> [551] 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 103.0  180.0+  70.0    4.0 
#> [561] 180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0  180.0+ 177.0+ 180.0+ 180.0+
#> [571] 128.0    3.0+ 180.0+   4.0    1.0  180.0+  90.0  180.0+ 180.0+ 180.0+
#> [581]  89.0    4.0   71.0    1.0   30.0  114.0  154.0    2.0  180.0+ 180.0+
#> [591] 180.0+   1.0   16.0+   4.0+ 180.0+  83.0    8.0  180.0+   3.0    3.0+
#> [601] 180.0+ 180.0+ 180.0+ 180.0+ 174.0   43.0  180.0+ 180.0+ 180.0+  14.0 
#> [611]   3.0  180.0+ 180.0+  92.0  180.0+ 177.0    6.0+   4.0+  22.0   65.0 
#> [621] 180.0+  46.0  115.0  180.0+   8.0+ 180.0+   4.0  119.0  180.0+ 180.0+
#> [631]   8.0  110.0   29.0  180.0+  14.0    1.0+ 180.0+ 180.0+  25.0    3.0 
#> [641]  24.0   11.0  126.0  180.0+   4.0  178.0+  36.0   89.0   75.0    3.0+
#> [651]   1.0   74.0  168.0  169.0    0.5  180.0+ 180.0+  50.0    1.0+   2.0 
#> [661] 179.0+   8.0+  76.0   16.0   26.0   53.0   69.0  180.0+   3.0   15.0+
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
#>    0.832239 
```
