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
#> min 0.00355    44   2.827 0.1620       6
#> 1se 0.07647    11   2.976 0.1536       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  38  12      1          8        1   120
#>  [13,]  36   5      1          0        1   115
#>  [14,]  33   6      1          1        1   115
#>  [15,]  38  16      1         10        0   160
#>  [16,]  38  12      1         11        1    92
#>  [17,]  42   3      1          1        1   130
#>  [18,]  37   1      1          0        1   146
#>  [19,]  40   2      1          1        1   148
#>  [20,]  42   2      0        180        1   100
#>  [21,]  38   5      1          3        0   125
#>  [22,]  42   2      0          2        0   140
#>  [23,]  42   2      0        180        0   100
#>  [24,]  42  12      1         10        1   170
#>  [25,]  43   2      1          1        1   116
#>  [26,]  44   5      1          1        0   170
#>  [27,]  45   3      0        180        1   154
#>  [28,]  41  10      1          8        0   150
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   9      1          7        0   110
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  43   2      0        180        1   140
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  44   3      1          0        1   180
#>  [39,]  46   7      1          2        0   166
#>  [40,]  43  29      0        180        1   180
#>  [41,]  45   4      1          0        0   124
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  46  13      1         10        0   100
#>  [45,]  44   0      1          0        1    96
#>  [46,]  43   3      1          0        1   124
#>  [47,]  45   8      1          0        1   117
#>  [48,]  49   5      0         73        1   136
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   2      1          1        1   122
#>  [51,]  44   4      1          0        1   114
#>  [52,]  47   2      0        180        0   108
#>  [53,]  44   9      1          8        1   135
#>  [54,]  45   5      0        180        1   190
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46   4      0        180        1   121
#>  [57,]  44   2      0        180        0   142
#>  [58,]  45   9      1          0        1   145
#>  [59,]  48   3      0        180        0   154
#>  [60,]  48  12      1         11        0   200
#>  [61,]  47   9      1          6        0   170
#>  [62,]  49   4      0        180        0   117
#>  [63,]  47  10      0         10        1   140
#>  [64,]  50   1      1          0        1   129
#>  [65,]  48   2      1          0        0   184
#>  [66,]  50   6      1          2        1   140
#>  [67,]  49   7      1          7        1   110
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  49   2      0          2        0   105
#>  [72,]  49  15      1         11        1   160
#>  [73,]  47   2      0        180        0   150
#>  [74,]  46   6      1          0        1   156
#>  [75,]  52   2      0        180        1   170
#>  [76,]  50   7      1          0        1    92
#>  [77,]  50   9      0        180        0   130
#>  [78,]  49   7      1          4        1    90
#>  [79,]  47   6      0        180        1   162
#>  [80,]  52   2      0        180        0   155
#>  [81,]  46   3      0        180        1   120
#>  [82,]  46   1      1          1        0   145
#>  [83,]  50   4      1          1        0   150
#>  [84,]  48   7      1          0        1   110
#>  [85,]  53   8      0         36        1   160
#>  [86,]  48  17      1         10        0   111
#>  [87,]  49   9      1          3        0   102
#>  [88,]  53   5      0        180        1   140
#>  [89,]  53   5      0         77        0   159
#>  [90,]  53   7      1          0        0   199
#>  [91,]  50   2      0          5        1   106
#>  [92,]  50  10      1          6        0   122
#>  [93,]  50  14      1         13        0   170
#>  [94,]  48   3      1          2        0   150
#>  [95,]  51  25      1          1        0   202
#>  [96,]  49   5      1          2        1   150
#>  [97,]  48   6      0        180        0   160
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  49  16      0         16        0   125
#> [101,]  54  23      1         10        0   131
#> [102,]  52   7      1          2        0   154
#> [103,]  54   9      1          1        0   130
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  55  28      1         13        1   160
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   2      0          2        0   145
#> [115,]  54   1      0        180        0   162
#> [116,]  54   7      1          0        1   100
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  54   3      0        180        1   180
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  53  10      1          9        0   172
#> [124,]  53  15      0         15        1    90
#> [125,]  55   6      0        180        1   100
#> [126,]  54  12      1          0        1   190
#> [127,]  54   3      0        180        0   128
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   7      1          2        0   129
#> [131,]  54   2      1          1        0   135
#> [132,]  54   2      1          1        1   176
#> [133,]  57   5      1          3        1   138
#> [134,]  57   1      0        180        1   156
#> [135,]  57   1      0          1        1   100
#> [136,]  56   4      1          0        1   140
#> [137,]  55  11      1          7        0   104
#> [138,]  53   3      1          0        1   200
#> [139,]  58   8      0          8        1   130
#> [140,]  55   3      1          1        1   156
#> [141,]  57   0      0          0        1   150
#> [142,]  53  21      1         13        1   130
#> [143,]  59   3      1          1        0   172
#> [144,]  57   4      0        180        1   119
#> [145,]  58   6      1          0        1    90
#> [146,]  53  15      1         10        1   130
#> [147,]  54  17      1          8        1   227
#> [148,]  55   9      1          2        1   147
#> [149,]  55  13      0        166        1   140
#> [150,]  56   5      0          5        1   150
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   3      1          2        0   140
#> [154,]  55   5      0          5        1   131
#> [155,]  54   7      1          0        1   141
#> [156,]  58   1      1          1        1   200
#> [157,]  55   5      1          0        0   140
#> [158,]  55   2      0          2        0   106
#> [159,]  59   9      1          1        1   125
#> [160,]  57   1      0        180        0   148
#> [161,]  60  11      1          9        0   106
#> [162,]  59   3      0        180        0   120
#> [163,]  58   4      1          0        1   160
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  57   5      0        180        1   130
#> [167,]  58  11      1          9        1   124
#> [168,]  55   5      1          0        1   160
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  61   9      0          9        1   160
#> [172,]  58   4      1          3        0   120
#> [173,]  60   0      1          0        1    80
#> [174,]  58   8      0        161        1   140
#> [175,]  61   4      1          3        0   151
#> [176,]  61   9      1          8        0   150
#> [177,]  58   1      0          1        1   100
#> [178,]  57  13      1         10        0   110
#> [179,]  57   2      1          0        1   116
#> [180,]  58  10      0         10        1   150
#> [181,]  57   4      1          3        0   138
#> [182,]  57  11      0        180        1   150
#> [183,]  56  14      0         45        0   130
#> [184,]  57   3      1          2        0   120
#> [185,]  56  13      1          6        1   158
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  58  11      0        172        1   135
#> [189,]  55   9      1          7        1   135
#> [190,]  57  15      1         13        1   110
#> [191,]  59   5      1          2        0   182
#> [192,]  58   5      1          1        1   135
#> [193,]  61   8      0         77        0   120
#> [194,]  61  13      0         13        0   210
#> [195,]  62  10      1          0        1   153
#> [196,]  62   7      1          2        1   180
#> [197,]  57   3      1          0        0   100
#> [198,]  61  18      0        170        0   140
#> [199,]  61  28      1          7        0   133
#> [200,]  58   8      1          3        1   150
#> [201,]  57   7      0        169        0   180
#> [202,]  61   6      0          6        0   134
#> [203,]  59  13      1          2        0   198
#> [204,]  57  12      1          9        1   120
#> [205,]  62   4      1          0        0   160
#> [206,]  58   3      1          0        1   146
#> [207,]  62   4      1          3        0   173
#> [208,]  59   1      0        180        0   155
#> [209,]  59  16      1          9        1   133
#> [210,]  63   6      0         28        1   120
#> [211,]  61  13      0         13        0   120
#> [212,]  57  18      1          9        1    93
#> [213,]  61   5      0          5        1   160
#> [214,]  57   2      1          1        0   159
#> [215,]  63   3      1          1        0   180
#> [216,]  63   1      0        180        1   130
#> [217,]  61   7      0        180        0   135
#> [218,]  63   4      1          3        0   222
#> [219,]  62   3      0        180        1   105
#> [220,]  64   4      0        180        0   130
#> [221,]  63   4      1          1        0   155
#> [222,]  59   8      0        180        1   140
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  58   2      0        180        0   127
#> [226,]  60   7      1          5        1   141
#> [227,]  60   7      1          1        1    90
#> [228,]  65  13      0        180        1   100
#> [229,]  63   1      0          1        0   162
#> [230,]  62   6      0        180        0   170
#> [231,]  61  15      1         13        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  60   3      0          3        0   168
#> [234,]  62   6      0          6        0   120
#> [235,]  61   6      1          1        1   117
#> [236,]  64  12      1         11        0   160
#> [237,]  64   6      1          0        1   140
#> [238,]  63  10      1          0        1   148
#> [239,]  63  14      1          9        0   123
#> [240,]  65  36      1         11        0   140
#> [241,]  66   3      1          1        0   127
#> [242,]  61  10      1          2        1   194
#> [243,]  64  32      1          9        1   160
#> [244,]  63  12      1          9        0   114
#> [245,]  63   7      0        180        0   120
#> [246,]  66   5      1          0        1   110
#> [247,]  65   8      1          0        0   168
#> [248,]  64   0      0          0        1    90
#> [249,]  60   6      0        180        0   130
#> [250,]  64  21      1         10        0   190
#> [251,]  61   4      0        180        1   113
#> [252,]  65   3      0        180        1   190
#> [253,]  63  16      1          7        1   110
#> [254,]  64   7      0        180        1   120
#> [255,]  66   6      1          1        1   130
#> [256,]  63  12      0         12        1   150
#> [257,]  62   3      1          1        1   199
#> [258,]  63   5      1          4        0   170
#> [259,]  62  13      1         11        0   180
#> [260,]  67  11      0         11        1   100
#> [261,]  64   2      0          2        0   201
#> [262,]  66  18      1          5        0   142
#> [263,]  62   9      0        180        0   145
#> [264,]  61  14      1          5        0   140
#> [265,]  61  15      1         10        0   130
#> [266,]  63   3      1          2        0   120
#> [267,]  63   2      1          0        0   140
#> [268,]  65   8      1          0        1   140
#> [269,]  67   6      0        180        1   170
#> [270,]  65  15      1         11        1   160
#> [271,]  64  13      1         12        1   150
#> [272,]  64   6      1          0        1   125
#> [273,]  66   7      1          0        1   115
#> [274,]  66  13      1          0        0   118
#> [275,]  64  14      1         13        1   150
#> [276,]  64   0      0          0        1   148
#> [277,]  67   4      1          3        0   130
#> [278,]  66   6      1          0        1   140
#> [279,]  68   5      0          5        1    90
#> [280,]  63  10      0         16        1   160
#> [281,]  66  14      0        180        0   130
#> [282,]  68  18      0        180        1   260
#> [283,]  65  17      1         14        1   100
#> [284,]  63   8      1          1        1   162
#> [285,]  65  18      1          3        0   120
#> [286,]  63   1      1          0        1   155
#> [287,]  63  10      0         18        1   130
#> [288,]  67  11      0         11        0   150
#> [289,]  68  11      0        180        0   160
#> [290,]  68  14      0         79        0   172
#> [291,]  66  12      1         10        1   150
#> [292,]  65  15      1         12        1   150
#> [293,]  65   4      1          2        1   145
#> [294,]  69  12      0         15        1   140
#> [295,]  66  15      1         13        1   160
#> [296,]  63   2      0        180        0   150
#> [297,]  65  11      1          6        0   130
#> [298,]  69  21      1         10        0   180
#> [299,]  69   6      0        180        1   100
#> [300,]  66   9      1          8        0   130
#> [301,]  69   1      1          0        0   170
#> [302,]  67   1      0        180        1   160
#> [303,]  65   1      1          0        0   133
#> [304,]  63   2      1          0        0    99
#> [305,]  65   6      0          6        0    80
#> [306,]  66  19      1         12        1   150
#> [307,]  67  12      1         12        0   160
#> [308,]  69   6      0         99        1   140
#> [309,]  65   4      1          1        0   130
#> [310,]  64  11      0         11        0   125
#> [311,]  64   4      0        180        1   140
#> [312,]  64   0      1          0        1   118
#> [313,]  66   7      1          5        1   131
#> [314,]  68   4      1          0        1   160
#> [315,]  69   4      1          3        1   150
#> [316,]  69   8      0         93        0   140
#> [317,]  66   6      0        180        0   140
#> [318,]  65   1      0          1        1   120
#> [319,]  65   6      0        101        1   115
#> [320,]  68   4      0          4        1   190
#> [321,]  71   3      0          5        0   112
#> [322,]  70   7      1          0        1   190
#> [323,]  68   7      0        150        0   210
#> [324,]  67   2      0        180        0   128
#> [325,]  66   9      1          3        1   151
#> [326,]  66   1      1          1        1   165
#> [327,]  70   4      1          0        1   180
#> [328,]  69   8      0        180        1   153
#> [329,]  70  14      0        171        0   166
#> [330,]  67   6      1          4        0   130
#> [331,]  68  18      1         14        1   170
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  65  14      1         13        1   150
#> [337,]  71   7      0          7        0   230
#> [338,]  66   2      0          2        1   228
#> [339,]  69   3      0          3        1   130
#> [340,]  70  22      1         13        0   103
#> [341,]  67   1      0         36        1   104
#> [342,]  67   5      0          5        0   130
#> [343,]  69   8      1          5        1   195
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  72   7      0          7        1   110
#> [347,]  67   3      0        180        0   110
#> [348,]  69  19      0        180        0   130
#> [349,]  68  18      0         18        1   100
#> [350,]  67  14      0        172        1   140
#> [351,]  66   2      0        180        0   130
#> [352,]  69   4      1          3        0   132
#> [353,]  68   2      0          7        1   130
#> [354,]  67  13      1          9        0   130
#> [355,]  70   3      0        123        0   130
#> [356,]  70   9      0        180        1   142
#> [357,]  72   5      1          4        0   170
#> [358,]  67  12      1          8        0   120
#> [359,]  69   1      0          1        1   110
#> [360,]  67   1      0          1        1    60
#> [361,]  67   4      0         60        1   136
#> [362,]  69   5      0         76        0   120
#> [363,]  67   8      1          0        1   130
#> [364,]  72  13      1         11        1   195
#> [365,]  68  10      1          8        1   160
#> [366,]  66  24      1         13        0   130
#> [367,]  70  35      1          0        1   105
#> [368,]  72  30      1          0        1   145
#> [369,]  68   7      1          2        0   135
#> [370,]  73  20      1          0        1   170
#> [371,]  71   6      0          9        0   120
#> [372,]  69  10      1          6        1   120
#> [373,]  70  11      0        180        1   210
#> [374,]  72  12      1         10        0   170
#> [375,]  67   8      0        180        1   170
#> [376,]  67   5      1          0        1   147
#> [377,]  73  13      0        152        1   130
#> [378,]  72   6      1          5        0   115
#> [379,]  71   1      0        173        1   188
#> [380,]  68  23      0        180        1   220
#> [381,]  70   3      0        180        0   121
#> [382,]  69   3      0        180        0   220
#> [383,]  71   3      1          2        0   150
#> [384,]  71   5      0        180        0   191
#> [385,]  69  16      1         10        1   140
#> [386,]  68   7      0        180        1   130
#> [387,]  72  16      1          1        1   130
#> [388,]  70   4      0        180        0   180
#> [389,]  73   7      0          7        1   140
#> [390,]  70  13      1          9        0   100
#> [391,]  72   6      0        180        1   130
#> [392,]  74   8      1          0        1    85
#> [393,]  73   4      0        180        1   154
#> [394,]  69   2      1          0        1   110
#> [395,]  71   3      1          1        0   150
#> [396,]  71  15      1         11        0   165
#> [397,]  74  20      0         20        1   180
#> [398,]  68   9      0        180        1   120
#> [399,]  71  20      1         10        0   140
#> [400,]  73   3      1          0        1   136
#> [401,]  70   5      1          0        1   190
#> [402,]  71  17      1         11        0   160
#> [403,]  71   8      1          7        0   149
#> [404,]  69  12      1          1        1   149
#> [405,]  70  26      1         11        1   120
#> [406,]  74   4      0          4        0   120
#> [407,]  73   6      0        180        0   110
#> [408,]  71   7      1          2        0   143
#> [409,]  74   3      0          3        1   150
#> [410,]  73  17      1         11        0   140
#> [411,]  70   4      1          0        1   140
#> [412,]  71  14      1         13        1   170
#> [413,]  72  15      1         13        0   156
#> [414,]  70   8      0          8        0   120
#> [415,]  75   1      0          1        0   133
#> [416,]  75   2      1          1        0   145
#> [417,]  72  10      1          9        1   160
#> [418,]  73  10      1         10        1   120
#> [419,]  74  15      1          9        1   179
#> [420,]  71   2      0         10        1   112
#> [421,]  75  13      1          1        1   130
#> [422,]  71  11      1          8        0   110
#> [423,]  72  15      1         12        1   120
#> [424,]  73  10      1          8        0   120
#> [425,]  70   7      1          4        0   184
#> [426,]  72   1      1          1        0   168
#> [427,]  73  10      0        180        0   162
#> [428,]  72  11      0         11        1   140
#> [429,]  76  25      1         12        1   170
#> [430,]  73  12      1         12        1   140
#> [431,]  72   4      1          0        1   197
#> [432,]  71   3      1          0        0   144
#> [433,]  73   4      0        180        0   124
#> [434,]  74  34      1          8        1   233
#> [435,]  71  32      1         12        1   107
#> [436,]  72   5      0        180        0   154
#> [437,]  72   3      0        180        0   160
#> [438,]  77  11      0         11        1   150
#> [439,]  73  15      0         15        1   160
#> [440,]  73  10      1         10        0   124
#> [441,]  74   7      0        180        1   150
#> [442,]  74   3      0          3        1   128
#> [443,]  76   1      0        180        0   114
#> [444,]  74   2      1          1        0   140
#> [445,]  74  19      1          4        1   200
#> [446,]  75  23      1         14        1   110
#> [447,]  74   2      0        180        0   190
#> [448,]  72   4      0         85        1   120
#> [449,]  72   4      1          3        0   160
#> [450,]  76  13      1         10        0   110
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  75  12      0         12        1   160
#> [455,]  74   8      1          0        1   105
#> [456,]  75   4      1          2        1   188
#> [457,]  74   6      0        180        0   160
#> [458,]  75   1      0          1        1   125
#> [459,]  74   2      0        180        0   111
#> [460,]  73   1      0         52        1   105
#> [461,]  73   0      0        180        0   156
#> [462,]  78  12      1         11        1   160
#> [463,]  76  44      1         10        0   105
#> [464,]  76   5      0        180        0   185
#> [465,]  74  10      1          0        1   135
#> [466,]  76   5      1          0        1   167
#> [467,]  73  33      1         12        1   175
#> [468,]  77   5      1          0        0   123
#> [469,]  73  10      1          9        0   146
#> [470,]  77  12      0        180        0   130
#> [471,]  77   1      1          0        1    90
#> [472,]  74   9      1          8        0   200
#> [473,]  79  10      1          8        0   190
#> [474,]  73   8      1          1        1   162
#> [475,]  73  11      1          2        1   110
#> [476,]  74   2      0        180        0   100
#> [477,]  78   7      0          7        1   133
#> [478,]  74  15      0        180        1   172
#> [479,]  78   8      1          6        1   110
#> [480,]  74   7      0          7        0   161
#> [481,]  76  13      1          1        1   170
#> [482,]  78  32      1          9        1   198
#> [483,]  80  10      1          6        1   147
#> [484,]  75   5      0        119        1   150
#> [485,]  75  12      1          1        1   120
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  79   4      0         80        0   145
#> [490,]  78  12      1          9        0   150
#> [491,]  78   2      1          1        0   130
#> [492,]  75   4      1          0        0   212
#> [493,]  77   2      1          0        1   143
#> [494,]  78  10      0        180        1   130
#> [495,]  76  11      1          0        0   120
#> [496,]  77  24      0         24        1   160
#> [497,]  79   8      0         32        1   120
#> [498,]  80   9      0         23        1   128
#> [499,]  80   6      0          6        1   150
#> [500,]  78   6      1          0        1   240
#> [501,]  79   2      1          0        1   121
#> [502,]  78  14      1          0        1   140
#> [503,]  78  11      1          8        1   118
#> [504,]  79   4      0          4        1   125
#> [505,]  76  10      1          8        0   180
#> [506,]  77   6      0          6        1   107
#> [507,]  75   2      1          1        1   204
#> [508,]  78  11      0        180        1   135
#> [509,]  76   1      0          1        1   140
#> [510,]  76   1      0          1        1    90
#> [511,]  78   7      1          0        1   110
#> [512,]  79   3      0          3        0   120
#> [513,]  77   7      0        180        1   170
#> [514,]  77   6      0          6        1   144
#> [515,]  79   4      1          0        1   120
#> [516,]  81   1      0        180        0   120
#> [517,]  80  15      1         12        1   150
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  79  10      0         10        1   120
#> [524,]  80  15      1          0        1    90
#> [525,]  79  28      0        164        0   100
#> [526,]  80   6      0        173        1   160
#> [527,]  79   1      0         37        1   140
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  80   5      1          1        1   108
#> [531,]  78   4      0        180        0   175
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  76   1      0        166        0   131
#> [535,]  81   4      1          1        1   104
#> [536,]  80   1      0          1        0   100
#> [537,]  77  10      1          8        1   130
#> [538,]  82   3      1          1        1   144
#> [539,]  77   5      0         85        0   188
#> [540,]  79   6      0          6        0   152
#> [541,]  80   6      1          0        1   119
#> [542,]  78   2      0        180        0   148
#> [543,]  77   4      0        180        1    98
#> [544,]  81   1      0        108        0   129
#> [545,]  79   1      0        125        0   193
#> [546,]  82  21      1          2        0   155
#> [547,]  84  22      1         10        0   180
#> [548,]  79   4      0          4        1   121
#> [549,]  80   6      0          6        1   110
#> [550,]  83   9      1          5        1   170
#> [551,]  79   7      1          6        0   130
#> [552,]  81  11      1          8        0   160
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  79   4      0          4        1   183
#> [556,]  79   1      0        180        1   170
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  80  11      1          8        0   110
#> [561,]  81   8      0        180        0   146
#> [562,]  79   0      1          0        1    96
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  84   4      0        167        0   198
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  81   1      0          1        1   150
#> [569,]  84   1      0         38        1   205
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  79   4      0          4        1    60
#> [575,]  82  19      0         19        0   120
#> [576,]  83   9      0        180        0   198
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  82   0      0          2        1   100
#> [581,]  85   9      1          6        1   160
#> [582,]  81   4      0          4        0   175
#> [583,]  84  15      1         13        1   110
#> [584,]  81   1      0          1        1   145
#> [585,]  81  12      0         12        1   163
#> [586,]  82  16      1          8        0   103
#> [587,]  86  12      0        180        1   120
#> [588,]  83  12      1          2        1   170
#> [589,]  82  15      1          0        0   183
#> [590,]  83   7      0        126        0   135
#> [591,]  86   8      0          8        1   132
#> [592,]  81  16      1          9        0   180
#> [593,]  84   6      0        165        0   145
#> [594,]  82   9      0        180        1   134
#> [595,]  81  13      0        180        0   152
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  82   1      0        180        1   193
#> [600,]  87   2      0          5        1   137
#> [601,]  86  12      1          0        1   132
#> [602,]  82  14      1         11        1   103
#> [603,]  84  16      0         70        1   150
#> [604,]  84   3      1          2        0   125
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  87   2      0        180        0   113
#> [611,]  84   9      0         92        1   110
#> [612,]  84   3      0        180        1   170
#> [613,]  85   3      0          3        1   113
#> [614,]  86   6      0          6        1   117
#> [615,]  84  13      0         62        1   100
#> [616,]  86   6      1          1        0   112
#> [617,]  88   4      0          4        0   100
#> [618,]  88   4      0          4        1   115
#> [619,]  85  22      0         22        1   184
#> [620,]  83   9      0         65        1   150
#> [621,]  86   9      1          7        1   142
#> [622,]  86   6      0         46        0   173
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  88   4      0          4        0    86
#> [627,]  89   4      0          4        1   153
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  87  15      1          9        1   138
#> [636,]  84   0      0        180        1   136
#> [637,]  89  10      0         46        1   170
#> [638,]  90  14      0         14        1   100
#> [639,]  88   1      0          1        0   135
#> [640,]  91   8      0          8        0   100
#> [641,]  87   2      0        180        0   160
#> [642,]  91  10      0        145        0   135
#> [643,]  86   3      1          0        1    80
#> [644,]  88   7      0         24        0   119
#> [645,]  88   8      0         50        1   154
#> [646,]  86   9      1          7        0   130
#> [647,]  91   1      0          1        1    74
#> [648,]  87   5      0         36        1   150
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  89  52      0         52        1   130
#> [655,]  92   7      0          7        1   110
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  92   4      0         76        1   149
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [21]   5.0+   2.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [71]   2.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+  77.0  180.0+
#>  [91]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+  16.0+
#> [101] 152.0+   7.0+ 180.0+ 180.0+ 180.0+  28.0    6.0+   1.0    9.0+ 180.0+
#> [111] 180.0+ 180.0+ 175.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+ 180.0+  15.0+ 180.0+  12.0+ 180.0+   2.0    3.0+ 180.0+
#> [131] 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+   8.0+ 180.0+
#> [141]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+
#> [151] 180.0+ 180.0+ 180.0+   5.0+ 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171]   9.0+ 180.0+   0.5  161.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+  10.0+
#> [181] 180.0+ 180.0+  45.0    3.0+ 180.0+ 180.0+   9.0+ 172.0+  24.0   15.0 
#> [191] 180.0+ 180.0+  77.0   13.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+
#> [201] 169.0    6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [211]  13.0+  18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221]   4.0+ 180.0+   9.0    7.0+ 180.0+  84.0  180.0+ 180.0+   1.0  180.0+
#> [231] 180.0+   4.0+   3.0+   6.0+ 180.0+  12.0  180.0+ 180.0+  14.0+  36.0 
#> [241]   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+  11.0+
#> [261]   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0  180.0+ 180.0+
#> [271]  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+ 180.0+ 180.0+   5.0   16.0 
#> [281] 180.0+ 180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0 
#> [291]  80.0   15.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+
#> [301] 175.0  180.0+ 180.0+ 180.0+   6.0   19.0+  12.0   99.0  180.0+  11.0+
#> [311] 180.0+   0.5    7.0+ 180.0+ 152.0+  93.0  180.0+   1.0  101.0    4.0 
#> [321]   5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0    6.0 
#> [331] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+   7.0+   2.0    3.0+ 180.0+
#> [341]  36.0    5.0+ 180.0+  97.0  180.0+   7.0  180.0+ 180.0+  18.0  172.0+
#> [351] 180.0+ 180.0+   7.0   13.0+ 123.0  180.0+ 180.0+ 180.0+   1.0    1.0 
#> [361]  60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+ 162.0    7.0+ 124.0 
#> [371]   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+ 173.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+   7.0+  13.0+
#> [391] 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0  180.0+
#> [401] 180.0+ 180.0+   8.0   12.0  180.0+   4.0+ 180.0+ 180.0+   3.0  180.0+
#> [411] 180.0+  14.0+ 180.0+   8.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0 
#> [421]  13.0  180.0+ 180.0+  10.0  104.0+   1.0  180.0+  11.0  180.0+  12.0 
#> [431] 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+  15.0+  10.0 
#> [441] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 174.0+
#> [451]   7.0    0.5  180.0+  12.0  180.0+  46.0  180.0+   1.0  180.0+  52.0 
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+ 180.0+
#> [471]   1.0  168.0+ 180.0+ 180.0+  11.0  180.0+   7.0  180.0+   8.0+   7.0 
#> [481] 180.0+  32.0   10.0  119.0   12.0    8.0  180.0+ 180.0+  80.0  180.0+
#> [491] 180.0+   4.0+   2.0  180.0+  11.0   24.0   32.0   23.0    6.0  180.0+
#> [501] 180.0+ 180.0+  11.0    4.0   10.0+   6.0    2.0+ 180.0+   1.0    1.0 
#> [511]  43.0    3.0  180.0+   6.0  138.0  180.0+ 180.0+   8.0   40.0   59.0 
#> [521]  17.0  161.0   10.0+ 180.0+ 164.0  173.0   37.0  180.0+ 175.0+   5.0+
#> [531] 180.0+   3.0  171.0+ 166.0+  71.0    1.0   10.0  180.0+  85.0    6.0+
#> [541]   6.0  180.0+ 180.0+ 108.0  125.0  180.0+ 180.0+   4.0    6.0    9.0+
#> [551] 180.0+ 180.0+ 169.0   70.0    4.0  180.0+   7.0+ 180.0+  20.0  180.0+
#> [561] 180.0+   0.5  180.0+   2.0  167.0   62.0  180.0+   1.0   38.0  180.0+
#> [571] 180.0+ 180.0+  89.0    4.0   19.0  180.0+ 180.0+ 114.0  180.0+   2.0 
#> [581] 180.0+   4.0+ 180.0+   1.0   12.0   16.0+ 180.0+  77.0   83.0  126.0 
#> [591]   8.0  180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#> [601] 180.0+ 174.0   70.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+
#> [611]  92.0  180.0+   3.0+   6.0+  62.0    6.0+   4.0+   4.0   22.0   65.0 
#> [621]  11.0   46.0    3.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+   1.0+
#> [631] 180.0+   8.0  110.0   29.0  180.0+ 180.0+  46.0   14.0    1.0+   8.0 
#> [641] 180.0+ 145.0    3.0   24.0   50.0  180.0+   1.0   36.0    3.0+   1.0 
#> [651] 158.0   74.0  180.0+  52.0    7.0  180.0+   4.0  180.0+   2.0  179.0+
#> [661]  76.0   67.0   12.0    8.0   26.0   53.0    7.0+   0.5   69.0    3.0 
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
#>   0.8406454 
```
