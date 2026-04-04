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
#> min 0.00324    45    2.88 0.1313       6
#> 1se 0.06980    12    3.01 0.1197       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  12      1          8        1   120
#>   [8,]  36   5      1          0        1   115
#>   [9,]  38  16      1         10        0   160
#>  [10,]  37   1      1          0        1   146
#>  [11,]  38   5      1          3        0   125
#>  [12,]  42   2      0          2        0   140
#>  [13,]  40   6      0        180        1   138
#>  [14,]  40  11      1         10        1   120
#>  [15,]  42   2      0        180        0   100
#>  [16,]  43   3      1          0        1   100
#>  [17,]  40   1      1          0        1   145
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42   4      0        180        0   162
#>  [20,]  42  15      1         13        1   125
#>  [21,]  40   3      1          1        0   170
#>  [22,]  43   2      1          1        1   116
#>  [23,]  44   5      1          1        0   170
#>  [24,]  45   3      0        180        1   154
#>  [25,]  41  10      1          8        0   150
#>  [26,]  44   3      0        180        0   141
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   9      1          7        0   110
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  47   4      1          3        0   118
#>  [37,]  48  15      0        180        1   160
#>  [38,]  45   3      0        150        0   130
#>  [39,]  44   3      1          0        1   180
#>  [40,]  46   7      1          2        0   166
#>  [41,]  43  29      0        180        1   180
#>  [42,]  45   4      1          0        0   124
#>  [43,]  47   6      1          0        1   116
#>  [44,]  44   0      1          0        1    96
#>  [45,]  43   3      1          0        1   124
#>  [46,]  45   8      1          0        1   117
#>  [47,]  49   5      0         73        1   136
#>  [48,]  45   5      0          5        0   141
#>  [49,]  46   2      1          1        1   122
#>  [50,]  46   6      1          0        1   100
#>  [51,]  44   4      1          0        1   114
#>  [52,]  47   2      0        180        0   108
#>  [53,]  44   9      1          8        1   135
#>  [54,]  45   5      0        180        1   190
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46  15      0        180        1   120
#>  [57,]  45   9      1          0        1   145
#>  [58,]  47   3      1          1        1   120
#>  [59,]  48  12      1         11        0   200
#>  [60,]  47   5      1          3        1   130
#>  [61,]  46   3      1          0        1   119
#>  [62,]  49   4      0        180        0   117
#>  [63,]  47  10      0         10        1   140
#>  [64,]  50   1      1          0        1   129
#>  [65,]  50   4      1          1        0   125
#>  [66,]  49   7      1          7        1   110
#>  [67,]  46   9      1          9        1   122
#>  [68,]  50   7      0        180        1   110
#>  [69,]  51   1      0          1        1   145
#>  [70,]  49  15      1         11        1   160
#>  [71,]  49  23      0        179        1   112
#>  [72,]  46   6      1          0        1   156
#>  [73,]  51   3      1          2        0   113
#>  [74,]  50   1      1          0        0   150
#>  [75,]  47   8      0        180        0   160
#>  [76,]  47   6      0        180        1   162
#>  [77,]  51   8      0        180        1   140
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  47   2      1          1        0   110
#>  [84,]  49  15      0        180        1   160
#>  [85,]  53   5      0        180        1   140
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  51   3      1          1        0   140
#>  [89,]  50   2      0          5        1   106
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  49  16      0         16        0   125
#>  [98,]  54  23      1         10        0   131
#>  [99,]  52   7      1          2        0   154
#> [100,]  54   9      1          1        0   130
#> [101,]  55   4      1          2        0   150
#> [102,]  52   4      0        180        1   180
#> [103,]  50   5      1          4        1   150
#> [104,]  54   4      1          0        1   121
#> [105,]  50   3      0        174        1   153
#> [106,]  55  28      1         13        1   160
#> [107,]  50   7      1          1        0   156
#> [108,]  53   8      1          0        1   130
#> [109,]  56   4      1          1        1   130
#> [110,]  52   5      0        175        1   117
#> [111,]  55   1      0        180        0   127
#> [112,]  54   1      0        180        0   162
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  52   8      0        180        0   119
#> [116,]  53  18      1          9        1   150
#> [117,]  55   6      0        180        0   170
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  53   4      0        180        1   150
#> [122,]  55   6      0        180        1   100
#> [123,]  55   2      0        134        1   140
#> [124,]  54   3      0        180        0   128
#> [125,]  56   3      0          8        1   139
#> [126,]  55   1      0          2        0   130
#> [127,]  57   3      0          3        0   120
#> [128,]  54   7      1          2        0   129
#> [129,]  54   2      1          1        0   135
#> [130,]  52   9      1          3        0   170
#> [131,]  54   2      1          1        1   176
#> [132,]  57   5      1          3        1   138
#> [133,]  57   1      0        180        1   156
#> [134,]  56   4      1          0        1   140
#> [135,]  52   2      0        180        0   140
#> [136,]  55  11      1          7        0   104
#> [137,]  52  15      1         14        0   130
#> [138,]  56  14      1         11        0   130
#> [139,]  53   3      1          0        1   200
#> [140,]  57  10      0        180        1   170
#> [141,]  58   8      0          8        1   130
#> [142,]  54   5      0        180        1   108
#> [143,]  55   3      1          1        1   156
#> [144,]  57   0      0          0        1   150
#> [145,]  53  21      1         13        1   130
#> [146,]  59   3      1          1        0   172
#> [147,]  57   4      0        180        1   119
#> [148,]  58   6      1          0        1    90
#> [149,]  54  17      1          8        1   227
#> [150,]  54  23      1          8        0   120
#> [151,]  57   4      1          2        1   185
#> [152,]  53   7      1          0        1   120
#> [153,]  55   5      0          5        1   131
#> [154,]  54   7      1          0        1   141
#> [155,]  59  15      1         10        0   140
#> [156,]  58   9      1          0        1   180
#> [157,]  58   1      1          1        1   200
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  60  11      1          9        0   106
#> [162,]  59   3      0        180        0   120
#> [163,]  60   5      1          1        0   138
#> [164,]  57   5      0        180        1   130
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  58  26      1          0        1   189
#> [170,]  61   9      0          9        1   160
#> [171,]  58   4      1          3        0   120
#> [172,]  60   0      1          0        1    80
#> [173,]  59   2      1          1        0   140
#> [174,]  58   8      0        161        1   140
#> [175,]  58  14      1          6        0   190
#> [176,]  61   4      1          3        0   151
#> [177,]  61   3      1          2        1   102
#> [178,]  58   1      0          1        1   100
#> [179,]  61  20      1         13        0   130
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57   4      1          3        0   138
#> [183,]  57  11      0        180        1   150
#> [184,]  61   3      0         17        0   143
#> [185,]  56  14      0         45        0   130
#> [186,]  57   3      1          2        0   120
#> [187,]  56  18      1         11        1   165
#> [188,]  58  11      0        172        1   135
#> [189,]  60  12      1          0        1   114
#> [190,]  61   4      1          0        1   115
#> [191,]  56   8      1          8        0   120
#> [192,]  61  13      1         12        1   130
#> [193,]  57   1      0          1        0   126
#> [194,]  57  15      1         13        1   110
#> [195,]  61  13      0         13        0   210
#> [196,]  62  10      1          0        1   153
#> [197,]  62   7      1          2        1   180
#> [198,]  57   3      1          0        0   100
#> [199,]  61  18      0        170        0   140
#> [200,]  61  28      1          7        0   133
#> [201,]  58   8      1          3        1   150
#> [202,]  61   7      0          7        1   150
#> [203,]  59  13      1          2        0   198
#> [204,]  57  12      1          9        1   120
#> [205,]  62   4      1          0        0   160
#> [206,]  58   3      1          0        1   146
#> [207,]  62   4      1          3        0   173
#> [208,]  59   1      0        180        0   155
#> [209,]  59  16      1          9        1   133
#> [210,]  63   6      0         28        1   120
#> [211,]  61  13      0         13        0   120
#> [212,]  61   5      0          5        1   110
#> [213,]  57  18      1          9        1    93
#> [214,]  61   5      0          5        1   160
#> [215,]  58  11      1          9        0   179
#> [216,]  57   2      1          1        0   159
#> [217,]  62  17      1         10        1   180
#> [218,]  62   1      1          0        1   172
#> [219,]  63   3      1          1        0   180
#> [220,]  63   1      0        180        1   130
#> [221,]  61   7      0        180        0   135
#> [222,]  62   3      0        180        1   105
#> [223,]  63   4      0        180        1   190
#> [224,]  63   4      1          1        0   155
#> [225,]  59   8      0        180        1   140
#> [226,]  61   9      1          9        1   150
#> [227,]  58   9      1          9        0   110
#> [228,]  59   1      0         22        1   162
#> [229,]  59   4      0        180        0   196
#> [230,]  60   7      0          7        0   140
#> [231,]  59   5      1          1        0   148
#> [232,]  60   7      1          1        1    90
#> [233,]  65  13      0        180        1   100
#> [234,]  63   1      0          1        0   130
#> [235,]  62   6      0        180        0   170
#> [236,]  61  15      1         13        0   170
#> [237,]  59   4      0          4        0   149
#> [238,]  60   3      0          3        0   168
#> [239,]  64  10      1          9        0   160
#> [240,]  62   6      0          6        0   120
#> [241,]  60   8      0         17        1   130
#> [242,]  61   6      1          1        1   117
#> [243,]  64  12      1         11        0   160
#> [244,]  66   1      1          0        1   120
#> [245,]  64   6      1          0        1   140
#> [246,]  63  14      1          9        0   123
#> [247,]  63   4      1          3        0   162
#> [248,]  61  10      1          2        1   194
#> [249,]  64  32      1          9        1   160
#> [250,]  63  12      1          9        0   114
#> [251,]  65  10      1          8        1   120
#> [252,]  61  12      1         11        0   154
#> [253,]  64   9      0        180        0   150
#> [254,]  61   4      0        180        1   113
#> [255,]  65   3      0        180        1   190
#> [256,]  64   7      0        180        1   120
#> [257,]  66   6      1          1        1   130
#> [258,]  63  12      0         12        1   150
#> [259,]  62   3      1          1        1   199
#> [260,]  65   6      0          9        0   112
#> [261,]  65   3      1          0        1    80
#> [262,]  63   2      1          1        0   180
#> [263,]  62  13      1         11        0   180
#> [264,]  64   2      0          2        0   201
#> [265,]  66  16      1         11        1   169
#> [266,]  61  14      1          5        0   140
#> [267,]  63   9      1          8        1   160
#> [268,]  63   3      1          2        0   120
#> [269,]  63   2      1          0        0   140
#> [270,]  64  19      1          8        1   160
#> [271,]  67   6      0        180        1   170
#> [272,]  65  15      1         11        1   160
#> [273,]  68   5      1          4        1   150
#> [274,]  66   7      1          0        1   115
#> [275,]  66  13      1          0        0   118
#> [276,]  64  14      1         13        1   150
#> [277,]  66   6      1          0        1   140
#> [278,]  68   1      0        180        1   166
#> [279,]  63   7      1          0        0   162
#> [280,]  67   8      1          1        1   130
#> [281,]  64   1      0          1        1   120
#> [282,]  68  18      0        180        1   260
#> [283,]  63   8      1          1        1   162
#> [284,]  65  18      1          3        0   120
#> [285,]  68  11      0        180        0   160
#> [286,]  68  14      0         79        0   172
#> [287,]  65   4      1          2        1   145
#> [288,]  69  12      0         15        1   140
#> [289,]  66  15      1         13        1   160
#> [290,]  65  11      1          6        0   130
#> [291,]  69  21      1         10        0   180
#> [292,]  66   9      1          8        0   130
#> [293,]  63   8      0        180        1   120
#> [294,]  66   3      0          3        1   138
#> [295,]  69   1      1          0        0   170
#> [296,]  67   7      1          4        1   130
#> [297,]  67   2      0        180        0   184
#> [298,]  66  19      1         12        1   150
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  64   4      0        179        0   160
#> [303,]  64  11      0         11        0   125
#> [304,]  67   2      0         18        0   131
#> [305,]  66   7      1          5        1   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  65  13      1         12        1   130
#> [310,]  69  17      1         10        0   140
#> [311,]  69   8      0         93        0   140
#> [312,]  64  21      0         21        1   155
#> [313,]  66   6      0        180        0   140
#> [314,]  65   1      0          1        1   120
#> [315,]  65   6      0        101        1   115
#> [316,]  68   4      0          4        1   190
#> [317,]  71   3      0          5        0   112
#> [318,]  70   7      1          0        1   190
#> [319,]  71  20      1          0        1   160
#> [320,]  66   9      1          3        1   151
#> [321,]  70   4      1          0        1   180
#> [322,]  69   8      0        180        1   153
#> [323,]  70  14      0        171        0   166
#> [324,]  66   4      0        180        0   130
#> [325,]  69   0      0          0        1   148
#> [326,]  69   3      1          2        0   151
#> [327,]  69   8      0        180        1   180
#> [328,]  71   7      0          7        0   230
#> [329,]  66   2      0          2        1   228
#> [330,]  71   6      0         45        1   158
#> [331,]  69   5      0          5        1   142
#> [332,]  71   3      0        103        0   133
#> [333,]  69   3      0          3        1   130
#> [334,]  70  22      1         13        0   103
#> [335,]  67   1      0         36        1   104
#> [336,]  68   6      0        180        0   145
#> [337,]  69   8      1          5        1   195
#> [338,]  69   6      1          4        1   174
#> [339,]  72   3      1          0        1   132
#> [340,]  69   8      1          7        1   108
#> [341,]  66   2      1          1        0   123
#> [342,]  69  19      0        180        0   130
#> [343,]  68  18      0         18        1   100
#> [344,]  69  11      1          0        1   120
#> [345,]  66   2      0        180        0   130
#> [346,]  69   4      1          3        0   132
#> [347,]  68   2      0          7        1   130
#> [348,]  67  13      1          9        0   130
#> [349,]  70   9      0        180        1   142
#> [350,]  72   5      1          4        0   170
#> [351,]  67  22      1          1        1   140
#> [352,]  68   3      0         19        0   135
#> [353,]  69   1      0          1        1   110
#> [354,]  67   1      0          1        1    60
#> [355,]  67   4      0         60        1   136
#> [356,]  69   5      0         76        0   120
#> [357,]  67   8      1          0        1   130
#> [358,]  68  10      1          8        1   160
#> [359,]  66  24      1         13        0   130
#> [360,]  70  35      1          0        1   105
#> [361,]  72  30      1          0        1   145
#> [362,]  70   7      0          7        0   102
#> [363,]  71   6      0          9        0   120
#> [364,]  69  10      1          6        1   120
#> [365,]  70  11      0        180        1   210
#> [366,]  72  19      1          8        0   120
#> [367,]  72  12      1         10        0   170
#> [368,]  67   8      0        180        1   170
#> [369,]  67   5      1          0        1   147
#> [370,]  67   9      0        180        0   158
#> [371,]  73  13      0        152        1   130
#> [372,]  72   2      0          2        1   100
#> [373,]  67   4      1          1        0   134
#> [374,]  72   6      1          5        0   115
#> [375,]  71   1      0        173        1   188
#> [376,]  68  23      0        180        1   220
#> [377,]  69   3      0        180        0   220
#> [378,]  71   3      1          2        0   150
#> [379,]  68   4      1          3        0   210
#> [380,]  72   5      0         28        0   120
#> [381,]  71   5      0        180        0   191
#> [382,]  69  16      1         10        1   140
#> [383,]  68   7      0        180        1   130
#> [384,]  72  16      1          1        1   130
#> [385,]  69   1      1          0        0   155
#> [386,]  73   6      1          0        1   270
#> [387,]  72   8      1          1        1   150
#> [388,]  71   2      1          0        1   180
#> [389,]  73   7      0          7        1   140
#> [390,]  68  15      1         13        1   130
#> [391,]  70   3      0          3        1   159
#> [392,]  72   6      0        180        1   130
#> [393,]  73   0      0        180        1   161
#> [394,]  69   2      1          0        1   110
#> [395,]  71   3      1          1        0   150
#> [396,]  71  15      1         11        0   165
#> [397,]  74  20      0         20        1   180
#> [398,]  68   9      0        180        1   120
#> [399,]  71  20      1         10        0   140
#> [400,]  74   0      1          0        1    90
#> [401,]  71   8      1          7        0   149
#> [402,]  71   3      1          2        1   190
#> [403,]  73  10      1          8        0   106
#> [404,]  70  26      1         11        1   120
#> [405,]  73   6      0        180        0   110
#> [406,]  72  15      1          0        1   150
#> [407,]  71   7      1          2        0   143
#> [408,]  74   3      0          3        1   150
#> [409,]  71  13      1          8        0   121
#> [410,]  69   2      1          1        1    80
#> [411,]  70   4      1          0        1   140
#> [412,]  71  14      1         13        1   170
#> [413,]  75   1      0          1        0   133
#> [414,]  75   2      1          1        0   145
#> [415,]  72  10      1          9        1   160
#> [416,]  74  15      1          9        1   179
#> [417,]  73   1      0          1        1    80
#> [418,]  75  13      1          1        1   130
#> [419,]  71  11      1          8        0   110
#> [420,]  71   4      0          4        0   134
#> [421,]  73  10      1          8        0   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  72   7      0         57        1   145
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  70   3      0          3        0   150
#> [428,]  73   5      1          3        1   112
#> [429,]  76  25      1         12        1   170
#> [430,]  73  12      1         12        1   140
#> [431,]  75   1      0        180        1   140
#> [432,]  72   4      1          0        1   197
#> [433,]  71   3      1          0        0   144
#> [434,]  73   4      0        180        0   124
#> [435,]  74  34      1          8        1   233
#> [436,]  76   3      1          0        1   120
#> [437,]  72   5      0        180        0   154
#> [438,]  72   3      0        180        0   160
#> [439,]  76   5      0          5        1   130
#> [440,]  75   3      1          1        0   180
#> [441,]  72   7      1          2        0   142
#> [442,]  73  15      0         15        1   160
#> [443,]  71  16      0        180        0   140
#> [444,]  74   7      0        180        1   150
#> [445,]  76   1      0        180        0   114
#> [446,]  74   2      1          1        0   140
#> [447,]  76   8      1          0        1   141
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      0         85        1   120
#> [450,]  72   4      1          3        0   160
#> [451,]  73   4      1          3        1   125
#> [452,]  75   4      1          0        1   122
#> [453,]  75   7      0          7        0   190
#> [454,]  75   0      0          0        1   130
#> [455,]  73  13      1         11        0   195
#> [456,]  75  12      0         12        1   160
#> [457,]  74   8      1          0        1   105
#> [458,]  76  13      1          8        1   148
#> [459,]  76   4      0          4        1   155
#> [460,]  74   2      0        180        0   111
#> [461,]  73   0      0        180        0   156
#> [462,]  78  12      1         11        1   160
#> [463,]  76  44      1         10        0   105
#> [464,]  74  10      1          0        1   135
#> [465,]  76   5      1          0        1   167
#> [466,]  74   8      1          8        1   170
#> [467,]  75   9      0        180        1   140
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77   1      1          0        1    90
#> [473,]  76  12      1         11        1   120
#> [474,]  78   5      1          0        1   170
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  75   6      0        180        0   150
#> [478,]  74   2      1          0        1   130
#> [479,]  73  11      1          2        1   110
#> [480,]  78   7      0          7        1   133
#> [481,]  74  15      0        180        1   172
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  76  13      1          1        1   170
#> [485,]  78  32      1          9        1   198
#> [486,]  79   6      0        180        0   170
#> [487,]  80  10      1          6        1   147
#> [488,]  78   0      0        180        1   212
#> [489,]  75   5      0        119        1   150
#> [490,]  75  12      1          1        1   120
#> [491,]  78  15      0        180        1   270
#> [492,]  80   8      0          8        1   120
#> [493,]  75  13      1          6        0   150
#> [494,]  74  10      1          8        0   135
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  76  11      1          0        0   120
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  77  24      0         24        1   160
#> [502,]  80   9      0         23        1   128
#> [503,]  80   6      0          6        1   150
#> [504,]  78   6      1          0        1   240
#> [505,]  81   1      0          1        0   130
#> [506,]  78  11      1          8        1   118
#> [507,]  79   4      0          4        1   125
#> [508,]  76  10      1          8        0   180
#> [509,]  76  12      1         10        1   127
#> [510,]  77   6      0          6        1   107
#> [511,]  80   3      1          0        1   120
#> [512,]  75   2      1          1        1   204
#> [513,]  78  11      0        180        1   135
#> [514,]  77  31      1          3        1   161
#> [515,]  76   1      0          1        1    90
#> [516,]  78   7      1          0        1   110
#> [517,]  79   3      0          3        0   120
#> [518,]  77   7      0        180        1   170
#> [519,]  77   6      0          6        1   144
#> [520,]  81   1      0        180        0   120
#> [521,]  77   9      1          4        0   141
#> [522,]  82   5      0          8        1   120
#> [523,]  80  40      1          0        1   138
#> [524,]  78   4      0         59        1   112
#> [525,]  80  17      1         12        0   100
#> [526,]  80  15      1          0        1    90
#> [527,]  81   4      1          2        1   126
#> [528,]  79  28      0        164        0   100
#> [529,]  80   9      0        118        1   186
#> [530,]  80   6      0        173        1   160
#> [531,]  78  32      0        180        1   130
#> [532,]  79   1      0         37        1   140
#> [533,]  81   3      0        180        0   184
#> [534,]  81   2      0        175        0   172
#> [535,]  78   7      0          7        1   147
#> [536,]  77  13      1          0        1   190
#> [537,]  80   5      1          1        1   108
#> [538,]  79   3      0          3        1   101
#> [539,]  78  20      1          0        1   109
#> [540,]  80   1      0          1        0   100
#> [541,]  77  10      1          8        1   130
#> [542,]  82   3      1          1        1   144
#> [543,]  80   2      1          1        0   168
#> [544,]  79   6      0          6        0   152
#> [545,]  78   2      0        180        0   148
#> [546,]  82   1      1          0        1    82
#> [547,]  79  10      0        180        1   150
#> [548,]  77   4      0        180        1    98
#> [549,]  81   1      0        108        0   129
#> [550,]  78  12      0        180        0   134
#> [551,]  84  22      1         10        0   180
#> [552,]  83   9      1          5        1   170
#> [553,]  82   5      0        180        0   110
#> [554,]  83   5      0        180        0   148
#> [555,]  83   4      0        103        0    97
#> [556,]  81  11      1          8        0   160
#> [557,]  80  11      1          8        0   170
#> [558,]  79   4      0          4        1   183
#> [559,]  78   9      1          4        1   120
#> [560,]  79   1      0        180        1   170
#> [561,]  81  15      0        180        1   140
#> [562,]  83   8      0          8        0   115
#> [563,]  81  16      0         16        1   110
#> [564,]  80   6      1          0        1   150
#> [565,]  80  11      1          8        0   110
#> [566,]  80   8      1          7        0   160
#> [567,]  83   2      0          2        1   155
#> [568,]  82   6      0        128        1   100
#> [569,]  84   4      0        167        0   198
#> [570,]  82  23      1          0        0   110
#> [571,]  84   5      0        180        1   203
#> [572,]  80  13      1          8        1   140
#> [573,]  80   2      1          0        1   130
#> [574,]  80   6      0         71        1   189
#> [575,]  83   9      0        180        0   198
#> [576,]  79  14      1          0        0   110
#> [577,]  81  14      1         12        1   128
#> [578,]  82   0      0          2        1   100
#> [579,]  85   9      1          6        1   160
#> [580,]  83   1      0        180        0   160
#> [581,]  81   4      0          4        0   175
#> [582,]  84  15      1         13        1   110
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  86  12      0        180        1   120
#> [587,]  81  19      1         14        0   120
#> [588,]  82  15      1          0        0   183
#> [589,]  83   7      0        126        0   135
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  86   3      0          3        1   140
#> [593,]  82   9      0        180        1   134
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  82  14      1         11        1   103
#> [600,]  86   6      1          0        1   140
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  88  14      1          3        1   130
#> [604,]  84   3      0          3        1   121
#> [605,]  84   7      1          2        0   148
#> [606,]  84   9      0         92        1   110
#> [607,]  86   4      0         38        1   122
#> [608,]  86  13      0        177        0   163
#> [609,]  86   6      0          6        1   117
#> [610,]  84  13      0         62        1   100
#> [611,]  86   6      1          1        0   112
#> [612,]  88   4      0          4        0   100
#> [613,]  83  20      1          3        1   150
#> [614,]  85  22      0         22        1   184
#> [615,]  86   9      1          7        1   142
#> [616,]  87   2      0        180        1   130
#> [617,]  86   6      0         46        0   173
#> [618,]  88   2      0        180        1    68
#> [619,]  87   8      0          8        1   157
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  89   4      0          4        1   153
#> [623,]  89   5      0        119        1   140
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   2      0        110        1   174
#> [627,]  87  29      0         29        1    97
#> [628,]  87  15      1          9        1   138
#> [629,]  90  14      0         14        1   100
#> [630,]  86   4      0        180        1   145
#> [631,]  91   8      0          8        0   100
#> [632,]  87   2      0        180        0   160
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  88   8      0         50        1   154
#> [638,]  90  11      1         10        1   186
#> [639,]  86   9      1          7        0   130
#> [640,]  90   4      1          0        0   121
#> [641,]  91   1      0          1        1    74
#> [642,]  87  43      0        178        1   130
#> [643,]  90   5      1          0        1   125
#> [644,]  89   3      1          1        1   160
#> [645,]  92   1      0          1        1   167
#> [646,]  91   3      0         33        1   137
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  92   7      0          7        1   110
#> [653,]  91   0      0          0        0     0
#> [654,]  90  18      0        180        0   188
#> [655,]  94   6      0         50        0    78
#> [656,]  93   8      0        179        1   110
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
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
#>   [1] 180.0+   5.0+   2.0+   5.0+   2.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+
#>  [11]   5.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+  10.0+ 172.0+ 180.0+   7.0  180.0+ 180.0+   1.0  179.0+
#>  [71] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  36.0   88.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+
#>  [91] 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  16.0+ 152.0+   7.0+ 180.0+
#> [101] 180.0+ 180.0+ 171.0+ 180.0+ 174.0+  28.0  180.0+ 180.0+ 180.0+ 175.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+
#> [121] 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 140.0  180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141]   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 180.0+
#> [151]   4.0+ 180.0+   5.0+ 180.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [171] 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+
#> [181]  10.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+ 172.0+ 172.0+ 180.0+
#> [191]   8.0  180.0+   1.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0 
#> [201] 180.0+   7.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [211]  13.0+   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0   22.0  180.0+   7.0+
#> [231] 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+
#> [241]  17.0  180.0+  12.0  180.0+ 180.0+  14.0+ 180.0+  88.0  180.0+  12.0 
#> [251] 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0 
#> [261]   3.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0 
#> [271] 180.0+ 180.0+   5.0+ 179.0+ 166.0+  14.0+ 180.0+ 180.0+   7.0+   8.0 
#> [281]   1.0  180.0+ 180.0+ 123.0+ 180.0+  79.0    4.0+  15.0  180.0+ 180.0+
#> [291] 174.0+ 180.0+ 180.0+   3.0  175.0  180.0+ 180.0+  19.0+  12.0   99.0 
#> [301] 180.0+ 179.0+  11.0+  18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+ 180.0+
#> [311]  93.0   21.0+ 180.0+   1.0  101.0    4.0    5.0    7.0+ 180.0+ 180.0+
#> [321] 180.0+ 180.0+ 171.0  180.0+   0.5  180.0+ 180.0+   7.0+   2.0   45.0 
#> [331]   5.0+ 103.0    3.0+ 180.0+  36.0  180.0+ 180.0+  97.0  180.0+   8.0+
#> [341]   2.0+ 180.0+  18.0  180.0+ 180.0+ 180.0+   7.0   13.0+ 180.0+ 180.0+
#> [351]  51.0   19.0    1.0    1.0   60.0   76.0  180.0+  10.0+ 180.0+ 180.0+
#> [361] 162.0    7.0+   9.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [371] 152.0    2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [381] 180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0 
#> [391]   3.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0    0.5 
#> [401]   8.0    3.0   87.0  180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0    2.0 
#> [411] 180.0+  14.0+   1.0  180.0+ 159.0  180.0+   1.0   13.0  180.0+   4.0+
#> [421]  10.0  104.0+   1.0   57.0  180.0+  11.0    3.0+   5.0  180.0+  12.0 
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+ 180.0+   5.0  180.0+
#> [441]   7.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#> [451] 180.0+   4.0    7.0    0.5  180.0+  12.0  180.0+ 180.0+   4.0  180.0+
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+
#> [471] 180.0+   1.0   12.0  180.0+   3.0  168.0+ 180.0+ 176.0+  11.0    7.0 
#> [481] 180.0+   8.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+ 119.0   12.0 
#> [491] 180.0+   8.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0 
#> [501]  24.0   23.0    6.0  180.0+   1.0   11.0    4.0   10.0+ 180.0+   6.0 
#> [511]   3.0+   2.0+ 180.0+ 171.0    1.0   43.0    3.0  180.0+   6.0  180.0+
#> [521]  71.0    8.0   40.0   59.0   17.0  180.0+  93.0  164.0  118.0  173.0 
#> [531] 180.0+  37.0  180.0+ 175.0+   7.0+  22.0    5.0+   3.0   20.0+   1.0 
#> [541]  10.0  180.0+  10.0    6.0+ 180.0+   1.0  180.0+ 180.0+ 108.0  180.0+
#> [551] 180.0+   9.0+ 180.0+ 180.0+ 103.0  180.0+ 169.0    4.0  180.0+ 180.0+
#> [561] 180.0+   8.0+  16.0  180.0+ 180.0+ 180.0+   2.0  128.0  167.0   62.0 
#> [571] 180.0+ 180.0+ 180.0+  71.0  180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [581]   4.0+ 180.0+  16.0+   5.0+   4.0+ 180.0+ 180.0+  83.0  126.0  180.0+
#> [591] 165.0    3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 174.0    6.0 
#> [601]  43.0  180.0+  14.0    3.0  180.0+  92.0   38.0  177.0    6.0+  62.0 
#> [611]   6.0+   4.0+  20.0   22.0   11.0  180.0+  46.0  180.0+   8.0+ 180.0+
#> [621]   4.0    4.0  119.0  180.0+   1.0+ 110.0   29.0  180.0+  14.0  180.0+
#> [631]   8.0  180.0+  25.0  145.0    3.0   24.0   50.0   11.0  180.0+   4.0 
#> [641]   1.0  178.0+  89.0    3.0+   1.0   33.0  158.0   74.0  180.0+ 168.0 
#> [651] 169.0    7.0    0.5  180.0+  50.0  179.0+  76.0  180.0+  16.0   67.0 
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
#>   0.8531092 
```
