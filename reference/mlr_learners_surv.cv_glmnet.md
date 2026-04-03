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
#> min 0.00413    41   2.689 0.1376       6
#> 1se 0.06727    11   2.813 0.1260       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40  11      1         10        1   120
#>  [17,]  42   2      0        180        0   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  40   3      1          1        0   170
#>  [22,]  44   5      1          1        0   170
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  45   9      1          7        0   110
#>  [26,]  41   5      1          4        1   141
#>  [27,]  44   2      1          1        1   150
#>  [28,]  45   2      0        180        1   140
#>  [29,]  46  15      0        180        0   120
#>  [30,]  47   4      1          3        0   118
#>  [31,]  48  15      0        180        1   160
#>  [32,]  44   3      1          0        1   180
#>  [33,]  46   7      1          2        0   166
#>  [34,]  43  29      0        180        1   180
#>  [35,]  43  10      0        180        0   185
#>  [36,]  43   3      1          0        1   124
#>  [37,]  45   8      1          0        1   117
#>  [38,]  45   5      0          5        0   141
#>  [39,]  46   6      1          0        1   100
#>  [40,]  44   4      1          0        1   114
#>  [41,]  47   2      0        180        0   108
#>  [42,]  44   9      1          8        1   135
#>  [43,]  45   5      0        180        1   190
#>  [44,]  44   2      0        180        0   142
#>  [45,]  46  15      0        180        1   120
#>  [46,]  45   9      1          0        1   145
#>  [47,]  48   3      0        180        0   154
#>  [48,]  48  12      1         11        0   200
#>  [49,]  46   3      1          0        1   119
#>  [50,]  49   4      0        180        0   117
#>  [51,]  47  10      0         10        1   140
#>  [52,]  48   2      1          0        0   184
#>  [53,]  47   7      0        180        0   145
#>  [54,]  50   4      1          1        0   125
#>  [55,]  50   6      1          2        1   140
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   3      1          1        1   140
#>  [58,]  46   9      1          9        1   122
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  49  23      0        179        1   112
#>  [65,]  46   6      1          0        1   156
#>  [66,]  52   2      0        180        1   170
#>  [67,]  50   7      1          0        1    92
#>  [68,]  51   3      1          2        0   113
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  51   8      0        180        1   140
#>  [74,]  46   3      0        180        1   120
#>  [75,]  46   1      1          1        0   145
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54   6      1          3        0   129
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  10      1          6        0   122
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  49  16      0         16        0   125
#>  [93,]  54  23      1         10        0   131
#>  [94,]  52   7      1          2        0   154
#>  [95,]  55   6      1          2        1   114
#>  [96,]  52   4      0        180        1   180
#>  [97,]  51  13      1         11        0   145
#>  [98,]  50   5      1          4        1   150
#>  [99,]  50   3      0        174        1   153
#> [100,]  49   6      1          0        1   130
#> [101,]  50   7      1          1        0   156
#> [102,]  53   9      0          9        1    95
#> [103,]  53   8      1          0        1   130
#> [104,]  56   4      1          1        1   130
#> [105,]  55   1      0        180        0   127
#> [106,]  55   2      0          2        0   145
#> [107,]  54   1      0        180        0   162
#> [108,]  52   8      0        180        0   119
#> [109,]  54   3      0        180        1   180
#> [110,]  55   6      0        180        0   170
#> [111,]  53  15      0         15        1    90
#> [112,]  53   4      0        180        1   150
#> [113,]  55   6      0        180        1   100
#> [114,]  55   6      1          5        1   138
#> [115,]  54   3      0        180        0   128
#> [116,]  56   3      0          8        1   139
#> [117,]  55   1      0          2        0   130
#> [118,]  54   2      1          1        1   176
#> [119,]  57   5      1          3        1   138
#> [120,]  57   1      0        180        1   156
#> [121,]  57   1      0          1        1   100
#> [122,]  55  11      1          7        0   104
#> [123,]  52  15      1         14        0   130
#> [124,]  56  14      1         11        0   130
#> [125,]  58   8      0          8        1   130
#> [126,]  54   5      0        180        1   108
#> [127,]  57   0      0          0        1   150
#> [128,]  53  21      1         13        1   130
#> [129,]  59   3      1          1        0   172
#> [130,]  58   6      1          0        1    90
#> [131,]  53  15      1         10        1   130
#> [132,]  54  17      1          8        1   227
#> [133,]  55   9      1          2        1   147
#> [134,]  55  13      0        166        1   140
#> [135,]  56   5      0          5        1   150
#> [136,]  57   4      1          2        1   185
#> [137,]  53   4      0        147        1   145
#> [138,]  57  11      1         10        1   129
#> [139,]  54   7      1          0        1   141
#> [140,]  56   4      0          4        0   164
#> [141,]  58   9      1          0        1   180
#> [142,]  55   2      0          2        0   106
#> [143,]  57   1      0        180        0   148
#> [144,]  60  11      1          9        0   106
#> [145,]  59   3      0        180        0   120
#> [146,]  58   4      1          0        1   160
#> [147,]  57   2      0          2        1   120
#> [148,]  57   5      0        180        1   130
#> [149,]  58  11      1          9        1   124
#> [150,]  55   5      1          0        1   160
#> [151,]  59   5      0        180        1   155
#> [152,]  59   4      1          0        1   152
#> [153,]  58  26      1          0        1   189
#> [154,]  61   9      0          9        1   160
#> [155,]  58   4      1          3        0   120
#> [156,]  60   0      1          0        1    80
#> [157,]  58   8      0        161        1   140
#> [158,]  58  14      1          6        0   190
#> [159,]  61   4      1          3        0   151
#> [160,]  61   3      1          2        1   102
#> [161,]  58   1      0          1        1   100
#> [162,]  57  13      1         10        0   110
#> [163,]  57   2      1          0        1   116
#> [164,]  56  14      0         45        0   130
#> [165,]  57   3      1          2        0   120
#> [166,]  56  13      1          6        1   158
#> [167,]  55   4      1          3        1   160
#> [168,]  60  12      1          0        1   114
#> [169,]  56   8      1          8        0   120
#> [170,]  57   1      0          1        0   126
#> [171,]  57  15      1         13        1   110
#> [172,]  59   5      1          2        0   182
#> [173,]  58   5      1          1        1   135
#> [174,]  59  10      0        180        0   160
#> [175,]  61   8      0         77        0   120
#> [176,]  58   8      1          5        0   152
#> [177,]  62  10      1          0        1   153
#> [178,]  62   7      1          2        1   180
#> [179,]  57   3      1          0        0   100
#> [180,]  61  28      1          7        0   133
#> [181,]  58   8      1          3        1   150
#> [182,]  57   7      0        169        0   180
#> [183,]  61   6      0          6        0   134
#> [184,]  57  12      1          9        1   120
#> [185,]  62   4      1          0        0   160
#> [186,]  62   4      1          3        0   173
#> [187,]  59  16      1          9        1   133
#> [188,]  63   6      0         28        1   120
#> [189,]  61  13      0         13        0   120
#> [190,]  57  18      1          9        1    93
#> [191,]  61   5      0          5        1   160
#> [192,]  57   2      1          1        0   159
#> [193,]  62   1      1          0        1   172
#> [194,]  58   7      0        180        1   150
#> [195,]  63   3      1          1        0   180
#> [196,]  63   4      1          3        0   222
#> [197,]  63   4      0        180        1   190
#> [198,]  64   4      0        180        0   130
#> [199,]  63   4      1          1        0   155
#> [200,]  60  18      1         13        0   132
#> [201,]  59   8      0        180        1   140
#> [202,]  62   7      0          7        0   150
#> [203,]  58   2      0        180        0   127
#> [204,]  59   4      0        180        0   196
#> [205,]  60   7      1          5        1   141
#> [206,]  60   7      1          1        1    90
#> [207,]  65  13      0        180        1   100
#> [208,]  63   1      0          1        0   130
#> [209,]  61  15      1         13        0   170
#> [210,]  59   4      0          4        0   149
#> [211,]  60   3      0          3        0   168
#> [212,]  63  12      1         10        0   200
#> [213,]  60   8      0         17        1   130
#> [214,]  61   6      1          1        1   117
#> [215,]  64  12      1         11        0   160
#> [216,]  66   1      1          0        1   120
#> [217,]  63  10      1          0        1   148
#> [218,]  63  14      1          9        0   123
#> [219,]  65  36      1         11        0   140
#> [220,]  63   4      1          3        0   162
#> [221,]  66   3      1          1        0   127
#> [222,]  64  32      1          9        1   160
#> [223,]  63  12      1          9        0   114
#> [224,]  63   7      0        180        0   120
#> [225,]  66   5      1          0        1   110
#> [226,]  65   8      1          0        0   168
#> [227,]  65  10      1          8        1   120
#> [228,]  64   0      0          0        1    90
#> [229,]  60   6      0        180        0   130
#> [230,]  64  21      1         10        0   190
#> [231,]  61  12      1         11        0   154
#> [232,]  64   9      0        180        0   150
#> [233,]  63  16      1          7        1   110
#> [234,]  64   7      0        180        1   120
#> [235,]  66   6      1          1        1   130
#> [236,]  62   3      1          1        1   199
#> [237,]  65   6      0          9        0   112
#> [238,]  63   5      1          4        0   170
#> [239,]  63   2      1          1        0   180
#> [240,]  62  13      1         11        0   180
#> [241,]  64   2      0          2        0   201
#> [242,]  66  18      1          5        0   142
#> [243,]  62   9      0        180        0   145
#> [244,]  61  14      1          5        0   140
#> [245,]  63   9      1          8        1   160
#> [246,]  63   3      1          2        0   120
#> [247,]  64  19      1          8        1   160
#> [248,]  65   8      1          0        1   140
#> [249,]  65  15      1         11        1   160
#> [250,]  64  13      1         12        1   150
#> [251,]  64   6      1          0        1   125
#> [252,]  66   7      1          0        1   115
#> [253,]  66  13      1          0        0   118
#> [254,]  64  14      1         13        1   150
#> [255,]  65   3      0          3        0   105
#> [256,]  64   0      0          0        1   148
#> [257,]  66   3      1          0        1   135
#> [258,]  66   6      1          0        1   140
#> [259,]  65   2      1          1        1   170
#> [260,]  68   1      0        180        1   166
#> [261,]  64  10      1          9        1   110
#> [262,]  63   7      1          0        0   162
#> [263,]  67   8      1          1        1   130
#> [264,]  68   5      0          5        1    90
#> [265,]  63  10      0         16        1   160
#> [266,]  66  14      0        180        0   130
#> [267,]  64   1      0          1        1   120
#> [268,]  65  17      1         14        1   100
#> [269,]  63   8      1          1        1   162
#> [270,]  63   1      1          0        1   155
#> [271,]  63  10      0         18        1   130
#> [272,]  66  12      1         10        1   150
#> [273,]  65  15      1         12        1   150
#> [274,]  66  11      1          0        0   100
#> [275,]  65   4      1          2        1   145
#> [276,]  69  12      0         15        1   140
#> [277,]  66  15      1         13        1   160
#> [278,]  63   2      0        180        0   150
#> [279,]  65  11      1          6        0   130
#> [280,]  66   9      1          8        0   130
#> [281,]  63   8      0        180        1   120
#> [282,]  68  14      1         13        1   140
#> [283,]  66   3      0          3        1   138
#> [284,]  67   1      0        180        1   160
#> [285,]  68  10      1         10        1   150
#> [286,]  67   7      1          4        1   130
#> [287,]  63   2      1          0        0    99
#> [288,]  65   6      0          6        0    80
#> [289,]  65  10      1          1        1   148
#> [290,]  67  12      1         12        0   160
#> [291,]  69   6      0         99        1   140
#> [292,]  65   4      1          1        0   130
#> [293,]  64   4      0        179        0   160
#> [294,]  70  15      1         12        1   132
#> [295,]  64  11      0         11        0   125
#> [296,]  64   0      1          0        1   118
#> [297,]  67   2      0         18        0   131
#> [298,]  66   7      1          5        1   131
#> [299,]  66   4      0        180        0   177
#> [300,]  68   4      1          0        1   160
#> [301,]  65  13      1         12        1   130
#> [302,]  69  17      1         10        0   140
#> [303,]  69   8      0         93        0   140
#> [304,]  64  21      0         21        1   155
#> [305,]  66   6      0        180        0   140
#> [306,]  68  18      1          0        1   160
#> [307,]  65   6      0        101        1   115
#> [308,]  68   4      0          4        1   190
#> [309,]  71   3      0          5        0   112
#> [310,]  70   7      1          0        1   190
#> [311,]  68   7      0        150        0   210
#> [312,]  67   2      0        180        0   128
#> [313,]  66   9      1          3        1   151
#> [314,]  66   1      1          1        1   165
#> [315,]  70   4      1          0        1   180
#> [316,]  69   8      0        180        1   153
#> [317,]  70  14      0        171        0   166
#> [318,]  66   4      0        180        0   130
#> [319,]  67  10      1          9        0   200
#> [320,]  67   6      1          4        0   130
#> [321,]  68  18      1         14        1   170
#> [322,]  69   0      0          0        1   148
#> [323,]  65   2      0        180        0   130
#> [324,]  68   7      1          0        1   150
#> [325,]  69   3      1          2        0   151
#> [326,]  67  14      1         13        0   130
#> [327,]  65  14      1         13        1   150
#> [328,]  69   8      0        180        1   180
#> [329,]  66   2      0          2        1   228
#> [330,]  71   3      0        103        0   133
#> [331,]  67   1      0         36        1   104
#> [332,]  68   6      0        180        0   145
#> [333,]  69   6      1          4        1   174
#> [334,]  72   3      1          0        1   132
#> [335,]  67   3      0        180        0   110
#> [336,]  66   2      1          1        0   123
#> [337,]  68  18      0         18        1   100
#> [338,]  67  14      0        172        1   140
#> [339,]  69  11      1          0        1   120
#> [340,]  67   7      1          4        0   122
#> [341,]  69   4      1          3        0   132
#> [342,]  68   2      0          7        1   130
#> [343,]  70   3      0        123        0   130
#> [344,]  70   9      0        180        1   142
#> [345,]  69   1      0          1        1   110
#> [346,]  67   4      0         60        1   136
#> [347,]  67   8      1          0        1   130
#> [348,]  66  24      1         13        0   130
#> [349,]  70   7      0          7        0   102
#> [350,]  68   7      1          2        0   135
#> [351,]  73  20      1          0        1   170
#> [352,]  71   6      0          9        0   120
#> [353,]  69  10      1          6        1   120
#> [354,]  70  11      0        180        1   210
#> [355,]  72  19      1          8        0   120
#> [356,]  72  12      1         10        0   170
#> [357,]  67   9      0        180        0   158
#> [358,]  73  13      0        152        1   130
#> [359,]  70   5      0        180        0   150
#> [360,]  72   6      1          5        0   115
#> [361,]  68  23      0        180        1   220
#> [362,]  70   3      0        180        0   121
#> [363,]  69   3      0        180        0   220
#> [364,]  68   4      1          3        0   210
#> [365,]  71   5      0        180        0   191
#> [366,]  73   6      0        180        1   117
#> [367,]  69  16      1         10        1   140
#> [368,]  69   8      1          1        0   164
#> [369,]  68   7      0        180        1   130
#> [370,]  72  16      1          1        1   130
#> [371,]  69   1      1          0        0   155
#> [372,]  73   6      1          0        1   270
#> [373,]  71   2      1          0        1   180
#> [374,]  73   7      0          7        1   140
#> [375,]  68  15      1         13        1   130
#> [376,]  70   3      0          3        1   159
#> [377,]  70  13      1          9        0   100
#> [378,]  72   6      0        180        1   130
#> [379,]  73   0      0        180        1   161
#> [380,]  74   8      1          0        1    85
#> [381,]  73   4      0        180        1   154
#> [382,]  71   3      1          1        0   150
#> [383,]  68   9      0        180        1   120
#> [384,]  71  20      1         10        0   140
#> [385,]  74   0      1          0        1    90
#> [386,]  73   3      1          0        1   136
#> [387,]  70   5      1          0        1   190
#> [388,]  71  17      1         11        0   160
#> [389,]  71   8      1          7        0   149
#> [390,]  73  10      1          8        0   106
#> [391,]  69  12      1          1        1   149
#> [392,]  74   4      0          4        0   120
#> [393,]  73   4      0         58        1   160
#> [394,]  72   5      1          3        1   160
#> [395,]  73   6      0        180        0   110
#> [396,]  72  15      1          0        1   150
#> [397,]  71   7      1          2        0   143
#> [398,]  74   3      0          3        1   150
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  70   4      1          0        1   140
#> [402,]  74   7      1          0        1   117
#> [403,]  69   7      0        180        1   144
#> [404,]  72  15      1         13        0   156
#> [405,]  70   8      0          8        0   120
#> [406,]  71  10      1          9        1   120
#> [407,]  75   1      0          1        0   133
#> [408,]  73  10      1          9        1   146
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  74  15      1          9        1   179
#> [412,]  71   2      0         10        1   112
#> [413,]  75   9      1          7        0   140
#> [414,]  71  11      1          8        0   110
#> [415,]  73  10      1          8        0   120
#> [416,]  72   7      0         57        1   145
#> [417,]  73  10      0        180        0   162
#> [418,]  70   3      0          3        0   150
#> [419,]  73   5      1          3        1   112
#> [420,]  76  25      1         12        1   170
#> [421,]  73  12      1         12        1   140
#> [422,]  72   2      0        180        0   120
#> [423,]  75   1      0        180        1   140
#> [424,]  72   4      1          0        1   197
#> [425,]  73   5      0        180        0   126
#> [426,]  73   4      0        180        0   124
#> [427,]  76   3      1          0        1   120
#> [428,]  71  32      1         12        1   107
#> [429,]  72   5      0        180        0   154
#> [430,]  72   3      0        180        0   160
#> [431,]  77  11      0         11        1   150
#> [432,]  77   4      0          4        0   185
#> [433,]  72   7      1          2        0   142
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   7      0        180        1   150
#> [438,]  74   3      0          3        1   128
#> [439,]  76   8      1          0        1   141
#> [440,]  74  19      1          4        1   200
#> [441,]  73   6      0          6        1   114
#> [442,]  75  23      1         14        1   110
#> [443,]  72   4      0         85        1   120
#> [444,]  73   4      1          3        1   125
#> [445,]  75   4      1          0        1   122
#> [446,]  75   7      0          7        0   190
#> [447,]  75   0      0          0        1   130
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  75   4      1          2        1   188
#> [451,]  74   6      0        180        0   160
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  74   2      0        180        0   111
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  76  44      1         10        0   105
#> [458,]  76   5      0        180        0   185
#> [459,]  74  10      1          0        1   135
#> [460,]  76   5      1          0        1   167
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  73  10      1          9        0   146
#> [465,]  77   1      1          0        1    90
#> [466,]  76  12      1         11        1   120
#> [467,]  78   5      1          0        1   170
#> [468,]  73   7      1          0        0   174
#> [469,]  74   6      0         79        1   140
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  78  18      0         18        1   144
#> [476,]  73  11      1          2        1   110
#> [477,]  78   7      0          7        1   133
#> [478,]  74  15      0        180        1   172
#> [479,]  78   8      1          6        1   110
#> [480,]  74   7      0          7        0   161
#> [481,]  76  13      1          1        1   170
#> [482,]  79   6      0        180        0   170
#> [483,]  80  10      1          6        1   147
#> [484,]  78   0      0        180        1   212
#> [485,]  78  13      1          5        0   130
#> [486,]  75   5      0        119        1   150
#> [487,]  75  12      1          1        1   120
#> [488,]  80   8      0          8        1   120
#> [489,]  75  13      1          6        0   150
#> [490,]  76   1      0          1        1    83
#> [491,]  79   4      0         80        0   145
#> [492,]  78  12      1          9        0   150
#> [493,]  78   2      1          1        0   130
#> [494,]  75   4      1          0        0   212
#> [495,]  76  11      1          0        0   120
#> [496,]  75  11      1          4        0   162
#> [497,]  76   7      0         29        1   150
#> [498,]  77  24      0         24        1   160
#> [499,]  79   8      0         32        1   120
#> [500,]  80   9      0         23        1   128
#> [501,]  80   6      0          6        1   150
#> [502,]  78   6      1          0        1   240
#> [503,]  76   3      1          0        1   140
#> [504,]  78  11      1          1        1   140
#> [505,]  79  11      0        180        0   160
#> [506,]  78  11      1          8        1   118
#> [507,]  79   4      0          4        1   125
#> [508,]  76  10      1          8        0   180
#> [509,]  76  12      1         10        1   127
#> [510,]  80   3      1          0        1   120
#> [511,]  75   2      1          1        1   204
#> [512,]  78  11      0        180        1   135
#> [513,]  76   1      0          1        1   140
#> [514,]  77  31      1          3        1   161
#> [515,]  76   1      0          1        1    90
#> [516,]  78   7      1          0        1   110
#> [517,]  77   7      0        180        1   170
#> [518,]  79   4      1          0        1   120
#> [519,]  77   9      1          4        0   141
#> [520,]  78   4      0         59        1   112
#> [521,]  76   7      0        161        0   151
#> [522,]  80  15      1          0        1    90
#> [523,]  79  28      0        164        0   100
#> [524,]  80   9      0        118        1   186
#> [525,]  80   6      0        173        1   160
#> [526,]  78  32      0        180        1   130
#> [527,]  79   1      0         37        1   140
#> [528,]  81   2      0        175        0   172
#> [529,]  78   7      0          7        1   147
#> [530,]  77  13      1          0        1   190
#> [531,]  78  15      0         15        0   165
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  76   1      0        166        0   131
#> [535,]  78  20      1          0        1   109
#> [536,]  78   3      1          1        1   152
#> [537,]  77  10      1          8        1   130
#> [538,]  82   3      1          1        1   144
#> [539,]  77   5      0         85        0   188
#> [540,]  79   6      0          6        0   152
#> [541,]  78   2      0        180        0   148
#> [542,]  82   1      1          0        1    82
#> [543,]  79  10      0        180        1   150
#> [544,]  77   4      0        180        1    98
#> [545,]  79   1      0        125        0   193
#> [546,]  82  21      1          2        0   155
#> [547,]  84  22      1         10        0   180
#> [548,]  79   4      0          4        1   121
#> [549,]  80   6      0          6        1   110
#> [550,]  83   9      1          5        1   170
#> [551,]  82   5      0        180        0   110
#> [552,]  83   5      0        180        0   148
#> [553,]  79   7      1          6        0   130
#> [554,]  83   4      0        103        0    97
#> [555,]  81  11      1          8        0   160
#> [556,]  81   5      0        177        0    41
#> [557,]  78  23      1         10        1   145
#> [558,]  78   9      1          4        1   120
#> [559,]  82   8      1          1        0   128
#> [560,]  81  15      0        180        1   140
#> [561,]  80   7      1          0        1   146
#> [562,]  81  16      0         16        1   110
#> [563,]  80   6      1          0        1   150
#> [564,]  80  11      1          8        0   110
#> [565,]  81   8      0        180        0   146
#> [566,]  80   8      1          7        0   160
#> [567,]  79   7      0        177        0   197
#> [568,]  85   4      0        180        0    90
#> [569,]  81   2      1          1        0   198
#> [570,]  84   4      0        167        0   198
#> [571,]  80   3      1          1        1   230
#> [572,]  82  23      1          0        0   110
#> [573,]  84   5      0        180        1   203
#> [574,]  84   4      0          4        1    85
#> [575,]  81   1      0          1        1   150
#> [576,]  84   1      0         38        1   205
#> [577,]  83   3      0        180        0   174
#> [578,]  81   4      0         90        1   138
#> [579,]  79   9      1          8        0   150
#> [580,]  80  13      1          8        1   140
#> [581,]  80   6      0         71        1   189
#> [582,]  83   1      0          1        1   100
#> [583,]  82  19      0         19        0   120
#> [584,]  80  30      1         13        0   220
#> [585,]  79  14      1          0        0   110
#> [586,]  81  14      1         12        1   128
#> [587,]  82   0      0          2        1   100
#> [588,]  85   9      1          6        1   160
#> [589,]  84  15      1         13        1   110
#> [590,]  81  12      0         12        1   163
#> [591,]  82  16      1          8        0   103
#> [592,]  82   5      1          0        1   146
#> [593,]  81   4      0          4        0   160
#> [594,]  86  12      0        180        1   120
#> [595,]  81  19      1         14        0   120
#> [596,]  82   3      1          2        0   130
#> [597,]  82  15      1          0        0   183
#> [598,]  80   2      0         88        0   135
#> [599,]  86   8      0          8        1   132
#> [600,]  81  16      1          9        0   180
#> [601,]  84   6      0        165        0   145
#> [602,]  84   3      0        180        1   120
#> [603,]  85   3      0          3        1   118
#> [604,]  81   2      1          0        1   118
#> [605,]  81   4      0        180        0   160
#> [606,]  82   1      0        180        1   193
#> [607,]  83   4      0          4        0   130
#> [608,]  87   2      0          5        1   137
#> [609,]  82  14      1         11        1   103
#> [610,]  86   6      1          0        1   140
#> [611,]  83  19      0         43        0   150
#> [612,]  84   3      1          2        0   125
#> [613,]  88  14      1          3        1   130
#> [614,]  83  13      1         12        0   170
#> [615,]  82   4      0          4        0   130
#> [616,]  86  13      0        177        0   163
#> [617,]  86   6      0          6        1   117
#> [618,]  88   4      0          4        0   100
#> [619,]  88   4      0          4        1   115
#> [620,]  85  22      0         22        1   184
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   2      0        180        1    68
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  84   0      0        180        1   136
#> [631,]  90  14      0         14        1   100
#> [632,]  88   1      0          1        0   135
#> [633,]  86   4      0        180        1   145
#> [634,]  91   8      0          8        0   100
#> [635,]  87   2      0        180        0   160
#> [636,]  87   6      1          0        0   125
#> [637,]  86   3      1          0        1    80
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  87  43      0        178        1   130
#> [643,]  87   5      0         36        1   150
#> [644,]  88   3      1          2        0   159
#> [645,]  92   1      0          1        1   167
#> [646,]  91   3      0         33        1   137
#> [647,]  89  12      1          0        1   130
#> [648,]  89  52      0         52        1   130
#> [649,]  89   4      0          4        1   159
#> [650,]  91   0      0          0        0     0
#> [651,]  89  14      0        180        1    84
#> [652,]  90  19      1         11        1   129
#> [653,]  94   6      0         50        0    78
#> [654,]  90   1      0          1        1   118
#> [655,]  91   2      0          2        1   116
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  95   8      1          5        1   150
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
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]  10.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0 
#>  [61]   1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+  99.0 
#>  [91] 180.0+  16.0+ 152.0+   7.0+   6.0+ 180.0+  13.0+ 171.0+ 174.0+   6.0+
#> [101] 180.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [111]  15.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0    2.0  180.0+ 140.0  180.0+
#> [121]   1.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [131] 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+ 180.0+ 180.0+   4.0+
#> [141]   9.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  161.0+ 171.0+ 180.0+   3.0 
#> [161]   1.0  180.0+ 180.0+  45.0    3.0+ 180.0+ 180.0+ 172.0+   8.0    1.0+
#> [171]  15.0  180.0+ 180.0+ 180.0+  77.0    8.0+ 180.0+ 180.0+ 180.0+  94.0 
#> [181] 180.0+ 169.0    6.0  180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+  18.0 
#> [191]   5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [201] 180.0+   7.0+ 180.0+ 180.0+  84.0  180.0+ 180.0+   1.0  180.0+   4.0+
#> [211]   3.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0  180.0+
#> [221]   3.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [231]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0  180.0+ 180.0+ 180.0+
#> [241]   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0  180.0+  13.0 
#> [251] 180.0+ 179.0+ 166.0+  14.0+   3.0    0.5+   3.0+ 180.0+ 175.0+ 180.0+
#> [261] 180.0+   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+   1.0+
#> [271]  18.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+
#> [281] 180.0+ 180.0+   3.0  180.0+  10.0  180.0+ 180.0+   6.0  180.0+  12.0 
#> [291]  99.0  180.0+ 179.0+ 180.0+  11.0+   0.5   18.0    7.0+ 180.0+ 180.0+
#> [301] 180.0+ 180.0+  93.0   21.0+ 180.0+  18.0+ 101.0    4.0    5.0    7.0+
#> [311] 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+ 174.0+   6.0 
#> [321] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   2.0  103.0 
#> [331]  36.0  180.0+  97.0  180.0+ 180.0+   2.0+  18.0  172.0+ 180.0+   7.0 
#> [341] 180.0+   7.0  123.0  180.0+   1.0   60.0  180.0+ 180.0+   7.0+   7.0+
#> [351] 124.0    9.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 152.0  180.0+ 180.0+
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+
#> [371] 180.0+   6.0  180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+   3.0+ 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0   87.0 
#> [391]  12.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0    2.0 
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 159.0   15.0 
#> [411] 180.0+  10.0  180.0+ 180.0+  10.0   57.0  180.0+   3.0+   5.0  180.0+
#> [421]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#> [431]  11.0+   4.0+   7.0   15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+
#> [441]   6.0  180.0+  85.0  180.0+   4.0    7.0    0.5  180.0+  12.0   46.0 
#> [451] 180.0+   4.0    1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0  180.0+   1.0   12.0  180.0+   7.0+  79.0    3.0 
#> [471] 168.0+ 180.0+ 180.0+ 176.0+  18.0   11.0    7.0  180.0+   8.0+   7.0 
#> [481] 180.0+ 180.0+  10.0  180.0+ 172.0  119.0   12.0    8.0  180.0+   1.0 
#> [491]  80.0  180.0+ 180.0+   4.0+  11.0  152.0+  29.0   24.0   32.0   23.0 
#> [501]   6.0  180.0+   3.0+ 180.0+ 180.0+  11.0    4.0   10.0+ 180.0+   3.0+
#> [511]   2.0+ 180.0+   1.0  171.0    1.0   43.0  180.0+ 138.0   71.0   59.0 
#> [521] 161.0  180.0+ 164.0  118.0  173.0  180.0+  37.0  175.0+   7.0+  22.0 
#> [531]  15.0+   3.0  171.0+ 166.0+  20.0+   3.0+  10.0  180.0+  85.0    6.0+
#> [541] 180.0+   1.0  180.0+ 180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+
#> [551] 180.0+ 180.0+ 180.0+ 103.0  180.0+ 177.0+  70.0  180.0+ 180.0+ 180.0+
#> [561]   7.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 167.0 
#> [571]   3.0+  62.0  180.0+   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+
#> [581]  71.0    1.0   19.0   30.0  180.0+ 180.0+   2.0  180.0+ 180.0+  12.0 
#> [591]  16.0+   5.0+   4.0+ 180.0+ 180.0+   3.0   83.0   88.0    8.0  180.0+
#> [601] 165.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  174.0    6.0 
#> [611]  43.0  180.0+  14.0   13.0    4.0  177.0    6.0+   4.0+   4.0   22.0 
#> [621] 180.0+  46.0  180.0+ 180.0+   4.0  119.0  180.0+   1.0+ 180.0+ 180.0+
#> [631]  14.0    1.0+ 180.0+   8.0  180.0+  25.0    3.0   50.0   11.0  180.0+
#> [641] 180.0+ 178.0+  36.0   75.0    1.0   33.0  180.0+  52.0    4.0    0.5 
#> [651] 180.0+ 180.0+  50.0    1.0+   2.0  179.0+   8.0+ 180.0+  16.0   67.0 
#> [661]  12.0    8.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8461253 
```
