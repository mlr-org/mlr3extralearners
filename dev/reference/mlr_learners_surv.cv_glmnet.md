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
#> min 0.00340    43   2.771 0.2013       6
#> 1se 0.08029     9   2.951 0.1941       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      1          1        1   112
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38   2      0        115        0   150
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  12      1          8        1   120
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  42   3      1          1        1   130
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  40   1      1          0        1   145
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  45   3      0        180        1   154
#>  [26,]  41  10      1          8        0   150
#>  [27,]  44   3      0        180        0   141
#>  [28,]  45   9      1          7        0   110
#>  [29,]  45   6      0        180        1   170
#>  [30,]  44   2      1          1        1   150
#>  [31,]  43   2      0        180        1   140
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  44   3      1          0        1   180
#>  [35,]  46   7      1          2        0   166
#>  [36,]  43  10      0        180        0   185
#>  [37,]  47   6      1          0        1   116
#>  [38,]  46  13      1         10        0   100
#>  [39,]  44   0      1          0        1    96
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  46   2      1          1        1   122
#>  [44,]  44   4      1          0        1   114
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   4      0        180        1   121
#>  [48,]  45   9      1          0        1   145
#>  [49,]  48   3      0        180        0   154
#>  [50,]  47   9      1          6        0   170
#>  [51,]  46   3      1          0        1   119
#>  [52,]  49   4      0        180        0   117
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  50   4      1          1        0   125
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   3      1          1        1   140
#>  [58,]  46   9      1          9        1   122
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  51   1      0          1        1   145
#>  [62,]  47   2      0        180        0   150
#>  [63,]  52   2      0        180        1   170
#>  [64,]  50   7      1          0        1    92
#>  [65,]  50   4      0          4        1   100
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  47   8      0        180        0   160
#>  [69,]  47   6      0        180        1   162
#>  [70,]  51   8      0        180        1   140
#>  [71,]  46   3      0        180        1   120
#>  [72,]  46   1      1          1        0   145
#>  [73,]  50   4      1          1        0   150
#>  [74,]  48   7      1          0        1   110
#>  [75,]  49   9      1          3        0   102
#>  [76,]  53   5      0        180        1   140
#>  [77,]  54  17      1         12        1   102
#>  [78,]  53   7      1          0        0   199
#>  [79,]  51   3      1          1        0   140
#>  [80,]  50   2      0          5        1   106
#>  [81,]  50  10      1          6        0   122
#>  [82,]  50  14      1         13        0   170
#>  [83,]  53   8      1          7        0   160
#>  [84,]  51  25      1          1        0   202
#>  [85,]  49   5      1          2        1   150
#>  [86,]  53   4      0          4        0   140
#>  [87,]  52  14      1          7        1   200
#>  [88,]  48   6      0        180        0   160
#>  [89,]  48  11      1         10        0   120
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  55   3      1          1        0   150
#>  [93,]  55   6      1          2        1   114
#>  [94,]  54   9      1          1        0   130
#>  [95,]  55   4      1          2        0   150
#>  [96,]  52   4      0        180        1   180
#>  [97,]  51  13      1         11        0   145
#>  [98,]  50   5      1          4        1   150
#>  [99,]  54   4      1          0        1   121
#> [100,]  52   4      0        180        0   183
#> [101,]  50   3      0        174        1   153
#> [102,]  49   6      1          0        1   130
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  56   4      1          1        1   130
#> [107,]  52   5      0        175        1   117
#> [108,]  55   2      0          2        0   145
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  52   8      0        180        0   119
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  52  16      0         16        0   152
#> [115,]  52  16      1         14        0   170
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   6      1          5        1   138
#> [120,]  54  12      1          0        1   190
#> [121,]  55   2      0        134        1   140
#> [122,]  54   3      0        180        0   128
#> [123,]  56   3      0          8        1   139
#> [124,]  55   1      0          2        0   130
#> [125,]  57   3      0          3        0   120
#> [126,]  54   7      1          2        0   129
#> [127,]  54   2      1          1        0   135
#> [128,]  52   9      1          3        0   170
#> [129,]  57   1      0        180        1   156
#> [130,]  57   1      0          1        1   100
#> [131,]  52   2      0        180        0   140
#> [132,]  52  15      1         14        0   130
#> [133,]  56  14      1         11        0   130
#> [134,]  53   3      1          0        1   200
#> [135,]  54   5      0        180        1   108
#> [136,]  55   3      1          1        1   156
#> [137,]  53  21      1         13        1   130
#> [138,]  57   4      0        180        1   119
#> [139,]  58   6      1          0        1    90
#> [140,]  53  15      1         10        1   130
#> [141,]  54  17      1          8        1   227
#> [142,]  55   9      1          2        1   147
#> [143,]  56   5      0          5        1   150
#> [144,]  54  23      1          8        0   120
#> [145,]  57   4      1          2        1   185
#> [146,]  53   4      0        147        1   145
#> [147,]  53   7      1          0        1   120
#> [148,]  57  11      1         10        1   129
#> [149,]  55   3      1          2        0   140
#> [150,]  54   7      1          0        1   141
#> [151,]  56   4      0          4        0   164
#> [152,]  59  15      1         10        0   140
#> [153,]  55   5      1          0        0   140
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  60  11      1          9        0   106
#> [157,]  58   4      1          0        1   160
#> [158,]  57   2      0          2        1   120
#> [159,]  58  11      1          9        1   124
#> [160,]  55   5      1          0        1   160
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  58   4      1          3        0   120
#> [168,]  59   2      1          1        0   140
#> [169,]  58   8      0        161        1   140
#> [170,]  58  14      1          6        0   190
#> [171,]  61   4      1          3        0   151
#> [172,]  61   9      1          8        0   150
#> [173,]  61   3      1          2        1   102
#> [174,]  61  20      1         13        0   130
#> [175,]  57  13      1         10        0   110
#> [176,]  57   2      1          0        1   116
#> [177,]  57  11      0        180        1   150
#> [178,]  61   3      0         17        0   143
#> [179,]  56  14      0         45        0   130
#> [180,]  57   3      1          2        0   120
#> [181,]  58  19      1         13        1   140
#> [182,]  56  13      1          6        1   158
#> [183,]  56  18      1         11        1   165
#> [184,]  59   9      1          0        1    80
#> [185,]  55   4      1          3        1   160
#> [186,]  58  11      0        172        1   135
#> [187,]  60  12      1          0        1   114
#> [188,]  55   9      1          7        1   135
#> [189,]  56   8      1          8        0   120
#> [190,]  61  13      1         12        1   130
#> [191,]  57   1      0          1        0   126
#> [192,]  59   5      1          2        0   182
#> [193,]  61  13      0         13        0   210
#> [194,]  58   8      1          5        0   152
#> [195,]  62  10      1          0        1   153
#> [196,]  62   7      1          2        1   180
#> [197,]  61  28      1          7        0   133
#> [198,]  61   7      0          7        1   150
#> [199,]  61   6      0          6        0   134
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          0        0   160
#> [202,]  60  17      1          8        1   140
#> [203,]  58   3      1          0        1   146
#> [204,]  62   4      1          3        0   173
#> [205,]  58   2      0         30        0   202
#> [206,]  61   5      0          5        1   110
#> [207,]  57  18      1          9        1    93
#> [208,]  61   5      0          5        1   160
#> [209,]  57   2      1          1        0   159
#> [210,]  62  17      1         10        1   180
#> [211,]  62   1      1          0        1   172
#> [212,]  58   7      0        180        1   150
#> [213,]  63   4      1          3        0   222
#> [214,]  63  15      1         10        1   126
#> [215,]  64   4      0        180        0   130
#> [216,]  60  18      1         13        0   132
#> [217,]  61   9      1          9        1   150
#> [218,]  58   9      1          9        0   110
#> [219,]  59   1      0         22        1   162
#> [220,]  59   4      0        180        0   196
#> [221,]  60   7      0          7        0   140
#> [222,]  59   5      1          1        0   148
#> [223,]  65  13      0        180        1   100
#> [224,]  63   1      0          1        0   162
#> [225,]  63   1      0          1        0   130
#> [226,]  62   6      0        180        0   170
#> [227,]  61  15      1         13        0   170
#> [228,]  60   3      0          3        0   168
#> [229,]  64  10      1          9        0   160
#> [230,]  63  12      1         10        0   200
#> [231,]  59  10      0        180        1   130
#> [232,]  60   8      0         17        1   130
#> [233,]  66   1      1          0        1   120
#> [234,]  63  10      1          0        1   148
#> [235,]  65  36      1         11        0   140
#> [236,]  61  10      1          2        1   194
#> [237,]  64  32      1          9        1   160
#> [238,]  63   7      0        180        0   120
#> [239,]  66   5      1          0        1   110
#> [240,]  65  10      1          8        1   120
#> [241,]  64   0      0          0        1    90
#> [242,]  60   6      0        180        0   130
#> [243,]  64  21      1         10        0   190
#> [244,]  61  12      1         11        0   154
#> [245,]  61   4      0        180        1   113
#> [246,]  63  16      1          7        1   110
#> [247,]  66   6      1          1        1   130
#> [248,]  65   3      1          0        1    80
#> [249,]  63   5      1          4        0   170
#> [250,]  63   2      1          1        0   180
#> [251,]  62  13      1         11        0   180
#> [252,]  66  16      1         11        1   169
#> [253,]  61  14      1          5        0   140
#> [254,]  61  15      1         10        0   130
#> [255,]  63   2      1          0        0   140
#> [256,]  64  19      1          8        1   160
#> [257,]  65   8      1          0        1   140
#> [258,]  67   6      0        180        1   170
#> [259,]  65  15      1         11        1   160
#> [260,]  68   5      1          4        1   150
#> [261,]  64  13      1         12        1   150
#> [262,]  64   6      1          0        1   125
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  65   3      0          3        0   105
#> [266,]  64   0      0          0        1   148
#> [267,]  67   4      1          3        0   130
#> [268,]  66   3      1          0        1   135
#> [269,]  65   2      1          1        1   170
#> [270,]  68   1      0        180        1   166
#> [271,]  64  10      1          9        1   110
#> [272,]  63   7      1          0        0   162
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  68  18      0        180        1   260
#> [277,]  65  17      1         14        1   100
#> [278,]  63   8      1          1        1   162
#> [279,]  63   1      1          0        1   155
#> [280,]  63  10      0         18        1   130
#> [281,]  67  11      0         11        0   150
#> [282,]  68  11      0        180        0   160
#> [283,]  66  12      1         10        1   150
#> [284,]  66  11      1          0        0   100
#> [285,]  65   4      1          2        1   145
#> [286,]  63   2      0        180        0   150
#> [287,]  65  11      1          6        0   130
#> [288,]  69  21      1         10        0   180
#> [289,]  69   6      0        180        1   100
#> [290,]  66   9      1          8        0   130
#> [291,]  68  14      1         13        1   140
#> [292,]  65   8      1          0        1    90
#> [293,]  66   3      0          3        1   138
#> [294,]  69   1      1          0        0   170
#> [295,]  68  10      1         10        1   150
#> [296,]  65   1      1          0        0   133
#> [297,]  63   2      1          0        0    99
#> [298,]  67   2      0        180        0   184
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  64   0      1          0        1   118
#> [303,]  67   2      0         18        0   131
#> [304,]  66   7      1          5        1   131
#> [305,]  68   4      1          0        1   160
#> [306,]  65  13      1         12        1   130
#> [307,]  69  17      1         10        0   140
#> [308,]  69   8      0         93        0   140
#> [309,]  68  18      1          0        1   160
#> [310,]  65   6      0        101        1   115
#> [311,]  68   4      0          4        1   190
#> [312,]  71   3      0          5        0   112
#> [313,]  68   7      0        150        0   210
#> [314,]  70  14      0        171        0   166
#> [315,]  66   4      0        180        0   130
#> [316,]  67  10      1          9        0   200
#> [317,]  67   6      1          4        0   130
#> [318,]  68  18      1         14        1   170
#> [319,]  69   0      0          0        1   148
#> [320,]  65   2      0        180        0   130
#> [321,]  68   7      1          0        1   150
#> [322,]  69   3      1          2        0   151
#> [323,]  65  14      1         13        1   150
#> [324,]  71   7      0          7        0   230
#> [325,]  71   6      0         45        1   158
#> [326,]  69   5      0          5        1   142
#> [327,]  71   3      0        103        0   133
#> [328,]  69   3      0          3        1   130
#> [329,]  67   1      0         36        1   104
#> [330,]  67   5      0          5        0   130
#> [331,]  68   6      0        180        0   145
#> [332,]  69   8      1          5        1   195
#> [333,]  69   6      1          4        1   174
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  69  19      0        180        0   130
#> [339,]  67  14      0        172        1   140
#> [340,]  69   4      1          3        0   132
#> [341,]  68   2      0          7        1   130
#> [342,]  69   8      1          2        0   121
#> [343,]  70   9      0        180        1   142
#> [344,]  72   5      1          4        0   170
#> [345,]  67  22      1          1        1   140
#> [346,]  68   3      0         19        0   135
#> [347,]  67  12      1          8        0   120
#> [348,]  67   8      1          0        1   130
#> [349,]  72  13      1         11        1   195
#> [350,]  66  24      1         13        0   130
#> [351,]  70  35      1          0        1   105
#> [352,]  72  30      1          0        1   145
#> [353,]  70   7      0          7        0   102
#> [354,]  68   7      1          2        0   135
#> [355,]  70  11      0        180        1   210
#> [356,]  72  12      1         10        0   170
#> [357,]  67   8      0        180        1   170
#> [358,]  67   5      1          0        1   147
#> [359,]  67   9      0        180        0   158
#> [360,]  73  13      0        152        1   130
#> [361,]  72   2      0          2        1   100
#> [362,]  67   4      1          1        0   134
#> [363,]  71   1      0        173        1   188
#> [364,]  68  23      0        180        1   220
#> [365,]  71   3      1          2        0   150
#> [366,]  72   5      0         28        0   120
#> [367,]  71   5      0        180        0   191
#> [368,]  73   6      0        180        1   117
#> [369,]  72  16      1          1        1   130
#> [370,]  69   1      1          0        0   155
#> [371,]  73   6      1          0        1   270
#> [372,]  72   8      1          1        1   150
#> [373,]  71   2      1          0        1   180
#> [374,]  68  15      1         13        1   130
#> [375,]  70   3      0          3        1   159
#> [376,]  70  13      1          9        0   100
#> [377,]  73   4      0        180        1   154
#> [378,]  69   2      1          0        1   110
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  74  20      0         20        1   180
#> [382,]  68   9      0        180        1   120
#> [383,]  71  20      1         10        0   140
#> [384,]  74   0      1          0        1    90
#> [385,]  71  17      1         11        0   160
#> [386,]  71   8      1          7        0   149
#> [387,]  69  12      1          1        1   149
#> [388,]  70  26      1         11        1   120
#> [389,]  74   4      0          4        0   120
#> [390,]  73   4      0         58        1   160
#> [391,]  70   3      0        180        1   154
#> [392,]  73   6      0        180        0   110
#> [393,]  72  15      1          0        1   150
#> [394,]  71   7      1          2        0   143
#> [395,]  72   8      1          0        1   140
#> [396,]  74   3      0          3        1   150
#> [397,]  71  13      1          8        0   121
#> [398,]  69   2      1          1        1    80
#> [399,]  71  14      1         13        1   170
#> [400,]  74   7      1          0        1   117
#> [401,]  72  10      1          8        1   153
#> [402,]  70   8      0          8        0   120
#> [403,]  75   1      0          1        0   133
#> [404,]  73  10      1          9        1   146
#> [405,]  72  10      1          9        1   160
#> [406,]  74  15      1          9        1   179
#> [407,]  71   2      0         10        1   112
#> [408,]  73   1      0          1        1    80
#> [409,]  75   9      1          7        0   140
#> [410,]  75  13      1          1        1   130
#> [411,]  71  11      1          8        0   110
#> [412,]  72  15      1         12        1   120
#> [413,]  73  10      1          8        0   120
#> [414,]  70   7      1          4        0   184
#> [415,]  73  10      0        180        0   162
#> [416,]  70   3      0          3        0   150
#> [417,]  73   5      1          3        1   112
#> [418,]  72   2      0        180        0   120
#> [419,]  75   1      0        180        1   140
#> [420,]  71   3      1          0        0   144
#> [421,]  73   5      0        180        0   126
#> [422,]  76   3      1          0        1   120
#> [423,]  72   5      0        180        0   154
#> [424,]  72   3      0        180        0   160
#> [425,]  76   5      0          5        1   130
#> [426,]  77  11      0         11        1   150
#> [427,]  75   3      1          1        0   180
#> [428,]  72   7      1          2        0   142
#> [429,]  73  15      0         15        1   160
#> [430,]  71  16      0        180        0   140
#> [431,]  73  10      1         10        0   124
#> [432,]  74   7      0        180        1   150
#> [433,]  74   3      0          3        1   128
#> [434,]  76   1      0        180        0   114
#> [435,]  74   2      1          1        0   140
#> [436,]  74   2      0        180        0   190
#> [437,]  72   4      0         85        1   120
#> [438,]  76  17      1          0        1   200
#> [439,]  76  13      1         10        0   110
#> [440,]  75   4      1          0        1   122
#> [441,]  75   0      0          0        1   130
#> [442,]  73  13      1         11        0   195
#> [443,]  75  12      0         12        1   160
#> [444,]  74   8      1          0        1   105
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  74   2      0        180        0   111
#> [449,]  73   1      0         52        1   105
#> [450,]  73   0      0        180        0   156
#> [451,]  72   5      0        180        0   120
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  75   9      0        180        1   140
#> [458,]  73  33      1         12        1   175
#> [459,]  77   5      1          0        0   123
#> [460,]  77  12      1          9        1   100
#> [461,]  73  10      1          9        0   146
#> [462,]  77  12      0        180        0   130
#> [463,]  77   1      1          0        1    90
#> [464,]  76  12      1         11        1   120
#> [465,]  78   5      1          0        1   170
#> [466,]  73   7      1          0        0   174
#> [467,]  74   6      0         79        1   140
#> [468,]  74   9      1          8        0   200
#> [469,]  74   2      1          0        1   130
#> [470,]  78  18      0         18        1   144
#> [471,]  77   3      0        180        0   110
#> [472,]  76  29      0         47        0    90
#> [473,]  73   8      1          1        1   162
#> [474,]  73  11      1          2        1   110
#> [475,]  78   7      0          7        1   133
#> [476,]  74  15      0        180        1   172
#> [477,]  78   8      1          6        1   110
#> [478,]  76  13      1          1        1   170
#> [479,]  80  10      1          6        1   147
#> [480,]  78   0      0        180        1   212
#> [481,]  78  13      1          5        0   130
#> [482,]  75  12      1          1        1   120
#> [483,]  78  15      0        180        1   270
#> [484,]  74  10      1          8        0   135
#> [485,]  78  12      1          9        0   150
#> [486,]  75   4      1          0        0   212
#> [487,]  78  10      0        180        1   130
#> [488,]  76  11      1          0        0   120
#> [489,]  75  11      1          4        0   162
#> [490,]  77  24      0         24        1   160
#> [491,]  80   9      0         23        1   128
#> [492,]  78   6      1          0        1   240
#> [493,]  76   3      1          0        1   140
#> [494,]  79  11      0        180        0   160
#> [495,]  79   2      1          0        1   121
#> [496,]  78  14      1          0        1   140
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  80   3      1          0        1   120
#> [504,]  75   2      1          1        1   204
#> [505,]  76   1      0          1        1   140
#> [506,]  77  31      1          3        1   161
#> [507,]  79   3      0          3        0   120
#> [508,]  79   4      1          0        1   120
#> [509,]  81   1      0        180        0   120
#> [510,]  82   5      0          8        1   120
#> [511,]  80  40      1          0        1   138
#> [512,]  76   7      0        161        0   151
#> [513,]  80  15      1          0        1    90
#> [514,]  80   6      0        173        1   160
#> [515,]  78  32      0        180        1   130
#> [516,]  81   3      0        180        0   184
#> [517,]  78   7      0          7        1   147
#> [518,]  77  13      1          0        1   190
#> [519,]  80   5      1          1        1   108
#> [520,]  78   4      0        180        0   175
#> [521,]  78  26      1          5        0   194
#> [522,]  76   1      0        166        0   131
#> [523,]  80   1      0          1        0   100
#> [524,]  77   5      0         85        0   188
#> [525,]  79   6      0          6        0   152
#> [526,]  80   6      1          0        1   119
#> [527,]  78   2      0        180        0   148
#> [528,]  82   1      1          0        1    82
#> [529,]  79  10      0        180        1   150
#> [530,]  77   4      0        180        1    98
#> [531,]  81   1      0        108        0   129
#> [532,]  78  12      0        180        0   134
#> [533,]  79   1      0        125        0   193
#> [534,]  82  21      1          2        0   155
#> [535,]  84  22      1         10        0   180
#> [536,]  79   4      0          4        1   121
#> [537,]  80   6      0          6        1   110
#> [538,]  83   9      1          5        1   170
#> [539,]  82   5      0        180        0   110
#> [540,]  79   7      1          6        0   130
#> [541,]  83   4      0        103        0    97
#> [542,]  81  11      1          8        0   160
#> [543,]  81   5      0        177        0    41
#> [544,]  80  11      1          8        0   170
#> [545,]  79   4      0          4        1   183
#> [546,]  82   8      1          1        0   128
#> [547,]  79   1      0        180        1   170
#> [548,]  81  15      0        180        1   140
#> [549,]  80   7      1          0        1   146
#> [550,]  83   8      0          8        0   115
#> [551,]  81  16      0         16        1   110
#> [552,]  80   6      1          0        1   150
#> [553,]  80  11      1          8        0   110
#> [554,]  80   8      1          7        0   160
#> [555,]  79   7      0        177        0   197
#> [556,]  79   0      1          0        1    96
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  82   6      0        128        1   100
#> [560,]  84   4      0        167        0   198
#> [561,]  80   3      1          1        1   230
#> [562,]  84   5      0        180        1   203
#> [563,]  81   1      0          1        1   150
#> [564,]  84   1      0         38        1   205
#> [565,]  83   3      0        180        0   174
#> [566,]  79   9      1          8        0   150
#> [567,]  85   3      1          2        1   160
#> [568,]  80  13      1          8        1   140
#> [569,]  84   4      0         89        1   129
#> [570,]  80   2      1          0        1   130
#> [571,]  79   4      0          4        1    60
#> [572,]  82  19      0         19        0   120
#> [573,]  83   9      0        180        0   198
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  83   2      0        154        0   130
#> [577,]  82   0      0          2        1   100
#> [578,]  85   9      1          6        1   160
#> [579,]  81   4      0          4        0   175
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  81   4      0          4        0   160
#> [584,]  86  12      0        180        1   120
#> [585,]  83  12      1          2        1   170
#> [586,]  82   3      1          2        0   130
#> [587,]  82  15      1          0        0   183
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  86   3      0          3        1   140
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  85   3      0          3        1   118
#> [594,]  81   2      1          0        1   118
#> [595,]  81   4      0        180        0   160
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  86   2      0        180        1   169
#> [604,]  88  14      1          3        1   130
#> [605,]  84   7      1          2        0   148
#> [606,]  87   2      0        180        0   113
#> [607,]  84   9      0         92        1   110
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  84  13      0         62        1   100
#> [612,]  86   6      1          1        0   112
#> [613,]  88   4      0          4        0   100
#> [614,]  88   4      0          4        1   115
#> [615,]  85  22      0         22        1   184
#> [616,]  83   9      0         65        1   150
#> [617,]  86   9      1          7        1   142
#> [618,]  87   2      0        180        1   130
#> [619,]  87   8      0          8        1   157
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  87   6      0        180        1   110
#> [623,]  84   8      0        180        1   119
#> [624,]  85   8      0          8        1   136
#> [625,]  84   2      0        110        1   174
#> [626,]  87  29      0         29        1    97
#> [627,]  87  15      1          9        1   138
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  86   4      0        180        1   145
#> [632,]  87   2      0        180        0   160
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  88   8      0         50        1   154
#> [638,]  90  11      1         10        1   186
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87   5      0         36        1   150
#> [645,]  90   5      1          0        1   125
#> [646,]  88   3      1          2        0   159
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  91   3      0         33        1   137
#> [650,]  87   7      0         74        1   105
#> [651,]  89  12      1          0        1   130
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  92   7      0          7        1   110
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  90  16      0         16        1   106
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91   7      0          7        0   135
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+   2.0+ 180.0+ 115.0  180.0+  12.0    5.0+ 180.0+
#>  [11] 180.0+ 180.0+   2.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0 
#>  [61]   1.0  180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+  99.0 
#>  [91] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+
#> [101] 174.0+   6.0+   1.0    9.0+ 180.0+ 180.0+ 175.0+   2.0  180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+  16.0+  16.0   15.0+ 180.0+ 180.0+ 180.0+  12.0+
#> [121] 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 171.0+  15.0    5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151]   4.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+ 161.0+ 171.0+
#> [171] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+
#> [181]  19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0    8.0  180.0+
#> [191]   1.0+ 180.0+  13.0+   8.0+ 180.0+ 180.0+  94.0    7.0    6.0  180.0+
#> [201] 180.0+ 180.0+   3.0+ 180.0+  30.0    5.0   18.0    5.0+ 180.0+ 180.0+
#> [211]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0   22.0  180.0+
#> [221]   7.0+ 180.0+ 180.0+   1.0    1.0  180.0+ 180.0+   3.0+ 167.0  180.0+
#> [231] 180.0+  17.0  180.0+ 180.0+  36.0   88.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241]   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+ 180.0+   5.0+
#> [261]  13.0  180.0+ 179.0+ 166.0+   3.0    0.5+ 180.0+   3.0+ 175.0+ 180.0+
#> [271] 180.0+   7.0+   8.0    5.0   16.0  180.0+ 180.0+ 180.0+   1.0+  18.0 
#> [281]  11.0+ 180.0+  80.0  180.0+   4.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+
#> [291] 180.0+   8.0+   3.0  175.0   10.0  180.0+ 180.0+ 180.0+  12.0   99.0 
#> [301] 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 180.0+  93.0   18.0+ 101.0 
#> [311]   4.0    5.0  150.0  171.0  180.0+ 174.0+   6.0  180.0+   0.5  180.0+
#> [321] 180.0+ 180.0+  14.0+   7.0+  45.0    5.0+ 103.0    3.0+  36.0    5.0+
#> [331] 180.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+ 180.0+ 172.0+ 180.0+
#> [341]   7.0    8.0+ 180.0+ 180.0+  51.0   19.0  180.0+ 180.0+ 132.0  180.0+
#> [351] 180.0+ 162.0    7.0+   7.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0 
#> [361]   2.0   76.0  173.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+
#> [371]   6.0  180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+   2.0    3.0+ 180.0+
#> [381]  20.0  180.0+  20.0    0.5  180.0+   8.0   12.0  180.0+   4.0+  58.0 
#> [391] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0    2.0   14.0+ 180.0+
#> [401]  10.0+   8.0+   1.0  180.0+ 159.0  180.0+  10.0    1.0  180.0+  13.0 
#> [411] 180.0+ 180.0+  10.0  104.0+ 180.0+   3.0+   5.0  180.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+   5.0   11.0+ 180.0+   7.0   15.0+ 180.0+
#> [431]  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+  85.0   17.0+ 174.0+   4.0 
#> [441]   0.5  180.0+  12.0  180.0+ 180.0+  46.0  180.0+ 180.0+  52.0  180.0+
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+
#> [461] 180.0+ 180.0+   1.0   12.0  180.0+   7.0+  79.0  168.0+ 176.0+  18.0 
#> [471] 180.0+  47.0  180.0+  11.0    7.0  180.0+   8.0+ 180.0+  10.0  180.0+
#> [481] 172.0   12.0  180.0+ 180.0+ 180.0+   4.0+ 180.0+  11.0  152.0+  24.0 
#> [491]  23.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0 
#> [501]  10.0+ 180.0+   3.0+   2.0+   1.0  171.0    3.0  138.0  180.0+   8.0 
#> [511]  40.0  161.0  180.0+ 173.0  180.0+ 180.0+   7.0+  22.0    5.0+ 180.0+
#> [521] 171.0+ 166.0+   1.0   85.0    6.0+   6.0  180.0+   1.0  180.0+ 180.0+
#> [531] 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [541] 103.0  180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+   8.0+
#> [551]  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+ 128.0  167.0 
#> [561]   3.0+ 180.0+   1.0   38.0  180.0+ 180.0+ 180.0+ 180.0+  89.0  180.0+
#> [571]   4.0   19.0  180.0+ 114.0  180.0+ 154.0    2.0  180.0+   4.0+   1.0 
#> [581]  12.0   16.0+   4.0+ 180.0+  77.0    3.0   83.0    8.0  180.0+   3.0 
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0    6.0   70.0 
#> [601]  43.0  180.0+ 180.0+  14.0  180.0+ 180.0+  92.0    4.0  177.0    3.0+
#> [611]  62.0    6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+   8.0+ 180.0+
#> [621]   4.0  180.0+ 180.0+   8.0  110.0   29.0  180.0+ 180.0+  46.0   14.0 
#> [631] 180.0+ 180.0+  25.0  145.0    3.0   24.0   50.0   11.0  126.0  180.0+
#> [641] 180.0+   4.0    1.0   36.0   89.0   75.0    3.0+   1.0   33.0   74.0 
#> [651] 180.0+ 168.0  169.0    7.0    0.5  180.0+ 180.0+ 180.0+  50.0  179.0+
#> [661]   8.0+  76.0   16.0   12.0    8.0    7.0+   2.0  180.0+   3.0   15.0+
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
#>   0.8530769 
```
