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
#> min 0.00362    43   2.696 0.1103       6
#> 1se 0.05898    13   2.798 0.1064       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  42  12      1         10        1   170
#>  [28,]  42   2      0        180        1   124
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  48  15      0        180        1   160
#>  [40,]  45   3      0        150        0   130
#>  [41,]  46   7      1          2        0   166
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  46  13      1         10        0   100
#>  [45,]  44   0      1          0        1    96
#>  [46,]  47   4      1          3        1   160
#>  [47,]  43   3      1          0        1   124
#>  [48,]  49   5      0         73        1   136
#>  [49,]  45   5      0          5        0   141
#>  [50,]  47   2      0        180        0   108
#>  [51,]  45   5      0        180        1   190
#>  [52,]  46   5      1          3        0   130
#>  [53,]  46   4      0        180        1   121
#>  [54,]  45   9      1          0        1   145
#>  [55,]  47   3      1          1        1   120
#>  [56,]  48   3      0        180        0   154
#>  [57,]  47   5      1          3        1   130
#>  [58,]  47   9      1          6        0   170
#>  [59,]  46   3      1          0        1   119
#>  [60,]  49   4      0        180        0   117
#>  [61,]  47  10      0         10        1   140
#>  [62,]  50   1      1          0        1   129
#>  [63,]  48   2      1          0        0   184
#>  [64,]  47   7      0        180        0   145
#>  [65,]  50   4      1          1        0   125
#>  [66,]  50   6      1          2        1   140
#>  [67,]  49   7      1          7        1   110
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  47   2      0        180        0   150
#>  [72,]  49  23      0        179        1   112
#>  [73,]  52   2      0        180        1   170
#>  [74,]  50   7      1          0        1    92
#>  [75,]  49   7      1          4        1    90
#>  [76,]  47   8      0        180        0   160
#>  [77,]  51   8      0        180        1   140
#>  [78,]  46   3      0        180        1   120
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49   9      1          3        0   102
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  54   6      1          3        0   129
#>  [89,]  51   3      1          1        0   140
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  14      1         13        0   170
#>  [92,]  53   8      1          7        0   160
#>  [93,]  48   3      1          2        0   150
#>  [94,]  51  25      1          1        0   202
#>  [95,]  49   5      1          2        1   150
#>  [96,]  53   4      0          4        0   140
#>  [97,]  52  14      1          7        1   200
#>  [98,]  48   6      0        180        0   160
#>  [99,]  48  11      1         10        0   120
#> [100,]  53   4      1          0        1   156
#> [101,]  51  13      0         99        1   160
#> [102,]  54   9      1          0        1   138
#> [103,]  55   3      1          1        0   150
#> [104,]  54  23      1         10        0   131
#> [105,]  52   7      1          2        0   154
#> [106,]  55   6      1          2        1   114
#> [107,]  54   9      1          1        0   130
#> [108,]  55   4      1          2        0   150
#> [109,]  52   4      0        180        1   180
#> [110,]  51  13      1         11        0   145
#> [111,]  50   5      1          4        1   150
#> [112,]  54   4      1          0        1   121
#> [113,]  50   3      0        174        1   153
#> [114,]  49   6      1          0        1   130
#> [115,]  53   9      0          9        1    95
#> [116,]  53   8      1          0        1   130
#> [117,]  50   7      1          0        1   127
#> [118,]  55   1      0        180        0   127
#> [119,]  54   1      0        180        0   162
#> [120,]  54   7      1          0        1   100
#> [121,]  56   3      0        180        1   193
#> [122,]  52   8      0        180        0   119
#> [123,]  53  18      1          9        1   150
#> [124,]  52  16      0         16        0   152
#> [125,]  53  10      1          9        0   172
#> [126,]  52  16      1         14        0   170
#> [127,]  53  15      0         15        1    90
#> [128,]  53   4      0        180        1   150
#> [129,]  55   6      0        180        1   100
#> [130,]  55   6      1          5        1   138
#> [131,]  56   3      0          8        1   139
#> [132,]  55   1      0          2        0   130
#> [133,]  54   7      1          2        0   129
#> [134,]  52   9      1          3        0   170
#> [135,]  54   2      1          1        1   176
#> [136,]  57   5      1          3        1   138
#> [137,]  57   1      0        180        1   156
#> [138,]  57   1      0          1        1   100
#> [139,]  55  11      1          7        0   104
#> [140,]  52  15      1         14        0   130
#> [141,]  56  14      1         11        0   130
#> [142,]  53   3      1          0        1   200
#> [143,]  57  10      0        180        1   170
#> [144,]  54   5      0        180        1   108
#> [145,]  55   3      1          1        1   156
#> [146,]  57   0      0          0        1   150
#> [147,]  58   6      1          0        1    90
#> [148,]  53  15      1         10        1   130
#> [149,]  54  17      1          8        1   227
#> [150,]  55  13      0        166        1   140
#> [151,]  56   5      0          5        1   150
#> [152,]  57   4      1          2        1   185
#> [153,]  57  11      1         10        1   129
#> [154,]  55   5      0          5        1   131
#> [155,]  54   7      1          0        1   141
#> [156,]  56   4      0          4        0   164
#> [157,]  58   1      1          1        1   200
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  57   1      0        180        0   148
#> [162,]  60  11      1          9        0   106
#> [163,]  58   4      1          0        1   160
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  57   5      0        180        1   130
#> [167,]  55   5      1          0        1   160
#> [168,]  58  26      1          0        1   189
#> [169,]  58   4      1          3        0   120
#> [170,]  60   0      1          0        1    80
#> [171,]  59   2      1          1        0   140
#> [172,]  58   8      0        161        1   140
#> [173,]  61   4      1          3        0   151
#> [174,]  61   3      1          2        1   102
#> [175,]  61  20      1         13        0   130
#> [176,]  57  13      1         10        0   110
#> [177,]  58  10      0         10        1   150
#> [178,]  57  11      0        180        1   150
#> [179,]  57   3      1          2        0   120
#> [180,]  58  19      1         13        1   140
#> [181,]  56  13      1          6        1   158
#> [182,]  56  18      1         11        1   165
#> [183,]  59   9      1          0        1    80
#> [184,]  58  11      0        172        1   135
#> [185,]  55   9      1          7        1   135
#> [186,]  61  13      1         12        1   130
#> [187,]  57   1      0          1        0   126
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  61   8      0         77        0   120
#> [191,]  61  13      0         13        0   210
#> [192,]  58   8      1          5        0   152
#> [193,]  62   7      1          2        1   180
#> [194,]  57   7      0        169        0   180
#> [195,]  59  13      1          2        0   198
#> [196,]  57  12      1          9        1   120
#> [197,]  62   4      1          0        0   160
#> [198,]  58   3      1          0        1   146
#> [199,]  62   4      1          3        0   173
#> [200,]  58   2      0         30        0   202
#> [201,]  59  16      1          9        1   133
#> [202,]  61  13      0         13        0   120
#> [203,]  61   5      0          5        1   110
#> [204,]  57  18      1          9        1    93
#> [205,]  61   5      0          5        1   160
#> [206,]  58  11      1          9        0   179
#> [207,]  57   2      1          1        0   159
#> [208,]  62  17      1         10        1   180
#> [209,]  63   3      1          1        0   180
#> [210,]  63   1      0        180        1   130
#> [211,]  61   7      0        180        0   135
#> [212,]  63   4      1          3        0   222
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  63   4      1          1        0   155
#> [216,]  60  18      1         13        0   132
#> [217,]  59   8      0        180        1   140
#> [218,]  58   9      1          9        0   110
#> [219,]  62   7      0          7        0   150
#> [220,]  59   4      0        180        0   196
#> [221,]  60   7      1          5        1   141
#> [222,]  65  13      0        180        1   100
#> [223,]  63   1      0          1        0   130
#> [224,]  61  15      1         13        0   170
#> [225,]  59   4      0          4        0   149
#> [226,]  60   3      0          3        0   168
#> [227,]  62   6      0          6        0   120
#> [228,]  63  12      1         10        0   200
#> [229,]  59  10      0        180        1   130
#> [230,]  60   8      0         17        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  64  12      1         11        0   160
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  63  10      1          0        1   148
#> [236,]  64  32      1          9        1   160
#> [237,]  63  12      1          9        0   114
#> [238,]  63   7      0        180        0   120
#> [239,]  65   8      1          0        0   168
#> [240,]  65  10      1          8        1   120
#> [241,]  64   0      0          0        1    90
#> [242,]  60   6      0        180        0   130
#> [243,]  64   9      0        180        0   150
#> [244,]  61   4      0        180        1   113
#> [245,]  63  16      1          7        1   110
#> [246,]  64   7      0        180        1   120
#> [247,]  65   6      0          9        0   112
#> [248,]  63   5      1          4        0   170
#> [249,]  62  13      1         11        0   180
#> [250,]  67  11      0         11        1   100
#> [251,]  64   2      0          2        0   201
#> [252,]  61  15      1         10        0   130
#> [253,]  63   3      1          2        0   120
#> [254,]  64  19      1          8        1   160
#> [255,]  67   6      0        180        1   170
#> [256,]  65  15      1         11        1   160
#> [257,]  68   5      1          4        1   150
#> [258,]  64  13      1         12        1   150
#> [259,]  66   7      1          0        1   115
#> [260,]  66  13      1          0        0   118
#> [261,]  65   3      0          3        0   105
#> [262,]  64   0      0          0        1   148
#> [263,]  66   3      1          0        1   135
#> [264,]  65   2      1          1        1   170
#> [265,]  68   1      0        180        1   166
#> [266,]  67   8      1          1        1   130
#> [267,]  68   5      0          5        1    90
#> [268,]  63  10      0         16        1   160
#> [269,]  64   1      0          1        1   120
#> [270,]  68  18      0        180        1   260
#> [271,]  65  18      1          3        0   120
#> [272,]  63   1      1          0        1   155
#> [273,]  63  10      0         18        1   130
#> [274,]  67  11      0         11        0   150
#> [275,]  68  11      0        180        0   160
#> [276,]  68  14      0         79        0   172
#> [277,]  66  12      1         10        1   150
#> [278,]  65  15      1         12        1   150
#> [279,]  69  12      0         15        1   140
#> [280,]  66  15      1         13        1   160
#> [281,]  63   2      0        180        0   150
#> [282,]  65  11      1          6        0   130
#> [283,]  69   6      0        180        1   100
#> [284,]  66   9      1          8        0   130
#> [285,]  68  14      1         13        1   140
#> [286,]  65   8      1          0        1    90
#> [287,]  66   3      0          3        1   138
#> [288,]  69   1      1          0        0   170
#> [289,]  68  10      1         10        1   150
#> [290,]  63   2      1          0        0    99
#> [291,]  67   2      0        180        0   184
#> [292,]  65   6      0          6        0    80
#> [293,]  65  10      1          1        1   148
#> [294,]  66  19      1         12        1   150
#> [295,]  67  12      1         12        0   160
#> [296,]  69   6      0         99        1   140
#> [297,]  65   4      1          1        0   130
#> [298,]  66   4      0        180        1   130
#> [299,]  64   4      0        180        1   140
#> [300,]  64   0      1          0        1   118
#> [301,]  66   7      1          5        1   131
#> [302,]  68   4      1          0        1   160
#> [303,]  69   4      1          3        1   150
#> [304,]  65  13      1         12        1   130
#> [305,]  69   8      0         93        0   140
#> [306,]  64  21      0         21        1   155
#> [307,]  66   6      0        180        0   140
#> [308,]  68  18      1          0        1   160
#> [309,]  71   3      0          5        0   112
#> [310,]  67   2      0        180        0   128
#> [311,]  66   9      1          3        1   151
#> [312,]  66   1      1          1        1   165
#> [313,]  70   4      1          0        1   180
#> [314,]  69   8      0        180        1   153
#> [315,]  70  14      0        171        0   166
#> [316,]  66   4      0        180        0   130
#> [317,]  67  10      1          9        0   200
#> [318,]  67   6      1          4        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  65   2      0        180        0   130
#> [322,]  68   7      1          0        1   150
#> [323,]  69   3      1          2        0   151
#> [324,]  67  14      1         13        0   130
#> [325,]  65  14      1         13        1   150
#> [326,]  66   2      0          2        1   228
#> [327,]  71   6      0         45        1   158
#> [328,]  69   5      0          5        1   142
#> [329,]  69   3      0          3        1   130
#> [330,]  70  22      1         13        0   103
#> [331,]  67   1      0         36        1   104
#> [332,]  67   5      0          5        0   130
#> [333,]  68   6      0        180        0   145
#> [334,]  69   8      1          5        1   195
#> [335,]  69   6      1          4        1   174
#> [336,]  72   7      0          7        1   110
#> [337,]  67   3      0        180        0   110
#> [338,]  66   2      1          1        0   123
#> [339,]  68  18      0         18        1   100
#> [340,]  69  11      1          0        1   120
#> [341,]  66   2      0        180        0   130
#> [342,]  69   4      1          3        0   132
#> [343,]  69   8      1          2        0   121
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  72   5      1          4        0   170
#> [347,]  67  22      1          1        1   140
#> [348,]  68   3      0         19        0   135
#> [349,]  67  12      1          8        0   120
#> [350,]  67   1      0          1        1    60
#> [351,]  67   4      0         60        1   136
#> [352,]  69   5      0         76        0   120
#> [353,]  67   8      1          0        1   130
#> [354,]  72  13      1         11        1   195
#> [355,]  66  24      1         13        0   130
#> [356,]  70  35      1          0        1   105
#> [357,]  70   7      0          7        0   102
#> [358,]  68   7      1          2        0   135
#> [359,]  71   6      0          9        0   120
#> [360,]  72  19      1          8        0   120
#> [361,]  72  12      1         10        0   170
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  67   4      1          1        0   134
#> [367,]  72   6      1          5        0   115
#> [368,]  71   1      0        173        1   188
#> [369,]  69   3      0        180        0   220
#> [370,]  71   3      1          2        0   150
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  69   8      1          1        0   164
#> [375,]  68   7      0        180        1   130
#> [376,]  70   4      0        180        0   180
#> [377,]  69   1      1          0        0   155
#> [378,]  73   6      1          0        1   270
#> [379,]  72   8      1          1        1   150
#> [380,]  73   7      0          7        1   140
#> [381,]  70   3      0          3        1   159
#> [382,]  70  13      1          9        0   100
#> [383,]  72   6      0        180        1   130
#> [384,]  73   4      0        180        1   154
#> [385,]  69   2      1          0        1   110
#> [386,]  71   3      1          1        0   150
#> [387,]  71  15      1         11        0   165
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   3      1          2        1   190
#> [391,]  69  12      1          1        1   149
#> [392,]  70  26      1         11        1   120
#> [393,]  74   4      0          4        0   120
#> [394,]  73   4      0         58        1   160
#> [395,]  72   5      1          3        1   160
#> [396,]  70   3      0        180        1   154
#> [397,]  72  15      1          0        1   150
#> [398,]  71   7      1          2        0   143
#> [399,]  72   8      1          0        1   140
#> [400,]  74   3      0          3        1   150
#> [401,]  71  13      1          8        0   121
#> [402,]  69   2      1          1        1    80
#> [403,]  70   4      1          0        1   140
#> [404,]  74   7      1          0        1   117
#> [405,]  72  10      1          8        1   153
#> [406,]  69   7      0        180        1   144
#> [407,]  72  15      1         13        0   156
#> [408,]  70   8      0          8        0   120
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  73  10      1          9        1   146
#> [413,]  72  10      1          9        1   160
#> [414,]  73  10      1         10        1   120
#> [415,]  74  15      1          9        1   179
#> [416,]  73   1      0          1        1    80
#> [417,]  75   9      1          7        0   140
#> [418,]  75  13      1          1        1   130
#> [419,]  71  11      1          8        0   110
#> [420,]  71   4      0          4        0   134
#> [421,]  72  15      1         12        1   120
#> [422,]  70   7      1          4        0   184
#> [423,]  73  10      0        180        0   162
#> [424,]  72  11      0         11        1   140
#> [425,]  70   3      0          3        0   150
#> [426,]  73  12      1         12        1   140
#> [427,]  72   2      0        180        0   120
#> [428,]  75   1      0        180        1   140
#> [429,]  72   4      1          0        1   197
#> [430,]  71   3      1          0        0   144
#> [431,]  73   5      0        180        0   126
#> [432,]  74  34      1          8        1   233
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  72   3      0        180        0   160
#> [436,]  76   5      0          5        1   130
#> [437,]  77  11      0         11        1   150
#> [438,]  77   4      0          4        0   185
#> [439,]  74   7      0        180        1   150
#> [440,]  74   3      0          3        1   128
#> [441,]  76   1      0        180        0   114
#> [442,]  74   2      1          1        0   140
#> [443,]  76   8      1          0        1   141
#> [444,]  74  19      1          4        1   200
#> [445,]  73   6      0          6        1   114
#> [446,]  74   2      0        180        0   190
#> [447,]  72   4      0         85        1   120
#> [448,]  72   4      1          3        0   160
#> [449,]  76  17      1          0        1   200
#> [450,]  73   4      1          3        1   125
#> [451,]  76  13      1         10        0   110
#> [452,]  75   7      0          7        0   190
#> [453,]  75   0      0          0        1   130
#> [454,]  73  13      1         11        0   195
#> [455,]  75  12      0         12        1   160
#> [456,]  76  13      1          8        1   148
#> [457,]  75   4      1          2        1   188
#> [458,]  74   6      0        180        0   160
#> [459,]  73   0      0        180        0   156
#> [460,]  72   5      0        180        0   120
#> [461,]  76   5      0        180        0   185
#> [462,]  74  10      1          0        1   135
#> [463,]  76   5      1          0        1   167
#> [464,]  74   8      1          8        1   170
#> [465,]  75   9      0        180        1   140
#> [466,]  73  33      1         12        1   175
#> [467,]  77   5      1          0        0   123
#> [468,]  77  12      1          9        1   100
#> [469,]  77  12      0        180        0   130
#> [470,]  77   1      1          0        1    90
#> [471,]  76  12      1         11        1   120
#> [472,]  78   5      1          0        1   170
#> [473,]  73   7      1          0        0   174
#> [474,]  74   9      1          8        0   200
#> [475,]  74   2      1          0        1   130
#> [476,]  78  18      0         18        1   144
#> [477,]  77   3      0        180        0   110
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  78   7      0          7        1   133
#> [481,]  74  15      0        180        1   172
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  78  32      1          9        1   198
#> [485,]  80  10      1          6        1   147
#> [486,]  78  13      1          5        0   130
#> [487,]  75  12      1          1        1   120
#> [488,]  78  15      0        180        1   270
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  75  11      1          4        0   162
#> [499,]  77  24      0         24        1   160
#> [500,]  80   9      0         23        1   128
#> [501,]  79  11      0        180        0   160
#> [502,]  79   2      1          0        1   121
#> [503,]  81   1      0          1        0   130
#> [504,]  78  11      1          8        1   118
#> [505,]  76   4      0          4        1   160
#> [506,]  79   4      0          4        1   125
#> [507,]  76  12      1         10        1   127
#> [508,]  77   6      0          6        1   107
#> [509,]  75   2      1          1        1   204
#> [510,]  76   1      0          1        1   140
#> [511,]  77  31      1          3        1   161
#> [512,]  76   1      0          1        1    90
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   7      0        180        1   170
#> [516,]  77   6      0          6        1   144
#> [517,]  81   1      0        180        0   120
#> [518,]  77   9      1          4        0   141
#> [519,]  82   5      0          8        1   120
#> [520,]  80  40      1          0        1   138
#> [521,]  80  17      1         12        0   100
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  80   6      0        173        1   160
#> [527,]  78  32      0        180        1   130
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  80   5      1          1        1   108
#> [531,]  78   4      0        180        0   175
#> [532,]  76   1      0        166        0   131
#> [533,]  81   4      1          1        1   104
#> [534,]  80   1      0          1        0   100
#> [535,]  78   3      1          1        1   152
#> [536,]  77  10      1          8        1   130
#> [537,]  77   5      0         85        0   188
#> [538,]  78   2      0        180        0   148
#> [539,]  82   1      1          0        1    82
#> [540,]  79  10      0        180        1   150
#> [541,]  81   1      0        108        0   129
#> [542,]  79   1      0        125        0   193
#> [543,]  82  21      1          2        0   155
#> [544,]  79   4      0          4        1   121
#> [545,]  80   6      0          6        1   110
#> [546,]  83   9      1          5        1   170
#> [547,]  82   5      0        180        0   110
#> [548,]  83   5      0        180        0   148
#> [549,]  83   4      0        103        0    97
#> [550,]  81   5      0        177        0    41
#> [551,]  80  11      1          8        0   170
#> [552,]  78  23      1         10        1   145
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  83   8      0          8        0   115
#> [558,]  81  16      0         16        1   110
#> [559,]  80   6      1          0        1   150
#> [560,]  80  11      1          8        0   110
#> [561,]  81   8      0        180        0   146
#> [562,]  79   7      0        177        0   197
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  81   2      1          1        0   198
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  84   5      0        180        1   203
#> [570,]  81   1      0          1        1   150
#> [571,]  83   3      0        180        0   174
#> [572,]  79   9      1          8        0   150
#> [573,]  85   3      1          2        1   160
#> [574,]  80  13      1          8        1   140
#> [575,]  84   4      0         89        1   129
#> [576,]  80   2      1          0        1   130
#> [577,]  80   6      0         71        1   189
#> [578,]  80  30      1         13        0   220
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  83   3      0        114        0    98
#> [582,]  81  14      1         12        1   128
#> [583,]  83   2      0        154        0   130
#> [584,]  82   0      0          2        1   100
#> [585,]  85   9      1          6        1   160
#> [586,]  83   1      0        180        0   160
#> [587,]  81   4      0          4        0   175
#> [588,]  84  15      1         13        1   110
#> [589,]  81  12      0         12        1   163
#> [590,]  81   4      0          4        0   160
#> [591,]  86  12      0        180        1   120
#> [592,]  82   3      1          2        0   130
#> [593,]  82  15      1          0        0   183
#> [594,]  80   2      0         88        0   135
#> [595,]  83   7      0        126        0   135
#> [596,]  84   6      0        165        0   145
#> [597,]  86   3      0          3        1   140
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  85   3      0          3        1   118
#> [601,]  81   2      1          0        1   118
#> [602,]  83   9      0        180        1   149
#> [603,]  82   1      0        180        1   193
#> [604,]  87   2      0          5        1   137
#> [605,]  86  12      1          0        1   132
#> [606,]  86   6      1          0        1   140
#> [607,]  84  16      0         70        1   150
#> [608,]  83  19      0         43        0   150
#> [609,]  84   3      1          2        0   125
#> [610,]  83  10      1          0        1   190
#> [611,]  86   2      0        180        1   169
#> [612,]  88  14      1          3        1   130
#> [613,]  84   3      0          3        1   121
#> [614,]  84   7      1          2        0   148
#> [615,]  87   2      0        180        0   113
#> [616,]  86   4      0         38        1   122
#> [617,]  82   4      0          4        0   130
#> [618,]  84  13      0         62        1   100
#> [619,]  86   6      1          1        0   112
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  85  22      0         22        1   184
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  88   3      0        115        0   110
#> [626,]  88   2      0        180        1    68
#> [627,]  83   3      0          3        1   130
#> [628,]  88   4      0          4        0    86
#> [629,]  89   4      0          4        1   153
#> [630,]  89   5      0        119        1   140
#> [631,]  87   1      0          1        0   170
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  88   1      0          1        0   135
#> [638,]  86   4      0        180        1   145
#> [639,]  91   8      0          8        0   100
#> [640,]  87   6      1          0        0   125
#> [641,]  91  10      0        145        0   135
#> [642,]  88   7      0         24        0   119
#> [643,]  87   6      0        126        1   168
#> [644,]  86  10      0        180        1   137
#> [645,]  86   9      1          7        0   130
#> [646,]  91   1      0          1        1    74
#> [647,]  87  43      0        178        1   130
#> [648,]  87   5      0         36        1   150
#> [649,]  90   5      1          0        1   125
#> [650,]  92   1      0          1        1   167
#> [651,]  87   7      0         74        1   105
#> [652,]  89  12      1          0        1   130
#> [653,]  89   2      0        168        0   118
#> [654,]  91   5      0        169        1   176
#> [655,]  89  52      0         52        1   130
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  94   8      0          8        1   142
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  88.0+ 180.0+   4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+
#> [101]  99.0  180.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+
#> [111] 171.0+ 180.0+ 174.0+   6.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+ 180.0+
#> [131]   8.0    2.0  180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 171.0+ 166.0+
#> [151]   5.0+   4.0+ 180.0+   5.0+ 180.0+   4.0+   1.0  180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [171] 180.0+ 161.0+ 180.0+   3.0  180.0+ 180.0+  10.0+ 180.0+   3.0+  19.0 
#> [181] 180.0+ 180.0+   9.0+ 172.0+  24.0  180.0+   1.0+ 180.0+ 180.0+  77.0 
#> [191]  13.0+   8.0+ 180.0+ 169.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0 
#> [201] 180.0+  13.0+   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+ 180.0+
#> [221]  84.0  180.0+   1.0  180.0+   4.0+   3.0+   6.0+ 180.0+ 180.0+  17.0 
#> [231] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [241]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0  180.0+ 180.0+  11.0+
#> [251]   2.0+ 180.0+   3.0+ 103.0  180.0+ 180.0+   5.0+  13.0  179.0+ 166.0+
#> [261]   3.0    0.5+   3.0+ 175.0+ 180.0+   8.0    5.0   16.0    1.0  180.0+
#> [271] 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0   15.0+  15.0  180.0+
#> [281] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0   10.0  180.0+
#> [291] 180.0+   6.0  180.0+  19.0+  12.0   99.0  180.0+ 180.0+ 180.0+   0.5 
#> [301]   7.0+ 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+  18.0+   5.0  180.0+
#> [311] 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+   0.5 
#> [321] 180.0+ 180.0+ 180.0+ 180.0+  14.0+   2.0   45.0    5.0+   3.0+ 180.0+
#> [331]  36.0    5.0+ 180.0+ 180.0+  97.0    7.0  180.0+   2.0+  18.0  180.0+
#> [341] 180.0+ 180.0+   8.0+  13.0+ 123.0  180.0+  51.0   19.0  180.0+   1.0 
#> [351]  60.0   76.0  180.0+ 132.0  180.0+ 180.0+   7.0+   7.0+   9.0  180.0+
#> [361]  12.0  180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+
#> [371] 180.0+  28.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+   7.0+
#> [381]   3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [391]  12.0  180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [401] 175.0    2.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0 
#> [411] 180.0+ 180.0+ 159.0   15.0  180.0+   1.0  180.0+  13.0  180.0+   4.0+
#> [421] 180.0+ 104.0+ 180.0+  11.0    3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  177.0+ 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+   3.0 
#> [441] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+ 180.0+
#> [451] 174.0+   7.0    0.5  180.0+  12.0  180.0+  46.0  180.0+ 180.0+ 180.0+
#> [461] 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+   1.0 
#> [471]  12.0  180.0+   7.0+ 168.0+ 176.0+  18.0  180.0+ 180.0+  11.0    7.0 
#> [481] 180.0+   8.0+   7.0   32.0   10.0  172.0   12.0  180.0+ 180.0+ 180.0+
#> [491]   1.0   80.0  180.0+ 180.0+   4.0+   2.0  180.0+ 152.0+  24.0   23.0 
#> [501] 180.0+ 180.0+   1.0   11.0    4.0    4.0  180.0+   6.0    2.0+   1.0 
#> [511] 171.0    1.0   43.0    3.0  180.0+   6.0  180.0+  71.0    8.0   40.0 
#> [521]  17.0  180.0+  93.0  164.0  118.0  173.0  180.0+ 180.0+ 175.0+   5.0+
#> [531] 180.0+ 166.0+  71.0    1.0    3.0+  10.0   85.0  180.0+   1.0  180.0+
#> [541] 108.0  125.0  180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 103.0  177.0+
#> [551] 169.0   70.0    4.0  180.0+ 180.0+ 180.0+   8.0+  16.0  180.0+ 180.0+
#> [561] 180.0+ 177.0+   0.5  180.0+ 180.0+ 167.0    3.0+  62.0  180.0+   1.0 
#> [571] 180.0+ 180.0+ 180.0+ 180.0+  89.0  180.0+  71.0   30.0  180.0+ 180.0+
#> [581] 114.0  180.0+ 154.0    2.0  180.0+ 180.0+   4.0+ 180.0+  12.0    4.0+
#> [591] 180.0+   3.0   83.0   88.0  126.0  165.0    3.0  180.0+ 180.0+   3.0+
#> [601] 180.0+ 180.0+ 180.0+   5.0  180.0+   6.0   70.0   43.0  180.0+ 180.0+
#> [611] 180.0+  14.0    3.0  180.0+ 180.0+  38.0    4.0   62.0    6.0+  20.0 
#> [621]   4.0   22.0   11.0  180.0+ 115.0  180.0+   3.0+   4.0    4.0  119.0 
#> [631]   1.0+   8.0  110.0   29.0  180.0+  46.0    1.0+ 180.0+   8.0   25.0 
#> [641] 145.0   24.0  126.0  180.0+ 180.0+   1.0  178.0+  36.0   89.0    1.0 
#> [651]  74.0  180.0+ 168.0  169.0   52.0    0.5  180.0+ 180.0+   1.0+   8.0+
#> [661] 180.0+  16.0   12.0    8.0   26.0   53.0    7.0+   0.5  180.0+  15.0+
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
#>    0.839597 
```
