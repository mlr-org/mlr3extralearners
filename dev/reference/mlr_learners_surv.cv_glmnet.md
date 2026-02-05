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
#> min 0.00319    44   2.675 0.1312       6
#> 1se 0.06864    11   2.806 0.1209       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35   2      0        180        0   121
#>   [4,]  38  13      1          0        1   161
#>   [5,]  36   1      0        180        1   155
#>   [6,]  38  12      1          8        1   120
#>   [7,]  33   6      1          1        1   115
#>   [8,]  38  16      1         10        0   160
#>   [9,]  38  12      1         11        1    92
#>  [10,]  40  12      1          9        0   153
#>  [11,]  42   3      1          1        1   130
#>  [12,]  38   5      1          3        0   125
#>  [13,]  40   6      0        180        1   138
#>  [14,]  42   2      0        180        0   100
#>  [15,]  41   2      1          1        0   166
#>  [16,]  40   1      1          0        1   145
#>  [17,]  43   4      1          0        1   130
#>  [18,]  42   4      0        180        0   162
#>  [19,]  42  12      1         10        1   170
#>  [20,]  43   2      1          1        1   116
#>  [21,]  42   2      0        180        1   124
#>  [22,]  44   5      1          1        0   170
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  41  13      1          1        0   140
#>  [26,]  45   9      1          7        0   110
#>  [27,]  45   6      0        180        1   170
#>  [28,]  41   5      1          4        1   141
#>  [29,]  44   2      1          1        1   150
#>  [30,]  43   2      0        180        1   140
#>  [31,]  45   2      0        180        1   140
#>  [32,]  46   2      1          1        0   126
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  46   7      1          2        0   166
#>  [36,]  43  29      0        180        1   180
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  46  13      1         10        0   100
#>  [40,]  49   5      0         73        1   136
#>  [41,]  45   5      0          5        0   141
#>  [42,]  46   2      1          1        1   122
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  48  12      1         11        0   200
#>  [49,]  47   9      1          6        0   170
#>  [50,]  49   4      0        180        0   117
#>  [51,]  47  10      0         10        1   140
#>  [52,]  50   1      1          0        1   129
#>  [53,]  48   2      1          0        0   184
#>  [54,]  47   7      0        180        0   145
#>  [55,]  50   4      1          1        0   125
#>  [56,]  50   6      1          2        1   140
#>  [57,]  46   3      1          1        1   140
#>  [58,]  46   9      1          9        1   122
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  49  15      1         11        1   160
#>  [62,]  49  23      0        179        1   112
#>  [63,]  52   2      0        180        1   170
#>  [64,]  50   7      1          0        1    92
#>  [65,]  50   1      1          0        0   150
#>  [66,]  51   8      0        180        1   140
#>  [67,]  46   3      0        180        1   120
#>  [68,]  46   1      1          1        0   145
#>  [69,]  48   7      1          0        1   110
#>  [70,]  48  17      1         10        0   111
#>  [71,]  49   9      1          3        0   102
#>  [72,]  49  15      0        180        1   160
#>  [73,]  54  17      1         12        1   102
#>  [74,]  53   5      0         77        0   159
#>  [75,]  53   7      1          0        0   199
#>  [76,]  54   6      1          3        0   129
#>  [77,]  50   2      0          5        1   106
#>  [78,]  50  10      1          6        0   122
#>  [79,]  53   8      1          7        0   160
#>  [80,]  49   5      1          2        1   150
#>  [81,]  53   4      0          4        0   140
#>  [82,]  52  14      1          7        1   200
#>  [83,]  48   6      0        180        0   160
#>  [84,]  48  11      1         10        0   120
#>  [85,]  53   4      1          0        1   156
#>  [86,]  51  13      0         99        1   160
#>  [87,]  55   3      1          1        0   150
#>  [88,]  54  23      1         10        0   131
#>  [89,]  52   7      1          2        0   154
#>  [90,]  55   6      1          2        1   114
#>  [91,]  54   9      1          1        0   130
#>  [92,]  55   4      1          2        0   150
#>  [93,]  52   4      0        180        1   180
#>  [94,]  51  13      1         11        0   145
#>  [95,]  50   5      1          4        1   150
#>  [96,]  54   4      1          0        1   121
#>  [97,]  50   3      0        174        1   153
#>  [98,]  55  28      1         13        1   160
#>  [99,]  49   6      1          0        1   130
#> [100,]  50   7      1          1        0   156
#> [101,]  53   8      1          0        1   130
#> [102,]  50   7      1          0        1   127
#> [103,]  55   1      0        180        0   127
#> [104,]  54   1      0        180        0   162
#> [105,]  56   3      0        180        1   193
#> [106,]  56   2      0        180        0   132
#> [107,]  55   5      1          4        1   120
#> [108,]  52   8      0        180        0   119
#> [109,]  53  18      1          9        1   150
#> [110,]  52  16      0         16        0   152
#> [111,]  53  10      1          9        0   172
#> [112,]  52  16      1         14        0   170
#> [113,]  53   4      0        180        1   150
#> [114,]  55   6      0        180        1   100
#> [115,]  55   6      1          5        1   138
#> [116,]  54  12      1          0        1   190
#> [117,]  56   3      0          8        1   139
#> [118,]  55   1      0          2        0   130
#> [119,]  57   3      0          3        0   120
#> [120,]  54   7      1          2        0   129
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  56   4      1          0        1   140
#> [124,]  52   2      0        180        0   140
#> [125,]  56  14      1         11        0   130
#> [126,]  53   3      1          0        1   200
#> [127,]  57  10      0        180        1   170
#> [128,]  54   5      0        180        1   108
#> [129,]  57   0      0          0        1   150
#> [130,]  53  21      1         13        1   130
#> [131,]  59   3      1          1        0   172
#> [132,]  58   6      1          0        1    90
#> [133,]  53  15      1         10        1   130
#> [134,]  55  13      0        166        1   140
#> [135,]  54  23      1          8        0   120
#> [136,]  57   4      1          2        1   185
#> [137,]  57  11      1         10        1   129
#> [138,]  55   3      1          2        0   140
#> [139,]  55   5      0          5        1   131
#> [140,]  54   7      1          0        1   141
#> [141,]  59  15      1         10        0   140
#> [142,]  58   9      1          0        1   180
#> [143,]  58   1      1          1        1   200
#> [144,]  55   5      1          0        0   140
#> [145,]  56   7      1          5        1   120
#> [146,]  59   9      1          1        1   125
#> [147,]  60  11      1          9        0   106
#> [148,]  59   3      0        180        0   120
#> [149,]  57   2      0          2        1   120
#> [150,]  60   5      1          1        0   138
#> [151,]  57   5      0        180        1   130
#> [152,]  58  11      1          9        1   124
#> [153,]  55   5      1          0        1   160
#> [154,]  59   6      1          0        1   140
#> [155,]  59   4      1          0        1   152
#> [156,]  58  26      1          0        1   189
#> [157,]  61   9      0          9        1   160
#> [158,]  59   2      1          1        0   140
#> [159,]  58   8      0        161        1   140
#> [160,]  61   3      1          2        1   102
#> [161,]  61  20      1         13        0   130
#> [162,]  57   2      1          0        1   116
#> [163,]  58  10      0         10        1   150
#> [164,]  57  11      0        180        1   150
#> [165,]  61   3      0         17        0   143
#> [166,]  57   3      1          2        0   120
#> [167,]  58  19      1         13        1   140
#> [168,]  56  18      1         11        1   165
#> [169,]  59   9      1          0        1    80
#> [170,]  55   4      1          3        1   160
#> [171,]  60  12      1          0        1   114
#> [172,]  55   9      1          7        1   135
#> [173,]  61   4      1          0        1   115
#> [174,]  56   8      1          8        0   120
#> [175,]  61  13      1         12        1   130
#> [176,]  59  11      1          8        1   190
#> [177,]  57   1      0          1        0   126
#> [178,]  57  15      1         13        1   110
#> [179,]  59   5      1          2        0   182
#> [180,]  58   5      1          1        1   135
#> [181,]  59  10      0        180        0   160
#> [182,]  61  13      0         13        0   210
#> [183,]  58   8      1          5        0   152
#> [184,]  62  10      1          0        1   153
#> [185,]  62   7      1          2        1   180
#> [186,]  61  18      0        170        0   140
#> [187,]  58   8      1          3        1   150
#> [188,]  61   7      0          7        1   150
#> [189,]  60   7      0          7        0   147
#> [190,]  61   6      0          6        0   134
#> [191,]  59  13      1          2        0   198
#> [192,]  57  12      1          9        1   120
#> [193,]  62   4      1          0        0   160
#> [194,]  58   3      1          0        1   146
#> [195,]  62   4      1          3        0   173
#> [196,]  59   1      0        180        0   155
#> [197,]  59  16      1          9        1   133
#> [198,]  63   6      0         28        1   120
#> [199,]  61  13      0         13        0   120
#> [200,]  61   5      0          5        1   110
#> [201,]  57  18      1          9        1    93
#> [202,]  61   5      0          5        1   160
#> [203,]  58  11      1          9        0   179
#> [204,]  57   2      1          1        0   159
#> [205,]  62  17      1         10        1   180
#> [206,]  58   7      0        180        1   150
#> [207,]  63   3      1          1        0   180
#> [208,]  61   7      0        180        0   135
#> [209,]  63   4      1          3        0   222
#> [210,]  62   3      0        180        1   105
#> [211,]  63   4      0        180        1   190
#> [212,]  64   4      0        180        0   130
#> [213,]  63   4      1          1        0   155
#> [214,]  60  18      1         13        0   132
#> [215,]  59   8      0        180        1   140
#> [216,]  58   9      1          9        0   110
#> [217,]  62   7      0          7        0   150
#> [218,]  59   1      0         22        1   162
#> [219,]  58   2      0        180        0   127
#> [220,]  59   4      0        180        0   196
#> [221,]  60   7      1          5        1   141
#> [222,]  60   7      0          7        0   140
#> [223,]  59   5      1          1        0   148
#> [224,]  60   7      1          1        1    90
#> [225,]  65  13      0        180        1   100
#> [226,]  63   1      0          1        0   162
#> [227,]  63   1      0          1        0   130
#> [228,]  59   4      0          4        0   149
#> [229,]  64  10      1          9        0   160
#> [230,]  62   6      0          6        0   120
#> [231,]  63  12      1         10        0   200
#> [232,]  59  10      0        180        1   130
#> [233,]  61   6      1          1        1   117
#> [234,]  64  12      1         11        0   160
#> [235,]  64   6      1          0        1   140
#> [236,]  63  10      1          0        1   148
#> [237,]  66   3      1          1        0   127
#> [238,]  61  10      1          2        1   194
#> [239,]  64  32      1          9        1   160
#> [240,]  63  12      1          9        0   114
#> [241,]  63   7      0        180        0   120
#> [242,]  65   8      1          0        0   168
#> [243,]  65  10      1          8        1   120
#> [244,]  60   6      0        180        0   130
#> [245,]  61  12      1         11        0   154
#> [246,]  64   9      0        180        0   150
#> [247,]  65   3      0        180        1   190
#> [248,]  63  16      1          7        1   110
#> [249,]  64   7      0        180        1   120
#> [250,]  66   6      1          1        1   130
#> [251,]  63  12      0         12        1   150
#> [252,]  65   6      0          9        0   112
#> [253,]  65   3      1          0        1    80
#> [254,]  63   5      1          4        0   170
#> [255,]  62  13      1         11        0   180
#> [256,]  67  11      0         11        1   100
#> [257,]  64   2      0          2        0   201
#> [258,]  66  16      1         11        1   169
#> [259,]  62   9      0        180        0   145
#> [260,]  61  14      1          5        0   140
#> [261,]  63   3      1          2        0   120
#> [262,]  65   8      1          0        1   140
#> [263,]  67   6      0        180        1   170
#> [264,]  65  15      1         11        1   160
#> [265,]  68   5      1          4        1   150
#> [266,]  64  13      1         12        1   150
#> [267,]  64   6      1          0        1   125
#> [268,]  66   7      1          0        1   115
#> [269,]  66  13      1          0        0   118
#> [270,]  64  14      1         13        1   150
#> [271,]  67   4      1          3        0   130
#> [272,]  66   3      1          0        1   135
#> [273,]  66   6      1          0        1   140
#> [274,]  65   2      1          1        1   170
#> [275,]  63   7      1          0        0   162
#> [276,]  67   8      1          1        1   130
#> [277,]  68   5      0          5        1    90
#> [278,]  66  14      0        180        0   130
#> [279,]  65  17      1         14        1   100
#> [280,]  63   8      1          1        1   162
#> [281,]  65  18      1          3        0   120
#> [282,]  63  10      0         18        1   130
#> [283,]  68  11      0        180        0   160
#> [284,]  68  14      0         79        0   172
#> [285,]  66  12      1         10        1   150
#> [286,]  65  15      1         12        1   150
#> [287,]  66  11      1          0        0   100
#> [288,]  69  12      0         15        1   140
#> [289,]  63   2      0        180        0   150
#> [290,]  65  11      1          6        0   130
#> [291,]  69  21      1         10        0   180
#> [292,]  69   6      0        180        1   100
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  65   8      1          0        1    90
#> [296,]  66   3      0          3        1   138
#> [297,]  69   1      1          0        0   170
#> [298,]  63   2      1          0        0    99
#> [299,]  67   2      0        180        0   184
#> [300,]  65  10      1          1        1   148
#> [301,]  66  19      1         12        1   150
#> [302,]  67  12      1         12        0   160
#> [303,]  69   6      0         99        1   140
#> [304,]  65   4      1          1        0   130
#> [305,]  64   4      0        179        0   160
#> [306,]  66   4      0        180        1   130
#> [307,]  70  15      1         12        1   132
#> [308,]  64  11      0         11        0   125
#> [309,]  64   4      0        180        1   140
#> [310,]  64   0      1          0        1   118
#> [311,]  67   2      0         18        0   131
#> [312,]  66   7      1          5        1   131
#> [313,]  66   4      0        180        0   177
#> [314,]  65  13      1         12        1   130
#> [315,]  69  17      1         10        0   140
#> [316,]  66   6      0        180        0   140
#> [317,]  65   1      0          1        1   120
#> [318,]  68  18      1          0        1   160
#> [319,]  65   6      0        101        1   115
#> [320,]  70   7      1          0        1   190
#> [321,]  68   7      0        150        0   210
#> [322,]  71  20      1          0        1   160
#> [323,]  66   9      1          3        1   151
#> [324,]  70   4      1          0        1   180
#> [325,]  69   8      0        180        1   153
#> [326,]  70  14      0        171        0   166
#> [327,]  66   4      0        180        0   130
#> [328,]  67   6      1          4        0   130
#> [329,]  65   2      0        180        0   130
#> [330,]  67  14      1         13        0   130
#> [331,]  65  14      1         13        1   150
#> [332,]  71   7      0          7        0   230
#> [333,]  69   5      0          5        1   142
#> [334,]  69   3      0          3        1   130
#> [335,]  67   1      0         36        1   104
#> [336,]  69   6      1          4        1   174
#> [337,]  72   7      0          7        1   110
#> [338,]  69   8      1          7        1   108
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  68  18      0         18        1   100
#> [342,]  69  11      1          0        1   120
#> [343,]  66   2      0        180        0   130
#> [344,]  67   7      1          4        0   122
#> [345,]  69   4      1          3        0   132
#> [346,]  68   2      0          7        1   130
#> [347,]  69   8      1          2        0   121
#> [348,]  67  13      1          9        0   130
#> [349,]  70   3      0        123        0   130
#> [350,]  70   9      0        180        1   142
#> [351,]  68   3      0         19        0   135
#> [352,]  67  12      1          8        0   120
#> [353,]  69   1      0          1        1   110
#> [354,]  67   1      0          1        1    60
#> [355,]  67   4      0         60        1   136
#> [356,]  67   8      1          0        1   130
#> [357,]  72  13      1         11        1   195
#> [358,]  66  24      1         13        0   130
#> [359,]  70  35      1          0        1   105
#> [360,]  70   7      0          7        0   102
#> [361,]  73  20      1          0        1   170
#> [362,]  69  10      1          6        1   120
#> [363,]  70  11      0        180        1   210
#> [364,]  72  12      1         10        0   170
#> [365,]  67   8      0        180        1   170
#> [366,]  67   9      0        180        0   158
#> [367,]  73  13      0        152        1   130
#> [368,]  67   4      1          1        0   134
#> [369,]  72   6      1          5        0   115
#> [370,]  69   3      0        180        0   220
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  68   7      0        180        1   130
#> [377,]  72  16      1          1        1   130
#> [378,]  69   1      1          0        0   155
#> [379,]  73   6      1          0        1   270
#> [380,]  72   8      1          1        1   150
#> [381,]  71   2      1          0        1   180
#> [382,]  68  15      1         13        1   130
#> [383,]  70   3      0          3        1   159
#> [384,]  70  13      1          9        0   100
#> [385,]  72   6      0        180        1   130
#> [386,]  73   0      0        180        1   161
#> [387,]  74   8      1          0        1    85
#> [388,]  73   4      0        180        1   154
#> [389,]  69   2      1          0        1   110
#> [390,]  68   9      0        180        1   120
#> [391,]  71  20      1         10        0   140
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71  17      1         11        0   160
#> [395,]  71   3      1          2        1   190
#> [396,]  69  12      1          1        1   149
#> [397,]  70  26      1         11        1   120
#> [398,]  74   4      0          4        0   120
#> [399,]  73   4      0         58        1   160
#> [400,]  72   5      1          3        1   160
#> [401,]  70   3      0        180        1   154
#> [402,]  73   6      0        180        0   110
#> [403,]  72  15      1          0        1   150
#> [404,]  71   7      1          2        0   143
#> [405,]  72   8      1          0        1   140
#> [406,]  71  13      1          8        0   121
#> [407,]  69   2      1          1        1    80
#> [408,]  70   4      1          0        1   140
#> [409,]  71  14      1         13        1   170
#> [410,]  74   7      1          0        1   117
#> [411,]  69   7      0        180        1   144
#> [412,]  72  15      1         13        0   156
#> [413,]  70   8      0          8        0   120
#> [414,]  73  10      1         10        1   120
#> [415,]  74  15      1          9        1   179
#> [416,]  71   2      0         10        1   112
#> [417,]  75   9      1          7        0   140
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  70   7      1          4        0   184
#> [421,]  72   1      1          1        0   168
#> [422,]  72   7      0         57        1   145
#> [423,]  73  10      0        180        0   162
#> [424,]  72  11      0         11        1   140
#> [425,]  73   5      1          3        1   112
#> [426,]  73  12      1         12        1   140
#> [427,]  72   4      1          0        1   197
#> [428,]  71   3      1          0        0   144
#> [429,]  73   5      0        180        0   126
#> [430,]  73   4      0        180        0   124
#> [431,]  74  34      1          8        1   233
#> [432,]  76   3      1          0        1   120
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  72   3      0        180        0   160
#> [436,]  76   5      0          5        1   130
#> [437,]  77  11      0         11        1   150
#> [438,]  77   4      0          4        0   185
#> [439,]  75   3      1          1        0   180
#> [440,]  72   7      1          2        0   142
#> [441,]  71  16      0        180        0   140
#> [442,]  76   1      0        180        0   114
#> [443,]  74   2      1          1        0   140
#> [444,]  76   8      1          0        1   141
#> [445,]  75  23      1         14        1   110
#> [446,]  72   4      1          3        0   160
#> [447,]  76  17      1          0        1   200
#> [448,]  73   4      1          3        1   125
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  75   4      1          2        1   188
#> [452,]  74   6      0        180        0   160
#> [453,]  76   4      0          4        1   155
#> [454,]  75   1      0          1        1   125
#> [455,]  74   2      0        180        0   111
#> [456,]  73   0      0        180        0   156
#> [457,]  72   5      0        180        0   120
#> [458,]  78  12      1         11        1   160
#> [459,]  76   5      0        180        0   185
#> [460,]  74  10      1          0        1   135
#> [461,]  76   5      1          0        1   167
#> [462,]  73  33      1         12        1   175
#> [463,]  77   5      1          0        0   123
#> [464,]  77  12      1          9        1   100
#> [465,]  73  10      1          9        0   146
#> [466,]  76  12      1         11        1   120
#> [467,]  78   5      1          0        1   170
#> [468,]  74   6      0         79        1   140
#> [469,]  75   3      1          1        1   171
#> [470,]  74   9      1          8        0   200
#> [471,]  78  18      0         18        1   144
#> [472,]  77   3      0        180        0   110
#> [473,]  76  29      0         47        0    90
#> [474,]  73   8      1          1        1   162
#> [475,]  74   2      0        180        0   100
#> [476,]  76  13      1          1        1   170
#> [477,]  78  32      1          9        1   198
#> [478,]  79   6      0        180        0   170
#> [479,]  78   0      0        180        1   212
#> [480,]  75   5      0        119        1   150
#> [481,]  75  13      1          6        0   150
#> [482,]  76   1      0          1        1    83
#> [483,]  79   4      0         80        0   145
#> [484,]  78  12      1          9        0   150
#> [485,]  78   2      1          1        0   130
#> [486,]  75   4      1          0        0   212
#> [487,]  78  10      0        180        1   130
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  79   8      0         32        1   120
#> [493,]  80   9      0         23        1   128
#> [494,]  78   6      1          0        1   240
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79   2      1          0        1   121
#> [498,]  78  14      1          0        1   140
#> [499,]  81   1      0          1        0   130
#> [500,]  79   4      0          4        1   125
#> [501,]  76  12      1         10        1   127
#> [502,]  80   3      1          0        1   120
#> [503,]  75   2      1          1        1   204
#> [504,]  76   1      0          1        1   140
#> [505,]  77  31      1          3        1   161
#> [506,]  76   1      0          1        1    90
#> [507,]  78   7      1          0        1   110
#> [508,]  77   7      0        180        1   170
#> [509,]  77   9      1          4        0   141
#> [510,]  82   5      0          8        1   120
#> [511,]  80  40      1          0        1   138
#> [512,]  78   4      0         59        1   112
#> [513,]  80  17      1         12        0   100
#> [514,]  76   7      0        161        0   151
#> [515,]  80  15      1          0        1    90
#> [516,]  78  32      0        180        1   130
#> [517,]  78   7      0          7        1   147
#> [518,]  79   3      0          3        1   101
#> [519,]  76   1      0        166        0   131
#> [520,]  81   4      1          1        1   104
#> [521,]  78  20      1          0        1   109
#> [522,]  80   1      0          1        0   100
#> [523,]  77  10      1          8        1   130
#> [524,]  77   5      0         85        0   188
#> [525,]  80   2      1          1        0   168
#> [526,]  79   6      0          6        0   152
#> [527,]  80   6      1          0        1   119
#> [528,]  78   2      0        180        0   148
#> [529,]  80   5      0          5        1   130
#> [530,]  79  10      0        180        1   150
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
#> [541,]  81  11      1          8        0   160
#> [542,]  80  11      1          8        0   170
#> [543,]  78  23      1         10        1   145
#> [544,]  79   4      0          4        1   183
#> [545,]  78   9      1          4        1   120
#> [546,]  79   1      0        180        1   170
#> [547,]  81  15      0        180        1   140
#> [548,]  80   7      1          0        1   146
#> [549,]  84   5      1          1        1    85
#> [550,]  81  20      1          9        0   170
#> [551,]  81  16      0         16        1   110
#> [552,]  80  11      1          8        0   110
#> [553,]  81   8      0        180        0   146
#> [554,]  80   8      1          7        0   160
#> [555,]  79   7      0        177        0   197
#> [556,]  79   0      1          0        1    96
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  83   2      0          2        1   155
#> [560,]  84   4      0        167        0   198
#> [561,]  80   3      1          1        1   230
#> [562,]  82  23      1          0        0   110
#> [563,]  84   5      0        180        1   203
#> [564,]  84   4      0          4        1    85
#> [565,]  84   1      0         38        1   205
#> [566,]  83   3      0        180        0   174
#> [567,]  81   4      0         90        1   138
#> [568,]  79   9      1          8        0   150
#> [569,]  85   3      1          2        1   160
#> [570,]  80  13      1          8        1   140
#> [571,]  84   4      0         89        1   129
#> [572,]  80   2      1          0        1   130
#> [573,]  79   4      0          4        1    60
#> [574,]  80   6      0         71        1   189
#> [575,]  82  19      0         19        0   120
#> [576,]  79  14      1          0        0   110
#> [577,]  81  14      1         12        1   128
#> [578,]  83   2      0        154        0   130
#> [579,]  83   1      0        180        0   160
#> [580,]  81   4      0          4        0   175
#> [581,]  84  15      1         13        1   110
#> [582,]  81  12      0         12        1   163
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  83  12      1          2        1   170
#> [587,]  81  19      1         14        0   120
#> [588,]  82   3      1          2        0   130
#> [589,]  82  15      1          0        0   183
#> [590,]  80   2      0         88        0   135
#> [591,]  83   7      0        126        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  82   9      0        180        1   134
#> [595,]  84   3      0        180        1   120
#> [596,]  81  13      0        180        0   152
#> [597,]  85   3      0          3        1   118
#> [598,]  81   2      1          0        1   118
#> [599,]  83   9      0        180        1   149
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  87   2      0          5        1   137
#> [603,]  86  12      1          0        1   132
#> [604,]  82  14      1         11        1   103
#> [605,]  84  16      0         70        1   150
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  83  10      1          0        1   190
#> [609,]  86   2      0        180        1   169
#> [610,]  88  14      1          3        1   130
#> [611,]  84   3      0          3        1   121
#> [612,]  83  13      1         12        0   170
#> [613,]  84   7      1          2        0   148
#> [614,]  84   9      0         92        1   110
#> [615,]  84   3      0        180        1   170
#> [616,]  86  13      0        177        0   163
#> [617,]  84  13      0         62        1   100
#> [618,]  86   6      1          1        0   112
#> [619,]  88   4      0          4        0   100
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  87   2      0        180        1   130
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  15      1          9        1   138
#> [635,]  89  10      0         46        1   170
#> [636,]  90  14      0         14        1   100
#> [637,]  88   1      0          1        0   135
#> [638,]  91   8      0          8        0   100
#> [639,]  87   2      0        180        0   160
#> [640,]  87   6      1          0        0   125
#> [641,]  91  10      0        145        0   135
#> [642,]  86   3      1          0        1    80
#> [643,]  88   7      0         24        0   119
#> [644,]  90  11      1         10        1   186
#> [645,]  86  10      0        180        1   137
#> [646,]  86   9      1          7        0   130
#> [647,]  91   1      0          1        1    74
#> [648,]  87  43      0        178        1   130
#> [649,]  87   5      0         36        1   150
#> [650,]  90   5      1          0        1   125
#> [651,]  88   3      1          2        0   159
#> [652,]  89   3      1          1        1   160
#> [653,]  92   1      0          1        1   167
#> [654,]  88   5      0        158        0   100
#> [655,]  89  12      1          0        1   130
#> [656,]  92   7      0          7        1   110
#> [657,]  89   4      0          4        1   159
#> [658,]  91   0      0          0        0     0
#> [659,]  91   4      1          0        1   120
#> [660,]  94   6      0         50        0    78
#> [661,]  90   1      0          1        1   118
#> [662,]  93   8      0        179        1   110
#> [663,]  94   8      0          8        1   142
#> [664,]  92   4      0         76        1   149
#> [665,]  90  16      0         16        1   106
#> [666,]  95   8      1          5        1   150
#> [667,]  91   7      0          7        0   135
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   2.0+   5.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [21] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+  73.0 
#>  [41]   5.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#>  [61] 179.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   88.0+
#>  [71] 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+
#>  [81]   4.0+  85.0  180.0+ 180.0+ 166.0+  99.0  180.0+ 152.0+   7.0+   6.0+
#>  [91] 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+
#> [101] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [111] 180.0+  16.0  180.0+ 180.0+ 180.0+  12.0+   8.0    2.0    3.0+ 180.0+
#> [121] 180.0+ 180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [131] 180.0+ 180.0+ 180.0+ 166.0+ 180.0+   4.0+ 180.0+ 180.0+   5.0+ 180.0+
#> [141] 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [151] 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+ 161.0+   3.0 
#> [161] 180.0+ 180.0+  10.0+ 180.0+  17.0    3.0+  19.0  180.0+   9.0+ 180.0+
#> [171] 172.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+
#> [181] 180.0+  13.0+   8.0+ 180.0+ 180.0+ 170.0  180.0+   7.0    7.0+   6.0 
#> [191] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0 
#> [201]  18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+
#> [221]  84.0    7.0+ 180.0+ 180.0+ 180.0+   1.0    1.0    4.0+ 167.0    6.0+
#> [231] 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+   3.0+  88.0  180.0+  12.0 
#> [241] 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251]  12.0    9.0    3.0  180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [261]   3.0+  15.0  180.0+ 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+  14.0+
#> [271] 180.0+   3.0+ 180.0+ 175.0+   7.0+   8.0    5.0  180.0+ 180.0+ 180.0+
#> [281] 123.0+  18.0  180.0+  79.0   80.0   15.0+ 180.0+  15.0  180.0+ 180.0+
#> [291] 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+ 180.0+ 180.0+
#> [301]  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5 
#> [311]  18.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0   18.0+ 101.0    7.0+
#> [321] 150.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+   6.0  180.0+ 180.0+
#> [331]  14.0+   7.0+   5.0+   3.0+  36.0   97.0    7.0    8.0+   2.0+ 180.0+
#> [341]  18.0  180.0+ 180.0+   7.0  180.0+   7.0    8.0+  13.0+ 123.0  180.0+
#> [351]  19.0  180.0+   1.0    1.0   60.0  180.0+ 132.0  180.0+ 180.0+   7.0+
#> [361] 124.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0   76.0  180.0+ 180.0+
#> [371] 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0  180.0+
#> [381] 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [391]  20.0  180.0+ 180.0+ 180.0+   3.0   12.0  180.0+   4.0+  58.0  180.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+  14.0+ 180.0+
#> [411] 180.0+ 180.0+   8.0+  15.0  180.0+  10.0  180.0+   4.0+ 180.0+ 104.0+
#> [421]   1.0   57.0  180.0+  11.0    5.0   12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431]  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+   7.0 
#> [441] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0+ 180.0+  12.0  180.0+
#> [451]  46.0  180.0+   4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#> [461] 180.0+  33.0    5.0  180.0+ 180.0+  12.0  180.0+  79.0    3.0  168.0+
#> [471]  18.0  180.0+  47.0  180.0+ 180.0+ 180.0+  32.0  180.0+ 180.0+ 119.0 
#> [481] 180.0+   1.0   80.0  180.0+ 180.0+   4.0+ 180.0+ 152.0+   3.0   29.0 
#> [491]  24.0   32.0   23.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0    4.0 
#> [501] 180.0+   3.0+   2.0+   1.0  171.0    1.0   43.0  180.0+  71.0    8.0 
#> [511]  40.0   59.0   17.0  161.0  180.0+ 180.0+   7.0+   3.0  166.0+  71.0 
#> [521]  20.0+   1.0   10.0   85.0   10.0    6.0+   6.0  180.0+   5.0  180.0+
#> [531] 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [541] 180.0+ 169.0   70.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0 
#> [551]  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+   2.0  167.0 
#> [561]   3.0+  62.0  180.0+   4.0   38.0  180.0+  90.0  180.0+ 180.0+ 180.0+
#> [571]  89.0  180.0+   4.0   71.0   19.0  180.0+ 180.0+ 154.0  180.0+   4.0+
#> [581] 180.0+  12.0   16.0+   5.0+   4.0+  77.0  180.0+   3.0   83.0   88.0 
#> [591] 126.0    8.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+   5.0  180.0+ 174.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0 
#> [611]   3.0   13.0  180.0+  92.0  180.0+ 177.0   62.0    6.0+   4.0+  20.0 
#> [621]   4.0  180.0+ 180.0+   3.0+   8.0+ 180.0+   4.0  119.0  180.0+   1.0+
#> [631] 180.0+   8.0  110.0  180.0+  46.0   14.0    1.0+   8.0  180.0+  25.0 
#> [641] 145.0    3.0   24.0   11.0  180.0+ 180.0+   1.0  178.0+  36.0   89.0 
#> [651]  75.0    3.0+   1.0  158.0  180.0+   7.0    4.0    0.5    4.0   50.0 
#> [661]   1.0+ 179.0+   8.0+  76.0   16.0    8.0    7.0+ 180.0+   3.0   15.0+
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
#>   0.8516766 
```
