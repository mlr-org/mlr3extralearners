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
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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
#> min 0.00313    45   2.545 0.1128       6
#> 1se 0.06153    13   2.658 0.1261       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  38  13      1          0        1   161
#>   [6,]  36   1      0        180        1   155
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  16      1         10        0   160
#>   [9,]  38  12      1         11        1    92
#>  [10,]  42   3      1          1        1   130
#>  [11,]  37   1      1          0        1   146
#>  [12,]  40   2      1          1        1   148
#>  [13,]  42   2      0        180        1   100
#>  [14,]  38   5      1          3        0   125
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40   6      0        180        1   138
#>  [17,]  42   2      0        180        0   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  40   3      1          1        0   170
#>  [21,]  43   2      1          1        1   116
#>  [22,]  42   2      0        180        1   124
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  44   3      0        180        0   141
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  46  15      0        180        0   120
#>  [32,]  47   4      1          3        0   118
#>  [33,]  44   3      1          0        1   180
#>  [34,]  46   7      1          2        0   166
#>  [35,]  43  29      0        180        1   180
#>  [36,]  45   4      1          0        0   124
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  43   3      1          0        1   124
#>  [40,]  49   5      0         73        1   136
#>  [41,]  45   5      0          5        0   141
#>  [42,]  46   2      1          1        1   122
#>  [43,]  47   2      0        180        0   108
#>  [44,]  44   9      1          8        1   135
#>  [45,]  45   5      0        180        1   190
#>  [46,]  46   4      0        180        1   121
#>  [47,]  46  15      0        180        1   120
#>  [48,]  47   3      1          1        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  47   5      1          3        1   130
#>  [51,]  47   9      1          6        0   170
#>  [52,]  46   3      1          0        1   119
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  46   9      1          9        1   122
#>  [57,]  50   7      0        180        1   110
#>  [58,]  51   1      0          1        1   145
#>  [59,]  49  15      1         11        1   160
#>  [60,]  47   2      0        180        0   150
#>  [61,]  46   6      1          0        1   156
#>  [62,]  52   2      0        180        1   170
#>  [63,]  50   7      1          0        1    92
#>  [64,]  51   3      1          2        0   113
#>  [65,]  50   1      1          0        0   150
#>  [66,]  47   8      0        180        0   160
#>  [67,]  47   6      0        180        1   162
#>  [68,]  51   8      0        180        1   140
#>  [69,]  53   8      0         36        1   160
#>  [70,]  48  17      1         10        0   111
#>  [71,]  52   4      1          4        0   152
#>  [72,]  49   9      1          3        0   102
#>  [73,]  49  15      0        180        1   160
#>  [74,]  54  17      1         12        1   102
#>  [75,]  53   5      0         77        0   159
#>  [76,]  53   7      1          0        0   199
#>  [77,]  51   3      1          1        0   140
#>  [78,]  50   2      0          5        1   106
#>  [79,]  50  10      1          6        0   122
#>  [80,]  53   8      1          7        0   160
#>  [81,]  48   3      1          2        0   150
#>  [82,]  51  25      1          1        0   202
#>  [83,]  49   5      1          2        1   150
#>  [84,]  48   6      0        180        0   160
#>  [85,]  48  11      1         10        0   120
#>  [86,]  53   4      1          0        1   156
#>  [87,]  51  13      0         99        1   160
#>  [88,]  54   9      1          0        1   138
#>  [89,]  54  23      1         10        0   131
#>  [90,]  52   7      1          2        0   154
#>  [91,]  55   6      1          2        1   114
#>  [92,]  55   4      1          2        0   150
#>  [93,]  52   4      0        180        1   180
#>  [94,]  51  13      1         11        0   145
#>  [95,]  50   3      0        174        1   153
#>  [96,]  55  28      1         13        1   160
#>  [97,]  49   6      1          0        1   130
#>  [98,]  50   7      1          1        0   156
#>  [99,]  53   9      0          9        1    95
#> [100,]  53   8      1          0        1   130
#> [101,]  52   5      0        175        1   117
#> [102,]  55   1      0        180        0   127
#> [103,]  55   2      0          2        0   145
#> [104,]  54   1      0        180        0   162
#> [105,]  54   7      1          0        1   100
#> [106,]  56   3      0        180        1   193
#> [107,]  56   2      0        180        0   132
#> [108,]  55   5      1          4        1   120
#> [109,]  55   6      0        180        0   170
#> [110,]  52  16      0         16        0   152
#> [111,]  53  10      1          9        0   172
#> [112,]  53   4      0        180        1   150
#> [113,]  55   6      0        180        1   100
#> [114,]  55   6      1          5        1   138
#> [115,]  55   2      0        134        1   140
#> [116,]  54   3      0        180        0   128
#> [117,]  56   3      0          8        1   139
#> [118,]  55   1      0          2        0   130
#> [119,]  57   3      0          3        0   120
#> [120,]  54   7      1          2        0   129
#> [121,]  54   2      1          1        0   135
#> [122,]  52   9      1          3        0   170
#> [123,]  54   2      1          1        1   176
#> [124,]  57   5      1          3        1   138
#> [125,]  57   1      0        180        1   156
#> [126,]  57   1      0          1        1   100
#> [127,]  56   4      1          0        1   140
#> [128,]  52   2      0        180        0   140
#> [129,]  55  11      1          7        0   104
#> [130,]  56  14      1         11        0   130
#> [131,]  53   3      1          0        1   200
#> [132,]  57  10      0        180        1   170
#> [133,]  58   8      0          8        1   130
#> [134,]  54   5      0        180        1   108
#> [135,]  55   3      1          1        1   156
#> [136,]  57   0      0          0        1   150
#> [137,]  53  21      1         13        1   130
#> [138,]  59   3      1          1        0   172
#> [139,]  57   4      0        180        1   119
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  53   4      0        147        1   145
#> [147,]  57  11      1         10        1   129
#> [148,]  55   3      1          2        0   140
#> [149,]  55   5      0          5        1   131
#> [150,]  54   7      1          0        1   141
#> [151,]  56   4      0          4        0   164
#> [152,]  58   9      1          0        1   180
#> [153,]  56   7      1          5        1   120
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  59   3      0        180        0   120
#> [157,]  58   4      1          0        1   160
#> [158,]  57   2      0          2        1   120
#> [159,]  60   5      1          1        0   138
#> [160,]  57   5      0        180        1   130
#> [161,]  55   5      1          0        1   160
#> [162,]  59   6      1          0        1   140
#> [163,]  59   4      1          0        1   152
#> [164,]  58  26      1          0        1   189
#> [165,]  61   9      0          9        1   160
#> [166,]  58   4      1          3        0   120
#> [167,]  60   0      1          0        1    80
#> [168,]  59   2      1          1        0   140
#> [169,]  61   4      1          3        0   151
#> [170,]  61   9      1          8        0   150
#> [171,]  58   1      0          1        1   100
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  57   4      1          3        0   138
#> [176,]  57  11      0        180        1   150
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  58  19      1         13        1   140
#> [181,]  55   4      1          3        1   160
#> [182,]  61   4      1          0        1   115
#> [183,]  61  13      1         12        1   130
#> [184,]  57  15      1         13        1   110
#> [185,]  59   5      1          2        0   182
#> [186,]  59  10      0        180        0   160
#> [187,]  61  13      0         13        0   210
#> [188,]  58   8      1          5        0   152
#> [189,]  62  10      1          0        1   153
#> [190,]  62   7      1          2        1   180
#> [191,]  61  18      0        170        0   140
#> [192,]  61  28      1          7        0   133
#> [193,]  58   8      1          3        1   150
#> [194,]  61   7      0          7        1   150
#> [195,]  60   7      0          7        0   147
#> [196,]  59  13      1          2        0   198
#> [197,]  57  12      1          9        1   120
#> [198,]  60  17      1          8        1   140
#> [199,]  62   4      1          3        0   173
#> [200,]  58   2      0         30        0   202
#> [201,]  59  16      1          9        1   133
#> [202,]  61   5      0          5        1   110
#> [203,]  61   5      0          5        1   160
#> [204,]  58  11      1          9        0   179
#> [205,]  57   2      1          1        0   159
#> [206,]  62  17      1         10        1   180
#> [207,]  58   7      0        180        1   150
#> [208,]  63   3      1          1        0   180
#> [209,]  63   1      0        180        1   130
#> [210,]  63   4      1          3        0   222
#> [211,]  63   4      0        180        1   190
#> [212,]  64   4      0        180        0   130
#> [213,]  63   4      1          1        0   155
#> [214,]  60  18      1         13        0   132
#> [215,]  62   7      0          7        0   150
#> [216,]  58   2      0        180        0   127
#> [217,]  59   4      0        180        0   196
#> [218,]  60   7      0          7        0   140
#> [219,]  59   5      1          1        0   148
#> [220,]  62   6      0        180        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  63  12      1         10        0   200
#> [223,]  59  10      0        180        1   130
#> [224,]  60   8      0         17        1   130
#> [225,]  61   6      1          1        1   117
#> [226,]  64  12      1         11        0   160
#> [227,]  64   6      1          0        1   140
#> [228,]  63  10      1          0        1   148
#> [229,]  65  36      1         11        0   140
#> [230,]  64  32      1          9        1   160
#> [231,]  63   7      0        180        0   120
#> [232,]  65   8      1          0        0   168
#> [233,]  65  10      1          8        1   120
#> [234,]  64   0      0          0        1    90
#> [235,]  60   6      0        180        0   130
#> [236,]  64  21      1         10        0   190
#> [237,]  61  12      1         11        0   154
#> [238,]  64   9      0        180        0   150
#> [239,]  61   4      0        180        1   113
#> [240,]  65   3      0        180        1   190
#> [241,]  64   7      0        180        1   120
#> [242,]  66   6      1          1        1   130
#> [243,]  63  12      0         12        1   150
#> [244,]  62   3      1          1        1   199
#> [245,]  65   6      0          9        0   112
#> [246,]  65   3      1          0        1    80
#> [247,]  63   5      1          4        0   170
#> [248,]  63   2      1          1        0   180
#> [249,]  62  13      1         11        0   180
#> [250,]  67  11      0         11        1   100
#> [251,]  64   2      0          2        0   201
#> [252,]  66  18      1          5        0   142
#> [253,]  62   9      0        180        0   145
#> [254,]  63   9      1          8        1   160
#> [255,]  63   3      1          2        0   120
#> [256,]  63   2      1          0        0   140
#> [257,]  64  19      1          8        1   160
#> [258,]  65   8      1          0        1   140
#> [259,]  67   6      0        180        1   170
#> [260,]  65  15      1         11        1   160
#> [261,]  68   5      1          4        1   150
#> [262,]  64  13      1         12        1   150
#> [263,]  65   3      0          3        0   105
#> [264,]  64   0      0          0        1   148
#> [265,]  66   6      1          0        1   140
#> [266,]  65   2      1          1        1   170
#> [267,]  68   1      0        180        1   166
#> [268,]  63   7      1          0        0   162
#> [269,]  67   8      1          1        1   130
#> [270,]  68   5      0          5        1    90
#> [271,]  64   1      0          1        1   120
#> [272,]  68  18      0        180        1   260
#> [273,]  65  17      1         14        1   100
#> [274,]  65  18      1          3        0   120
#> [275,]  63   1      1          0        1   155
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
#> [286,]  65  11      1          6        0   130
#> [287,]  69   6      0        180        1   100
#> [288,]  66   9      1          8        0   130
#> [289,]  63   8      0        180        1   120
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  67   1      0        180        1   160
#> [293,]  65   1      1          0        0   133
#> [294,]  63   2      1          0        0    99
#> [295,]  67   2      0        180        0   184
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  66   4      0        180        1   130
#> [299,]  70  15      1         12        1   132
#> [300,]  64  11      0         11        0   125
#> [301,]  64   4      0        180        1   140
#> [302,]  64   0      1          0        1   118
#> [303,]  66   7      1          5        1   131
#> [304,]  66   4      0        180        0   177
#> [305,]  68   4      1          0        1   160
#> [306,]  69   4      1          3        1   150
#> [307,]  65  13      1         12        1   130
#> [308,]  69   8      0         93        0   140
#> [309,]  64  21      0         21        1   155
#> [310,]  71  20      1          0        1   160
#> [311,]  67   2      0        180        0   128
#> [312,]  66   1      1          1        1   165
#> [313,]  70   4      1          0        1   180
#> [314,]  70  14      0        171        0   166
#> [315,]  67   6      1          4        0   130
#> [316,]  68  18      1         14        1   170
#> [317,]  69   0      0          0        1   148
#> [318,]  65   2      0        180        0   130
#> [319,]  68   7      1          0        1   150
#> [320,]  69   3      1          2        0   151
#> [321,]  65  14      1         13        1   150
#> [322,]  69   8      0        180        1   180
#> [323,]  71   7      0          7        0   230
#> [324,]  71   6      0         45        1   158
#> [325,]  69   3      0          3        1   130
#> [326,]  67   5      0          5        0   130
#> [327,]  72   3      1          0        1   132
#> [328,]  69   8      1          7        1   108
#> [329,]  67   3      0        180        0   110
#> [330,]  66   2      1          1        0   123
#> [331,]  69  19      0        180        0   130
#> [332,]  68  18      0         18        1   100
#> [333,]  67  14      0        172        1   140
#> [334,]  69  11      1          0        1   120
#> [335,]  66   2      0        180        0   130
#> [336,]  67   7      1          4        0   122
#> [337,]  69   4      1          3        0   132
#> [338,]  69   8      1          2        0   121
#> [339,]  70   3      0        123        0   130
#> [340,]  72   5      1          4        0   170
#> [341,]  68   3      0         19        0   135
#> [342,]  69   1      0          1        1   110
#> [343,]  67   4      0         60        1   136
#> [344,]  69   5      0         76        0   120
#> [345,]  67   8      1          0        1   130
#> [346,]  72  13      1         11        1   195
#> [347,]  68  10      1          8        1   160
#> [348,]  66  24      1         13        0   130
#> [349,]  70  35      1          0        1   105
#> [350,]  72  30      1          0        1   145
#> [351,]  70   7      0          7        0   102
#> [352,]  69  10      1          6        1   120
#> [353,]  72  19      1          8        0   120
#> [354,]  72  12      1         10        0   170
#> [355,]  67   5      1          0        1   147
#> [356,]  67   9      0        180        0   158
#> [357,]  73  13      0        152        1   130
#> [358,]  70   5      0        180        0   150
#> [359,]  67   4      1          1        0   134
#> [360,]  72   6      1          5        0   115
#> [361,]  71   1      0        173        1   188
#> [362,]  70   3      0        180        0   121
#> [363,]  69   3      0        180        0   220
#> [364,]  68   4      1          3        0   210
#> [365,]  72   5      0         28        0   120
#> [366,]  73   6      0        180        1   117
#> [367,]  69  16      1         10        1   140
#> [368,]  69   8      1          1        0   164
#> [369,]  72  16      1          1        1   130
#> [370,]  70   4      0        180        0   180
#> [371,]  69   1      1          0        0   155
#> [372,]  73   6      1          0        1   270
#> [373,]  72   8      1          1        1   150
#> [374,]  71   2      1          0        1   180
#> [375,]  73   7      0          7        1   140
#> [376,]  68  15      1         13        1   130
#> [377,]  70   3      0          3        1   159
#> [378,]  70  13      1          9        0   100
#> [379,]  72   6      0        180        1   130
#> [380,]  74   8      1          0        1    85
#> [381,]  73   4      0        180        1   154
#> [382,]  71   3      1          1        0   150
#> [383,]  71  15      1         11        0   165
#> [384,]  68   9      0        180        1   120
#> [385,]  71  20      1         10        0   140
#> [386,]  73   3      1          0        1   136
#> [387,]  71  17      1         11        0   160
#> [388,]  71   8      1          7        0   149
#> [389,]  71   3      1          2        1   190
#> [390,]  70  26      1         11        1   120
#> [391,]  72   5      1          3        1   160
#> [392,]  70   3      0        180        1   154
#> [393,]  73   6      0        180        0   110
#> [394,]  72  15      1          0        1   150
#> [395,]  71   7      1          2        0   143
#> [396,]  72   8      1          0        1   140
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  74   7      1          0        1   117
#> [402,]  72  10      1          8        1   153
#> [403,]  69   7      0        180        1   144
#> [404,]  72  15      1         13        0   156
#> [405,]  70   8      0          8        0   120
#> [406,]  71  10      1          9        1   120
#> [407,]  75   2      1          1        0   145
#> [408,]  73  10      1          9        1   146
#> [409,]  73  10      1         10        1   120
#> [410,]  71   2      0         10        1   112
#> [411,]  73   1      0          1        1    80
#> [412,]  75   9      1          7        0   140
#> [413,]  75  13      1          1        1   130
#> [414,]  71  11      1          8        0   110
#> [415,]  72  15      1         12        1   120
#> [416,]  73  10      1          8        0   120
#> [417,]  72   7      0         57        1   145
#> [418,]  73  10      0        180        0   162
#> [419,]  72  11      0         11        1   140
#> [420,]  73   5      1          3        1   112
#> [421,]  76  25      1         12        1   170
#> [422,]  73  12      1         12        1   140
#> [423,]  72   2      0        180        0   120
#> [424,]  75   1      0        180        1   140
#> [425,]  72   4      1          0        1   197
#> [426,]  71   3      1          0        0   144
#> [427,]  73   5      0        180        0   126
#> [428,]  76   3      1          0        1   120
#> [429,]  72   5      0        180        0   154
#> [430,]  72   3      0        180        0   160
#> [431,]  76   5      0          5        1   130
#> [432,]  77  11      0         11        1   150
#> [433,]  77   4      0          4        0   185
#> [434,]  75   3      1          1        0   180
#> [435,]  72   7      1          2        0   142
#> [436,]  71  16      0        180        0   140
#> [437,]  73  10      1         10        0   124
#> [438,]  76   1      0        180        0   114
#> [439,]  74   2      1          1        0   140
#> [440,]  73   6      0          6        1   114
#> [441,]  75  23      1         14        1   110
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      0         85        1   120
#> [444,]  72   4      1          3        0   160
#> [445,]  76  13      1         10        0   110
#> [446,]  75   4      1          0        1   122
#> [447,]  75   0      0          0        1   130
#> [448,]  75  12      0         12        1   160
#> [449,]  75   1      0          1        1   125
#> [450,]  74   2      0        180        0   111
#> [451,]  72   5      0        180        0   120
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  75   9      0        180        1   140
#> [458,]  73  33      1         12        1   175
#> [459,]  77   5      1          0        0   123
#> [460,]  77  12      1          9        1   100
#> [461,]  73  10      1          9        0   146
#> [462,]  78   5      1          0        1   170
#> [463,]  73   7      1          0        0   174
#> [464,]  74   6      0         79        1   140
#> [465,]  75   6      0        180        0   150
#> [466,]  74   2      1          0        1   130
#> [467,]  78  18      0         18        1   144
#> [468,]  77   3      0        180        0   110
#> [469,]  76  29      0         47        0    90
#> [470,]  73   8      1          1        1   162
#> [471,]  73  11      1          2        1   110
#> [472,]  74   2      0        180        0   100
#> [473,]  78   7      0          7        1   133
#> [474,]  74  15      0        180        1   172
#> [475,]  78   8      1          6        1   110
#> [476,]  74   7      0          7        0   161
#> [477,]  78  32      1          9        1   198
#> [478,]  78   0      0        180        1   212
#> [479,]  75   5      0        119        1   150
#> [480,]  78  15      0        180        1   270
#> [481,]  75  13      1          6        0   150
#> [482,]  74  10      1          8        0   135
#> [483,]  76   1      0          1        1    83
#> [484,]  79   4      0         80        0   145
#> [485,]  78  12      1          9        0   150
#> [486,]  78   2      1          1        0   130
#> [487,]  75   4      1          0        0   212
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  75  11      1          4        0   162
#> [491,]  76   7      0         29        1   150
#> [492,]  77  24      0         24        1   160
#> [493,]  79   8      0         32        1   120
#> [494,]  80   9      0         23        1   128
#> [495,]  80   6      0          6        1   150
#> [496,]  78   6      1          0        1   240
#> [497,]  76   3      1          0        1   140
#> [498,]  78  11      1          1        1   140
#> [499,]  79  11      0        180        0   160
#> [500,]  79   2      1          0        1   121
#> [501,]  78  14      1          0        1   140
#> [502,]  76   4      0          4        1   160
#> [503,]  79   4      0          4        1   125
#> [504,]  76  12      1         10        1   127
#> [505,]  77   6      0          6        1   107
#> [506,]  75   2      1          1        1   204
#> [507,]  78  11      0        180        1   135
#> [508,]  76   1      0          1        1   140
#> [509,]  77  31      1          3        1   161
#> [510,]  78   7      1          0        1   110
#> [511,]  79   3      0          3        0   120
#> [512,]  77   7      0        180        1   170
#> [513,]  77   6      0          6        1   144
#> [514,]  79   4      1          0        1   120
#> [515,]  80  15      1         12        1   150
#> [516,]  77   9      1          4        0   141
#> [517,]  82   5      0          8        1   120
#> [518,]  80  40      1          0        1   138
#> [519,]  80  17      1         12        0   100
#> [520,]  79  10      0         10        1   120
#> [521,]  80  15      1          0        1    90
#> [522,]  79  28      0        164        0   100
#> [523,]  80   6      0        173        1   160
#> [524,]  81   3      0        180        0   184
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  78  15      0         15        0   165
#> [528,]  80   5      1          1        1   108
#> [529,]  78   4      0        180        0   175
#> [530,]  79   3      0          3        1   101
#> [531,]  78  26      1          5        0   194
#> [532,]  76   1      0        166        0   131
#> [533,]  81   4      1          1        1   104
#> [534,]  80   1      0          1        0   100
#> [535,]  78   3      1          1        1   152
#> [536,]  77  10      1          8        1   130
#> [537,]  80   2      1          1        0   168
#> [538,]  79   6      0          6        0   152
#> [539,]  80   6      1          0        1   119
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  77   4      0        180        1    98
#> [543,]  81   1      0        108        0   129
#> [544,]  82  21      1          2        0   155
#> [545,]  84  22      1         10        0   180
#> [546,]  79   4      0          4        1   121
#> [547,]  80   6      0          6        1   110
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  79   7      1          6        0   130
#> [552,]  83   4      0        103        0    97
#> [553,]  81  11      1          8        0   160
#> [554,]  81   5      0        177        0    41
#> [555,]  78   9      1          4        1   120
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  81  16      0         16        1   110
#> [561,]  80   6      1          0        1   150
#> [562,]  80  11      1          8        0   110
#> [563,]  81   8      0        180        0   146
#> [564,]  81   2      1          1        0   198
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  79   9      1          8        0   150
#> [573,]  85   3      1          2        1   160
#> [574,]  80  13      1          8        1   140
#> [575,]  84   4      0         89        1   129
#> [576,]  80   2      1          0        1   130
#> [577,]  79   4      0          4        1    60
#> [578,]  83   1      0          1        1   100
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  81  14      1         12        1   128
#> [582,]  82   0      0          2        1   100
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81   1      0          1        1   145
#> [588,]  81  12      0         12        1   163
#> [589,]  82  16      1          8        0   103
#> [590,]  82   5      1          0        1   146
#> [591,]  81   4      0          4        0   160
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  82  15      1          0        0   183
#> [595,]  80   2      0         88        0   135
#> [596,]  83   7      0        126        0   135
#> [597,]  86   8      0          8        1   132
#> [598,]  84   6      0        165        0   145
#> [599,]  86   3      0          3        1   140
#> [600,]  82   9      0        180        1   134
#> [601,]  81  13      0        180        0   152
#> [602,]  85   3      0          3        1   118
#> [603,]  82   1      0        180        1   193
#> [604,]  87   2      0          5        1   137
#> [605,]  86  12      1          0        1   132
#> [606,]  82  14      1         11        1   103
#> [607,]  83  19      0         43        0   150
#> [608,]  84   3      1          2        0   125
#> [609,]  83  10      1          0        1   190
#> [610,]  84   3      0          3        1   121
#> [611,]  83  13      1         12        0   170
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  85   3      0          3        1   113
#> [617,]  86   6      0          6        1   117
#> [618,]  84  13      0         62        1   100
#> [619,]  86   6      1          1        0   112
#> [620,]  83  20      1          3        1   150
#> [621,]  85  22      0         22        1   184
#> [622,]  83   9      0         65        1   150
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  83   3      0          3        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  88   4      0          4        0    86
#> [628,]  89   5      0        119        1   140
#> [629,]  87   1      0          1        0   170
#> [630,]  84   8      0        180        1   119
#> [631,]  85   8      0          8        1   136
#> [632,]  84   2      0        110        1   174
#> [633,]  87  29      0         29        1    97
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  91   1      0          1        1    74
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  89   3      1          1        1   160
#> [649,]  91   3      0         33        1   137
#> [650,]  88   5      0        158        0   100
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  91   4      1          0        1   120
#> [659,]  90  19      1         11        1   129
#> [660,]  94   6      0         50        0    78
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  91   1      0        180        0   158
#> [664,]  90  16      0         16        1   106
#> [665,]  90   3      0         67        0   162
#> [666,]  96   3      0         12        1    97
#> [667,]  94   3      0         26        1   144
#> [668,]  91  12      0         53        1   212
#> [669,]  91   7      0          7        0   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1]   5.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+  73.0 
#>  [41]   5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   1.0  179.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+  99.0  180.0+ 152.0+   7.0+
#>  [91]   6.0+ 180.0+ 180.0+  13.0+ 174.0+  28.0    6.0+ 180.0+   9.0+ 180.0+
#> [101] 175.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0    5.0+ 180.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+
#> [151]   4.0+   9.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [171]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0 
#> [181] 180.0+ 180.0+ 180.0+  15.0  180.0+ 180.0+  13.0+   8.0+ 180.0+ 180.0+
#> [191] 170.0   94.0  180.0+   7.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+  30.0 
#> [201] 180.0+   5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+   4.0+ 180.0+   7.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [221]   4.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  36.0  180.0+
#> [231] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+ 180.0+  11.0+
#> [251]   2.0+  18.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+ 180.0+
#> [261]   5.0+  13.0    3.0    0.5+ 180.0+ 175.0+ 180.0+   7.0+   8.0    5.0 
#> [271]   1.0  180.0+ 180.0+ 123.0+   1.0+  11.0+ 180.0+  79.0   80.0   15.0+
#> [281] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+  11.0+
#> [301] 180.0+   0.5    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+
#> [311] 180.0+   1.0  180.0+ 171.0    6.0  180.0+   0.5  180.0+ 180.0+ 180.0+
#> [321]  14.0+ 180.0+   7.0+  45.0    3.0+   5.0+ 180.0+   8.0+ 180.0+   2.0+
#> [331] 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0  180.0+   8.0+ 123.0  180.0+
#> [341]  19.0    1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+ 162.0 
#> [351]   7.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+  76.0  180.0+
#> [361] 173.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+  16.0+ 180.0+
#> [371] 180.0+   6.0  180.0+ 180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+
#> [381] 180.0+   3.0+ 180.0+ 180.0+  20.0  180.0+ 180.0+   8.0    3.0  180.0+
#> [391] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [401] 180.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+ 180.0+ 180.0+  15.0   10.0 
#> [411]   1.0  180.0+  13.0  180.0+ 180.0+  10.0   57.0  180.0+  11.0    5.0 
#> [421] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [431]   5.0   11.0+   4.0+ 180.0+   7.0  180.0+  10.0  180.0+ 180.0+   6.0 
#> [441] 180.0+ 180.0+  85.0  180.0+ 174.0+   4.0    0.5   12.0    1.0  180.0+
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+
#> [461] 180.0+ 180.0+   7.0+  79.0  180.0+ 176.0+  18.0  180.0+  47.0  180.0+
#> [471]  11.0  180.0+   7.0  180.0+   8.0+   7.0   32.0  180.0+ 119.0  180.0+
#> [481] 180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   4.0+ 180.0+  11.0  152.0+
#> [491]  29.0   24.0   32.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [501] 180.0+   4.0    4.0  180.0+   6.0    2.0+ 180.0+   1.0  171.0   43.0 
#> [511]   3.0  180.0+   6.0  138.0  180.0+  71.0    8.0   40.0   17.0   10.0+
#> [521] 180.0+ 164.0  173.0  180.0+   7.0+  22.0   15.0+   5.0+ 180.0+   3.0 
#> [531] 171.0+ 166.0+  71.0    1.0    3.0+  10.0   10.0    6.0+   6.0  180.0+
#> [541]   5.0  180.0+ 108.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [551] 180.0+ 103.0  180.0+ 177.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0 
#> [561] 180.0+ 180.0+ 180.0+ 180.0+ 128.0  167.0    3.0+  62.0  180.0+   4.0 
#> [571]   1.0  180.0+ 180.0+ 180.0+  89.0  180.0+   4.0    1.0  180.0+ 180.0+
#> [581] 180.0+   2.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0   16.0+   5.0+
#> [591]   4.0+ 180.0+   3.0   83.0   88.0  126.0    8.0  165.0    3.0  180.0+
#> [601] 180.0+   3.0+ 180.0+   5.0  180.0+ 174.0   43.0  180.0+ 180.0+   3.0 
#> [611]  13.0  180.0+  92.0  180.0+  38.0    3.0+   6.0+  62.0    6.0+  20.0 
#> [621]  22.0   65.0   11.0  180.0+   3.0+   8.0+   4.0  119.0    1.0+ 180.0+
#> [631]   8.0  110.0   29.0  180.0+ 180.0+  46.0    8.0  180.0+  25.0    3.0 
#> [641]  11.0  126.0  180.0+ 180.0+   1.0   36.0   89.0    3.0+  33.0  158.0 
#> [651] 168.0  169.0   52.0    7.0    0.5  180.0+ 180.0+   4.0  180.0+  50.0 
#> [661] 179.0+   8.0+ 180.0+  16.0   67.0   12.0   26.0   53.0    7.0+   3.0 
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
#>   0.8092242 
```
