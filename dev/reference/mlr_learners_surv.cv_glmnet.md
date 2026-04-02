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
#> min 0.00345    43   2.727 0.1177       6
#> 1se 0.06179    12   2.842 0.1158       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  35  10      1          9        0   106
#>   [2,]  34   5      0          5        0   120
#>   [3,]  35   2      1          1        1   112
#>   [4,]  37   9      0        180        1   151
#>   [5,]  38  13      1          0        1   161
#>   [6,]  38   2      0        115        0   150
#>   [7,]  36   1      0        180        1   155
#>   [8,]  38  12      1          8        1   120
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  37   1      1          0        1   146
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40   6      0        180        1   138
#>  [16,]  40  11      1         10        1   120
#>  [17,]  43   3      1          0        1   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42  15      1         13        1   125
#>  [22,]  43   2      1          1        1   116
#>  [23,]  42   2      0        180        1   124
#>  [24,]  45   3      0        180        1   154
#>  [25,]  41  10      1          8        0   150
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  43   2      0        180        1   140
#>  [32,]  45   2      0        180        1   140
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  44   3      1          0        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  45   8      1          0        1   117
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   2      1          1        1   122
#>  [48,]  46   6      1          0        1   100
#>  [49,]  44   4      1          0        1   114
#>  [50,]  44   9      1          8        1   135
#>  [51,]  46   4      0        180        1   121
#>  [52,]  44   2      0        180        0   142
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  47   3      1          1        1   120
#>  [56,]  48   3      0        180        0   154
#>  [57,]  48  12      1         11        0   200
#>  [58,]  46   3      1          0        1   119
#>  [59,]  49   4      0        180        0   117
#>  [60,]  47  10      0         10        1   140
#>  [61,]  50   1      1          0        1   129
#>  [62,]  48   2      1          0        0   184
#>  [63,]  47   7      0        180        0   145
#>  [64,]  50   6      1          2        1   140
#>  [65,]  49   7      1          7        1   110
#>  [66,]  46   9      1          9        1   122
#>  [67,]  50   7      0        180        1   110
#>  [68,]  49   2      0          2        0   105
#>  [69,]  47   2      0        180        0   150
#>  [70,]  49  23      0        179        1   112
#>  [71,]  46   6      1          0        1   156
#>  [72,]  52   2      0        180        1   170
#>  [73,]  50   7      1          0        1    92
#>  [74,]  50   4      0          4        1   100
#>  [75,]  51   3      1          2        0   113
#>  [76,]  50   1      1          0        0   150
#>  [77,]  49   7      1          4        1    90
#>  [78,]  47   6      0        180        1   162
#>  [79,]  52   2      0        180        0   155
#>  [80,]  46   1      1          1        0   145
#>  [81,]  48   7      1          0        1   110
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  52   4      1          4        0   152
#>  [85,]  49  15      0        180        1   160
#>  [86,]  53   5      0        180        1   140
#>  [87,]  54  17      1         12        1   102
#>  [88,]  53   5      0         77        0   159
#>  [89,]  51   3      1          1        0   140
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  10      1          6        0   122
#>  [92,]  48   3      1          2        0   150
#>  [93,]  51  25      1          1        0   202
#>  [94,]  48   6      0        180        0   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  55   3      1          1        0   150
#>  [97,]  54  23      1         10        0   131
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   4      1          2        0   150
#> [100,]  50   5      1          4        1   150
#> [101,]  52   4      0        180        0   183
#> [102,]  50   3      0        174        1   153
#> [103,]  55  28      1         13        1   160
#> [104,]  49   1      0          1        1   110
#> [105,]  50   7      1          1        0   156
#> [106,]  53   9      0          9        1    95
#> [107,]  53   8      1          0        1   130
#> [108,]  50   7      1          0        1   127
#> [109,]  56   4      1          1        1   130
#> [110,]  55   2      0          2        0   145
#> [111,]  54   1      0        180        0   162
#> [112,]  56   3      0        180        1   193
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  52   8      0        180        0   119
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  10      1          9        0   172
#> [119,]  53  15      0         15        1    90
#> [120,]  55   6      1          5        1   138
#> [121,]  55   2      0        134        1   140
#> [122,]  55   1      0          2        0   130
#> [123,]  57   3      0          3        0   120
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  54   2      1          1        1   176
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0        180        1   156
#> [129,]  55  11      1          7        0   104
#> [130,]  52  15      1         14        0   130
#> [131,]  53   3      1          0        1   200
#> [132,]  57  10      0        180        1   170
#> [133,]  55   3      1          1        1   156
#> [134,]  57   0      0          0        1   150
#> [135,]  53  21      1         13        1   130
#> [136,]  53  15      1         10        1   130
#> [137,]  54  17      1          8        1   227
#> [138,]  55  13      0        166        1   140
#> [139,]  57   4      1          2        1   185
#> [140,]  53   4      0        147        1   145
#> [141,]  55   3      1          2        0   140
#> [142,]  55   5      0          5        1   131
#> [143,]  54   7      1          0        1   141
#> [144,]  56   4      0          4        0   164
#> [145,]  59  15      1         10        0   140
#> [146,]  58   9      1          0        1   180
#> [147,]  58   1      1          1        1   200
#> [148,]  55   5      1          0        0   140
#> [149,]  56   7      1          5        1   120
#> [150,]  55   2      0          2        0   106
#> [151,]  59   9      1          1        1   125
#> [152,]  57   1      0        180        0   148
#> [153,]  60  11      1          9        0   106
#> [154,]  58   4      1          0        1   160
#> [155,]  60   5      1          1        0   138
#> [156,]  58  11      1          9        1   124
#> [157,]  55   5      1          0        1   160
#> [158,]  59   6      1          0        1   140
#> [159,]  59   5      0        180        1   155
#> [160,]  58  26      1          0        1   189
#> [161,]  61   9      0          9        1   160
#> [162,]  58   4      1          3        0   120
#> [163,]  60   0      1          0        1    80
#> [164,]  59   2      1          1        0   140
#> [165,]  61   4      1          3        0   151
#> [166,]  61   9      1          8        0   150
#> [167,]  61   3      1          2        1   102
#> [168,]  58   1      0          1        1   100
#> [169,]  61  20      1         13        0   130
#> [170,]  58  10      0         10        1   150
#> [171,]  57   4      1          3        0   138
#> [172,]  61   3      0         17        0   143
#> [173,]  56  14      0         45        0   130
#> [174,]  57   3      1          2        0   120
#> [175,]  58  19      1         13        1   140
#> [176,]  56  13      1          6        1   158
#> [177,]  56  18      1         11        1   165
#> [178,]  59   9      1          0        1    80
#> [179,]  55   4      1          3        1   160
#> [180,]  58  11      0        172        1   135
#> [181,]  60  12      1          0        1   114
#> [182,]  55   9      1          7        1   135
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  59  11      1          8        1   190
#> [186,]  57   1      0          1        0   126
#> [187,]  59   5      1          2        0   182
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  58   8      1          5        0   152
#> [191,]  62  10      1          0        1   153
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  61  28      1          7        0   133
#> [195,]  57   7      0        169        0   180
#> [196,]  61   7      0          7        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  59  13      1          2        0   198
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          3        0   173
#> [202,]  58   2      0         30        0   202
#> [203,]  59   1      0        180        0   155
#> [204,]  59  16      1          9        1   133
#> [205,]  61   5      0          5        1   110
#> [206,]  57  18      1          9        1    93
#> [207,]  61   5      0          5        1   160
#> [208,]  58  11      1          9        0   179
#> [209,]  57   2      1          1        0   159
#> [210,]  62  17      1         10        1   180
#> [211,]  62   1      1          0        1   172
#> [212,]  58   7      0        180        1   150
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  63   4      1          3        0   222
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  60  18      1         13        0   132
#> [220,]  58   9      1          9        0   110
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  60   7      1          5        1   141
#> [224,]  60   7      0          7        0   140
#> [225,]  59   5      1          1        0   148
#> [226,]  65  13      0        180        1   100
#> [227,]  63   1      0          1        0   162
#> [228,]  63   1      0          1        0   130
#> [229,]  62   6      0        180        0   170
#> [230,]  60   3      0          3        0   168
#> [231,]  63  12      1         10        0   200
#> [232,]  59  10      0        180        1   130
#> [233,]  61   6      1          1        1   117
#> [234,]  66   1      1          0        1   120
#> [235,]  64   6      1          0        1   140
#> [236,]  63   4      1          3        0   162
#> [237,]  66   3      1          1        0   127
#> [238,]  61  10      1          2        1   194
#> [239,]  64  32      1          9        1   160
#> [240,]  63  12      1          9        0   114
#> [241,]  63   7      0        180        0   120
#> [242,]  66   5      1          0        1   110
#> [243,]  65   8      1          0        0   168
#> [244,]  65  10      1          8        1   120
#> [245,]  64   0      0          0        1    90
#> [246,]  61  12      1         11        0   154
#> [247,]  64   9      0        180        0   150
#> [248,]  61   4      0        180        1   113
#> [249,]  65   3      0        180        1   190
#> [250,]  63  12      0         12        1   150
#> [251,]  62   3      1          1        1   199
#> [252,]  63   2      1          1        0   180
#> [253,]  62  13      1         11        0   180
#> [254,]  64   2      0          2        0   201
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  61  14      1          5        0   140
#> [258,]  63   9      1          8        1   160
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  65   8      1          0        1   140
#> [262,]  67   6      0        180        1   170
#> [263,]  65  15      1         11        1   160
#> [264,]  64  13      1         12        1   150
#> [265,]  66   7      1          0        1   115
#> [266,]  66  13      1          0        0   118
#> [267,]  64  14      1         13        1   150
#> [268,]  65   3      0          3        0   105
#> [269,]  67   4      1          3        0   130
#> [270,]  66   3      1          0        1   135
#> [271,]  66   6      1          0        1   140
#> [272,]  65   2      1          1        1   170
#> [273,]  68   1      0        180        1   166
#> [274,]  64  10      1          9        1   110
#> [275,]  63   7      1          0        0   162
#> [276,]  67   8      1          1        1   130
#> [277,]  66  14      0        180        0   130
#> [278,]  65  17      1         14        1   100
#> [279,]  63   8      1          1        1   162
#> [280,]  63   1      1          0        1   155
#> [281,]  63  10      0         18        1   130
#> [282,]  67  11      0         11        0   150
#> [283,]  66  12      1         10        1   150
#> [284,]  65  15      1         12        1   150
#> [285,]  66  11      1          0        0   100
#> [286,]  65   4      1          2        1   145
#> [287,]  69  12      0         15        1   140
#> [288,]  66  15      1         13        1   160
#> [289,]  69  21      1         10        0   180
#> [290,]  66   9      1          8        0   130
#> [291,]  68  14      1         13        1   140
#> [292,]  65   8      1          0        1    90
#> [293,]  67   1      0        180        1   160
#> [294,]  65   1      1          0        0   133
#> [295,]  63   2      1          0        0    99
#> [296,]  67   2      0        180        0   184
#> [297,]  65   6      0          6        0    80
#> [298,]  66  19      1         12        1   150
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64  11      0         11        0   125
#> [304,]  66   7      1          5        1   131
#> [305,]  66   4      0        180        0   177
#> [306,]  69   4      1          3        1   150
#> [307,]  65  13      1         12        1   130
#> [308,]  69  17      1         10        0   140
#> [309,]  69   8      0         93        0   140
#> [310,]  68  18      1          0        1   160
#> [311,]  65   6      0        101        1   115
#> [312,]  68   4      0          4        1   190
#> [313,]  71   3      0          5        0   112
#> [314,]  67   2      0        180        0   128
#> [315,]  70   4      1          0        1   180
#> [316,]  69   8      0        180        1   153
#> [317,]  66   4      0        180        0   130
#> [318,]  67  10      1          9        0   200
#> [319,]  67   6      1          4        0   130
#> [320,]  68  18      1         14        1   170
#> [321,]  69   0      0          0        1   148
#> [322,]  65   2      0        180        0   130
#> [323,]  69   3      1          2        0   151
#> [324,]  67  14      1         13        0   130
#> [325,]  65  14      1         13        1   150
#> [326,]  69   8      0        180        1   180
#> [327,]  71   7      0          7        0   230
#> [328,]  66   2      0          2        1   228
#> [329,]  71   6      0         45        1   158
#> [330,]  69   5      0          5        1   142
#> [331,]  69   3      0          3        1   130
#> [332,]  70  22      1         13        0   103
#> [333,]  67   1      0         36        1   104
#> [334,]  68   6      0        180        0   145
#> [335,]  69   8      1          5        1   195
#> [336,]  69   6      1          4        1   174
#> [337,]  72   7      0          7        1   110
#> [338,]  69   8      1          7        1   108
#> [339,]  67   3      0        180        0   110
#> [340,]  66   2      1          1        0   123
#> [341,]  69  19      0        180        0   130
#> [342,]  68  18      0         18        1   100
#> [343,]  67  14      0        172        1   140
#> [344,]  68   2      0          7        1   130
#> [345,]  67  13      1          9        0   130
#> [346,]  70   3      0        123        0   130
#> [347,]  70   9      0        180        1   142
#> [348,]  72   5      1          4        0   170
#> [349,]  67  22      1          1        1   140
#> [350,]  67  12      1          8        0   120
#> [351,]  67   1      0          1        1    60
#> [352,]  67   4      0         60        1   136
#> [353,]  69   5      0         76        0   120
#> [354,]  67   8      1          0        1   130
#> [355,]  68  10      1          8        1   160
#> [356,]  70  35      1          0        1   105
#> [357,]  72  30      1          0        1   145
#> [358,]  70   7      0          7        0   102
#> [359,]  73  20      1          0        1   170
#> [360,]  71   6      0          9        0   120
#> [361,]  69  10      1          6        1   120
#> [362,]  70  11      0        180        1   210
#> [363,]  72  19      1          8        0   120
#> [364,]  72  12      1         10        0   170
#> [365,]  67   8      0        180        1   170
#> [366,]  67   5      1          0        1   147
#> [367,]  67   9      0        180        0   158
#> [368,]  73  13      0        152        1   130
#> [369,]  70   5      0        180        0   150
#> [370,]  72   2      0          2        1   100
#> [371,]  67   4      1          1        0   134
#> [372,]  72   6      1          5        0   115
#> [373,]  71   1      0        173        1   188
#> [374,]  70   3      0        180        0   121
#> [375,]  71   5      0        180        0   191
#> [376,]  73   6      0        180        1   117
#> [377,]  69   8      1          1        0   164
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  70   4      0        180        0   180
#> [381,]  72   8      1          1        1   150
#> [382,]  71   2      1          0        1   180
#> [383,]  70   3      0          3        1   159
#> [384,]  70  13      1          9        0   100
#> [385,]  73   0      0        180        1   161
#> [386,]  74   8      1          0        1    85
#> [387,]  69   2      1          0        1   110
#> [388,]  71   3      1          1        0   150
#> [389,]  71  15      1         11        0   165
#> [390,]  68   9      0        180        1   120
#> [391,]  71  20      1         10        0   140
#> [392,]  74   0      1          0        1    90
#> [393,]  73   3      1          0        1   136
#> [394,]  70   5      1          0        1   190
#> [395,]  71  17      1         11        0   160
#> [396,]  71   8      1          7        0   149
#> [397,]  71   3      1          2        1   190
#> [398,]  69  12      1          1        1   149
#> [399,]  70  26      1         11        1   120
#> [400,]  74   4      0          4        0   120
#> [401,]  73   4      0         58        1   160
#> [402,]  72   5      1          3        1   160
#> [403,]  70   3      0        180        1   154
#> [404,]  73   6      0        180        0   110
#> [405,]  72  15      1          0        1   150
#> [406,]  71   7      1          2        0   143
#> [407,]  73  17      1         11        0   140
#> [408,]  69   2      1          1        1    80
#> [409,]  70   4      1          0        1   140
#> [410,]  74   7      1          0        1   117
#> [411,]  72  10      1          8        1   153
#> [412,]  70   8      0          8        0   120
#> [413,]  75   1      0          1        0   133
#> [414,]  75   2      1          1        0   145
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  71   2      0         10        1   112
#> [418,]  73   1      0          1        1    80
#> [419,]  75   9      1          7        0   140
#> [420,]  71   4      0          4        0   134
#> [421,]  72  15      1         12        1   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  73  10      0        180        0   162
#> [425,]  72  11      0         11        1   140
#> [426,]  70   3      0          3        0   150
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  73  12      1         12        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  71   3      1          0        0   144
#> [432,]  73   5      0        180        0   126
#> [433,]  73   4      0        180        0   124
#> [434,]  74  34      1          8        1   233
#> [435,]  72   3      0        180        0   160
#> [436,]  77  11      0         11        1   150
#> [437,]  77   4      0          4        0   185
#> [438,]  73  15      0         15        1   160
#> [439,]  71  16      0        180        0   140
#> [440,]  73  10      1         10        0   124
#> [441,]  74   7      0        180        1   150
#> [442,]  76   1      0        180        0   114
#> [443,]  76   8      1          0        1   141
#> [444,]  73   6      0          6        1   114
#> [445,]  75  23      1         14        1   110
#> [446,]  72   4      0         85        1   120
#> [447,]  72   4      1          3        0   160
#> [448,]  76  17      1          0        1   200
#> [449,]  76  13      1         10        0   110
#> [450,]  75   4      1          0        1   122
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  74   8      1          0        1   105
#> [455,]  74   6      0        180        0   160
#> [456,]  76   4      0          4        1   155
#> [457,]  75   1      0          1        1   125
#> [458,]  73   0      0        180        0   156
#> [459,]  72   5      0        180        0   120
#> [460,]  78  12      1         11        1   160
#> [461,]  76  44      1         10        0   105
#> [462,]  76   5      0        180        0   185
#> [463,]  74  10      1          0        1   135
#> [464,]  76   5      1          0        1   167
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  73  33      1         12        1   175
#> [468,]  77   5      1          0        0   123
#> [469,]  77  12      1          9        1   100
#> [470,]  73  10      1          9        0   146
#> [471,]  77  12      0        180        0   130
#> [472,]  76  12      1         11        1   120
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  74   6      0         79        1   140
#> [476,]  74   9      1          8        0   200
#> [477,]  79  10      1          8        0   190
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  76  29      0         47        0    90
#> [481,]  73   8      1          1        1   162
#> [482,]  73  11      1          2        1   110
#> [483,]  78   8      1          6        1   110
#> [484,]  76  13      1          1        1   170
#> [485,]  78  32      1          9        1   198
#> [486,]  80  10      1          6        1   147
#> [487,]  78   0      0        180        1   212
#> [488,]  78  13      1          5        0   130
#> [489,]  75  12      1          1        1   120
#> [490,]  78  15      0        180        1   270
#> [491,]  80   8      0          8        1   120
#> [492,]  75  13      1          6        0   150
#> [493,]  74  10      1          8        0   135
#> [494,]  76   1      0          1        1    83
#> [495,]  79   4      0         80        0   145
#> [496,]  78  12      1          9        0   150
#> [497,]  75   4      1          0        0   212
#> [498,]  77   2      1          0        1   143
#> [499,]  78  10      0        180        1   130
#> [500,]  76  11      1          0        0   120
#> [501,]  75  11      1          4        0   162
#> [502,]  77  24      0         24        1   160
#> [503,]  80   9      0         23        1   128
#> [504,]  80   6      0          6        1   150
#> [505,]  78   6      1          0        1   240
#> [506,]  76   3      1          0        1   140
#> [507,]  78  11      1          1        1   140
#> [508,]  79  11      0        180        0   160
#> [509,]  79   2      1          0        1   121
#> [510,]  78  14      1          0        1   140
#> [511,]  76   4      0          4        1   160
#> [512,]  79   4      0          4        1   125
#> [513,]  76  10      1          8        0   180
#> [514,]  76  12      1         10        1   127
#> [515,]  80   3      1          0        1   120
#> [516,]  75   2      1          1        1   204
#> [517,]  78  11      0        180        1   135
#> [518,]  76   1      0          1        1   140
#> [519,]  77  31      1          3        1   161
#> [520,]  76   1      0          1        1    90
#> [521,]  79   4      1          0        1   120
#> [522,]  81   1      0        180        0   120
#> [523,]  78   4      0         59        1   112
#> [524,]  80  15      1          0        1    90
#> [525,]  80   9      0        118        1   186
#> [526,]  79   1      0         37        1   140
#> [527,]  81   3      0        180        0   184
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  80   5      1          1        1   108
#> [531,]  78   4      0        180        0   175
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  78  20      1          0        1   109
#> [535,]  78   3      1          1        1   152
#> [536,]  82   3      1          1        1   144
#> [537,]  77   5      0         85        0   188
#> [538,]  80   2      1          1        0   168
#> [539,]  78   2      0        180        0   148
#> [540,]  80   5      0          5        1   130
#> [541,]  79  10      0        180        1   150
#> [542,]  81   1      0        108        0   129
#> [543,]  78  12      0        180        0   134
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  84  22      1         10        0   180
#> [547,]  79   4      0          4        1   121
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  79   7      1          6        0   130
#> [552,]  83   4      0        103        0    97
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  79   4      0          4        1   183
#> [556,]  78   9      1          4        1   120
#> [557,]  79   1      0        180        1   170
#> [558,]  81  15      0        180        1   140
#> [559,]  80   7      1          0        1   146
#> [560,]  81  16      0         16        1   110
#> [561,]  80   6      1          0        1   150
#> [562,]  80  11      1          8        0   110
#> [563,]  79   7      0        177        0   197
#> [564,]  85   4      0        180        0    90
#> [565,]  81   2      1          1        0   198
#> [566,]  83   2      0          2        1   155
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  84   5      0        180        1   203
#> [570,]  81   1      0          1        1   150
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  85   3      1          2        1   160
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  83   1      0          1        1   100
#> [578,]  82  19      0         19        0   120
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  82   5      1          0        1   146
#> [587,]  81   4      0          4        0   160
#> [588,]  86  12      0        180        1   120
#> [589,]  81  19      1         14        0   120
#> [590,]  82   3      1          2        0   130
#> [591,]  82  15      1          0        0   183
#> [592,]  80   2      0         88        0   135
#> [593,]  83   7      0        126        0   135
#> [594,]  81  16      1          9        0   180
#> [595,]  82   9      0        180        1   134
#> [596,]  84   3      0        180        1   120
#> [597,]  81  13      0        180        0   152
#> [598,]  85   3      0          3        1   118
#> [599,]  81   2      1          0        1   118
#> [600,]  83   9      0        180        1   149
#> [601,]  82   1      0        180        1   193
#> [602,]  83   4      0          4        0   130
#> [603,]  86  12      1          0        1   132
#> [604,]  82  14      1         11        1   103
#> [605,]  86   6      1          0        1   140
#> [606,]  84   3      1          2        0   125
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  84   7      1          2        0   148
#> [611,]  87   2      0        180        0   113
#> [612,]  84   9      0         92        1   110
#> [613,]  84   3      0        180        1   170
#> [614,]  86   4      0         38        1   122
#> [615,]  85   3      0          3        1   113
#> [616,]  86   6      0          6        1   117
#> [617,]  84  13      0         62        1   100
#> [618,]  86   6      1          1        0   112
#> [619,]  88   4      0          4        0   100
#> [620,]  88   4      0          4        1   115
#> [621,]  83   9      0         65        1   150
#> [622,]  86   9      1          7        1   142
#> [623,]  87   2      0        180        1   130
#> [624,]  88   3      0        115        0   110
#> [625,]  88   2      0        180        1    68
#> [626,]  83   3      0          3        1   130
#> [627,]  87   8      0          8        1   157
#> [628,]  86  15      1          8        1   109
#> [629,]  89   4      0          4        1   153
#> [630,]  89   5      0        119        1   140
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  87  15      1          9        1   138
#> [636,]  89  10      0         46        1   170
#> [637,]  88   1      0          1        0   135
#> [638,]  86   4      0        180        1   145
#> [639,]  87   2      0        180        0   160
#> [640,]  87   6      1          0        0   125
#> [641,]  91  10      0        145        0   135
#> [642,]  86   3      1          0        1    80
#> [643,]  88   8      0         50        1   154
#> [644,]  90  11      1         10        1   186
#> [645,]  87   6      0        126        1   168
#> [646,]  91   1      0          1        1    74
#> [647,]  87  43      0        178        1   130
#> [648,]  87   5      0         36        1   150
#> [649,]  88   3      1          2        0   159
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  89   2      0        168        0   118
#> [654,]  91   5      0        169        1   176
#> [655,]  92   7      0          7        1   110
#> [656,]  89   4      0          4        1   159
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+  12.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+
#>  [61] 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  180.0+ 179.0+
#>  [71] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   7.0   36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 152.0+   7.0+ 180.0+ 171.0+
#> [101] 180.0+ 174.0+  28.0    1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+
#> [121] 134.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 171.0+ 166.0+   4.0+ 147.0+
#> [141] 180.0+   5.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+
#> [161]   9.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+   3.0    1.0  180.0+  10.0+
#> [171] 180.0+  17.0   45.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+
#> [181] 172.0+  24.0  180.0+   8.0  180.0+   1.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [191] 180.0+ 180.0+ 180.0+  94.0  169.0    7.0    7.0+   6.0  180.0+ 180.0+
#> [201] 180.0+  30.0  180.0+ 180.0+   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+
#> [211]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [221]   7.0+  22.0   84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   3.0+
#> [231] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+  88.0  180.0+  12.0 
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   0.5   12.0+ 180.0+ 180.0+ 180.0+  12.0 
#> [251] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0 
#> [261]  15.0  180.0+ 180.0+  13.0  179.0+ 166.0+  14.0+   3.0  180.0+   3.0+
#> [271] 180.0+ 175.0+ 180.0+ 180.0+   7.0+   8.0  180.0+ 180.0+ 180.0+   1.0+
#> [281]  18.0   11.0+  80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 174.0+ 180.0+
#> [291] 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0   19.0+  12.0   99.0 
#> [301] 180.0+ 180.0+  11.0+   7.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0   18.0+
#> [311] 101.0    4.0    5.0  180.0+ 180.0+ 180.0+ 180.0+ 174.0+   6.0  180.0+
#> [321]   0.5  180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+
#> [331]   3.0+ 180.0+  36.0  180.0+ 180.0+  97.0    7.0    8.0+ 180.0+   2.0+
#> [341] 180.0+  18.0  172.0+   7.0   13.0+ 123.0  180.0+ 180.0+  51.0  180.0+
#> [351]   1.0   60.0   76.0  180.0+  10.0+ 180.0+ 162.0    7.0+ 124.0    9.0 
#> [361] 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0 
#> [371]  76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+ 180.0+   3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+
#> [391]  20.0    0.5  180.0+ 180.0+ 180.0+   8.0    3.0   12.0  180.0+   4.0+
#> [401]  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [411]  10.0+   8.0+   1.0  180.0+ 159.0   15.0   10.0    1.0  180.0+   4.0+
#> [421] 180.0+ 104.0+   1.0  180.0+  11.0    3.0+   5.0  180.0+  12.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+  34.0  180.0+  11.0+   4.0+  15.0+ 180.0+  10.0 
#> [441] 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+ 174.0+   4.0 
#> [451]   7.0    0.5  180.0+ 180.0+ 180.0+   4.0    1.0  180.0+ 180.0+  12.0 
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+
#> [471] 180.0+  12.0  180.0+   7.0+  79.0  168.0+ 180.0+ 176.0+  18.0   47.0 
#> [481] 180.0+  11.0    8.0+ 180.0+  32.0   10.0  180.0+ 172.0   12.0  180.0+
#> [491]   8.0  180.0+ 180.0+   1.0   80.0  180.0+   4.0+   2.0  180.0+  11.0 
#> [501] 152.0+  24.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [511]   4.0    4.0   10.0+ 180.0+   3.0+   2.0+ 180.0+   1.0  171.0    1.0 
#> [521] 138.0  180.0+  59.0  180.0+ 118.0   37.0  180.0+   7.0+  22.0    5.0+
#> [531] 180.0+   3.0  171.0+  20.0+   3.0+ 180.0+  85.0   10.0  180.0+   5.0 
#> [541] 180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    9.0+ 180.0+ 180.0+
#> [551] 180.0+ 103.0  169.0   70.0    4.0  180.0+ 180.0+ 180.0+   7.0+  16.0 
#> [561] 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   2.0  167.0    3.0+ 180.0+   1.0 
#> [571] 180.0+  90.0  180.0+  89.0  180.0+   4.0    1.0   19.0  180.0+ 180.0+
#> [581] 180.0+ 154.0    2.0  180.0+   4.0+   5.0+   4.0+ 180.0+ 180.0+   3.0 
#> [591]  83.0   88.0  126.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+
#> [601] 180.0+   4.0+ 180.0+ 174.0    6.0  180.0+  14.0    3.0   13.0  180.0+
#> [611] 180.0+  92.0  180.0+  38.0    3.0+   6.0+  62.0    6.0+   4.0+   4.0 
#> [621]  65.0   11.0  180.0+ 115.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0 
#> [631] 180.0+   8.0  110.0   29.0  180.0+  46.0    1.0+ 180.0+ 180.0+  25.0 
#> [641] 145.0    3.0   50.0   11.0  126.0    1.0  178.0+  36.0   75.0    1.0 
#> [651]  33.0  158.0  168.0  169.0    7.0    4.0    4.0  180.0+  50.0   76.0 
#> [661] 180.0+  67.0   12.0    8.0   53.0    7.0+  69.0    2.0    3.0   15.0+
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
#>   0.8474131 
```
