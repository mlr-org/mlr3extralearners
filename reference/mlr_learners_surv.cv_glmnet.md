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
#> min 0.00348    44   2.714 0.1761       6
#> 1se 0.07490    11   2.876 0.1723       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  16      1         10        0   160
#>  [12,]  42   3      1          1        1   130
#>  [13,]  42   2      0        180        1   100
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  40   1      1          0        1   145
#>  [19,]  40   3      1          1        0   170
#>  [20,]  42  12      1         10        1   170
#>  [21,]  42   2      0        180        1   124
#>  [22,]  45   3      0        180        1   154
#>  [23,]  41  10      1          8        0   150
#>  [24,]  44   3      0        180        0   141
#>  [25,]  41  13      1          1        0   140
#>  [26,]  41   5      1          4        1   141
#>  [27,]  44   2      1          1        1   150
#>  [28,]  43   2      0        180        1   140
#>  [29,]  45   2      0        180        1   140
#>  [30,]  46  15      0        180        0   120
#>  [31,]  47   4      1          3        0   118
#>  [32,]  48  15      0        180        1   160
#>  [33,]  44   3      1          0        1   180
#>  [34,]  43  29      0        180        1   180
#>  [35,]  43  10      0        180        0   185
#>  [36,]  47   6      1          0        1   116
#>  [37,]  44   0      1          0        1    96
#>  [38,]  47   4      1          3        1   160
#>  [39,]  43   3      1          0        1   124
#>  [40,]  45   8      1          0        1   117
#>  [41,]  49   5      0         73        1   136
#>  [42,]  45   5      0          5        0   141
#>  [43,]  46   6      1          0        1   100
#>  [44,]  45   5      0        180        1   190
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  45   9      1          0        1   145
#>  [50,]  48   3      0        180        0   154
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   5      1          3        1   130
#>  [53,]  47   9      1          6        0   170
#>  [54,]  49   4      0        180        0   117
#>  [55,]  48   2      1          0        0   184
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  49   2      0          2        0   105
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  50   9      0        180        0   130
#>  [69,]  49   7      1          4        1    90
#>  [70,]  47   8      0        180        0   160
#>  [71,]  47   6      0        180        1   162
#>  [72,]  52   2      0        180        0   155
#>  [73,]  46   3      0        180        1   120
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49   9      1          3        0   102
#>  [81,]  49  15      0        180        1   160
#>  [82,]  53   5      0        180        1   140
#>  [83,]  53   5      0         77        0   159
#>  [84,]  53   7      1          0        0   199
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  10      1          6        0   122
#>  [87,]  50  14      1         13        0   170
#>  [88,]  53   8      1          7        0   160
#>  [89,]  48   3      1          2        0   150
#>  [90,]  49   5      1          2        1   150
#>  [91,]  48   6      0        180        0   160
#>  [92,]  48  11      1         10        0   120
#>  [93,]  49  16      0         16        0   125
#>  [94,]  54  23      1         10        0   131
#>  [95,]  52   7      1          2        0   154
#>  [96,]  54   9      1          1        0   130
#>  [97,]  52   4      0        180        1   180
#>  [98,]  50   5      1          4        1   150
#>  [99,]  54   4      1          0        1   121
#> [100,]  52   4      0        180        0   183
#> [101,]  50   3      0        174        1   153
#> [102,]  55  28      1         13        1   160
#> [103,]  50   7      1          1        0   156
#> [104,]  53   9      0          9        1    95
#> [105,]  50   7      1          0        1   127
#> [106,]  56   4      1          1        1   130
#> [107,]  52   5      0        175        1   117
#> [108,]  55   2      0          2        0   145
#> [109,]  54   1      0        180        0   162
#> [110,]  54   7      1          0        1   100
#> [111,]  56   2      0        180        0   132
#> [112,]  55   5      1          4        1   120
#> [113,]  52   8      0        180        0   119
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  10      1          9        0   172
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      0        180        1   100
#> [121,]  56   3      0          8        1   139
#> [122,]  57   3      0          3        0   120
#> [123,]  54   7      1          2        0   129
#> [124,]  54   2      1          1        0   135
#> [125,]  52   9      1          3        0   170
#> [126,]  54   2      1          1        1   176
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0          1        1   100
#> [129,]  56   4      1          0        1   140
#> [130,]  52   2      0        180        0   140
#> [131,]  55  11      1          7        0   104
#> [132,]  56  14      1         11        0   130
#> [133,]  57  10      0        180        1   170
#> [134,]  58   8      0          8        1   130
#> [135,]  54   5      0        180        1   108
#> [136,]  55   3      1          1        1   156
#> [137,]  57   0      0          0        1   150
#> [138,]  53  21      1         13        1   130
#> [139,]  59   3      1          1        0   172
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  55   3      1          2        0   140
#> [149,]  55   5      0          5        1   131
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  55   5      1          0        0   140
#> [153,]  57   1      0        180        0   148
#> [154,]  60  11      1          9        0   106
#> [155,]  59   3      0        180        0   120
#> [156,]  58   4      1          0        1   160
#> [157,]  57   2      0          2        1   120
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  59   5      0        180        1   155
#> [161,]  59   4      1          0        1   152
#> [162,]  61   9      0          9        1   160
#> [163,]  60   0      1          0        1    80
#> [164,]  59   2      1          1        0   140
#> [165,]  58   8      0        161        1   140
#> [166,]  61   9      1          8        0   150
#> [167,]  61   3      1          2        1   102
#> [168,]  61  20      1         13        0   130
#> [169,]  57   2      1          0        1   116
#> [170,]  58  10      0         10        1   150
#> [171,]  61   3      0         17        0   143
#> [172,]  56  14      0         45        0   130
#> [173,]  57   3      1          2        0   120
#> [174,]  58  19      1         13        1   140
#> [175,]  56  18      1         11        1   165
#> [176,]  59   9      1          0        1    80
#> [177,]  55   4      1          3        1   160
#> [178,]  58  11      0        172        1   135
#> [179,]  60  12      1          0        1   114
#> [180,]  55   9      1          7        1   135
#> [181,]  61   4      1          0        1   115
#> [182,]  61  13      1         12        1   130
#> [183,]  59  11      1          8        1   190
#> [184,]  57   1      0          1        0   126
#> [185,]  57  15      1         13        1   110
#> [186,]  59   5      1          2        0   182
#> [187,]  58   5      1          1        1   135
#> [188,]  59  10      0        180        0   160
#> [189,]  61   8      0         77        0   120
#> [190,]  61  13      0         13        0   210
#> [191,]  62   7      1          2        1   180
#> [192,]  61  28      1          7        0   133
#> [193,]  58   8      1          3        1   150
#> [194,]  57   7      0        169        0   180
#> [195,]  60   7      0          7        0   147
#> [196,]  61   6      0          6        0   134
#> [197,]  57  12      1          9        1   120
#> [198,]  60  17      1          8        1   140
#> [199,]  58   3      1          0        1   146
#> [200,]  59   1      0        180        0   155
#> [201,]  59  16      1          9        1   133
#> [202,]  63   6      0         28        1   120
#> [203,]  61   5      0          5        1   160
#> [204,]  58  11      1          9        0   179
#> [205,]  57   2      1          1        0   159
#> [206,]  62  17      1         10        1   180
#> [207,]  58   7      0        180        1   150
#> [208,]  63   3      1          1        0   180
#> [209,]  63   1      0        180        1   130
#> [210,]  61   7      0        180        0   135
#> [211,]  62   3      0        180        1   105
#> [212,]  60  18      1         13        0   132
#> [213,]  59   8      0        180        1   140
#> [214,]  61   9      1          9        1   150
#> [215,]  58   9      1          9        0   110
#> [216,]  62   7      0          7        0   150
#> [217,]  59   1      0         22        1   162
#> [218,]  58   2      0        180        0   127
#> [219,]  59   4      0        180        0   196
#> [220,]  60   7      1          5        1   141
#> [221,]  59   5      1          1        0   148
#> [222,]  60   7      1          1        1    90
#> [223,]  65  13      0        180        1   100
#> [224,]  62   6      0        180        0   170
#> [225,]  63  12      1         10        0   200
#> [226,]  59  10      0        180        1   130
#> [227,]  60   8      0         17        1   130
#> [228,]  61   6      1          1        1   117
#> [229,]  64  12      1         11        0   160
#> [230,]  66   1      1          0        1   120
#> [231,]  63  10      1          0        1   148
#> [232,]  63  14      1          9        0   123
#> [233,]  63   4      1          3        0   162
#> [234,]  66   3      1          1        0   127
#> [235,]  61  10      1          2        1   194
#> [236,]  64  32      1          9        1   160
#> [237,]  66   5      1          0        1   110
#> [238,]  65   8      1          0        0   168
#> [239,]  64   0      0          0        1    90
#> [240,]  61   4      0        180        1   113
#> [241,]  65   3      0        180        1   190
#> [242,]  63  16      1          7        1   110
#> [243,]  64   7      0        180        1   120
#> [244,]  63  12      0         12        1   150
#> [245,]  62   3      1          1        1   199
#> [246,]  65   6      0          9        0   112
#> [247,]  65   3      1          0        1    80
#> [248,]  63   5      1          4        0   170
#> [249,]  62  13      1         11        0   180
#> [250,]  67  11      0         11        1   100
#> [251,]  64   2      0          2        0   201
#> [252,]  66  18      1          5        0   142
#> [253,]  66  16      1         11        1   169
#> [254,]  62   9      0        180        0   145
#> [255,]  61  14      1          5        0   140
#> [256,]  61  15      1         10        0   130
#> [257,]  63   3      1          2        0   120
#> [258,]  63   2      1          0        0   140
#> [259,]  64  19      1          8        1   160
#> [260,]  65   8      1          0        1   140
#> [261,]  67   6      0        180        1   170
#> [262,]  64  13      1         12        1   150
#> [263,]  64   6      1          0        1   125
#> [264,]  66  13      1          0        0   118
#> [265,]  64  14      1         13        1   150
#> [266,]  64   0      0          0        1   148
#> [267,]  67   4      1          3        0   130
#> [268,]  66   3      1          0        1   135
#> [269,]  68   1      0        180        1   166
#> [270,]  64  10      1          9        1   110
#> [271,]  63   7      1          0        0   162
#> [272,]  67   8      1          1        1   130
#> [273,]  68   5      0          5        1    90
#> [274,]  63  10      0         16        1   160
#> [275,]  66  14      0        180        0   130
#> [276,]  64   1      0          1        1   120
#> [277,]  68  18      0        180        1   260
#> [278,]  65  17      1         14        1   100
#> [279,]  63   1      1          0        1   155
#> [280,]  63  10      0         18        1   130
#> [281,]  66  12      1         10        1   150
#> [282,]  65  15      1         12        1   150
#> [283,]  66  11      1          0        0   100
#> [284,]  65   4      1          2        1   145
#> [285,]  66  15      1         13        1   160
#> [286,]  63   2      0        180        0   150
#> [287,]  65  11      1          6        0   130
#> [288,]  69   6      0        180        1   100
#> [289,]  63   8      0        180        1   120
#> [290,]  68  14      1         13        1   140
#> [291,]  65   8      1          0        1    90
#> [292,]  66   3      0          3        1   138
#> [293,]  69   1      1          0        0   170
#> [294,]  65   1      1          0        0   133
#> [295,]  67   7      1          4        1   130
#> [296,]  63   2      1          0        0    99
#> [297,]  66  19      1         12        1   150
#> [298,]  67  12      1         12        0   160
#> [299,]  69   6      0         99        1   140
#> [300,]  65   4      1          1        0   130
#> [301,]  64   4      0        179        0   160
#> [302,]  66   4      0        180        1   130
#> [303,]  70  15      1         12        1   132
#> [304,]  64  11      0         11        0   125
#> [305,]  64   4      0        180        1   140
#> [306,]  64   0      1          0        1   118
#> [307,]  67   2      0         18        0   131
#> [308,]  66   7      1          5        1   131
#> [309,]  66   4      0        180        0   177
#> [310,]  68   4      1          0        1   160
#> [311,]  69   4      1          3        1   150
#> [312,]  65  13      1         12        1   130
#> [313,]  69  17      1         10        0   140
#> [314,]  69   8      0         93        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  65   1      0          1        1   120
#> [317,]  68  18      1          0        1   160
#> [318,]  65   6      0        101        1   115
#> [319,]  70   7      1          0        1   190
#> [320,]  71  20      1          0        1   160
#> [321,]  67   2      0        180        0   128
#> [322,]  66   9      1          3        1   151
#> [323,]  66   1      1          1        1   165
#> [324,]  70   4      1          0        1   180
#> [325,]  66   4      0        180        0   130
#> [326,]  67  10      1          9        0   200
#> [327,]  67   6      1          4        0   130
#> [328,]  68  18      1         14        1   170
#> [329,]  69   0      0          0        1   148
#> [330,]  65   2      0        180        0   130
#> [331,]  69   3      1          2        0   151
#> [332,]  67  14      1         13        0   130
#> [333,]  69   8      0        180        1   180
#> [334,]  66   2      0          2        1   228
#> [335,]  71   6      0         45        1   158
#> [336,]  69   5      0          5        1   142
#> [337,]  71   3      0        103        0   133
#> [338,]  69   3      0          3        1   130
#> [339,]  67   1      0         36        1   104
#> [340,]  67   5      0          5        0   130
#> [341,]  68   6      0        180        0   145
#> [342,]  69   8      1          5        1   195
#> [343,]  69   6      1          4        1   174
#> [344,]  72   3      1          0        1   132
#> [345,]  72   7      0          7        1   110
#> [346,]  66   2      1          1        0   123
#> [347,]  69  19      0        180        0   130
#> [348,]  68  18      0         18        1   100
#> [349,]  67  14      0        172        1   140
#> [350,]  66   2      0        180        0   130
#> [351,]  67   7      1          4        0   122
#> [352,]  69   4      1          3        0   132
#> [353,]  69   8      1          2        0   121
#> [354,]  67  13      1          9        0   130
#> [355,]  70   3      0        123        0   130
#> [356,]  70   9      0        180        1   142
#> [357,]  72   5      1          4        0   170
#> [358,]  67  22      1          1        1   140
#> [359,]  68   3      0         19        0   135
#> [360,]  67   1      0          1        1    60
#> [361,]  67   4      0         60        1   136
#> [362,]  69   5      0         76        0   120
#> [363,]  67   8      1          0        1   130
#> [364,]  72  13      1         11        1   195
#> [365,]  70  35      1          0        1   105
#> [366,]  72  30      1          0        1   145
#> [367,]  68   7      1          2        0   135
#> [368,]  70  11      0        180        1   210
#> [369,]  72  19      1          8        0   120
#> [370,]  67   9      0        180        0   158
#> [371,]  72   2      0          2        1   100
#> [372,]  67   4      1          1        0   134
#> [373,]  72   6      1          5        0   115
#> [374,]  71   1      0        173        1   188
#> [375,]  68  23      0        180        1   220
#> [376,]  70   3      0        180        0   121
#> [377,]  68   4      1          3        0   210
#> [378,]  72   5      0         28        0   120
#> [379,]  71   5      0        180        0   191
#> [380,]  73   6      0        180        1   117
#> [381,]  69  16      1         10        1   140
#> [382,]  69   8      1          1        0   164
#> [383,]  68   7      0        180        1   130
#> [384,]  72  16      1          1        1   130
#> [385,]  70   4      0        180        0   180
#> [386,]  69   1      1          0        0   155
#> [387,]  73   6      1          0        1   270
#> [388,]  72   8      1          1        1   150
#> [389,]  71   2      1          0        1   180
#> [390,]  73   7      0          7        1   140
#> [391,]  68  15      1         13        1   130
#> [392,]  70   3      0          3        1   159
#> [393,]  73   0      0        180        1   161
#> [394,]  74   8      1          0        1    85
#> [395,]  73   4      0        180        1   154
#> [396,]  69   2      1          0        1   110
#> [397,]  71   3      1          1        0   150
#> [398,]  71  15      1         11        0   165
#> [399,]  71  20      1         10        0   140
#> [400,]  70   5      1          0        1   190
#> [401,]  71  17      1         11        0   160
#> [402,]  71   8      1          7        0   149
#> [403,]  71   3      1          2        1   190
#> [404,]  73  10      1          8        0   106
#> [405,]  70  26      1         11        1   120
#> [406,]  74   4      0          4        0   120
#> [407,]  72   5      1          3        1   160
#> [408,]  70   3      0        180        1   154
#> [409,]  72  15      1          0        1   150
#> [410,]  71   7      1          2        0   143
#> [411,]  74   3      0          3        1   150
#> [412,]  70   4      1          0        1   140
#> [413,]  71  14      1         13        1   170
#> [414,]  69   7      0        180        1   144
#> [415,]  72  15      1         13        0   156
#> [416,]  70   8      0          8        0   120
#> [417,]  71  10      1          9        1   120
#> [418,]  75   2      1          1        0   145
#> [419,]  73  10      1          9        1   146
#> [420,]  71   2      0         10        1   112
#> [421,]  75  13      1          1        1   130
#> [422,]  71  11      1          8        0   110
#> [423,]  72  15      1         12        1   120
#> [424,]  73  10      1          8        0   120
#> [425,]  70   7      1          4        0   184
#> [426,]  72   1      1          1        0   168
#> [427,]  73  10      0        180        0   162
#> [428,]  72  11      0         11        1   140
#> [429,]  70   3      0          3        0   150
#> [430,]  73   5      1          3        1   112
#> [431,]  76  25      1         12        1   170
#> [432,]  73  12      1         12        1   140
#> [433,]  75   1      0        180        1   140
#> [434,]  73   4      0        180        0   124
#> [435,]  76   3      1          0        1   120
#> [436,]  72   5      0        180        0   154
#> [437,]  72   3      0        180        0   160
#> [438,]  76   5      0          5        1   130
#> [439,]  77  11      0         11        1   150
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  73  15      0         15        1   160
#> [444,]  73  10      1         10        0   124
#> [445,]  74   7      0        180        1   150
#> [446,]  76   1      0        180        0   114
#> [447,]  74   2      0        180        0   190
#> [448,]  72   4      0         85        1   120
#> [449,]  72   4      1          3        0   160
#> [450,]  76  17      1          0        1   200
#> [451,]  73   4      1          3        1   125
#> [452,]  75   7      0          7        0   190
#> [453,]  75   0      0          0        1   130
#> [454,]  73  13      1         11        0   195
#> [455,]  75  12      0         12        1   160
#> [456,]  74   8      1          0        1   105
#> [457,]  76  13      1          8        1   148
#> [458,]  74   6      0        180        0   160
#> [459,]  76   4      0          4        1   155
#> [460,]  74   2      0        180        0   111
#> [461,]  73   1      0         52        1   105
#> [462,]  78  12      1         11        1   160
#> [463,]  74  10      1          0        1   135
#> [464,]  76   5      1          0        1   167
#> [465,]  74   8      1          8        1   170
#> [466,]  73  33      1         12        1   175
#> [467,]  77  12      1          9        1   100
#> [468,]  73   7      1          0        0   174
#> [469,]  74   9      1          8        0   200
#> [470,]  75   6      0        180        0   150
#> [471,]  79  10      1          8        0   190
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  74  15      0        180        1   172
#> [478,]  76  13      1          1        1   170
#> [479,]  78  32      1          9        1   198
#> [480,]  79   6      0        180        0   170
#> [481,]  78  13      1          5        0   130
#> [482,]  75   5      0        119        1   150
#> [483,]  78  15      0        180        1   270
#> [484,]  76   1      0          1        1    83
#> [485,]  78  12      1          9        0   150
#> [486,]  78   2      1          1        0   130
#> [487,]  75   4      1          0        0   212
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  75  11      1          4        0   162
#> [491,]  75   3      0          3        0     0
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  78  11      1          1        1   140
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  81   1      0          1        0   130
#> [499,]  78  11      1          8        1   118
#> [500,]  76  10      1          8        0   180
#> [501,]  77   6      0          6        1   107
#> [502,]  80   3      1          0        1   120
#> [503,]  78  11      0        180        1   135
#> [504,]  76   1      0          1        1   140
#> [505,]  77  31      1          3        1   161
#> [506,]  78   7      1          0        1   110
#> [507,]  77   7      0        180        1   170
#> [508,]  77   6      0          6        1   144
#> [509,]  79   4      1          0        1   120
#> [510,]  77   9      1          4        0   141
#> [511,]  82   5      0          8        1   120
#> [512,]  78   4      0         59        1   112
#> [513,]  80  17      1         12        0   100
#> [514,]  76   7      0        161        0   151
#> [515,]  79  10      0         10        1   120
#> [516,]  80  15      1          0        1    90
#> [517,]  81   4      1          2        1   126
#> [518,]  80   9      0        118        1   186
#> [519,]  78  32      0        180        1   130
#> [520,]  81   2      0        175        0   172
#> [521,]  78   7      0          7        1   147
#> [522,]  80   5      1          1        1   108
#> [523,]  78   4      0        180        0   175
#> [524,]  79   3      0          3        1   101
#> [525,]  78  26      1          5        0   194
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  77  10      1          8        1   130
#> [529,]  82   3      1          1        1   144
#> [530,]  77   5      0         85        0   188
#> [531,]  80   2      1          1        0   168
#> [532,]  80   6      1          0        1   119
#> [533,]  78   2      0        180        0   148
#> [534,]  82   1      1          0        1    82
#> [535,]  79   1      0        125        0   193
#> [536,]  84  22      1         10        0   180
#> [537,]  83   5      0        180        0   148
#> [538,]  79   7      1          6        0   130
#> [539,]  83   4      0        103        0    97
#> [540,]  81  11      1          8        0   160
#> [541,]  80  11      1          8        0   170
#> [542,]  79   4      0          4        1   183
#> [543,]  82   8      1          1        0   128
#> [544,]  79   1      0        180        1   170
#> [545,]  81  15      0        180        1   140
#> [546,]  80   7      1          0        1   146
#> [547,]  84   5      1          1        1    85
#> [548,]  81  20      1          9        0   170
#> [549,]  81  16      0         16        1   110
#> [550,]  80   6      1          0        1   150
#> [551,]  80  11      1          8        0   110
#> [552,]  81   8      0        180        0   146
#> [553,]  80   8      1          7        0   160
#> [554,]  79   7      0        177        0   197
#> [555,]  85   4      0        180        0    90
#> [556,]  83   2      0          2        1   155
#> [557,]  82   6      0        128        1   100
#> [558,]  84   4      0        167        0   198
#> [559,]  80   3      1          1        1   230
#> [560,]  84   5      0        180        1   203
#> [561,]  84   4      0          4        1    85
#> [562,]  81   1      0          1        1   150
#> [563,]  84   1      0         38        1   205
#> [564,]  83   3      0        180        0   174
#> [565,]  81   4      0         90        1   138
#> [566,]  85   3      1          2        1   160
#> [567,]  84   4      0         89        1   129
#> [568,]  80   2      1          0        1   130
#> [569,]  79   4      0          4        1    60
#> [570,]  80   6      0         71        1   189
#> [571,]  82  19      0         19        0   120
#> [572,]  79  14      1          0        0   110
#> [573,]  83   3      0        114        0    98
#> [574,]  81  14      1         12        1   128
#> [575,]  83   2      0        154        0   130
#> [576,]  82   0      0          2        1   100
#> [577,]  81   4      0          4        0   175
#> [578,]  84  15      1         13        1   110
#> [579,]  82  16      1          8        0   103
#> [580,]  82   5      1          0        1   146
#> [581,]  81   4      0          4        0   160
#> [582,]  83  12      1          2        1   170
#> [583,]  81  19      1         14        0   120
#> [584,]  82   3      1          2        0   130
#> [585,]  80   2      0         88        0   135
#> [586,]  83   7      0        126        0   135
#> [587,]  81  16      1          9        0   180
#> [588,]  84   6      0        165        0   145
#> [589,]  86   3      0          3        1   140
#> [590,]  82   9      0        180        1   134
#> [591,]  84   3      0        180        1   120
#> [592,]  85   3      0          3        1   118
#> [593,]  81   2      1          0        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  87   2      0          5        1   137
#> [597,]  86  12      1          0        1   132
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  84   3      0        180        1   170
#> [609,]  86   4      0         38        1   122
#> [610,]  82   4      0          4        0   130
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  88   3      0        115        0   110
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  84   2      0        110        1   174
#> [630,]  87  29      0         29        1    97
#> [631,]  87  15      1          9        1   138
#> [632,]  84   0      0        180        1   136
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  87   2      0        180        0   160
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  88   8      0         50        1   154
#> [640,]  90  11      1         10        1   186
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  92   1      0          1        1   167
#> [649,]  91   3      0         33        1   137
#> [650,]  88   5      0        158        0   100
#> [651,]  89  12      1          0        1   130
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  91   4      1          0        1   120
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  91   1      0        180        0   158
#> [665,]  95   8      1          5        1   150
#> [666,]  94   3      0         26        1   144
#> [667,]  91  12      0         53        1   212
#> [668,]  93   0      1          0        1   122
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]  73.0    5.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [61]   2.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+  16.0+ 152.0+   7.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+
#> [101] 174.0+  28.0  180.0+   9.0+ 180.0+ 180.0+ 175.0+   2.0  180.0+   7.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+
#> [121]   8.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 140.0    1.0  165.0  180.0+
#> [131] 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0    5.0+ 180.0+   4.0+ 147.0+ 180.0+   5.0+   9.0+
#> [151]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [161] 180.0+   9.0+   0.5  180.0+ 161.0+ 180.0+   3.0  180.0+ 180.0+  10.0+
#> [171]  17.0   45.0    3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0 
#> [181] 180.0+ 180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+
#> [191] 180.0+  94.0  180.0+ 169.0    7.0+   6.0  180.0+ 180.0+   3.0+ 180.0+
#> [201] 180.0+  28.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+  84.0 
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+
#> [231] 180.0+  14.0+ 180.0+   3.0+  88.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [241] 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+  11.0+
#> [251]   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0 
#> [261] 180.0+  13.0  180.0+ 166.0+  14.0+   0.5+ 180.0+   3.0+ 180.0+ 180.0+
#> [271]   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+   1.0+  18.0 
#> [281]  80.0   15.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [291]   8.0+   3.0  175.0  180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+
#> [301] 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+
#> [311] 152.0+ 180.0+ 180.0+  93.0   21.0+   1.0   18.0+ 101.0    7.0+ 180.0+
#> [321] 180.0+ 180.0+   1.0  180.0+ 180.0+ 174.0+   6.0  180.0+   0.5  180.0+
#> [331] 180.0+ 180.0+ 180.0+   2.0   45.0    5.0+ 103.0    3.0+  36.0    5.0+
#> [341] 180.0+ 180.0+  97.0  180.0+   7.0    2.0+ 180.0+  18.0  172.0+ 180.0+
#> [351]   7.0  180.0+   8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0    1.0 
#> [361]  60.0   76.0  180.0+ 132.0  180.0+ 162.0    7.0+ 180.0+ 180.0+ 180.0+
#> [371]   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [381]  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+
#> [391]  15.0    3.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+
#> [401] 180.0+   8.0    3.0   87.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [411]   3.0  180.0+  14.0+ 180.0+ 180.0+   8.0+ 179.0+ 180.0+ 180.0+  10.0 
#> [421]  13.0  180.0+ 180.0+  10.0  104.0+   1.0  180.0+  11.0    3.0+   5.0 
#> [431] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0   11.0+   4.0+
#> [441] 180.0+   7.0   15.0+  10.0  180.0+ 180.0+ 180.0+  85.0  180.0+  17.0+
#> [451] 180.0+   7.0    0.5  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0  180.0+
#> [461]  52.0   12.0  180.0+ 180.0+   8.0   33.0  180.0+   7.0+ 168.0+ 180.0+
#> [471] 180.0+ 176.0+  18.0  180.0+  47.0  180.0+ 180.0+ 180.0+  32.0  180.0+
#> [481] 172.0  119.0  180.0+   1.0  180.0+ 180.0+   4.0+ 180.0+  11.0  152.0+
#> [491]   3.0   23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0   10.0+
#> [501]   6.0    3.0+ 180.0+   1.0  171.0   43.0  180.0+   6.0  138.0   71.0 
#> [511]   8.0   59.0   17.0  161.0   10.0+ 180.0+  93.0  118.0  180.0+ 175.0+
#> [521]   7.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  71.0   10.0  180.0+  85.0 
#> [531]  10.0    6.0  180.0+   1.0  125.0  180.0+ 180.0+ 180.0+ 103.0  180.0+
#> [541] 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0  180.0+
#> [551] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+   2.0  128.0  167.0    3.0+ 180.0+
#> [561]   4.0    1.0   38.0  180.0+  90.0  180.0+  89.0  180.0+   4.0   71.0 
#> [571]  19.0  180.0+ 114.0  180.0+ 154.0    2.0    4.0+ 180.0+  16.0+   5.0+
#> [581]   4.0+  77.0  180.0+   3.0   88.0  126.0  180.0+ 165.0    3.0  180.0+
#> [591] 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0 
#> [601]  43.0  180.0+ 180.0+ 180.0+   3.0   13.0  180.0+ 180.0+  38.0    4.0 
#> [611] 177.0    6.0+   6.0+   4.0+  20.0    4.0   65.0   11.0  180.0+ 115.0 
#> [621] 180.0+   3.0+   8.0+ 180.0+   4.0  180.0+   1.0+ 180.0+ 110.0   29.0 
#> [631] 180.0+ 180.0+  46.0   14.0    1.0+ 180.0+   3.0   24.0   50.0   11.0 
#> [641] 126.0  180.0+   4.0    1.0  178.0+  36.0   89.0    1.0   33.0  158.0 
#> [651] 180.0+  52.0    7.0    4.0    0.5  180.0+   4.0   50.0    1.0+   2.0 
#> [661] 179.0+   8.0+  76.0  180.0+   8.0   26.0   53.0    0.5    2.0    3.0 
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
#>   0.8289654 
```
