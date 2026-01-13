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
#> min 0.00331    45   2.780 0.1613       6
#> 1se 0.07130    12   2.923 0.1673       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  41  10      1          8        0   150
#>  [30,]  44   3      0        180        0   141
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  43   2      0        180        1   140
#>  [35,]  47   4      1          3        0   118
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  44   0      1          0        1    96
#>  [42,]  43   3      1          0        1   124
#>  [43,]  45   8      1          0        1   117
#>  [44,]  49   5      0         73        1   136
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   4      1          0        1   114
#>  [48,]  47   2      0        180        0   108
#>  [49,]  44   9      1          8        1   135
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46  15      0        180        1   120
#>  [52,]  45   9      1          0        1   145
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  50   1      1          0        1   129
#>  [60,]  48   2      1          0        0   184
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   9      1          9        1   122
#>  [65,]  49   2      0          2        0   105
#>  [66,]  51   1      0          1        1   145
#>  [67,]  47   2      0        180        0   150
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  47   8      0        180        0   160
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  53   7      1          0        0   199
#>  [87,]  54   6      1          3        0   129
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  48   6      0        180        0   160
#>  [95,]  53   4      1          0        1   156
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  52   7      1          2        0   154
#> [100,]  55   6      1          2        1   114
#> [101,]  54   9      1          1        0   130
#> [102,]  52   4      0        180        1   180
#> [103,]  50   5      1          4        1   150
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  55  28      1         13        1   160
#> [107,]  50   7      1          1        0   156
#> [108,]  53   9      0          9        1    95
#> [109,]  56   4      1          1        1   130
#> [110,]  52   5      0        175        1   117
#> [111,]  55   1      0        180        0   127
#> [112,]  55   2      0          2        0   145
#> [113,]  54   1      0        180        0   162
#> [114,]  54   7      1          0        1   100
#> [115,]  56   3      0        180        1   193
#> [116,]  56   2      0        180        0   132
#> [117,]  52   8      0        180        0   119
#> [118,]  54   3      0        180        1   180
#> [119,]  55   6      0        180        0   170
#> [120,]  52  16      0         16        0   152
#> [121,]  53  10      1          9        0   172
#> [122,]  53  15      0         15        1    90
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  55   2      0        134        1   140
#> [127,]  54   3      0        180        0   128
#> [128,]  56   3      0          8        1   139
#> [129,]  55   1      0          2        0   130
#> [130,]  57   3      0          3        0   120
#> [131,]  54   2      1          1        0   135
#> [132,]  52   9      1          3        0   170
#> [133,]  54   2      1          1        1   176
#> [134,]  57   5      1          3        1   138
#> [135,]  57   1      0        180        1   156
#> [136,]  56   4      1          0        1   140
#> [137,]  52   2      0        180        0   140
#> [138,]  55  11      1          7        0   104
#> [139,]  56  14      1         11        0   130
#> [140,]  53   3      1          0        1   200
#> [141,]  58   8      0          8        1   130
#> [142,]  54   5      0        180        1   108
#> [143,]  55   3      1          1        1   156
#> [144,]  57   0      0          0        1   150
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  53  15      1         10        1   130
#> [148,]  55   9      1          2        1   147
#> [149,]  57   4      1          2        1   185
#> [150,]  53   7      1          0        1   120
#> [151,]  57  11      1         10        1   129
#> [152,]  55   5      0          5        1   131
#> [153,]  59  15      1         10        0   140
#> [154,]  58   1      1          1        1   200
#> [155,]  55   5      1          0        0   140
#> [156,]  55   2      0          2        0   106
#> [157,]  59   9      1          1        1   125
#> [158,]  60  11      1          9        0   106
#> [159,]  59   3      0        180        0   120
#> [160,]  58   4      1          0        1   160
#> [161,]  57   2      0          2        1   120
#> [162,]  60   5      1          1        0   138
#> [163,]  57   5      0        180        1   130
#> [164,]  58  11      1          9        1   124
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  61   9      0          9        1   160
#> [172,]  58   4      1          3        0   120
#> [173,]  59   2      1          1        0   140
#> [174,]  58   8      0        161        1   140
#> [175,]  58  14      1          6        0   190
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  57  13      1         10        0   110
#> [179,]  57   2      1          0        1   116
#> [180,]  58  10      0         10        1   150
#> [181,]  57   4      1          3        0   138
#> [182,]  57  11      0        180        1   150
#> [183,]  61   3      0         17        0   143
#> [184,]  56  14      0         45        0   130
#> [185,]  57   3      1          2        0   120
#> [186,]  56  13      1          6        1   158
#> [187,]  56  18      1         11        1   165
#> [188,]  59   9      1          0        1    80
#> [189,]  58  11      0        172        1   135
#> [190,]  55   9      1          7        1   135
#> [191,]  57   1      0          1        0   126
#> [192,]  57  15      1         13        1   110
#> [193,]  59   5      1          2        0   182
#> [194,]  58   5      1          1        1   135
#> [195,]  59  10      0        180        0   160
#> [196,]  61   8      0         77        0   120
#> [197,]  61  13      0         13        0   210
#> [198,]  58   8      1          5        0   152
#> [199,]  57   3      1          0        0   100
#> [200,]  61  18      0        170        0   140
#> [201,]  58   8      1          3        1   150
#> [202,]  61   7      0          7        1   150
#> [203,]  60   7      0          7        0   147
#> [204,]  61   6      0          6        0   134
#> [205,]  59  13      1          2        0   198
#> [206,]  57  12      1          9        1   120
#> [207,]  58   3      1          0        1   146
#> [208,]  62   4      1          3        0   173
#> [209,]  59   1      0        180        0   155
#> [210,]  63   6      0         28        1   120
#> [211,]  61   5      0          5        1   110
#> [212,]  57  18      1          9        1    93
#> [213,]  61   5      0          5        1   160
#> [214,]  58  11      1          9        0   179
#> [215,]  57   2      1          1        0   159
#> [216,]  62   1      1          0        1   172
#> [217,]  58   7      0        180        1   150
#> [218,]  63   3      1          1        0   180
#> [219,]  63   1      0        180        1   130
#> [220,]  61   7      0        180        0   135
#> [221,]  63   4      1          3        0   222
#> [222,]  62   3      0        180        1   105
#> [223,]  63  15      1         10        1   126
#> [224,]  63   4      1          1        0   155
#> [225,]  61   9      1          9        1   150
#> [226,]  58   9      1          9        0   110
#> [227,]  62   7      0          7        0   150
#> [228,]  59   1      0         22        1   162
#> [229,]  58   2      0        180        0   127
#> [230,]  59   4      0        180        0   196
#> [231,]  60   7      1          5        1   141
#> [232,]  60   7      0          7        0   140
#> [233,]  59   5      1          1        0   148
#> [234,]  60   7      1          1        1    90
#> [235,]  65  13      0        180        1   100
#> [236,]  63   1      0          1        0   162
#> [237,]  62   6      0        180        0   170
#> [238,]  61  15      1         13        0   170
#> [239,]  59   4      0          4        0   149
#> [240,]  60   3      0          3        0   168
#> [241,]  64  10      1          9        0   160
#> [242,]  62   6      0          6        0   120
#> [243,]  59  10      0        180        1   130
#> [244,]  61   6      1          1        1   117
#> [245,]  64  12      1         11        0   160
#> [246,]  66   1      1          0        1   120
#> [247,]  63  14      1          9        0   123
#> [248,]  64  32      1          9        1   160
#> [249,]  63  12      1          9        0   114
#> [250,]  63   7      0        180        0   120
#> [251,]  65   8      1          0        0   168
#> [252,]  64   0      0          0        1    90
#> [253,]  60   6      0        180        0   130
#> [254,]  64  21      1         10        0   190
#> [255,]  61  12      1         11        0   154
#> [256,]  64   9      0        180        0   150
#> [257,]  65   3      0        180        1   190
#> [258,]  64   7      0        180        1   120
#> [259,]  66   6      1          1        1   130
#> [260,]  63  12      0         12        1   150
#> [261,]  62   3      1          1        1   199
#> [262,]  65   3      1          0        1    80
#> [263,]  63   2      1          1        0   180
#> [264,]  62  13      1         11        0   180
#> [265,]  67  11      0         11        1   100
#> [266,]  64   2      0          2        0   201
#> [267,]  66  16      1         11        1   169
#> [268,]  62   9      0        180        0   145
#> [269,]  61  14      1          5        0   140
#> [270,]  61  15      1         10        0   130
#> [271,]  63   9      1          8        1   160
#> [272,]  63   2      1          0        0   140
#> [273,]  67   6      0        180        1   170
#> [274,]  65  15      1         11        1   160
#> [275,]  68   5      1          4        1   150
#> [276,]  64  13      1         12        1   150
#> [277,]  64   6      1          0        1   125
#> [278,]  64  14      1         13        1   150
#> [279,]  65   3      0          3        0   105
#> [280,]  67   4      1          3        0   130
#> [281,]  66   6      1          0        1   140
#> [282,]  65   2      1          1        1   170
#> [283,]  68   1      0        180        1   166
#> [284,]  64  10      1          9        1   110
#> [285,]  67   8      1          1        1   130
#> [286,]  66  14      0        180        0   130
#> [287,]  64   1      0          1        1   120
#> [288,]  65  17      1         14        1   100
#> [289,]  63   1      1          0        1   155
#> [290,]  68  14      0         79        0   172
#> [291,]  66  12      1         10        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  65  11      1          6        0   130
#> [296,]  69   6      0        180        1   100
#> [297,]  66   9      1          8        0   130
#> [298,]  63   8      0        180        1   120
#> [299,]  68  14      1         13        1   140
#> [300,]  65   8      1          0        1    90
#> [301,]  66   3      0          3        1   138
#> [302,]  69   1      1          0        0   170
#> [303,]  65   1      1          0        0   133
#> [304,]  67   7      1          4        1   130
#> [305,]  63   2      1          0        0    99
#> [306,]  65   6      0          6        0    80
#> [307,]  65  10      1          1        1   148
#> [308,]  66  19      1         12        1   150
#> [309,]  67  12      1         12        0   160
#> [310,]  69   6      0         99        1   140
#> [311,]  64   4      0        179        0   160
#> [312,]  66   4      0        180        1   130
#> [313,]  70  15      1         12        1   132
#> [314,]  64  11      0         11        0   125
#> [315,]  64   4      0        180        1   140
#> [316,]  64   0      1          0        1   118
#> [317,]  67   2      0         18        0   131
#> [318,]  66   4      0        180        0   177
#> [319,]  68   4      1          0        1   160
#> [320,]  69   4      1          3        1   150
#> [321,]  69   8      0         93        0   140
#> [322,]  66   6      0        180        0   140
#> [323,]  65   1      0          1        1   120
#> [324,]  68  18      1          0        1   160
#> [325,]  65   6      0        101        1   115
#> [326,]  68   4      0          4        1   190
#> [327,]  71   3      0          5        0   112
#> [328,]  70   7      1          0        1   190
#> [329,]  71  20      1          0        1   160
#> [330,]  67   2      0        180        0   128
#> [331,]  66   9      1          3        1   151
#> [332,]  66   1      1          1        1   165
#> [333,]  69   8      0        180        1   153
#> [334,]  70  14      0        171        0   166
#> [335,]  66   4      0        180        0   130
#> [336,]  67  10      1          9        0   200
#> [337,]  65   2      0        180        0   130
#> [338,]  68   7      1          0        1   150
#> [339,]  67  14      1         13        0   130
#> [340,]  71   6      0         45        1   158
#> [341,]  69   3      0          3        1   130
#> [342,]  70  22      1         13        0   103
#> [343,]  67   5      0          5        0   130
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  69   8      1          7        1   108
#> [347,]  67   3      0        180        0   110
#> [348,]  69  19      0        180        0   130
#> [349,]  69  11      1          0        1   120
#> [350,]  68   2      0          7        1   130
#> [351,]  69   8      1          2        0   121
#> [352,]  67  13      1          9        0   130
#> [353,]  70   3      0        123        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  72   5      1          4        0   170
#> [356,]  67  22      1          1        1   140
#> [357,]  68   3      0         19        0   135
#> [358,]  67  12      1          8        0   120
#> [359,]  69   1      0          1        1   110
#> [360,]  67   1      0          1        1    60
#> [361,]  67   4      0         60        1   136
#> [362,]  67   8      1          0        1   130
#> [363,]  72  13      1         11        1   195
#> [364,]  66  24      1         13        0   130
#> [365,]  70  35      1          0        1   105
#> [366,]  72  30      1          0        1   145
#> [367,]  73  20      1          0        1   170
#> [368,]  71   6      0          9        0   120
#> [369,]  69  10      1          6        1   120
#> [370,]  70  11      0        180        1   210
#> [371,]  72  19      1          8        0   120
#> [372,]  67   8      0        180        1   170
#> [373,]  67   5      1          0        1   147
#> [374,]  67   9      0        180        0   158
#> [375,]  73  13      0        152        1   130
#> [376,]  70   5      0        180        0   150
#> [377,]  72   2      0          2        1   100
#> [378,]  67   4      1          1        0   134
#> [379,]  68  23      0        180        1   220
#> [380,]  69   3      0        180        0   220
#> [381,]  68   4      1          3        0   210
#> [382,]  69  16      1         10        1   140
#> [383,]  69   8      1          1        0   164
#> [384,]  68   7      0        180        1   130
#> [385,]  72  16      1          1        1   130
#> [386,]  70   4      0        180        0   180
#> [387,]  73   6      1          0        1   270
#> [388,]  72   8      1          1        1   150
#> [389,]  73   7      0          7        1   140
#> [390,]  70   3      0          3        1   159
#> [391,]  72   6      0        180        1   130
#> [392,]  74   8      1          0        1    85
#> [393,]  73   4      0        180        1   154
#> [394,]  69   2      1          0        1   110
#> [395,]  71   3      1          1        0   150
#> [396,]  71  15      1         11        0   165
#> [397,]  74  20      0         20        1   180
#> [398,]  68   9      0        180        1   120
#> [399,]  71  20      1         10        0   140
#> [400,]  74   0      1          0        1    90
#> [401,]  73   3      1          0        1   136
#> [402,]  70   5      1          0        1   190
#> [403,]  71   8      1          7        0   149
#> [404,]  71   3      1          2        1   190
#> [405,]  69  12      1          1        1   149
#> [406,]  70  26      1         11        1   120
#> [407,]  74   4      0          4        0   120
#> [408,]  72   5      1          3        1   160
#> [409,]  70   3      0        180        1   154
#> [410,]  72  15      1          0        1   150
#> [411,]  72   8      1          0        1   140
#> [412,]  71  13      1          8        0   121
#> [413,]  70   4      1          0        1   140
#> [414,]  71  14      1         13        1   170
#> [415,]  74   7      1          0        1   117
#> [416,]  69   7      0        180        1   144
#> [417,]  72  15      1         13        0   156
#> [418,]  70   8      0          8        0   120
#> [419,]  71  10      1          9        1   120
#> [420,]  75   1      0          1        0   133
#> [421,]  73  10      1          9        1   146
#> [422,]  73  10      1         10        1   120
#> [423,]  74  15      1          9        1   179
#> [424,]  73   1      0          1        1    80
#> [425,]  71   4      0          4        0   134
#> [426,]  72  15      1         12        1   120
#> [427,]  72   1      1          1        0   168
#> [428,]  72   7      0         57        1   145
#> [429,]  73  10      0        180        0   162
#> [430,]  72  11      0         11        1   140
#> [431,]  70   3      0          3        0   150
#> [432,]  73   5      1          3        1   112
#> [433,]  76  25      1         12        1   170
#> [434,]  73  12      1         12        1   140
#> [435,]  75   1      0        180        1   140
#> [436,]  71   3      1          0        0   144
#> [437,]  73   5      0        180        0   126
#> [438,]  73   4      0        180        0   124
#> [439,]  74  34      1          8        1   233
#> [440,]  76   3      1          0        1   120
#> [441,]  71  32      1         12        1   107
#> [442,]  72   5      0        180        0   154
#> [443,]  72   3      0        180        0   160
#> [444,]  76   5      0          5        1   130
#> [445,]  75   3      1          1        0   180
#> [446,]  72   7      1          2        0   142
#> [447,]  73  15      0         15        1   160
#> [448,]  71  16      0        180        0   140
#> [449,]  74   7      0        180        1   150
#> [450,]  74   3      0          3        1   128
#> [451,]  76   1      0        180        0   114
#> [452,]  74  19      1          4        1   200
#> [453,]  73   6      0          6        1   114
#> [454,]  72   4      0         85        1   120
#> [455,]  72   4      1          3        0   160
#> [456,]  76  17      1          0        1   200
#> [457,]  75   0      0          0        1   130
#> [458,]  73  13      1         11        0   195
#> [459,]  75  12      0         12        1   160
#> [460,]  74   8      1          0        1   105
#> [461,]  74   6      0        180        0   160
#> [462,]  76   4      0          4        1   155
#> [463,]  75   1      0          1        1   125
#> [464,]  74   2      0        180        0   111
#> [465,]  73   1      0         52        1   105
#> [466,]  73   0      0        180        0   156
#> [467,]  76  44      1         10        0   105
#> [468,]  76   5      0        180        0   185
#> [469,]  74  10      1          0        1   135
#> [470,]  74   8      1          8        1   170
#> [471,]  77   5      1          0        0   123
#> [472,]  77  12      0        180        0   130
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  75   6      0        180        0   150
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  77   3      0        180        0   110
#> [481,]  76  29      0         47        0    90
#> [482,]  73   8      1          1        1   162
#> [483,]  73  11      1          2        1   110
#> [484,]  74   2      0        180        0   100
#> [485,]  78   8      1          6        1   110
#> [486,]  74   7      0          7        0   161
#> [487,]  78  32      1          9        1   198
#> [488,]  79   6      0        180        0   170
#> [489,]  78  13      1          5        0   130
#> [490,]  75   5      0        119        1   150
#> [491,]  75  12      1          1        1   120
#> [492,]  78  15      0        180        1   270
#> [493,]  80   8      0          8        1   120
#> [494,]  75  13      1          6        0   150
#> [495,]  74  10      1          8        0   135
#> [496,]  76   1      0          1        1    83
#> [497,]  79   4      0         80        0   145
#> [498,]  75   4      1          0        0   212
#> [499,]  77   2      1          0        1   143
#> [500,]  76  11      1          0        0   120
#> [501,]  75  11      1          4        0   162
#> [502,]  75   3      0          3        0     0
#> [503,]  77  24      0         24        1   160
#> [504,]  79   8      0         32        1   120
#> [505,]  80   9      0         23        1   128
#> [506,]  78   6      1          0        1   240
#> [507,]  76   3      1          0        1   140
#> [508,]  78  11      1          1        1   140
#> [509,]  79   2      1          0        1   121
#> [510,]  78  14      1          0        1   140
#> [511,]  81   1      0          1        0   130
#> [512,]  76   4      0          4        1   160
#> [513,]  76  12      1         10        1   127
#> [514,]  75   2      1          1        1   204
#> [515,]  78  11      0        180        1   135
#> [516,]  76   1      0          1        1   140
#> [517,]  77  31      1          3        1   161
#> [518,]  76   1      0          1        1    90
#> [519,]  78   7      1          0        1   110
#> [520,]  79   3      0          3        0   120
#> [521,]  81   1      0        180        0   120
#> [522,]  80  15      1         12        1   150
#> [523,]  82   5      0          8        1   120
#> [524,]  80  40      1          0        1   138
#> [525,]  78   4      0         59        1   112
#> [526,]  80  17      1         12        0   100
#> [527,]  76   7      0        161        0   151
#> [528,]  79  10      0         10        1   120
#> [529,]  80  15      1          0        1    90
#> [530,]  79  28      0        164        0   100
#> [531,]  78  32      0        180        1   130
#> [532,]  79   1      0         37        1   140
#> [533,]  81   3      0        180        0   184
#> [534,]  78   7      0          7        1   147
#> [535,]  78  15      0         15        0   165
#> [536,]  80   5      1          1        1   108
#> [537,]  78   4      0        180        0   175
#> [538,]  78  26      1          5        0   194
#> [539,]  76   1      0        166        0   131
#> [540,]  81   4      1          1        1   104
#> [541,]  78  20      1          0        1   109
#> [542,]  80   1      0          1        0   100
#> [543,]  77  10      1          8        1   130
#> [544,]  82   3      1          1        1   144
#> [545,]  79   6      0          6        0   152
#> [546,]  80   6      1          0        1   119
#> [547,]  78   2      0        180        0   148
#> [548,]  82   1      1          0        1    82
#> [549,]  77   4      0        180        1    98
#> [550,]  81   1      0        108        0   129
#> [551,]  79   1      0        125        0   193
#> [552,]  82  21      1          2        0   155
#> [553,]  82   5      0        180        0   110
#> [554,]  81  11      1          8        0   160
#> [555,]  81   5      0        177        0    41
#> [556,]  78   9      1          4        1   120
#> [557,]  79   1      0        180        1   170
#> [558,]  81  15      0        180        1   140
#> [559,]  80   7      1          0        1   146
#> [560,]  84   5      1          1        1    85
#> [561,]  81  20      1          9        0   170
#> [562,]  83   8      0          8        0   115
#> [563,]  80  11      1          8        0   110
#> [564,]  79   7      0        177        0   197
#> [565,]  79   0      1          0        1    96
#> [566,]  85   4      0        180        0    90
#> [567,]  81   2      1          1        0   198
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  80  13      1          8        1   140
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  80  30      1         13        0   220
#> [581,]  83   9      0        180        0   198
#> [582,]  83   3      0        114        0    98
#> [583,]  83   2      0        154        0   130
#> [584,]  82   0      0          2        1   100
#> [585,]  85   9      1          6        1   160
#> [586,]  83   1      0        180        0   160
#> [587,]  81   4      0          4        0   175
#> [588,]  84  15      1         13        1   110
#> [589,]  81   1      0          1        1   145
#> [590,]  82  16      1          8        0   103
#> [591,]  81   4      0          4        0   160
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  82  15      1          0        0   183
#> [595,]  80   2      0         88        0   135
#> [596,]  86   8      0          8        1   132
#> [597,]  84   6      0        165        0   145
#> [598,]  86   3      0          3        1   140
#> [599,]  82   9      0        180        1   134
#> [600,]  84   3      0        180        1   120
#> [601,]  81  13      0        180        0   152
#> [602,]  81   2      1          0        1   118
#> [603,]  81   4      0        180        0   160
#> [604,]  83   9      0        180        1   149
#> [605,]  82   1      0        180        1   193
#> [606,]  83   4      0          4        0   130
#> [607,]  86  12      1          0        1   132
#> [608,]  86   6      1          0        1   140
#> [609,]  83  19      0         43        0   150
#> [610,]  83  10      1          0        1   190
#> [611,]  88  14      1          3        1   130
#> [612,]  84   3      0          3        1   121
#> [613,]  83  13      1         12        0   170
#> [614,]  87   2      0        180        0   113
#> [615,]  84   9      0         92        1   110
#> [616,]  86   4      0         38        1   122
#> [617,]  86  13      0        177        0   163
#> [618,]  85   3      0          3        1   113
#> [619,]  86   6      0          6        1   117
#> [620,]  84  13      0         62        1   100
#> [621,]  85  22      0         22        1   184
#> [622,]  83   9      0         65        1   150
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  88   3      0        115        0   110
#> [626,]  88   4      0          4        0    86
#> [627,]  87   6      0        180        1   110
#> [628,]  85   8      0          8        1   136
#> [629,]  84   2      0        110        1   174
#> [630,]  87  29      0         29        1    97
#> [631,]  90  14      0         14        1   100
#> [632,]  88   1      0          1        0   135
#> [633,]  86   4      0        180        1   145
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  87   6      0        126        1   168
#> [639,]  86  10      0        180        1   137
#> [640,]  86   9      1          7        0   130
#> [641,]  90   4      1          0        0   121
#> [642,]  87   5      0         36        1   150
#> [643,]  90   5      1          0        1   125
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  94   3      0         26        1   144
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  92   2      0          2        0   112
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+   5.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+   2.0    1.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0    4.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 166.0+ 180.0+  16.0+ 180.0+   7.0+   6.0+
#> [101] 180.0+ 180.0+ 171.0+ 180.0+ 180.0+  28.0  180.0+   9.0+ 180.0+ 175.0+
#> [111] 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [121] 180.0+  15.0+ 180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0    3.0+
#> [131] 180.0+ 180.0+ 180.0+ 140.0  180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+
#> [141]   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+  15.0    4.0+ 180.0+
#> [151] 180.0+   5.0+ 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+
#> [171]   9.0+ 180.0+ 180.0+ 161.0+ 171.0+   3.0    1.0  180.0+ 180.0+  10.0+
#> [181] 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+ 180.0+   9.0+ 172.0+  24.0 
#> [191]   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 170.0 
#> [201] 180.0+   7.0    7.0+   6.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+  28.0 
#> [211]   5.0   18.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+
#> [231]  84.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+
#> [241] 167.0    6.0+ 180.0+ 180.0+  12.0  180.0+  14.0+ 180.0+  12.0  180.0+
#> [251] 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0 
#> [261] 180.0+   3.0  180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [271] 180.0+   2.0+ 180.0+ 180.0+   5.0+  13.0  180.0+  14.0+   3.0  180.0+
#> [281] 180.0+ 175.0+ 180.0+ 180.0+   8.0  180.0+   1.0  180.0+   1.0+  79.0 
#> [291]  80.0  180.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [301]   3.0  175.0  180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0 
#> [311] 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0  180.0+ 180.0+ 152.0+
#> [321]  93.0  180.0+   1.0   18.0+ 101.0    4.0    5.0    7.0+ 180.0+ 180.0+
#> [331] 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+ 180.0+ 180.0+ 180.0+  45.0 
#> [341]   3.0+ 180.0+   5.0+  97.0  180.0+   8.0+ 180.0+ 180.0+ 180.0+   7.0 
#> [351]   8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+   1.0    1.0 
#> [361]  60.0  180.0+ 132.0  180.0+ 180.0+ 162.0  124.0    9.0  180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+
#> [381] 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+   6.0  180.0+   7.0+   3.0+
#> [391] 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0    0.5 
#> [401] 180.0+ 180.0+   8.0    3.0   12.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [411] 180.0+ 175.0  180.0+  14.0+ 180.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0 
#> [421] 180.0+  15.0  180.0+   1.0    4.0+ 180.0+   1.0   57.0  180.0+  11.0 
#> [431]   3.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+
#> [441] 177.0+ 180.0+ 180.0+   5.0  180.0+   7.0   15.0+ 180.0+ 180.0+   3.0 
#> [451] 180.0+ 180.0+   6.0   85.0  180.0+  17.0+   0.5  180.0+  12.0  180.0+
#> [461] 180.0+   4.0    1.0  180.0+  52.0  180.0+ 180.0+ 180.0+ 180.0+   8.0 
#> [471]   5.0  180.0+ 180.0+   7.0+   3.0  168.0+ 180.0+ 176.0+  18.0  180.0+
#> [481]  47.0  180.0+  11.0  180.0+   8.0+   7.0   32.0  180.0+ 172.0  119.0 
#> [491]  12.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0    4.0+   2.0   11.0 
#> [501] 152.0+   3.0   24.0   32.0   23.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [511]   1.0    4.0  180.0+   2.0+ 180.0+   1.0  171.0    1.0   43.0    3.0 
#> [521] 180.0+ 180.0+   8.0   40.0   59.0   17.0  161.0   10.0+ 180.0+ 164.0 
#> [531] 180.0+  37.0  180.0+   7.0+  15.0+   5.0+ 180.0+ 171.0+ 166.0+  71.0 
#> [541]  20.0+   1.0   10.0  180.0+   6.0+   6.0  180.0+   1.0  180.0+ 108.0 
#> [551] 125.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [561]  20.0    8.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+ 180.0+   4.0    1.0 
#> [571] 180.0+  90.0  180.0+ 180.0+ 180.0+   4.0   71.0    1.0   19.0   30.0 
#> [581] 180.0+ 114.0  154.0    2.0  180.0+ 180.0+   4.0+ 180.0+   1.0   16.0+
#> [591]   4.0+ 180.0+   3.0   83.0   88.0    8.0  165.0    3.0  180.0+ 180.0+
#> [601] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   6.0   43.0  180.0+
#> [611]  14.0    3.0   13.0  180.0+  92.0   38.0  177.0    3.0+   6.0+  62.0 
#> [621]  22.0   65.0   11.0  180.0+ 115.0    4.0  180.0+   8.0  110.0   29.0 
#> [631]  14.0    1.0+ 180.0+ 145.0    3.0   24.0   11.0  126.0  180.0+ 180.0+
#> [641]   4.0   36.0   89.0   75.0    3.0+   1.0  158.0   74.0  180.0+ 168.0 
#> [651] 169.0   52.0    4.0    0.5  180.0+  50.0    1.0+   2.0  179.0+   8.0+
#> [661]  76.0  180.0+  16.0   67.0   12.0   26.0    7.0+   0.5   69.0    2.0 
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
#>    0.827952 
```
