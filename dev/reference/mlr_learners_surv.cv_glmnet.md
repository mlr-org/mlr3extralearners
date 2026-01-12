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
#> min 0.00344    44   2.909 0.1213       6
#> 1se 0.06744    12   3.023 0.1066       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   2      0        180        0   121
#>   [5,]  38   2      0        115        0   150
#>   [6,]  35   0      0        180        1   119
#>   [7,]  38  12      1          8        1   120
#>   [8,]  36   5      1          0        1   115
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  12      1         11        1    92
#>  [11,]  40  12      1          9        0   153
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40   6      0        180        1   138
#>  [16,]  40  11      1         10        1   120
#>  [17,]  42   2      0        180        0   100
#>  [18,]  43   3      1          0        1   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  40   1      1          0        1   145
#>  [21,]  43   4      1          0        1   130
#>  [22,]  42   4      0        180        0   162
#>  [23,]  42  15      1         13        1   125
#>  [24,]  42  12      1         10        1   170
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   6      0        180        1   170
#>  [30,]  43   2      0        180        1   140
#>  [31,]  45   2      0        180        1   140
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  44   3      1          0        1   180
#>  [35,]  46   7      1          2        0   166
#>  [36,]  43  10      0        180        0   185
#>  [37,]  47   6      1          0        1   116
#>  [38,]  46  13      1         10        0   100
#>  [39,]  44   0      1          0        1    96
#>  [40,]  47   4      1          3        1   160
#>  [41,]  43   3      1          0        1   124
#>  [42,]  45   8      1          0        1   117
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  44   2      0        180        0   142
#>  [51,]  46  15      0        180        1   120
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  50   4      1          1        0   125
#>  [58,]  50   6      1          2        1   140
#>  [59,]  49   7      1          7        1   110
#>  [60,]  46   3      1          1        1   140
#>  [61,]  46   9      1          9        1   122
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  47   2      0        180        0   150
#>  [67,]  49  23      0        179        1   112
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   9      0        180        0   130
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  47   6      0        180        1   162
#>  [77,]  51   8      0        180        1   140
#>  [78,]  52   2      0        180        0   155
#>  [79,]  46   3      0        180        1   120
#>  [80,]  46   1      1          1        0   145
#>  [81,]  50   4      1          1        0   150
#>  [82,]  48   7      1          0        1   110
#>  [83,]  53   8      0         36        1   160
#>  [84,]  48  17      1         10        0   111
#>  [85,]  47   2      1          1        0   110
#>  [86,]  49   9      1          3        0   102
#>  [87,]  53   5      0         77        0   159
#>  [88,]  54   6      1          3        0   129
#>  [89,]  53   8      1          7        0   160
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  48   6      0        180        0   160
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  51  13      0         99        1   160
#>  [98,]  54   9      1          0        1   138
#>  [99,]  49  16      0         16        0   125
#> [100,]  54  23      1         10        0   131
#> [101,]  55   6      1          2        1   114
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  50   5      1          4        1   150
#> [107,]  50   3      0        174        1   153
#> [108,]  49   6      1          0        1   130
#> [109,]  49   1      0          1        1   110
#> [110,]  50   7      1          1        0   156
#> [111,]  53   8      1          0        1   130
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   1      0        180        0   127
#> [115,]  55   2      0          2        0   145
#> [116,]  54   7      1          0        1   100
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  52   8      0        180        0   119
#> [121,]  53  18      1          9        1   150
#> [122,]  54   3      0        180        1   180
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  53   4      0        180        1   150
#> [127,]  55   6      1          5        1   138
#> [128,]  55   2      0        134        1   140
#> [129,]  55   1      0          2        0   130
#> [130,]  57   1      0        180        1   156
#> [131,]  57   1      0          1        1   100
#> [132,]  56   4      1          0        1   140
#> [133,]  52   2      0        180        0   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  59   3      1          1        0   172
#> [142,]  57   4      0        180        1   119
#> [143,]  53  15      1         10        1   130
#> [144,]  54  17      1          8        1   227
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  56   5      0          5        1   150
#> [148,]  54  23      1          8        0   120
#> [149,]  57   4      1          2        1   185
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   3      1          2        0   140
#> [154,]  55   5      0          5        1   131
#> [155,]  54   7      1          0        1   141
#> [156,]  56   4      0          4        0   164
#> [157,]  59  15      1         10        0   140
#> [158,]  58   1      1          1        1   200
#> [159,]  55   5      1          0        0   140
#> [160,]  56   7      1          5        1   120
#> [161,]  55   2      0          2        0   106
#> [162,]  59   9      1          1        1   125
#> [163,]  59   3      0        180        0   120
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  57   5      0        180        1   130
#> [167,]  57  10      1          9        0   103
#> [168,]  59   6      1          0        1   140
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  61   9      0          9        1   160
#> [172,]  58   4      1          3        0   120
#> [173,]  60   0      1          0        1    80
#> [174,]  59   2      1          1        0   140
#> [175,]  58  14      1          6        0   190
#> [176,]  61   4      1          3        0   151
#> [177,]  61   9      1          8        0   150
#> [178,]  61   3      1          2        1   102
#> [179,]  58   1      0          1        1   100
#> [180,]  61  20      1         13        0   130
#> [181,]  58  10      0         10        1   150
#> [182,]  57   4      1          3        0   138
#> [183,]  57  11      0        180        1   150
#> [184,]  57   3      1          2        0   120
#> [185,]  58  19      1         13        1   140
#> [186,]  56  13      1          6        1   158
#> [187,]  56  18      1         11        1   165
#> [188,]  59   9      1          0        1    80
#> [189,]  55   4      1          3        1   160
#> [190,]  58  11      0        172        1   135
#> [191,]  60  12      1          0        1   114
#> [192,]  61  13      1         12        1   130
#> [193,]  59  11      1          8        1   190
#> [194,]  57  15      1         13        1   110
#> [195,]  59   5      1          2        0   182
#> [196,]  58   5      1          1        1   135
#> [197,]  61  13      0         13        0   210
#> [198,]  58   8      1          5        0   152
#> [199,]  61  18      0        170        0   140
#> [200,]  61  28      1          7        0   133
#> [201,]  58   8      1          3        1   150
#> [202,]  61   7      0          7        1   150
#> [203,]  60   7      0          7        0   147
#> [204,]  61   6      0          6        0   134
#> [205,]  59  13      1          2        0   198
#> [206,]  62   4      1          0        0   160
#> [207,]  60  17      1          8        1   140
#> [208,]  58   3      1          0        1   146
#> [209,]  62   4      1          3        0   173
#> [210,]  59   1      0        180        0   155
#> [211,]  59  16      1          9        1   133
#> [212,]  61   5      0          5        1   110
#> [213,]  57  18      1          9        1    93
#> [214,]  61   5      0          5        1   160
#> [215,]  57   2      1          1        0   159
#> [216,]  62   1      1          0        1   172
#> [217,]  58   7      0        180        1   150
#> [218,]  63   3      1          1        0   180
#> [219,]  61   7      0        180        0   135
#> [220,]  63   4      1          3        0   222
#> [221,]  64   4      0        180        0   130
#> [222,]  63   4      1          1        0   155
#> [223,]  60  18      1         13        0   132
#> [224,]  59   8      0        180        1   140
#> [225,]  61   9      1          9        1   150
#> [226,]  58   9      1          9        0   110
#> [227,]  59   1      0         22        1   162
#> [228,]  60   7      1          5        1   141
#> [229,]  60   7      0          7        0   140
#> [230,]  59   5      1          1        0   148
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   130
#> [234,]  62   6      0        180        0   170
#> [235,]  59   4      0          4        0   149
#> [236,]  60   3      0          3        0   168
#> [237,]  64  10      1          9        0   160
#> [238,]  63  12      1         10        0   200
#> [239,]  59  10      0        180        1   130
#> [240,]  60   8      0         17        1   130
#> [241,]  61   6      1          1        1   117
#> [242,]  64  12      1         11        0   160
#> [243,]  66   1      1          0        1   120
#> [244,]  64   6      1          0        1   140
#> [245,]  63  14      1          9        0   123
#> [246,]  63   4      1          3        0   162
#> [247,]  66   3      1          1        0   127
#> [248,]  61  10      1          2        1   194
#> [249,]  63  12      1          9        0   114
#> [250,]  60   6      0        180        0   130
#> [251,]  64  21      1         10        0   190
#> [252,]  61  12      1         11        0   154
#> [253,]  64   7      0        180        1   120
#> [254,]  66   6      1          1        1   130
#> [255,]  63  12      0         12        1   150
#> [256,]  62   3      1          1        1   199
#> [257,]  65   6      0          9        0   112
#> [258,]  63   5      1          4        0   170
#> [259,]  63   2      1          1        0   180
#> [260,]  67  11      0         11        1   100
#> [261,]  64   2      0          2        0   201
#> [262,]  66  18      1          5        0   142
#> [263,]  61  14      1          5        0   140
#> [264,]  63   9      1          8        1   160
#> [265,]  64  19      1          8        1   160
#> [266,]  65   8      1          0        1   140
#> [267,]  65  15      1         11        1   160
#> [268,]  68   5      1          4        1   150
#> [269,]  64  13      1         12        1   150
#> [270,]  64   6      1          0        1   125
#> [271,]  66   7      1          0        1   115
#> [272,]  66  13      1          0        0   118
#> [273,]  65   3      0          3        0   105
#> [274,]  64   0      0          0        1   148
#> [275,]  67   4      1          3        0   130
#> [276,]  66   6      1          0        1   140
#> [277,]  65   2      1          1        1   170
#> [278,]  68   1      0        180        1   166
#> [279,]  63   7      1          0        0   162
#> [280,]  67   8      1          1        1   130
#> [281,]  63  10      0         16        1   160
#> [282,]  64   1      0          1        1   120
#> [283,]  68  18      0        180        1   260
#> [284,]  63   8      1          1        1   162
#> [285,]  65  18      1          3        0   120
#> [286,]  63   1      1          0        1   155
#> [287,]  63  10      0         18        1   130
#> [288,]  67  11      0         11        0   150
#> [289,]  68  11      0        180        0   160
#> [290,]  68  14      0         79        0   172
#> [291,]  66  12      1         10        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  69  21      1         10        0   180
#> [297,]  66   9      1          8        0   130
#> [298,]  63   8      0        180        1   120
#> [299,]  68  14      1         13        1   140
#> [300,]  65   8      1          0        1    90
#> [301,]  66   3      0          3        1   138
#> [302,]  68  10      1         10        1   150
#> [303,]  65   1      1          0        0   133
#> [304,]  67   7      1          4        1   130
#> [305,]  67   2      0        180        0   184
#> [306,]  65   6      0          6        0    80
#> [307,]  65  10      1          1        1   148
#> [308,]  67  12      1         12        0   160
#> [309,]  69   6      0         99        1   140
#> [310,]  64   4      0        179        0   160
#> [311,]  66   4      0        180        1   130
#> [312,]  64  11      0         11        0   125
#> [313,]  64   4      0        180        1   140
#> [314,]  64   0      1          0        1   118
#> [315,]  66   7      1          5        1   131
#> [316,]  66   4      0        180        0   177
#> [317,]  68   4      1          0        1   160
#> [318,]  69   8      0         93        0   140
#> [319,]  68  18      1          0        1   160
#> [320,]  65   6      0        101        1   115
#> [321,]  71   3      0          5        0   112
#> [322,]  70   7      1          0        1   190
#> [323,]  68   7      0        150        0   210
#> [324,]  71  20      1          0        1   160
#> [325,]  67   2      0        180        0   128
#> [326,]  66   9      1          3        1   151
#> [327,]  66   1      1          1        1   165
#> [328,]  70   4      1          0        1   180
#> [329,]  70  14      0        171        0   166
#> [330,]  66   4      0        180        0   130
#> [331,]  67  10      1          9        0   200
#> [332,]  67   6      1          4        0   130
#> [333,]  68  18      1         14        1   170
#> [334,]  69   0      0          0        1   148
#> [335,]  68   7      1          0        1   150
#> [336,]  69   3      1          2        0   151
#> [337,]  67  14      1         13        0   130
#> [338,]  65  14      1         13        1   150
#> [339,]  69   8      0        180        1   180
#> [340,]  66   2      0          2        1   228
#> [341,]  71   6      0         45        1   158
#> [342,]  69   5      0          5        1   142
#> [343,]  71   3      0        103        0   133
#> [344,]  69   3      0          3        1   130
#> [345,]  70  22      1         13        0   103
#> [346,]  67   5      0          5        0   130
#> [347,]  69   8      1          5        1   195
#> [348,]  72   7      0          7        1   110
#> [349,]  66   2      1          1        0   123
#> [350,]  68  18      0         18        1   100
#> [351,]  67  14      0        172        1   140
#> [352,]  69  11      1          0        1   120
#> [353,]  66   2      0        180        0   130
#> [354,]  67   7      1          4        0   122
#> [355,]  68   2      0          7        1   130
#> [356,]  67  13      1          9        0   130
#> [357,]  68   3      0         19        0   135
#> [358,]  69   1      0          1        1   110
#> [359,]  67   1      0          1        1    60
#> [360,]  67   4      0         60        1   136
#> [361,]  69   5      0         76        0   120
#> [362,]  72  13      1         11        1   195
#> [363,]  68  10      1          8        1   160
#> [364,]  66  24      1         13        0   130
#> [365,]  72  30      1          0        1   145
#> [366,]  70   7      0          7        0   102
#> [367,]  68   7      1          2        0   135
#> [368,]  71   6      0          9        0   120
#> [369,]  70  11      0        180        1   210
#> [370,]  72  19      1          8        0   120
#> [371,]  72  12      1         10        0   170
#> [372,]  67   8      0        180        1   170
#> [373,]  67   5      1          0        1   147
#> [374,]  73  13      0        152        1   130
#> [375,]  70   5      0        180        0   150
#> [376,]  72   2      0          2        1   100
#> [377,]  67   4      1          1        0   134
#> [378,]  68  23      0        180        1   220
#> [379,]  70   3      0        180        0   121
#> [380,]  69   3      0        180        0   220
#> [381,]  71   3      1          2        0   150
#> [382,]  68   4      1          3        0   210
#> [383,]  71   5      0        180        0   191
#> [384,]  73   6      0        180        1   117
#> [385,]  68   7      0        180        1   130
#> [386,]  70   4      0        180        0   180
#> [387,]  69   1      1          0        0   155
#> [388,]  71   2      1          0        1   180
#> [389,]  73   7      0          7        1   140
#> [390,]  68  15      1         13        1   130
#> [391,]  70   3      0          3        1   159
#> [392,]  73   0      0        180        1   161
#> [393,]  73   4      0        180        1   154
#> [394,]  69   2      1          0        1   110
#> [395,]  71  15      1         11        0   165
#> [396,]  74  20      0         20        1   180
#> [397,]  68   9      0        180        1   120
#> [398,]  71  20      1         10        0   140
#> [399,]  71   8      1          7        0   149
#> [400,]  71   3      1          2        1   190
#> [401,]  73  10      1          8        0   106
#> [402,]  73   4      0         58        1   160
#> [403,]  73   6      0        180        0   110
#> [404,]  71  13      1          8        0   121
#> [405,]  69   2      1          1        1    80
#> [406,]  70   4      1          0        1   140
#> [407,]  71  14      1         13        1   170
#> [408,]  72  10      1          8        1   153
#> [409,]  69   7      0        180        1   144
#> [410,]  72  15      1         13        0   156
#> [411,]  70   8      0          8        0   120
#> [412,]  71  10      1          9        1   120
#> [413,]  75   1      0          1        0   133
#> [414,]  73  10      1          9        1   146
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  74  15      1          9        1   179
#> [418,]  71   2      0         10        1   112
#> [419,]  75   9      1          7        0   140
#> [420,]  71  11      1          8        0   110
#> [421,]  72  15      1         12        1   120
#> [422,]  73  10      1          8        0   120
#> [423,]  70   7      1          4        0   184
#> [424,]  72   7      0         57        1   145
#> [425,]  73  10      0        180        0   162
#> [426,]  73   5      1          3        1   112
#> [427,]  76  25      1         12        1   170
#> [428,]  73  12      1         12        1   140
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  71   3      1          0        0   144
#> [432,]  73   5      0        180        0   126
#> [433,]  73   4      0        180        0   124
#> [434,]  74  34      1          8        1   233
#> [435,]  76   3      1          0        1   120
#> [436,]  71  32      1         12        1   107
#> [437,]  72   5      0        180        0   154
#> [438,]  72   3      0        180        0   160
#> [439,]  76   5      0          5        1   130
#> [440,]  77  11      0         11        1   150
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  71  16      0        180        0   140
#> [444,]  76   1      0        180        0   114
#> [445,]  74   2      1          1        0   140
#> [446,]  73   6      0          6        1   114
#> [447,]  75  23      1         14        1   110
#> [448,]  72   4      0         85        1   120
#> [449,]  76  17      1          0        1   200
#> [450,]  73   4      1          3        1   125
#> [451,]  76  13      1         10        0   110
#> [452,]  75   4      1          0        1   122
#> [453,]  75   7      0          7        0   190
#> [454,]  75   0      0          0        1   130
#> [455,]  73  13      1         11        0   195
#> [456,]  75  12      0         12        1   160
#> [457,]  74   8      1          0        1   105
#> [458,]  76  13      1          8        1   148
#> [459,]  74   6      0        180        0   160
#> [460,]  76   4      0          4        1   155
#> [461,]  74   2      0        180        0   111
#> [462,]  73   1      0         52        1   105
#> [463,]  72   5      0        180        0   120
#> [464,]  78  12      1         11        1   160
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  73  33      1         12        1   175
#> [468,]  77   5      1          0        0   123
#> [469,]  77  12      0        180        0   130
#> [470,]  77   1      1          0        1    90
#> [471,]  74   6      0         79        1   140
#> [472,]  75   3      1          1        1   171
#> [473,]  74   9      1          8        0   200
#> [474,]  75   6      0        180        0   150
#> [475,]  79  10      1          8        0   190
#> [476,]  74   2      1          0        1   130
#> [477,]  78  18      0         18        1   144
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  78   7      0          7        1   133
#> [481,]  78   8      1          6        1   110
#> [482,]  74   7      0          7        0   161
#> [483,]  78  32      1          9        1   198
#> [484,]  80  10      1          6        1   147
#> [485,]  78  13      1          5        0   130
#> [486,]  75   5      0        119        1   150
#> [487,]  78  15      0        180        1   270
#> [488,]  80   8      0          8        1   120
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  79   4      0         80        0   145
#> [492,]  78   2      1          1        0   130
#> [493,]  75   4      1          0        0   212
#> [494,]  77   2      1          0        1   143
#> [495,]  78  10      0        180        1   130
#> [496,]  76  11      1          0        0   120
#> [497,]  75  11      1          4        0   162
#> [498,]  75   3      0          3        0     0
#> [499,]  76   7      0         29        1   150
#> [500,]  79   8      0         32        1   120
#> [501,]  80   6      0          6        1   150
#> [502,]  78   6      1          0        1   240
#> [503,]  79  11      0        180        0   160
#> [504,]  79   2      1          0        1   121
#> [505,]  78  14      1          0        1   140
#> [506,]  81   1      0          1        0   130
#> [507,]  76  10      1          8        0   180
#> [508,]  76  12      1         10        1   127
#> [509,]  77   6      0          6        1   107
#> [510,]  80   3      1          0        1   120
#> [511,]  75   2      1          1        1   204
#> [512,]  76   1      0          1        1   140
#> [513,]  77  31      1          3        1   161
#> [514,]  78   7      1          0        1   110
#> [515,]  79   3      0          3        0   120
#> [516,]  77   7      0        180        1   170
#> [517,]  77   6      0          6        1   144
#> [518,]  79   4      1          0        1   120
#> [519,]  81   1      0        180        0   120
#> [520,]  80  15      1         12        1   150
#> [521,]  77   9      1          4        0   141
#> [522,]  82   5      0          8        1   120
#> [523,]  80  40      1          0        1   138
#> [524,]  80  17      1         12        0   100
#> [525,]  76   7      0        161        0   151
#> [526,]  79  10      0         10        1   120
#> [527,]  81   4      1          2        1   126
#> [528,]  79  28      0        164        0   100
#> [529,]  80   9      0        118        1   186
#> [530,]  80   6      0        173        1   160
#> [531,]  81   2      0        175        0   172
#> [532,]  78   7      0          7        1   147
#> [533,]  80   5      1          1        1   108
#> [534,]  79   3      0          3        1   101
#> [535,]  78  26      1          5        0   194
#> [536,]  76   1      0        166        0   131
#> [537,]  78   3      1          1        1   152
#> [538,]  79   6      0          6        0   152
#> [539,]  80   6      1          0        1   119
#> [540,]  78   2      0        180        0   148
#> [541,]  82   1      1          0        1    82
#> [542,]  79  10      0        180        1   150
#> [543,]  81   1      0        108        0   129
#> [544,]  78  12      0        180        0   134
#> [545,]  79   1      0        125        0   193
#> [546,]  84  22      1         10        0   180
#> [547,]  79   7      1          6        0   130
#> [548,]  83   4      0        103        0    97
#> [549,]  80  11      1          8        0   170
#> [550,]  78  23      1         10        1   145
#> [551,]  79   4      0          4        1   183
#> [552,]  78   9      1          4        1   120
#> [553,]  82   8      1          1        0   128
#> [554,]  81  15      0        180        1   140
#> [555,]  80   7      1          0        1   146
#> [556,]  84   5      1          1        1    85
#> [557,]  81  20      1          9        0   170
#> [558,]  81  16      0         16        1   110
#> [559,]  80   6      1          0        1   150
#> [560,]  81   8      0        180        0   146
#> [561,]  79   7      0        177        0   197
#> [562,]  79   0      1          0        1    96
#> [563,]  85   4      0        180        0    90
#> [564,]  81   2      1          1        0   198
#> [565,]  83   2      0          2        1   155
#> [566,]  82   6      0        128        1   100
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  84   1      0         38        1   205
#> [573,]  83   3      0        180        0   174
#> [574,]  81   4      0         90        1   138
#> [575,]  79   9      1          8        0   150
#> [576,]  85   3      1          2        1   160
#> [577,]  80  13      1          8        1   140
#> [578,]  84   4      0         89        1   129
#> [579,]  80   2      1          0        1   130
#> [580,]  79   4      0          4        1    60
#> [581,]  83   1      0          1        1   100
#> [582,]  80  30      1         13        0   220
#> [583,]  83   9      0        180        0   198
#> [584,]  79  14      1          0        0   110
#> [585,]  83   3      0        114        0    98
#> [586,]  81  14      1         12        1   128
#> [587,]  83   2      0        154        0   130
#> [588,]  85   9      1          6        1   160
#> [589,]  81   4      0          4        0   175
#> [590,]  84  15      1         13        1   110
#> [591,]  82  16      1          8        0   103
#> [592,]  82   5      1          0        1   146
#> [593,]  81   4      0          4        0   160
#> [594,]  86  12      0        180        1   120
#> [595,]  83  12      1          2        1   170
#> [596,]  81  19      1         14        0   120
#> [597,]  82  15      1          0        0   183
#> [598,]  81  16      1          9        0   180
#> [599,]  84   6      0        165        0   145
#> [600,]  86   3      0          3        1   140
#> [601,]  82   9      0        180        1   134
#> [602,]  84   3      0        180        1   120
#> [603,]  81  13      0        180        0   152
#> [604,]  85   3      0          3        1   118
#> [605,]  81   4      0        180        0   160
#> [606,]  83   9      0        180        1   149
#> [607,]  82   1      0        180        1   193
#> [608,]  87   2      0          5        1   137
#> [609,]  86  12      1          0        1   132
#> [610,]  82  14      1         11        1   103
#> [611,]  86   2      0        180        1   169
#> [612,]  88  14      1          3        1   130
#> [613,]  83  13      1         12        0   170
#> [614,]  84   7      1          2        0   148
#> [615,]  84   9      0         92        1   110
#> [616,]  84   3      0        180        1   170
#> [617,]  82   4      0          4        0   130
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  88   4      0          4        0   100
#> [621,]  83  20      1          3        1   150
#> [622,]  85  22      0         22        1   184
#> [623,]  83   9      0         65        1   150
#> [624,]  88   3      0        115        0   110
#> [625,]  88   2      0        180        1    68
#> [626,]  87   8      0          8        1   157
#> [627,]  86  15      1          8        1   109
#> [628,]  88   4      0          4        0    86
#> [629,]  89   5      0        119        1   140
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  90  14      0         14        1   100
#> [638,]  88   1      0          1        0   135
#> [639,]  86   4      0        180        1   145
#> [640,]  91  10      0        145        0   135
#> [641,]  90  11      1         10        1   186
#> [642,]  86   9      1          7        0   130
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  89   3      1          1        1   160
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  89   2      0        168        0   118
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  91   1      0        180        0   158
#> [664,]  90  16      0         16        1   106
#> [665,]  90   3      0         67        0   162
#> [666,]  96   3      0         12        1    97
#> [667,]  95   8      1          5        1   150
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+ 115.0  180.0+  12.0    5.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#>  [61] 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 152.0+
#> [101]   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 174.0+   6.0+   1.0  180.0+
#> [111] 180.0+ 180.0+ 175.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+ 134.0+   2.0  180.0+
#> [131]   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+
#> [151] 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+ 180.0+   1.0  180.0+ 180.0+
#> [161]   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+
#> [171]   9.0+ 180.0+   0.5  180.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+
#> [181]  10.0+ 180.0+ 180.0+   3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+
#> [191] 172.0+ 180.0+ 180.0+  15.0  180.0+ 180.0+  13.0+   8.0+ 170.0   94.0 
#> [201] 180.0+   7.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+
#> [211] 180.0+   5.0   18.0    5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   4.0+ 180.0+ 180.0+ 180.0+   9.0   22.0   84.0    7.0+ 180.0+
#> [231] 180.0+ 180.0+   1.0  180.0+   4.0+   3.0+ 167.0  180.0+ 180.0+  17.0 
#> [241] 180.0+  12.0  180.0+ 180.0+  14.0+ 180.0+   3.0+  88.0   12.0  180.0+
#> [251] 180.0+  12.0+ 180.0+ 180.0+  12.0  180.0+   9.0  180.0+ 180.0+  11.0+
#> [261]   2.0+  18.0+ 180.0+ 180.0+ 103.0   15.0  180.0+   5.0+  13.0  180.0+
#> [271] 179.0+ 166.0+   3.0    0.5+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+   8.0 
#> [281]  16.0    1.0  180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0 
#> [291]  80.0  180.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [301]   3.0   10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  12.0   99.0  179.0+
#> [311] 180.0+  11.0+ 180.0+   0.5    7.0+ 180.0+ 180.0+  93.0   18.0+ 101.0 
#> [321]   5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+
#> [331] 174.0+   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+ 180.0+   2.0 
#> [341]  45.0    5.0+ 103.0    3.0+ 180.0+   5.0+ 180.0+   7.0    2.0+  18.0 
#> [351] 172.0+ 180.0+ 180.0+   7.0    7.0   13.0+  19.0    1.0    1.0   60.0 
#> [361]  76.0  132.0   10.0+ 180.0+ 162.0    7.0+   7.0+   9.0  180.0+ 180.0+
#> [371]  12.0  180.0+ 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  15.0 
#> [391]   3.0+ 180.0+ 180.0+   2.0  180.0+  20.0  180.0+  20.0    8.0    3.0 
#> [401]  87.0   58.0  180.0+ 175.0    2.0  180.0+  14.0+  10.0+ 180.0+ 180.0+
#> [411]   8.0+ 179.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0  180.0+ 180.0+
#> [421] 180.0+  10.0  104.0+  57.0  180.0+   5.0  180.0+  12.0  180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+
#> [441] 180.0+   7.0  180.0+ 180.0+ 180.0+   6.0  180.0+  85.0   17.0+ 180.0+
#> [451] 174.0+   4.0    7.0    0.5  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0 
#> [461] 180.0+  52.0  180.0+  12.0    8.0  180.0+  33.0    5.0  180.0+   1.0 
#> [471]  79.0    3.0  168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+  11.0    7.0 
#> [481]   8.0+   7.0   32.0   10.0  172.0  119.0  180.0+   8.0  180.0+ 180.0+
#> [491]  80.0  180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0   29.0   32.0 
#> [501]   6.0  180.0+ 180.0+ 180.0+ 180.0+   1.0   10.0+ 180.0+   6.0    3.0+
#> [511]   2.0+   1.0  171.0   43.0    3.0  180.0+   6.0  138.0  180.0+ 180.0+
#> [521]  71.0    8.0   40.0   17.0  161.0   10.0+  93.0  164.0  118.0  173.0 
#> [531] 175.0+   7.0+   5.0+   3.0  171.0+ 166.0+   3.0+   6.0+   6.0  180.0+
#> [541]   1.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+ 103.0  169.0   70.0 
#> [551]   4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0  180.0+ 180.0+
#> [561] 177.0+   0.5  180.0+ 180.0+   2.0  128.0  167.0    3.0+ 180.0+   4.0 
#> [571]   1.0   38.0  180.0+  90.0  180.0+ 180.0+ 180.0+  89.0  180.0+   4.0 
#> [581]   1.0   30.0  180.0+ 180.0+ 114.0  180.0+ 154.0  180.0+   4.0+ 180.0+
#> [591]  16.0+   5.0+   4.0+ 180.0+  77.0  180.0+  83.0  180.0+ 165.0    3.0 
#> [601] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0 
#> [611] 180.0+  14.0   13.0  180.0+  92.0  180.0+   4.0    6.0+  62.0    4.0+
#> [621]  20.0   22.0   65.0  115.0  180.0+   8.0+ 180.0+   4.0  119.0    1.0+
#> [631] 180.0+   8.0  110.0   29.0  180.0+  46.0   14.0    1.0+ 180.0+ 145.0 
#> [641]  11.0  180.0+   4.0    1.0  178.0+  36.0   89.0    3.0+   1.0   33.0 
#> [651] 168.0   52.0    7.0    4.0    0.5  180.0+ 180.0+ 180.0+  50.0  179.0+
#> [661]   8.0+  76.0  180.0+  16.0   67.0   12.0    8.0   69.0  180.0+   3.0 
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
#>   0.8605377 
```
