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
#>      Lambda Index Measure     SE Nonzero
#> min 0.00312    45   2.708 0.1604       6
#> 1se 0.07387    11   2.851 0.1534       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  38  13      1          0        1   161
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  12      1          8        1   120
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  40  12      1          9        0   153
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0        180        1   100
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42   4      0        180        0   162
#>  [22,]  42  15      1         13        1   125
#>  [23,]  40   3      1          1        0   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   3      0        180        0   141
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  43   2      0        180        1   140
#>  [32,]  45   2      0        180        1   140
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  47   4      1          3        1   160
#>  [42,]  43   3      1          0        1   124
#>  [43,]  46   6      1          0        1   100
#>  [44,]  44   4      1          0        1   114
#>  [45,]  47   2      0        180        0   108
#>  [46,]  44   9      1          8        1   135
#>  [47,]  45   5      0        180        1   190
#>  [48,]  44   2      0        180        0   142
#>  [49,]  47   3      1          1        1   120
#>  [50,]  48  12      1         11        0   200
#>  [51,]  46   3      1          0        1   119
#>  [52,]  49   4      0        180        0   117
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   4      1          1        0   125
#>  [57,]  50   6      1          2        1   140
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  49  15      1         11        1   160
#>  [62,]  46   6      1          0        1   156
#>  [63,]  52   2      0        180        1   170
#>  [64,]  50   7      1          0        1    92
#>  [65,]  50   4      0          4        1   100
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   9      0        180        0   130
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   8      0        180        0   160
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  46   1      1          1        0   145
#>  [73,]  50   4      1          1        0   150
#>  [74,]  48   7      1          0        1   110
#>  [75,]  53   8      0         36        1   160
#>  [76,]  48  17      1         10        0   111
#>  [77,]  47   2      1          1        0   110
#>  [78,]  52   4      1          4        0   152
#>  [79,]  49   9      1          3        0   102
#>  [80,]  53   5      0        180        1   140
#>  [81,]  53   5      0         77        0   159
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  10      1          6        0   122
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  53   4      0          4        0   140
#>  [91,]  52  14      1          7        1   200
#>  [92,]  51  13      0         99        1   160
#>  [93,]  54   9      1          0        1   138
#>  [94,]  49  16      0         16        0   125
#>  [95,]  55   3      1          1        0   150
#>  [96,]  54  23      1         10        0   131
#>  [97,]  52   7      1          2        0   154
#>  [98,]  55   4      1          2        0   150
#>  [99,]  50   5      1          4        1   150
#> [100,]  54   4      1          0        1   121
#> [101,]  50   3      0        174        1   153
#> [102,]  55  28      1         13        1   160
#> [103,]  49   6      1          0        1   130
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  55   1      0        180        0   127
#> [110,]  54   7      1          0        1   100
#> [111,]  56   3      0        180        1   193
#> [112,]  56   2      0        180        0   132
#> [113,]  55   5      1          4        1   120
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  53   4      0        180        1   150
#> [122,]  55   6      0        180        1   100
#> [123,]  55   6      1          5        1   138
#> [124,]  55   2      0        134        1   140
#> [125,]  54   3      0        180        0   128
#> [126,]  56   3      0          8        1   139
#> [127,]  55   1      0          2        0   130
#> [128,]  57   3      0          3        0   120
#> [129,]  54   2      1          1        0   135
#> [130,]  52   9      1          3        0   170
#> [131,]  57   1      0        180        1   156
#> [132,]  57   1      0          1        1   100
#> [133,]  56   4      1          0        1   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  56  14      1         11        0   130
#> [137,]  53   3      1          0        1   200
#> [138,]  55   3      1          1        1   156
#> [139,]  57   0      0          0        1   150
#> [140,]  59   3      1          1        0   172
#> [141,]  57   4      0        180        1   119
#> [142,]  56   5      0          5        1   150
#> [143,]  54  23      1          8        0   120
#> [144,]  57   4      1          2        1   185
#> [145,]  53   4      0        147        1   145
#> [146,]  57  11      1         10        1   129
#> [147,]  55   3      1          2        0   140
#> [148,]  55   5      0          5        1   131
#> [149,]  59  15      1         10        0   140
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  55   5      1          0        0   140
#> [153,]  56   7      1          5        1   120
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  57   1      0        180        0   148
#> [157,]  59   3      0        180        0   120
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  55   5      1          0        1   160
#> [162,]  57  10      1          9        0   103
#> [163,]  59   6      1          0        1   140
#> [164,]  59   5      0        180        1   155
#> [165,]  59   4      1          0        1   152
#> [166,]  58  26      1          0        1   189
#> [167,]  58   4      1          3        0   120
#> [168,]  60   0      1          0        1    80
#> [169,]  59   2      1          1        0   140
#> [170,]  58  14      1          6        0   190
#> [171,]  61   4      1          3        0   151
#> [172,]  61   3      1          2        1   102
#> [173,]  58   1      0          1        1   100
#> [174,]  61  20      1         13        0   130
#> [175,]  57   2      1          0        1   116
#> [176,]  58  10      0         10        1   150
#> [177,]  57   4      1          3        0   138
#> [178,]  57  11      0        180        1   150
#> [179,]  61   3      0         17        0   143
#> [180,]  56  14      0         45        0   130
#> [181,]  56  13      1          6        1   158
#> [182,]  56  18      1         11        1   165
#> [183,]  59   9      1          0        1    80
#> [184,]  55   4      1          3        1   160
#> [185,]  58  11      0        172        1   135
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  61  13      1         12        1   130
#> [190,]  57   1      0          1        0   126
#> [191,]  57  15      1         13        1   110
#> [192,]  58   5      1          1        1   135
#> [193,]  59  10      0        180        0   160
#> [194,]  61   8      0         77        0   120
#> [195,]  61  13      0         13        0   210
#> [196,]  58   8      1          5        0   152
#> [197,]  62  10      1          0        1   153
#> [198,]  62   7      1          2        1   180
#> [199,]  61  18      0        170        0   140
#> [200,]  58   8      1          3        1   150
#> [201,]  57   7      0        169        0   180
#> [202,]  60   7      0          7        0   147
#> [203,]  61   6      0          6        0   134
#> [204,]  59  13      1          2        0   198
#> [205,]  62   4      1          0        0   160
#> [206,]  60  17      1          8        1   140
#> [207,]  58   3      1          0        1   146
#> [208,]  62   4      1          3        0   173
#> [209,]  58   2      0         30        0   202
#> [210,]  61  13      0         13        0   120
#> [211,]  61   5      0          5        1   110
#> [212,]  57  18      1          9        1    93
#> [213,]  61   5      0          5        1   160
#> [214,]  58  11      1          9        0   179
#> [215,]  62   1      1          0        1   172
#> [216,]  58   7      0        180        1   150
#> [217,]  63   3      1          1        0   180
#> [218,]  63   1      0        180        1   130
#> [219,]  61   7      0        180        0   135
#> [220,]  63   4      1          3        0   222
#> [221,]  62   3      0        180        1   105
#> [222,]  63  15      1         10        1   126
#> [223,]  64   4      0        180        0   130
#> [224,]  60  18      1         13        0   132
#> [225,]  61   9      1          9        1   150
#> [226,]  58   9      1          9        0   110
#> [227,]  62   7      0          7        0   150
#> [228,]  59   1      0         22        1   162
#> [229,]  59   4      0        180        0   196
#> [230,]  60   7      0          7        0   140
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   130
#> [234,]  61  15      1         13        0   170
#> [235,]  59   4      0          4        0   149
#> [236,]  64  10      1          9        0   160
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  61   6      1          1        1   117
#> [240,]  64  12      1         11        0   160
#> [241,]  66   1      1          0        1   120
#> [242,]  64   6      1          0        1   140
#> [243,]  63  10      1          0        1   148
#> [244,]  63  14      1          9        0   123
#> [245,]  63   4      1          3        0   162
#> [246,]  61  10      1          2        1   194
#> [247,]  63  12      1          9        0   114
#> [248,]  66   5      1          0        1   110
#> [249,]  65   8      1          0        0   168
#> [250,]  65  10      1          8        1   120
#> [251,]  64   0      0          0        1    90
#> [252,]  64  21      1         10        0   190
#> [253,]  61  12      1         11        0   154
#> [254,]  64   9      0        180        0   150
#> [255,]  61   4      0        180        1   113
#> [256,]  64   7      0        180        1   120
#> [257,]  62   3      1          1        1   199
#> [258,]  65   3      1          0        1    80
#> [259,]  63   2      1          1        0   180
#> [260,]  66  18      1          5        0   142
#> [261,]  66  16      1         11        1   169
#> [262,]  62   9      0        180        0   145
#> [263,]  61  15      1         10        0   130
#> [264,]  63   3      1          2        0   120
#> [265,]  63   2      1          0        0   140
#> [266,]  64  19      1          8        1   160
#> [267,]  67   6      0        180        1   170
#> [268,]  65  15      1         11        1   160
#> [269,]  68   5      1          4        1   150
#> [270,]  64   6      1          0        1   125
#> [271,]  66  13      1          0        0   118
#> [272,]  64  14      1         13        1   150
#> [273,]  65   3      0          3        0   105
#> [274,]  67   4      1          3        0   130
#> [275,]  66   3      1          0        1   135
#> [276,]  68   1      0        180        1   166
#> [277,]  64  10      1          9        1   110
#> [278,]  63   7      1          0        0   162
#> [279,]  67   8      1          1        1   130
#> [280,]  63  10      0         16        1   160
#> [281,]  66  14      0        180        0   130
#> [282,]  64   1      0          1        1   120
#> [283,]  63   1      1          0        1   155
#> [284,]  63  10      0         18        1   130
#> [285,]  68  11      0        180        0   160
#> [286,]  68  14      0         79        0   172
#> [287,]  65   4      1          2        1   145
#> [288,]  69  12      0         15        1   140
#> [289,]  66  15      1         13        1   160
#> [290,]  63   2      0        180        0   150
#> [291,]  65  11      1          6        0   130
#> [292,]  69  21      1         10        0   180
#> [293,]  69   6      0        180        1   100
#> [294,]  66   9      1          8        0   130
#> [295,]  63   8      0        180        1   120
#> [296,]  68  14      1         13        1   140
#> [297,]  65   8      1          0        1    90
#> [298,]  66   3      0          3        1   138
#> [299,]  63   2      1          0        0    99
#> [300,]  67  12      1         12        0   160
#> [301,]  64   4      0        179        0   160
#> [302,]  64  11      0         11        0   125
#> [303,]  64   4      0        180        1   140
#> [304,]  64   0      1          0        1   118
#> [305,]  67   2      0         18        0   131
#> [306,]  66   7      1          5        1   131
#> [307,]  66   4      0        180        0   177
#> [308,]  68   4      1          0        1   160
#> [309,]  69   4      1          3        1   150
#> [310,]  65   1      0          1        1   120
#> [311,]  68  18      1          0        1   160
#> [312,]  70   7      1          0        1   190
#> [313,]  68   7      0        150        0   210
#> [314,]  71  20      1          0        1   160
#> [315,]  67   2      0        180        0   128
#> [316,]  66   9      1          3        1   151
#> [317,]  66   1      1          1        1   165
#> [318,]  70   4      1          0        1   180
#> [319,]  69   8      0        180        1   153
#> [320,]  66   4      0        180        0   130
#> [321,]  67  10      1          9        0   200
#> [322,]  69   0      0          0        1   148
#> [323,]  65   2      0        180        0   130
#> [324,]  69   3      1          2        0   151
#> [325,]  67  14      1         13        0   130
#> [326,]  71   6      0         45        1   158
#> [327,]  69   5      0          5        1   142
#> [328,]  71   3      0        103        0   133
#> [329,]  69   3      0          3        1   130
#> [330,]  70  22      1         13        0   103
#> [331,]  67   1      0         36        1   104
#> [332,]  67   5      0          5        0   130
#> [333,]  68   6      0        180        0   145
#> [334,]  69   8      1          5        1   195
#> [335,]  72   3      1          0        1   132
#> [336,]  72   7      0          7        1   110
#> [337,]  66   2      1          1        0   123
#> [338,]  69  19      0        180        0   130
#> [339,]  68  18      0         18        1   100
#> [340,]  69  11      1          0        1   120
#> [341,]  66   2      0        180        0   130
#> [342,]  67   7      1          4        0   122
#> [343,]  69   4      1          3        0   132
#> [344,]  68   2      0          7        1   130
#> [345,]  69   8      1          2        0   121
#> [346,]  67  13      1          9        0   130
#> [347,]  70   9      0        180        1   142
#> [348,]  72   5      1          4        0   170
#> [349,]  68   3      0         19        0   135
#> [350,]  67  12      1          8        0   120
#> [351,]  69   1      0          1        1   110
#> [352,]  67   4      0         60        1   136
#> [353,]  67   8      1          0        1   130
#> [354,]  68  10      1          8        1   160
#> [355,]  70   7      0          7        0   102
#> [356,]  68   7      1          2        0   135
#> [357,]  73  20      1          0        1   170
#> [358,]  69  10      1          6        1   120
#> [359,]  70  11      0        180        1   210
#> [360,]  72  12      1         10        0   170
#> [361,]  67   5      1          0        1   147
#> [362,]  67   9      0        180        0   158
#> [363,]  73  13      0        152        1   130
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  72   6      1          5        0   115
#> [367,]  71   1      0        173        1   188
#> [368,]  68  23      0        180        1   220
#> [369,]  72   5      0         28        0   120
#> [370,]  71   5      0        180        0   191
#> [371,]  68   7      0        180        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  71   2      1          0        1   180
#> [377,]  73   7      0          7        1   140
#> [378,]  68  15      1         13        1   130
#> [379,]  70  13      1          9        0   100
#> [380,]  73   0      0        180        1   161
#> [381,]  74   8      1          0        1    85
#> [382,]  71  15      1         11        0   165
#> [383,]  74   0      1          0        1    90
#> [384,]  73   3      1          0        1   136
#> [385,]  70   5      1          0        1   190
#> [386,]  71  17      1         11        0   160
#> [387,]  71   8      1          7        0   149
#> [388,]  71   3      1          2        1   190
#> [389,]  69  12      1          1        1   149
#> [390,]  74   4      0          4        0   120
#> [391,]  72   5      1          3        1   160
#> [392,]  72  15      1          0        1   150
#> [393,]  72   8      1          0        1   140
#> [394,]  74   3      0          3        1   150
#> [395,]  71  13      1          8        0   121
#> [396,]  69   2      1          1        1    80
#> [397,]  70   4      1          0        1   140
#> [398,]  74   7      1          0        1   117
#> [399,]  69   7      0        180        1   144
#> [400,]  70   8      0          8        0   120
#> [401,]  75   1      0          1        0   133
#> [402,]  73  10      1          9        1   146
#> [403,]  72  10      1          9        1   160
#> [404,]  73  10      1         10        1   120
#> [405,]  74  15      1          9        1   179
#> [406,]  75   9      1          7        0   140
#> [407,]  71  11      1          8        0   110
#> [408,]  71   4      0          4        0   134
#> [409,]  73  10      1          8        0   120
#> [410,]  70   7      1          4        0   184
#> [411,]  72   1      1          1        0   168
#> [412,]  72   7      0         57        1   145
#> [413,]  73  10      0        180        0   162
#> [414,]  70   3      0          3        0   150
#> [415,]  76  25      1         12        1   170
#> [416,]  73  12      1         12        1   140
#> [417,]  72   2      0        180        0   120
#> [418,]  72   4      1          0        1   197
#> [419,]  71   3      1          0        0   144
#> [420,]  73   4      0        180        0   124
#> [421,]  74  34      1          8        1   233
#> [422,]  76   3      1          0        1   120
#> [423,]  71  32      1         12        1   107
#> [424,]  72   5      0        180        0   154
#> [425,]  76   5      0          5        1   130
#> [426,]  77  11      0         11        1   150
#> [427,]  73  15      0         15        1   160
#> [428,]  71  16      0        180        0   140
#> [429,]  73  10      1         10        0   124
#> [430,]  74   7      0        180        1   150
#> [431,]  74   3      0          3        1   128
#> [432,]  74  19      1          4        1   200
#> [433,]  73   6      0          6        1   114
#> [434,]  75  23      1         14        1   110
#> [435,]  74   2      0        180        0   190
#> [436,]  72   4      0         85        1   120
#> [437,]  76  17      1          0        1   200
#> [438,]  73   4      1          3        1   125
#> [439,]  76  13      1         10        0   110
#> [440,]  75   4      1          0        1   122
#> [441,]  75   0      0          0        1   130
#> [442,]  75  12      0         12        1   160
#> [443,]  74   8      1          0        1   105
#> [444,]  74   6      0        180        0   160
#> [445,]  76   4      0          4        1   155
#> [446,]  73   1      0         52        1   105
#> [447,]  73   0      0        180        0   156
#> [448,]  72   5      0        180        0   120
#> [449,]  78  12      1         11        1   160
#> [450,]  76  44      1         10        0   105
#> [451,]  76   5      0        180        0   185
#> [452,]  74  10      1          0        1   135
#> [453,]  76   5      1          0        1   167
#> [454,]  74   8      1          8        1   170
#> [455,]  73  33      1         12        1   175
#> [456,]  77   5      1          0        0   123
#> [457,]  77  12      1          9        1   100
#> [458,]  77   1      1          0        1    90
#> [459,]  78   5      1          0        1   170
#> [460,]  75   3      1          1        1   171
#> [461,]  74   9      1          8        0   200
#> [462,]  75   6      0        180        0   150
#> [463,]  79  10      1          8        0   190
#> [464,]  74   2      1          0        1   130
#> [465,]  78  18      0         18        1   144
#> [466,]  76  29      0         47        0    90
#> [467,]  73   8      1          1        1   162
#> [468,]  73  11      1          2        1   110
#> [469,]  74   2      0        180        0   100
#> [470,]  78   7      0          7        1   133
#> [471,]  78   8      1          6        1   110
#> [472,]  79   6      0        180        0   170
#> [473,]  78   0      0        180        1   212
#> [474,]  78  13      1          5        0   130
#> [475,]  75   5      0        119        1   150
#> [476,]  75  12      1          1        1   120
#> [477,]  78  15      0        180        1   270
#> [478,]  80   8      0          8        1   120
#> [479,]  75  13      1          6        0   150
#> [480,]  74  10      1          8        0   135
#> [481,]  78  12      1          9        0   150
#> [482,]  78   2      1          1        0   130
#> [483,]  75   4      1          0        0   212
#> [484,]  77   2      1          0        1   143
#> [485,]  78  10      0        180        1   130
#> [486,]  76  11      1          0        0   120
#> [487,]  75  11      1          4        0   162
#> [488,]  76   7      0         29        1   150
#> [489,]  77  24      0         24        1   160
#> [490,]  79   8      0         32        1   120
#> [491,]  80   6      0          6        1   150
#> [492,]  78   6      1          0        1   240
#> [493,]  76   3      1          0        1   140
#> [494,]  78  11      1          1        1   140
#> [495,]  79  11      0        180        0   160
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  81   1      0          1        0   130
#> [499,]  78  11      1          8        1   118
#> [500,]  76   4      0          4        1   160
#> [501,]  79   4      0          4        1   125
#> [502,]  76  10      1          8        0   180
#> [503,]  76  12      1         10        1   127
#> [504,]  77   6      0          6        1   107
#> [505,]  75   2      1          1        1   204
#> [506,]  76   1      0          1        1   140
#> [507,]  77  31      1          3        1   161
#> [508,]  76   1      0          1        1    90
#> [509,]  78   7      1          0        1   110
#> [510,]  77   6      0          6        1   144
#> [511,]  79   4      1          0        1   120
#> [512,]  81   1      0        180        0   120
#> [513,]  80  15      1         12        1   150
#> [514,]  77   9      1          4        0   141
#> [515,]  80  40      1          0        1   138
#> [516,]  78   4      0         59        1   112
#> [517,]  79  10      0         10        1   120
#> [518,]  80  15      1          0        1    90
#> [519,]  79  28      0        164        0   100
#> [520,]  80   9      0        118        1   186
#> [521,]  78  32      0        180        1   130
#> [522,]  81   2      0        175        0   172
#> [523,]  78  15      0         15        0   165
#> [524,]  80   5      1          1        1   108
#> [525,]  79   3      0          3        1   101
#> [526,]  81   4      1          1        1   104
#> [527,]  78  20      1          0        1   109
#> [528,]  78   3      1          1        1   152
#> [529,]  82   3      1          1        1   144
#> [530,]  77   5      0         85        0   188
#> [531,]  80   6      1          0        1   119
#> [532,]  78   2      0        180        0   148
#> [533,]  80   5      0          5        1   130
#> [534,]  79  10      0        180        1   150
#> [535,]  81   1      0        108        0   129
#> [536,]  79   1      0        125        0   193
#> [537,]  82  21      1          2        0   155
#> [538,]  84  22      1         10        0   180
#> [539,]  79   4      0          4        1   121
#> [540,]  83   9      1          5        1   170
#> [541,]  82   5      0        180        0   110
#> [542,]  83   5      0        180        0   148
#> [543,]  79   7      1          6        0   130
#> [544,]  83   4      0        103        0    97
#> [545,]  81   5      0        177        0    41
#> [546,]  80  11      1          8        0   170
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  82   8      1          1        0   128
#> [550,]  79   1      0        180        1   170
#> [551,]  81  15      0        180        1   140
#> [552,]  80   7      1          0        1   146
#> [553,]  84   5      1          1        1    85
#> [554,]  83   8      0          8        0   115
#> [555,]  81  16      0         16        1   110
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  80   8      1          7        0   160
#> [559,]  79   7      0        177        0   197
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  80   3      1          1        1   230
#> [564,]  82  23      1          0        0   110
#> [565,]  84   5      0        180        1   203
#> [566,]  84   4      0          4        1    85
#> [567,]  81   1      0          1        1   150
#> [568,]  84   1      0         38        1   205
#> [569,]  81   4      0         90        1   138
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  84   4      0         89        1   129
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  80  30      1         13        0   220
#> [576,]  83   9      0        180        0   198
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  83   2      0        154        0   130
#> [581,]  82   0      0          2        1   100
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   4      0          4        0   175
#> [585,]  81   1      0          1        1   145
#> [586,]  82  16      1          8        0   103
#> [587,]  83  12      1          2        1   170
#> [588,]  82   3      1          2        0   130
#> [589,]  83   7      0        126        0   135
#> [590,]  86   8      0          8        1   132
#> [591,]  81  16      1          9        0   180
#> [592,]  84   6      0        165        0   145
#> [593,]  82   9      0        180        1   134
#> [594,]  84   3      0        180        1   120
#> [595,]  81  13      0        180        0   152
#> [596,]  85   3      0          3        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  82   1      0        180        1   193
#> [600,]  83   4      0          4        0   130
#> [601,]  86  12      1          0        1   132
#> [602,]  82  14      1         11        1   103
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  84   3      1          2        0   125
#> [606,]  83  10      1          0        1   190
#> [607,]  86   2      0        180        1   169
#> [608,]  88  14      1          3        1   130
#> [609,]  84   3      0          3        1   121
#> [610,]  83  13      1         12        0   170
#> [611,]  84   7      1          2        0   148
#> [612,]  84   3      0        180        1   170
#> [613,]  86   4      0         38        1   122
#> [614,]  82   4      0          4        0   130
#> [615,]  86  13      0        177        0   163
#> [616,]  86   6      0          6        1   117
#> [617,]  84  13      0         62        1   100
#> [618,]  86   6      1          1        0   112
#> [619,]  88   4      0          4        0   100
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  85  22      0         22        1   184
#> [623,]  83   9      0         65        1   150
#> [624,]  86   9      1          7        1   142
#> [625,]  86   6      0         46        0   173
#> [626,]  83   3      0          3        1   130
#> [627,]  87   8      0          8        1   157
#> [628,]  86  15      1          8        1   109
#> [629,]  89   5      0        119        1   140
#> [630,]  84   8      0        180        1   119
#> [631,]  85   8      0          8        1   136
#> [632,]  84   2      0        110        1   174
#> [633,]  87  29      0         29        1    97
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  90  14      0         14        1   100
#> [638,]  88   1      0          1        0   135
#> [639,]  91   8      0          8        0   100
#> [640,]  87   2      0        180        0   160
#> [641,]  91  10      0        145        0   135
#> [642,]  88   8      0         50        1   154
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  88   5      0        158        0   100
#> [652,]  89  12      1          0        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  91   0      0          0        0     0
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  91   2      0          2        1   116
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+
#>  [11] 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61] 179.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [91]  85.0   99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+ 180.0+ 171.0+ 180.0+
#> [101] 174.0+  28.0    6.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+
#> [121] 180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+
#> [131] 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [141] 180.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+   9.0+
#> [151]   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 171.0+
#> [171] 180.0+   3.0    1.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0 
#> [181] 180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+   1.0+
#> [191]  15.0  180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0  180.0+
#> [201] 169.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0   13.0+
#> [211]   5.0   18.0    5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+   7.0+
#> [231] 180.0+ 180.0+   1.0  180.0+   4.0+ 167.0  180.0+  17.0  180.0+  12.0 
#> [241] 180.0+ 180.0+ 180.0+  14.0+ 180.0+  88.0   12.0  180.0+ 180.0+ 180.0+
#> [251]   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+   5.0+ 180.0+
#> [271] 166.0+  14.0+   3.0  180.0+   3.0+ 180.0+ 180.0+   7.0+   8.0   16.0 
#> [281] 180.0+   1.0    1.0+  18.0  180.0+  79.0    4.0+  15.0  180.0+ 180.0+
#> [291] 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  180.0+  12.0 
#> [301] 179.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 152.0+   1.0 
#> [311]  18.0+   7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [321] 174.0+   0.5  180.0+ 180.0+ 180.0+  45.0    5.0+ 103.0    3.0+ 180.0+
#> [331]  36.0    5.0+ 180.0+ 180.0+ 180.0+   7.0    2.0+ 180.0+  18.0  180.0+
#> [341] 180.0+   7.0  180.0+   7.0    8.0+  13.0+ 180.0+ 180.0+  19.0  180.0+
#> [351]   1.0   60.0  180.0+  10.0+   7.0+   7.0+ 124.0  180.0+ 180.0+  12.0 
#> [361] 180.0+ 180.0+ 152.0  180.0+   2.0  180.0+ 173.0+ 180.0+  28.0  180.0+
#> [371] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0   13.0+ 180.0+
#> [381] 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+   8.0    3.0   12.0    4.0+
#> [391] 180.0+ 180.0+ 180.0+   3.0  175.0    2.0  180.0+ 180.0+ 180.0+   8.0+
#> [401]   1.0  180.0+ 159.0   15.0  180.0+ 180.0+ 180.0+   4.0+  10.0  104.0+
#> [411]   1.0   57.0  180.0+   3.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [421]  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+  15.0+ 180.0+  10.0  180.0+
#> [431]   3.0  180.0+   6.0  180.0+ 180.0+  85.0   17.0+ 180.0+ 174.0+   4.0 
#> [441]   0.5   12.0  180.0+ 180.0+   4.0   52.0  180.0+ 180.0+  12.0  180.0+
#> [451] 180.0+ 180.0+ 180.0+   8.0   33.0    5.0  180.0+   1.0  180.0+   3.0 
#> [461] 168.0+ 180.0+ 180.0+ 176.0+  18.0   47.0  180.0+  11.0  180.0+   7.0 
#> [471]   8.0+ 180.0+ 180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+
#> [481] 180.0+ 180.0+   4.0+   2.0  180.0+  11.0  152.0+  29.0   24.0   32.0 
#> [491]   6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0 
#> [501]   4.0   10.0+ 180.0+   6.0    2.0+   1.0  171.0    1.0   43.0    6.0 
#> [511] 138.0  180.0+ 180.0+  71.0   40.0   59.0   10.0+ 180.0+ 164.0  118.0 
#> [521] 180.0+ 175.0+  15.0+   5.0+   3.0   71.0   20.0+   3.0+ 180.0+  85.0 
#> [531]   6.0  180.0+   5.0  180.0+ 108.0  125.0  180.0+ 180.0+   4.0    9.0+
#> [541] 180.0+ 180.0+ 180.0+ 103.0  177.0+ 169.0   70.0    4.0  180.0+ 180.0+
#> [551] 180.0+   7.0+ 180.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5 
#> [561] 180.0+ 180.0+   3.0+  62.0  180.0+   4.0    1.0   38.0   90.0  180.0+
#> [571] 180.0+  89.0   71.0    1.0   30.0  180.0+ 180.0+ 114.0  180.0+ 154.0 
#> [581]   2.0  180.0+ 180.0+   4.0+   1.0   16.0+  77.0    3.0  126.0    8.0 
#> [591] 180.0+ 165.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [601] 180.0+ 174.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0 
#> [611] 180.0+ 180.0+  38.0    4.0  177.0    6.0+  62.0    6.0+   4.0+  20.0 
#> [621]   4.0   22.0   65.0   11.0   46.0    3.0+   8.0+ 180.0+ 119.0  180.0+
#> [631]   8.0  110.0   29.0  180.0+ 180.0+  46.0   14.0    1.0+   8.0  180.0+
#> [641] 145.0   50.0  180.0+ 180.0+   4.0   36.0   89.0   75.0    3.0+   1.0 
#> [651] 158.0  180.0+   7.0    4.0    0.5    4.0  180.0+  50.0    2.0    8.0+
#> [661]  76.0  180.0+  16.0   67.0   26.0   53.0    0.5    2.0  180.0+  15.0+
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
#>   0.8542294 
```
