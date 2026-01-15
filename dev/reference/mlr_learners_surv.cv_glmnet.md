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
#> min 0.00337    45   2.886 0.1258       6
#> 1se 0.06023    14   2.995 0.1205       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  36   5      1          0        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40   2      1          1        1   148
#>  [13,]  42   2      0        180        1   100
#>  [14,]  42   2      0        180        0   100
#>  [15,]  43   3      1          0        1   100
#>  [16,]  41   2      1          1        0   166
#>  [17,]  42   4      0        180        0   162
#>  [18,]  40   3      1          1        0   170
#>  [19,]  42  12      1         10        1   170
#>  [20,]  43   2      1          1        1   116
#>  [21,]  42   2      0        180        1   124
#>  [22,]  44   5      1          1        0   170
#>  [23,]  45   3      0        180        1   154
#>  [24,]  44   3      0        180        0   141
#>  [25,]  41  13      1          1        0   140
#>  [26,]  45   9      1          7        0   110
#>  [27,]  45   6      0        180        1   170
#>  [28,]  41   5      1          4        1   141
#>  [29,]  45   2      0        180        1   140
#>  [30,]  46  15      0        180        0   120
#>  [31,]  44   3      1          0        1   180
#>  [32,]  43  29      0        180        1   180
#>  [33,]  45   4      1          0        0   124
#>  [34,]  46  13      1         10        0   100
#>  [35,]  44   0      1          0        1    96
#>  [36,]  43   3      1          0        1   124
#>  [37,]  45   8      1          0        1   117
#>  [38,]  49   5      0         73        1   136
#>  [39,]  45   5      0          5        0   141
#>  [40,]  46   2      1          1        1   122
#>  [41,]  46   6      1          0        1   100
#>  [42,]  47   2      0        180        0   108
#>  [43,]  44   9      1          8        1   135
#>  [44,]  46   4      0        180        1   121
#>  [45,]  44   2      0        180        0   142
#>  [46,]  46  15      0        180        1   120
#>  [47,]  45   9      1          0        1   145
#>  [48,]  47   3      1          1        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47   9      1          6        0   170
#>  [53,]  46   3      1          0        1   119
#>  [54,]  50   1      1          0        1   129
#>  [55,]  48   2      1          0        0   184
#>  [56,]  47   7      0        180        0   145
#>  [57,]  50   6      1          2        1   140
#>  [58,]  46   3      1          1        1   140
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  46   6      1          0        1   156
#>  [65,]  52   2      0        180        1   170
#>  [66,]  50   7      1          0        1    92
#>  [67,]  50   4      0          4        1   100
#>  [68,]  51   3      1          2        0   113
#>  [69,]  50   1      1          0        0   150
#>  [70,]  47   8      0        180        0   160
#>  [71,]  47   6      0        180        1   162
#>  [72,]  51   8      0        180        1   140
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   3      0        180        1   120
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48  17      1         10        0   111
#>  [77,]  47   2      1          1        0   110
#>  [78,]  52   4      1          4        0   152
#>  [79,]  49  15      0        180        1   160
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   5      0         77        0   159
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  50   2      0          5        1   106
#>  [85,]  50  10      1          6        0   122
#>  [86,]  50  14      1         13        0   170
#>  [87,]  51  25      1          1        0   202
#>  [88,]  49   5      1          2        1   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48   6      0        180        0   160
#>  [92,]  48  11      1         10        0   120
#>  [93,]  51  13      0         99        1   160
#>  [94,]  54   9      1          0        1   138
#>  [95,]  55   3      1          1        0   150
#>  [96,]  54  23      1         10        0   131
#>  [97,]  52   7      1          2        0   154
#>  [98,]  55   6      1          2        1   114
#>  [99,]  54   9      1          1        0   130
#> [100,]  55   4      1          2        0   150
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  50   5      1          4        1   150
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  55  28      1         13        1   160
#> [108,]  50   7      1          1        0   156
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  56   4      1          1        1   130
#> [112,]  55   1      0        180        0   127
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  56   3      0        180        1   193
#> [116,]  56   2      0        180        0   132
#> [117,]  52   8      0        180        0   119
#> [118,]  53  18      1          9        1   150
#> [119,]  55   6      0        180        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  53   4      0        180        1   150
#> [122,]  55   6      0        180        1   100
#> [123,]  55   6      1          5        1   138
#> [124,]  54   3      0        180        0   128
#> [125,]  56   3      0          8        1   139
#> [126,]  54   7      1          2        0   129
#> [127,]  52   9      1          3        0   170
#> [128,]  54   2      1          1        1   176
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0        180        1   156
#> [131,]  57   1      0          1        1   100
#> [132,]  56   4      1          0        1   140
#> [133,]  52   2      0        180        0   140
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  54   5      0        180        1   108
#> [138,]  53  21      1         13        1   130
#> [139,]  58   6      1          0        1    90
#> [140,]  55   9      1          2        1   147
#> [141,]  55  13      0        166        1   140
#> [142,]  57   4      1          2        1   185
#> [143,]  53   7      1          0        1   120
#> [144,]  55   3      1          2        0   140
#> [145,]  55   5      0          5        1   131
#> [146,]  56   4      0          4        0   164
#> [147,]  58   9      1          0        1   180
#> [148,]  58   1      1          1        1   200
#> [149,]  55   5      1          0        0   140
#> [150,]  56   7      1          5        1   120
#> [151,]  55   2      0          2        0   106
#> [152,]  59   9      1          1        1   125
#> [153,]  60  11      1          9        0   106
#> [154,]  59   3      0        180        0   120
#> [155,]  58   4      1          0        1   160
#> [156,]  57   5      0        180        1   130
#> [157,]  55   5      1          0        1   160
#> [158,]  57  10      1          9        0   103
#> [159,]  59   6      1          0        1   140
#> [160,]  59   5      0        180        1   155
#> [161,]  58  26      1          0        1   189
#> [162,]  61   9      0          9        1   160
#> [163,]  60   0      1          0        1    80
#> [164,]  58  14      1          6        0   190
#> [165,]  61   4      1          3        0   151
#> [166,]  61  20      1         13        0   130
#> [167,]  57   2      1          0        1   116
#> [168,]  57   4      1          3        0   138
#> [169,]  57  11      0        180        1   150
#> [170,]  61   3      0         17        0   143
#> [171,]  56  13      1          6        1   158
#> [172,]  56  18      1         11        1   165
#> [173,]  59   9      1          0        1    80
#> [174,]  60  12      1          0        1   114
#> [175,]  55   9      1          7        1   135
#> [176,]  61   4      1          0        1   115
#> [177,]  56   8      1          8        0   120
#> [178,]  59  11      1          8        1   190
#> [179,]  57   1      0          1        0   126
#> [180,]  57  15      1         13        1   110
#> [181,]  58   5      1          1        1   135
#> [182,]  61   8      0         77        0   120
#> [183,]  61  13      0         13        0   210
#> [184,]  62   7      1          2        1   180
#> [185,]  61  18      0        170        0   140
#> [186,]  61  28      1          7        0   133
#> [187,]  57   7      0        169        0   180
#> [188,]  61   7      0          7        1   150
#> [189,]  61   6      0          6        0   134
#> [190,]  59  13      1          2        0   198
#> [191,]  62   4      1          0        0   160
#> [192,]  60  17      1          8        1   140
#> [193,]  58   2      0         30        0   202
#> [194,]  63   6      0         28        1   120
#> [195,]  61  13      0         13        0   120
#> [196,]  57  18      1          9        1    93
#> [197,]  57   2      1          1        0   159
#> [198,]  58   7      0        180        1   150
#> [199,]  63   3      1          1        0   180
#> [200,]  63   1      0        180        1   130
#> [201,]  61   7      0        180        0   135
#> [202,]  63   4      1          3        0   222
#> [203,]  62   3      0        180        1   105
#> [204,]  63   4      0        180        1   190
#> [205,]  63  15      1         10        1   126
#> [206,]  64   4      0        180        0   130
#> [207,]  60  18      1         13        0   132
#> [208,]  59   8      0        180        1   140
#> [209,]  62   7      0          7        0   150
#> [210,]  59   1      0         22        1   162
#> [211,]  58   2      0        180        0   127
#> [212,]  59   4      0        180        0   196
#> [213,]  60   7      1          5        1   141
#> [214,]  60   7      0          7        0   140
#> [215,]  59   5      1          1        0   148
#> [216,]  60   7      1          1        1    90
#> [217,]  65  13      0        180        1   100
#> [218,]  62   6      0        180        0   170
#> [219,]  61  15      1         13        0   170
#> [220,]  59   4      0          4        0   149
#> [221,]  64  10      1          9        0   160
#> [222,]  60   8      0         17        1   130
#> [223,]  64  12      1         11        0   160
#> [224,]  66   1      1          0        1   120
#> [225,]  63  10      1          0        1   148
#> [226,]  63  14      1          9        0   123
#> [227,]  65  36      1         11        0   140
#> [228,]  63   4      1          3        0   162
#> [229,]  61  10      1          2        1   194
#> [230,]  64  32      1          9        1   160
#> [231,]  63   7      0        180        0   120
#> [232,]  66   5      1          0        1   110
#> [233,]  65   8      1          0        0   168
#> [234,]  65  10      1          8        1   120
#> [235,]  64   0      0          0        1    90
#> [236,]  60   6      0        180        0   130
#> [237,]  61  12      1         11        0   154
#> [238,]  64   9      0        180        0   150
#> [239,]  61   4      0        180        1   113
#> [240,]  65   3      0        180        1   190
#> [241,]  63  16      1          7        1   110
#> [242,]  64   7      0        180        1   120
#> [243,]  66   6      1          1        1   130
#> [244,]  63  12      0         12        1   150
#> [245,]  62   3      1          1        1   199
#> [246,]  65   6      0          9        0   112
#> [247,]  63   5      1          4        0   170
#> [248,]  63   2      1          1        0   180
#> [249,]  62  13      1         11        0   180
#> [250,]  64   2      0          2        0   201
#> [251,]  66  18      1          5        0   142
#> [252,]  66  16      1         11        1   169
#> [253,]  62   9      0        180        0   145
#> [254,]  61  14      1          5        0   140
#> [255,]  61  15      1         10        0   130
#> [256,]  63   9      1          8        1   160
#> [257,]  63   3      1          2        0   120
#> [258,]  63   2      1          0        0   140
#> [259,]  67   6      0        180        1   170
#> [260,]  68   5      1          4        1   150
#> [261,]  64  13      1         12        1   150
#> [262,]  66  13      1          0        0   118
#> [263,]  65   3      0          3        0   105
#> [264,]  64   0      0          0        1   148
#> [265,]  66   3      1          0        1   135
#> [266,]  66   6      1          0        1   140
#> [267,]  65   2      1          1        1   170
#> [268,]  68   1      0        180        1   166
#> [269,]  64  10      1          9        1   110
#> [270,]  63   7      1          0        0   162
#> [271,]  67   8      1          1        1   130
#> [272,]  68   5      0          5        1    90
#> [273,]  63  10      0         16        1   160
#> [274,]  66  14      0        180        0   130
#> [275,]  68  18      0        180        1   260
#> [276,]  63   1      1          0        1   155
#> [277,]  63  10      0         18        1   130
#> [278,]  67  11      0         11        0   150
#> [279,]  65  15      1         12        1   150
#> [280,]  66  11      1          0        0   100
#> [281,]  69  12      0         15        1   140
#> [282,]  66  15      1         13        1   160
#> [283,]  63   2      0        180        0   150
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  69   6      0        180        1   100
#> [287,]  66   9      1          8        0   130
#> [288,]  66   3      0          3        1   138
#> [289,]  65   1      1          0        0   133
#> [290,]  67   7      1          4        1   130
#> [291,]  63   2      1          0        0    99
#> [292,]  65   6      0          6        0    80
#> [293,]  65  10      1          1        1   148
#> [294,]  65   4      1          1        0   130
#> [295,]  66   4      0        180        1   130
#> [296,]  70  15      1         12        1   132
#> [297,]  64  11      0         11        0   125
#> [298,]  64   0      1          0        1   118
#> [299,]  66   4      0        180        0   177
#> [300,]  69   8      0         93        0   140
#> [301,]  64  21      0         21        1   155
#> [302,]  65   1      0          1        1   120
#> [303,]  65   6      0        101        1   115
#> [304,]  68   4      0          4        1   190
#> [305,]  71   3      0          5        0   112
#> [306,]  70   7      1          0        1   190
#> [307,]  68   7      0        150        0   210
#> [308,]  71  20      1          0        1   160
#> [309,]  67   2      0        180        0   128
#> [310,]  66   1      1          1        1   165
#> [311,]  70   4      1          0        1   180
#> [312,]  69   8      0        180        1   153
#> [313,]  66   4      0        180        0   130
#> [314,]  67  10      1          9        0   200
#> [315,]  69   0      0          0        1   148
#> [316,]  68   7      1          0        1   150
#> [317,]  67  14      1         13        0   130
#> [318,]  65  14      1         13        1   150
#> [319,]  69   8      0        180        1   180
#> [320,]  71   7      0          7        0   230
#> [321,]  71   6      0         45        1   158
#> [322,]  71   3      0        103        0   133
#> [323,]  69   3      0          3        1   130
#> [324,]  70  22      1         13        0   103
#> [325,]  67   1      0         36        1   104
#> [326,]  68   6      0        180        0   145
#> [327,]  69   8      1          5        1   195
#> [328,]  72   3      1          0        1   132
#> [329,]  72   7      0          7        1   110
#> [330,]  67   3      0        180        0   110
#> [331,]  66   2      1          1        0   123
#> [332,]  69  19      0        180        0   130
#> [333,]  68  18      0         18        1   100
#> [334,]  67  14      0        172        1   140
#> [335,]  69  11      1          0        1   120
#> [336,]  66   2      0        180        0   130
#> [337,]  69   4      1          3        0   132
#> [338,]  68   2      0          7        1   130
#> [339,]  67  13      1          9        0   130
#> [340,]  70   9      0        180        1   142
#> [341,]  72   5      1          4        0   170
#> [342,]  67  22      1          1        1   140
#> [343,]  67  12      1          8        0   120
#> [344,]  69   1      0          1        1   110
#> [345,]  67   1      0          1        1    60
#> [346,]  67   4      0         60        1   136
#> [347,]  69   5      0         76        0   120
#> [348,]  72  13      1         11        1   195
#> [349,]  68  10      1          8        1   160
#> [350,]  70  35      1          0        1   105
#> [351,]  72  30      1          0        1   145
#> [352,]  70   7      0          7        0   102
#> [353,]  71   6      0          9        0   120
#> [354,]  69  10      1          6        1   120
#> [355,]  70  11      0        180        1   210
#> [356,]  67   8      0        180        1   170
#> [357,]  67   5      1          0        1   147
#> [358,]  67   9      0        180        0   158
#> [359,]  70   5      0        180        0   150
#> [360,]  72   2      0          2        1   100
#> [361,]  72   6      1          5        0   115
#> [362,]  71   1      0        173        1   188
#> [363,]  68  23      0        180        1   220
#> [364,]  69   3      0        180        0   220
#> [365,]  71   3      1          2        0   150
#> [366,]  68   4      1          3        0   210
#> [367,]  73   6      0        180        1   117
#> [368,]  69   8      1          1        0   164
#> [369,]  68   7      0        180        1   130
#> [370,]  69   1      1          0        0   155
#> [371,]  73   6      1          0        1   270
#> [372,]  71   2      1          0        1   180
#> [373,]  73   7      0          7        1   140
#> [374,]  68  15      1         13        1   130
#> [375,]  70   3      0          3        1   159
#> [376,]  70  13      1          9        0   100
#> [377,]  72   6      0        180        1   130
#> [378,]  73   4      0        180        1   154
#> [379,]  71  15      1         11        0   165
#> [380,]  74  20      0         20        1   180
#> [381,]  71  20      1         10        0   140
#> [382,]  74   0      1          0        1    90
#> [383,]  73   3      1          0        1   136
#> [384,]  70   5      1          0        1   190
#> [385,]  71  17      1         11        0   160
#> [386,]  71   8      1          7        0   149
#> [387,]  73  10      1          8        0   106
#> [388,]  69  12      1          1        1   149
#> [389,]  73   4      0         58        1   160
#> [390,]  70   3      0        180        1   154
#> [391,]  73   6      0        180        0   110
#> [392,]  71   7      1          2        0   143
#> [393,]  73  17      1         11        0   140
#> [394,]  71  13      1          8        0   121
#> [395,]  69   2      1          1        1    80
#> [396,]  70   4      1          0        1   140
#> [397,]  71  14      1         13        1   170
#> [398,]  74   7      1          0        1   117
#> [399,]  72  10      1          8        1   153
#> [400,]  69   7      0        180        1   144
#> [401,]  72  15      1         13        0   156
#> [402,]  70   8      0          8        0   120
#> [403,]  71  10      1          9        1   120
#> [404,]  75   1      0          1        0   133
#> [405,]  75   2      1          1        0   145
#> [406,]  72  10      1          9        1   160
#> [407,]  73  10      1         10        1   120
#> [408,]  74  15      1          9        1   179
#> [409,]  71   2      0         10        1   112
#> [410,]  75   9      1          7        0   140
#> [411,]  75  13      1          1        1   130
#> [412,]  71  11      1          8        0   110
#> [413,]  73  10      1          8        0   120
#> [414,]  72   7      0         57        1   145
#> [415,]  70   3      0          3        0   150
#> [416,]  73   5      1          3        1   112
#> [417,]  76  25      1         12        1   170
#> [418,]  72   2      0        180        0   120
#> [419,]  75   1      0        180        1   140
#> [420,]  71   3      1          0        0   144
#> [421,]  73   5      0        180        0   126
#> [422,]  73   4      0        180        0   124
#> [423,]  74  34      1          8        1   233
#> [424,]  76   3      1          0        1   120
#> [425,]  71  32      1         12        1   107
#> [426,]  72   5      0        180        0   154
#> [427,]  72   3      0        180        0   160
#> [428,]  76   5      0          5        1   130
#> [429,]  72   7      1          2        0   142
#> [430,]  73  15      0         15        1   160
#> [431,]  71  16      0        180        0   140
#> [432,]  74   7      0        180        1   150
#> [433,]  74   2      1          1        0   140
#> [434,]  76   8      1          0        1   141
#> [435,]  73   6      0          6        1   114
#> [436,]  75  23      1         14        1   110
#> [437,]  74   2      0        180        0   190
#> [438,]  72   4      1          3        0   160
#> [439,]  73   4      1          3        1   125
#> [440,]  76  13      1         10        0   110
#> [441,]  75   4      1          0        1   122
#> [442,]  75   7      0          7        0   190
#> [443,]  75   0      0          0        1   130
#> [444,]  75  12      0         12        1   160
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  75   1      0          1        1   125
#> [449,]  74   2      0        180        0   111
#> [450,]  73   1      0         52        1   105
#> [451,]  72   5      0        180        0   120
#> [452,]  74  10      1          0        1   135
#> [453,]  74   8      1          8        1   170
#> [454,]  75   9      0        180        1   140
#> [455,]  73  33      1         12        1   175
#> [456,]  77   5      1          0        0   123
#> [457,]  77  12      1          9        1   100
#> [458,]  73  10      1          9        0   146
#> [459,]  76  12      1         11        1   120
#> [460,]  78   5      1          0        1   170
#> [461,]  73   7      1          0        0   174
#> [462,]  75   3      1          1        1   171
#> [463,]  74   9      1          8        0   200
#> [464,]  75   6      0        180        0   150
#> [465,]  78  18      0         18        1   144
#> [466,]  77   3      0        180        0   110
#> [467,]  76  29      0         47        0    90
#> [468,]  73  11      1          2        1   110
#> [469,]  74   2      0        180        0   100
#> [470,]  74  15      0        180        1   172
#> [471,]  78   8      1          6        1   110
#> [472,]  74   7      0          7        0   161
#> [473,]  78  32      1          9        1   198
#> [474,]  80  10      1          6        1   147
#> [475,]  78   0      0        180        1   212
#> [476,]  75  12      1          1        1   120
#> [477,]  78  15      0        180        1   270
#> [478,]  74  10      1          8        0   135
#> [479,]  76   1      0          1        1    83
#> [480,]  79   4      0         80        0   145
#> [481,]  78  12      1          9        0   150
#> [482,]  78   2      1          1        0   130
#> [483,]  75   4      1          0        0   212
#> [484,]  77   2      1          0        1   143
#> [485,]  76  11      1          0        0   120
#> [486,]  75  11      1          4        0   162
#> [487,]  76   7      0         29        1   150
#> [488,]  77  24      0         24        1   160
#> [489,]  79   8      0         32        1   120
#> [490,]  80   9      0         23        1   128
#> [491,]  80   6      0          6        1   150
#> [492,]  76   3      1          0        1   140
#> [493,]  78  11      1          1        1   140
#> [494,]  79  11      0        180        0   160
#> [495,]  79   2      1          0        1   121
#> [496,]  78  14      1          0        1   140
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  76  10      1          8        0   180
#> [502,]  80   3      1          0        1   120
#> [503,]  75   2      1          1        1   204
#> [504,]  76   1      0          1        1   140
#> [505,]  77  31      1          3        1   161
#> [506,]  76   1      0          1        1    90
#> [507,]  78   7      1          0        1   110
#> [508,]  79   3      0          3        0   120
#> [509,]  77   6      0          6        1   144
#> [510,]  79   4      1          0        1   120
#> [511,]  81   1      0        180        0   120
#> [512,]  80  15      1         12        1   150
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  79  10      0         10        1   120
#> [517,]  81   4      1          2        1   126
#> [518,]  79  28      0        164        0   100
#> [519,]  80   9      0        118        1   186
#> [520,]  80   6      0        173        1   160
#> [521,]  78  32      0        180        1   130
#> [522,]  78   7      0          7        1   147
#> [523,]  77  13      1          0        1   190
#> [524,]  78  15      0         15        0   165
#> [525,]  80   5      1          1        1   108
#> [526,]  78   4      0        180        0   175
#> [527,]  79   3      0          3        1   101
#> [528,]  78  26      1          5        0   194
#> [529,]  76   1      0        166        0   131
#> [530,]  81   4      1          1        1   104
#> [531,]  80   1      0          1        0   100
#> [532,]  77  10      1          8        1   130
#> [533,]  77   5      0         85        0   188
#> [534,]  79   6      0          6        0   152
#> [535,]  78   2      0        180        0   148
#> [536,]  80   5      0          5        1   130
#> [537,]  79  10      0        180        1   150
#> [538,]  77   4      0        180        1    98
#> [539,]  81   1      0        108        0   129
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  84  22      1         10        0   180
#> [543,]  79   4      0          4        1   121
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  83   5      0        180        0   148
#> [547,]  83   4      0        103        0    97
#> [548,]  81  11      1          8        0   160
#> [549,]  80  11      1          8        0   170
#> [550,]  78   9      1          4        1   120
#> [551,]  82   8      1          1        0   128
#> [552,]  80   7      1          0        1   146
#> [553,]  84   5      1          1        1    85
#> [554,]  81  20      1          9        0   170
#> [555,]  81  16      0         16        1   110
#> [556,]  81   8      0        180        0   146
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  82   6      0        128        1   100
#> [562,]  84   4      0        167        0   198
#> [563,]  82  23      1          0        0   110
#> [564,]  84   5      0        180        1   203
#> [565,]  84   4      0          4        1    85
#> [566,]  81   1      0          1        1   150
#> [567,]  84   1      0         38        1   205
#> [568,]  83   3      0        180        0   174
#> [569,]  79   9      1          8        0   150
#> [570,]  80  13      1          8        1   140
#> [571,]  80   2      1          0        1   130
#> [572,]  83   1      0          1        1   100
#> [573,]  82  19      0         19        0   120
#> [574,]  83   9      0        180        0   198
#> [575,]  79  14      1          0        0   110
#> [576,]  83   3      0        114        0    98
#> [577,]  81  14      1         12        1   128
#> [578,]  83   2      0        154        0   130
#> [579,]  81   4      0          4        0   175
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  81  12      0         12        1   163
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  83  12      1          2        1   170
#> [586,]  81  19      1         14        0   120
#> [587,]  86   8      0          8        1   132
#> [588,]  84   6      0        165        0   145
#> [589,]  86   3      0          3        1   140
#> [590,]  84   3      0        180        1   120
#> [591,]  81  13      0        180        0   152
#> [592,]  85   3      0          3        1   118
#> [593,]  81   4      0        180        0   160
#> [594,]  82   1      0        180        1   193
#> [595,]  87   2      0          5        1   137
#> [596,]  86  12      1          0        1   132
#> [597,]  82  14      1         11        1   103
#> [598,]  86   6      1          0        1   140
#> [599,]  84  16      0         70        1   150
#> [600,]  83  19      0         43        0   150
#> [601,]  83  10      1          0        1   190
#> [602,]  86   2      0        180        1   169
#> [603,]  88  14      1          3        1   130
#> [604,]  84   3      0          3        1   121
#> [605,]  83  13      1         12        0   170
#> [606,]  84   7      1          2        0   148
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  86   4      0         38        1   122
#> [610,]  82   4      0          4        0   130
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  84  13      0         62        1   100
#> [614,]  86   6      1          1        0   112
#> [615,]  88   4      0          4        0   100
#> [616,]  83  20      1          3        1   150
#> [617,]  85  22      0         22        1   184
#> [618,]  87   2      0        180        1   130
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  89   5      0        119        1   140
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  89  10      0         46        1   170
#> [631,]  90  14      0         14        1   100
#> [632,]  88   1      0          1        0   135
#> [633,]  86   4      0        180        1   145
#> [634,]  87   6      1          0        0   125
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  88   8      0         50        1   154
#> [638,]  90  11      1         10        1   186
#> [639,]  86   9      1          7        0   130
#> [640,]  91   1      0          1        1    74
#> [641,]  87   5      0         36        1   150
#> [642,]  92   1      0          1        1   167
#> [643,]  91   3      0         33        1   137
#> [644,]  88   5      0        158        0   100
#> [645,]  87   7      0         74        1   105
#> [646,]  89  12      1          0        1   130
#> [647,]  89   2      0        168        0   118
#> [648,]  91   5      0        169        1   176
#> [649,]  89  52      0         52        1   130
#> [650,]  92   7      0          7        1   110
#> [651,]  91   0      0          0        0     0
#> [652,]  89  14      0        180        1    84
#> [653,]  91   4      1          0        1   120
#> [654,]  90  19      1         11        1   129
#> [655,]  90   1      0          1        1   118
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+   5.0+ 180.0+
#>  [11] 180.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [21] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]   1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  88.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0 
#>  [91] 180.0+ 180.0+  99.0  180.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+
#> [101] 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 174.0+  28.0  180.0+   9.0+ 180.0+
#> [111] 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+ 140.0  180.0+
#> [131]   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0 
#> [141] 166.0+   4.0+ 180.0+ 180.0+   5.0+   4.0+   9.0+   1.0  180.0+ 180.0+
#> [151]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+
#> [161] 180.0+   9.0+   0.5  171.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0 
#> [171] 180.0+ 180.0+   9.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+  15.0 
#> [181] 180.0+  77.0   13.0+ 180.0+ 170.0   94.0  169.0    7.0    6.0  180.0+
#> [191] 180.0+ 180.0+  30.0   28.0   13.0+  18.0  180.0+ 180.0+ 180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0 
#> [211] 180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 167.0   17.0   12.0  180.0+ 180.0+  14.0+  36.0  180.0+  88.0  180.0+
#> [231] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0  180.0+ 180.0+ 180.0+   2.0+
#> [251]  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 180.0+   5.0+
#> [261]  13.0  166.0+   3.0    0.5+   3.0+ 180.0+ 175.0+ 180.0+ 180.0+   7.0+
#> [271]   8.0    5.0   16.0  180.0+ 180.0+   1.0+  18.0   11.0+  15.0+ 180.0+
#> [281]  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#> [291] 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+  11.0+   0.5  180.0+  93.0 
#> [301]  21.0+   1.0  101.0    4.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0 
#> [311] 180.0+ 180.0+ 180.0+ 174.0+   0.5  180.0+ 180.0+  14.0+ 180.0+   7.0+
#> [321]  45.0  103.0    3.0+ 180.0+  36.0  180.0+ 180.0+ 180.0+   7.0  180.0+
#> [331]   2.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+ 180.0+   7.0   13.0+ 180.0+
#> [341] 180.0+  51.0  180.0+   1.0    1.0   60.0   76.0  132.0   10.0+ 180.0+
#> [351] 162.0    7.0+   9.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [361] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371]   6.0  180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+  20.0 
#> [381]  20.0    0.5  180.0+ 180.0+ 180.0+   8.0   87.0   12.0   58.0  180.0+
#> [391] 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+  14.0+ 180.0+  10.0+ 180.0+
#> [401] 180.0+   8.0+ 179.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0  180.0+
#> [411]  13.0  180.0+  10.0   57.0    3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0    7.0   15.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 174.0+
#> [441]   4.0    7.0    0.5   12.0  180.0+  46.0  180.0+   1.0  180.0+  52.0 
#> [451] 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+  12.0  180.0+
#> [461]   7.0+   3.0  168.0+ 180.0+  18.0  180.0+  47.0   11.0  180.0+ 180.0+
#> [471]   8.0+   7.0   32.0   10.0  180.0+  12.0  180.0+ 180.0+   1.0   80.0 
#> [481] 180.0+ 180.0+   4.0+   2.0   11.0  152.0+  29.0   24.0   32.0   23.0 
#> [491]   6.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0 
#> [501]  10.0+   3.0+   2.0+   1.0  171.0    1.0   43.0    3.0    6.0  138.0 
#> [511] 180.0+ 180.0+  40.0   59.0   17.0   10.0+  93.0  164.0  118.0  173.0 
#> [521] 180.0+   7.0+  22.0   15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  71.0 
#> [531]   1.0   10.0   85.0    6.0+ 180.0+   5.0  180.0+ 180.0+ 108.0  180.0+
#> [541] 125.0  180.0+   4.0    6.0    9.0+ 180.0+ 103.0  180.0+ 169.0  180.0+
#> [551] 180.0+   7.0+ 180.0+  20.0   16.0  180.0+ 177.0+   0.5  180.0+ 180.0+
#> [561] 128.0  167.0   62.0  180.0+   4.0    1.0   38.0  180.0+ 180.0+ 180.0+
#> [571] 180.0+   1.0   19.0  180.0+ 180.0+ 114.0  180.0+ 154.0    4.0+ 180.0+
#> [581]   1.0   12.0   16.0+   5.0+  77.0  180.0+   8.0  165.0    3.0  180.0+
#> [591] 180.0+   3.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0   43.0 
#> [601] 180.0+ 180.0+  14.0    3.0   13.0  180.0+  92.0  180.0+  38.0    4.0 
#> [611] 177.0    6.0+  62.0    6.0+   4.0+  20.0   22.0  180.0+ 180.0+   3.0+
#> [621]   8.0+ 180.0+ 119.0  180.0+   1.0+ 180.0+ 110.0   29.0  180.0+  46.0 
#> [631]  14.0    1.0+ 180.0+  25.0    3.0   24.0   50.0   11.0  180.0+   1.0 
#> [641]  36.0    1.0   33.0  158.0   74.0  180.0+ 168.0  169.0   52.0    7.0 
#> [651]   0.5  180.0+   4.0  180.0+   1.0+ 179.0+   8.0+  76.0  180.0+  16.0 
#> [661]  67.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8165519 
```
