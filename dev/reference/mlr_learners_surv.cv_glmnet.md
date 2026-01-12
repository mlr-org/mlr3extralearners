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
#> min 0.00316    44   2.767 0.1847       6
#> 1se 0.08210     9   2.945 0.1806       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  37   9      0        180        1   151
#>   [8,]  35   0      0        180        1   119
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  43   3      1          0        1   100
#>  [20,]  41   2      1          1        0   166
#>  [21,]  40   1      1          0        1   145
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  15      1         13        1   125
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  46  15      0        180        0   120
#>  [37,]  46   2      1          1        0   126
#>  [38,]  48  15      0        180        1   160
#>  [39,]  44   3      1          0        1   180
#>  [40,]  46   7      1          2        0   166
#>  [41,]  45   4      1          0        0   124
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  44   0      1          0        1    96
#>  [45,]  43   3      1          0        1   124
#>  [46,]  49   5      0         73        1   136
#>  [47,]  45   5      0          5        0   141
#>  [48,]  46   6      1          0        1   100
#>  [49,]  46   5      1          3        0   130
#>  [50,]  44   2      0        180        0   142
#>  [51,]  46  15      0        180        1   120
#>  [52,]  45   9      1          0        1   145
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  48  12      1         11        0   200
#>  [56,]  47   5      1          3        1   130
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47  10      0         10        1   140
#>  [60,]  48   2      1          0        0   184
#>  [61,]  47   7      0        180        0   145
#>  [62,]  50   4      1          1        0   125
#>  [63,]  50   6      1          2        1   140
#>  [64,]  49   7      1          7        1   110
#>  [65,]  46   3      1          1        1   140
#>  [66,]  46   9      1          9        1   122
#>  [67,]  49   2      0          2        0   105
#>  [68,]  49  15      1         11        1   160
#>  [69,]  47   2      0        180        0   150
#>  [70,]  50   7      1          0        1    92
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  47   6      0        180        1   162
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   1      1          1        0   145
#>  [77,]  50   4      1          1        0   150
#>  [78,]  48   7      1          0        1   110
#>  [79,]  53   8      0         36        1   160
#>  [80,]  48  17      1         10        0   111
#>  [81,]  47   2      1          1        0   110
#>  [82,]  52   4      1          4        0   152
#>  [83,]  49   9      1          3        0   102
#>  [84,]  49  15      0        180        1   160
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  54   6      1          3        0   129
#>  [89,]  50  10      1          6        0   122
#>  [90,]  50  14      1         13        0   170
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  49   5      1          2        1   150
#>  [94,]  53   4      0          4        0   140
#>  [95,]  52  14      1          7        1   200
#>  [96,]  48  11      1         10        0   120
#>  [97,]  53   4      1          0        1   156
#>  [98,]  51  13      0         99        1   160
#>  [99,]  54   9      1          0        1   138
#> [100,]  49  16      0         16        0   125
#> [101,]  55   3      1          1        0   150
#> [102,]  54  23      1         10        0   131
#> [103,]  52   7      1          2        0   154
#> [104,]  55   6      1          2        1   114
#> [105,]  54   9      1          1        0   130
#> [106,]  55   4      1          2        0   150
#> [107,]  51  13      1         11        0   145
#> [108,]  50   5      1          4        1   150
#> [109,]  54   4      1          0        1   121
#> [110,]  50   3      0        174        1   153
#> [111,]  55  28      1         13        1   160
#> [112,]  49   6      1          0        1   130
#> [113,]  49   1      0          1        1   110
#> [114,]  53   9      0          9        1    95
#> [115,]  53   8      1          0        1   130
#> [116,]  50   7      1          0        1   127
#> [117,]  56   4      1          1        1   130
#> [118,]  55   2      0          2        0   145
#> [119,]  54   1      0        180        0   162
#> [120,]  56   3      0        180        1   193
#> [121,]  56   2      0        180        0   132
#> [122,]  53  18      1          9        1   150
#> [123,]  54   3      0        180        1   180
#> [124,]  55   6      0        180        0   170
#> [125,]  53  10      1          9        0   172
#> [126,]  52  16      1         14        0   170
#> [127,]  53  15      0         15        1    90
#> [128,]  55   6      0        180        1   100
#> [129,]  55   6      1          5        1   138
#> [130,]  54  12      1          0        1   190
#> [131,]  54   3      0        180        0   128
#> [132,]  56   3      0          8        1   139
#> [133,]  55   1      0          2        0   130
#> [134,]  54   7      1          2        0   129
#> [135,]  54   2      1          1        1   176
#> [136,]  57   5      1          3        1   138
#> [137,]  57   1      0        180        1   156
#> [138,]  57   1      0          1        1   100
#> [139,]  56   4      1          0        1   140
#> [140,]  52   2      0        180        0   140
#> [141,]  55  11      1          7        0   104
#> [142,]  52  15      1         14        0   130
#> [143,]  56  14      1         11        0   130
#> [144,]  53   3      1          0        1   200
#> [145,]  57  10      0        180        1   170
#> [146,]  55   3      1          1        1   156
#> [147,]  59   3      1          1        0   172
#> [148,]  57   4      0        180        1   119
#> [149,]  58   6      1          0        1    90
#> [150,]  54  17      1          8        1   227
#> [151,]  55   9      1          2        1   147
#> [152,]  55  13      0        166        1   140
#> [153,]  56   5      0          5        1   150
#> [154,]  54  23      1          8        0   120
#> [155,]  57   4      1          2        1   185
#> [156,]  53   4      0        147        1   145
#> [157,]  53   7      1          0        1   120
#> [158,]  57  11      1         10        1   129
#> [159,]  55   3      1          2        0   140
#> [160,]  54   7      1          0        1   141
#> [161,]  56   4      0          4        0   164
#> [162,]  59  15      1         10        0   140
#> [163,]  58   9      1          0        1   180
#> [164,]  58   1      1          1        1   200
#> [165,]  55   5      1          0        0   140
#> [166,]  56   7      1          5        1   120
#> [167,]  55   2      0          2        0   106
#> [168,]  57   1      0        180        0   148
#> [169,]  60  11      1          9        0   106
#> [170,]  59   3      0        180        0   120
#> [171,]  58   4      1          0        1   160
#> [172,]  60   5      1          1        0   138
#> [173,]  59   5      0        180        1   155
#> [174,]  59   4      1          0        1   152
#> [175,]  58  26      1          0        1   189
#> [176,]  61   9      0          9        1   160
#> [177,]  58   4      1          3        0   120
#> [178,]  60   0      1          0        1    80
#> [179,]  58   8      0        161        1   140
#> [180,]  58  14      1          6        0   190
#> [181,]  61   4      1          3        0   151
#> [182,]  61   9      1          8        0   150
#> [183,]  61  20      1         13        0   130
#> [184,]  57   2      1          0        1   116
#> [185,]  57  11      0        180        1   150
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  55   4      1          3        1   160
#> [189,]  58  11      0        172        1   135
#> [190,]  60  12      1          0        1   114
#> [191,]  61   4      1          0        1   115
#> [192,]  61  13      1         12        1   130
#> [193,]  59  11      1          8        1   190
#> [194,]  57   1      0          1        0   126
#> [195,]  57  15      1         13        1   110
#> [196,]  59   5      1          2        0   182
#> [197,]  58   5      1          1        1   135
#> [198,]  61   8      0         77        0   120
#> [199,]  61  13      0         13        0   210
#> [200,]  58   8      1          5        0   152
#> [201,]  62   7      1          2        1   180
#> [202,]  57   3      1          0        0   100
#> [203,]  61  18      0        170        0   140
#> [204,]  61  28      1          7        0   133
#> [205,]  58   8      1          3        1   150
#> [206,]  57   7      0        169        0   180
#> [207,]  61   6      0          6        0   134
#> [208,]  60  17      1          8        1   140
#> [209,]  58   3      1          0        1   146
#> [210,]  58   2      0         30        0   202
#> [211,]  63   6      0         28        1   120
#> [212,]  61   5      0          5        1   110
#> [213,]  57  18      1          9        1    93
#> [214,]  61   5      0          5        1   160
#> [215,]  58  11      1          9        0   179
#> [216,]  57   2      1          1        0   159
#> [217,]  62  17      1         10        1   180
#> [218,]  62   1      1          0        1   172
#> [219,]  58   7      0        180        1   150
#> [220,]  61   7      0        180        0   135
#> [221,]  62   3      0        180        1   105
#> [222,]  60  18      1         13        0   132
#> [223,]  59   8      0        180        1   140
#> [224,]  58   9      1          9        0   110
#> [225,]  62   7      0          7        0   150
#> [226,]  59   1      0         22        1   162
#> [227,]  58   2      0        180        0   127
#> [228,]  59   4      0        180        0   196
#> [229,]  59   5      1          1        0   148
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  62   6      0        180        0   170
#> [233,]  59   4      0          4        0   149
#> [234,]  64  10      1          9        0   160
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  61   6      1          1        1   117
#> [239,]  64  12      1         11        0   160
#> [240,]  66   1      1          0        1   120
#> [241,]  64   6      1          0        1   140
#> [242,]  63  10      1          0        1   148
#> [243,]  65  36      1         11        0   140
#> [244,]  63   4      1          3        0   162
#> [245,]  66   3      1          1        0   127
#> [246,]  61  10      1          2        1   194
#> [247,]  64  32      1          9        1   160
#> [248,]  63  12      1          9        0   114
#> [249,]  63   7      0        180        0   120
#> [250,]  66   5      1          0        1   110
#> [251,]  65   8      1          0        0   168
#> [252,]  64   0      0          0        1    90
#> [253,]  60   6      0        180        0   130
#> [254,]  64   9      0        180        0   150
#> [255,]  61   4      0        180        1   113
#> [256,]  65   3      0        180        1   190
#> [257,]  63  16      1          7        1   110
#> [258,]  66   6      1          1        1   130
#> [259,]  63  12      0         12        1   150
#> [260,]  62   3      1          1        1   199
#> [261,]  65   3      1          0        1    80
#> [262,]  63   5      1          4        0   170
#> [263,]  63   2      1          1        0   180
#> [264,]  62  13      1         11        0   180
#> [265,]  67  11      0         11        1   100
#> [266,]  64   2      0          2        0   201
#> [267,]  66  18      1          5        0   142
#> [268,]  62   9      0        180        0   145
#> [269,]  61  14      1          5        0   140
#> [270,]  61  15      1         10        0   130
#> [271,]  63   3      1          2        0   120
#> [272,]  63   2      1          0        0   140
#> [273,]  64  19      1          8        1   160
#> [274,]  65  15      1         11        1   160
#> [275,]  64   6      1          0        1   125
#> [276,]  66   7      1          0        1   115
#> [277,]  66  13      1          0        0   118
#> [278,]  65   3      0          3        0   105
#> [279,]  66   3      1          0        1   135
#> [280,]  65   2      1          1        1   170
#> [281,]  63   7      1          0        0   162
#> [282,]  67   8      1          1        1   130
#> [283,]  63  10      0         16        1   160
#> [284,]  66  14      0        180        0   130
#> [285,]  64   1      0          1        1   120
#> [286,]  68  18      0        180        1   260
#> [287,]  65  17      1         14        1   100
#> [288,]  63   8      1          1        1   162
#> [289,]  65  18      1          3        0   120
#> [290,]  63  10      0         18        1   130
#> [291,]  67  11      0         11        0   150
#> [292,]  68  11      0        180        0   160
#> [293,]  68  14      0         79        0   172
#> [294,]  66  12      1         10        1   150
#> [295,]  65  15      1         12        1   150
#> [296,]  66  11      1          0        0   100
#> [297,]  65   4      1          2        1   145
#> [298,]  69  12      0         15        1   140
#> [299,]  66  15      1         13        1   160
#> [300,]  65  11      1          6        0   130
#> [301,]  69  21      1         10        0   180
#> [302,]  66   9      1          8        0   130
#> [303,]  63   8      0        180        1   120
#> [304,]  65   8      1          0        1    90
#> [305,]  66   3      0          3        1   138
#> [306,]  68  10      1         10        1   150
#> [307,]  63   2      1          0        0    99
#> [308,]  67   2      0        180        0   184
#> [309,]  65  10      1          1        1   148
#> [310,]  67  12      1         12        0   160
#> [311,]  69   6      0         99        1   140
#> [312,]  70  15      1         12        1   132
#> [313,]  64  11      0         11        0   125
#> [314,]  64   0      1          0        1   118
#> [315,]  67   2      0         18        0   131
#> [316,]  66   7      1          5        1   131
#> [317,]  68   4      1          0        1   160
#> [318,]  69   4      1          3        1   150
#> [319,]  65  13      1         12        1   130
#> [320,]  69  17      1         10        0   140
#> [321,]  69   8      0         93        0   140
#> [322,]  66   6      0        180        0   140
#> [323,]  65   1      0          1        1   120
#> [324,]  65   6      0        101        1   115
#> [325,]  68   4      0          4        1   190
#> [326,]  71   3      0          5        0   112
#> [327,]  70   7      1          0        1   190
#> [328,]  68   7      0        150        0   210
#> [329,]  71  20      1          0        1   160
#> [330,]  67   2      0        180        0   128
#> [331,]  66   1      1          1        1   165
#> [332,]  70   4      1          0        1   180
#> [333,]  70  14      0        171        0   166
#> [334,]  67  10      1          9        0   200
#> [335,]  67   6      1          4        0   130
#> [336,]  68  18      1         14        1   170
#> [337,]  65   2      0        180        0   130
#> [338,]  65  14      1         13        1   150
#> [339,]  69   8      0        180        1   180
#> [340,]  71   7      0          7        0   230
#> [341,]  66   2      0          2        1   228
#> [342,]  71   6      0         45        1   158
#> [343,]  69   5      0          5        1   142
#> [344,]  71   3      0        103        0   133
#> [345,]  69   3      0          3        1   130
#> [346,]  70  22      1         13        0   103
#> [347,]  67   1      0         36        1   104
#> [348,]  67   5      0          5        0   130
#> [349,]  68   6      0        180        0   145
#> [350,]  72   7      0          7        1   110
#> [351,]  69   8      1          7        1   108
#> [352,]  68  18      0         18        1   100
#> [353,]  67  14      0        172        1   140
#> [354,]  69  11      1          0        1   120
#> [355,]  66   2      0        180        0   130
#> [356,]  67   7      1          4        0   122
#> [357,]  69   4      1          3        0   132
#> [358,]  67  13      1          9        0   130
#> [359,]  70   3      0        123        0   130
#> [360,]  70   9      0        180        1   142
#> [361,]  72   5      1          4        0   170
#> [362,]  67  22      1          1        1   140
#> [363,]  68   3      0         19        0   135
#> [364,]  67   1      0          1        1    60
#> [365,]  67   4      0         60        1   136
#> [366,]  69   5      0         76        0   120
#> [367,]  68  10      1          8        1   160
#> [368,]  66  24      1         13        0   130
#> [369,]  70   7      0          7        0   102
#> [370,]  69  10      1          6        1   120
#> [371,]  70  11      0        180        1   210
#> [372,]  72  19      1          8        0   120
#> [373,]  72  12      1         10        0   170
#> [374,]  67   8      0        180        1   170
#> [375,]  67   9      0        180        0   158
#> [376,]  73  13      0        152        1   130
#> [377,]  72   2      0          2        1   100
#> [378,]  67   4      1          1        0   134
#> [379,]  72   6      1          5        0   115
#> [380,]  71   1      0        173        1   188
#> [381,]  68  23      0        180        1   220
#> [382,]  70   3      0        180        0   121
#> [383,]  71   3      1          2        0   150
#> [384,]  68   4      1          3        0   210
#> [385,]  72   5      0         28        0   120
#> [386,]  73   6      0        180        1   117
#> [387,]  69  16      1         10        1   140
#> [388,]  69   8      1          1        0   164
#> [389,]  72   8      1          1        1   150
#> [390,]  71   2      1          0        1   180
#> [391,]  73   7      0          7        1   140
#> [392,]  70  13      1          9        0   100
#> [393,]  72   6      0        180        1   130
#> [394,]  73   0      0        180        1   161
#> [395,]  74   8      1          0        1    85
#> [396,]  73   4      0        180        1   154
#> [397,]  69   2      1          0        1   110
#> [398,]  68   9      0        180        1   120
#> [399,]  74   0      1          0        1    90
#> [400,]  73   3      1          0        1   136
#> [401,]  70   5      1          0        1   190
#> [402,]  71  17      1         11        0   160
#> [403,]  71   3      1          2        1   190
#> [404,]  69  12      1          1        1   149
#> [405,]  73   4      0         58        1   160
#> [406,]  70   3      0        180        1   154
#> [407,]  72  15      1          0        1   150
#> [408,]  72   8      1          0        1   140
#> [409,]  71  13      1          8        0   121
#> [410,]  69   2      1          1        1    80
#> [411,]  70   4      1          0        1   140
#> [412,]  71  14      1         13        1   170
#> [413,]  74   7      1          0        1   117
#> [414,]  72  10      1          8        1   153
#> [415,]  69   7      0        180        1   144
#> [416,]  71  10      1          9        1   120
#> [417,]  75   1      0          1        0   133
#> [418,]  73  10      1          9        1   146
#> [419,]  72  10      1          9        1   160
#> [420,]  73  10      1         10        1   120
#> [421,]  74  15      1          9        1   179
#> [422,]  73   1      0          1        1    80
#> [423,]  75  13      1          1        1   130
#> [424,]  71   4      0          4        0   134
#> [425,]  72  15      1         12        1   120
#> [426,]  73  10      1          8        0   120
#> [427,]  72   7      0         57        1   145
#> [428,]  73  10      0        180        0   162
#> [429,]  72  11      0         11        1   140
#> [430,]  70   3      0          3        0   150
#> [431,]  73   5      1          3        1   112
#> [432,]  76  25      1         12        1   170
#> [433,]  73  12      1         12        1   140
#> [434,]  72   2      0        180        0   120
#> [435,]  73   5      0        180        0   126
#> [436,]  73   4      0        180        0   124
#> [437,]  74  34      1          8        1   233
#> [438,]  76   3      1          0        1   120
#> [439,]  71  32      1         12        1   107
#> [440,]  72   5      0        180        0   154
#> [441,]  72   3      0        180        0   160
#> [442,]  76   5      0          5        1   130
#> [443,]  77  11      0         11        1   150
#> [444,]  75   3      1          1        0   180
#> [445,]  73  15      0         15        1   160
#> [446,]  71  16      0        180        0   140
#> [447,]  76   1      0        180        0   114
#> [448,]  75  23      1         14        1   110
#> [449,]  74   2      0        180        0   190
#> [450,]  76  17      1          0        1   200
#> [451,]  73   4      1          3        1   125
#> [452,]  75   4      1          0        1   122
#> [453,]  75   7      0          7        0   190
#> [454,]  73  13      1         11        0   195
#> [455,]  74   8      1          0        1   105
#> [456,]  76  13      1          8        1   148
#> [457,]  75   4      1          2        1   188
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
#> [469,]  73  10      1          9        0   146
#> [470,]  77  12      0        180        0   130
#> [471,]  77   1      1          0        1    90
#> [472,]  76  12      1         11        1   120
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  74   9      1          8        0   200
#> [476,]  75   6      0        180        0   150
#> [477,]  79  10      1          8        0   190
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  77   3      0        180        0   110
#> [481,]  76  29      0         47        0    90
#> [482,]  73   8      1          1        1   162
#> [483,]  74   2      0        180        0   100
#> [484,]  78   7      0          7        1   133
#> [485,]  74  15      0        180        1   172
#> [486,]  78   8      1          6        1   110
#> [487,]  74   7      0          7        0   161
#> [488,]  76  13      1          1        1   170
#> [489,]  78  32      1          9        1   198
#> [490,]  79   6      0        180        0   170
#> [491,]  80  10      1          6        1   147
#> [492,]  78   0      0        180        1   212
#> [493,]  78  13      1          5        0   130
#> [494,]  75   5      0        119        1   150
#> [495,]  75  12      1          1        1   120
#> [496,]  80   8      0          8        1   120
#> [497,]  76   1      0          1        1    83
#> [498,]  79   4      0         80        0   145
#> [499,]  78  12      1          9        0   150
#> [500,]  78   2      1          1        0   130
#> [501,]  75   4      1          0        0   212
#> [502,]  77   2      1          0        1   143
#> [503,]  75   3      0          3        0     0
#> [504,]  76   7      0         29        1   150
#> [505,]  79   8      0         32        1   120
#> [506,]  80   6      0          6        1   150
#> [507,]  79  11      0        180        0   160
#> [508,]  78  14      1          0        1   140
#> [509,]  81   1      0          1        0   130
#> [510,]  78  11      1          8        1   118
#> [511,]  76   4      0          4        1   160
#> [512,]  79   4      0          4        1   125
#> [513,]  76  10      1          8        0   180
#> [514,]  76  12      1         10        1   127
#> [515,]  77   6      0          6        1   107
#> [516,]  77  31      1          3        1   161
#> [517,]  76   1      0          1        1    90
#> [518,]  78   7      1          0        1   110
#> [519,]  77   6      0          6        1   144
#> [520,]  79   4      1          0        1   120
#> [521,]  81   1      0        180        0   120
#> [522,]  80  15      1         12        1   150
#> [523,]  77   9      1          4        0   141
#> [524,]  82   5      0          8        1   120
#> [525,]  80  40      1          0        1   138
#> [526,]  80  17      1         12        0   100
#> [527,]  80  15      1          0        1    90
#> [528,]  81   4      1          2        1   126
#> [529,]  80   9      0        118        1   186
#> [530,]  80   6      0        173        1   160
#> [531,]  78  32      0        180        1   130
#> [532,]  79   1      0         37        1   140
#> [533,]  81   3      0        180        0   184
#> [534,]  78   7      0          7        1   147
#> [535,]  78  15      0         15        0   165
#> [536,]  80   5      1          1        1   108
#> [537,]  78   4      0        180        0   175
#> [538,]  81   4      1          1        1   104
#> [539,]  78  20      1          0        1   109
#> [540,]  77  10      1          8        1   130
#> [541,]  77   5      0         85        0   188
#> [542,]  79   6      0          6        0   152
#> [543,]  78   2      0        180        0   148
#> [544,]  79  10      0        180        1   150
#> [545,]  77   4      0        180        1    98
#> [546,]  79   4      0          4        1   121
#> [547,]  80   6      0          6        1   110
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  79   7      1          6        0   130
#> [551,]  83   4      0        103        0    97
#> [552,]  81  11      1          8        0   160
#> [553,]  81   5      0        177        0    41
#> [554,]  80  11      1          8        0   170
#> [555,]  78  23      1         10        1   145
#> [556,]  79   4      0          4        1   183
#> [557,]  78   9      1          4        1   120
#> [558,]  79   1      0        180        1   170
#> [559,]  80   7      1          0        1   146
#> [560,]  84   5      1          1        1    85
#> [561,]  81  20      1          9        0   170
#> [562,]  83   8      0          8        0   115
#> [563,]  81  16      0         16        1   110
#> [564,]  80   6      1          0        1   150
#> [565,]  80  11      1          8        0   110
#> [566,]  81   8      0        180        0   146
#> [567,]  80   8      1          7        0   160
#> [568,]  79   0      1          0        1    96
#> [569,]  85   4      0        180        0    90
#> [570,]  81   2      1          1        0   198
#> [571,]  80   3      1          1        1   230
#> [572,]  82  23      1          0        0   110
#> [573,]  84   5      0        180        1   203
#> [574,]  84   4      0          4        1    85
#> [575,]  81   1      0          1        1   150
#> [576,]  84   1      0         38        1   205
#> [577,]  83   3      0        180        0   174
#> [578,]  81   4      0         90        1   138
#> [579,]  84   4      0         89        1   129
#> [580,]  79   4      0          4        1    60
#> [581,]  80   6      0         71        1   189
#> [582,]  83   1      0          1        1   100
#> [583,]  82  19      0         19        0   120
#> [584,]  80  30      1         13        0   220
#> [585,]  83   9      0        180        0   198
#> [586,]  79  14      1          0        0   110
#> [587,]  81  14      1         12        1   128
#> [588,]  83   2      0        154        0   130
#> [589,]  85   9      1          6        1   160
#> [590,]  83   1      0        180        0   160
#> [591,]  81   4      0          4        0   175
#> [592,]  84  15      1         13        1   110
#> [593,]  82  16      1          8        0   103
#> [594,]  86  12      0        180        1   120
#> [595,]  83  12      1          2        1   170
#> [596,]  81  19      1         14        0   120
#> [597,]  82   3      1          2        0   130
#> [598,]  82  15      1          0        0   183
#> [599,]  83   7      0        126        0   135
#> [600,]  81  16      1          9        0   180
#> [601,]  84   6      0        165        0   145
#> [602,]  81  13      0        180        0   152
#> [603,]  81   2      1          0        1   118
#> [604,]  81   4      0        180        0   160
#> [605,]  83   9      0        180        1   149
#> [606,]  82   1      0        180        1   193
#> [607,]  83   4      0          4        0   130
#> [608,]  86   6      1          0        1   140
#> [609,]  84  16      0         70        1   150
#> [610,]  83  19      0         43        0   150
#> [611,]  84   3      1          2        0   125
#> [612,]  86   2      0        180        1   169
#> [613,]  83  13      1         12        0   170
#> [614,]  84   7      1          2        0   148
#> [615,]  87   2      0        180        0   113
#> [616,]  84   3      0        180        1   170
#> [617,]  86  13      0        177        0   163
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  85  22      0         22        1   184
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  88   2      0        180        1    68
#> [626,]  87   8      0          8        1   157
#> [627,]  86  15      1          8        1   109
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  84   2      0        110        1   174
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  87   2      0        180        0   160
#> [638,]  91  10      0        145        0   135
#> [639,]  88   7      0         24        0   119
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+   3.0  180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  179.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+
#>  [81] 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  99.0  180.0+  16.0+
#> [101] 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+
#> [111]  28.0    6.0+   1.0    9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+  12.0+
#> [131] 180.0+   8.0    2.0  180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+
#> [151]  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161]   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  161.0+ 171.0+
#> [181] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+
#> [191] 180.0+ 180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+  77.0   13.0+   8.0+
#> [201] 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    6.0  180.0+   3.0+  30.0 
#> [211]  28.0    5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+ 180.0+   1.0 
#> [231]   1.0  180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [241] 180.0+ 180.0+  36.0  180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [251] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [261]   3.0  180.0+ 180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+
#> [271]   3.0+   2.0+ 103.0  180.0+ 180.0+ 179.0+ 166.0+   3.0    3.0+ 175.0+
#> [281]   7.0+   8.0   16.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+  18.0 
#> [291]  11.0+ 180.0+  79.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+
#> [301] 174.0+ 180.0+ 180.0+   8.0+   3.0   10.0  180.0+ 180.0+ 180.0+  12.0 
#> [311]  99.0  180.0+  11.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+ 180.0+
#> [321]  93.0  180.0+   1.0  101.0    4.0    5.0    7.0+ 150.0  180.0+ 180.0+
#> [331]   1.0  180.0+ 171.0  174.0+   6.0  180.0+ 180.0+  14.0+ 180.0+   7.0+
#> [341]   2.0   45.0    5.0+ 103.0    3.0+ 180.0+  36.0    5.0+ 180.0+   7.0 
#> [351]   8.0+  18.0  172.0+ 180.0+ 180.0+   7.0  180.0+  13.0+ 123.0  180.0+
#> [361] 180.0+  51.0   19.0    1.0   60.0   76.0   10.0+ 180.0+   7.0+ 180.0+
#> [371] 180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0    2.0   76.0  180.0+ 173.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+ 180.0+
#> [391]   7.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+   0.5  180.0+
#> [401] 180.0+ 180.0+   3.0   12.0   58.0  180.0+ 180.0+ 180.0+ 175.0    2.0 
#> [411] 180.0+  14.0+ 180.0+  10.0+ 180.0+ 179.0+   1.0  180.0+ 159.0   15.0 
#> [421] 180.0+   1.0   13.0    4.0+ 180.0+  10.0   57.0  180.0+  11.0    3.0+
#> [431]   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+
#> [441] 180.0+   5.0   11.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0+
#> [451] 180.0+   4.0    7.0  180.0+ 180.0+ 180.0+  46.0  180.0+ 180.0+  12.0 
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+
#> [471]   1.0   12.0  180.0+   7.0+ 168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+
#> [481]  47.0  180.0+ 180.0+   7.0  180.0+   8.0+   7.0  180.0+  32.0  180.0+
#> [491]  10.0  180.0+ 172.0  119.0   12.0    8.0    1.0   80.0  180.0+ 180.0+
#> [501]   4.0+   2.0    3.0   29.0   32.0    6.0  180.0+ 180.0+   1.0   11.0 
#> [511]   4.0    4.0   10.0+ 180.0+   6.0  171.0    1.0   43.0    6.0  138.0 
#> [521] 180.0+ 180.0+  71.0    8.0   40.0   17.0  180.0+  93.0  118.0  173.0 
#> [531] 180.0+  37.0  180.0+   7.0+  15.0+   5.0+ 180.0+  71.0   20.0+  10.0 
#> [541]  85.0    6.0+ 180.0+ 180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [551] 103.0  180.0+ 177.0+ 169.0   70.0    4.0  180.0+ 180.0+   7.0+ 180.0+
#> [561]  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [571]   3.0+  62.0  180.0+   4.0    1.0   38.0  180.0+  90.0   89.0    4.0 
#> [581]  71.0    1.0   19.0   30.0  180.0+ 180.0+ 180.0+ 154.0  180.0+ 180.0+
#> [591]   4.0+ 180.0+  16.0+ 180.0+  77.0  180.0+   3.0   83.0  126.0  180.0+
#> [601] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   6.0   70.0   43.0 
#> [611] 180.0+ 180.0+  13.0  180.0+ 180.0+ 180.0+ 177.0    6.0+  62.0   20.0 
#> [621]   4.0   22.0   11.0  180.0+ 180.0+   8.0+ 180.0+   4.0  119.0  180.0+
#> [631] 110.0  180.0+ 180.0+  14.0    1.0+ 180.0+ 180.0+ 145.0   24.0  180.0+
#> [641] 180.0+   4.0    1.0  178.0+  36.0    3.0+   1.0   33.0   74.0  180.0+
#> [651] 168.0  169.0    4.0    0.5  180.0+ 180.0+  50.0    1.0+ 179.0+   8.0+
#> [661]  76.0  180.0+  16.0   67.0   12.0    7.0+  69.0    2.0  180.0+   3.0 
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
#>   0.8500377 
```
