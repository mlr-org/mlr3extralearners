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
#> min 0.00326    45   2.712 0.1633       6
#> 1se 0.07021    12   2.858 0.1530       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40  12      1          9        0   153
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  42   2      0        180        1   100
#>  [20,]  38   5      1          3        0   125
#>  [21,]  42   2      0          2        0   140
#>  [22,]  40   6      0        180        1   138
#>  [23,]  40  11      1         10        1   120
#>  [24,]  43   3      1          0        1   100
#>  [25,]  41   2      1          1        0   166
#>  [26,]  40   1      1          0        1   145
#>  [27,]  43   4      1          0        1   130
#>  [28,]  42   4      0        180        0   162
#>  [29,]  40   3      1          1        0   170
#>  [30,]  43   2      1          1        1   116
#>  [31,]  42   2      0        180        1   124
#>  [32,]  44   5      1          1        0   170
#>  [33,]  41  10      1          8        0   150
#>  [34,]  44   3      0        180        0   141
#>  [35,]  41  13      1          1        0   140
#>  [36,]  43   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  48  15      0        180        1   160
#>  [40,]  45   3      0        150        0   130
#>  [41,]  44   3      1          0        1   180
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  45   4      1          0        0   124
#>  [45,]  43  10      0        180        0   185
#>  [46,]  47   6      1          0        1   116
#>  [47,]  46  13      1         10        0   100
#>  [48,]  44   0      1          0        1    96
#>  [49,]  47   4      1          3        1   160
#>  [50,]  43   3      1          0        1   124
#>  [51,]  45   5      0          5        0   141
#>  [52,]  46   6      1          0        1   100
#>  [53,]  44   4      1          0        1   114
#>  [54,]  44   9      1          8        1   135
#>  [55,]  45   5      0        180        1   190
#>  [56,]  46   4      0        180        1   121
#>  [57,]  47   3      1          1        1   120
#>  [58,]  48   3      0        180        0   154
#>  [59,]  48  12      1         11        0   200
#>  [60,]  47   5      1          3        1   130
#>  [61,]  47   9      1          6        0   170
#>  [62,]  46   3      1          0        1   119
#>  [63,]  49   4      0        180        0   117
#>  [64,]  47  10      0         10        1   140
#>  [65,]  50   1      1          0        1   129
#>  [66,]  47   7      0        180        0   145
#>  [67,]  50   4      1          1        0   125
#>  [68,]  50   6      1          2        1   140
#>  [69,]  49   7      1          7        1   110
#>  [70,]  46   9      1          9        1   122
#>  [71,]  50   7      0        180        1   110
#>  [72,]  49   2      0          2        0   105
#>  [73,]  49  15      1         11        1   160
#>  [74,]  47   2      0        180        0   150
#>  [75,]  49  23      0        179        1   112
#>  [76,]  52   2      0        180        1   170
#>  [77,]  50   7      1          0        1    92
#>  [78,]  50   1      1          0        0   150
#>  [79,]  50   9      0        180        0   130
#>  [80,]  49   7      1          4        1    90
#>  [81,]  47   8      0        180        0   160
#>  [82,]  47   6      0        180        1   162
#>  [83,]  51   8      0        180        1   140
#>  [84,]  52   2      0        180        0   155
#>  [85,]  50   4      1          1        0   150
#>  [86,]  53   8      0         36        1   160
#>  [87,]  48  17      1         10        0   111
#>  [88,]  47   2      1          1        0   110
#>  [89,]  49   9      1          3        0   102
#>  [90,]  49  15      0        180        1   160
#>  [91,]  53   5      0        180        1   140
#>  [92,]  54  17      1         12        1   102
#>  [93,]  53   5      0         77        0   159
#>  [94,]  53   7      1          0        0   199
#>  [95,]  54   6      1          3        0   129
#>  [96,]  51   3      1          1        0   140
#>  [97,]  50  10      1          6        0   122
#>  [98,]  48   3      1          2        0   150
#>  [99,]  51  25      1          1        0   202
#> [100,]  49   5      1          2        1   150
#> [101,]  53   4      0          4        0   140
#> [102,]  52  14      1          7        1   200
#> [103,]  48   6      0        180        0   160
#> [104,]  48  11      1         10        0   120
#> [105,]  53   4      1          0        1   156
#> [106,]  54   9      1          0        1   138
#> [107,]  49  16      0         16        0   125
#> [108,]  52   7      1          2        0   154
#> [109,]  55   6      1          2        1   114
#> [110,]  54   9      1          1        0   130
#> [111,]  51  13      1         11        0   145
#> [112,]  50   5      1          4        1   150
#> [113,]  54   4      1          0        1   121
#> [114,]  50   3      0        174        1   153
#> [115,]  49   1      0          1        1   110
#> [116,]  50   7      1          1        0   156
#> [117,]  53   8      1          0        1   130
#> [118,]  56   4      1          1        1   130
#> [119,]  55   1      0        180        0   127
#> [120,]  55   2      0          2        0   145
#> [121,]  54   1      0        180        0   162
#> [122,]  54   7      1          0        1   100
#> [123,]  56   3      0        180        1   193
#> [124,]  55   5      1          4        1   120
#> [125,]  52   8      0        180        0   119
#> [126,]  53  18      1          9        1   150
#> [127,]  55   6      0        180        0   170
#> [128,]  53   4      0        180        1   150
#> [129,]  55   6      0        180        1   100
#> [130,]  55   6      1          5        1   138
#> [131,]  55   2      0        134        1   140
#> [132,]  55   1      0          2        0   130
#> [133,]  54   2      1          1        0   135
#> [134,]  52   9      1          3        0   170
#> [135,]  54   2      1          1        1   176
#> [136,]  56   4      1          0        1   140
#> [137,]  53   3      1          0        1   200
#> [138,]  57  10      0        180        1   170
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  59   3      1          1        0   172
#> [142,]  53  15      1         10        1   130
#> [143,]  54  17      1          8        1   227
#> [144,]  55   9      1          2        1   147
#> [145,]  56   5      0          5        1   150
#> [146,]  53   7      1          0        1   120
#> [147,]  55   3      1          2        0   140
#> [148,]  55   5      0          5        1   131
#> [149,]  54   7      1          0        1   141
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  55   5      1          0        0   140
#> [153,]  56   7      1          5        1   120
#> [154,]  59   9      1          1        1   125
#> [155,]  60  11      1          9        0   106
#> [156,]  59   3      0        180        0   120
#> [157,]  60   5      1          1        0   138
#> [158,]  55   5      1          0        1   160
#> [159,]  58   4      1          3        0   120
#> [160,]  60   0      1          0        1    80
#> [161,]  59   2      1          1        0   140
#> [162,]  58   8      0        161        1   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   9      1          8        0   150
#> [165,]  57  13      1         10        0   110
#> [166,]  57   2      1          0        1   116
#> [167,]  57   4      1          3        0   138
#> [168,]  57  11      0        180        1   150
#> [169,]  61   3      0         17        0   143
#> [170,]  58  19      1         13        1   140
#> [171,]  56  13      1          6        1   158
#> [172,]  56  18      1         11        1   165
#> [173,]  55   4      1          3        1   160
#> [174,]  58  11      0        172        1   135
#> [175,]  60  12      1          0        1   114
#> [176,]  55   9      1          7        1   135
#> [177,]  61   4      1          0        1   115
#> [178,]  61  13      1         12        1   130
#> [179,]  59  11      1          8        1   190
#> [180,]  59   5      1          2        0   182
#> [181,]  58   5      1          1        1   135
#> [182,]  61   8      0         77        0   120
#> [183,]  58   8      1          5        0   152
#> [184,]  62  10      1          0        1   153
#> [185,]  62   7      1          2        1   180
#> [186,]  61  18      0        170        0   140
#> [187,]  61  28      1          7        0   133
#> [188,]  57   7      0        169        0   180
#> [189,]  61   7      0          7        1   150
#> [190,]  60   7      0          7        0   147
#> [191,]  61   6      0          6        0   134
#> [192,]  59  13      1          2        0   198
#> [193,]  58   3      1          0        1   146
#> [194,]  62   4      1          3        0   173
#> [195,]  58   2      0         30        0   202
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
#> [206,]  62   1      1          0        1   172
#> [207,]  63   3      1          1        0   180
#> [208,]  63   1      0        180        1   130
#> [209,]  61   7      0        180        0   135
#> [210,]  62   3      0        180        1   105
#> [211,]  60  18      1         13        0   132
#> [212,]  59   8      0        180        1   140
#> [213,]  61   9      1          9        1   150
#> [214,]  62   7      0          7        0   150
#> [215,]  59   1      0         22        1   162
#> [216,]  58   2      0        180        0   127
#> [217,]  59   4      0        180        0   196
#> [218,]  60   7      1          5        1   141
#> [219,]  60   7      0          7        0   140
#> [220,]  63   1      0          1        0   130
#> [221,]  61  15      1         13        0   170
#> [222,]  59   4      0          4        0   149
#> [223,]  62   6      0          6        0   120
#> [224,]  63  12      1         10        0   200
#> [225,]  59  10      0        180        1   130
#> [226,]  61   6      1          1        1   117
#> [227,]  64  12      1         11        0   160
#> [228,]  64   6      1          0        1   140
#> [229,]  65  36      1         11        0   140
#> [230,]  63   4      1          3        0   162
#> [231,]  61  10      1          2        1   194
#> [232,]  64  32      1          9        1   160
#> [233,]  63  12      1          9        0   114
#> [234,]  63   7      0        180        0   120
#> [235,]  66   5      1          0        1   110
#> [236,]  65   8      1          0        0   168
#> [237,]  65  10      1          8        1   120
#> [238,]  64   0      0          0        1    90
#> [239,]  61  12      1         11        0   154
#> [240,]  64   9      0        180        0   150
#> [241,]  65   3      0        180        1   190
#> [242,]  64   7      0        180        1   120
#> [243,]  66   6      1          1        1   130
#> [244,]  63  12      0         12        1   150
#> [245,]  62   3      1          1        1   199
#> [246,]  65   6      0          9        0   112
#> [247,]  65   3      1          0        1    80
#> [248,]  63   5      1          4        0   170
#> [249,]  66  18      1          5        0   142
#> [250,]  66  16      1         11        1   169
#> [251,]  62   9      0        180        0   145
#> [252,]  61  14      1          5        0   140
#> [253,]  61  15      1         10        0   130
#> [254,]  63   3      1          2        0   120
#> [255,]  63   2      1          0        0   140
#> [256,]  65   8      1          0        1   140
#> [257,]  67   6      0        180        1   170
#> [258,]  65  15      1         11        1   160
#> [259,]  68   5      1          4        1   150
#> [260,]  66   7      1          0        1   115
#> [261,]  65   3      0          3        0   105
#> [262,]  64   0      0          0        1   148
#> [263,]  67   4      1          3        0   130
#> [264,]  66   3      1          0        1   135
#> [265,]  66   6      1          0        1   140
#> [266,]  65   2      1          1        1   170
#> [267,]  64  10      1          9        1   110
#> [268,]  67   8      1          1        1   130
#> [269,]  68   5      0          5        1    90
#> [270,]  63  10      0         16        1   160
#> [271,]  65  17      1         14        1   100
#> [272,]  63   8      1          1        1   162
#> [273,]  65  18      1          3        0   120
#> [274,]  63   1      1          0        1   155
#> [275,]  63  10      0         18        1   130
#> [276,]  67  11      0         11        0   150
#> [277,]  68  11      0        180        0   160
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  65   4      1          2        1   145
#> [283,]  69  12      0         15        1   140
#> [284,]  66  15      1         13        1   160
#> [285,]  63   2      0        180        0   150
#> [286,]  66   9      1          8        0   130
#> [287,]  63   8      0        180        1   120
#> [288,]  68  14      1         13        1   140
#> [289,]  66   3      0          3        1   138
#> [290,]  69   1      1          0        0   170
#> [291,]  67   1      0        180        1   160
#> [292,]  68  10      1         10        1   150
#> [293,]  65   1      1          0        0   133
#> [294,]  67   7      1          4        1   130
#> [295,]  67   2      0        180        0   184
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  66  19      1         12        1   150
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  64   4      0        180        1   140
#> [302,]  67   2      0         18        0   131
#> [303,]  66   7      1          5        1   131
#> [304,]  66   4      0        180        0   177
#> [305,]  68   4      1          0        1   160
#> [306,]  69   4      1          3        1   150
#> [307,]  69  17      1         10        0   140
#> [308,]  64  21      0         21        1   155
#> [309,]  66   6      0        180        0   140
#> [310,]  68  18      1          0        1   160
#> [311,]  65   6      0        101        1   115
#> [312,]  71   3      0          5        0   112
#> [313,]  70   7      1          0        1   190
#> [314,]  67   2      0        180        0   128
#> [315,]  66   1      1          1        1   165
#> [316,]  70   4      1          0        1   180
#> [317,]  69   8      0        180        1   153
#> [318,]  68  18      1         14        1   170
#> [319,]  69   0      0          0        1   148
#> [320,]  65   2      0        180        0   130
#> [321,]  68   7      1          0        1   150
#> [322,]  69   8      0        180        1   180
#> [323,]  71   7      0          7        0   230
#> [324,]  71   6      0         45        1   158
#> [325,]  69   5      0          5        1   142
#> [326,]  68   6      0        180        0   145
#> [327,]  69   8      1          5        1   195
#> [328,]  69   6      1          4        1   174
#> [329,]  72   7      0          7        1   110
#> [330,]  67   3      0        180        0   110
#> [331,]  66   2      1          1        0   123
#> [332,]  69  19      0        180        0   130
#> [333,]  67  14      0        172        1   140
#> [334,]  69  11      1          0        1   120
#> [335,]  66   2      0        180        0   130
#> [336,]  69   4      1          3        0   132
#> [337,]  68   2      0          7        1   130
#> [338,]  69   8      1          2        0   121
#> [339,]  67  13      1          9        0   130
#> [340,]  70   3      0        123        0   130
#> [341,]  70   9      0        180        1   142
#> [342,]  72   5      1          4        0   170
#> [343,]  67  22      1          1        1   140
#> [344,]  68   3      0         19        0   135
#> [345,]  67  12      1          8        0   120
#> [346,]  69   1      0          1        1   110
#> [347,]  67   4      0         60        1   136
#> [348,]  67   8      1          0        1   130
#> [349,]  72  13      1         11        1   195
#> [350,]  68  10      1          8        1   160
#> [351,]  66  24      1         13        0   130
#> [352,]  68   7      1          2        0   135
#> [353,]  71   6      0          9        0   120
#> [354,]  72  19      1          8        0   120
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   9      0        180        0   158
#> [358,]  73  13      0        152        1   130
#> [359,]  70   5      0        180        0   150
#> [360,]  72   2      0          2        1   100
#> [361,]  67   4      1          1        0   134
#> [362,]  71   1      0        173        1   188
#> [363,]  68  23      0        180        1   220
#> [364,]  70   3      0        180        0   121
#> [365,]  69   3      0        180        0   220
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  72   5      0         28        0   120
#> [369,]  71   5      0        180        0   191
#> [370,]  68   7      0        180        1   130
#> [371,]  72  16      1          1        1   130
#> [372,]  69   1      1          0        0   155
#> [373,]  71   2      1          0        1   180
#> [374,]  73   7      0          7        1   140
#> [375,]  68  15      1         13        1   130
#> [376,]  70  13      1          9        0   100
#> [377,]  72   6      0        180        1   130
#> [378,]  73   0      0        180        1   161
#> [379,]  73   4      0        180        1   154
#> [380,]  69   2      1          0        1   110
#> [381,]  71   3      1          1        0   150
#> [382,]  71  15      1         11        0   165
#> [383,]  74  20      0         20        1   180
#> [384,]  68   9      0        180        1   120
#> [385,]  71  20      1         10        0   140
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   3      1          2        1   190
#> [391,]  73  10      1          8        0   106
#> [392,]  70  26      1         11        1   120
#> [393,]  74   4      0          4        0   120
#> [394,]  73   4      0         58        1   160
#> [395,]  72   5      1          3        1   160
#> [396,]  70   3      0        180        1   154
#> [397,]  73   6      0        180        0   110
#> [398,]  72  15      1          0        1   150
#> [399,]  71   7      1          2        0   143
#> [400,]  73  17      1         11        0   140
#> [401,]  70   4      1          0        1   140
#> [402,]  71  14      1         13        1   170
#> [403,]  74   7      1          0        1   117
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  71  10      1          9        1   120
#> [407,]  75   2      1          1        0   145
#> [408,]  73  10      1          9        1   146
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  74  15      1          9        1   179
#> [412,]  71   2      0         10        1   112
#> [413,]  73   1      0          1        1    80
#> [414,]  75   9      1          7        0   140
#> [415,]  75  13      1          1        1   130
#> [416,]  72  15      1         12        1   120
#> [417,]  73  10      1          8        0   120
#> [418,]  70   7      1          4        0   184
#> [419,]  72   1      1          1        0   168
#> [420,]  73  10      0        180        0   162
#> [421,]  72  11      0         11        1   140
#> [422,]  70   3      0          3        0   150
#> [423,]  76  25      1         12        1   170
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  72   4      1          0        1   197
#> [427,]  71   3      1          0        0   144
#> [428,]  73   5      0        180        0   126
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  72   5      0        180        0   154
#> [432,]  72   3      0        180        0   160
#> [433,]  77   4      0          4        0   185
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   7      0        180        1   150
#> [438,]  74   3      0          3        1   128
#> [439,]  76   1      0        180        0   114
#> [440,]  74   2      1          1        0   140
#> [441,]  74   2      0        180        0   190
#> [442,]  72   4      0         85        1   120
#> [443,]  73   4      1          3        1   125
#> [444,]  75   7      0          7        0   190
#> [445,]  75   0      0          0        1   130
#> [446,]  73  13      1         11        0   195
#> [447,]  75  12      0         12        1   160
#> [448,]  75   4      1          2        1   188
#> [449,]  74   2      0        180        0   111
#> [450,]  73   1      0         52        1   105
#> [451,]  73   0      0        180        0   156
#> [452,]  76  44      1         10        0   105
#> [453,]  76   5      0        180        0   185
#> [454,]  74  10      1          0        1   135
#> [455,]  76   5      1          0        1   167
#> [456,]  74   8      1          8        1   170
#> [457,]  75   9      0        180        1   140
#> [458,]  73  33      1         12        1   175
#> [459,]  77   5      1          0        0   123
#> [460,]  77  12      1          9        1   100
#> [461,]  73  10      1          9        0   146
#> [462,]  77  12      0        180        0   130
#> [463,]  76  12      1         11        1   120
#> [464,]  78   5      1          0        1   170
#> [465,]  73   7      1          0        0   174
#> [466,]  74   2      1          0        1   130
#> [467,]  77   3      0        180        0   110
#> [468,]  76  29      0         47        0    90
#> [469,]  73   8      1          1        1   162
#> [470,]  73  11      1          2        1   110
#> [471,]  74   2      0        180        0   100
#> [472,]  78   7      0          7        1   133
#> [473,]  78   8      1          6        1   110
#> [474,]  74   7      0          7        0   161
#> [475,]  76  13      1          1        1   170
#> [476,]  78  32      1          9        1   198
#> [477,]  79   6      0        180        0   170
#> [478,]  80  10      1          6        1   147
#> [479,]  78   0      0        180        1   212
#> [480,]  75   5      0        119        1   150
#> [481,]  80   8      0          8        1   120
#> [482,]  75  13      1          6        0   150
#> [483,]  74  10      1          8        0   135
#> [484,]  76   1      0          1        1    83
#> [485,]  78  12      1          9        0   150
#> [486,]  75   4      1          0        0   212
#> [487,]  77   2      1          0        1   143
#> [488,]  76  11      1          0        0   120
#> [489,]  75   3      0          3        0     0
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  79   8      0         32        1   120
#> [493,]  78   6      1          0        1   240
#> [494,]  76   3      1          0        1   140
#> [495,]  78  11      1          1        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  76  10      1          8        0   180
#> [501,]  76  12      1         10        1   127
#> [502,]  77   6      0          6        1   107
#> [503,]  75   2      1          1        1   204
#> [504,]  78  11      0        180        1   135
#> [505,]  76   1      0          1        1   140
#> [506,]  77  31      1          3        1   161
#> [507,]  77   7      0        180        1   170
#> [508,]  77   6      0          6        1   144
#> [509,]  79   4      1          0        1   120
#> [510,]  81   1      0        180        0   120
#> [511,]  80  15      1         12        1   150
#> [512,]  77   9      1          4        0   141
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  79  10      0         10        1   120
#> [516,]  81   4      1          2        1   126
#> [517,]  80   9      0        118        1   186
#> [518,]  80   6      0        173        1   160
#> [519,]  78  32      0        180        1   130
#> [520,]  81   3      0        180        0   184
#> [521,]  81   2      0        175        0   172
#> [522,]  78   7      0          7        1   147
#> [523,]  77  13      1          0        1   190
#> [524,]  78  15      0         15        0   165
#> [525,]  80   5      1          1        1   108
#> [526,]  78  26      1          5        0   194
#> [527,]  81   4      1          1        1   104
#> [528,]  78   3      1          1        1   152
#> [529,]  77  10      1          8        1   130
#> [530,]  82   3      1          1        1   144
#> [531,]  80   6      1          0        1   119
#> [532,]  78   2      0        180        0   148
#> [533,]  80   5      0          5        1   130
#> [534,]  82   1      1          0        1    82
#> [535,]  79  10      0        180        1   150
#> [536,]  77   4      0        180        1    98
#> [537,]  81   1      0        108        0   129
#> [538,]  79   1      0        125        0   193
#> [539,]  82  21      1          2        0   155
#> [540,]  79   4      0          4        1   121
#> [541,]  80   6      0          6        1   110
#> [542,]  83   9      1          5        1   170
#> [543,]  82   5      0        180        0   110
#> [544,]  83   5      0        180        0   148
#> [545,]  79   7      1          6        0   130
#> [546,]  83   4      0        103        0    97
#> [547,]  81  11      1          8        0   160
#> [548,]  78  23      1         10        1   145
#> [549,]  79   4      0          4        1   183
#> [550,]  78   9      1          4        1   120
#> [551,]  81  15      0        180        1   140
#> [552,]  84   5      1          1        1    85
#> [553,]  81  20      1          9        0   170
#> [554,]  83   8      0          8        0   115
#> [555,]  80   6      1          0        1   150
#> [556,]  80  11      1          8        0   110
#> [557,]  81   8      0        180        0   146
#> [558,]  83   2      0          2        1   155
#> [559,]  82   6      0        128        1   100
#> [560,]  80   3      1          1        1   230
#> [561,]  82  23      1          0        0   110
#> [562,]  84   4      0          4        1    85
#> [563,]  81   1      0          1        1   150
#> [564,]  81   4      0         90        1   138
#> [565,]  79   9      1          8        0   150
#> [566,]  85   3      1          2        1   160
#> [567,]  80  13      1          8        1   140
#> [568,]  84   4      0         89        1   129
#> [569,]  80   2      1          0        1   130
#> [570,]  80   6      0         71        1   189
#> [571,]  83   1      0          1        1   100
#> [572,]  82  19      0         19        0   120
#> [573,]  83   3      0        114        0    98
#> [574,]  81  14      1         12        1   128
#> [575,]  82   0      0          2        1   100
#> [576,]  85   9      1          6        1   160
#> [577,]  83   1      0        180        0   160
#> [578,]  84  15      1         13        1   110
#> [579,]  81   1      0          1        1   145
#> [580,]  81  12      0         12        1   163
#> [581,]  82  16      1          8        0   103
#> [582,]  81   4      0          4        0   160
#> [583,]  86  12      0        180        1   120
#> [584,]  83  12      1          2        1   170
#> [585,]  81  19      1         14        0   120
#> [586,]  82  15      1          0        0   183
#> [587,]  83   7      0        126        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  86   3      0          3        1   140
#> [591,]  84   3      0        180        1   120
#> [592,]  85   3      0          3        1   118
#> [593,]  81   2      1          0        1   118
#> [594,]  83   9      0        180        1   149
#> [595,]  83   4      0          4        0   130
#> [596,]  87   2      0          5        1   137
#> [597,]  84  16      0         70        1   150
#> [598,]  86   2      0        180        1   169
#> [599,]  88  14      1          3        1   130
#> [600,]  84   3      0          3        1   121
#> [601,]  83  13      1         12        0   170
#> [602,]  84   7      1          2        0   148
#> [603,]  87   2      0        180        0   113
#> [604,]  84   9      0         92        1   110
#> [605,]  84   3      0        180        1   170
#> [606,]  82   4      0          4        0   130
#> [607,]  85   3      0          3        1   113
#> [608,]  86   6      0          6        1   117
#> [609,]  84  13      0         62        1   100
#> [610,]  86   6      1          1        0   112
#> [611,]  88   4      0          4        0   100
#> [612,]  83  20      1          3        1   150
#> [613,]  85  22      0         22        1   184
#> [614,]  86   9      1          7        1   142
#> [615,]  86   6      0         46        0   173
#> [616,]  88   3      0        115        0   110
#> [617,]  88   2      0        180        1    68
#> [618,]  87   8      0          8        1   157
#> [619,]  86  15      1          8        1   109
#> [620,]  88   4      0          4        0    86
#> [621,]  89   4      0          4        1   153
#> [622,]  87   1      0          1        0   170
#> [623,]  84   8      0        180        1   119
#> [624,]  85   8      0          8        1   136
#> [625,]  84   2      0        110        1   174
#> [626,]  84   0      0        180        1   136
#> [627,]  88   1      0          1        0   135
#> [628,]  86   4      0        180        1   145
#> [629,]  91   8      0          8        0   100
#> [630,]  87   2      0        180        0   160
#> [631,]  87   6      1          0        0   125
#> [632,]  91  10      0        145        0   135
#> [633,]  86   3      1          0        1    80
#> [634,]  88   7      0         24        0   119
#> [635,]  88   8      0         50        1   154
#> [636,]  90  11      1         10        1   186
#> [637,]  86  10      0        180        1   137
#> [638,]  86   9      1          7        0   130
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  90   5      1          0        1   125
#> [642,]  89   3      1          1        1   160
#> [643,]  88   5      0        158        0   100
#> [644,]  87   7      0         74        1   105
#> [645,]  89  12      1          0        1   130
#> [646,]  91   5      0        169        1   176
#> [647,]  89  52      0         52        1   130
#> [648,]  92   7      0          7        1   110
#> [649,]  89   4      0          4        1   159
#> [650,]  91   0      0          0        0     0
#> [651,]  89  14      0        180        1    84
#> [652,]  90  18      0        180        0   188
#> [653,]  91   4      1          0        1   120
#> [654,]  90  19      1         11        1   129
#> [655,]  94   6      0         50        0    78
#> [656,]  91   2      0          2        1   116
#> [657,]  93   8      0        179        1   110
#> [658,]  94   8      0          8        1   142
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+
#>  [21]   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [31] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#>  [71] 180.0+   2.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [101]   4.0+  85.0  180.0+ 180.0+ 166.0+ 180.0+  16.0+   7.0+   6.0+ 180.0+
#> [111]  13.0+ 171.0+ 180.0+ 174.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [121] 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 134.0+   2.0  180.0+ 180.0+ 180.0+ 165.0  180.0+ 180.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 171.0+  15.0    5.0+ 180.0+ 180.0+   5.0+ 180.0+   9.0+
#> [151]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [161] 180.0+ 161.0+ 171.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0   19.0 
#> [171] 180.0+ 180.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+ 180.0+
#> [181] 180.0+  77.0    8.0+ 180.0+ 180.0+ 170.0   94.0  169.0    7.0    7.0+
#> [191]   6.0  180.0+   3.0+ 180.0+  30.0  180.0+ 180.0+  28.0   13.0+   5.0 
#> [201]  18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+   7.0+  22.0  180.0+ 180.0+  84.0    7.0+   1.0 
#> [221] 180.0+   4.0+   6.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+  36.0  180.0+
#> [231]  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   0.5   12.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+  18.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0  180.0+ 180.0+   5.0+ 179.0+
#> [261]   3.0    0.5+ 180.0+   3.0+ 180.0+ 175.0+ 180.0+   8.0    5.0   16.0 
#> [271] 180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0   15.0+
#> [281] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0 
#> [291] 180.0+  10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0 
#> [301] 180.0+  18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  21.0+ 180.0+  18.0+
#> [311] 101.0    5.0    7.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [321] 180.0+ 180.0+   7.0+  45.0    5.0+ 180.0+ 180.0+  97.0    7.0  180.0+
#> [331]   2.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0    8.0+  13.0+ 123.0 
#> [341] 180.0+ 180.0+  51.0   19.0  180.0+   1.0   60.0  180.0+ 132.0   10.0+
#> [351] 180.0+   7.0+   9.0  180.0+  12.0  180.0+ 180.0+ 152.0  180.0+   2.0 
#> [361]  76.0  173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [381]   3.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   3.0 
#> [391]  87.0  180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [401] 180.0+  14.0+ 180.0+ 180.0+ 180.0+ 179.0+ 180.0+ 180.0+ 159.0   15.0 
#> [411] 180.0+  10.0    1.0  180.0+  13.0  180.0+  10.0  104.0+   1.0  180.0+
#> [421]  11.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [431] 180.0+ 180.0+   4.0+  15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+
#> [441] 180.0+  85.0  180.0+   7.0    0.5  180.0+  12.0   46.0  180.0+  52.0 
#> [451] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+
#> [461] 180.0+ 180.0+  12.0  180.0+   7.0+ 176.0+ 180.0+  47.0  180.0+  11.0 
#> [471] 180.0+   7.0    8.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+ 119.0 
#> [481]   8.0  180.0+ 180.0+   1.0  180.0+   4.0+   2.0   11.0    3.0   29.0 
#> [491]  24.0   32.0  180.0+   3.0+ 180.0+ 180.0+   1.0   11.0    4.0   10.0+
#> [501] 180.0+   6.0    2.0+ 180.0+   1.0  171.0  180.0+   6.0  138.0  180.0+
#> [511] 180.0+  71.0   40.0   59.0   10.0+  93.0  118.0  173.0  180.0+ 180.0+
#> [521] 175.0+   7.0+  22.0   15.0+   5.0+ 171.0+  71.0    3.0+  10.0  180.0+
#> [531]   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 108.0  125.0  180.0+   4.0 
#> [541]   6.0    9.0+ 180.0+ 180.0+ 180.0+ 103.0  180.0+  70.0    4.0  180.0+
#> [551] 180.0+ 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+   2.0  128.0    3.0+
#> [561]  62.0    4.0    1.0   90.0  180.0+ 180.0+ 180.0+  89.0  180.0+  71.0 
#> [571]   1.0   19.0  114.0  180.0+   2.0  180.0+ 180.0+ 180.0+   1.0   12.0 
#> [581]  16.0+   4.0+ 180.0+  77.0  180.0+  83.0  126.0    8.0  180.0+   3.0 
#> [591] 180.0+   3.0+ 180.0+ 180.0+   4.0+   5.0   70.0  180.0+  14.0    3.0 
#> [601]  13.0  180.0+ 180.0+  92.0  180.0+   4.0    3.0+   6.0+  62.0    6.0+
#> [611]   4.0+  20.0   22.0   11.0   46.0  115.0  180.0+   8.0+ 180.0+   4.0 
#> [621]   4.0    1.0+ 180.0+   8.0  110.0  180.0+   1.0+ 180.0+   8.0  180.0+
#> [631]  25.0  145.0    3.0   24.0   50.0   11.0  180.0+ 180.0+   4.0    1.0 
#> [641]  89.0    3.0+ 158.0   74.0  180.0+ 169.0   52.0    7.0    4.0    0.5 
#> [651] 180.0+ 180.0+   4.0  180.0+  50.0    2.0  179.0+   8.0+ 180.0+  16.0 
#> [661]  67.0   12.0    8.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8147428 
```
