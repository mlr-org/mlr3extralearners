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
#> min 0.00339    45   2.838 0.2143       6
#> 1se 0.08800    10   3.030 0.1964       3
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
#>   [8,]  38   2      0        115        0   150
#>   [9,]  35   0      0        180        1   119
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  37   1      1          0        1   146
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40   6      0        180        1   138
#>  [16,]  40  11      1         10        1   120
#>  [17,]  42   2      0        180        0   100
#>  [18,]  43   3      1          0        1   100
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  41  13      1          1        0   140
#>  [25,]  45   6      0        180        1   170
#>  [26,]  41   5      1          4        1   141
#>  [27,]  44   2      1          1        1   150
#>  [28,]  45   2      0        180        1   140
#>  [29,]  46  15      0        180        0   120
#>  [30,]  47   4      1          3        0   118
#>  [31,]  48  15      0        180        1   160
#>  [32,]  45   3      0        150        0   130
#>  [33,]  44   3      1          0        1   180
#>  [34,]  46   7      1          2        0   166
#>  [35,]  43  29      0        180        1   180
#>  [36,]  45   4      1          0        0   124
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  46  13      1         10        0   100
#>  [40,]  44   0      1          0        1    96
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   6      1          0        1   100
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
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
#>  [61,]  50   6      1          2        1   140
#>  [62,]  49   7      1          7        1   110
#>  [63,]  46   3      1          1        1   140
#>  [64,]  46   9      1          9        1   122
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  15      1         11        1   160
#>  [67,]  47   2      0        180        0   150
#>  [68,]  50   4      0          4        1   100
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  47   6      0        180        1   162
#>  [74,]  51   8      0        180        1   140
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  53   8      0         36        1   160
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49  15      0        180        1   160
#>  [85,]  53   5      0         77        0   159
#>  [86,]  53   7      1          0        0   199
#>  [87,]  54   6      1          3        0   129
#>  [88,]  51   3      1          1        0   140
#>  [89,]  50  14      1         13        0   170
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  49   5      1          2        1   150
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48   6      0        180        0   160
#>  [96,]  48  11      1         10        0   120
#>  [97,]  54   9      1          0        1   138
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  55   6      1          2        1   114
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  51  13      1         11        0   145
#> [105,]  50   5      1          4        1   150
#> [106,]  54   4      1          0        1   121
#> [107,]  52   4      0        180        0   183
#> [108,]  50   3      0        174        1   153
#> [109,]  55  28      1         13        1   160
#> [110,]  49   6      1          0        1   130
#> [111,]  50   7      1          1        0   156
#> [112,]  53   9      0          9        1    95
#> [113,]  53   8      1          0        1   130
#> [114,]  50   7      1          0        1   127
#> [115,]  56   4      1          1        1   130
#> [116,]  52   5      0        175        1   117
#> [117,]  55   2      0          2        0   145
#> [118,]  56   3      0        180        1   193
#> [119,]  55   5      1          4        1   120
#> [120,]  52   8      0        180        0   119
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  52  16      0         16        0   152
#> [124,]  53  10      1          9        0   172
#> [125,]  52  16      1         14        0   170
#> [126,]  53  15      0         15        1    90
#> [127,]  55   6      0        180        1   100
#> [128,]  54  12      1          0        1   190
#> [129,]  54   3      0        180        0   128
#> [130,]  56   3      0          8        1   139
#> [131,]  52   9      1          3        0   170
#> [132,]  54   2      1          1        1   176
#> [133,]  57   5      1          3        1   138
#> [134,]  57   1      0        180        1   156
#> [135,]  57   1      0          1        1   100
#> [136,]  56   4      1          0        1   140
#> [137,]  52   2      0        180        0   140
#> [138,]  55  11      1          7        0   104
#> [139,]  52  15      1         14        0   130
#> [140,]  58   8      0          8        1   130
#> [141,]  55   3      1          1        1   156
#> [142,]  57   0      0          0        1   150
#> [143,]  53  21      1         13        1   130
#> [144,]  57   4      0        180        1   119
#> [145,]  58   6      1          0        1    90
#> [146,]  53  15      1         10        1   130
#> [147,]  56   5      0          5        1   150
#> [148,]  57   4      1          2        1   185
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  55   5      0          5        1   131
#> [152,]  54   7      1          0        1   141
#> [153,]  59  15      1         10        0   140
#> [154,]  58   9      1          0        1   180
#> [155,]  56   7      1          5        1   120
#> [156,]  55   2      0          2        0   106
#> [157,]  59   9      1          1        1   125
#> [158,]  60  11      1          9        0   106
#> [159,]  60   5      1          1        0   138
#> [160,]  57   5      0        180        1   130
#> [161,]  58  11      1          9        1   124
#> [162,]  57  10      1          9        0   103
#> [163,]  59   6      1          0        1   140
#> [164,]  59   5      0        180        1   155
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  59   2      1          1        0   140
#> [168,]  58   8      0        161        1   140
#> [169,]  58  14      1          6        0   190
#> [170,]  61   4      1          3        0   151
#> [171,]  61   9      1          8        0   150
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  57   4      1          3        0   138
#> [176,]  61   3      0         17        0   143
#> [177,]  56  14      0         45        0   130
#> [178,]  57   3      1          2        0   120
#> [179,]  56  13      1          6        1   158
#> [180,]  56  18      1         11        1   165
#> [181,]  59   9      1          0        1    80
#> [182,]  55   4      1          3        1   160
#> [183,]  55   9      1          7        1   135
#> [184,]  61   4      1          0        1   115
#> [185,]  56   8      1          8        0   120
#> [186,]  59  11      1          8        1   190
#> [187,]  57  15      1         13        1   110
#> [188,]  59   5      1          2        0   182
#> [189,]  61  13      0         13        0   210
#> [190,]  58   8      1          5        0   152
#> [191,]  62  10      1          0        1   153
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  61  18      0        170        0   140
#> [195,]  61  28      1          7        0   133
#> [196,]  58   8      1          3        1   150
#> [197,]  61   7      0          7        1   150
#> [198,]  60   7      0          7        0   147
#> [199,]  61   6      0          6        0   134
#> [200,]  59  13      1          2        0   198
#> [201,]  57  12      1          9        1   120
#> [202,]  62   4      1          0        0   160
#> [203,]  60  17      1          8        1   140
#> [204,]  62   4      1          3        0   173
#> [205,]  58   2      0         30        0   202
#> [206,]  59   1      0        180        0   155
#> [207,]  59  16      1          9        1   133
#> [208,]  63   6      0         28        1   120
#> [209,]  61  13      0         13        0   120
#> [210,]  61   5      0          5        1   160
#> [211,]  58  11      1          9        0   179
#> [212,]  57   2      1          1        0   159
#> [213,]  62  17      1         10        1   180
#> [214,]  58   7      0        180        1   150
#> [215,]  63   1      0        180        1   130
#> [216,]  61   7      0        180        0   135
#> [217,]  63   4      1          3        0   222
#> [218,]  63   4      0        180        1   190
#> [219,]  63  15      1         10        1   126
#> [220,]  63   4      1          1        0   155
#> [221,]  60  18      1         13        0   132
#> [222,]  61   9      1          9        1   150
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  58   2      0        180        0   127
#> [226,]  60   7      1          5        1   141
#> [227,]  59   5      1          1        0   148
#> [228,]  65  13      0        180        1   100
#> [229,]  63   1      0          1        0   162
#> [230,]  61  15      1         13        0   170
#> [231,]  60   3      0          3        0   168
#> [232,]  64  10      1          9        0   160
#> [233,]  62   6      0          6        0   120
#> [234,]  63  12      1         10        0   200
#> [235,]  60   8      0         17        1   130
#> [236,]  66   1      1          0        1   120
#> [237,]  63  10      1          0        1   148
#> [238,]  63  14      1          9        0   123
#> [239,]  65  36      1         11        0   140
#> [240,]  63   4      1          3        0   162
#> [241,]  66   3      1          1        0   127
#> [242,]  61  10      1          2        1   194
#> [243,]  63  12      1          9        0   114
#> [244,]  63   7      0        180        0   120
#> [245,]  66   5      1          0        1   110
#> [246,]  65   8      1          0        0   168
#> [247,]  64  21      1         10        0   190
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  63  16      1          7        1   110
#> [251,]  64   7      0        180        1   120
#> [252,]  66   6      1          1        1   130
#> [253,]  63  12      0         12        1   150
#> [254,]  63   5      1          4        0   170
#> [255,]  63   2      1          1        0   180
#> [256,]  62  13      1         11        0   180
#> [257,]  64   2      0          2        0   201
#> [258,]  66  16      1         11        1   169
#> [259,]  62   9      0        180        0   145
#> [260,]  63   2      1          0        0   140
#> [261,]  65   8      1          0        1   140
#> [262,]  67   6      0        180        1   170
#> [263,]  65  15      1         11        1   160
#> [264,]  68   5      1          4        1   150
#> [265,]  64  13      1         12        1   150
#> [266,]  64   6      1          0        1   125
#> [267,]  66   7      1          0        1   115
#> [268,]  66  13      1          0        0   118
#> [269,]  65   3      0          3        0   105
#> [270,]  64   0      0          0        1   148
#> [271,]  67   4      1          3        0   130
#> [272,]  68   1      0        180        1   166
#> [273,]  64  10      1          9        1   110
#> [274,]  67   8      1          1        1   130
#> [275,]  68   5      0          5        1    90
#> [276,]  63  10      0         16        1   160
#> [277,]  66  14      0        180        0   130
#> [278,]  68  18      0        180        1   260
#> [279,]  65  18      1          3        0   120
#> [280,]  63   1      1          0        1   155
#> [281,]  68  11      0        180        0   160
#> [282,]  66  12      1         10        1   150
#> [283,]  65  15      1         12        1   150
#> [284,]  65   4      1          2        1   145
#> [285,]  69  12      0         15        1   140
#> [286,]  66  15      1         13        1   160
#> [287,]  65  11      1          6        0   130
#> [288,]  69   6      0        180        1   100
#> [289,]  63   8      0        180        1   120
#> [290,]  68  14      1         13        1   140
#> [291,]  66   3      0          3        1   138
#> [292,]  69   1      1          0        0   170
#> [293,]  67   1      0        180        1   160
#> [294,]  63   2      1          0        0    99
#> [295,]  67   2      0        180        0   184
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  66  19      1         12        1   150
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  64   4      0        179        0   160
#> [303,]  66   4      0        180        1   130
#> [304,]  64   0      1          0        1   118
#> [305,]  66   7      1          5        1   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  65  13      1         12        1   130
#> [309,]  64  21      0         21        1   155
#> [310,]  65   1      0          1        1   120
#> [311,]  68   4      0          4        1   190
#> [312,]  71   3      0          5        0   112
#> [313,]  70   7      1          0        1   190
#> [314,]  68   7      0        150        0   210
#> [315,]  71  20      1          0        1   160
#> [316,]  66   9      1          3        1   151
#> [317,]  66   1      1          1        1   165
#> [318,]  70   4      1          0        1   180
#> [319,]  69   8      0        180        1   153
#> [320,]  70  14      0        171        0   166
#> [321,]  66   4      0        180        0   130
#> [322,]  67  10      1          9        0   200
#> [323,]  67   6      1          4        0   130
#> [324,]  69   0      0          0        1   148
#> [325,]  65  14      1         13        1   150
#> [326,]  69   8      0        180        1   180
#> [327,]  71   7      0          7        0   230
#> [328,]  69   5      0          5        1   142
#> [329,]  69   3      0          3        1   130
#> [330,]  70  22      1         13        0   103
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  69   8      1          5        1   195
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  69  19      0        180        0   130
#> [339,]  67  14      0        172        1   140
#> [340,]  69  11      1          0        1   120
#> [341,]  66   2      0        180        0   130
#> [342,]  67   7      1          4        0   122
#> [343,]  69   4      1          3        0   132
#> [344,]  68   2      0          7        1   130
#> [345,]  69   8      1          2        0   121
#> [346,]  68   3      0         19        0   135
#> [347,]  67  12      1          8        0   120
#> [348,]  69   1      0          1        1   110
#> [349,]  67   1      0          1        1    60
#> [350,]  67   4      0         60        1   136
#> [351,]  69   5      0         76        0   120
#> [352,]  67   8      1          0        1   130
#> [353,]  72  13      1         11        1   195
#> [354,]  70   7      0          7        0   102
#> [355,]  73  20      1          0        1   170
#> [356,]  71   6      0          9        0   120
#> [357,]  69  10      1          6        1   120
#> [358,]  70  11      0        180        1   210
#> [359,]  72  19      1          8        0   120
#> [360,]  72  12      1         10        0   170
#> [361,]  67   8      0        180        1   170
#> [362,]  67   5      1          0        1   147
#> [363,]  67   9      0        180        0   158
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  67   4      1          1        0   134
#> [367,]  72   6      1          5        0   115
#> [368,]  71   1      0        173        1   188
#> [369,]  68  23      0        180        1   220
#> [370,]  69   3      0        180        0   220
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  69   8      1          1        0   164
#> [377,]  72  16      1          1        1   130
#> [378,]  70   4      0        180        0   180
#> [379,]  69   1      1          0        0   155
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  71   2      1          0        1   180
#> [383,]  73   7      0          7        1   140
#> [384,]  70   3      0          3        1   159
#> [385,]  73   0      0        180        1   161
#> [386,]  74   8      1          0        1    85
#> [387,]  69   2      1          0        1   110
#> [388,]  71  15      1         11        0   165
#> [389,]  74  20      0         20        1   180
#> [390,]  68   9      0        180        1   120
#> [391,]  71  20      1         10        0   140
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71  17      1         11        0   160
#> [395,]  71   8      1          7        0   149
#> [396,]  71   3      1          2        1   190
#> [397,]  73  10      1          8        0   106
#> [398,]  69  12      1          1        1   149
#> [399,]  70  26      1         11        1   120
#> [400,]  73   4      0         58        1   160
#> [401,]  72   5      1          3        1   160
#> [402,]  70   3      0        180        1   154
#> [403,]  73   6      0        180        0   110
#> [404,]  71   7      1          2        0   143
#> [405,]  74   3      0          3        1   150
#> [406,]  71  13      1          8        0   121
#> [407,]  71  14      1         13        1   170
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  70   8      0          8        0   120
#> [411,]  75   1      0          1        0   133
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1          9        1   146
#> [414,]  74  15      1          9        1   179
#> [415,]  71   2      0         10        1   112
#> [416,]  73   1      0          1        1    80
#> [417,]  75   9      1          7        0   140
#> [418,]  75  13      1          1        1   130
#> [419,]  71  11      1          8        0   110
#> [420,]  72  15      1         12        1   120
#> [421,]  73  10      1          8        0   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  72   7      0         57        1   145
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  71   3      1          0        0   144
#> [432,]  73   5      0        180        0   126
#> [433,]  73   4      0        180        0   124
#> [434,]  74  34      1          8        1   233
#> [435,]  76   3      1          0        1   120
#> [436,]  71  32      1         12        1   107
#> [437,]  72   3      0        180        0   160
#> [438,]  76   5      0          5        1   130
#> [439,]  77  11      0         11        1   150
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  73  10      1         10        0   124
#> [444,]  74   7      0        180        1   150
#> [445,]  76   1      0        180        0   114
#> [446,]  74   2      1          1        0   140
#> [447,]  76   8      1          0        1   141
#> [448,]  74  19      1          4        1   200
#> [449,]  73   6      0          6        1   114
#> [450,]  74   2      0        180        0   190
#> [451,]  72   4      0         85        1   120
#> [452,]  72   4      1          3        0   160
#> [453,]  76  17      1          0        1   200
#> [454,]  73   4      1          3        1   125
#> [455,]  75   4      1          0        1   122
#> [456,]  75   0      0          0        1   130
#> [457,]  75  12      0         12        1   160
#> [458,]  75   4      1          2        1   188
#> [459,]  74   6      0        180        0   160
#> [460,]  74   2      0        180        0   111
#> [461,]  73   1      0         52        1   105
#> [462,]  73   0      0        180        0   156
#> [463,]  72   5      0        180        0   120
#> [464,]  76   5      0        180        0   185
#> [465,]  74  10      1          0        1   135
#> [466,]  76   5      1          0        1   167
#> [467,]  74   8      1          8        1   170
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      0        180        0   130
#> [471,]  77   1      1          0        1    90
#> [472,]  76  12      1         11        1   120
#> [473,]  78   5      1          0        1   170
#> [474,]  74   6      0         79        1   140
#> [475,]  74   9      1          8        0   200
#> [476,]  79  10      1          8        0   190
#> [477,]  78  18      0         18        1   144
#> [478,]  76  29      0         47        0    90
#> [479,]  73   8      1          1        1   162
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  74   7      0          7        0   161
#> [484,]  78  13      1          5        0   130
#> [485,]  75   5      0        119        1   150
#> [486,]  78  15      0        180        1   270
#> [487,]  80   8      0          8        1   120
#> [488,]  74  10      1          8        0   135
#> [489,]  76   1      0          1        1    83
#> [490,]  78  12      1          9        0   150
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  78  10      0        180        1   130
#> [494,]  75  11      1          4        0   162
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  77  24      0         24        1   160
#> [498,]  79   8      0         32        1   120
#> [499,]  80   9      0         23        1   128
#> [500,]  80   6      0          6        1   150
#> [501,]  76   3      1          0        1   140
#> [502,]  79   2      1          0        1   121
#> [503,]  78  14      1          0        1   140
#> [504,]  76   4      0          4        1   160
#> [505,]  79   4      0          4        1   125
#> [506,]  76  10      1          8        0   180
#> [507,]  76  12      1         10        1   127
#> [508,]  77   6      0          6        1   107
#> [509,]  80   3      1          0        1   120
#> [510,]  78  11      0        180        1   135
#> [511,]  76   1      0          1        1   140
#> [512,]  77  31      1          3        1   161
#> [513,]  76   1      0          1        1    90
#> [514,]  79   3      0          3        0   120
#> [515,]  77   7      0        180        1   170
#> [516,]  79   4      1          0        1   120
#> [517,]  81   1      0        180        0   120
#> [518,]  80  40      1          0        1   138
#> [519,]  80  17      1         12        0   100
#> [520,]  76   7      0        161        0   151
#> [521,]  80  15      1          0        1    90
#> [522,]  79  28      0        164        0   100
#> [523,]  80   9      0        118        1   186
#> [524,]  78  32      0        180        1   130
#> [525,]  81   2      0        175        0   172
#> [526,]  78   7      0          7        1   147
#> [527,]  77  13      1          0        1   190
#> [528,]  80   5      1          1        1   108
#> [529,]  78  26      1          5        0   194
#> [530,]  81   4      1          1        1   104
#> [531,]  78  20      1          0        1   109
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  77   5      0         85        0   188
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  78   2      0        180        0   148
#> [538,]  82   1      1          0        1    82
#> [539,]  78  12      0        180        0   134
#> [540,]  79   1      0        125        0   193
#> [541,]  79   4      0          4        1   121
#> [542,]  83   9      1          5        1   170
#> [543,]  83   5      0        180        0   148
#> [544,]  79   7      1          6        0   130
#> [545,]  81  11      1          8        0   160
#> [546,]  81   5      0        177        0    41
#> [547,]  80  11      1          8        0   170
#> [548,]  78  23      1         10        1   145
#> [549,]  79   4      0          4        1   183
#> [550,]  78   9      1          4        1   120
#> [551,]  81  15      0        180        1   140
#> [552,]  80   7      1          0        1   146
#> [553,]  81  20      1          9        0   170
#> [554,]  81  16      0         16        1   110
#> [555,]  80  11      1          8        0   110
#> [556,]  80   8      1          7        0   160
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  83   2      0          2        1   155
#> [560,]  82   6      0        128        1   100
#> [561,]  84   4      0        167        0   198
#> [562,]  80   3      1          1        1   230
#> [563,]  82  23      1          0        0   110
#> [564,]  84   1      0         38        1   205
#> [565,]  83   3      0        180        0   174
#> [566,]  79   9      1          8        0   150
#> [567,]  85   3      1          2        1   160
#> [568,]  84   4      0         89        1   129
#> [569,]  83   1      0          1        1   100
#> [570,]  80  30      1         13        0   220
#> [571,]  79  14      1          0        0   110
#> [572,]  83   3      0        114        0    98
#> [573,]  83   2      0        154        0   130
#> [574,]  82   0      0          2        1   100
#> [575,]  85   9      1          6        1   160
#> [576,]  83   1      0        180        0   160
#> [577,]  81   4      0          4        0   175
#> [578,]  84  15      1         13        1   110
#> [579,]  81   1      0          1        1   145
#> [580,]  81  12      0         12        1   163
#> [581,]  81   4      0          4        0   160
#> [582,]  86  12      0        180        1   120
#> [583,]  83  12      1          2        1   170
#> [584,]  81  19      1         14        0   120
#> [585,]  82  15      1          0        0   183
#> [586,]  80   2      0         88        0   135
#> [587,]  83   7      0        126        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  82   9      0        180        1   134
#> [592,]  84   3      0        180        1   120
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  81   4      0        180        0   160
#> [596,]  82   1      0        180        1   193
#> [597,]  83   4      0          4        0   130
#> [598,]  87   2      0          5        1   137
#> [599,]  82  14      1         11        1   103
#> [600,]  86   6      1          0        1   140
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  88  14      1          3        1   130
#> [605,]  83  13      1         12        0   170
#> [606,]  84   7      1          2        0   148
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  82   4      0          4        0   130
#> [610,]  86  13      0        177        0   163
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  86   9      1          7        1   142
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  89   4      0          4        1   153
#> [623,]  87   1      0          1        0   170
#> [624,]  84   8      0        180        1   119
#> [625,]  85   8      0          8        1   136
#> [626,]  84   0      0        180        1   136
#> [627,]  89  10      0         46        1   170
#> [628,]  90  14      0         14        1   100
#> [629,]  88   1      0          1        0   135
#> [630,]  86   4      0        180        1   145
#> [631,]  91   8      0          8        0   100
#> [632,]  87   6      1          0        0   125
#> [633,]  86   3      1          0        1    80
#> [634,]  88   8      0         50        1   154
#> [635,]  87   6      0        126        1   168
#> [636,]  86  10      0        180        1   137
#> [637,]  86   9      1          7        0   130
#> [638,]  91   1      0          1        1    74
#> [639,]  87   5      0         36        1   150
#> [640,]  90   5      1          0        1   125
#> [641,]  88   3      1          2        0   159
#> [642,]  89   3      1          1        1   160
#> [643,]  91   3      0         33        1   137
#> [644,]  89  12      1          0        1   130
#> [645,]  89   2      0        168        0   118
#> [646,]  91   5      0        169        1   176
#> [647,]  89  52      0         52        1   130
#> [648,]  92   7      0          7        1   110
#> [649,]  89   4      0          4        1   159
#> [650,]  89  14      0        180        1    84
#> [651,]  90  18      0        180        0   188
#> [652,]  91   4      1          0        1   120
#> [653,]  94   6      0         50        0    78
#> [654,]  90   1      0          1        1   118
#> [655,]  93   8      0        179        1   110
#> [656,]  94   8      0          8        1   142
#> [657,]  92   4      0         76        1   149
#> [658,]  90  16      0         16        1   106
#> [659,]  90   3      0         67        0   162
#> [660,]  96   3      0         12        1    97
#> [661,]  95   8      1          5        1   150
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 115.0  180.0+   5.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+ 180.0+   1.0  179.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0 
#>  [81]  88.0+ 180.0+   4.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+ 180.0+ 180.0+ 152.0+   7.0+
#> [101]   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 174.0+  28.0    6.0+
#> [111] 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+   2.0  180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+  12.0+ 180.0+   8.0 
#> [131] 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+
#> [141] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+   5.0+   4.0+ 180.0+ 180.0+
#> [151]   5.0+ 180.0+ 180.0+   9.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+ 161.0+ 171.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+ 180.0+
#> [181]   9.0+ 180.0+  24.0  180.0+   8.0  180.0+  15.0  180.0+  13.0+   8.0+
#> [191] 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+   7.0    7.0+   6.0  180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+  30.0  180.0+ 180.0+  28.0   13.0+   5.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 180.0+ 180.0+   9.0    7.0+ 180.0+  84.0  180.0+ 180.0+   1.0  180.0+
#> [231]   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+ 180.0+  14.0+  36.0  180.0+
#> [241]   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   2.0+
#> [261]  15.0  180.0+ 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+   3.0    0.5+
#> [271] 180.0+ 180.0+ 180.0+   8.0    5.0   16.0  180.0+ 180.0+ 123.0+   1.0+
#> [281] 180.0+  80.0   15.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [291]   3.0  175.0  180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0 
#> [301] 180.0+ 179.0+ 180.0+   0.5    7.0+ 180.0+ 180.0+ 180.0+  21.0+   1.0 
#> [311]   4.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0 
#> [321] 180.0+ 174.0+   6.0    0.5   14.0+ 180.0+   7.0+   5.0+   3.0+ 180.0+
#> [331]   5.0+ 180.0+ 180.0+ 180.0+   7.0    8.0+ 180.0+ 180.0+ 172.0+ 180.0+
#> [341] 180.0+   7.0  180.0+   7.0    8.0+  19.0  180.0+   1.0    1.0   60.0 
#> [351]  76.0  180.0+ 132.0    7.0+ 124.0    9.0  180.0+ 180.0+ 180.0+  12.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+
#> [371] 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0 
#> [381] 180.0+ 180.0+   7.0+   3.0+ 180.0+ 180.0+   2.0  180.0+  20.0  180.0+
#> [391]  20.0  180.0+ 180.0+ 180.0+   8.0    3.0   87.0   12.0  180.0+  58.0 
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0   14.0+ 180.0+ 180.0+   8.0+
#> [411]   1.0  180.0+ 180.0+ 180.0+  10.0    1.0  180.0+  13.0  180.0+ 180.0+
#> [421]  10.0  104.0+   1.0   57.0  180.0+  11.0    5.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+
#> [441] 180.0+   7.0   10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+
#> [451]  85.0  180.0+  17.0+ 180.0+   4.0    0.5   12.0   46.0  180.0+ 180.0+
#> [461]  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0   33.0    5.0  180.0+
#> [471]   1.0   12.0  180.0+  79.0  168.0+ 180.0+  18.0   47.0  180.0+ 180.0+
#> [481]   7.0  180.0+   7.0  172.0  119.0  180.0+   8.0  180.0+   1.0  180.0+
#> [491]   4.0+   2.0  180.0+ 152.0+   3.0   29.0   24.0   32.0   23.0    6.0 
#> [501]   3.0+ 180.0+ 180.0+   4.0    4.0   10.0+ 180.0+   6.0    3.0+ 180.0+
#> [511]   1.0  171.0    1.0    3.0  180.0+ 138.0  180.0+  40.0   17.0  161.0 
#> [521] 180.0+ 164.0  118.0  180.0+ 175.0+   7.0+  22.0    5.0+ 171.0+  71.0 
#> [531]  20.0+   1.0    3.0+  85.0    6.0+   6.0  180.0+   1.0  180.0+ 125.0 
#> [541]   4.0    9.0+ 180.0+ 180.0+ 180.0+ 177.0+ 169.0   70.0    4.0  180.0+
#> [551] 180.0+   7.0+  20.0   16.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  128.0 
#> [561] 167.0    3.0+  62.0   38.0  180.0+ 180.0+ 180.0+  89.0    1.0   30.0 
#> [571] 180.0+ 114.0  154.0    2.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0 
#> [581]   4.0+ 180.0+  77.0  180.0+  83.0   88.0  126.0    8.0  180.0+ 165.0 
#> [591] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+   5.0  174.0    6.0 
#> [601]  43.0  180.0+ 180.0+  14.0   13.0  180.0+  92.0  180.0+   4.0  177.0 
#> [611]   6.0+  62.0    6.0+   4.0+  20.0    4.0   22.0   11.0  180.0+   3.0+
#> [621]   8.0+   4.0    1.0+ 180.0+   8.0  180.0+  46.0   14.0    1.0+ 180.0+
#> [631]   8.0   25.0    3.0   50.0  126.0  180.0+ 180.0+   1.0   36.0   89.0 
#> [641]  75.0    3.0+  33.0  180.0+ 168.0  169.0   52.0    7.0    4.0  180.0+
#> [651] 180.0+   4.0   50.0    1.0+ 179.0+   8.0+  76.0   16.0   67.0   12.0 
#> [661]   8.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8277236 
```
