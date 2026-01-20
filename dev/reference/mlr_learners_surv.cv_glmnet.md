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
#>      Lambda Index Measure      SE Nonzero
#> min 0.00298    44   2.691 0.08558       6
#> 1se 0.05335    13   2.776 0.07636       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  36   5      1          0        1   115
#>  [15,]  33   6      1          1        1   115
#>  [16,]  38  16      1         10        0   160
#>  [17,]  40   2      1          1        1   148
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  40   1      1          0        1   145
#>  [26,]  43   4      1          0        1   130
#>  [27,]  42   4      0        180        0   162
#>  [28,]  42  15      1         13        1   125
#>  [29,]  40   3      1          1        0   170
#>  [30,]  42  12      1         10        1   170
#>  [31,]  43   2      1          1        1   116
#>  [32,]  42   2      0        180        1   124
#>  [33,]  44   5      1          1        0   170
#>  [34,]  45   3      0        180        1   154
#>  [35,]  41  10      1          8        0   150
#>  [36,]  44   3      0        180        0   141
#>  [37,]  41  13      1          1        0   140
#>  [38,]  45   6      0        180        1   170
#>  [39,]  41   5      1          4        1   141
#>  [40,]  44   2      1          1        1   150
#>  [41,]  43   2      0        180        1   140
#>  [42,]  45   2      0        180        1   140
#>  [43,]  46   2      1          1        0   126
#>  [44,]  47   4      1          3        0   118
#>  [45,]  44   3      1          0        1   180
#>  [46,]  46   7      1          2        0   166
#>  [47,]  43  29      0        180        1   180
#>  [48,]  45   4      1          0        0   124
#>  [49,]  46  13      1         10        0   100
#>  [50,]  47   4      1          3        1   160
#>  [51,]  43   3      1          0        1   124
#>  [52,]  45   5      0          5        0   141
#>  [53,]  46   6      1          0        1   100
#>  [54,]  44   4      1          0        1   114
#>  [55,]  47   2      0        180        0   108
#>  [56,]  45   5      0        180        1   190
#>  [57,]  46   5      1          3        0   130
#>  [58,]  46   4      0        180        1   121
#>  [59,]  44   2      0        180        0   142
#>  [60,]  46  15      0        180        1   120
#>  [61,]  45   9      1          0        1   145
#>  [62,]  47   3      1          1        1   120
#>  [63,]  48   3      0        180        0   154
#>  [64,]  48  12      1         11        0   200
#>  [65,]  47   5      1          3        1   130
#>  [66,]  47  10      0         10        1   140
#>  [67,]  50   1      1          0        1   129
#>  [68,]  48   2      1          0        0   184
#>  [69,]  50   4      1          1        0   125
#>  [70,]  50   6      1          2        1   140
#>  [71,]  49   7      1          7        1   110
#>  [72,]  46   3      1          1        1   140
#>  [73,]  46   9      1          9        1   122
#>  [74,]  49   2      0          2        0   105
#>  [75,]  51   1      0          1        1   145
#>  [76,]  49  15      1         11        1   160
#>  [77,]  47   2      0        180        0   150
#>  [78,]  49  23      0        179        1   112
#>  [79,]  52   2      0        180        1   170
#>  [80,]  50   7      1          0        1    92
#>  [81,]  50   4      0          4        1   100
#>  [82,]  51   3      1          2        0   113
#>  [83,]  50   1      1          0        0   150
#>  [84,]  50   9      0        180        0   130
#>  [85,]  49   7      1          4        1    90
#>  [86,]  51   8      0        180        1   140
#>  [87,]  46   3      0        180        1   120
#>  [88,]  46   1      1          1        0   145
#>  [89,]  50   4      1          1        0   150
#>  [90,]  48   7      1          0        1   110
#>  [91,]  53   8      0         36        1   160
#>  [92,]  48  17      1         10        0   111
#>  [93,]  52   4      1          4        0   152
#>  [94,]  49   9      1          3        0   102
#>  [95,]  49  15      0        180        1   160
#>  [96,]  54  17      1         12        1   102
#>  [97,]  51   3      1          1        0   140
#>  [98,]  50  14      1         13        0   170
#>  [99,]  48   3      1          2        0   150
#> [100,]  53   4      0          4        0   140
#> [101,]  52  14      1          7        1   200
#> [102,]  48   6      0        180        0   160
#> [103,]  48  11      1         10        0   120
#> [104,]  53   4      1          0        1   156
#> [105,]  54   9      1          0        1   138
#> [106,]  55   6      1          2        1   114
#> [107,]  55   4      1          2        0   150
#> [108,]  52   4      0        180        1   180
#> [109,]  51  13      1         11        0   145
#> [110,]  52   4      0        180        0   183
#> [111,]  49   6      1          0        1   130
#> [112,]  49   1      0          1        1   110
#> [113,]  53   9      0          9        1    95
#> [114,]  56   4      1          1        1   130
#> [115,]  55   1      0        180        0   127
#> [116,]  55   2      0          2        0   145
#> [117,]  54   1      0        180        0   162
#> [118,]  56   3      0        180        1   193
#> [119,]  56   2      0        180        0   132
#> [120,]  52   8      0        180        0   119
#> [121,]  55   6      0        180        0   170
#> [122,]  53  15      0         15        1    90
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  54  12      1          0        1   190
#> [127,]  55   2      0        134        1   140
#> [128,]  54   3      0        180        0   128
#> [129,]  56   3      0          8        1   139
#> [130,]  55   1      0          2        0   130
#> [131,]  54   7      1          2        0   129
#> [132,]  54   2      1          1        0   135
#> [133,]  52   9      1          3        0   170
#> [134,]  54   2      1          1        1   176
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0        180        1   156
#> [137,]  57   1      0          1        1   100
#> [138,]  52   2      0        180        0   140
#> [139,]  55  11      1          7        0   104
#> [140,]  54   5      0        180        1   108
#> [141,]  55   3      1          1        1   156
#> [142,]  53  21      1         13        1   130
#> [143,]  59   3      1          1        0   172
#> [144,]  57   4      0        180        1   119
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  57   4      1          2        1   185
#> [148,]  53   7      1          0        1   120
#> [149,]  55   5      0          5        1   131
#> [150,]  54   7      1          0        1   141
#> [151,]  56   4      0          4        0   164
#> [152,]  59  15      1         10        0   140
#> [153,]  58   9      1          0        1   180
#> [154,]  55   5      1          0        0   140
#> [155,]  56   7      1          5        1   120
#> [156,]  55   2      0          2        0   106
#> [157,]  59   9      1          1        1   125
#> [158,]  59   3      0        180        0   120
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  57   5      0        180        1   130
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   5      0        180        1   155
#> [166,]  58  26      1          0        1   189
#> [167,]  61   9      0          9        1   160
#> [168,]  60   0      1          0        1    80
#> [169,]  58   8      0        161        1   140
#> [170,]  58   1      0          1        1   100
#> [171,]  57  13      1         10        0   110
#> [172,]  57   2      1          0        1   116
#> [173,]  58  10      0         10        1   150
#> [174,]  61   3      0         17        0   143
#> [175,]  56  14      0         45        0   130
#> [176,]  56  13      1          6        1   158
#> [177,]  59   9      1          0        1    80
#> [178,]  60  12      1          0        1   114
#> [179,]  55   9      1          7        1   135
#> [180,]  61   4      1          0        1   115
#> [181,]  56   8      1          8        0   120
#> [182,]  59  11      1          8        1   190
#> [183,]  57   1      0          1        0   126
#> [184,]  58   5      1          1        1   135
#> [185,]  61  13      0         13        0   210
#> [186,]  58   8      1          5        0   152
#> [187,]  62  10      1          0        1   153
#> [188,]  62   7      1          2        1   180
#> [189,]  61  18      0        170        0   140
#> [190,]  61  28      1          7        0   133
#> [191,]  58   8      1          3        1   150
#> [192,]  61   7      0          7        1   150
#> [193,]  61   6      0          6        0   134
#> [194,]  57  12      1          9        1   120
#> [195,]  60  17      1          8        1   140
#> [196,]  59   1      0        180        0   155
#> [197,]  63   6      0         28        1   120
#> [198,]  61  13      0         13        0   120
#> [199,]  61   5      0          5        1   110
#> [200,]  57  18      1          9        1    93
#> [201,]  58  11      1          9        0   179
#> [202,]  57   2      1          1        0   159
#> [203,]  62  17      1         10        1   180
#> [204,]  62   1      1          0        1   172
#> [205,]  61   7      0        180        0   135
#> [206,]  63   4      1          3        0   222
#> [207,]  62   3      0        180        1   105
#> [208,]  63   4      0        180        1   190
#> [209,]  64   4      0        180        0   130
#> [210,]  63   4      1          1        0   155
#> [211,]  60  18      1         13        0   132
#> [212,]  61   9      1          9        1   150
#> [213,]  58   9      1          9        0   110
#> [214,]  62   7      0          7        0   150
#> [215,]  59   4      0        180        0   196
#> [216,]  60   7      0          7        0   140
#> [217,]  60   7      1          1        1    90
#> [218,]  65  13      0        180        1   100
#> [219,]  63   1      0          1        0   130
#> [220,]  61  15      1         13        0   170
#> [221,]  64  10      1          9        0   160
#> [222,]  62   6      0          6        0   120
#> [223,]  63  12      1         10        0   200
#> [224,]  59  10      0        180        1   130
#> [225,]  66   1      1          0        1   120
#> [226,]  64   6      1          0        1   140
#> [227,]  63  14      1          9        0   123
#> [228,]  65  36      1         11        0   140
#> [229,]  63   4      1          3        0   162
#> [230,]  66   3      1          1        0   127
#> [231,]  61  10      1          2        1   194
#> [232,]  64  32      1          9        1   160
#> [233,]  63  12      1          9        0   114
#> [234,]  64   0      0          0        1    90
#> [235,]  60   6      0        180        0   130
#> [236,]  61  12      1         11        0   154
#> [237,]  65   3      0        180        1   190
#> [238,]  63  16      1          7        1   110
#> [239,]  66   6      1          1        1   130
#> [240,]  63  12      0         12        1   150
#> [241,]  62   3      1          1        1   199
#> [242,]  65   3      1          0        1    80
#> [243,]  63   2      1          1        0   180
#> [244,]  67  11      0         11        1   100
#> [245,]  66  18      1          5        0   142
#> [246,]  66  16      1         11        1   169
#> [247,]  61  14      1          5        0   140
#> [248,]  61  15      1         10        0   130
#> [249,]  63   3      1          2        0   120
#> [250,]  63   2      1          0        0   140
#> [251,]  64  19      1          8        1   160
#> [252,]  65   8      1          0        1   140
#> [253,]  67   6      0        180        1   170
#> [254,]  65  15      1         11        1   160
#> [255,]  64  13      1         12        1   150
#> [256,]  64   6      1          0        1   125
#> [257,]  66   7      1          0        1   115
#> [258,]  66  13      1          0        0   118
#> [259,]  64  14      1         13        1   150
#> [260,]  64   0      0          0        1   148
#> [261,]  66   3      1          0        1   135
#> [262,]  66   6      1          0        1   140
#> [263,]  65   2      1          1        1   170
#> [264,]  64  10      1          9        1   110
#> [265,]  63   7      1          0        0   162
#> [266,]  67   8      1          1        1   130
#> [267,]  63  10      0         16        1   160
#> [268,]  66  14      0        180        0   130
#> [269,]  68  18      0        180        1   260
#> [270,]  65  17      1         14        1   100
#> [271,]  63   1      1          0        1   155
#> [272,]  67  11      0         11        0   150
#> [273,]  68  11      0        180        0   160
#> [274,]  68  14      0         79        0   172
#> [275,]  66  12      1         10        1   150
#> [276,]  65  15      1         12        1   150
#> [277,]  65   4      1          2        1   145
#> [278,]  66  15      1         13        1   160
#> [279,]  63   2      0        180        0   150
#> [280,]  65  11      1          6        0   130
#> [281,]  69  21      1         10        0   180
#> [282,]  66   9      1          8        0   130
#> [283,]  63   8      0        180        1   120
#> [284,]  68  14      1         13        1   140
#> [285,]  66   3      0          3        1   138
#> [286,]  69   1      1          0        0   170
#> [287,]  67   1      0        180        1   160
#> [288,]  68  10      1         10        1   150
#> [289,]  65   1      1          0        0   133
#> [290,]  63   2      1          0        0    99
#> [291,]  67   2      0        180        0   184
#> [292,]  65   6      0          6        0    80
#> [293,]  67  12      1         12        0   160
#> [294,]  64   4      0        179        0   160
#> [295,]  66   4      0        180        1   130
#> [296,]  70  15      1         12        1   132
#> [297,]  64  11      0         11        0   125
#> [298,]  64   4      0        180        1   140
#> [299,]  64   0      1          0        1   118
#> [300,]  67   2      0         18        0   131
#> [301,]  68   4      1          0        1   160
#> [302,]  69   4      1          3        1   150
#> [303,]  65  13      1         12        1   130
#> [304,]  69   8      0         93        0   140
#> [305,]  64  21      0         21        1   155
#> [306,]  66   6      0        180        0   140
#> [307,]  65   1      0          1        1   120
#> [308,]  68  18      1          0        1   160
#> [309,]  68   4      0          4        1   190
#> [310,]  71   3      0          5        0   112
#> [311,]  68   7      0        150        0   210
#> [312,]  71  20      1          0        1   160
#> [313,]  67   2      0        180        0   128
#> [314,]  70   4      1          0        1   180
#> [315,]  70  14      0        171        0   166
#> [316,]  66   4      0        180        0   130
#> [317,]  67  10      1          9        0   200
#> [318,]  68  18      1         14        1   170
#> [319,]  65   2      0        180        0   130
#> [320,]  68   7      1          0        1   150
#> [321,]  67  14      1         13        0   130
#> [322,]  65  14      1         13        1   150
#> [323,]  69   8      0        180        1   180
#> [324,]  71   6      0         45        1   158
#> [325,]  69   5      0          5        1   142
#> [326,]  70  22      1         13        0   103
#> [327,]  67   1      0         36        1   104
#> [328,]  67   5      0          5        0   130
#> [329,]  68   6      0        180        0   145
#> [330,]  72   3      1          0        1   132
#> [331,]  69   8      1          7        1   108
#> [332,]  69  19      0        180        0   130
#> [333,]  68  18      0         18        1   100
#> [334,]  67  14      0        172        1   140
#> [335,]  69  11      1          0        1   120
#> [336,]  67   7      1          4        0   122
#> [337,]  69   4      1          3        0   132
#> [338,]  67  13      1          9        0   130
#> [339,]  70   3      0        123        0   130
#> [340,]  72   5      1          4        0   170
#> [341,]  67  12      1          8        0   120
#> [342,]  69   1      0          1        1   110
#> [343,]  67   1      0          1        1    60
#> [344,]  67   4      0         60        1   136
#> [345,]  72  13      1         11        1   195
#> [346,]  66  24      1         13        0   130
#> [347,]  70  35      1          0        1   105
#> [348,]  72  30      1          0        1   145
#> [349,]  70   7      0          7        0   102
#> [350,]  73  20      1          0        1   170
#> [351,]  71   6      0          9        0   120
#> [352,]  72  19      1          8        0   120
#> [353,]  72  12      1         10        0   170
#> [354,]  67   9      0        180        0   158
#> [355,]  73  13      0        152        1   130
#> [356,]  72   2      0          2        1   100
#> [357,]  72   6      1          5        0   115
#> [358,]  69   3      0        180        0   220
#> [359,]  71   3      1          2        0   150
#> [360,]  68   4      1          3        0   210
#> [361,]  72   5      0         28        0   120
#> [362,]  71   5      0        180        0   191
#> [363,]  73   6      0        180        1   117
#> [364,]  69  16      1         10        1   140
#> [365,]  69   8      1          1        0   164
#> [366,]  72  16      1          1        1   130
#> [367,]  70   4      0        180        0   180
#> [368,]  73   6      1          0        1   270
#> [369,]  72   8      1          1        1   150
#> [370,]  71   2      1          0        1   180
#> [371,]  73   7      0          7        1   140
#> [372,]  68  15      1         13        1   130
#> [373,]  70   3      0          3        1   159
#> [374,]  70  13      1          9        0   100
#> [375,]  72   6      0        180        1   130
#> [376,]  73   0      0        180        1   161
#> [377,]  73   4      0        180        1   154
#> [378,]  74  20      0         20        1   180
#> [379,]  68   9      0        180        1   120
#> [380,]  71  20      1         10        0   140
#> [381,]  73   3      1          0        1   136
#> [382,]  71  17      1         11        0   160
#> [383,]  71   3      1          2        1   190
#> [384,]  73  10      1          8        0   106
#> [385,]  69  12      1          1        1   149
#> [386,]  74   4      0          4        0   120
#> [387,]  73   4      0         58        1   160
#> [388,]  72   5      1          3        1   160
#> [389,]  73   6      0        180        0   110
#> [390,]  72  15      1          0        1   150
#> [391,]  72   8      1          0        1   140
#> [392,]  74   3      0          3        1   150
#> [393,]  71  13      1          8        0   121
#> [394,]  69   2      1          1        1    80
#> [395,]  70   4      1          0        1   140
#> [396,]  71  14      1         13        1   170
#> [397,]  74   7      1          0        1   117
#> [398,]  72  10      1          8        1   153
#> [399,]  69   7      0        180        1   144
#> [400,]  72  15      1         13        0   156
#> [401,]  70   8      0          8        0   120
#> [402,]  71  10      1          9        1   120
#> [403,]  75   1      0          1        0   133
#> [404,]  75   2      1          1        0   145
#> [405,]  73  10      1          9        1   146
#> [406,]  72  10      1          9        1   160
#> [407,]  74  15      1          9        1   179
#> [408,]  71   2      0         10        1   112
#> [409,]  73   1      0          1        1    80
#> [410,]  75   9      1          7        0   140
#> [411,]  75  13      1          1        1   130
#> [412,]  71  11      1          8        0   110
#> [413,]  72  15      1         12        1   120
#> [414,]  73  10      1          8        0   120
#> [415,]  72   1      1          1        0   168
#> [416,]  72   7      0         57        1   145
#> [417,]  73  10      0        180        0   162
#> [418,]  70   3      0          3        0   150
#> [419,]  73   5      1          3        1   112
#> [420,]  76  25      1         12        1   170
#> [421,]  73  12      1         12        1   140
#> [422,]  72   2      0        180        0   120
#> [423,]  75   1      0        180        1   140
#> [424,]  73   5      0        180        0   126
#> [425,]  73   4      0        180        0   124
#> [426,]  74  34      1          8        1   233
#> [427,]  76   3      1          0        1   120
#> [428,]  72   5      0        180        0   154
#> [429,]  72   3      0        180        0   160
#> [430,]  76   5      0          5        1   130
#> [431,]  77  11      0         11        1   150
#> [432,]  77   4      0          4        0   185
#> [433,]  73  15      0         15        1   160
#> [434,]  71  16      0        180        0   140
#> [435,]  74   7      0        180        1   150
#> [436,]  76   1      0        180        0   114
#> [437,]  74   2      1          1        0   140
#> [438,]  76   8      1          0        1   141
#> [439,]  75  23      1         14        1   110
#> [440,]  72   4      0         85        1   120
#> [441,]  72   4      1          3        0   160
#> [442,]  76  17      1          0        1   200
#> [443,]  76  13      1         10        0   110
#> [444,]  75   7      0          7        0   190
#> [445,]  75   0      0          0        1   130
#> [446,]  73  13      1         11        0   195
#> [447,]  74   8      1          0        1   105
#> [448,]  76  13      1          8        1   148
#> [449,]  74   6      0        180        0   160
#> [450,]  75   1      0          1        1   125
#> [451,]  73   1      0         52        1   105
#> [452,]  73   0      0        180        0   156
#> [453,]  72   5      0        180        0   120
#> [454,]  78  12      1         11        1   160
#> [455,]  76  44      1         10        0   105
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  76   5      1          0        1   167
#> [459,]  74   8      1          8        1   170
#> [460,]  73  33      1         12        1   175
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77  12      0        180        0   130
#> [464,]  77   1      1          0        1    90
#> [465,]  76  12      1         11        1   120
#> [466,]  73   7      1          0        0   174
#> [467,]  74   6      0         79        1   140
#> [468,]  75   3      1          1        1   171
#> [469,]  74   9      1          8        0   200
#> [470,]  75   6      0        180        0   150
#> [471,]  79  10      1          8        0   190
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  78   7      0          7        1   133
#> [477,]  74  15      0        180        1   172
#> [478,]  78   8      1          6        1   110
#> [479,]  76  13      1          1        1   170
#> [480,]  79   6      0        180        0   170
#> [481,]  78   0      0        180        1   212
#> [482,]  78  13      1          5        0   130
#> [483,]  75  12      1          1        1   120
#> [484,]  78  15      0        180        1   270
#> [485,]  74  10      1          8        0   135
#> [486,]  76   1      0          1        1    83
#> [487,]  78   2      1          1        0   130
#> [488,]  75   4      1          0        0   212
#> [489,]  78  10      0        180        1   130
#> [490,]  75  11      1          4        0   162
#> [491,]  75   3      0          3        0     0
#> [492,]  76   7      0         29        1   150
#> [493,]  79   8      0         32        1   120
#> [494,]  80   6      0          6        1   150
#> [495,]  78   6      1          0        1   240
#> [496,]  76   3      1          0        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  81   1      0          1        0   130
#> [501,]  78  11      1          8        1   118
#> [502,]  76   4      0          4        1   160
#> [503,]  79   4      0          4        1   125
#> [504,]  76  10      1          8        0   180
#> [505,]  78  11      0        180        1   135
#> [506,]  76   1      0          1        1   140
#> [507,]  76   1      0          1        1    90
#> [508,]  79   3      0          3        0   120
#> [509,]  77   7      0        180        1   170
#> [510,]  77   6      0          6        1   144
#> [511,]  79   4      1          0        1   120
#> [512,]  81   1      0        180        0   120
#> [513,]  77   9      1          4        0   141
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  81   4      1          2        1   126
#> [519,]  79  28      0        164        0   100
#> [520,]  80   9      0        118        1   186
#> [521,]  80   6      0        173        1   160
#> [522,]  78  32      0        180        1   130
#> [523,]  81   3      0        180        0   184
#> [524,]  81   2      0        175        0   172
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  79   3      0          3        1   101
#> [530,]  78  26      1          5        0   194
#> [531,]  81   4      1          1        1   104
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  77  10      1          8        1   130
#> [535,]  82   3      1          1        1   144
#> [536,]  80   2      1          1        0   168
#> [537,]  79   6      0          6        0   152
#> [538,]  82   1      1          0        1    82
#> [539,]  77   4      0        180        1    98
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  84  22      1         10        0   180
#> [543,]  80   6      0          6        1   110
#> [544,]  82   5      0        180        0   110
#> [545,]  83   5      0        180        0   148
#> [546,]  83   4      0        103        0    97
#> [547,]  81  11      1          8        0   160
#> [548,]  81   5      0        177        0    41
#> [549,]  80  11      1          8        0   170
#> [550,]  79   4      0          4        1   183
#> [551,]  78   9      1          4        1   120
#> [552,]  82   8      1          1        0   128
#> [553,]  81  15      0        180        1   140
#> [554,]  80   7      1          0        1   146
#> [555,]  83   8      0          8        0   115
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  81   2      1          1        0   198
#> [563,]  82   6      0        128        1   100
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  84   4      0          4        1    85
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  79   9      1          8        0   150
#> [572,]  85   3      1          2        1   160
#> [573,]  84   4      0         89        1   129
#> [574,]  80   6      0         71        1   189
#> [575,]  83   1      0          1        1   100
#> [576,]  82  19      0         19        0   120
#> [577,]  83   3      0        114        0    98
#> [578,]  81  14      1         12        1   128
#> [579,]  83   2      0        154        0   130
#> [580,]  83   1      0        180        0   160
#> [581,]  81   4      0          4        0   175
#> [582,]  84  15      1         13        1   110
#> [583,]  81   1      0          1        1   145
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  86  12      0        180        1   120
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  82  15      1          0        0   183
#> [591,]  83   7      0        126        0   135
#> [592,]  81  16      1          9        0   180
#> [593,]  84   6      0        165        0   145
#> [594,]  82   9      0        180        1   134
#> [595,]  81  13      0        180        0   152
#> [596,]  85   3      0          3        1   118
#> [597,]  81   2      1          0        1   118
#> [598,]  81   4      0        180        0   160
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
#> [611,]  83  13      1         12        0   170
#> [612,]  84   7      1          2        0   148
#> [613,]  87   2      0        180        0   113
#> [614,]  86   4      0         38        1   122
#> [615,]  82   4      0          4        0   130
#> [616,]  86  13      0        177        0   163
#> [617,]  85   3      0          3        1   113
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  86   6      1          1        0   112
#> [621,]  88   4      0          4        0   100
#> [622,]  88   4      0          4        1   115
#> [623,]  85  22      0         22        1   184
#> [624,]  83   9      0         65        1   150
#> [625,]  86   9      1          7        1   142
#> [626,]  87   2      0        180        1   130
#> [627,]  86   6      0         46        0   173
#> [628,]  88   2      0        180        1    68
#> [629,]  83   3      0          3        1   130
#> [630,]  87   8      0          8        1   157
#> [631,]  86  15      1          8        1   109
#> [632,]  88   4      0          4        0    86
#> [633,]  87   6      0        180        1   110
#> [634,]  84   8      0        180        1   119
#> [635,]  85   8      0          8        1   136
#> [636,]  87  29      0         29        1    97
#> [637,]  87  15      1          9        1   138
#> [638,]  84   0      0        180        1   136
#> [639,]  89  10      0         46        1   170
#> [640,]  90  14      0         14        1   100
#> [641,]  88   1      0          1        0   135
#> [642,]  86   4      0        180        1   145
#> [643,]  91   8      0          8        0   100
#> [644,]  87   6      1          0        0   125
#> [645,]  88   7      0         24        0   119
#> [646,]  90  11      1         10        1   186
#> [647,]  86  10      0        180        1   137
#> [648,]  86   9      1          7        0   130
#> [649,]  90   4      1          0        0   121
#> [650,]  91   1      0          1        1    74
#> [651,]  87  43      0        178        1   130
#> [652,]  90   5      1          0        1   125
#> [653,]  89   3      1          1        1   160
#> [654,]  88   5      0        158        0   100
#> [655,]  87   7      0         74        1   105
#> [656,]  89  12      1          0        1   130
#> [657,]  89   2      0        168        0   118
#> [658,]  91   5      0        169        1   176
#> [659,]  89  52      0         52        1   130
#> [660,]  89   4      0          4        1   159
#> [661,]  89  14      0        180        1    84
#> [662,]  90  18      0        180        0   188
#> [663,]  90   1      0          1        1   118
#> [664,]  91   2      0          2        1   116
#> [665,]  94   8      0          8        1   142
#> [666,]  90  16      0         16        1   106
#> [667,]  96   3      0         12        1    97
#> [668,]  91   7      0          7        0   135
#> [669,]  92   5      0         69        0   139
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [61] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+
#>  [71]   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [91]  36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [101]  85.0  180.0+ 180.0+ 166.0+ 180.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+
#> [111]   6.0+   1.0    9.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  15.0+ 180.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+   8.0    2.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+  15.0  166.0+   4.0+ 180.0+   5.0+ 180.0+
#> [151]   4.0+ 180.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+   0.5  161.0+   1.0 
#> [171] 180.0+ 180.0+  10.0+  17.0   45.0  180.0+   9.0+ 172.0+  24.0  180.0+
#> [181]   8.0  180.0+   1.0+ 180.0+  13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0 
#> [191] 180.0+   7.0    6.0  180.0+ 180.0+ 180.0+  28.0   13.0+   5.0   18.0 
#> [201] 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [211] 180.0+ 180.0+   9.0    7.0+ 180.0+   7.0+ 180.0+ 180.0+   1.0  180.0+
#> [221] 167.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+  36.0  180.0+   3.0+
#> [231]  88.0  180.0+  12.0    0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0 
#> [241] 180.0+   3.0  180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+
#> [251] 103.0   15.0  180.0+ 180.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+
#> [261]   3.0+ 180.0+ 175.0+ 180.0+   7.0+   8.0   16.0  180.0+ 180.0+ 180.0+
#> [271]   1.0+  11.0+ 180.0+  79.0   80.0   15.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [281] 174.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+
#> [291] 180.0+   6.0   12.0  179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0 
#> [301] 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+   1.0   18.0+   4.0    5.0 
#> [311] 150.0  180.0+ 180.0+ 180.0+ 171.0  180.0+ 174.0+ 180.0+ 180.0+ 180.0+
#> [321] 180.0+  14.0+ 180.0+  45.0    5.0+ 180.0+  36.0    5.0+ 180.0+ 180.0+
#> [331]   8.0+ 180.0+  18.0  172.0+ 180.0+   7.0  180.0+  13.0+ 123.0  180.0+
#> [341] 180.0+   1.0    1.0   60.0  132.0  180.0+ 180.0+ 162.0    7.0+ 124.0 
#> [351]   9.0  180.0+  12.0  180.0+ 152.0    2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [361]  28.0  180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0  180.0+ 180.0+
#> [371]   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+  20.0  180.0+  20.0 
#> [381] 180.0+ 180.0+   3.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+
#> [391] 180.0+   3.0  175.0    2.0  180.0+  14.0+ 180.0+  10.0+ 180.0+ 180.0+
#> [401]   8.0+ 179.0+   1.0  180.0+ 180.0+ 159.0  180.0+  10.0    1.0  180.0+
#> [411]  13.0  180.0+ 180.0+  10.0    1.0   57.0  180.0+   3.0+   5.0  180.0+
#> [421]  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+ 180.0+   5.0 
#> [431]  11.0+   4.0+  15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0 
#> [441] 180.0+  17.0+ 174.0+   7.0    0.5  180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [451]  52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0   33.0 
#> [461] 180.0+ 180.0+ 180.0+   1.0   12.0    7.0+  79.0    3.0  168.0+ 180.0+
#> [471] 180.0+ 176.0+  18.0  180.0+  47.0    7.0  180.0+   8.0+ 180.0+ 180.0+
#> [481] 180.0+ 172.0   12.0  180.0+ 180.0+   1.0  180.0+   4.0+ 180.0+ 152.0+
#> [491]   3.0   29.0   32.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [501]  11.0    4.0    4.0   10.0+ 180.0+   1.0    1.0    3.0  180.0+   6.0 
#> [511] 138.0  180.0+  71.0   59.0   17.0  161.0   10.0+  93.0  164.0  118.0 
#> [521] 173.0  180.0+ 180.0+ 175.0+   7.0+  22.0    5.0+ 180.0+   3.0  171.0+
#> [531]  71.0    1.0    3.0+  10.0  180.0+  10.0    6.0+   1.0  180.0+ 180.0+
#> [541] 125.0  180.0+   6.0  180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0    4.0 
#> [551] 180.0+ 180.0+ 180.0+   7.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+
#> [561]   0.5  180.0+ 128.0  167.0    3.0+  62.0  180.0+   4.0    1.0   38.0 
#> [571] 180.0+ 180.0+  89.0   71.0    1.0   19.0  114.0  180.0+ 154.0  180.0+
#> [581]   4.0+ 180.0+   1.0    5.0+   4.0+ 180.0+  77.0  180.0+   3.0   83.0 
#> [591] 126.0  180.0+ 165.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+   5.0  180.0+ 174.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0 
#> [611]  13.0  180.0+ 180.0+  38.0    4.0  177.0    3.0+   6.0+  62.0    6.0+
#> [621]   4.0+   4.0   22.0   65.0   11.0  180.0+  46.0  180.0+   3.0+   8.0+
#> [631] 180.0+   4.0  180.0+ 180.0+   8.0   29.0  180.0+ 180.0+  46.0   14.0 
#> [641]   1.0+ 180.0+   8.0   25.0   24.0   11.0  180.0+ 180.0+   4.0    1.0 
#> [651] 178.0+  89.0    3.0+ 158.0   74.0  180.0+ 168.0  169.0   52.0    4.0 
#> [661] 180.0+ 180.0+   1.0+   2.0    8.0+  16.0   12.0    7.0+  69.0  180.0+
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
#>   0.8492537 
```
