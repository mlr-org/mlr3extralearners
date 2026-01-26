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
#> min 0.00356    45   2.703 0.1926       6
#> 1se 0.08427    11   2.893 0.1800       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  42   3      1          1        1   130
#>  [12,]  37   1      1          0        1   146
#>  [13,]  42   2      0        180        1   100
#>  [14,]  38   5      1          3        0   125
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  43   3      1          0        1   100
#>  [20,]  40   1      1          0        1   145
#>  [21,]  43   4      1          0        1   130
#>  [22,]  44   5      1          1        0   170
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  44   3      0        180        0   141
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  46   2      1          1        0   126
#>  [32,]  47   4      1          3        0   118
#>  [33,]  44   3      1          0        1   180
#>  [34,]  43  29      0        180        1   180
#>  [35,]  45   4      1          0        0   124
#>  [36,]  47   6      1          0        1   116
#>  [37,]  46  13      1         10        0   100
#>  [38,]  47   4      1          3        1   160
#>  [39,]  43   3      1          0        1   124
#>  [40,]  45   8      1          0        1   117
#>  [41,]  49   5      0         73        1   136
#>  [42,]  45   5      0          5        0   141
#>  [43,]  46   2      1          1        1   122
#>  [44,]  46   6      1          0        1   100
#>  [45,]  44   4      1          0        1   114
#>  [46,]  47   2      0        180        0   108
#>  [47,]  44   9      1          8        1   135
#>  [48,]  46   4      0        180        1   121
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  47   3      1          1        1   120
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   5      1          3        1   130
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  49   4      0        180        0   117
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  49   7      1          7        1   110
#>  [63,]  46   3      1          1        1   140
#>  [64,]  46   9      1          9        1   122
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  51   1      0          1        1   145
#>  [68,]  49  15      1         11        1   160
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  50   9      0        180        0   130
#>  [75,]  49   7      1          4        1    90
#>  [76,]  47   6      0        180        1   162
#>  [77,]  51   8      0        180        1   140
#>  [78,]  52   2      0        180        0   155
#>  [79,]  46   3      0        180        1   120
#>  [80,]  46   1      1          1        0   145
#>  [81,]  50   4      1          1        0   150
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  47   2      1          1        0   110
#>  [85,]  52   4      1          4        0   152
#>  [86,]  49   9      1          3        0   102
#>  [87,]  49  15      0        180        1   160
#>  [88,]  53   5      0        180        1   140
#>  [89,]  54  17      1         12        1   102
#>  [90,]  54   6      1          3        0   129
#>  [91,]  51   3      1          1        0   140
#>  [92,]  50   2      0          5        1   106
#>  [93,]  50  14      1         13        0   170
#>  [94,]  53   8      1          7        0   160
#>  [95,]  51  25      1          1        0   202
#>  [96,]  53   4      0          4        0   140
#>  [97,]  52  14      1          7        1   200
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  49  16      0         16        0   125
#> [101,]  55   3      1          1        0   150
#> [102,]  52   7      1          2        0   154
#> [103,]  55   6      1          2        1   114
#> [104,]  54   9      1          1        0   130
#> [105,]  52   4      0        180        1   180
#> [106,]  54   4      1          0        1   121
#> [107,]  49   1      0          1        1   110
#> [108,]  53   8      1          0        1   130
#> [109,]  50   7      1          0        1   127
#> [110,]  56   4      1          1        1   130
#> [111,]  52   5      0        175        1   117
#> [112,]  55   1      0        180        0   127
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  55   5      1          4        1   120
#> [119,]  52   8      0        180        0   119
#> [120,]  53  18      1          9        1   150
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  52  16      0         16        0   152
#> [124,]  53  10      1          9        0   172
#> [125,]  52  16      1         14        0   170
#> [126,]  53  15      0         15        1    90
#> [127,]  53   4      0        180        1   150
#> [128,]  55   6      1          5        1   138
#> [129,]  54  12      1          0        1   190
#> [130,]  54   3      0        180        0   128
#> [131,]  56   3      0          8        1   139
#> [132,]  57   3      0          3        0   120
#> [133,]  54   7      1          2        0   129
#> [134,]  52   9      1          3        0   170
#> [135,]  54   2      1          1        1   176
#> [136,]  57   1      0          1        1   100
#> [137,]  56   4      1          0        1   140
#> [138,]  52   2      0        180        0   140
#> [139,]  55  11      1          7        0   104
#> [140,]  52  15      1         14        0   130
#> [141,]  57  10      0        180        1   170
#> [142,]  58   8      0          8        1   130
#> [143,]  54   5      0        180        1   108
#> [144,]  57   0      0          0        1   150
#> [145,]  53  21      1         13        1   130
#> [146,]  59   3      1          1        0   172
#> [147,]  57   4      0        180        1   119
#> [148,]  58   6      1          0        1    90
#> [149,]  53  15      1         10        1   130
#> [150,]  54  17      1          8        1   227
#> [151,]  54  23      1          8        0   120
#> [152,]  57   4      1          2        1   185
#> [153,]  53   4      0        147        1   145
#> [154,]  53   7      1          0        1   120
#> [155,]  57  11      1         10        1   129
#> [156,]  55   5      0          5        1   131
#> [157,]  54   7      1          0        1   141
#> [158,]  59  15      1         10        0   140
#> [159,]  58   9      1          0        1   180
#> [160,]  56   7      1          5        1   120
#> [161,]  55   2      0          2        0   106
#> [162,]  59   9      1          1        1   125
#> [163,]  57   1      0        180        0   148
#> [164,]  59   3      0        180        0   120
#> [165,]  58   4      1          0        1   160
#> [166,]  57   2      0          2        1   120
#> [167,]  60   5      1          1        0   138
#> [168,]  57   5      0        180        1   130
#> [169,]  58  11      1          9        1   124
#> [170,]  55   5      1          0        1   160
#> [171,]  57  10      1          9        0   103
#> [172,]  59   5      0        180        1   155
#> [173,]  59   4      1          0        1   152
#> [174,]  61   9      0          9        1   160
#> [175,]  58   4      1          3        0   120
#> [176,]  59   2      1          1        0   140
#> [177,]  58   8      0        161        1   140
#> [178,]  58  14      1          6        0   190
#> [179,]  61   4      1          3        0   151
#> [180,]  61   9      1          8        0   150
#> [181,]  61   3      1          2        1   102
#> [182,]  61  20      1         13        0   130
#> [183,]  57   2      1          0        1   116
#> [184,]  58  10      0         10        1   150
#> [185,]  61   3      0         17        0   143
#> [186,]  56  14      0         45        0   130
#> [187,]  58  19      1         13        1   140
#> [188,]  56  18      1         11        1   165
#> [189,]  55   4      1          3        1   160
#> [190,]  58  11      0        172        1   135
#> [191,]  60  12      1          0        1   114
#> [192,]  61   4      1          0        1   115
#> [193,]  56   8      1          8        0   120
#> [194,]  61  13      1         12        1   130
#> [195,]  57   1      0          1        0   126
#> [196,]  59  10      0        180        0   160
#> [197,]  61   8      0         77        0   120
#> [198,]  61  13      0         13        0   210
#> [199,]  62  10      1          0        1   153
#> [200,]  62   7      1          2        1   180
#> [201,]  57   3      1          0        0   100
#> [202,]  61  18      0        170        0   140
#> [203,]  61  28      1          7        0   133
#> [204,]  58   8      1          3        1   150
#> [205,]  61   7      0          7        1   150
#> [206,]  59  13      1          2        0   198
#> [207,]  57  12      1          9        1   120
#> [208,]  62   4      1          0        0   160
#> [209,]  58   3      1          0        1   146
#> [210,]  62   4      1          3        0   173
#> [211,]  58   2      0         30        0   202
#> [212,]  59   1      0        180        0   155
#> [213,]  59  16      1          9        1   133
#> [214,]  61   5      0          5        1   110
#> [215,]  57  18      1          9        1    93
#> [216,]  57   2      1          1        0   159
#> [217,]  62   1      1          0        1   172
#> [218,]  58   7      0        180        1   150
#> [219,]  63   3      1          1        0   180
#> [220,]  63   1      0        180        1   130
#> [221,]  61   7      0        180        0   135
#> [222,]  63   4      1          3        0   222
#> [223,]  62   3      0        180        1   105
#> [224,]  63   4      0        180        1   190
#> [225,]  63  15      1         10        1   126
#> [226,]  64   4      0        180        0   130
#> [227,]  63   4      1          1        0   155
#> [228,]  61   9      1          9        1   150
#> [229,]  59   1      0         22        1   162
#> [230,]  58   2      0        180        0   127
#> [231,]  59   4      0        180        0   196
#> [232,]  60   7      1          5        1   141
#> [233,]  59   5      1          1        0   148
#> [234,]  60   7      1          1        1    90
#> [235,]  65  13      0        180        1   100
#> [236,]  62   6      0        180        0   170
#> [237,]  61  15      1         13        0   170
#> [238,]  59   4      0          4        0   149
#> [239,]  60   3      0          3        0   168
#> [240,]  62   6      0          6        0   120
#> [241,]  63  12      1         10        0   200
#> [242,]  59  10      0        180        1   130
#> [243,]  60   8      0         17        1   130
#> [244,]  64   6      1          0        1   140
#> [245,]  63  14      1          9        0   123
#> [246,]  66   3      1          1        0   127
#> [247,]  64  32      1          9        1   160
#> [248,]  63   7      0        180        0   120
#> [249,]  66   5      1          0        1   110
#> [250,]  65   8      1          0        0   168
#> [251,]  65  10      1          8        1   120
#> [252,]  64   0      0          0        1    90
#> [253,]  64  21      1         10        0   190
#> [254,]  61  12      1         11        0   154
#> [255,]  64   9      0        180        0   150
#> [256,]  61   4      0        180        1   113
#> [257,]  65   3      0        180        1   190
#> [258,]  66   6      1          1        1   130
#> [259,]  65   6      0          9        0   112
#> [260,]  65   3      1          0        1    80
#> [261,]  63   2      1          1        0   180
#> [262,]  62  13      1         11        0   180
#> [263,]  64   2      0          2        0   201
#> [264,]  66  16      1         11        1   169
#> [265,]  62   9      0        180        0   145
#> [266,]  61  15      1         10        0   130
#> [267,]  63   3      1          2        0   120
#> [268,]  63   2      1          0        0   140
#> [269,]  64  19      1          8        1   160
#> [270,]  65  15      1         11        1   160
#> [271,]  66   7      1          0        1   115
#> [272,]  64  14      1         13        1   150
#> [273,]  65   3      0          3        0   105
#> [274,]  64   0      0          0        1   148
#> [275,]  67   4      1          3        0   130
#> [276,]  66   6      1          0        1   140
#> [277,]  68   1      0        180        1   166
#> [278,]  64  10      1          9        1   110
#> [279,]  63   7      1          0        0   162
#> [280,]  67   8      1          1        1   130
#> [281,]  63  10      0         16        1   160
#> [282,]  66  14      0        180        0   130
#> [283,]  68  18      0        180        1   260
#> [284,]  63   8      1          1        1   162
#> [285,]  65  18      1          3        0   120
#> [286,]  63  10      0         18        1   130
#> [287,]  67  11      0         11        0   150
#> [288,]  68  11      0        180        0   160
#> [289,]  68  14      0         79        0   172
#> [290,]  66  12      1         10        1   150
#> [291,]  65  15      1         12        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  65  11      1          6        0   130
#> [297,]  69   6      0        180        1   100
#> [298,]  69   1      1          0        0   170
#> [299,]  67   1      0        180        1   160
#> [300,]  65   1      1          0        0   133
#> [301,]  67   7      1          4        1   130
#> [302,]  63   2      1          0        0    99
#> [303,]  67   2      0        180        0   184
#> [304,]  65  10      1          1        1   148
#> [305,]  67  12      1         12        0   160
#> [306,]  69   6      0         99        1   140
#> [307,]  65   4      1          1        0   130
#> [308,]  64   4      0        179        0   160
#> [309,]  66   4      0        180        1   130
#> [310,]  64  11      0         11        0   125
#> [311,]  64   4      0        180        1   140
#> [312,]  64   0      1          0        1   118
#> [313,]  66   4      0        180        0   177
#> [314,]  69   4      1          3        1   150
#> [315,]  65  13      1         12        1   130
#> [316,]  69  17      1         10        0   140
#> [317,]  68  18      1          0        1   160
#> [318,]  65   6      0        101        1   115
#> [319,]  68   7      0        150        0   210
#> [320,]  71  20      1          0        1   160
#> [321,]  67   2      0        180        0   128
#> [322,]  66   9      1          3        1   151
#> [323,]  66   1      1          1        1   165
#> [324,]  70   4      1          0        1   180
#> [325,]  69   8      0        180        1   153
#> [326,]  70  14      0        171        0   166
#> [327,]  66   4      0        180        0   130
#> [328,]  67   6      1          4        0   130
#> [329,]  69   0      0          0        1   148
#> [330,]  65   2      0        180        0   130
#> [331,]  68   7      1          0        1   150
#> [332,]  69   3      1          2        0   151
#> [333,]  67  14      1         13        0   130
#> [334,]  65  14      1         13        1   150
#> [335,]  69   8      0        180        1   180
#> [336,]  71   7      0          7        0   230
#> [337,]  66   2      0          2        1   228
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  70  22      1         13        0   103
#> [342,]  67   1      0         36        1   104
#> [343,]  67   5      0          5        0   130
#> [344,]  66   2      1          1        0   123
#> [345,]  69  19      0        180        0   130
#> [346,]  68  18      0         18        1   100
#> [347,]  69  11      1          0        1   120
#> [348,]  66   2      0        180        0   130
#> [349,]  69   4      1          3        0   132
#> [350,]  68   2      0          7        1   130
#> [351,]  67  13      1          9        0   130
#> [352,]  70   9      0        180        1   142
#> [353,]  72   5      1          4        0   170
#> [354,]  68   3      0         19        0   135
#> [355,]  67  12      1          8        0   120
#> [356,]  67   1      0          1        1    60
#> [357,]  72  13      1         11        1   195
#> [358,]  66  24      1         13        0   130
#> [359,]  70  35      1          0        1   105
#> [360,]  68   7      1          2        0   135
#> [361,]  71   6      0          9        0   120
#> [362,]  69  10      1          6        1   120
#> [363,]  70  11      0        180        1   210
#> [364,]  72  19      1          8        0   120
#> [365,]  72  12      1         10        0   170
#> [366,]  67   9      0        180        0   158
#> [367,]  73  13      0        152        1   130
#> [368,]  72   2      0          2        1   100
#> [369,]  67   4      1          1        0   134
#> [370,]  71   1      0        173        1   188
#> [371,]  68  23      0        180        1   220
#> [372,]  69   3      0        180        0   220
#> [373,]  68   4      1          3        0   210
#> [374,]  72   5      0         28        0   120
#> [375,]  71   5      0        180        0   191
#> [376,]  69  16      1         10        1   140
#> [377,]  68   7      0        180        1   130
#> [378,]  72  16      1          1        1   130
#> [379,]  69   1      1          0        0   155
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  71   2      1          0        1   180
#> [383,]  73   7      0          7        1   140
#> [384,]  68  15      1         13        1   130
#> [385,]  72   6      0        180        1   130
#> [386,]  74   8      1          0        1    85
#> [387,]  73   4      0        180        1   154
#> [388,]  71   3      1          1        0   150
#> [389,]  71  15      1         11        0   165
#> [390,]  74   0      1          0        1    90
#> [391,]  70   5      1          0        1   190
#> [392,]  71  17      1         11        0   160
#> [393,]  71   8      1          7        0   149
#> [394,]  71   3      1          2        1   190
#> [395,]  69  12      1          1        1   149
#> [396,]  70  26      1         11        1   120
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  73   6      0        180        0   110
#> [401,]  72  15      1          0        1   150
#> [402,]  71   7      1          2        0   143
#> [403,]  72   8      1          0        1   140
#> [404,]  74   3      0          3        1   150
#> [405,]  73  17      1         11        0   140
#> [406,]  69   2      1          1        1    80
#> [407,]  70   4      1          0        1   140
#> [408,]  71  14      1         13        1   170
#> [409,]  69   7      0        180        1   144
#> [410,]  71  10      1          9        1   120
#> [411,]  75   1      0          1        0   133
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1          9        1   146
#> [414,]  72  10      1          9        1   160
#> [415,]  73  10      1         10        1   120
#> [416,]  74  15      1          9        1   179
#> [417,]  73   1      0          1        1    80
#> [418,]  75  13      1          1        1   130
#> [419,]  71   4      0          4        0   134
#> [420,]  70   7      1          4        0   184
#> [421,]  72   7      0         57        1   145
#> [422,]  72  11      0         11        1   140
#> [423,]  70   3      0          3        0   150
#> [424,]  75   1      0        180        1   140
#> [425,]  71   3      1          0        0   144
#> [426,]  73   5      0        180        0   126
#> [427,]  73   4      0        180        0   124
#> [428,]  74  34      1          8        1   233
#> [429,]  71  32      1         12        1   107
#> [430,]  72   5      0        180        0   154
#> [431,]  72   3      0        180        0   160
#> [432,]  76   5      0          5        1   130
#> [433,]  77  11      0         11        1   150
#> [434,]  77   4      0          4        0   185
#> [435,]  75   3      1          1        0   180
#> [436,]  73  15      0         15        1   160
#> [437,]  73  10      1         10        0   124
#> [438,]  74   7      0        180        1   150
#> [439,]  74   3      0          3        1   128
#> [440,]  76   1      0        180        0   114
#> [441,]  76   8      1          0        1   141
#> [442,]  74  19      1          4        1   200
#> [443,]  73   6      0          6        1   114
#> [444,]  75  23      1         14        1   110
#> [445,]  74   2      0        180        0   190
#> [446,]  72   4      1          3        0   160
#> [447,]  76  17      1          0        1   200
#> [448,]  73   4      1          3        1   125
#> [449,]  76  13      1         10        0   110
#> [450,]  75   4      1          0        1   122
#> [451,]  75   7      0          7        0   190
#> [452,]  75  12      0         12        1   160
#> [453,]  74   8      1          0        1   105
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  74   2      0        180        0   111
#> [459,]  73   1      0         52        1   105
#> [460,]  73   0      0        180        0   156
#> [461,]  72   5      0        180        0   120
#> [462,]  78  12      1         11        1   160
#> [463,]  76  44      1         10        0   105
#> [464,]  76   5      0        180        0   185
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  77   5      1          0        0   123
#> [468,]  77  12      0        180        0   130
#> [469,]  77   1      1          0        1    90
#> [470,]  76  12      1         11        1   120
#> [471,]  73   7      1          0        0   174
#> [472,]  74   9      1          8        0   200
#> [473,]  75   6      0        180        0   150
#> [474,]  79  10      1          8        0   190
#> [475,]  74   2      1          0        1   130
#> [476,]  78  18      0         18        1   144
#> [477,]  77   3      0        180        0   110
#> [478,]  76  29      0         47        0    90
#> [479,]  73   8      1          1        1   162
#> [480,]  73  11      1          2        1   110
#> [481,]  74   2      0        180        0   100
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  78  32      1          9        1   198
#> [485,]  80  10      1          6        1   147
#> [486,]  78   0      0        180        1   212
#> [487,]  75  12      1          1        1   120
#> [488,]  76   1      0          1        1    83
#> [489,]  77   2      1          0        1   143
#> [490,]  75   3      0          3        0     0
#> [491,]  76   7      0         29        1   150
#> [492,]  77  24      0         24        1   160
#> [493,]  79   8      0         32        1   120
#> [494,]  80   9      0         23        1   128
#> [495,]  80   6      0          6        1   150
#> [496,]  76   3      1          0        1   140
#> [497,]  79   2      1          0        1   121
#> [498,]  78  14      1          0        1   140
#> [499,]  81   1      0          1        0   130
#> [500,]  78  11      1          8        1   118
#> [501,]  76   4      0          4        1   160
#> [502,]  79   4      0          4        1   125
#> [503,]  76  10      1          8        0   180
#> [504,]  76  12      1         10        1   127
#> [505,]  77   6      0          6        1   107
#> [506,]  80   3      1          0        1   120
#> [507,]  76   1      0          1        1   140
#> [508,]  77  31      1          3        1   161
#> [509,]  76   1      0          1        1    90
#> [510,]  79   3      0          3        0   120
#> [511,]  77   7      0        180        1   170
#> [512,]  81   1      0        180        0   120
#> [513,]  80  15      1         12        1   150
#> [514,]  77   9      1          4        0   141
#> [515,]  80  40      1          0        1   138
#> [516,]  78   4      0         59        1   112
#> [517,]  80  17      1         12        0   100
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  81   4      1          2        1   126
#> [521,]  79  28      0        164        0   100
#> [522,]  80   9      0        118        1   186
#> [523,]  80   6      0        173        1   160
#> [524,]  78  32      0        180        1   130
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  79   3      0          3        1   101
#> [530,]  76   1      0        166        0   131
#> [531,]  81   4      1          1        1   104
#> [532,]  78  20      1          0        1   109
#> [533,]  80   1      0          1        0   100
#> [534,]  77  10      1          8        1   130
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  80   2      1          1        0   168
#> [538,]  79   6      0          6        0   152
#> [539,]  78   2      0        180        0   148
#> [540,]  80   5      0          5        1   130
#> [541,]  79  10      0        180        1   150
#> [542,]  77   4      0        180        1    98
#> [543,]  81   1      0        108        0   129
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  79   4      0          4        1   121
#> [547,]  83   5      0        180        0   148
#> [548,]  81  11      1          8        0   160
#> [549,]  78  23      1         10        1   145
#> [550,]  78   9      1          4        1   120
#> [551,]  82   8      1          1        0   128
#> [552,]  81  15      0        180        1   140
#> [553,]  80   7      1          0        1   146
#> [554,]  81  20      1          9        0   170
#> [555,]  83   8      0          8        0   115
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  85   4      0        180        0    90
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  84   5      0        180        1   203
#> [568,]  83   3      0        180        0   174
#> [569,]  79   9      1          8        0   150
#> [570,]  84   4      0         89        1   129
#> [571,]  80   2      1          0        1   130
#> [572,]  83   1      0          1        1   100
#> [573,]  82  19      0         19        0   120
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  82   0      0          2        1   100
#> [577,]  85   9      1          6        1   160
#> [578,]  83   1      0        180        0   160
#> [579,]  81   4      0          4        0   175
#> [580,]  82   5      1          0        1   146
#> [581,]  86  12      0        180        1   120
#> [582,]  81  19      1         14        0   120
#> [583,]  82  15      1          0        0   183
#> [584,]  80   2      0         88        0   135
#> [585,]  86   8      0          8        1   132
#> [586,]  81  16      1          9        0   180
#> [587,]  86   3      0          3        1   140
#> [588,]  82   9      0        180        1   134
#> [589,]  84   3      0        180        1   120
#> [590,]  81  13      0        180        0   152
#> [591,]  85   3      0          3        1   118
#> [592,]  81   4      0        180        0   160
#> [593,]  82   1      0        180        1   193
#> [594,]  83   4      0          4        0   130
#> [595,]  87   2      0          5        1   137
#> [596,]  82  14      1         11        1   103
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  83  19      0         43        0   150
#> [600,]  84   3      1          2        0   125
#> [601,]  84   3      0          3        1   121
#> [602,]  87   2      0        180        0   113
#> [603,]  84   3      0        180        1   170
#> [604,]  86   4      0         38        1   122
#> [605,]  82   4      0          4        0   130
#> [606,]  86  13      0        177        0   163
#> [607,]  85   3      0          3        1   113
#> [608,]  88   4      0          4        0   100
#> [609,]  83  20      1          3        1   150
#> [610,]  88   4      0          4        1   115
#> [611,]  85  22      0         22        1   184
#> [612,]  86   9      1          7        1   142
#> [613,]  87   2      0        180        1   130
#> [614,]  88   3      0        115        0   110
#> [615,]  88   2      0        180        1    68
#> [616,]  83   3      0          3        1   130
#> [617,]  88   4      0          4        0    86
#> [618,]  89   4      0          4        1   153
#> [619,]  89   5      0        119        1   140
#> [620,]  87   6      0        180        1   110
#> [621,]  85   8      0          8        1   136
#> [622,]  87  29      0         29        1    97
#> [623,]  87  15      1          9        1   138
#> [624,]  89  10      0         46        1   170
#> [625,]  90  14      0         14        1   100
#> [626,]  88   1      0          1        0   135
#> [627,]  86   4      0        180        1   145
#> [628,]  91   8      0          8        0   100
#> [629,]  87   2      0        180        0   160
#> [630,]  91  10      0        145        0   135
#> [631,]  88   7      0         24        0   119
#> [632,]  88   8      0         50        1   154
#> [633,]  90  11      1         10        1   186
#> [634,]  87   6      0        126        1   168
#> [635,]  86  10      0        180        1   137
#> [636,]  86   9      1          7        0   130
#> [637,]  90   4      1          0        0   121
#> [638,]  91   1      0          1        1    74
#> [639,]  87  43      0        178        1   130
#> [640,]  87   5      0         36        1   150
#> [641,]  90   5      1          0        1   125
#> [642,]  88   3      1          2        0   159
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  88   5      0        158        0   100
#> [647,]  87   7      0         74        1   105
#> [648,]  89  12      1          0        1   130
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  92   7      0          7        1   110
#> [652,]  89   4      0          4        1   159
#> [653,]  91   0      0          0        0     0
#> [654,]  91   4      1          0        1   120
#> [655,]  94   6      0         50        0    78
#> [656,]  90   1      0          1        1   118
#> [657,]  91   2      0          2        1   116
#> [658,]  93   8      0        179        1   110
#> [659,]  92   4      0         76        1   149
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  95   8      1          5        1   150
#> [663,]  94   3      0         26        1   144
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+
#>  [21] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  16.0+
#> [101] 180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [111] 175.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [131]   8.0    3.0+ 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+
#> [141] 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+
#> [151] 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [161]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+ 161.0+ 171.0+ 180.0+ 180.0+
#> [181]   3.0  180.0+ 180.0+  10.0+  17.0   45.0   19.0  180.0+ 180.0+ 172.0+
#> [191] 172.0+ 180.0+   8.0  180.0+   1.0+ 180.0+  77.0   13.0+ 180.0+ 180.0+
#> [201] 180.0+ 170.0   94.0  180.0+   7.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [211]  30.0  180.0+ 180.0+   5.0   18.0  180.0+   1.0  180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+  22.0  180.0+
#> [231] 180.0+  84.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   3.0+   6.0+
#> [241] 180.0+ 180.0+  17.0  180.0+  14.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0 
#> [261] 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+
#> [271] 179.0+  14.0+   3.0    0.5+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+   8.0 
#> [281]  16.0  180.0+ 180.0+ 180.0+ 123.0+  18.0   11.0+ 180.0+  79.0   80.0 
#> [291]  15.0+ 180.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 175.0  180.0+ 180.0+
#> [301] 180.0+ 180.0+ 180.0+ 180.0+  12.0   99.0  180.0+ 179.0+ 180.0+  11.0+
#> [311] 180.0+   0.5  180.0+ 152.0+ 180.0+ 180.0+  18.0+ 101.0  150.0  180.0+
#> [321] 180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+   6.0    0.5  180.0+
#> [331] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0 
#> [341] 180.0+  36.0    5.0+   2.0+ 180.0+  18.0  180.0+ 180.0+ 180.0+   7.0 
#> [351]  13.0+ 180.0+ 180.0+  19.0  180.0+   1.0  132.0  180.0+ 180.0+   7.0+
#> [361]   9.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 152.0    2.0   76.0  173.0+
#> [371] 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0 
#> [381] 180.0+ 180.0+   7.0+  15.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+   0.5 
#> [391] 180.0+ 180.0+   8.0    3.0   12.0  180.0+   4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+   3.0  180.0+   2.0  180.0+  14.0+ 180.0+ 179.0+
#> [411]   1.0  180.0+ 180.0+ 159.0   15.0  180.0+   1.0   13.0    4.0+ 104.0+
#> [421]  57.0   11.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+
#> [431] 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+  10.0  180.0+   3.0  180.0+
#> [441] 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+  17.0+ 180.0+ 174.0+   4.0 
#> [451]   7.0   12.0  180.0+ 180.0+  46.0  180.0+   4.0  180.0+  52.0  180.0+
#> [461] 180.0+  12.0  180.0+ 180.0+   8.0  180.0+   5.0  180.0+   1.0   12.0 
#> [471]   7.0+ 168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+  47.0  180.0+  11.0 
#> [481] 180.0+   8.0+   7.0   32.0   10.0  180.0+  12.0    1.0    2.0    3.0 
#> [491]  29.0   24.0   32.0   23.0    6.0    3.0+ 180.0+ 180.0+   1.0   11.0 
#> [501]   4.0    4.0   10.0+ 180.0+   6.0    3.0+   1.0  171.0    1.0    3.0 
#> [511] 180.0+ 180.0+ 180.0+  71.0   40.0   59.0   17.0   10.0+ 180.0+  93.0 
#> [521] 164.0  118.0  173.0  180.0+  22.0   15.0+   5.0+ 180.0+   3.0  166.0+
#> [531]  71.0   20.0+   1.0   10.0  180.0+  85.0   10.0    6.0+ 180.0+   5.0 
#> [541] 180.0+ 180.0+ 108.0  125.0  180.0+   4.0  180.0+ 180.0+  70.0  180.0+
#> [551] 180.0+ 180.0+   7.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+
#> [561]   0.5  180.0+ 180.0+   2.0  128.0  167.0  180.0+ 180.0+ 180.0+  89.0 
#> [571] 180.0+   1.0   19.0  114.0  180.0+   2.0  180.0+ 180.0+   4.0+   5.0+
#> [581] 180.0+ 180.0+  83.0   88.0    8.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [591]   3.0+ 180.0+ 180.0+   4.0+   5.0  174.0    6.0   70.0   43.0  180.0+
#> [601]   3.0  180.0+ 180.0+  38.0    4.0  177.0    3.0+   4.0+  20.0    4.0 
#> [611]  22.0   11.0  180.0+ 115.0  180.0+   3.0+   4.0    4.0  119.0  180.0+
#> [621]   8.0   29.0  180.0+  46.0   14.0    1.0+ 180.0+   8.0  180.0+ 145.0 
#> [631]  24.0   50.0   11.0  126.0  180.0+ 180.0+   4.0    1.0  178.0+  36.0 
#> [641]  89.0   75.0    3.0+   1.0   33.0  158.0   74.0  180.0+ 168.0  169.0 
#> [651]   7.0    4.0    0.5    4.0   50.0    1.0+   2.0  179.0+  76.0   67.0 
#> [661]  12.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+  15.0+
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
#>   0.7858586 
```
