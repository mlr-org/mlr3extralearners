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
#> min 0.00337    44   2.874 0.1397       6
#> 1se 0.07270    11   3.010 0.1411       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  35   2      0        180        0   121
#>   [8,]  35   2      1          1        1   112
#>   [9,]  37   9      0        180        1   151
#>  [10,]  38  13      1          0        1   161
#>  [11,]  38   2      0        115        0   150
#>  [12,]  36   1      0        180        1   155
#>  [13,]  35   0      0        180        1   119
#>  [14,]  36   5      1          0        1   115
#>  [15,]  33   6      1          1        1   115
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40   6      0        180        1   138
#>  [22,]  40  11      1         10        1   120
#>  [23,]  42   2      0        180        0   100
#>  [24,]  43   3      1          0        1   100
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42   4      0        180        0   162
#>  [27,]  42  15      1         13        1   125
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  42   2      0        180        1   124
#>  [31,]  44   5      1          1        0   170
#>  [32,]  45   3      0        180        1   154
#>  [33,]  41  10      1          8        0   150
#>  [34,]  44   3      0        180        0   141
#>  [35,]  41  13      1          1        0   140
#>  [36,]  45   9      1          7        0   110
#>  [37,]  45   6      0        180        1   170
#>  [38,]  43   2      0        180        1   140
#>  [39,]  45   2      0        180        1   140
#>  [40,]  46   2      1          1        0   126
#>  [41,]  47   4      1          3        0   118
#>  [42,]  45   3      0        150        0   130
#>  [43,]  45   4      1          0        0   124
#>  [44,]  43  10      0        180        0   185
#>  [45,]  47   6      1          0        1   116
#>  [46,]  46  13      1         10        0   100
#>  [47,]  44   0      1          0        1    96
#>  [48,]  45   8      1          0        1   117
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   2      1          1        1   122
#>  [51,]  46   6      1          0        1   100
#>  [52,]  45   5      0        180        1   190
#>  [53,]  46   5      1          3        0   130
#>  [54,]  46   4      0        180        1   121
#>  [55,]  44   2      0        180        0   142
#>  [56,]  46  15      0        180        1   120
#>  [57,]  47   3      1          1        1   120
#>  [58,]  48   3      0        180        0   154
#>  [59,]  48  12      1         11        0   200
#>  [60,]  47   5      1          3        1   130
#>  [61,]  46   3      1          0        1   119
#>  [62,]  49   4      0        180        0   117
#>  [63,]  47  10      0         10        1   140
#>  [64,]  50   1      1          0        1   129
#>  [65,]  48   2      1          0        0   184
#>  [66,]  50   6      1          2        1   140
#>  [67,]  49   7      1          7        1   110
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  49   2      0          2        0   105
#>  [72,]  51   1      0          1        1   145
#>  [73,]  49  15      1         11        1   160
#>  [74,]  52   2      0        180        1   170
#>  [75,]  50   7      1          0        1    92
#>  [76,]  50   4      0          4        1   100
#>  [77,]  51   3      1          2        0   113
#>  [78,]  50   9      0        180        0   130
#>  [79,]  49   7      1          4        1    90
#>  [80,]  47   6      0        180        1   162
#>  [81,]  51   8      0        180        1   140
#>  [82,]  52   2      0        180        0   155
#>  [83,]  46   3      0        180        1   120
#>  [84,]  46   1      1          1        0   145
#>  [85,]  48   7      1          0        1   110
#>  [86,]  53   8      0         36        1   160
#>  [87,]  47   2      1          1        0   110
#>  [88,]  49   9      1          3        0   102
#>  [89,]  54   6      1          3        0   129
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  10      1          6        0   122
#>  [92,]  50  14      1         13        0   170
#>  [93,]  51  25      1          1        0   202
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  51  13      0         99        1   160
#>  [99,]  49  16      0         16        0   125
#> [100,]  55   3      1          1        0   150
#> [101,]  54  23      1         10        0   131
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  50   5      1          4        1   150
#> [107,]  54   4      1          0        1   121
#> [108,]  50   3      0        174        1   153
#> [109,]  55  28      1         13        1   160
#> [110,]  49   6      1          0        1   130
#> [111,]  49   1      0          1        1   110
#> [112,]  50   7      1          1        0   156
#> [113,]  53   9      0          9        1    95
#> [114,]  50   7      1          0        1   127
#> [115,]  56   4      1          1        1   130
#> [116,]  55   1      0        180        0   127
#> [117,]  54   1      0        180        0   162
#> [118,]  54   7      1          0        1   100
#> [119,]  56   3      0        180        1   193
#> [120,]  56   2      0        180        0   132
#> [121,]  55   5      1          4        1   120
#> [122,]  52   8      0        180        0   119
#> [123,]  54   3      0        180        1   180
#> [124,]  52  16      0         16        0   152
#> [125,]  53  10      1          9        0   172
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  55   2      0        134        1   140
#> [129,]  54   3      0        180        0   128
#> [130,]  56   3      0          8        1   139
#> [131,]  55   1      0          2        0   130
#> [132,]  54   7      1          2        0   129
#> [133,]  52   9      1          3        0   170
#> [134,]  54   2      1          1        1   176
#> [135,]  57   1      0          1        1   100
#> [136,]  55  11      1          7        0   104
#> [137,]  56  14      1         11        0   130
#> [138,]  53   3      1          0        1   200
#> [139,]  57  10      0        180        1   170
#> [140,]  58   8      0          8        1   130
#> [141,]  54   5      0        180        1   108
#> [142,]  57   0      0          0        1   150
#> [143,]  59   3      1          1        0   172
#> [144,]  57   4      0        180        1   119
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  57   4      1          2        1   185
#> [148,]  53   4      0        147        1   145
#> [149,]  53   7      1          0        1   120
#> [150,]  55   3      1          2        0   140
#> [151,]  54   7      1          0        1   141
#> [152,]  56   4      0          4        0   164
#> [153,]  59  15      1         10        0   140
#> [154,]  58   9      1          0        1   180
#> [155,]  58   1      1          1        1   200
#> [156,]  56   7      1          5        1   120
#> [157,]  55   2      0          2        0   106
#> [158,]  57   1      0        180        0   148
#> [159,]  59   3      0        180        0   120
#> [160,]  58   4      1          0        1   160
#> [161,]  57   5      0        180        1   130
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   6      1          0        1   140
#> [166,]  59   4      1          0        1   152
#> [167,]  58  26      1          0        1   189
#> [168,]  61   9      0          9        1   160
#> [169,]  58   4      1          3        0   120
#> [170,]  60   0      1          0        1    80
#> [171,]  59   2      1          1        0   140
#> [172,]  61   4      1          3        0   151
#> [173,]  58   1      0          1        1   100
#> [174,]  57  13      1         10        0   110
#> [175,]  57   2      1          0        1   116
#> [176,]  57   4      1          3        0   138
#> [177,]  57  11      0        180        1   150
#> [178,]  61   3      0         17        0   143
#> [179,]  56  14      0         45        0   130
#> [180,]  58  19      1         13        1   140
#> [181,]  56  13      1          6        1   158
#> [182,]  56  18      1         11        1   165
#> [183,]  59   9      1          0        1    80
#> [184,]  55   4      1          3        1   160
#> [185,]  58  11      0        172        1   135
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  56   8      1          8        0   120
#> [189,]  61  13      1         12        1   130
#> [190,]  59  11      1          8        1   190
#> [191,]  57   1      0          1        0   126
#> [192,]  57  15      1         13        1   110
#> [193,]  59   5      1          2        0   182
#> [194,]  58   5      1          1        1   135
#> [195,]  61   8      0         77        0   120
#> [196,]  61  13      0         13        0   210
#> [197,]  58   8      1          5        0   152
#> [198,]  62   7      1          2        1   180
#> [199,]  57   3      1          0        0   100
#> [200,]  61  18      0        170        0   140
#> [201,]  61  28      1          7        0   133
#> [202,]  58   8      1          3        1   150
#> [203,]  61   7      0          7        1   150
#> [204,]  61   6      0          6        0   134
#> [205,]  57  12      1          9        1   120
#> [206,]  62   4      1          0        0   160
#> [207,]  60  17      1          8        1   140
#> [208,]  58   3      1          0        1   146
#> [209,]  62   4      1          3        0   173
#> [210,]  58   2      0         30        0   202
#> [211,]  59   1      0        180        0   155
#> [212,]  59  16      1          9        1   133
#> [213,]  63   6      0         28        1   120
#> [214,]  61   5      0          5        1   160
#> [215,]  58  11      1          9        0   179
#> [216,]  57   2      1          1        0   159
#> [217,]  62  17      1         10        1   180
#> [218,]  62   1      1          0        1   172
#> [219,]  58   7      0        180        1   150
#> [220,]  63   3      1          1        0   180
#> [221,]  63   1      0        180        1   130
#> [222,]  63   4      1          3        0   222
#> [223,]  62   3      0        180        1   105
#> [224,]  63  15      1         10        1   126
#> [225,]  64   4      0        180        0   130
#> [226,]  60  18      1         13        0   132
#> [227,]  59   8      0        180        1   140
#> [228,]  61   9      1          9        1   150
#> [229,]  58   9      1          9        0   110
#> [230,]  58   2      0        180        0   127
#> [231,]  59   4      0        180        0   196
#> [232,]  60   7      1          5        1   141
#> [233,]  60   7      0          7        0   140
#> [234,]  59   5      1          1        0   148
#> [235,]  60   7      1          1        1    90
#> [236,]  63   1      0          1        0   162
#> [237,]  62   6      0        180        0   170
#> [238,]  59   4      0          4        0   149
#> [239,]  64  10      1          9        0   160
#> [240,]  63  12      1         10        0   200
#> [241,]  59  10      0        180        1   130
#> [242,]  60   8      0         17        1   130
#> [243,]  64  12      1         11        0   160
#> [244,]  63  10      1          0        1   148
#> [245,]  63  14      1          9        0   123
#> [246,]  63   4      1          3        0   162
#> [247,]  66   3      1          1        0   127
#> [248,]  61  10      1          2        1   194
#> [249,]  64  32      1          9        1   160
#> [250,]  63  12      1          9        0   114
#> [251,]  66   5      1          0        1   110
#> [252,]  65  10      1          8        1   120
#> [253,]  64   0      0          0        1    90
#> [254,]  64  21      1         10        0   190
#> [255,]  61  12      1         11        0   154
#> [256,]  64   9      0        180        0   150
#> [257,]  65   3      0        180        1   190
#> [258,]  63  16      1          7        1   110
#> [259,]  64   7      0        180        1   120
#> [260,]  66   6      1          1        1   130
#> [261,]  62   3      1          1        1   199
#> [262,]  65   6      0          9        0   112
#> [263,]  63   5      1          4        0   170
#> [264,]  63   2      1          1        0   180
#> [265,]  62  13      1         11        0   180
#> [266,]  64   2      0          2        0   201
#> [267,]  62   9      0        180        0   145
#> [268,]  61  14      1          5        0   140
#> [269,]  63   3      1          2        0   120
#> [270,]  64  19      1          8        1   160
#> [271,]  65   8      1          0        1   140
#> [272,]  65  15      1         11        1   160
#> [273,]  64  13      1         12        1   150
#> [274,]  66   7      1          0        1   115
#> [275,]  66  13      1          0        0   118
#> [276,]  64  14      1         13        1   150
#> [277,]  65   3      0          3        0   105
#> [278,]  64   0      0          0        1   148
#> [279,]  66   3      1          0        1   135
#> [280,]  65   2      1          1        1   170
#> [281,]  68   1      0        180        1   166
#> [282,]  63   7      1          0        0   162
#> [283,]  68   5      0          5        1    90
#> [284,]  64   1      0          1        1   120
#> [285,]  68  18      0        180        1   260
#> [286,]  65  17      1         14        1   100
#> [287,]  65  18      1          3        0   120
#> [288,]  63   1      1          0        1   155
#> [289,]  67  11      0         11        0   150
#> [290,]  65   4      1          2        1   145
#> [291,]  66  15      1         13        1   160
#> [292,]  65  11      1          6        0   130
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  66   3      0          3        1   138
#> [296,]  69   1      1          0        0   170
#> [297,]  68  10      1         10        1   150
#> [298,]  67   7      1          4        1   130
#> [299,]  63   2      1          0        0    99
#> [300,]  67   2      0        180        0   184
#> [301,]  65  10      1          1        1   148
#> [302,]  67  12      1         12        0   160
#> [303,]  65   4      1          1        0   130
#> [304,]  64   4      0        179        0   160
#> [305,]  64  11      0         11        0   125
#> [306,]  64   4      0        180        1   140
#> [307,]  64   0      1          0        1   118
#> [308,]  67   2      0         18        0   131
#> [309,]  66   7      1          5        1   131
#> [310,]  66   4      0        180        0   177
#> [311,]  68   4      1          0        1   160
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69   8      0         93        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  66   6      0        180        0   140
#> [317,]  68  18      1          0        1   160
#> [318,]  65   6      0        101        1   115
#> [319,]  68   4      0          4        1   190
#> [320,]  71   3      0          5        0   112
#> [321,]  70   7      1          0        1   190
#> [322,]  68   7      0        150        0   210
#> [323,]  71  20      1          0        1   160
#> [324,]  67   2      0        180        0   128
#> [325,]  66   9      1          3        1   151
#> [326,]  66   1      1          1        1   165
#> [327,]  69   8      0        180        1   153
#> [328,]  66   4      0        180        0   130
#> [329,]  67   6      1          4        0   130
#> [330,]  68  18      1         14        1   170
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  69   8      0        180        1   180
#> [337,]  66   2      0          2        1   228
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  69   3      0          3        1   130
#> [342,]  70  22      1         13        0   103
#> [343,]  67   1      0         36        1   104
#> [344,]  68   6      0        180        0   145
#> [345,]  72   3      1          0        1   132
#> [346,]  72   7      0          7        1   110
#> [347,]  67   3      0        180        0   110
#> [348,]  66   2      1          1        0   123
#> [349,]  68  18      0         18        1   100
#> [350,]  67  14      0        172        1   140
#> [351,]  69  11      1          0        1   120
#> [352,]  66   2      0        180        0   130
#> [353,]  69   4      1          3        0   132
#> [354,]  68   2      0          7        1   130
#> [355,]  67  13      1          9        0   130
#> [356,]  70   3      0        123        0   130
#> [357,]  70   9      0        180        1   142
#> [358,]  72   5      1          4        0   170
#> [359,]  68   3      0         19        0   135
#> [360,]  69   1      0          1        1   110
#> [361,]  67   1      0          1        1    60
#> [362,]  67   4      0         60        1   136
#> [363,]  69   5      0         76        0   120
#> [364,]  68  10      1          8        1   160
#> [365,]  66  24      1         13        0   130
#> [366,]  70  35      1          0        1   105
#> [367,]  72  30      1          0        1   145
#> [368,]  70   7      0          7        0   102
#> [369,]  68   7      1          2        0   135
#> [370,]  73  20      1          0        1   170
#> [371,]  69  10      1          6        1   120
#> [372,]  72  19      1          8        0   120
#> [373,]  67   5      1          0        1   147
#> [374,]  72   2      0          2        1   100
#> [375,]  67   4      1          1        0   134
#> [376,]  72   6      1          5        0   115
#> [377,]  71   1      0        173        1   188
#> [378,]  70   3      0        180        0   121
#> [379,]  69   3      0        180        0   220
#> [380,]  68   4      1          3        0   210
#> [381,]  69  16      1         10        1   140
#> [382,]  69   8      1          1        0   164
#> [383,]  68   7      0        180        1   130
#> [384,]  72  16      1          1        1   130
#> [385,]  70   4      0        180        0   180
#> [386,]  69   1      1          0        0   155
#> [387,]  73   6      1          0        1   270
#> [388,]  72   8      1          1        1   150
#> [389,]  71   2      1          0        1   180
#> [390,]  68  15      1         13        1   130
#> [391,]  70   3      0          3        1   159
#> [392,]  70  13      1          9        0   100
#> [393,]  72   6      0        180        1   130
#> [394,]  74   8      1          0        1    85
#> [395,]  73   4      0        180        1   154
#> [396,]  69   2      1          0        1   110
#> [397,]  71   3      1          1        0   150
#> [398,]  71  15      1         11        0   165
#> [399,]  71  20      1         10        0   140
#> [400,]  74   0      1          0        1    90
#> [401,]  70   5      1          0        1   190
#> [402,]  71   8      1          7        0   149
#> [403,]  73  10      1          8        0   106
#> [404,]  69  12      1          1        1   149
#> [405,]  74   4      0          4        0   120
#> [406,]  73   4      0         58        1   160
#> [407,]  72   5      1          3        1   160
#> [408,]  70   3      0        180        1   154
#> [409,]  73   6      0        180        0   110
#> [410,]  72  15      1          0        1   150
#> [411,]  71   7      1          2        0   143
#> [412,]  74   3      0          3        1   150
#> [413,]  73  17      1         11        0   140
#> [414,]  69   2      1          1        1    80
#> [415,]  70   4      1          0        1   140
#> [416,]  72  10      1          8        1   153
#> [417,]  69   7      0        180        1   144
#> [418,]  70   8      0          8        0   120
#> [419,]  71  10      1          9        1   120
#> [420,]  75   1      0          1        0   133
#> [421,]  75   2      1          1        0   145
#> [422,]  73  10      1          9        1   146
#> [423,]  74  15      1          9        1   179
#> [424,]  71   2      0         10        1   112
#> [425,]  73   1      0          1        1    80
#> [426,]  75   9      1          7        0   140
#> [427,]  75  13      1          1        1   130
#> [428,]  71  11      1          8        0   110
#> [429,]  72  15      1         12        1   120
#> [430,]  73  10      1          8        0   120
#> [431,]  70   7      1          4        0   184
#> [432,]  72   1      1          1        0   168
#> [433,]  72  11      0         11        1   140
#> [434,]  70   3      0          3        0   150
#> [435,]  76  25      1         12        1   170
#> [436,]  73  12      1         12        1   140
#> [437,]  72   4      1          0        1   197
#> [438,]  71   3      1          0        0   144
#> [439,]  73   5      0        180        0   126
#> [440,]  76   5      0          5        1   130
#> [441,]  77  11      0         11        1   150
#> [442,]  75   3      1          1        0   180
#> [443,]  72   7      1          2        0   142
#> [444,]  73  15      0         15        1   160
#> [445,]  73  10      1         10        0   124
#> [446,]  74   7      0        180        1   150
#> [447,]  74   3      0          3        1   128
#> [448,]  76   8      1          0        1   141
#> [449,]  74  19      1          4        1   200
#> [450,]  72   4      0         85        1   120
#> [451,]  72   4      1          3        0   160
#> [452,]  76  17      1          0        1   200
#> [453,]  73   4      1          3        1   125
#> [454,]  75   4      1          0        1   122
#> [455,]  75   7      0          7        0   190
#> [456,]  75  12      0         12        1   160
#> [457,]  74   8      1          0        1   105
#> [458,]  75   4      1          2        1   188
#> [459,]  75   1      0          1        1   125
#> [460,]  73   1      0         52        1   105
#> [461,]  72   5      0        180        0   120
#> [462,]  78  12      1         11        1   160
#> [463,]  74   8      1          8        1   170
#> [464,]  73  33      1         12        1   175
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77   1      1          0        1    90
#> [468,]  76  12      1         11        1   120
#> [469,]  74   6      0         79        1   140
#> [470,]  75   6      0        180        0   150
#> [471,]  79  10      1          8        0   190
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  73  11      1          2        1   110
#> [478,]  74   2      0        180        0   100
#> [479,]  78   7      0          7        1   133
#> [480,]  78  32      1          9        1   198
#> [481,]  79   6      0        180        0   170
#> [482,]  80  10      1          6        1   147
#> [483,]  78  13      1          5        0   130
#> [484,]  75  12      1          1        1   120
#> [485,]  78  15      0        180        1   270
#> [486,]  80   8      0          8        1   120
#> [487,]  76   1      0          1        1    83
#> [488,]  79   4      0         80        0   145
#> [489,]  78  12      1          9        0   150
#> [490,]  78   2      1          1        0   130
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  78  10      0        180        1   130
#> [494,]  76   7      0         29        1   150
#> [495,]  79   8      0         32        1   120
#> [496,]  80   9      0         23        1   128
#> [497,]  80   6      0          6        1   150
#> [498,]  78   6      1          0        1   240
#> [499,]  79  11      0        180        0   160
#> [500,]  79   2      1          0        1   121
#> [501,]  78  14      1          0        1   140
#> [502,]  81   1      0          1        0   130
#> [503,]  76   4      0          4        1   160
#> [504,]  79   4      0          4        1   125
#> [505,]  76  10      1          8        0   180
#> [506,]  77   6      0          6        1   107
#> [507,]  80   3      1          0        1   120
#> [508,]  75   2      1          1        1   204
#> [509,]  78  11      0        180        1   135
#> [510,]  76   1      0          1        1   140
#> [511,]  77  31      1          3        1   161
#> [512,]  76   1      0          1        1    90
#> [513,]  77   7      0        180        1   170
#> [514,]  77   6      0          6        1   144
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  79  10      0         10        1   120
#> [524,]  80  15      1          0        1    90
#> [525,]  81   4      1          2        1   126
#> [526,]  80   6      0        173        1   160
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  81   2      0        175        0   172
#> [531,]  78   7      0          7        1   147
#> [532,]  77  13      1          0        1   190
#> [533,]  78  15      0         15        0   165
#> [534,]  80   5      1          1        1   108
#> [535,]  78  26      1          5        0   194
#> [536,]  81   4      1          1        1   104
#> [537,]  80   1      0          1        0   100
#> [538,]  78   3      1          1        1   152
#> [539,]  82   3      1          1        1   144
#> [540,]  77   5      0         85        0   188
#> [541,]  80   2      1          1        0   168
#> [542,]  79   6      0          6        0   152
#> [543,]  80   5      0          5        1   130
#> [544,]  79  10      0        180        1   150
#> [545,]  77   4      0        180        1    98
#> [546,]  78  12      0        180        0   134
#> [547,]  79   1      0        125        0   193
#> [548,]  84  22      1         10        0   180
#> [549,]  83   9      1          5        1   170
#> [550,]  82   5      0        180        0   110
#> [551,]  83   5      0        180        0   148
#> [552,]  81   5      0        177        0    41
#> [553,]  80  11      1          8        0   170
#> [554,]  79   4      0          4        1   183
#> [555,]  78   9      1          4        1   120
#> [556,]  82   8      1          1        0   128
#> [557,]  79   1      0        180        1   170
#> [558,]  81  15      0        180        1   140
#> [559,]  80   7      1          0        1   146
#> [560,]  84   5      1          1        1    85
#> [561,]  81  20      1          9        0   170
#> [562,]  83   8      0          8        0   115
#> [563,]  80   6      1          0        1   150
#> [564,]  80   8      1          7        0   160
#> [565,]  79   0      1          0        1    96
#> [566,]  81   2      1          1        0   198
#> [567,]  82   6      0        128        1   100
#> [568,]  84   4      0        167        0   198
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  81   4      0         90        1   138
#> [574,]  79   9      1          8        0   150
#> [575,]  85   3      1          2        1   160
#> [576,]  80  13      1          8        1   140
#> [577,]  84   4      0         89        1   129
#> [578,]  79   4      0          4        1    60
#> [579,]  83   9      0        180        0   198
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   4      0          4        0   175
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  82   5      1          0        1   146
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  81  19      1         14        0   120
#> [592,]  82   3      1          2        0   130
#> [593,]  82  15      1          0        0   183
#> [594,]  83   7      0        126        0   135
#> [595,]  84   6      0        165        0   145
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  81   2      1          0        1   118
#> [601,]  83   9      0        180        1   149
#> [602,]  83   4      0          4        0   130
#> [603,]  87   2      0          5        1   137
#> [604,]  86   6      1          0        1   140
#> [605,]  84  16      0         70        1   150
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  83  10      1          0        1   190
#> [609,]  83  13      1         12        0   170
#> [610,]  87   2      0        180        0   113
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  82   4      0          4        0   130
#> [614,]  86  13      0        177        0   163
#> [615,]  85   3      0          3        1   113
#> [616,]  84  13      0         62        1   100
#> [617,]  88   4      0          4        0   100
#> [618,]  88   4      0          4        1   115
#> [619,]  85  22      0         22        1   184
#> [620,]  83   9      0         65        1   150
#> [621,]  86   9      1          7        1   142
#> [622,]  87   2      0        180        1   130
#> [623,]  83   3      0          3        1   130
#> [624,]  86  15      1          8        1   109
#> [625,]  89   4      0          4        1   153
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  85   8      0          8        1   136
#> [630,]  87  29      0         29        1    97
#> [631,]  87  15      1          9        1   138
#> [632,]  89  10      0         46        1   170
#> [633,]  88   1      0          1        0   135
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  88   3      1          2        0   159
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  89  52      0         52        1   130
#> [655,]  92   7      0          7        1   110
#> [656,]  89   4      0          4        1   159
#> [657,]  90  18      0        180        0   188
#> [658,]  91   4      1          0        1   120
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  95   8      1          5        1   150
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [11] 115.0  180.0+ 180.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 150.0  180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+   5.0+ 161.0+
#>  [51] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [71]   2.0    1.0  179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0  180.0+ 180.0+ 180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+  99.0   16.0+ 180.0+
#> [101] 152.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+
#> [111]   1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0 
#> [131]   2.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [141] 180.0+   0.5  180.0+ 180.0+  15.0  166.0+   4.0+ 147.0+ 180.0+ 180.0+
#> [151] 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5 
#> [171] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0   19.0 
#> [181] 180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0    8.0  180.0+ 180.0+
#> [191]   1.0+  15.0  180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0 
#> [201]  94.0  180.0+   7.0    6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0 
#> [211] 180.0+ 180.0+  28.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0  180.0+
#> [231] 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0  180.0+   4.0+ 167.0  180.0+
#> [241] 180.0+  17.0   12.0  180.0+  14.0+ 180.0+   3.0+  88.0  180.0+  12.0 
#> [251] 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [261] 180.0+   9.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0+ 103.0 
#> [271]  15.0  180.0+  13.0  179.0+ 166.0+  14.0+   3.0    0.5+   3.0+ 175.0+
#> [281] 180.0+   7.0+   5.0    1.0  180.0+ 180.0+ 123.0+   1.0+  11.0+   4.0+
#> [291] 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0   10.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+  12.0  180.0+ 179.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+
#> [311] 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+  18.0+ 101.0    4.0    5.0 
#> [321]   7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   6.0  180.0+
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0   45.0    5.0+ 103.0 
#> [341]   3.0+ 180.0+  36.0  180.0+ 180.0+   7.0  180.0+   2.0+  18.0  172.0+
#> [351] 180.0+ 180.0+ 180.0+   7.0   13.0+ 123.0  180.0+ 180.0+  19.0    1.0 
#> [361]   1.0   60.0   76.0   10.0+ 180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0 
#> [371] 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+
#> [381]  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  15.0 
#> [391]   3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0    0.5 
#> [401] 180.0+   8.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+
#> [411] 180.0+   3.0  180.0+   2.0  180.0+  10.0+ 180.0+   8.0+ 179.0+   1.0 
#> [421] 180.0+ 180.0+ 180.0+  10.0    1.0  180.0+  13.0  180.0+ 180.0+  10.0 
#> [431] 104.0+   1.0   11.0    3.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+   5.0 
#> [441]  11.0+ 180.0+   7.0   15.0+  10.0  180.0+   3.0  180.0+ 180.0+  85.0 
#> [451] 180.0+  17.0+ 180.0+   4.0    7.0   12.0  180.0+  46.0    1.0   52.0 
#> [461] 180.0+  12.0    8.0   33.0  180.0+ 180.0+   1.0   12.0   79.0  180.0+
#> [471] 180.0+ 176.0+  18.0  180.0+  47.0  180.0+  11.0  180.0+   7.0   32.0 
#> [481] 180.0+  10.0  172.0   12.0  180.0+   8.0    1.0   80.0  180.0+ 180.0+
#> [491]   4.0+   2.0  180.0+  29.0   32.0   23.0    6.0  180.0+ 180.0+ 180.0+
#> [501] 180.0+   1.0    4.0    4.0   10.0+   6.0    3.0+   2.0+ 180.0+   1.0 
#> [511] 171.0    1.0  180.0+   6.0  180.0+ 180.0+  71.0    8.0   40.0   59.0 
#> [521]  17.0  161.0   10.0+ 180.0+  93.0  173.0  180.0+  37.0  180.0+ 175.0+
#> [531]   7.0+  22.0   15.0+   5.0+ 171.0+  71.0    1.0    3.0+ 180.0+  85.0 
#> [541]  10.0    6.0+   5.0  180.0+ 180.0+ 180.0+ 125.0  180.0+   9.0+ 180.0+
#> [551] 180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [561]  20.0    8.0+ 180.0+ 180.0+   0.5  180.0+ 128.0  167.0  180.0+   4.0 
#> [571]  38.0  180.0+  90.0  180.0+ 180.0+ 180.0+  89.0    4.0  180.0+ 180.0+
#> [581] 154.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0    5.0+ 180.0+  77.0 
#> [591] 180.0+   3.0   83.0  126.0  165.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+   4.0+   5.0    6.0   70.0   43.0  180.0+ 180.0+  13.0  180.0+
#> [611] 180.0+  38.0    4.0  177.0    3.0+  62.0    4.0+   4.0   22.0   65.0 
#> [621]  11.0  180.0+   3.0+ 180.0+   4.0  119.0  180.0+   1.0+   8.0   29.0 
#> [631] 180.0+  46.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0    3.0   24.0 
#> [641]  11.0  126.0  180.0+ 180.0+   4.0  178.0+  36.0   89.0   75.0   33.0 
#> [651] 158.0  168.0  169.0   52.0    7.0    4.0  180.0+   4.0    1.0+   2.0 
#> [661] 179.0+ 180.0+  16.0   67.0    8.0   53.0    7.0+  69.0  180.0+   3.0 
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
#>   0.8587386 
```
