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
#> min 0.00347    44   2.902 0.11480       6
#> 1se 0.05648    14   3.000 0.09995       6
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  38  12      1         11        1    92
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  38   5      1          3        0   125
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  43   3      1          0        1   100
#>  [21,]  40   1      1          0        1   145
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  15      1         13        1   125
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  44   5      1          1        0   170
#>  [28,]  45   3      0        180        1   154
#>  [29,]  41  10      1          8        0   150
#>  [30,]  44   3      0        180        0   141
#>  [31,]  45   9      1          7        0   110
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46   2      1          1        0   126
#>  [35,]  48  15      0        180        1   160
#>  [36,]  43  29      0        180        1   180
#>  [37,]  45   4      1          0        0   124
#>  [38,]  43  10      0        180        0   185
#>  [39,]  47   6      1          0        1   116
#>  [40,]  44   0      1          0        1    96
#>  [41,]  49   5      0         73        1   136
#>  [42,]  45   5      0          5        0   141
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46  15      0        180        1   120
#>  [48,]  45   9      1          0        1   145
#>  [49,]  47   3      1          1        1   120
#>  [50,]  48   3      0        180        0   154
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   9      1          6        0   170
#>  [53,]  47  10      0         10        1   140
#>  [54,]  48   2      1          0        0   184
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  46   6      1          0        1   156
#>  [65,]  51   3      1          2        0   113
#>  [66,]  50   1      1          0        0   150
#>  [67,]  50   9      0        180        0   130
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   6      0        180        1   162
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  53   8      0         36        1   160
#>  [73,]  47   2      1          1        0   110
#>  [74,]  49   9      1          3        0   102
#>  [75,]  49  15      0        180        1   160
#>  [76,]  53   5      0        180        1   140
#>  [77,]  54  17      1         12        1   102
#>  [78,]  53   5      0         77        0   159
#>  [79,]  54   6      1          3        0   129
#>  [80,]  51   3      1          1        0   140
#>  [81,]  50   2      0          5        1   106
#>  [82,]  50  14      1         13        0   170
#>  [83,]  53   8      1          7        0   160
#>  [84,]  48   3      1          2        0   150
#>  [85,]  51  25      1          1        0   202
#>  [86,]  49   5      1          2        1   150
#>  [87,]  52  14      1          7        1   200
#>  [88,]  48   6      0        180        0   160
#>  [89,]  48  11      1         10        0   120
#>  [90,]  53   4      1          0        1   156
#>  [91,]  51  13      0         99        1   160
#>  [92,]  49  16      0         16        0   125
#>  [93,]  55   3      1          1        0   150
#>  [94,]  52   7      1          2        0   154
#>  [95,]  55   6      1          2        1   114
#>  [96,]  54   9      1          1        0   130
#>  [97,]  51  13      1         11        0   145
#>  [98,]  50   5      1          4        1   150
#>  [99,]  54   4      1          0        1   121
#> [100,]  52   4      0        180        0   183
#> [101,]  55  28      1         13        1   160
#> [102,]  49   6      1          0        1   130
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  56   4      1          1        1   130
#> [107,]  52   5      0        175        1   117
#> [108,]  54   1      0        180        0   162
#> [109,]  54   7      1          0        1   100
#> [110,]  56   3      0        180        1   193
#> [111,]  55   5      1          4        1   120
#> [112,]  55   6      0        180        0   170
#> [113,]  52  16      0         16        0   152
#> [114,]  53  10      1          9        0   172
#> [115,]  52  16      1         14        0   170
#> [116,]  53   4      0        180        1   150
#> [117,]  54  12      1          0        1   190
#> [118,]  55   2      0        134        1   140
#> [119,]  54   3      0        180        0   128
#> [120,]  54   2      1          1        0   135
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  57   1      0          1        1   100
#> [124,]  56   4      1          0        1   140
#> [125,]  52   2      0        180        0   140
#> [126,]  55  11      1          7        0   104
#> [127,]  52  15      1         14        0   130
#> [128,]  56  14      1         11        0   130
#> [129,]  53   3      1          0        1   200
#> [130,]  58   8      0          8        1   130
#> [131,]  54   5      0        180        1   108
#> [132,]  57   0      0          0        1   150
#> [133,]  53  21      1         13        1   130
#> [134,]  59   3      1          1        0   172
#> [135,]  57   4      0        180        1   119
#> [136,]  58   6      1          0        1    90
#> [137,]  53  15      1         10        1   130
#> [138,]  54  17      1          8        1   227
#> [139,]  55   9      1          2        1   147
#> [140,]  53   4      0        147        1   145
#> [141,]  57  11      1         10        1   129
#> [142,]  55   3      1          2        0   140
#> [143,]  54   7      1          0        1   141
#> [144,]  56   4      0          4        0   164
#> [145,]  58   9      1          0        1   180
#> [146,]  56   7      1          5        1   120
#> [147,]  57   1      0        180        0   148
#> [148,]  58   4      1          0        1   160
#> [149,]  57   2      0          2        1   120
#> [150,]  60   5      1          1        0   138
#> [151,]  58  11      1          9        1   124
#> [152,]  55   5      1          0        1   160
#> [153,]  57  10      1          9        0   103
#> [154,]  59   5      0        180        1   155
#> [155,]  59   4      1          0        1   152
#> [156,]  58  26      1          0        1   189
#> [157,]  60   0      1          0        1    80
#> [158,]  59   2      1          1        0   140
#> [159,]  58   8      0        161        1   140
#> [160,]  61   3      1          2        1   102
#> [161,]  58   1      0          1        1   100
#> [162,]  61  20      1         13        0   130
#> [163,]  57  13      1         10        0   110
#> [164,]  57   2      1          0        1   116
#> [165,]  57   3      1          2        0   120
#> [166,]  58  19      1         13        1   140
#> [167,]  56  13      1          6        1   158
#> [168,]  59   9      1          0        1    80
#> [169,]  60  12      1          0        1   114
#> [170,]  55   9      1          7        1   135
#> [171,]  61   4      1          0        1   115
#> [172,]  56   8      1          8        0   120
#> [173,]  61  13      1         12        1   130
#> [174,]  59  11      1          8        1   190
#> [175,]  57   1      0          1        0   126
#> [176,]  59   5      1          2        0   182
#> [177,]  58   5      1          1        1   135
#> [178,]  59  10      0        180        0   160
#> [179,]  61  13      0         13        0   210
#> [180,]  62   7      1          2        1   180
#> [181,]  57   3      1          0        0   100
#> [182,]  58   8      1          3        1   150
#> [183,]  57   7      0        169        0   180
#> [184,]  60   7      0          7        0   147
#> [185,]  61   6      0          6        0   134
#> [186,]  57  12      1          9        1   120
#> [187,]  62   4      1          0        0   160
#> [188,]  62   4      1          3        0   173
#> [189,]  58   2      0         30        0   202
#> [190,]  63   6      0         28        1   120
#> [191,]  61  13      0         13        0   120
#> [192,]  61   5      0          5        1   110
#> [193,]  57  18      1          9        1    93
#> [194,]  61   5      0          5        1   160
#> [195,]  58  11      1          9        0   179
#> [196,]  57   2      1          1        0   159
#> [197,]  62  17      1         10        1   180
#> [198,]  62   1      1          0        1   172
#> [199,]  58   7      0        180        1   150
#> [200,]  63   3      1          1        0   180
#> [201,]  63   1      0        180        1   130
#> [202,]  61   7      0        180        0   135
#> [203,]  63   4      1          3        0   222
#> [204,]  62   3      0        180        1   105
#> [205,]  63   4      0        180        1   190
#> [206,]  64   4      0        180        0   130
#> [207,]  62   7      0          7        0   150
#> [208,]  59   1      0         22        1   162
#> [209,]  58   2      0        180        0   127
#> [210,]  59   4      0        180        0   196
#> [211,]  60   7      1          5        1   141
#> [212,]  60   7      0          7        0   140
#> [213,]  60   7      1          1        1    90
#> [214,]  65  13      0        180        1   100
#> [215,]  62   6      0          6        0   120
#> [216,]  63  12      1         10        0   200
#> [217,]  59  10      0        180        1   130
#> [218,]  61   6      1          1        1   117
#> [219,]  64  12      1         11        0   160
#> [220,]  66   1      1          0        1   120
#> [221,]  64   6      1          0        1   140
#> [222,]  63  10      1          0        1   148
#> [223,]  63  14      1          9        0   123
#> [224,]  65  36      1         11        0   140
#> [225,]  63   4      1          3        0   162
#> [226,]  61  10      1          2        1   194
#> [227,]  64  32      1          9        1   160
#> [228,]  63   7      0        180        0   120
#> [229,]  66   5      1          0        1   110
#> [230,]  65  10      1          8        1   120
#> [231,]  64   0      0          0        1    90
#> [232,]  60   6      0        180        0   130
#> [233,]  61  12      1         11        0   154
#> [234,]  65   3      0        180        1   190
#> [235,]  64   7      0        180        1   120
#> [236,]  66   6      1          1        1   130
#> [237,]  63  12      0         12        1   150
#> [238,]  65   6      0          9        0   112
#> [239,]  65   3      1          0        1    80
#> [240,]  63   5      1          4        0   170
#> [241,]  63   2      1          1        0   180
#> [242,]  62  13      1         11        0   180
#> [243,]  67  11      0         11        1   100
#> [244,]  64   2      0          2        0   201
#> [245,]  62   9      0        180        0   145
#> [246,]  61  14      1          5        0   140
#> [247,]  61  15      1         10        0   130
#> [248,]  63   2      1          0        0   140
#> [249,]  64  19      1          8        1   160
#> [250,]  67   6      0        180        1   170
#> [251,]  65  15      1         11        1   160
#> [252,]  64  13      1         12        1   150
#> [253,]  64   6      1          0        1   125
#> [254,]  66  13      1          0        0   118
#> [255,]  64  14      1         13        1   150
#> [256,]  65   3      0          3        0   105
#> [257,]  64   0      0          0        1   148
#> [258,]  66   3      1          0        1   135
#> [259,]  66   6      1          0        1   140
#> [260,]  63   7      1          0        0   162
#> [261,]  67   8      1          1        1   130
#> [262,]  68   5      0          5        1    90
#> [263,]  63  10      0         16        1   160
#> [264,]  64   1      0          1        1   120
#> [265,]  68  18      0        180        1   260
#> [266,]  65  17      1         14        1   100
#> [267,]  63   1      1          0        1   155
#> [268,]  63  10      0         18        1   130
#> [269,]  67  11      0         11        0   150
#> [270,]  68  11      0        180        0   160
#> [271,]  68  14      0         79        0   172
#> [272,]  66  12      1         10        1   150
#> [273,]  65  15      1         12        1   150
#> [274,]  66  11      1          0        0   100
#> [275,]  65   4      1          2        1   145
#> [276,]  69  12      0         15        1   140
#> [277,]  66  15      1         13        1   160
#> [278,]  63   2      0        180        0   150
#> [279,]  65  11      1          6        0   130
#> [280,]  63   8      0        180        1   120
#> [281,]  65   8      1          0        1    90
#> [282,]  66   3      0          3        1   138
#> [283,]  69   1      1          0        0   170
#> [284,]  67   1      0        180        1   160
#> [285,]  63   2      1          0        0    99
#> [286,]  67   2      0        180        0   184
#> [287,]  66  19      1         12        1   150
#> [288,]  67  12      1         12        0   160
#> [289,]  69   6      0         99        1   140
#> [290,]  65   4      1          1        0   130
#> [291,]  64   4      0        179        0   160
#> [292,]  70  15      1         12        1   132
#> [293,]  64   4      0        180        1   140
#> [294,]  64   0      1          0        1   118
#> [295,]  66   7      1          5        1   131
#> [296,]  66   4      0        180        0   177
#> [297,]  65  13      1         12        1   130
#> [298,]  69  17      1         10        0   140
#> [299,]  64  21      0         21        1   155
#> [300,]  65   1      0          1        1   120
#> [301,]  65   6      0        101        1   115
#> [302,]  68   4      0          4        1   190
#> [303,]  71   3      0          5        0   112
#> [304,]  70   7      1          0        1   190
#> [305,]  71  20      1          0        1   160
#> [306,]  67   2      0        180        0   128
#> [307,]  66   9      1          3        1   151
#> [308,]  66   1      1          1        1   165
#> [309,]  69   8      0        180        1   153
#> [310,]  70  14      0        171        0   166
#> [311,]  68  18      1         14        1   170
#> [312,]  69   0      0          0        1   148
#> [313,]  68   7      1          0        1   150
#> [314,]  69   3      1          2        0   151
#> [315,]  65  14      1         13        1   150
#> [316,]  69   8      0        180        1   180
#> [317,]  71   7      0          7        0   230
#> [318,]  71   6      0         45        1   158
#> [319,]  69   5      0          5        1   142
#> [320,]  69   3      0          3        1   130
#> [321,]  67   1      0         36        1   104
#> [322,]  67   5      0          5        0   130
#> [323,]  68   6      0        180        0   145
#> [324,]  69   6      1          4        1   174
#> [325,]  72   3      1          0        1   132
#> [326,]  72   7      0          7        1   110
#> [327,]  69   8      1          7        1   108
#> [328,]  67   3      0        180        0   110
#> [329,]  69  19      0        180        0   130
#> [330,]  68  18      0         18        1   100
#> [331,]  67  14      0        172        1   140
#> [332,]  69  11      1          0        1   120
#> [333,]  66   2      0        180        0   130
#> [334,]  67   7      1          4        0   122
#> [335,]  69   4      1          3        0   132
#> [336,]  68   2      0          7        1   130
#> [337,]  69   8      1          2        0   121
#> [338,]  70   3      0        123        0   130
#> [339,]  70   9      0        180        1   142
#> [340,]  72   5      1          4        0   170
#> [341,]  67  22      1          1        1   140
#> [342,]  67  12      1          8        0   120
#> [343,]  69   1      0          1        1   110
#> [344,]  67   4      0         60        1   136
#> [345,]  69   5      0         76        0   120
#> [346,]  67   8      1          0        1   130
#> [347,]  72  13      1         11        1   195
#> [348,]  66  24      1         13        0   130
#> [349,]  70  35      1          0        1   105
#> [350,]  68   7      1          2        0   135
#> [351,]  73  20      1          0        1   170
#> [352,]  71   6      0          9        0   120
#> [353,]  69  10      1          6        1   120
#> [354,]  70  11      0        180        1   210
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   9      0        180        0   158
#> [358,]  73  13      0        152        1   130
#> [359,]  72   2      0          2        1   100
#> [360,]  67   4      1          1        0   134
#> [361,]  72   6      1          5        0   115
#> [362,]  68  23      0        180        1   220
#> [363,]  70   3      0        180        0   121
#> [364,]  69   3      0        180        0   220
#> [365,]  71   3      1          2        0   150
#> [366,]  72   5      0         28        0   120
#> [367,]  71   5      0        180        0   191
#> [368,]  73   6      0        180        1   117
#> [369,]  69  16      1         10        1   140
#> [370,]  69   8      1          1        0   164
#> [371,]  68   7      0        180        1   130
#> [372,]  72  16      1          1        1   130
#> [373,]  70   4      0        180        0   180
#> [374,]  69   1      1          0        0   155
#> [375,]  73   6      1          0        1   270
#> [376,]  72   8      1          1        1   150
#> [377,]  73   7      0          7        1   140
#> [378,]  70  13      1          9        0   100
#> [379,]  72   6      0        180        1   130
#> [380,]  69   2      1          0        1   110
#> [381,]  68   9      0        180        1   120
#> [382,]  70   5      1          0        1   190
#> [383,]  71  17      1         11        0   160
#> [384,]  71   8      1          7        0   149
#> [385,]  71   3      1          2        1   190
#> [386,]  73  10      1          8        0   106
#> [387,]  69  12      1          1        1   149
#> [388,]  74   4      0          4        0   120
#> [389,]  73   4      0         58        1   160
#> [390,]  73   6      0        180        0   110
#> [391,]  72   8      1          0        1   140
#> [392,]  74   3      0          3        1   150
#> [393,]  73  17      1         11        0   140
#> [394,]  71  13      1          8        0   121
#> [395,]  69   2      1          1        1    80
#> [396,]  71  14      1         13        1   170
#> [397,]  72  10      1          8        1   153
#> [398,]  72  15      1         13        0   156
#> [399,]  71  10      1          9        1   120
#> [400,]  75   2      1          1        0   145
#> [401,]  73  10      1          9        1   146
#> [402,]  73  10      1         10        1   120
#> [403,]  74  15      1          9        1   179
#> [404,]  73   1      0          1        1    80
#> [405,]  75   9      1          7        0   140
#> [406,]  71  11      1          8        0   110
#> [407,]  71   4      0          4        0   134
#> [408,]  73  10      1          8        0   120
#> [409,]  72   1      1          1        0   168
#> [410,]  72   7      0         57        1   145
#> [411,]  70   3      0          3        0   150
#> [412,]  73   5      1          3        1   112
#> [413,]  76  25      1         12        1   170
#> [414,]  73  12      1         12        1   140
#> [415,]  72   2      0        180        0   120
#> [416,]  75   1      0        180        1   140
#> [417,]  72   4      1          0        1   197
#> [418,]  73   4      0        180        0   124
#> [419,]  74  34      1          8        1   233
#> [420,]  71  32      1         12        1   107
#> [421,]  72   5      0        180        0   154
#> [422,]  76   5      0          5        1   130
#> [423,]  77  11      0         11        1   150
#> [424,]  77   4      0          4        0   185
#> [425,]  75   3      1          1        0   180
#> [426,]  71  16      0        180        0   140
#> [427,]  73  10      1         10        0   124
#> [428,]  74   7      0        180        1   150
#> [429,]  74   3      0          3        1   128
#> [430,]  76   1      0        180        0   114
#> [431,]  74   2      1          1        0   140
#> [432,]  76   8      1          0        1   141
#> [433,]  74  19      1          4        1   200
#> [434,]  73   6      0          6        1   114
#> [435,]  75  23      1         14        1   110
#> [436,]  74   2      0        180        0   190
#> [437,]  72   4      0         85        1   120
#> [438,]  72   4      1          3        0   160
#> [439,]  76  17      1          0        1   200
#> [440,]  73   4      1          3        1   125
#> [441,]  76  13      1         10        0   110
#> [442,]  75   4      1          0        1   122
#> [443,]  75   0      0          0        1   130
#> [444,]  75  12      0         12        1   160
#> [445,]  74   8      1          0        1   105
#> [446,]  76  13      1          8        1   148
#> [447,]  75   4      1          2        1   188
#> [448,]  74   6      0        180        0   160
#> [449,]  76   4      0          4        1   155
#> [450,]  75   1      0          1        1   125
#> [451,]  74   2      0        180        0   111
#> [452,]  73   1      0         52        1   105
#> [453,]  73   0      0        180        0   156
#> [454,]  78  12      1         11        1   160
#> [455,]  76   5      1          0        1   167
#> [456,]  75   9      0        180        1   140
#> [457,]  77   5      1          0        0   123
#> [458,]  77  12      1          9        1   100
#> [459,]  73  10      1          9        0   146
#> [460,]  77  12      0        180        0   130
#> [461,]  77   1      1          0        1    90
#> [462,]  76  12      1         11        1   120
#> [463,]  78   5      1          0        1   170
#> [464,]  74   6      0         79        1   140
#> [465,]  74   9      1          8        0   200
#> [466,]  75   6      0        180        0   150
#> [467,]  79  10      1          8        0   190
#> [468,]  78  18      0         18        1   144
#> [469,]  77   3      0        180        0   110
#> [470,]  73   8      1          1        1   162
#> [471,]  73  11      1          2        1   110
#> [472,]  74   2      0        180        0   100
#> [473,]  74  15      0        180        1   172
#> [474,]  78   8      1          6        1   110
#> [475,]  79   6      0        180        0   170
#> [476,]  80  10      1          6        1   147
#> [477,]  75   5      0        119        1   150
#> [478,]  75  12      1          1        1   120
#> [479,]  78  15      0        180        1   270
#> [480,]  80   8      0          8        1   120
#> [481,]  75  13      1          6        0   150
#> [482,]  74  10      1          8        0   135
#> [483,]  79   4      0         80        0   145
#> [484,]  78  12      1          9        0   150
#> [485,]  75   4      1          0        0   212
#> [486,]  77   2      1          0        1   143
#> [487,]  76  11      1          0        0   120
#> [488,]  75   3      0          3        0     0
#> [489,]  76   7      0         29        1   150
#> [490,]  77  24      0         24        1   160
#> [491,]  79   8      0         32        1   120
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  76   3      1          0        1   140
#> [495,]  78  11      1          1        1   140
#> [496,]  79   2      1          0        1   121
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  77   6      0          6        1   107
#> [504,]  75   2      1          1        1   204
#> [505,]  78  11      0        180        1   135
#> [506,]  76   1      0          1        1   140
#> [507,]  77  31      1          3        1   161
#> [508,]  79   3      0          3        0   120
#> [509,]  77   7      0        180        1   170
#> [510,]  77   6      0          6        1   144
#> [511,]  79   4      1          0        1   120
#> [512,]  80  15      1         12        1   150
#> [513,]  77   9      1          4        0   141
#> [514,]  82   5      0          8        1   120
#> [515,]  80  40      1          0        1   138
#> [516,]  78   4      0         59        1   112
#> [517,]  76   7      0        161        0   151
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  80   9      0        118        1   186
#> [521,]  80   6      0        173        1   160
#> [522,]  78  32      0        180        1   130
#> [523,]  79   1      0         37        1   140
#> [524,]  81   3      0        180        0   184
#> [525,]  81   2      0        175        0   172
#> [526,]  78   7      0          7        1   147
#> [527,]  77  13      1          0        1   190
#> [528,]  80   5      1          1        1   108
#> [529,]  76   1      0        166        0   131
#> [530,]  81   4      1          1        1   104
#> [531,]  78  20      1          0        1   109
#> [532,]  78   3      1          1        1   152
#> [533,]  77  10      1          8        1   130
#> [534,]  82   3      1          1        1   144
#> [535,]  77   5      0         85        0   188
#> [536,]  80   6      1          0        1   119
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  77   4      0        180        1    98
#> [540,]  81   1      0        108        0   129
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  79   4      0          4        1   121
#> [544,]  82   5      0        180        0   110
#> [545,]  83   4      0        103        0    97
#> [546,]  81  11      1          8        0   160
#> [547,]  78   9      1          4        1   120
#> [548,]  82   8      1          1        0   128
#> [549,]  79   1      0        180        1   170
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  80   6      1          0        1   150
#> [555,]  80  11      1          8        0   110
#> [556,]  81   8      0        180        0   146
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  83   2      0          2        1   155
#> [562,]  82   6      0        128        1   100
#> [563,]  80   3      1          1        1   230
#> [564,]  84   5      0        180        1   203
#> [565,]  81   1      0          1        1   150
#> [566,]  84   1      0         38        1   205
#> [567,]  83   3      0        180        0   174
#> [568,]  79   9      1          8        0   150
#> [569,]  85   3      1          2        1   160
#> [570,]  80  13      1          8        1   140
#> [571,]  84   4      0         89        1   129
#> [572,]  80   2      1          0        1   130
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  82  19      0         19        0   120
#> [576,]  83   3      0        114        0    98
#> [577,]  82   0      0          2        1   100
#> [578,]  85   9      1          6        1   160
#> [579,]  81   4      0          4        0   175
#> [580,]  84  15      1         13        1   110
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  82   5      1          0        1   146
#> [584,]  83  12      1          2        1   170
#> [585,]  82   3      1          2        0   130
#> [586,]  82  15      1          0        0   183
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   3      0          3        1   140
#> [590,]  84   3      0        180        1   120
#> [591,]  81  13      0        180        0   152
#> [592,]  81   4      0        180        0   160
#> [593,]  82   1      0        180        1   193
#> [594,]  83   4      0          4        0   130
#> [595,]  86  12      1          0        1   132
#> [596,]  82  14      1         11        1   103
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  83  19      0         43        0   150
#> [600,]  86   2      0        180        1   169
#> [601,]  88  14      1          3        1   130
#> [602,]  84   7      1          2        0   148
#> [603,]  87   2      0        180        0   113
#> [604,]  84   3      0        180        1   170
#> [605,]  86   4      0         38        1   122
#> [606,]  82   4      0          4        0   130
#> [607,]  86  13      0        177        0   163
#> [608,]  85   3      0          3        1   113
#> [609,]  86   6      0          6        1   117
#> [610,]  84  13      0         62        1   100
#> [611,]  88   4      0          4        0   100
#> [612,]  83  20      1          3        1   150
#> [613,]  88   4      0          4        1   115
#> [614,]  85  22      0         22        1   184
#> [615,]  83   9      0         65        1   150
#> [616,]  86   9      1          7        1   142
#> [617,]  87   2      0        180        1   130
#> [618,]  88   3      0        115        0   110
#> [619,]  88   2      0        180        1    68
#> [620,]  87   8      0          8        1   157
#> [621,]  89   4      0          4        1   153
#> [622,]  89   5      0        119        1   140
#> [623,]  87   6      0        180        1   110
#> [624,]  87   1      0          1        0   170
#> [625,]  84   8      0        180        1   119
#> [626,]  85   8      0          8        1   136
#> [627,]  87  29      0         29        1    97
#> [628,]  87  15      1          9        1   138
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  91   8      0          8        0   100
#> [634,]  87   2      0        180        0   160
#> [635,]  87   6      1          0        0   125
#> [636,]  91  10      0        145        0   135
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  88   8      0         50        1   154
#> [640,]  90  11      1         10        1   186
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  90   5      1          0        1   125
#> [647,]  88   3      1          2        0   159
#> [648,]  89   3      1          1        1   160
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  89   2      0        168        0   118
#> [655,]  91   5      0        169        1   176
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  90  16      0         16        1   106
#> [664,]  95   8      1          5        1   150
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 115.0  180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+
#>  [41]  73.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [61]   1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+  36.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+
#>  [81]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+ 166.0+
#>  [91]  99.0   16.0+ 180.0+   7.0+   6.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+
#> [101]  28.0    6.0+   1.0    9.0+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+
#> [111] 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+  12.0+ 134.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [131] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  147.0+
#> [141] 180.0+ 180.0+ 180.0+   4.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 161.0+   3.0 
#> [161]   1.0  180.0+ 180.0+ 180.0+   3.0+  19.0  180.0+   9.0+ 172.0+  24.0 
#> [171] 180.0+   8.0  180.0+ 180.0+   1.0+ 180.0+ 180.0+ 180.0+  13.0+ 180.0+
#> [181] 180.0+ 180.0+ 169.0    7.0+   6.0  180.0+ 180.0+ 180.0+  30.0   28.0 
#> [191]  13.0+   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0  180.0+ 180.0+
#> [211]  84.0    7.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [221] 180.0+ 180.0+  14.0+  36.0  180.0+  88.0  180.0+ 180.0+ 180.0+ 180.0+
#> [231]   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0    9.0    3.0  180.0+
#> [241] 180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0  180.0+
#> [251] 180.0+  13.0  180.0+ 166.0+  14.0+   3.0    0.5+   3.0+ 180.0+   7.0+
#> [261]   8.0    5.0   16.0    1.0  180.0+ 180.0+   1.0+  18.0   11.0+ 180.0+
#> [271]  79.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+
#> [281]   8.0+   3.0  175.0  180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+
#> [291] 179.0+ 180.0+ 180.0+   0.5    7.0+ 180.0+ 180.0+ 180.0+  21.0+   1.0 
#> [301] 101.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0 
#> [311] 180.0+   0.5  180.0+ 180.0+  14.0+ 180.0+   7.0+  45.0    5.0+   3.0+
#> [321]  36.0    5.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+ 180.0+  18.0 
#> [331] 172.0+ 180.0+ 180.0+   7.0  180.0+   7.0    8.0+ 123.0  180.0+ 180.0+
#> [341]  51.0  180.0+   1.0   60.0   76.0  180.0+ 132.0  180.0+ 180.0+   7.0+
#> [351] 124.0    9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0    2.0   76.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+
#> [371] 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  13.0+ 180.0+   2.0 
#> [381] 180.0+ 180.0+ 180.0+   8.0    3.0   87.0   12.0    4.0+  58.0  180.0+
#> [391] 180.0+   3.0  180.0+ 175.0    2.0   14.0+  10.0+ 180.0+ 179.0+ 180.0+
#> [401] 180.0+  15.0  180.0+   1.0  180.0+ 180.0+   4.0+  10.0    1.0   57.0 
#> [411]   3.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+
#> [421] 180.0+   5.0   11.0+   4.0+ 180.0+ 180.0+  10.0  180.0+   3.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+
#> [441] 174.0+   4.0    0.5   12.0  180.0+ 180.0+  46.0  180.0+   4.0    1.0 
#> [451] 180.0+  52.0  180.0+  12.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+
#> [461]   1.0   12.0  180.0+  79.0  168.0+ 180.0+ 180.0+  18.0  180.0+ 180.0+
#> [471]  11.0  180.0+ 180.0+   8.0+ 180.0+  10.0  119.0   12.0  180.0+   8.0 
#> [481] 180.0+ 180.0+  80.0  180.0+   4.0+   2.0   11.0    3.0   29.0   24.0 
#> [491]  32.0   23.0    6.0    3.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0 
#> [501]  10.0+ 180.0+   6.0    2.0+ 180.0+   1.0  171.0    3.0  180.0+   6.0 
#> [511] 138.0  180.0+  71.0    8.0   40.0   59.0  161.0   10.0+ 180.0+ 118.0 
#> [521] 173.0  180.0+  37.0  180.0+ 175.0+   7.0+  22.0    5.0+ 166.0+  71.0 
#> [531]  20.0+   3.0+  10.0  180.0+  85.0    6.0    1.0  180.0+ 180.0+ 108.0 
#> [541] 125.0  180.0+   4.0  180.0+ 103.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [551]   7.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+
#> [561]   2.0  128.0    3.0+ 180.0+   1.0   38.0  180.0+ 180.0+ 180.0+ 180.0+
#> [571]  89.0  180.0+  71.0    1.0   19.0  114.0    2.0  180.0+   4.0+ 180.0+
#> [581]  12.0   16.0+   5.0+  77.0    3.0   83.0   88.0  126.0    3.0  180.0+
#> [591] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 174.0    6.0   70.0   43.0  180.0+
#> [601]  14.0  180.0+ 180.0+ 180.0+  38.0    4.0  177.0    3.0+   6.0+  62.0 
#> [611]   4.0+  20.0    4.0   22.0   65.0   11.0  180.0+ 115.0  180.0+   8.0+
#> [621]   4.0  119.0  180.0+   1.0+ 180.0+   8.0   29.0  180.0+  46.0   14.0 
#> [631]   1.0+ 180.0+   8.0  180.0+  25.0  145.0    3.0   24.0   50.0   11.0 
#> [641] 126.0  180.0+   4.0    1.0  178.0+  89.0   75.0    3.0+   1.0   33.0 
#> [651] 158.0   74.0  180.0+ 168.0  169.0  180.0+  50.0    1.0+   2.0  179.0+
#> [661]   8.0+  76.0   16.0    8.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8449268 
```
