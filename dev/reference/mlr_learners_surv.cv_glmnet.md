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
#> min 0.00311    45   2.772 0.1672       6
#> 1se 0.07364    11   2.920 0.1620       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  42   3      1          1        1   130
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   4      1          0        1   130
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  43   2      0        180        1   140
#>  [32,]  45   2      0        180        1   140
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  44   3      1          0        1   180
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  49   5      0         73        1   136
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   2      1          1        1   122
#>  [48,]  46   6      1          0        1   100
#>  [49,]  46   4      0        180        1   121
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   5      1          3        1   130
#>  [54,]  46   3      1          0        1   119
#>  [55,]  49   4      0        180        0   117
#>  [56,]  47  10      0         10        1   140
#>  [57,]  50   1      1          0        1   129
#>  [58,]  48   2      1          0        0   184
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   6      1          2        1   140
#>  [61,]  46   3      1          1        1   140
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   9      0        180        0   130
#>  [73,]  49   7      1          4        1    90
#>  [74,]  47   8      0        180        0   160
#>  [75,]  47   6      0        180        1   162
#>  [76,]  51   8      0        180        1   140
#>  [77,]  52   2      0        180        0   155
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  53   8      0         36        1   160
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   7      1          0        0   199
#>  [86,]  54   6      1          3        0   129
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  49   5      1          2        1   150
#>  [94,]  53   4      0          4        0   140
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  49  16      0         16        0   125
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  54   9      1          1        0   130
#> [101,]  55   4      1          2        0   150
#> [102,]  52   4      0        180        1   180
#> [103,]  51  13      1         11        0   145
#> [104,]  50   5      1          4        1   150
#> [105,]  54   4      1          0        1   121
#> [106,]  52   4      0        180        0   183
#> [107,]  55  28      1         13        1   160
#> [108,]  50   7      1          1        0   156
#> [109,]  53   9      0          9        1    95
#> [110,]  50   7      1          0        1   127
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   1      0        180        0   127
#> [114,]  55   2      0          2        0   145
#> [115,]  56   3      0        180        1   193
#> [116,]  56   2      0        180        0   132
#> [117,]  53  18      1          9        1   150
#> [118,]  55   6      0        180        0   170
#> [119,]  52  16      0         16        0   152
#> [120,]  52  16      1         14        0   170
#> [121,]  53  15      0         15        1    90
#> [122,]  55   6      0        180        1   100
#> [123,]  55   6      1          5        1   138
#> [124,]  55   2      0        134        1   140
#> [125,]  54   3      0        180        0   128
#> [126,]  55   1      0          2        0   130
#> [127,]  54   2      1          1        0   135
#> [128,]  52   9      1          3        0   170
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0        180        1   156
#> [131,]  57   1      0          1        1   100
#> [132,]  55  11      1          7        0   104
#> [133,]  52  15      1         14        0   130
#> [134,]  56  14      1         11        0   130
#> [135,]  53   3      1          0        1   200
#> [136,]  54   5      0        180        1   108
#> [137,]  55   3      1          1        1   156
#> [138,]  57   0      0          0        1   150
#> [139,]  53  21      1         13        1   130
#> [140,]  57   4      0        180        1   119
#> [141,]  58   6      1          0        1    90
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  53   4      0        147        1   145
#> [145,]  53   7      1          0        1   120
#> [146,]  57  11      1         10        1   129
#> [147,]  55   3      1          2        0   140
#> [148,]  55   5      0          5        1   131
#> [149,]  54   7      1          0        1   141
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   1      1          1        1   200
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  59   9      1          1        1   125
#> [156,]  57   1      0        180        0   148
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  57   2      0          2        1   120
#> [160,]  57   5      0        180        1   130
#> [161,]  55   5      1          0        1   160
#> [162,]  57  10      1          9        0   103
#> [163,]  59   5      0        180        1   155
#> [164,]  58  26      1          0        1   189
#> [165,]  59   2      1          1        0   140
#> [166,]  58  14      1          6        0   190
#> [167,]  61   3      1          2        1   102
#> [168,]  57  13      1         10        0   110
#> [169,]  57   4      1          3        0   138
#> [170,]  57  11      0        180        1   150
#> [171,]  61   3      0         17        0   143
#> [172,]  56  14      0         45        0   130
#> [173,]  56  13      1          6        1   158
#> [174,]  56  18      1         11        1   165
#> [175,]  59   9      1          0        1    80
#> [176,]  60  12      1          0        1   114
#> [177,]  56   8      1          8        0   120
#> [178,]  61  13      1         12        1   130
#> [179,]  57   1      0          1        0   126
#> [180,]  57  15      1         13        1   110
#> [181,]  59   5      1          2        0   182
#> [182,]  58   5      1          1        1   135
#> [183,]  61   8      0         77        0   120
#> [184,]  58   8      1          5        0   152
#> [185,]  61  18      0        170        0   140
#> [186,]  61  28      1          7        0   133
#> [187,]  58   8      1          3        1   150
#> [188,]  57   7      0        169        0   180
#> [189,]  61   7      0          7        1   150
#> [190,]  60   7      0          7        0   147
#> [191,]  61   6      0          6        0   134
#> [192,]  59  13      1          2        0   198
#> [193,]  57  12      1          9        1   120
#> [194,]  62   4      1          0        0   160
#> [195,]  62   4      1          3        0   173
#> [196,]  58   2      0         30        0   202
#> [197,]  59  16      1          9        1   133
#> [198,]  61   5      0          5        1   110
#> [199,]  57  18      1          9        1    93
#> [200,]  61   5      0          5        1   160
#> [201,]  58  11      1          9        0   179
#> [202,]  62   1      1          0        1   172
#> [203,]  58   7      0        180        1   150
#> [204,]  63   3      1          1        0   180
#> [205,]  63   1      0        180        1   130
#> [206,]  61   7      0        180        0   135
#> [207,]  63   4      1          3        0   222
#> [208,]  63   4      0        180        1   190
#> [209,]  63  15      1         10        1   126
#> [210,]  64   4      0        180        0   130
#> [211,]  60  18      1         13        0   132
#> [212,]  59   8      0        180        1   140
#> [213,]  61   9      1          9        1   150
#> [214,]  58   9      1          9        0   110
#> [215,]  62   7      0          7        0   150
#> [216,]  59   1      0         22        1   162
#> [217,]  58   2      0        180        0   127
#> [218,]  59   4      0        180        0   196
#> [219,]  60   7      1          5        1   141
#> [220,]  60   7      0          7        0   140
#> [221,]  59   5      1          1        0   148
#> [222,]  60   7      1          1        1    90
#> [223,]  65  13      0        180        1   100
#> [224,]  63   1      0          1        0   130
#> [225,]  62   6      0        180        0   170
#> [226,]  61  15      1         13        0   170
#> [227,]  59   4      0          4        0   149
#> [228,]  60   3      0          3        0   168
#> [229,]  64  10      1          9        0   160
#> [230,]  59  10      0        180        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  64  12      1         11        0   160
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  63  10      1          0        1   148
#> [236,]  63  14      1          9        0   123
#> [237,]  63   4      1          3        0   162
#> [238,]  66   3      1          1        0   127
#> [239,]  61  10      1          2        1   194
#> [240,]  63  12      1          9        0   114
#> [241,]  63   7      0        180        0   120
#> [242,]  65  10      1          8        1   120
#> [243,]  60   6      0        180        0   130
#> [244,]  61  12      1         11        0   154
#> [245,]  64   9      0        180        0   150
#> [246,]  61   4      0        180        1   113
#> [247,]  64   7      0        180        1   120
#> [248,]  66   6      1          1        1   130
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  63   5      1          4        0   170
#> [252,]  62  13      1         11        0   180
#> [253,]  66  16      1         11        1   169
#> [254,]  63   9      1          8        1   160
#> [255,]  63   3      1          2        0   120
#> [256,]  63   2      1          0        0   140
#> [257,]  64  19      1          8        1   160
#> [258,]  65   8      1          0        1   140
#> [259,]  67   6      0        180        1   170
#> [260,]  65  15      1         11        1   160
#> [261,]  68   5      1          4        1   150
#> [262,]  64  13      1         12        1   150
#> [263,]  64   6      1          0        1   125
#> [264,]  66  13      1          0        0   118
#> [265,]  66   3      1          0        1   135
#> [266,]  66   6      1          0        1   140
#> [267,]  65   2      1          1        1   170
#> [268,]  64  10      1          9        1   110
#> [269,]  63   7      1          0        0   162
#> [270,]  63  10      0         16        1   160
#> [271,]  66  14      0        180        0   130
#> [272,]  64   1      0          1        1   120
#> [273,]  68  18      0        180        1   260
#> [274,]  65  17      1         14        1   100
#> [275,]  63   8      1          1        1   162
#> [276,]  65  18      1          3        0   120
#> [277,]  67  11      0         11        0   150
#> [278,]  68  11      0        180        0   160
#> [279,]  68  14      0         79        0   172
#> [280,]  66  12      1         10        1   150
#> [281,]  65  15      1         12        1   150
#> [282,]  66  11      1          0        0   100
#> [283,]  65   4      1          2        1   145
#> [284,]  69  12      0         15        1   140
#> [285,]  66  15      1         13        1   160
#> [286,]  65  11      1          6        0   130
#> [287,]  69  21      1         10        0   180
#> [288,]  69   6      0        180        1   100
#> [289,]  66   9      1          8        0   130
#> [290,]  63   8      0        180        1   120
#> [291,]  68  14      1         13        1   140
#> [292,]  66   3      0          3        1   138
#> [293,]  69   1      1          0        0   170
#> [294,]  67   1      0        180        1   160
#> [295,]  68  10      1         10        1   150
#> [296,]  65   1      1          0        0   133
#> [297,]  67   7      1          4        1   130
#> [298,]  63   2      1          0        0    99
#> [299,]  67   2      0        180        0   184
#> [300,]  65  10      1          1        1   148
#> [301,]  66  19      1         12        1   150
#> [302,]  67  12      1         12        0   160
#> [303,]  69   6      0         99        1   140
#> [304,]  65   4      1          1        0   130
#> [305,]  66   4      0        180        1   130
#> [306,]  70  15      1         12        1   132
#> [307,]  64  11      0         11        0   125
#> [308,]  66   7      1          5        1   131
#> [309,]  66   4      0        180        0   177
#> [310,]  68   4      1          0        1   160
#> [311,]  69   4      1          3        1   150
#> [312,]  65  13      1         12        1   130
#> [313,]  69  17      1         10        0   140
#> [314,]  69   8      0         93        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  65   1      0          1        1   120
#> [317,]  68  18      1          0        1   160
#> [318,]  65   6      0        101        1   115
#> [319,]  71   3      0          5        0   112
#> [320,]  70   7      1          0        1   190
#> [321,]  68   7      0        150        0   210
#> [322,]  71  20      1          0        1   160
#> [323,]  67   2      0        180        0   128
#> [324,]  66   9      1          3        1   151
#> [325,]  66   1      1          1        1   165
#> [326,]  69   8      0        180        1   153
#> [327,]  70  14      0        171        0   166
#> [328,]  66   4      0        180        0   130
#> [329,]  67  10      1          9        0   200
#> [330,]  68  18      1         14        1   170
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  69   8      0        180        1   180
#> [337,]  71   6      0         45        1   158
#> [338,]  69   5      0          5        1   142
#> [339,]  71   3      0        103        0   133
#> [340,]  69   3      0          3        1   130
#> [341,]  70  22      1         13        0   103
#> [342,]  67   1      0         36        1   104
#> [343,]  68   6      0        180        0   145
#> [344,]  69   8      1          5        1   195
#> [345,]  72   3      1          0        1   132
#> [346,]  72   7      0          7        1   110
#> [347,]  67   3      0        180        0   110
#> [348,]  69  19      0        180        0   130
#> [349,]  68  18      0         18        1   100
#> [350,]  67  14      0        172        1   140
#> [351,]  66   2      0        180        0   130
#> [352,]  67   7      1          4        0   122
#> [353,]  69   4      1          3        0   132
#> [354,]  69   8      1          2        0   121
#> [355,]  67  13      1          9        0   130
#> [356,]  68   3      0         19        0   135
#> [357,]  69   1      0          1        1   110
#> [358,]  67   1      0          1        1    60
#> [359,]  67   4      0         60        1   136
#> [360,]  69   5      0         76        0   120
#> [361,]  67   8      1          0        1   130
#> [362,]  72  13      1         11        1   195
#> [363,]  68  10      1          8        1   160
#> [364,]  66  24      1         13        0   130
#> [365,]  70  35      1          0        1   105
#> [366,]  68   7      1          2        0   135
#> [367,]  73  20      1          0        1   170
#> [368,]  70  11      0        180        1   210
#> [369,]  72  12      1         10        0   170
#> [370,]  67   8      0        180        1   170
#> [371,]  67   5      1          0        1   147
#> [372,]  70   5      0        180        0   150
#> [373,]  72   2      0          2        1   100
#> [374,]  72   6      1          5        0   115
#> [375,]  71   1      0        173        1   188
#> [376,]  68  23      0        180        1   220
#> [377,]  71   3      1          2        0   150
#> [378,]  72   5      0         28        0   120
#> [379,]  71   5      0        180        0   191
#> [380,]  73   6      0        180        1   117
#> [381,]  69  16      1         10        1   140
#> [382,]  68   7      0        180        1   130
#> [383,]  72  16      1          1        1   130
#> [384,]  69   1      1          0        0   155
#> [385,]  73   6      1          0        1   270
#> [386,]  72   8      1          1        1   150
#> [387,]  71   2      1          0        1   180
#> [388,]  73   7      0          7        1   140
#> [389,]  68  15      1         13        1   130
#> [390,]  70   3      0          3        1   159
#> [391,]  72   6      0        180        1   130
#> [392,]  71  15      1         11        0   165
#> [393,]  71  20      1         10        0   140
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   3      1          2        1   190
#> [398,]  73  10      1          8        0   106
#> [399,]  69  12      1          1        1   149
#> [400,]  70  26      1         11        1   120
#> [401,]  74   4      0          4        0   120
#> [402,]  73   4      0         58        1   160
#> [403,]  72   5      1          3        1   160
#> [404,]  70   3      0        180        1   154
#> [405,]  73   6      0        180        0   110
#> [406,]  72  15      1          0        1   150
#> [407,]  71   7      1          2        0   143
#> [408,]  71  13      1          8        0   121
#> [409,]  70   4      1          0        1   140
#> [410,]  71  14      1         13        1   170
#> [411,]  72  10      1          8        1   153
#> [412,]  69   7      0        180        1   144
#> [413,]  72  15      1         13        0   156
#> [414,]  71  10      1          9        1   120
#> [415,]  75   1      0          1        0   133
#> [416,]  75   2      1          1        0   145
#> [417,]  72  10      1          9        1   160
#> [418,]  73  10      1         10        1   120
#> [419,]  74  15      1          9        1   179
#> [420,]  71   2      0         10        1   112
#> [421,]  75  13      1          1        1   130
#> [422,]  71   4      0          4        0   134
#> [423,]  73  10      1          8        0   120
#> [424,]  70   7      1          4        0   184
#> [425,]  72  11      0         11        1   140
#> [426,]  73   5      1          3        1   112
#> [427,]  73  12      1         12        1   140
#> [428,]  72   2      0        180        0   120
#> [429,]  71   3      1          0        0   144
#> [430,]  73   5      0        180        0   126
#> [431,]  73   4      0        180        0   124
#> [432,]  74  34      1          8        1   233
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  77  11      0         11        1   150
#> [436,]  77   4      0          4        0   185
#> [437,]  75   3      1          1        0   180
#> [438,]  73  15      0         15        1   160
#> [439,]  71  16      0        180        0   140
#> [440,]  73  10      1         10        0   124
#> [441,]  74   7      0        180        1   150
#> [442,]  74   2      1          1        0   140
#> [443,]  76   8      1          0        1   141
#> [444,]  74  19      1          4        1   200
#> [445,]  73   6      0          6        1   114
#> [446,]  75  23      1         14        1   110
#> [447,]  74   2      0        180        0   190
#> [448,]  72   4      1          3        0   160
#> [449,]  73   4      1          3        1   125
#> [450,]  76  13      1         10        0   110
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  74   8      1          0        1   105
#> [455,]  76  13      1          8        1   148
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  74   2      0        180        0   111
#> [459,]  73   1      0         52        1   105
#> [460,]  78  12      1         11        1   160
#> [461,]  76  44      1         10        0   105
#> [462,]  76   5      1          0        1   167
#> [463,]  74   8      1          8        1   170
#> [464,]  75   9      0        180        1   140
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77  12      0        180        0   130
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  74   9      1          8        0   200
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  78  18      0         18        1   144
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  74   7      0          7        0   161
#> [481,]  76  13      1          1        1   170
#> [482,]  78  32      1          9        1   198
#> [483,]  79   6      0        180        0   170
#> [484,]  80  10      1          6        1   147
#> [485,]  78   0      0        180        1   212
#> [486,]  75   5      0        119        1   150
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  76   1      0          1        1    83
#> [490,]  79   4      0         80        0   145
#> [491,]  78  12      1          9        0   150
#> [492,]  77   2      1          0        1   143
#> [493,]  78  10      0        180        1   130
#> [494,]  76  11      1          0        0   120
#> [495,]  75  11      1          4        0   162
#> [496,]  75   3      0          3        0     0
#> [497,]  76   7      0         29        1   150
#> [498,]  77  24      0         24        1   160
#> [499,]  79   8      0         32        1   120
#> [500,]  80   9      0         23        1   128
#> [501,]  78   6      1          0        1   240
#> [502,]  78  11      1          1        1   140
#> [503,]  79  11      0        180        0   160
#> [504,]  79   2      1          0        1   121
#> [505,]  81   1      0          1        0   130
#> [506,]  76   4      0          4        1   160
#> [507,]  79   4      0          4        1   125
#> [508,]  76  10      1          8        0   180
#> [509,]  76  12      1         10        1   127
#> [510,]  77   6      0          6        1   107
#> [511,]  80   3      1          0        1   120
#> [512,]  75   2      1          1        1   204
#> [513,]  78  11      0        180        1   135
#> [514,]  76   1      0          1        1    90
#> [515,]  77   6      0          6        1   144
#> [516,]  79   4      1          0        1   120
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  79  10      0         10        1   120
#> [524,]  80  15      1          0        1    90
#> [525,]  81   4      1          2        1   126
#> [526,]  79  28      0        164        0   100
#> [527,]  80   9      0        118        1   186
#> [528,]  80   6      0        173        1   160
#> [529,]  79   1      0         37        1   140
#> [530,]  81   2      0        175        0   172
#> [531,]  78   7      0          7        1   147
#> [532,]  77  13      1          0        1   190
#> [533,]  78  15      0         15        0   165
#> [534,]  80   5      1          1        1   108
#> [535,]  79   3      0          3        1   101
#> [536,]  78   3      1          1        1   152
#> [537,]  77   5      0         85        0   188
#> [538,]  80   2      1          1        0   168
#> [539,]  79   6      0          6        0   152
#> [540,]  80   6      1          0        1   119
#> [541,]  80   5      0          5        1   130
#> [542,]  77   4      0        180        1    98
#> [543,]  81   1      0        108        0   129
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  84  22      1         10        0   180
#> [547,]  83   9      1          5        1   170
#> [548,]  82   5      0        180        0   110
#> [549,]  83   5      0        180        0   148
#> [550,]  83   4      0        103        0    97
#> [551,]  81   5      0        177        0    41
#> [552,]  80  11      1          8        0   170
#> [553,]  78  23      1         10        1   145
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  80   7      1          0        1   146
#> [558,]  81  20      1          9        0   170
#> [559,]  80  11      1          8        0   110
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  82   6      0        128        1   100
#> [564,]  84   5      0        180        1   203
#> [565,]  81   1      0          1        1   150
#> [566,]  84   1      0         38        1   205
#> [567,]  83   3      0        180        0   174
#> [568,]  85   3      1          2        1   160
#> [569,]  84   4      0         89        1   129
#> [570,]  80   2      1          0        1   130
#> [571,]  80   6      0         71        1   189
#> [572,]  83   1      0          1        1   100
#> [573,]  82  19      0         19        0   120
#> [574,]  83   9      0        180        0   198
#> [575,]  79  14      1          0        0   110
#> [576,]  83   3      0        114        0    98
#> [577,]  81  14      1         12        1   128
#> [578,]  82   0      0          2        1   100
#> [579,]  83   1      0        180        0   160
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  81  12      0         12        1   163
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  86  12      0        180        1   120
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  80   2      0         88        0   135
#> [590,]  83   7      0        126        0   135
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  85   3      0          3        1   118
#> [595,]  81   2      1          0        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  86  12      1          0        1   132
#> [601,]  82  14      1         11        1   103
#> [602,]  86   6      1          0        1   140
#> [603,]  86   2      0        180        1   169
#> [604,]  83  13      1         12        0   170
#> [605,]  87   2      0        180        0   113
#> [606,]  84   9      0         92        1   110
#> [607,]  84   3      0        180        1   170
#> [608,]  86   4      0         38        1   122
#> [609,]  82   4      0          4        0   130
#> [610,]  86  13      0        177        0   163
#> [611,]  85   3      0          3        1   113
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  88   4      0          4        1   115
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  84   2      0        110        1   174
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  84   0      0        180        1   136
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  91   8      0          8        0   100
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  90  11      1         10        1   186
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  88   3      1          2        0   159
#> [648,]  89   3      1          1        1   160
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89  12      1          0        1   130
#> [652,]  89   2      0        168        0   118
#> [653,]  92   7      0          7        1   110
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   2.0    1.0  179.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0 
#>  [81]  88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 166.0+  16.0+   7.0+   6.0+ 180.0+
#> [101] 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+  28.0  180.0+   9.0+ 180.0+
#> [111] 180.0+ 175.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0 
#> [121]  15.0+ 180.0+ 180.0+ 134.0+ 180.0+   2.0  180.0+ 180.0+ 140.0  180.0+
#> [131]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [141] 180.0+  15.0  166.0+ 147.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [151] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+   3.0  180.0+ 180.0+ 180.0+
#> [171]  17.0   45.0  180.0+ 180.0+   9.0+ 172.0+   8.0  180.0+   1.0+  15.0 
#> [181] 180.0+ 180.0+  77.0    8.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+
#> [191]   6.0  180.0+ 180.0+ 180.0+ 180.0+  30.0  180.0+   5.0   18.0    5.0+
#> [201] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+  84.0    7.0+
#> [221] 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0  180.0+
#> [231] 180.0+  12.0  180.0+ 180.0+ 180.0+  14.0+ 180.0+   3.0+  88.0   12.0 
#> [241] 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+ 180.0+
#> [261]   5.0+  13.0  180.0+ 166.0+   3.0+ 180.0+ 175.0+ 180.0+   7.0+  16.0 
#> [271] 180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+  11.0+ 180.0+  79.0   80.0 
#> [281]  15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+
#> [291] 180.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [301]  19.0+  12.0   99.0  180.0+ 180.0+ 180.0+  11.0+   7.0+ 180.0+ 180.0+
#> [311] 152.0+ 180.0+ 180.0+  93.0   21.0+   1.0   18.0+ 101.0    5.0    7.0+
#> [321] 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+ 180.0+
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  45.0    5.0+ 103.0    3.0+
#> [341] 180.0+  36.0  180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+  18.0  172.0+
#> [351] 180.0+   7.0  180.0+   8.0+  13.0+  19.0    1.0    1.0   60.0   76.0 
#> [361] 180.0+ 132.0   10.0+ 180.0+ 180.0+   7.0+ 124.0  180.0+  12.0  180.0+
#> [371] 180.0+ 180.0+   2.0  180.0+ 173.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [381]  16.0+ 180.0+  16.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0    3.0+
#> [391] 180.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+   3.0   87.0   12.0  180.0+
#> [401]   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0  180.0+  14.0+
#> [411]  10.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0 
#> [421]  13.0    4.0+  10.0  104.0+  11.0    5.0   12.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  177.0+ 180.0+  11.0+   4.0+ 180.0+  15.0+ 180.0+  10.0 
#> [441] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 174.0+
#> [451]   7.0    0.5  180.0+ 180.0+ 180.0+ 180.0+   4.0  180.0+  52.0   12.0 
#> [461] 180.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+ 180.0+   1.0   12.0  180.0+
#> [471]   7.0+ 168.0+ 180.0+ 176.0+  18.0   47.0  180.0+   7.0  180.0+   7.0 
#> [481] 180.0+  32.0  180.0+  10.0  180.0+ 119.0  180.0+ 180.0+   1.0   80.0 
#> [491] 180.0+   2.0  180.0+  11.0  152.0+   3.0   29.0   24.0   32.0   23.0 
#> [501] 180.0+ 180.0+ 180.0+ 180.0+   1.0    4.0    4.0   10.0+ 180.0+   6.0 
#> [511]   3.0+   2.0+ 180.0+   1.0    6.0  138.0   71.0    8.0   40.0   59.0 
#> [521]  17.0  161.0   10.0+ 180.0+  93.0  164.0  118.0  173.0   37.0  175.0+
#> [531]   7.0+  22.0   15.0+   5.0+   3.0    3.0+  85.0   10.0    6.0+   6.0 
#> [541]   5.0  180.0+ 108.0  125.0  180.0+ 180.0+   9.0+ 180.0+ 180.0+ 103.0 
#> [551] 177.0+ 169.0   70.0  180.0+ 180.0+ 180.0+   7.0+  20.0  180.0+   0.5 
#> [561] 180.0+ 180.0+ 128.0  180.0+   1.0   38.0  180.0+ 180.0+  89.0  180.0+
#> [571]  71.0    1.0   19.0  180.0+ 180.0+ 114.0  180.0+   2.0  180.0+ 180.0+
#> [581]   1.0   12.0   16.0+   5.0+   4.0+ 180.0+  77.0  180.0+  88.0  126.0 
#> [591]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [601] 174.0    6.0  180.0+  13.0  180.0+  92.0  180.0+  38.0    4.0  177.0 
#> [611]   3.0+  62.0    6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+  46.0 
#> [621] 115.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0    1.0+ 180.0+   8.0 
#> [631] 110.0   29.0  180.0+ 180.0+  14.0    1.0+   8.0   25.0  145.0    3.0 
#> [641]  24.0   11.0  180.0+ 180.0+  36.0   89.0   75.0    3.0+ 158.0   74.0 
#> [651] 180.0+ 168.0    7.0    0.5  180.0+ 180.0+ 180.0+  50.0    1.0+   8.0+
#> [661]  76.0  180.0+  16.0   12.0    8.0    7.0+   0.5   69.0  180.0+  15.0+
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
#>   0.8257359 
```
