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
#> min 0.00325    44   2.667 0.2273       6
#> 1se 0.08425     9   2.871 0.2241       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38  12      1          8        1   120
#>   [9,]  36   5      1          0        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  40  12      1          9        0   153
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40   6      0        180        1   138
#>  [18,]  40  11      1         10        1   120
#>  [19,]  42   2      0        180        0   100
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  47   6      1          0        1   116
#>  [40,]  46  13      1         10        0   100
#>  [41,]  43   3      1          0        1   124
#>  [42,]  45   8      1          0        1   117
#>  [43,]  49   5      0         73        1   136
#>  [44,]  45   5      0          5        0   141
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  47   3      1          1        1   120
#>  [50,]  48   3      0        180        0   154
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   5      1          3        1   130
#>  [53,]  47   9      1          6        0   170
#>  [54,]  47   7      0        180        0   145
#>  [55,]  50   4      1          1        0   125
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   9      1          9        1   122
#>  [58,]  50   7      0        180        1   110
#>  [59,]  49   2      0          2        0   105
#>  [60,]  51   1      0          1        1   145
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  50   4      0          4        1   100
#>  [67,]  51   3      1          2        0   113
#>  [68,]  47   6      0        180        1   162
#>  [69,]  51   8      0        180        1   140
#>  [70,]  52   2      0        180        0   155
#>  [71,]  46   1      1          1        0   145
#>  [72,]  48   7      1          0        1   110
#>  [73,]  53   8      0         36        1   160
#>  [74,]  47   2      1          1        0   110
#>  [75,]  52   4      1          4        0   152
#>  [76,]  49  15      0        180        1   160
#>  [77,]  53   5      0         77        0   159
#>  [78,]  53   7      1          0        0   199
#>  [79,]  51   3      1          1        0   140
#>  [80,]  50   2      0          5        1   106
#>  [81,]  50  14      1         13        0   170
#>  [82,]  48   3      1          2        0   150
#>  [83,]  51  25      1          1        0   202
#>  [84,]  49   5      1          2        1   150
#>  [85,]  53   4      0          4        0   140
#>  [86,]  52  14      1          7        1   200
#>  [87,]  48   6      0        180        0   160
#>  [88,]  48  11      1         10        0   120
#>  [89,]  54   9      1          0        1   138
#>  [90,]  49  16      0         16        0   125
#>  [91,]  55   3      1          1        0   150
#>  [92,]  54  23      1         10        0   131
#>  [93,]  55   4      1          2        0   150
#>  [94,]  51  13      1         11        0   145
#>  [95,]  50   5      1          4        1   150
#>  [96,]  54   4      1          0        1   121
#>  [97,]  52   4      0        180        0   183
#>  [98,]  50   3      0        174        1   153
#>  [99,]  49   6      1          0        1   130
#> [100,]  49   1      0          1        1   110
#> [101,]  50   7      1          1        0   156
#> [102,]  53   9      0          9        1    95
#> [103,]  53   8      1          0        1   130
#> [104,]  56   4      1          1        1   130
#> [105,]  52   5      0        175        1   117
#> [106,]  55   1      0        180        0   127
#> [107,]  55   2      0          2        0   145
#> [108,]  54   1      0        180        0   162
#> [109,]  54   7      1          0        1   100
#> [110,]  56   3      0        180        1   193
#> [111,]  55   5      1          4        1   120
#> [112,]  52   8      0        180        0   119
#> [113,]  53  18      1          9        1   150
#> [114,]  54   3      0        180        1   180
#> [115,]  55   6      0        180        0   170
#> [116,]  52  16      0         16        0   152
#> [117,]  53  10      1          9        0   172
#> [118,]  53  15      0         15        1    90
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  54   3      0        180        0   128
#> [123,]  55   1      0          2        0   130
#> [124,]  57   3      0          3        0   120
#> [125,]  54   7      1          2        0   129
#> [126,]  54   2      1          1        0   135
#> [127,]  52   9      1          3        0   170
#> [128,]  54   2      1          1        1   176
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0          1        1   100
#> [131,]  52   2      0        180        0   140
#> [132,]  55  11      1          7        0   104
#> [133,]  56  14      1         11        0   130
#> [134,]  53   3      1          0        1   200
#> [135,]  57  10      0        180        1   170
#> [136,]  58   8      0          8        1   130
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  53  21      1         13        1   130
#> [140,]  57   4      0        180        1   119
#> [141,]  58   6      1          0        1    90
#> [142,]  53  15      1         10        1   130
#> [143,]  54  17      1          8        1   227
#> [144,]  55   9      1          2        1   147
#> [145,]  55  13      0        166        1   140
#> [146,]  56   5      0          5        1   150
#> [147,]  57   4      1          2        1   185
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  55   5      0          5        1   131
#> [152,]  54   7      1          0        1   141
#> [153,]  56   4      0          4        0   164
#> [154,]  59  15      1         10        0   140
#> [155,]  58   1      1          1        1   200
#> [156,]  55   5      1          0        0   140
#> [157,]  56   7      1          5        1   120
#> [158,]  59   9      1          1        1   125
#> [159,]  60  11      1          9        0   106
#> [160,]  59   3      0        180        0   120
#> [161,]  58   4      1          0        1   160
#> [162,]  57   2      0          2        1   120
#> [163,]  60   5      1          1        0   138
#> [164,]  58  11      1          9        1   124
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  58  26      1          0        1   189
#> [170,]  61   9      0          9        1   160
#> [171,]  59   2      1          1        0   140
#> [172,]  58   8      0        161        1   140
#> [173,]  58  14      1          6        0   190
#> [174,]  61   4      1          3        0   151
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57   4      1          3        0   138
#> [180,]  61   3      0         17        0   143
#> [181,]  56  14      0         45        0   130
#> [182,]  58  19      1         13        1   140
#> [183,]  56  18      1         11        1   165
#> [184,]  58  11      0        172        1   135
#> [185,]  60  12      1          0        1   114
#> [186,]  55   9      1          7        1   135
#> [187,]  61   4      1          0        1   115
#> [188,]  61  13      1         12        1   130
#> [189,]  59  11      1          8        1   190
#> [190,]  57  15      1         13        1   110
#> [191,]  59   5      1          2        0   182
#> [192,]  61   8      0         77        0   120
#> [193,]  61  13      0         13        0   210
#> [194,]  58   8      1          5        0   152
#> [195,]  62  10      1          0        1   153
#> [196,]  61  28      1          7        0   133
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  60   7      0          7        0   147
#> [200,]  61   6      0          6        0   134
#> [201,]  57  12      1          9        1   120
#> [202,]  60  17      1          8        1   140
#> [203,]  58   3      1          0        1   146
#> [204,]  62   4      1          3        0   173
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  57  18      1          9        1    93
#> [209,]  57   2      1          1        0   159
#> [210,]  62  17      1         10        1   180
#> [211,]  62   1      1          0        1   172
#> [212,]  58   7      0        180        1   150
#> [213,]  61   7      0        180        0   135
#> [214,]  63   4      1          3        0   222
#> [215,]  63   4      0        180        1   190
#> [216,]  63  15      1         10        1   126
#> [217,]  64   4      0        180        0   130
#> [218,]  63   4      1          1        0   155
#> [219,]  60  18      1         13        0   132
#> [220,]  59   8      0        180        1   140
#> [221,]  61   9      1          9        1   150
#> [222,]  59   1      0         22        1   162
#> [223,]  58   2      0        180        0   127
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      0          7        0   140
#> [226,]  59   5      1          1        0   148
#> [227,]  63   1      0          1        0   162
#> [228,]  62   6      0          6        0   120
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  60   8      0         17        1   130
#> [232,]  61   6      1          1        1   117
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  63  10      1          0        1   148
#> [236,]  63  14      1          9        0   123
#> [237,]  63   4      1          3        0   162
#> [238,]  66   3      1          1        0   127
#> [239,]  61  10      1          2        1   194
#> [240,]  64  32      1          9        1   160
#> [241,]  63   7      0        180        0   120
#> [242,]  66   5      1          0        1   110
#> [243,]  65   8      1          0        0   168
#> [244,]  65  10      1          8        1   120
#> [245,]  64   0      0          0        1    90
#> [246,]  60   6      0        180        0   130
#> [247,]  64  21      1         10        0   190
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  65   3      0        180        1   190
#> [251,]  64   7      0        180        1   120
#> [252,]  63  12      0         12        1   150
#> [253,]  65   6      0          9        0   112
#> [254,]  65   3      1          0        1    80
#> [255,]  63   2      1          1        0   180
#> [256,]  62  13      1         11        0   180
#> [257,]  66  18      1          5        0   142
#> [258,]  62   9      0        180        0   145
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  67   6      0        180        1   170
#> [262,]  65  15      1         11        1   160
#> [263,]  68   5      1          4        1   150
#> [264,]  64   6      1          0        1   125
#> [265,]  64  14      1         13        1   150
#> [266,]  64   0      0          0        1   148
#> [267,]  67   4      1          3        0   130
#> [268,]  66   3      1          0        1   135
#> [269,]  66   6      1          0        1   140
#> [270,]  65   2      1          1        1   170
#> [271,]  68   1      0        180        1   166
#> [272,]  64  10      1          9        1   110
#> [273,]  67   8      1          1        1   130
#> [274,]  63  10      0         16        1   160
#> [275,]  66  14      0        180        0   130
#> [276,]  64   1      0          1        1   120
#> [277,]  68  18      0        180        1   260
#> [278,]  65  17      1         14        1   100
#> [279,]  63   8      1          1        1   162
#> [280,]  63   1      1          0        1   155
#> [281,]  67  11      0         11        0   150
#> [282,]  68  11      0        180        0   160
#> [283,]  68  14      0         79        0   172
#> [284,]  66  11      1          0        0   100
#> [285,]  65   4      1          2        1   145
#> [286,]  69  12      0         15        1   140
#> [287,]  65  11      1          6        0   130
#> [288,]  69  21      1         10        0   180
#> [289,]  69   6      0        180        1   100
#> [290,]  63   8      0        180        1   120
#> [291,]  65   8      1          0        1    90
#> [292,]  66   3      0          3        1   138
#> [293,]  67   1      0        180        1   160
#> [294,]  68  10      1         10        1   150
#> [295,]  65   1      1          0        0   133
#> [296,]  67   7      1          4        1   130
#> [297,]  67   2      0        180        0   184
#> [298,]  65  10      1          1        1   148
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  64   4      0        179        0   160
#> [303,]  70  15      1         12        1   132
#> [304,]  64   4      0        180        1   140
#> [305,]  64   0      1          0        1   118
#> [306,]  67   2      0         18        0   131
#> [307,]  66   7      1          5        1   131
#> [308,]  66   4      0        180        0   177
#> [309,]  65  13      1         12        1   130
#> [310,]  69  17      1         10        0   140
#> [311,]  64  21      0         21        1   155
#> [312,]  68  18      1          0        1   160
#> [313,]  71   3      0          5        0   112
#> [314,]  70   7      1          0        1   190
#> [315,]  68   7      0        150        0   210
#> [316,]  71  20      1          0        1   160
#> [317,]  67   2      0        180        0   128
#> [318,]  66   9      1          3        1   151
#> [319,]  70  14      0        171        0   166
#> [320,]  66   4      0        180        0   130
#> [321,]  67  10      1          9        0   200
#> [322,]  67   6      1          4        0   130
#> [323,]  65   2      0        180        0   130
#> [324,]  68   7      1          0        1   150
#> [325,]  69   3      1          2        0   151
#> [326,]  67  14      1         13        0   130
#> [327,]  65  14      1         13        1   150
#> [328,]  69   8      0        180        1   180
#> [329,]  71   7      0          7        0   230
#> [330,]  66   2      0          2        1   228
#> [331,]  71   6      0         45        1   158
#> [332,]  69   5      0          5        1   142
#> [333,]  71   3      0        103        0   133
#> [334,]  70  22      1         13        0   103
#> [335,]  67   1      0         36        1   104
#> [336,]  67   5      0          5        0   130
#> [337,]  68   6      0        180        0   145
#> [338,]  69   8      1          5        1   195
#> [339,]  72   7      0          7        1   110
#> [340,]  67   3      0        180        0   110
#> [341,]  69  19      0        180        0   130
#> [342,]  68  18      0         18        1   100
#> [343,]  69  11      1          0        1   120
#> [344,]  66   2      0        180        0   130
#> [345,]  67   7      1          4        0   122
#> [346,]  69   4      1          3        0   132
#> [347,]  68   2      0          7        1   130
#> [348,]  67  13      1          9        0   130
#> [349,]  70   9      0        180        1   142
#> [350,]  72   5      1          4        0   170
#> [351,]  68   3      0         19        0   135
#> [352,]  67   1      0          1        1    60
#> [353,]  67   4      0         60        1   136
#> [354,]  67   8      1          0        1   130
#> [355,]  68  10      1          8        1   160
#> [356,]  66  24      1         13        0   130
#> [357,]  70   7      0          7        0   102
#> [358,]  73  20      1          0        1   170
#> [359,]  69  10      1          6        1   120
#> [360,]  70  11      0        180        1   210
#> [361,]  72  12      1         10        0   170
#> [362,]  67   9      0        180        0   158
#> [363,]  72   6      1          5        0   115
#> [364,]  71   1      0        173        1   188
#> [365,]  70   3      0        180        0   121
#> [366,]  68   4      1          3        0   210
#> [367,]  72   5      0         28        0   120
#> [368,]  73   6      0        180        1   117
#> [369,]  69   8      1          1        0   164
#> [370,]  68   7      0        180        1   130
#> [371,]  72  16      1          1        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  71   2      1          0        1   180
#> [377,]  73   7      0          7        1   140
#> [378,]  68  15      1         13        1   130
#> [379,]  70   3      0          3        1   159
#> [380,]  70  13      1          9        0   100
#> [381,]  72   6      0        180        1   130
#> [382,]  73   0      0        180        1   161
#> [383,]  73   4      0        180        1   154
#> [384,]  71   3      1          1        0   150
#> [385,]  74  20      0         20        1   180
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   8      1          7        0   149
#> [391,]  71   3      1          2        1   190
#> [392,]  73  10      1          8        0   106
#> [393,]  69  12      1          1        1   149
#> [394,]  70  26      1         11        1   120
#> [395,]  74   4      0          4        0   120
#> [396,]  70   3      0        180        1   154
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  70   4      1          0        1   140
#> [401,]  72  10      1          8        1   153
#> [402,]  69   7      0        180        1   144
#> [403,]  72  15      1         13        0   156
#> [404,]  70   8      0          8        0   120
#> [405,]  71  10      1          9        1   120
#> [406,]  75   1      0          1        0   133
#> [407,]  75   2      1          1        0   145
#> [408,]  73  10      1          9        1   146
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  74  15      1          9        1   179
#> [412,]  71   2      0         10        1   112
#> [413,]  73   1      0          1        1    80
#> [414,]  75  13      1          1        1   130
#> [415,]  71  11      1          8        0   110
#> [416,]  71   4      0          4        0   134
#> [417,]  73  10      1          8        0   120
#> [418,]  70   7      1          4        0   184
#> [419,]  72   1      1          1        0   168
#> [420,]  72   7      0         57        1   145
#> [421,]  72  11      0         11        1   140
#> [422,]  73   5      1          3        1   112
#> [423,]  76  25      1         12        1   170
#> [424,]  73  12      1         12        1   140
#> [425,]  72   2      0        180        0   120
#> [426,]  72   4      1          0        1   197
#> [427,]  73   5      0        180        0   126
#> [428,]  74  34      1          8        1   233
#> [429,]  76   3      1          0        1   120
#> [430,]  71  32      1         12        1   107
#> [431,]  72   3      0        180        0   160
#> [432,]  76   5      0          5        1   130
#> [433,]  72   7      1          2        0   142
#> [434,]  73  15      0         15        1   160
#> [435,]  74   7      0        180        1   150
#> [436,]  76   1      0        180        0   114
#> [437,]  76   8      1          0        1   141
#> [438,]  74  19      1          4        1   200
#> [439,]  73   6      0          6        1   114
#> [440,]  74   2      0        180        0   190
#> [441,]  72   4      0         85        1   120
#> [442,]  73   4      1          3        1   125
#> [443,]  76  13      1         10        0   110
#> [444,]  75   4      1          0        1   122
#> [445,]  75   0      0          0        1   130
#> [446,]  75  12      0         12        1   160
#> [447,]  76  13      1          8        1   148
#> [448,]  75   4      1          2        1   188
#> [449,]  76   4      0          4        1   155
#> [450,]  75   1      0          1        1   125
#> [451,]  73   1      0         52        1   105
#> [452,]  73   0      0        180        0   156
#> [453,]  72   5      0        180        0   120
#> [454,]  78  12      1         11        1   160
#> [455,]  76  44      1         10        0   105
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  76   5      1          0        1   167
#> [459,]  75   9      0        180        1   140
#> [460,]  73  33      1         12        1   175
#> [461,]  77   5      1          0        0   123
#> [462,]  77  12      1          9        1   100
#> [463,]  73  10      1          9        0   146
#> [464,]  77  12      0        180        0   130
#> [465,]  77   1      1          0        1    90
#> [466,]  76  12      1         11        1   120
#> [467,]  78   5      1          0        1   170
#> [468,]  73   7      1          0        0   174
#> [469,]  74   6      0         79        1   140
#> [470,]  74   9      1          8        0   200
#> [471,]  75   6      0        180        0   150
#> [472,]  79  10      1          8        0   190
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  74   2      0        180        0   100
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  78  32      1          9        1   198
#> [481,]  80  10      1          6        1   147
#> [482,]  75   5      0        119        1   150
#> [483,]  78  15      0        180        1   270
#> [484,]  75  13      1          6        0   150
#> [485,]  74  10      1          8        0   135
#> [486,]  79   4      0         80        0   145
#> [487,]  78  12      1          9        0   150
#> [488,]  75   4      1          0        0   212
#> [489,]  78  10      0        180        1   130
#> [490,]  75  11      1          4        0   162
#> [491,]  75   3      0          3        0     0
#> [492,]  76   7      0         29        1   150
#> [493,]  77  24      0         24        1   160
#> [494,]  79   8      0         32        1   120
#> [495,]  80   9      0         23        1   128
#> [496,]  80   6      0          6        1   150
#> [497,]  78   6      1          0        1   240
#> [498,]  78  11      1          1        1   140
#> [499,]  79   2      1          0        1   121
#> [500,]  81   1      0          1        0   130
#> [501,]  78  11      1          8        1   118
#> [502,]  76   4      0          4        1   160
#> [503,]  79   4      0          4        1   125
#> [504,]  76  10      1          8        0   180
#> [505,]  76  12      1         10        1   127
#> [506,]  77   6      0          6        1   107
#> [507,]  75   2      1          1        1   204
#> [508,]  78  11      0        180        1   135
#> [509,]  76   1      0          1        1   140
#> [510,]  77  31      1          3        1   161
#> [511,]  77   6      0          6        1   144
#> [512,]  79   4      1          0        1   120
#> [513,]  81   1      0        180        0   120
#> [514,]  77   9      1          4        0   141
#> [515,]  78   4      0         59        1   112
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  81   4      1          2        1   126
#> [519,]  79  28      0        164        0   100
#> [520,]  80   6      0        173        1   160
#> [521,]  78  32      0        180        1   130
#> [522,]  79   1      0         37        1   140
#> [523,]  81   2      0        175        0   172
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  81   4      1          1        1   104
#> [530,]  78  20      1          0        1   109
#> [531,]  80   1      0          1        0   100
#> [532,]  78   3      1          1        1   152
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  78   2      0        180        0   148
#> [538,]  80   5      0          5        1   130
#> [539,]  82   1      1          0        1    82
#> [540,]  77   4      0        180        1    98
#> [541,]  81   1      0        108        0   129
#> [542,]  79   1      0        125        0   193
#> [543,]  82  21      1          2        0   155
#> [544,]  79   4      0          4        1   121
#> [545,]  80   6      0          6        1   110
#> [546,]  83   9      1          5        1   170
#> [547,]  83   5      0        180        0   148
#> [548,]  81  11      1          8        0   160
#> [549,]  81   5      0        177        0    41
#> [550,]  78  23      1         10        1   145
#> [551,]  79   4      0          4        1   183
#> [552,]  84   5      1          1        1    85
#> [553,]  80  11      1          8        0   110
#> [554,]  81   8      0        180        0   146
#> [555,]  79   7      0        177        0   197
#> [556,]  79   0      1          0        1    96
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  83   2      0          2        1   155
#> [560,]  80   3      1          1        1   230
#> [561,]  84   5      0        180        1   203
#> [562,]  84   4      0          4        1    85
#> [563,]  81   1      0          1        1   150
#> [564,]  84   1      0         38        1   205
#> [565,]  81   4      0         90        1   138
#> [566,]  85   3      1          2        1   160
#> [567,]  80  13      1          8        1   140
#> [568,]  80   2      1          0        1   130
#> [569,]  80   6      0         71        1   189
#> [570,]  83   1      0          1        1   100
#> [571,]  82  19      0         19        0   120
#> [572,]  80  30      1         13        0   220
#> [573,]  83   9      0        180        0   198
#> [574,]  79  14      1          0        0   110
#> [575,]  82   0      0          2        1   100
#> [576,]  85   9      1          6        1   160
#> [577,]  83   1      0        180        0   160
#> [578,]  81   4      0          4        0   175
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  83  12      1          2        1   170
#> [586,]  81  19      1         14        0   120
#> [587,]  82   3      1          2        0   130
#> [588,]  82  15      1          0        0   183
#> [589,]  83   7      0        126        0   135
#> [590,]  84   3      0        180        1   120
#> [591,]  81  13      0        180        0   152
#> [592,]  81   2      1          0        1   118
#> [593,]  81   4      0        180        0   160
#> [594,]  83   9      0        180        1   149
#> [595,]  82   1      0        180        1   193
#> [596,]  83   4      0          4        0   130
#> [597,]  87   2      0          5        1   137
#> [598,]  86  12      1          0        1   132
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  87   2      0        180        0   113
#> [609,]  84   9      0         92        1   110
#> [610,]  84   3      0        180        1   170
#> [611,]  86   4      0         38        1   122
#> [612,]  82   4      0          4        0   130
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  88   4      0          4        0   100
#> [617,]  88   4      0          4        1   115
#> [618,]  83   9      0         65        1   150
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  87   8      0          8        1   157
#> [624,]  89   4      0          4        1   153
#> [625,]  89   5      0        119        1   140
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  84   2      0        110        1   174
#> [630,]  89  10      0         46        1   170
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  91   8      0          8        0   100
#> [634,]  87   2      0        180        0   160
#> [635,]  87   6      1          0        0   125
#> [636,]  86   3      1          0        1    80
#> [637,]  88   7      0         24        0   119
#> [638,]  88   8      0         50        1   154
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  91   1      0          1        1    74
#> [643,]  87  43      0        178        1   130
#> [644,]  87   5      0         36        1   150
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  91   1      0        180        0   158
#> [665,]  90  16      0         16        1   106
#> [666,]  90   3      0         67        0   162
#> [667,]  95   8      1          5        1   150
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+
#>  [41] 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0    1.0 
#>  [61] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+   7.0   36.0  180.0+   4.0+ 180.0+  77.0  180.0+ 180.0+   5.0 
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 180.0+  16.0+
#>  [91] 180.0+ 152.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0 
#> [101] 180.0+   9.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+   7.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+
#> [121]  12.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 140.0    1.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [151]   5.0+ 180.0+   4.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [171] 180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+  17.0 
#> [181]  45.0   19.0  180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+  15.0 
#> [191] 180.0+  77.0   13.0+   8.0+ 180.0+  94.0  180.0+ 169.0    7.0+   6.0 
#> [201] 180.0+ 180.0+   3.0+ 180.0+ 180.0+  28.0   13.0+  18.0  180.0+ 180.0+
#> [211]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [221] 180.0+  22.0  180.0+ 180.0+   7.0+ 180.0+   1.0    6.0+ 180.0+ 180.0+
#> [231]  17.0  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   3.0+  88.0  180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+  12.0    9.0    3.0  180.0+ 180.0+  18.0+ 180.0+   2.0+ 103.0 
#> [261] 180.0+ 180.0+   5.0+ 180.0+  14.0+   0.5+ 180.0+   3.0+ 180.0+ 175.0+
#> [271] 180.0+ 180.0+   8.0   16.0  180.0+   1.0  180.0+ 180.0+ 180.0+   1.0+
#> [281]  11.0+ 180.0+  79.0  180.0+   4.0+  15.0  180.0+ 174.0+ 180.0+ 180.0+
#> [291]   8.0+   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+  12.0   99.0 
#> [301] 180.0+ 179.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 180.0+
#> [311]  21.0+  18.0+   5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 171.0  180.0+
#> [321] 174.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0 
#> [331]  45.0    5.0+ 103.0  180.0+  36.0    5.0+ 180.0+ 180.0+   7.0  180.0+
#> [341] 180.0+  18.0  180.0+ 180.0+   7.0  180.0+   7.0   13.0+ 180.0+ 180.0+
#> [351]  19.0    1.0   60.0  180.0+  10.0+ 180.0+   7.0+ 124.0  180.0+ 180.0+
#> [361]  12.0  180.0+ 180.0+ 173.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0    3.0+  13.0+
#> [381] 180.0+ 180.0+ 180.0+   3.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0 
#> [391]   3.0   87.0   12.0  180.0+   4.0+ 180.0+   3.0  180.0+ 175.0  180.0+
#> [401]  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 180.0+ 159.0   15.0 
#> [411] 180.0+  10.0    1.0   13.0  180.0+   4.0+  10.0  104.0+   1.0   57.0 
#> [421]  11.0    5.0  180.0+  12.0  180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+
#> [431] 180.0+   5.0    7.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+
#> [441]  85.0  180.0+ 174.0+   4.0    0.5   12.0  180.0+  46.0    4.0    1.0 
#> [451]  52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  33.0 
#> [461]   5.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+   7.0+  79.0  168.0+
#> [471] 180.0+ 180.0+  18.0  180.0+  47.0  180.0+ 180.0+   7.0  180.0+  32.0 
#> [481]  10.0  119.0  180.0+ 180.0+ 180.0+  80.0  180.0+   4.0+ 180.0+ 152.0+
#> [491]   3.0   29.0   24.0   32.0   23.0    6.0  180.0+ 180.0+ 180.0+   1.0 
#> [501]  11.0    4.0    4.0   10.0+ 180.0+   6.0    2.0+ 180.0+   1.0  171.0 
#> [511]   6.0  138.0  180.0+  71.0   59.0  161.0   10.0+  93.0  164.0  173.0 
#> [521] 180.0+  37.0  175.0+   7.0+  22.0   15.0+   5.0+ 180.0+  71.0   20.0+
#> [531]   1.0    3.0+  85.0   10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+
#> [541] 108.0  125.0  180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 177.0+  70.0 
#> [551]   4.0  180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+   2.0    3.0+
#> [561] 180.0+   4.0    1.0   38.0   90.0  180.0+ 180.0+ 180.0+  71.0    1.0 
#> [571]  19.0   30.0  180.0+ 180.0+   2.0  180.0+ 180.0+   4.0+ 180.0+   1.0 
#> [581]  12.0   16.0+   5.0+   4.0+  77.0  180.0+   3.0   83.0  126.0  180.0+
#> [591] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+   6.0   70.0 
#> [601]  43.0  180.0+ 180.0+ 180.0+   3.0   13.0  180.0+ 180.0+  92.0  180.0+
#> [611]  38.0    4.0  177.0    3.0+   6.0+   4.0+   4.0   65.0  180.0+  46.0 
#> [621] 115.0  180.0+   8.0+   4.0  119.0  180.0+   1.0+ 180.0+ 110.0   46.0 
#> [631]   1.0+ 180.0+   8.0  180.0+  25.0    3.0   24.0   50.0  126.0  180.0+
#> [641] 180.0+   1.0  178.0+  36.0    3.0+   1.0   33.0  158.0   74.0  168.0 
#> [651] 169.0   52.0    4.0    0.5  180.0+ 180.0+   4.0  180.0+   1.0+   2.0 
#> [661] 179.0+   8.0+  76.0  180.0+  16.0   67.0    8.0    2.0  180.0+  15.0+
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
#>   0.8265778 
```
