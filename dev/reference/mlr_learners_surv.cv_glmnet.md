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
#>      Lambda Index Measure      SE Nonzero
#> min 0.00325    45    2.76 0.08151       6
#> 1se 0.04825    16    2.83 0.08246       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38   2      0        115        0   150
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  16      1         10        0   160
#>   [9,]  38  12      1         11        1    92
#>  [10,]  40  12      1          9        0   153
#>  [11,]  42   3      1          1        1   130
#>  [12,]  37   1      1          0        1   146
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0        180        1   100
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  44   5      1          1        0   170
#>  [25,]  45   3      0        180        1   154
#>  [26,]  41  10      1          8        0   150
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   9      1          7        0   110
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  44   3      1          0        1   180
#>  [39,]  46   7      1          2        0   166
#>  [40,]  45   4      1          0        0   124
#>  [41,]  43  10      0        180        0   185
#>  [42,]  46  13      1         10        0   100
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  49   5      0         73        1   136
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   6      1          0        1   100
#>  [48,]  47   2      0        180        0   108
#>  [49,]  44   9      1          8        1   135
#>  [50,]  46   5      1          3        0   130
#>  [51,]  46   4      0        180        1   121
#>  [52,]  44   2      0        180        0   142
#>  [53,]  46  15      0        180        1   120
#>  [54,]  47   3      1          1        1   120
#>  [55,]  48   3      0        180        0   154
#>  [56,]  48  12      1         11        0   200
#>  [57,]  47   5      1          3        1   130
#>  [58,]  49   4      0        180        0   117
#>  [59,]  50   1      1          0        1   129
#>  [60,]  48   2      1          0        0   184
#>  [61,]  47   7      0        180        0   145
#>  [62,]  49   7      1          7        1   110
#>  [63,]  46   3      1          1        1   140
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  23      0        179        1   112
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   7      1          0        1    92
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   1      1          0        0   150
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   6      0        180        1   162
#>  [73,]  51   8      0        180        1   140
#>  [74,]  46   3      0        180        1   120
#>  [75,]  48   7      1          0        1   110
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  49  15      0        180        1   160
#>  [79,]  53   5      0        180        1   140
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   7      1          0        0   199
#>  [82,]  54   6      1          3        0   129
#>  [83,]  50   2      0          5        1   106
#>  [84,]  50  10      1          6        0   122
#>  [85,]  50  14      1         13        0   170
#>  [86,]  53   8      1          7        0   160
#>  [87,]  51  25      1          1        0   202
#>  [88,]  49   5      1          2        1   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48   6      0        180        0   160
#>  [92,]  48  11      1         10        0   120
#>  [93,]  53   4      1          0        1   156
#>  [94,]  51  13      0         99        1   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  49  16      0         16        0   125
#>  [97,]  55   3      1          1        0   150
#>  [98,]  54  23      1         10        0   131
#>  [99,]  52   7      1          2        0   154
#> [100,]  55   6      1          2        1   114
#> [101,]  55   4      1          2        0   150
#> [102,]  51  13      1         11        0   145
#> [103,]  50   5      1          4        1   150
#> [104,]  52   4      0        180        0   183
#> [105,]  50   3      0        174        1   153
#> [106,]  55  28      1         13        1   160
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  52   5      0        175        1   117
#> [113,]  54   1      0        180        0   162
#> [114,]  54   7      1          0        1   100
#> [115,]  56   3      0        180        1   193
#> [116,]  56   2      0        180        0   132
#> [117,]  55   5      1          4        1   120
#> [118,]  53  18      1          9        1   150
#> [119,]  54   3      0        180        1   180
#> [120,]  52  16      0         16        0   152
#> [121,]  52  16      1         14        0   170
#> [122,]  53   4      0        180        1   150
#> [123,]  55   6      0        180        1   100
#> [124,]  55   6      1          5        1   138
#> [125,]  54   3      0        180        0   128
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  56   4      1          0        1   140
#> [134,]  52   2      0        180        0   140
#> [135,]  55  11      1          7        0   104
#> [136,]  58   8      0          8        1   130
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  57   0      0          0        1   150
#> [140,]  59   3      1          1        0   172
#> [141,]  57   4      0        180        1   119
#> [142,]  53  15      1         10        1   130
#> [143,]  55  13      0        166        1   140
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  57  11      1         10        1   129
#> [149,]  55   3      1          2        0   140
#> [150,]  55   5      0          5        1   131
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  59   9      1          1        1   125
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  60   5      1          1        0   138
#> [160,]  57   5      0        180        1   130
#> [161,]  58  11      1          9        1   124
#> [162,]  55   5      1          0        1   160
#> [163,]  57  10      1          9        0   103
#> [164,]  59   6      1          0        1   140
#> [165,]  58  26      1          0        1   189
#> [166,]  58   4      1          3        0   120
#> [167,]  59   2      1          1        0   140
#> [168,]  58  14      1          6        0   190
#> [169,]  61   4      1          3        0   151
#> [170,]  61   9      1          8        0   150
#> [171,]  58   1      0          1        1   100
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  58  10      0         10        1   150
#> [176,]  57   4      1          3        0   138
#> [177,]  57  11      0        180        1   150
#> [178,]  61   3      0         17        0   143
#> [179,]  56  14      0         45        0   130
#> [180,]  56  13      1          6        1   158
#> [181,]  58  11      0        172        1   135
#> [182,]  60  12      1          0        1   114
#> [183,]  55   9      1          7        1   135
#> [184,]  61   4      1          0        1   115
#> [185,]  61  13      1         12        1   130
#> [186,]  59  11      1          8        1   190
#> [187,]  57   1      0          1        0   126
#> [188,]  57  15      1         13        1   110
#> [189,]  59  10      0        180        0   160
#> [190,]  61   8      0         77        0   120
#> [191,]  61  13      0         13        0   210
#> [192,]  62  10      1          0        1   153
#> [193,]  62   7      1          2        1   180
#> [194,]  61  18      0        170        0   140
#> [195,]  61  28      1          7        0   133
#> [196,]  61   7      0          7        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  57  12      1          9        1   120
#> [200,]  62   4      1          0        0   160
#> [201,]  58   3      1          0        1   146
#> [202,]  58   2      0         30        0   202
#> [203,]  61  13      0         13        0   120
#> [204,]  61   5      0          5        1   110
#> [205,]  61   5      0          5        1   160
#> [206,]  58  11      1          9        0   179
#> [207,]  57   2      1          1        0   159
#> [208,]  62  17      1         10        1   180
#> [209,]  58   7      0        180        1   150
#> [210,]  63   3      1          1        0   180
#> [211,]  63   1      0        180        1   130
#> [212,]  61   7      0        180        0   135
#> [213,]  62   3      0        180        1   105
#> [214,]  63   4      0        180        1   190
#> [215,]  64   4      0        180        0   130
#> [216,]  60  18      1         13        0   132
#> [217,]  62   7      0          7        0   150
#> [218,]  58   2      0        180        0   127
#> [219,]  59   4      0        180        0   196
#> [220,]  60   7      1          5        1   141
#> [221,]  59   5      1          1        0   148
#> [222,]  63   1      0          1        0   130
#> [223,]  62   6      0        180        0   170
#> [224,]  59   4      0          4        0   149
#> [225,]  60   3      0          3        0   168
#> [226,]  64  10      1          9        0   160
#> [227,]  62   6      0          6        0   120
#> [228,]  63  12      1         10        0   200
#> [229,]  60   8      0         17        1   130
#> [230,]  61   6      1          1        1   117
#> [231,]  64  12      1         11        0   160
#> [232,]  66   1      1          0        1   120
#> [233,]  63  10      1          0        1   148
#> [234,]  63  14      1          9        0   123
#> [235,]  65  36      1         11        0   140
#> [236,]  66   3      1          1        0   127
#> [237,]  61  10      1          2        1   194
#> [238,]  64  32      1          9        1   160
#> [239,]  63  12      1          9        0   114
#> [240,]  65   8      1          0        0   168
#> [241,]  65  10      1          8        1   120
#> [242,]  64   0      0          0        1    90
#> [243,]  60   6      0        180        0   130
#> [244,]  64  21      1         10        0   190
#> [245,]  61  12      1         11        0   154
#> [246,]  64   9      0        180        0   150
#> [247,]  61   4      0        180        1   113
#> [248,]  65   3      0        180        1   190
#> [249,]  63  16      1          7        1   110
#> [250,]  66   6      1          1        1   130
#> [251,]  62   3      1          1        1   199
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  63   2      1          1        0   180
#> [255,]  67  11      0         11        1   100
#> [256,]  64   2      0          2        0   201
#> [257,]  62   9      0        180        0   145
#> [258,]  63   9      1          8        1   160
#> [259,]  64  19      1          8        1   160
#> [260,]  65  15      1         11        1   160
#> [261,]  64  13      1         12        1   150
#> [262,]  64   6      1          0        1   125
#> [263,]  66  13      1          0        0   118
#> [264,]  64  14      1         13        1   150
#> [265,]  65   3      0          3        0   105
#> [266,]  68   1      0        180        1   166
#> [267,]  64  10      1          9        1   110
#> [268,]  67   8      1          1        1   130
#> [269,]  68   5      0          5        1    90
#> [270,]  63  10      0         16        1   160
#> [271,]  66  14      0        180        0   130
#> [272,]  64   1      0          1        1   120
#> [273,]  68  18      0        180        1   260
#> [274,]  65  17      1         14        1   100
#> [275,]  63   8      1          1        1   162
#> [276,]  65  18      1          3        0   120
#> [277,]  63   1      1          0        1   155
#> [278,]  67  11      0         11        0   150
#> [279,]  68  11      0        180        0   160
#> [280,]  65   4      1          2        1   145
#> [281,]  69  12      0         15        1   140
#> [282,]  66  15      1         13        1   160
#> [283,]  65  11      1          6        0   130
#> [284,]  69  21      1         10        0   180
#> [285,]  66   9      1          8        0   130
#> [286,]  63   8      0        180        1   120
#> [287,]  68  14      1         13        1   140
#> [288,]  65   8      1          0        1    90
#> [289,]  69   1      1          0        0   170
#> [290,]  67   1      0        180        1   160
#> [291,]  68  10      1         10        1   150
#> [292,]  67   7      1          4        1   130
#> [293,]  63   2      1          0        0    99
#> [294,]  65  10      1          1        1   148
#> [295,]  66  19      1         12        1   150
#> [296,]  67  12      1         12        0   160
#> [297,]  69   6      0         99        1   140
#> [298,]  65   4      1          1        0   130
#> [299,]  64   4      0        179        0   160
#> [300,]  66   4      0        180        1   130
#> [301,]  64  11      0         11        0   125
#> [302,]  64   0      1          0        1   118
#> [303,]  67   2      0         18        0   131
#> [304,]  66   7      1          5        1   131
#> [305,]  68   4      1          0        1   160
#> [306,]  69   4      1          3        1   150
#> [307,]  65  13      1         12        1   130
#> [308,]  69   8      0         93        0   140
#> [309,]  65   1      0          1        1   120
#> [310,]  68  18      1          0        1   160
#> [311,]  71   3      0          5        0   112
#> [312,]  68   7      0        150        0   210
#> [313,]  66   9      1          3        1   151
#> [314,]  66   1      1          1        1   165
#> [315,]  70   4      1          0        1   180
#> [316,]  69   8      0        180        1   153
#> [317,]  70  14      0        171        0   166
#> [318,]  67   6      1          4        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  65   2      0        180        0   130
#> [322,]  68   7      1          0        1   150
#> [323,]  67  14      1         13        0   130
#> [324,]  65  14      1         13        1   150
#> [325,]  69   8      0        180        1   180
#> [326,]  71   7      0          7        0   230
#> [327,]  66   2      0          2        1   228
#> [328,]  71   6      0         45        1   158
#> [329,]  69   5      0          5        1   142
#> [330,]  71   3      0        103        0   133
#> [331,]  69   3      0          3        1   130
#> [332,]  70  22      1         13        0   103
#> [333,]  67   1      0         36        1   104
#> [334,]  67   5      0          5        0   130
#> [335,]  68   6      0        180        0   145
#> [336,]  69   6      1          4        1   174
#> [337,]  72   7      0          7        1   110
#> [338,]  67   3      0        180        0   110
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  69  11      1          0        1   120
#> [342,]  69   4      1          3        0   132
#> [343,]  68   2      0          7        1   130
#> [344,]  69   8      1          2        0   121
#> [345,]  67  13      1          9        0   130
#> [346,]  70   3      0        123        0   130
#> [347,]  70   9      0        180        1   142
#> [348,]  67  12      1          8        0   120
#> [349,]  69   1      0          1        1   110
#> [350,]  67   1      0          1        1    60
#> [351,]  67   4      0         60        1   136
#> [352,]  69   5      0         76        0   120
#> [353,]  72  13      1         11        1   195
#> [354,]  68  10      1          8        1   160
#> [355,]  66  24      1         13        0   130
#> [356,]  70   7      0          7        0   102
#> [357,]  68   7      1          2        0   135
#> [358,]  71   6      0          9        0   120
#> [359,]  69  10      1          6        1   120
#> [360,]  72  19      1          8        0   120
#> [361,]  72  12      1         10        0   170
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  73  13      0        152        1   130
#> [365,]  70   5      0        180        0   150
#> [366,]  72   2      0          2        1   100
#> [367,]  67   4      1          1        0   134
#> [368,]  72   6      1          5        0   115
#> [369,]  68  23      0        180        1   220
#> [370,]  69   3      0        180        0   220
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  72   5      0         28        0   120
#> [374,]  71   5      0        180        0   191
#> [375,]  69  16      1         10        1   140
#> [376,]  69   8      1          1        0   164
#> [377,]  72  16      1          1        1   130
#> [378,]  69   1      1          0        0   155
#> [379,]  73   6      1          0        1   270
#> [380,]  71   2      1          0        1   180
#> [381,]  68  15      1         13        1   130
#> [382,]  70  13      1          9        0   100
#> [383,]  72   6      0        180        1   130
#> [384,]  73   0      0        180        1   161
#> [385,]  71   3      1          1        0   150
#> [386,]  71  15      1         11        0   165
#> [387,]  68   9      0        180        1   120
#> [388,]  71  20      1         10        0   140
#> [389,]  70   5      1          0        1   190
#> [390,]  71   8      1          7        0   149
#> [391,]  71   3      1          2        1   190
#> [392,]  73  10      1          8        0   106
#> [393,]  69  12      1          1        1   149
#> [394,]  70  26      1         11        1   120
#> [395,]  74   4      0          4        0   120
#> [396,]  73   6      0        180        0   110
#> [397,]  72  15      1          0        1   150
#> [398,]  71   7      1          2        0   143
#> [399,]  72   8      1          0        1   140
#> [400,]  74   3      0          3        1   150
#> [401,]  71  13      1          8        0   121
#> [402,]  70   4      1          0        1   140
#> [403,]  71  14      1         13        1   170
#> [404,]  74   7      1          0        1   117
#> [405,]  72  10      1          8        1   153
#> [406,]  69   7      0        180        1   144
#> [407,]  70   8      0          8        0   120
#> [408,]  75   1      0          1        0   133
#> [409,]  73  10      1         10        1   120
#> [410,]  74  15      1          9        1   179
#> [411,]  73   1      0          1        1    80
#> [412,]  75  13      1          1        1   130
#> [413,]  71  11      1          8        0   110
#> [414,]  73  10      1          8        0   120
#> [415,]  70   7      1          4        0   184
#> [416,]  72  11      0         11        1   140
#> [417,]  70   3      0          3        0   150
#> [418,]  76  25      1         12        1   170
#> [419,]  72   4      1          0        1   197
#> [420,]  71   3      1          0        0   144
#> [421,]  73   4      0        180        0   124
#> [422,]  74  34      1          8        1   233
#> [423,]  76   3      1          0        1   120
#> [424,]  71  32      1         12        1   107
#> [425,]  72   5      0        180        0   154
#> [426,]  72   3      0        180        0   160
#> [427,]  76   5      0          5        1   130
#> [428,]  77  11      0         11        1   150
#> [429,]  77   4      0          4        0   185
#> [430,]  75   3      1          1        0   180
#> [431,]  72   7      1          2        0   142
#> [432,]  73  15      0         15        1   160
#> [433,]  71  16      0        180        0   140
#> [434,]  74   7      0        180        1   150
#> [435,]  74   3      0          3        1   128
#> [436,]  76   1      0        180        0   114
#> [437,]  74  19      1          4        1   200
#> [438,]  73   6      0          6        1   114
#> [439,]  75  23      1         14        1   110
#> [440,]  74   2      0        180        0   190
#> [441,]  72   4      0         85        1   120
#> [442,]  72   4      1          3        0   160
#> [443,]  73   4      1          3        1   125
#> [444,]  76  13      1         10        0   110
#> [445,]  75   0      0          0        1   130
#> [446,]  73  13      1         11        0   195
#> [447,]  75  12      0         12        1   160
#> [448,]  74   8      1          0        1   105
#> [449,]  76  13      1          8        1   148
#> [450,]  75   4      1          2        1   188
#> [451,]  74   6      0        180        0   160
#> [452,]  75   1      0          1        1   125
#> [453,]  74   2      0        180        0   111
#> [454,]  73   0      0        180        0   156
#> [455,]  76  44      1         10        0   105
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  76   5      1          0        1   167
#> [459,]  74   8      1          8        1   170
#> [460,]  75   9      0        180        1   140
#> [461,]  73  33      1         12        1   175
#> [462,]  77   5      1          0        0   123
#> [463,]  77   1      1          0        1    90
#> [464,]  76  12      1         11        1   120
#> [465,]  73   7      1          0        0   174
#> [466,]  74   6      0         79        1   140
#> [467,]  75   3      1          1        1   171
#> [468,]  74   9      1          8        0   200
#> [469,]  79  10      1          8        0   190
#> [470,]  74   2      1          0        1   130
#> [471,]  78  18      0         18        1   144
#> [472,]  73   8      1          1        1   162
#> [473,]  73  11      1          2        1   110
#> [474,]  74   2      0        180        0   100
#> [475,]  74  15      0        180        1   172
#> [476,]  78   8      1          6        1   110
#> [477,]  74   7      0          7        0   161
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  78   0      0        180        1   212
#> [481,]  75  12      1          1        1   120
#> [482,]  78  15      0        180        1   270
#> [483,]  80   8      0          8        1   120
#> [484,]  75  13      1          6        0   150
#> [485,]  79   4      0         80        0   145
#> [486,]  78   2      1          1        0   130
#> [487,]  75   4      1          0        0   212
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  75   3      0          3        0     0
#> [491,]  76   7      0         29        1   150
#> [492,]  77  24      0         24        1   160
#> [493,]  79   8      0         32        1   120
#> [494,]  80   6      0          6        1   150
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  78  11      1          8        1   118
#> [501,]  76   4      0          4        1   160
#> [502,]  79   4      0          4        1   125
#> [503,]  76  10      1          8        0   180
#> [504,]  77   6      0          6        1   107
#> [505,]  75   2      1          1        1   204
#> [506,]  78  11      0        180        1   135
#> [507,]  76   1      0          1        1   140
#> [508,]  78   7      1          0        1   110
#> [509,]  79   3      0          3        0   120
#> [510,]  77   9      1          4        0   141
#> [511,]  82   5      0          8        1   120
#> [512,]  80  40      1          0        1   138
#> [513,]  78   4      0         59        1   112
#> [514,]  80  17      1         12        0   100
#> [515,]  79  10      0         10        1   120
#> [516,]  81   4      1          2        1   126
#> [517,]  80   6      0        173        1   160
#> [518,]  78  32      0        180        1   130
#> [519,]  81   3      0        180        0   184
#> [520,]  78   7      0          7        1   147
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  80   5      1          1        1   108
#> [524,]  78   4      0        180        0   175
#> [525,]  76   1      0        166        0   131
#> [526,]  80   1      0          1        0   100
#> [527,]  77  10      1          8        1   130
#> [528,]  82   3      1          1        1   144
#> [529,]  77   5      0         85        0   188
#> [530,]  80   2      1          1        0   168
#> [531,]  79   6      0          6        0   152
#> [532,]  80   6      1          0        1   119
#> [533,]  78   2      0        180        0   148
#> [534,]  80   5      0          5        1   130
#> [535,]  82   1      1          0        1    82
#> [536,]  79  10      0        180        1   150
#> [537,]  77   4      0        180        1    98
#> [538,]  78  12      0        180        0   134
#> [539,]  82  21      1          2        0   155
#> [540,]  79   4      0          4        1   121
#> [541,]  80   6      0          6        1   110
#> [542,]  82   5      0        180        0   110
#> [543,]  83   5      0        180        0   148
#> [544,]  79   7      1          6        0   130
#> [545,]  83   4      0        103        0    97
#> [546,]  80  11      1          8        0   170
#> [547,]  78   9      1          4        1   120
#> [548,]  82   8      1          1        0   128
#> [549,]  79   1      0        180        1   170
#> [550,]  80   7      1          0        1   146
#> [551,]  84   5      1          1        1    85
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  81  16      0         16        1   110
#> [555,]  80   6      1          0        1   150
#> [556,]  80  11      1          8        0   110
#> [557,]  81   8      0        180        0   146
#> [558,]  80   8      1          7        0   160
#> [559,]  79   0      1          0        1    96
#> [560,]  85   4      0        180        0    90
#> [561,]  81   2      1          1        0   198
#> [562,]  84   4      0        167        0   198
#> [563,]  82  23      1          0        0   110
#> [564,]  84   5      0        180        1   203
#> [565,]  84   4      0          4        1    85
#> [566,]  81   1      0          1        1   150
#> [567,]  81   4      0         90        1   138
#> [568,]  79   9      1          8        0   150
#> [569,]  80  13      1          8        1   140
#> [570,]  79   4      0          4        1    60
#> [571,]  80   6      0         71        1   189
#> [572,]  82  19      0         19        0   120
#> [573,]  80  30      1         13        0   220
#> [574,]  83   9      0        180        0   198
#> [575,]  83   3      0        114        0    98
#> [576,]  82   0      0          2        1   100
#> [577,]  85   9      1          6        1   160
#> [578,]  81   4      0          4        0   175
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  82  16      1          8        0   103
#> [582,]  82   5      1          0        1   146
#> [583,]  86  12      0        180        1   120
#> [584,]  83  12      1          2        1   170
#> [585,]  81  19      1         14        0   120
#> [586,]  82  15      1          0        0   183
#> [587,]  80   2      0         88        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  82   1      0        180        1   193
#> [600,]  83   4      0          4        0   130
#> [601,]  87   2      0          5        1   137
#> [602,]  86  12      1          0        1   132
#> [603,]  82  14      1         11        1   103
#> [604,]  83  19      0         43        0   150
#> [605,]  84   3      1          2        0   125
#> [606,]  83  10      1          0        1   190
#> [607,]  83  13      1         12        0   170
#> [608,]  84   7      1          2        0   148
#> [609,]  87   2      0        180        0   113
#> [610,]  84   9      0         92        1   110
#> [611,]  84   3      0        180        1   170
#> [612,]  86  13      0        177        0   163
#> [613,]  86   6      0          6        1   117
#> [614,]  84  13      0         62        1   100
#> [615,]  86   6      1          1        0   112
#> [616,]  88   4      0          4        0   100
#> [617,]  88   4      0          4        1   115
#> [618,]  85  22      0         22        1   184
#> [619,]  83   9      0         65        1   150
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  88   2      0        180        1    68
#> [625,]  83   3      0          3        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  86  15      1          8        1   109
#> [628,]  88   4      0          4        0    86
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  84   8      0        180        1   119
#> [632,]  84   2      0        110        1   174
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  91   1      0          1        1    74
#> [647,]  87   5      0         36        1   150
#> [648,]  88   3      1          2        0   159
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  89   2      0        168        0   118
#> [655,]  89  52      0         52        1   130
#> [656,]  92   7      0          7        1   110
#> [657,]  89   4      0          4        1   159
#> [658,]  91   4      1          0        1   120
#> [659,]  90  19      1         11        1   129
#> [660,]  94   6      0         50        0    78
#> [661,]  91   2      0          2        1   116
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  96   3      0         12        1    97
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   2.0+ 115.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0 
#>  [91] 180.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+
#> [101] 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+   1.0  180.0+ 180.0+
#> [111] 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [121]  16.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 140.0    1.0  165.0  180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+
#> [141] 180.0+ 180.0+ 166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+
#> [151] 180.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+
#> [171]   1.0  180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0  180.0+
#> [181] 172.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+   1.0+  15.0  180.0+  77.0 
#> [191]  13.0+ 180.0+ 180.0+ 170.0   94.0    7.0    7.0+   6.0  180.0+ 180.0+
#> [201]   3.0+  30.0   13.0+   5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+  84.0 
#> [221] 180.0+   1.0  180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+
#> [231]  12.0  180.0+ 180.0+  14.0+  36.0    3.0+  88.0  180.0+  12.0  180.0+
#> [241] 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+   3.0  180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 103.0  180.0+
#> [261]  13.0  180.0+ 166.0+  14.0+   3.0  180.0+ 180.0+   8.0    5.0   16.0 
#> [271] 180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  11.0+ 180.0+   4.0+
#> [281]  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+ 175.0  180.0+
#> [291]  10.0  180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+
#> [301]  11.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+  93.0    1.0   18.0+
#> [311]   5.0  150.0  180.0+   1.0  180.0+ 180.0+ 171.0    6.0  180.0+   0.5 
#> [321] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0 
#> [331]   3.0+ 180.0+  36.0    5.0+ 180.0+  97.0    7.0  180.0+   2.0+ 180.0+
#> [341] 180.0+ 180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+   1.0    1.0 
#> [351]  60.0   76.0  132.0   10.0+ 180.0+   7.0+   7.0+   9.0  180.0+ 180.0+
#> [361]  12.0  180.0+ 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0  180.0+
#> [381]  15.0   13.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+  20.0  180.0+   8.0 
#> [391]   3.0   87.0   12.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [401] 175.0  180.0+  14.0+ 180.0+  10.0+ 180.0+   8.0+   1.0   15.0  180.0+
#> [411]   1.0   13.0  180.0+  10.0  104.0+  11.0    3.0+ 180.0+ 180.0+ 180.0+
#> [421] 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+
#> [431]   7.0   15.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+
#> [441]  85.0  180.0+ 180.0+ 174.0+   0.5  180.0+  12.0  180.0+ 180.0+  46.0 
#> [451] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+
#> [461]  33.0    5.0    1.0   12.0    7.0+  79.0    3.0  168.0+ 180.0+ 176.0+
#> [471]  18.0  180.0+  11.0  180.0+ 180.0+   8.0+   7.0   32.0  180.0+ 180.0+
#> [481]  12.0  180.0+   8.0  180.0+  80.0  180.0+   4.0+ 180.0+  11.0    3.0 
#> [491]  29.0   24.0   32.0    6.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0 
#> [501]   4.0    4.0   10.0+   6.0    2.0+ 180.0+   1.0   43.0    3.0   71.0 
#> [511]   8.0   40.0   59.0   17.0   10.0+  93.0  173.0  180.0+ 180.0+   7.0+
#> [521]  22.0   15.0+   5.0+ 180.0+ 166.0+   1.0   10.0  180.0+  85.0   10.0 
#> [531]   6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   4.0 
#> [541]   6.0  180.0+ 180.0+ 180.0+ 103.0  169.0  180.0+ 180.0+ 180.0+   7.0+
#> [551] 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [561] 180.0+ 167.0   62.0  180.0+   4.0    1.0   90.0  180.0+ 180.0+   4.0 
#> [571]  71.0   19.0   30.0  180.0+ 114.0    2.0  180.0+   4.0+ 180.0+   1.0 
#> [581]  16.0+   5.0+ 180.0+  77.0  180.0+  83.0   88.0    8.0  180.0+ 165.0 
#> [591]   3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [601]   5.0  180.0+ 174.0   43.0  180.0+ 180.0+  13.0  180.0+ 180.0+  92.0 
#> [611] 180.0+ 177.0    6.0+  62.0    6.0+   4.0+   4.0   22.0   65.0   11.0 
#> [621] 180.0+  46.0  115.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0  180.0+
#> [631] 180.0+ 110.0  180.0+  46.0   14.0    1.0+ 180.0+ 180.0+  25.0    3.0 
#> [641]  24.0   50.0   11.0  180.0+   4.0    1.0   36.0   75.0    3.0+   1.0 
#> [651] 158.0   74.0  180.0+ 168.0   52.0    7.0    4.0    4.0  180.0+  50.0 
#> [661]   2.0    8.0+  76.0   12.0   26.0   53.0    7.0+   0.5   69.0    3.0 
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
#>   0.8385122 
```
