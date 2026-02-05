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
#> min 0.00318    45   2.909 0.1584       6
#> 1se 0.07513    11   3.060 0.1550       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  40   6      0        180        1   138
#>  [19,]  42   2      0        180        0   100
#>  [20,]  43   3      1          0        1   100
#>  [21,]  40   1      1          0        1   145
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  12      1         10        1   170
#>  [25,]  43   2      1          1        1   116
#>  [26,]  42   2      0        180        1   124
#>  [27,]  44   5      1          1        0   170
#>  [28,]  45   3      0        180        1   154
#>  [29,]  41  10      1          8        0   150
#>  [30,]  44   3      0        180        0   141
#>  [31,]  45   9      1          7        0   110
#>  [32,]  41   5      1          4        1   141
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  46   7      1          2        0   166
#>  [39,]  43  29      0        180        1   180
#>  [40,]  43  10      0        180        0   185
#>  [41,]  47   6      1          0        1   116
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   4      1          0        1   114
#>  [48,]  47   2      0        180        0   108
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   5      1          3        0   130
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   5      1          3        1   130
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  47  10      0         10        1   140
#>  [57,]  48   2      1          0        0   184
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   3      1          1        1   140
#>  [60,]  46   9      1          9        1   122
#>  [61,]  50   7      0        180        1   110
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  49  23      0        179        1   112
#>  [65,]  46   6      1          0        1   156
#>  [66,]  52   2      0        180        1   170
#>  [67,]  50   7      1          0        1    92
#>  [68,]  50   4      0          4        1   100
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  47   6      0        180        1   162
#>  [74,]  51   8      0        180        1   140
#>  [75,]  46   3      0        180        1   120
#>  [76,]  46   1      1          1        0   145
#>  [77,]  50   4      1          1        0   150
#>  [78,]  48   7      1          0        1   110
#>  [79,]  48  17      1         10        0   111
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  53   7      1          0        0   199
#>  [87,]  54   6      1          3        0   129
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  10      1          6        0   122
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  49   5      1          2        1   150
#>  [94,]  52  14      1          7        1   200
#>  [95,]  51  13      0         99        1   160
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54   9      1          1        0   130
#> [100,]  55   4      1          2        0   150
#> [101,]  52   4      0        180        1   180
#> [102,]  50   5      1          4        1   150
#> [103,]  54   4      1          0        1   121
#> [104,]  52   4      0        180        0   183
#> [105,]  49   1      0          1        1   110
#> [106,]  50   7      1          1        0   156
#> [107,]  53   9      0          9        1    95
#> [108,]  56   4      1          1        1   130
#> [109,]  52   5      0        175        1   117
#> [110,]  55   2      0          2        0   145
#> [111,]  56   3      0        180        1   193
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  55   6      0        180        0   170
#> [115,]  52  16      0         16        0   152
#> [116,]  53  10      1          9        0   172
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   6      1          5        1   138
#> [120,]  54  12      1          0        1   190
#> [121,]  56   3      0          8        1   139
#> [122,]  55   1      0          2        0   130
#> [123,]  57   3      0          3        0   120
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0        180        1   156
#> [129,]  57   1      0          1        1   100
#> [130,]  56   4      1          0        1   140
#> [131,]  55  11      1          7        0   104
#> [132,]  57  10      0        180        1   170
#> [133,]  58   8      0          8        1   130
#> [134,]  54   5      0        180        1   108
#> [135,]  53  21      1         13        1   130
#> [136,]  58   6      1          0        1    90
#> [137,]  53  15      1         10        1   130
#> [138,]  54  17      1          8        1   227
#> [139,]  55   9      1          2        1   147
#> [140,]  55  13      0        166        1   140
#> [141,]  56   5      0          5        1   150
#> [142,]  57   4      1          2        1   185
#> [143,]  53   4      0        147        1   145
#> [144,]  57  11      1         10        1   129
#> [145,]  55   3      1          2        0   140
#> [146,]  54   7      1          0        1   141
#> [147,]  56   4      0          4        0   164
#> [148,]  58   1      1          1        1   200
#> [149,]  56   7      1          5        1   120
#> [150,]  57   1      0        180        0   148
#> [151,]  59   3      0        180        0   120
#> [152,]  58   4      1          0        1   160
#> [153,]  57   2      0          2        1   120
#> [154,]  57   5      0        180        1   130
#> [155,]  58  11      1          9        1   124
#> [156,]  57  10      1          9        0   103
#> [157,]  59   5      0        180        1   155
#> [158,]  59   4      1          0        1   152
#> [159,]  58  26      1          0        1   189
#> [160,]  61   9      0          9        1   160
#> [161,]  60   0      1          0        1    80
#> [162,]  58   8      0        161        1   140
#> [163,]  61   4      1          3        0   151
#> [164,]  61   9      1          8        0   150
#> [165,]  61   3      1          2        1   102
#> [166,]  58   1      0          1        1   100
#> [167,]  61  20      1         13        0   130
#> [168,]  57  13      1         10        0   110
#> [169,]  57   2      1          0        1   116
#> [170,]  58  10      0         10        1   150
#> [171,]  57   4      1          3        0   138
#> [172,]  56  14      0         45        0   130
#> [173,]  57   3      1          2        0   120
#> [174,]  56  13      1          6        1   158
#> [175,]  56  18      1         11        1   165
#> [176,]  59   9      1          0        1    80
#> [177,]  60  12      1          0        1   114
#> [178,]  56   8      1          8        0   120
#> [179,]  61  13      1         12        1   130
#> [180,]  57   1      0          1        0   126
#> [181,]  57  15      1         13        1   110
#> [182,]  59   5      1          2        0   182
#> [183,]  58   5      1          1        1   135
#> [184,]  59  10      0        180        0   160
#> [185,]  61   8      0         77        0   120
#> [186,]  61  13      0         13        0   210
#> [187,]  58   8      1          5        0   152
#> [188,]  62   7      1          2        1   180
#> [189,]  57   3      1          0        0   100
#> [190,]  61  18      0        170        0   140
#> [191,]  61  28      1          7        0   133
#> [192,]  58   8      1          3        1   150
#> [193,]  61   7      0          7        1   150
#> [194,]  60   7      0          7        0   147
#> [195,]  61   6      0          6        0   134
#> [196,]  59  13      1          2        0   198
#> [197,]  62   4      1          3        0   173
#> [198,]  58   2      0         30        0   202
#> [199,]  59   1      0        180        0   155
#> [200,]  59  16      1          9        1   133
#> [201,]  61  13      0         13        0   120
#> [202,]  61   5      0          5        1   110
#> [203,]  57  18      1          9        1    93
#> [204,]  62  17      1         10        1   180
#> [205,]  58   7      0        180        1   150
#> [206,]  63   3      1          1        0   180
#> [207,]  63   1      0        180        1   130
#> [208,]  63   4      1          3        0   222
#> [209,]  62   3      0        180        1   105
#> [210,]  64   4      0        180        0   130
#> [211,]  63   4      1          1        0   155
#> [212,]  60  18      1         13        0   132
#> [213,]  59   8      0        180        1   140
#> [214,]  61   9      1          9        1   150
#> [215,]  59   1      0         22        1   162
#> [216,]  58   2      0        180        0   127
#> [217,]  59   4      0        180        0   196
#> [218,]  60   7      1          5        1   141
#> [219,]  60   7      0          7        0   140
#> [220,]  59   5      1          1        0   148
#> [221,]  65  13      0        180        1   100
#> [222,]  63   1      0          1        0   162
#> [223,]  63   1      0          1        0   130
#> [224,]  59   4      0          4        0   149
#> [225,]  64  10      1          9        0   160
#> [226,]  62   6      0          6        0   120
#> [227,]  63  12      1         10        0   200
#> [228,]  61   6      1          1        1   117
#> [229,]  64  12      1         11        0   160
#> [230,]  64   6      1          0        1   140
#> [231,]  63  10      1          0        1   148
#> [232,]  65  36      1         11        0   140
#> [233,]  63   4      1          3        0   162
#> [234,]  66   3      1          1        0   127
#> [235,]  64  32      1          9        1   160
#> [236,]  63   7      0        180        0   120
#> [237,]  66   5      1          0        1   110
#> [238,]  60   6      0        180        0   130
#> [239,]  64  21      1         10        0   190
#> [240,]  64   9      0        180        0   150
#> [241,]  65   3      0        180        1   190
#> [242,]  63  16      1          7        1   110
#> [243,]  66   6      1          1        1   130
#> [244,]  62   3      1          1        1   199
#> [245,]  65   6      0          9        0   112
#> [246,]  65   3      1          0        1    80
#> [247,]  63   5      1          4        0   170
#> [248,]  62  13      1         11        0   180
#> [249,]  64   2      0          2        0   201
#> [250,]  62   9      0        180        0   145
#> [251,]  61  15      1         10        0   130
#> [252,]  63   9      1          8        1   160
#> [253,]  63   3      1          2        0   120
#> [254,]  63   2      1          0        0   140
#> [255,]  64  19      1          8        1   160
#> [256,]  65   8      1          0        1   140
#> [257,]  67   6      0        180        1   170
#> [258,]  65  15      1         11        1   160
#> [259,]  68   5      1          4        1   150
#> [260,]  64  13      1         12        1   150
#> [261,]  64   6      1          0        1   125
#> [262,]  66   7      1          0        1   115
#> [263,]  64  14      1         13        1   150
#> [264,]  65   3      0          3        0   105
#> [265,]  64   0      0          0        1   148
#> [266,]  66   3      1          0        1   135
#> [267,]  65   2      1          1        1   170
#> [268,]  68   1      0        180        1   166
#> [269,]  64  10      1          9        1   110
#> [270,]  66  14      0        180        0   130
#> [271,]  68  18      0        180        1   260
#> [272,]  65  17      1         14        1   100
#> [273,]  63   8      1          1        1   162
#> [274,]  63   1      1          0        1   155
#> [275,]  67  11      0         11        0   150
#> [276,]  68  14      0         79        0   172
#> [277,]  65  15      1         12        1   150
#> [278,]  66  11      1          0        0   100
#> [279,]  65   4      1          2        1   145
#> [280,]  66  15      1         13        1   160
#> [281,]  69  21      1         10        0   180
#> [282,]  66   9      1          8        0   130
#> [283,]  63   8      0        180        1   120
#> [284,]  65   8      1          0        1    90
#> [285,]  67   1      0        180        1   160
#> [286,]  68  10      1         10        1   150
#> [287,]  63   2      1          0        0    99
#> [288,]  65   6      0          6        0    80
#> [289,]  65  10      1          1        1   148
#> [290,]  66  19      1         12        1   150
#> [291,]  67  12      1         12        0   160
#> [292,]  69   6      0         99        1   140
#> [293,]  65   4      1          1        0   130
#> [294,]  64   4      0        179        0   160
#> [295,]  66   4      0        180        1   130
#> [296,]  64  11      0         11        0   125
#> [297,]  64   4      0        180        1   140
#> [298,]  64   0      1          0        1   118
#> [299,]  67   2      0         18        0   131
#> [300,]  66   7      1          5        1   131
#> [301,]  68   4      1          0        1   160
#> [302,]  65  13      1         12        1   130
#> [303,]  69  17      1         10        0   140
#> [304,]  69   8      0         93        0   140
#> [305,]  64  21      0         21        1   155
#> [306,]  65   1      0          1        1   120
#> [307,]  68  18      1          0        1   160
#> [308,]  65   6      0        101        1   115
#> [309,]  68   4      0          4        1   190
#> [310,]  71   3      0          5        0   112
#> [311,]  70   7      1          0        1   190
#> [312,]  68   7      0        150        0   210
#> [313,]  71  20      1          0        1   160
#> [314,]  67   2      0        180        0   128
#> [315,]  66   9      1          3        1   151
#> [316,]  66   1      1          1        1   165
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
#> [327,]  69   8      0        180        1   180
#> [328,]  71   7      0          7        0   230
#> [329,]  71   3      0        103        0   133
#> [330,]  69   3      0          3        1   130
#> [331,]  67   1      0         36        1   104
#> [332,]  67   5      0          5        0   130
#> [333,]  68   6      0        180        0   145
#> [334,]  69   8      1          5        1   195
#> [335,]  69   6      1          4        1   174
#> [336,]  72   3      1          0        1   132
#> [337,]  72   7      0          7        1   110
#> [338,]  67   3      0        180        0   110
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  67  14      0        172        1   140
#> [342,]  69  11      1          0        1   120
#> [343,]  67   7      1          4        0   122
#> [344,]  69   4      1          3        0   132
#> [345,]  68   2      0          7        1   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  68   3      0         19        0   135
#> [350,]  67  12      1          8        0   120
#> [351,]  69   1      0          1        1   110
#> [352,]  67   1      0          1        1    60
#> [353,]  69   5      0         76        0   120
#> [354,]  66  24      1         13        0   130
#> [355,]  72  30      1          0        1   145
#> [356,]  68   7      1          2        0   135
#> [357,]  71   6      0          9        0   120
#> [358,]  69  10      1          6        1   120
#> [359,]  70  11      0        180        1   210
#> [360,]  72  19      1          8        0   120
#> [361,]  72  12      1         10        0   170
#> [362,]  73  13      0        152        1   130
#> [363,]  70   5      0        180        0   150
#> [364,]  72   2      0          2        1   100
#> [365,]  67   4      1          1        0   134
#> [366,]  72   6      1          5        0   115
#> [367,]  68  23      0        180        1   220
#> [368,]  69   3      0        180        0   220
#> [369,]  71   5      0        180        0   191
#> [370,]  69  16      1         10        1   140
#> [371,]  68   7      0        180        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  72   8      1          1        1   150
#> [375,]  71   2      1          0        1   180
#> [376,]  68  15      1         13        1   130
#> [377,]  70   3      0          3        1   159
#> [378,]  70  13      1          9        0   100
#> [379,]  72   6      0        180        1   130
#> [380,]  73   0      0        180        1   161
#> [381,]  73   4      0        180        1   154
#> [382,]  71   3      1          1        0   150
#> [383,]  74  20      0         20        1   180
#> [384,]  71  20      1         10        0   140
#> [385,]  74   0      1          0        1    90
#> [386,]  73   3      1          0        1   136
#> [387,]  71  17      1         11        0   160
#> [388,]  71   3      1          2        1   190
#> [389,]  73  10      1          8        0   106
#> [390,]  69  12      1          1        1   149
#> [391,]  74   4      0          4        0   120
#> [392,]  72   5      1          3        1   160
#> [393,]  70   3      0        180        1   154
#> [394,]  73   6      0        180        0   110
#> [395,]  72  15      1          0        1   150
#> [396,]  72   8      1          0        1   140
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  70   4      1          0        1   140
#> [401,]  71  14      1         13        1   170
#> [402,]  69   7      0        180        1   144
#> [403,]  70   8      0          8        0   120
#> [404,]  75   2      1          1        0   145
#> [405,]  73  10      1          9        1   146
#> [406,]  72  10      1          9        1   160
#> [407,]  74  15      1          9        1   179
#> [408,]  71   2      0         10        1   112
#> [409,]  75   9      1          7        0   140
#> [410,]  75  13      1          1        1   130
#> [411,]  71  11      1          8        0   110
#> [412,]  71   4      0          4        0   134
#> [413,]  72  15      1         12        1   120
#> [414,]  73  10      1          8        0   120
#> [415,]  70   7      1          4        0   184
#> [416,]  72   1      1          1        0   168
#> [417,]  72   7      0         57        1   145
#> [418,]  73  10      0        180        0   162
#> [419,]  72  11      0         11        1   140
#> [420,]  70   3      0          3        0   150
#> [421,]  73   5      1          3        1   112
#> [422,]  75   1      0        180        1   140
#> [423,]  74  34      1          8        1   233
#> [424,]  76   3      1          0        1   120
#> [425,]  72   5      0        180        0   154
#> [426,]  72   3      0        180        0   160
#> [427,]  76   5      0          5        1   130
#> [428,]  77   4      0          4        0   185
#> [429,]  73  15      0         15        1   160
#> [430,]  71  16      0        180        0   140
#> [431,]  73  10      1         10        0   124
#> [432,]  74   3      0          3        1   128
#> [433,]  74   2      1          1        0   140
#> [434,]  76   8      1          0        1   141
#> [435,]  74  19      1          4        1   200
#> [436,]  75  23      1         14        1   110
#> [437,]  72   4      0         85        1   120
#> [438,]  72   4      1          3        0   160
#> [439,]  73   4      1          3        1   125
#> [440,]  75   7      0          7        0   190
#> [441,]  73  13      1         11        0   195
#> [442,]  74   6      0        180        0   160
#> [443,]  76   4      0          4        1   155
#> [444,]  75   1      0          1        1   125
#> [445,]  74   2      0        180        0   111
#> [446,]  73   1      0         52        1   105
#> [447,]  73   0      0        180        0   156
#> [448,]  78  12      1         11        1   160
#> [449,]  76  44      1         10        0   105
#> [450,]  76   5      0        180        0   185
#> [451,]  74  10      1          0        1   135
#> [452,]  76   5      1          0        1   167
#> [453,]  74   8      1          8        1   170
#> [454,]  75   9      0        180        1   140
#> [455,]  73  33      1         12        1   175
#> [456,]  77   5      1          0        0   123
#> [457,]  73  10      1          9        0   146
#> [458,]  77  12      0        180        0   130
#> [459,]  77   1      1          0        1    90
#> [460,]  76  12      1         11        1   120
#> [461,]  78   5      1          0        1   170
#> [462,]  73   7      1          0        0   174
#> [463,]  74   6      0         79        1   140
#> [464,]  75   3      1          1        1   171
#> [465,]  75   6      0        180        0   150
#> [466,]  74  15      0        180        1   172
#> [467,]  78   8      1          6        1   110
#> [468,]  74   7      0          7        0   161
#> [469,]  76  13      1          1        1   170
#> [470,]  78  32      1          9        1   198
#> [471,]  79   6      0        180        0   170
#> [472,]  80  10      1          6        1   147
#> [473,]  78   0      0        180        1   212
#> [474,]  75  12      1          1        1   120
#> [475,]  75  13      1          6        0   150
#> [476,]  74  10      1          8        0   135
#> [477,]  76   1      0          1        1    83
#> [478,]  79   4      0         80        0   145
#> [479,]  78   2      1          1        0   130
#> [480,]  75   4      1          0        0   212
#> [481,]  77   2      1          0        1   143
#> [482,]  78  10      0        180        1   130
#> [483,]  76  11      1          0        0   120
#> [484,]  75  11      1          4        0   162
#> [485,]  76   7      0         29        1   150
#> [486,]  79   8      0         32        1   120
#> [487,]  80   6      0          6        1   150
#> [488,]  78   6      1          0        1   240
#> [489,]  78  11      1          1        1   140
#> [490,]  79  11      0        180        0   160
#> [491,]  79   2      1          0        1   121
#> [492,]  76   4      0          4        1   160
#> [493,]  79   4      0          4        1   125
#> [494,]  76  10      1          8        0   180
#> [495,]  76  12      1         10        1   127
#> [496,]  80   3      1          0        1   120
#> [497,]  75   2      1          1        1   204
#> [498,]  78  11      0        180        1   135
#> [499,]  77  31      1          3        1   161
#> [500,]  76   1      0          1        1    90
#> [501,]  79   3      0          3        0   120
#> [502,]  77   7      0        180        1   170
#> [503,]  77   6      0          6        1   144
#> [504,]  79   4      1          0        1   120
#> [505,]  81   1      0        180        0   120
#> [506,]  77   9      1          4        0   141
#> [507,]  82   5      0          8        1   120
#> [508,]  80  40      1          0        1   138
#> [509,]  80  17      1         12        0   100
#> [510,]  76   7      0        161        0   151
#> [511,]  79  10      0         10        1   120
#> [512,]  80  15      1          0        1    90
#> [513,]  81   4      1          2        1   126
#> [514,]  79  28      0        164        0   100
#> [515,]  80   9      0        118        1   186
#> [516,]  80   6      0        173        1   160
#> [517,]  78  32      0        180        1   130
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  78   7      0          7        1   147
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  79   3      0          3        1   101
#> [524,]  78  26      1          5        0   194
#> [525,]  76   1      0        166        0   131
#> [526,]  81   4      1          1        1   104
#> [527,]  78  20      1          0        1   109
#> [528,]  80   1      0          1        0   100
#> [529,]  78   3      1          1        1   152
#> [530,]  77  10      1          8        1   130
#> [531,]  82   3      1          1        1   144
#> [532,]  77   5      0         85        0   188
#> [533,]  80   2      1          1        0   168
#> [534,]  79   6      0          6        0   152
#> [535,]  80   5      0          5        1   130
#> [536,]  82   1      1          0        1    82
#> [537,]  81   1      0        108        0   129
#> [538,]  78  12      0        180        0   134
#> [539,]  82  21      1          2        0   155
#> [540,]  84  22      1         10        0   180
#> [541,]  80   6      0          6        1   110
#> [542,]  83   9      1          5        1   170
#> [543,]  82   5      0        180        0   110
#> [544,]  83   4      0        103        0    97
#> [545,]  81  11      1          8        0   160
#> [546,]  81   5      0        177        0    41
#> [547,]  80  11      1          8        0   170
#> [548,]  78  23      1         10        1   145
#> [549,]  79   4      0          4        1   183
#> [550,]  78   9      1          4        1   120
#> [551,]  82   8      1          1        0   128
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  80   6      1          0        1   150
#> [555,]  80  11      1          8        0   110
#> [556,]  81   8      0        180        0   146
#> [557,]  80   8      1          7        0   160
#> [558,]  79   7      0        177        0   197
#> [559,]  79   0      1          0        1    96
#> [560,]  85   4      0        180        0    90
#> [561,]  83   2      0          2        1   155
#> [562,]  82   6      0        128        1   100
#> [563,]  84   4      0        167        0   198
#> [564,]  80   3      1          1        1   230
#> [565,]  82  23      1          0        0   110
#> [566,]  84   5      0        180        1   203
#> [567,]  84   4      0          4        1    85
#> [568,]  84   1      0         38        1   205
#> [569,]  81   4      0         90        1   138
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  80   2      1          0        1   130
#> [573,]  83   1      0          1        1   100
#> [574,]  82  19      0         19        0   120
#> [575,]  80  30      1         13        0   220
#> [576,]  79  14      1          0        0   110
#> [577,]  81  14      1         12        1   128
#> [578,]  83   2      0        154        0   130
#> [579,]  82   0      0          2        1   100
#> [580,]  83   1      0        180        0   160
#> [581,]  81   4      0          4        0   175
#> [582,]  84  15      1         13        1   110
#> [583,]  81   1      0          1        1   145
#> [584,]  81  12      0         12        1   163
#> [585,]  82  16      1          8        0   103
#> [586,]  82   5      1          0        1   146
#> [587,]  81   4      0          4        0   160
#> [588,]  86  12      0        180        1   120
#> [589,]  83  12      1          2        1   170
#> [590,]  82  15      1          0        0   183
#> [591,]  80   2      0         88        0   135
#> [592,]  83   7      0        126        0   135
#> [593,]  86   8      0          8        1   132
#> [594,]  84   6      0        165        0   145
#> [595,]  86   3      0          3        1   140
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  81   2      1          0        1   118
#> [601,]  81   4      0        180        0   160
#> [602,]  83   9      0        180        1   149
#> [603,]  82   1      0        180        1   193
#> [604,]  87   2      0          5        1   137
#> [605,]  86  12      1          0        1   132
#> [606,]  82  14      1         11        1   103
#> [607,]  86   6      1          0        1   140
#> [608,]  84  16      0         70        1   150
#> [609,]  83  19      0         43        0   150
#> [610,]  83  10      1          0        1   190
#> [611,]  86   2      0        180        1   169
#> [612,]  88  14      1          3        1   130
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  82   4      0          4        0   130
#> [616,]  86  13      0        177        0   163
#> [617,]  84  13      0         62        1   100
#> [618,]  88   4      0          4        0   100
#> [619,]  83  20      1          3        1   150
#> [620,]  88   4      0          4        1   115
#> [621,]  85  22      0         22        1   184
#> [622,]  83   9      0         65        1   150
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  86   6      0         46        0   173
#> [626,]  88   3      0        115        0   110
#> [627,]  83   3      0          3        1   130
#> [628,]  87   8      0          8        1   157
#> [629,]  88   4      0          4        0    86
#> [630,]  89   5      0        119        1   140
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  84   0      0        180        1   136
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  91   8      0          8        0   100
#> [639,]  87   6      1          0        0   125
#> [640,]  91  10      0        145        0   135
#> [641,]  86   3      1          0        1    80
#> [642,]  88   7      0         24        0   119
#> [643,]  88   8      0         50        1   154
#> [644,]  90  11      1         10        1   186
#> [645,]  87   6      0        126        1   168
#> [646,]  86  10      0        180        1   137
#> [647,]  86   9      1          7        0   130
#> [648,]  90   4      1          0        0   121
#> [649,]  87  43      0        178        1   130
#> [650,]  87   5      0         36        1   150
#> [651,]  90   5      1          0        1   125
#> [652,]  88   3      1          2        0   159
#> [653,]  89   3      1          1        1   160
#> [654,]  92   1      0          1        1   167
#> [655,]  87   7      0         74        1   105
#> [656,]  89  12      1          0        1   130
#> [657,]  89  52      0         52        1   130
#> [658,]  92   7      0          7        1   110
#> [659,]  89  14      0        180        1    84
#> [660,]  90  18      0        180        0   188
#> [661,]  90  19      1         11        1   129
#> [662,]  94   6      0         50        0    78
#> [663,]  94   8      0          8        1   142
#> [664,]  96   3      0         12        1    97
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [11]  12.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+
#>  [41]   6.0+ 180.0+ 180.0+ 180.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61] 180.0+ 179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   88.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+  85.0   99.0  180.0+  16.0+ 180.0+ 180.0+ 180.0+
#> [101] 180.0+ 171.0+ 180.0+ 180.0+   1.0  180.0+   9.0+ 180.0+ 175.0+   2.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+
#> [121]   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0 
#> [131] 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+
#> [141]   5.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+   4.0+   1.0  180.0+ 180.0+
#> [151] 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+
#> [161]   0.5  161.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+  10.0+
#> [171] 180.0+  45.0    3.0+ 180.0+ 180.0+   9.0+ 172.0+   8.0  180.0+   1.0+
#> [181]  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0 
#> [191]  94.0  180.0+   7.0    7.0+   6.0  180.0+ 180.0+  30.0  180.0+ 180.0+
#> [201]  13.0+   5.0   18.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211]   4.0+ 180.0+ 180.0+ 180.0+  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+
#> [221] 180.0+   1.0    1.0    4.0+ 167.0    6.0+ 180.0+ 180.0+  12.0  180.0+
#> [231] 180.0+  36.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+   2.0+ 180.0+
#> [251] 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+ 180.0+   5.0+  13.0 
#> [261] 180.0+ 179.0+  14.0+   3.0    0.5+   3.0+ 175.0+ 180.0+ 180.0+ 180.0+
#> [271] 180.0+ 180.0+ 180.0+   1.0+  11.0+  79.0   15.0+ 180.0+   4.0+ 180.0+
#> [281] 174.0+ 180.0+ 180.0+   8.0+ 180.0+  10.0  180.0+   6.0  180.0+  19.0+
#> [291]  12.0   99.0  180.0+ 179.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+
#> [301] 180.0+ 180.0+ 180.0+  93.0   21.0+   1.0   18.0+ 101.0    4.0    5.0 
#> [311]   7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  171.0  180.0+ 174.0+   6.0 
#> [321] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 103.0    3.0+
#> [331]  36.0    5.0+ 180.0+ 180.0+  97.0  180.0+   7.0  180.0+   2.0+ 180.0+
#> [341] 172.0+ 180.0+   7.0  180.0+   7.0  180.0+ 180.0+  51.0   19.0  180.0+
#> [351]   1.0    1.0   76.0  180.0+ 162.0    7.0+   9.0  180.0+ 180.0+ 180.0+
#> [361]  12.0  152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+
#> [381] 180.0+   3.0+  20.0   20.0    0.5  180.0+ 180.0+   3.0   87.0   12.0 
#> [391]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+
#> [401]  14.0+ 180.0+   8.0+ 180.0+ 180.0+ 159.0  180.0+  10.0  180.0+  13.0 
#> [411] 180.0+   4.0+ 180.0+  10.0  104.0+   1.0   57.0  180.0+  11.0    3.0+
#> [421]   5.0  180.0+  34.0  180.0+ 180.0+ 180.0+   5.0    4.0+  15.0+ 180.0+
#> [431]  10.0    3.0  180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+   7.0 
#> [441] 180.0+ 180.0+   4.0    1.0  180.0+  52.0  180.0+  12.0  180.0+ 180.0+
#> [451] 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+   1.0   12.0 
#> [461] 180.0+   7.0+  79.0    3.0  180.0+ 180.0+   8.0+   7.0  180.0+  32.0 
#> [471] 180.0+  10.0  180.0+  12.0  180.0+ 180.0+   1.0   80.0  180.0+   4.0+
#> [481]   2.0  180.0+  11.0  152.0+  29.0   32.0    6.0  180.0+ 180.0+ 180.0+
#> [491] 180.0+   4.0    4.0   10.0+ 180.0+   3.0+   2.0+ 180.0+ 171.0    1.0 
#> [501]   3.0  180.0+   6.0  138.0  180.0+  71.0    8.0   40.0   17.0  161.0 
#> [511]  10.0+ 180.0+  93.0  164.0  118.0  173.0  180.0+  37.0  180.0+   7.0+
#> [521]  22.0   15.0+   3.0  171.0+ 166.0+  71.0   20.0+   1.0    3.0+  10.0 
#> [531] 180.0+  85.0   10.0    6.0+   5.0    1.0  108.0  180.0+ 180.0+ 180.0+
#> [541]   6.0    9.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0   70.0    4.0  180.0+
#> [551] 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+
#> [561]   2.0  128.0  167.0    3.0+  62.0  180.0+   4.0   38.0   90.0  180.0+
#> [571] 180.0+ 180.0+   1.0   19.0   30.0  180.0+ 180.0+ 154.0    2.0  180.0+
#> [581]   4.0+ 180.0+   1.0   12.0   16.0+   5.0+   4.0+ 180.0+  77.0   83.0 
#> [591]  88.0  126.0    8.0  165.0    3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0   43.0  180.0+
#> [611] 180.0+  14.0   92.0  180.0+   4.0  177.0   62.0    4.0+  20.0    4.0 
#> [621]  22.0   65.0   11.0  180.0+  46.0  115.0    3.0+   8.0+   4.0  119.0 
#> [631] 180.0+   8.0  110.0   29.0  180.0+   1.0+ 180.0+   8.0   25.0  145.0 
#> [641]   3.0   24.0   50.0   11.0  126.0  180.0+ 180.0+   4.0  178.0+  36.0 
#> [651]  89.0   75.0    3.0+   1.0   74.0  180.0+  52.0    7.0  180.0+ 180.0+
#> [661] 180.0+  50.0    8.0+  12.0   26.0   53.0    7.0+  69.0  180.0+  15.0+
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
#>   0.8544956 
```
