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
#> min 0.00386    43   3.021 0.1385       6
#> 1se 0.06896    12   3.152 0.1086       3
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
#>   [9,]  38   2      0        115        0   150
#>  [10,]  35   0      0        180        1   119
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  40   6      0        180        1   138
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42   4      0        180        0   162
#>  [20,]  42  15      1         13        1   125
#>  [21,]  42  12      1         10        1   170
#>  [22,]  43   2      1          1        1   116
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  45   6      0        180        1   170
#>  [26,]  44   2      1          1        1   150
#>  [27,]  43   2      0        180        1   140
#>  [28,]  45   2      0        180        1   140
#>  [29,]  47   4      1          3        0   118
#>  [30,]  45   3      0        150        0   130
#>  [31,]  43  29      0        180        1   180
#>  [32,]  43  10      0        180        0   185
#>  [33,]  47   6      1          0        1   116
#>  [34,]  46  13      1         10        0   100
#>  [35,]  47   4      1          3        1   160
#>  [36,]  45   8      1          0        1   117
#>  [37,]  49   5      0         73        1   136
#>  [38,]  46   2      1          1        1   122
#>  [39,]  44   4      1          0        1   114
#>  [40,]  47   2      0        180        0   108
#>  [41,]  44   9      1          8        1   135
#>  [42,]  45   5      0        180        1   190
#>  [43,]  46   5      1          3        0   130
#>  [44,]  44   2      0        180        0   142
#>  [45,]  45   9      1          0        1   145
#>  [46,]  48   3      0        180        0   154
#>  [47,]  47   5      1          3        1   130
#>  [48,]  47   9      1          6        0   170
#>  [49,]  46   3      1          0        1   119
#>  [50,]  50   1      1          0        1   129
#>  [51,]  48   2      1          0        0   184
#>  [52,]  50   6      1          2        1   140
#>  [53,]  46   3      1          1        1   140
#>  [54,]  46   9      1          9        1   122
#>  [55,]  50   7      0        180        1   110
#>  [56,]  51   1      0          1        1   145
#>  [57,]  49  15      1         11        1   160
#>  [58,]  49  23      0        179        1   112
#>  [59,]  46   6      1          0        1   156
#>  [60,]  52   2      0        180        1   170
#>  [61,]  50   7      1          0        1    92
#>  [62,]  50   1      1          0        0   150
#>  [63,]  50   9      0        180        0   130
#>  [64,]  47   8      0        180        0   160
#>  [65,]  51   8      0        180        1   140
#>  [66,]  52   2      0        180        0   155
#>  [67,]  46   1      1          1        0   145
#>  [68,]  50   4      1          1        0   150
#>  [69,]  48  17      1         10        0   111
#>  [70,]  52   4      1          4        0   152
#>  [71,]  54  17      1         12        1   102
#>  [72,]  53   5      0         77        0   159
#>  [73,]  53   7      1          0        0   199
#>  [74,]  54   6      1          3        0   129
#>  [75,]  50   2      0          5        1   106
#>  [76,]  50  14      1         13        0   170
#>  [77,]  53   8      1          7        0   160
#>  [78,]  48   3      1          2        0   150
#>  [79,]  49   5      1          2        1   150
#>  [80,]  52  14      1          7        1   200
#>  [81,]  48  11      1         10        0   120
#>  [82,]  53   4      1          0        1   156
#>  [83,]  51  13      0         99        1   160
#>  [84,]  54   9      1          0        1   138
#>  [85,]  49  16      0         16        0   125
#>  [86,]  55   3      1          1        0   150
#>  [87,]  54  23      1         10        0   131
#>  [88,]  52   7      1          2        0   154
#>  [89,]  54   9      1          1        0   130
#>  [90,]  52   4      0        180        1   180
#>  [91,]  51  13      1         11        0   145
#>  [92,]  50   5      1          4        1   150
#>  [93,]  54   4      1          0        1   121
#>  [94,]  52   4      0        180        0   183
#>  [95,]  50   3      0        174        1   153
#>  [96,]  55  28      1         13        1   160
#>  [97,]  49   6      1          0        1   130
#>  [98,]  50   7      1          1        0   156
#>  [99,]  53   8      1          0        1   130
#> [100,]  56   4      1          1        1   130
#> [101,]  52   5      0        175        1   117
#> [102,]  55   2      0          2        0   145
#> [103,]  54   1      0        180        0   162
#> [104,]  54   7      1          0        1   100
#> [105,]  56   3      0        180        1   193
#> [106,]  56   2      0        180        0   132
#> [107,]  52   8      0        180        0   119
#> [108,]  54   3      0        180        1   180
#> [109,]  53  15      0         15        1    90
#> [110,]  53   4      0        180        1   150
#> [111,]  55   6      0        180        1   100
#> [112,]  55   6      1          5        1   138
#> [113,]  54  12      1          0        1   190
#> [114,]  55   2      0        134        1   140
#> [115,]  54   3      0        180        0   128
#> [116,]  56   3      0          8        1   139
#> [117,]  57   3      0          3        0   120
#> [118,]  52   9      1          3        0   170
#> [119,]  57   5      1          3        1   138
#> [120,]  57   1      0        180        1   156
#> [121,]  57   1      0          1        1   100
#> [122,]  56   4      1          0        1   140
#> [123,]  55  11      1          7        0   104
#> [124,]  56  14      1         11        0   130
#> [125,]  58   8      0          8        1   130
#> [126,]  54   5      0        180        1   108
#> [127,]  57   4      0        180        1   119
#> [128,]  53  15      1         10        1   130
#> [129,]  55  13      0        166        1   140
#> [130,]  56   5      0          5        1   150
#> [131,]  54  23      1          8        0   120
#> [132,]  53   7      1          0        1   120
#> [133,]  57  11      1         10        1   129
#> [134,]  55   3      1          2        0   140
#> [135,]  54   7      1          0        1   141
#> [136,]  59  15      1         10        0   140
#> [137,]  58   1      1          1        1   200
#> [138,]  55   2      0          2        0   106
#> [139,]  59   9      1          1        1   125
#> [140,]  57   1      0        180        0   148
#> [141,]  59   3      0        180        0   120
#> [142,]  57   2      0          2        1   120
#> [143,]  60   5      1          1        0   138
#> [144,]  57   5      0        180        1   130
#> [145,]  57  10      1          9        0   103
#> [146,]  59   6      1          0        1   140
#> [147,]  59   5      0        180        1   155
#> [148,]  58  26      1          0        1   189
#> [149,]  61   9      0          9        1   160
#> [150,]  58   4      1          3        0   120
#> [151,]  60   0      1          0        1    80
#> [152,]  59   2      1          1        0   140
#> [153,]  58   8      0        161        1   140
#> [154,]  58  14      1          6        0   190
#> [155,]  61   4      1          3        0   151
#> [156,]  61   3      1          2        1   102
#> [157,]  58   1      0          1        1   100
#> [158,]  57  13      1         10        0   110
#> [159,]  58  10      0         10        1   150
#> [160,]  57   4      1          3        0   138
#> [161,]  57  11      0        180        1   150
#> [162,]  61   3      0         17        0   143
#> [163,]  57   3      1          2        0   120
#> [164,]  58  19      1         13        1   140
#> [165,]  56  18      1         11        1   165
#> [166,]  59   9      1          0        1    80
#> [167,]  58  11      0        172        1   135
#> [168,]  55   9      1          7        1   135
#> [169,]  61  13      1         12        1   130
#> [170,]  59  11      1          8        1   190
#> [171,]  57   1      0          1        0   126
#> [172,]  57  15      1         13        1   110
#> [173,]  58   5      1          1        1   135
#> [174,]  59  10      0        180        0   160
#> [175,]  61   8      0         77        0   120
#> [176,]  61  13      0         13        0   210
#> [177,]  58   8      1          5        0   152
#> [178,]  57   3      1          0        0   100
#> [179,]  57   7      0        169        0   180
#> [180,]  59  13      1          2        0   198
#> [181,]  57  12      1          9        1   120
#> [182,]  62   4      1          0        0   160
#> [183,]  60  17      1          8        1   140
#> [184,]  58   3      1          0        1   146
#> [185,]  58   2      0         30        0   202
#> [186,]  63   6      0         28        1   120
#> [187,]  61  13      0         13        0   120
#> [188,]  61   5      0          5        1   110
#> [189,]  57   2      1          1        0   159
#> [190,]  62   1      1          0        1   172
#> [191,]  58   7      0        180        1   150
#> [192,]  63   3      1          1        0   180
#> [193,]  63   1      0        180        1   130
#> [194,]  61   7      0        180        0   135
#> [195,]  63   4      1          3        0   222
#> [196,]  63  15      1         10        1   126
#> [197,]  64   4      0        180        0   130
#> [198,]  60  18      1         13        0   132
#> [199,]  62   7      0          7        0   150
#> [200,]  59   1      0         22        1   162
#> [201,]  58   2      0        180        0   127
#> [202,]  60   7      1          5        1   141
#> [203,]  60   7      0          7        0   140
#> [204,]  59   5      1          1        0   148
#> [205,]  65  13      0        180        1   100
#> [206,]  63   1      0          1        0   162
#> [207,]  63   1      0          1        0   130
#> [208,]  61  15      1         13        0   170
#> [209,]  59   4      0          4        0   149
#> [210,]  60   3      0          3        0   168
#> [211,]  64  10      1          9        0   160
#> [212,]  62   6      0          6        0   120
#> [213,]  63  12      1         10        0   200
#> [214,]  60   8      0         17        1   130
#> [215,]  61   6      1          1        1   117
#> [216,]  64  12      1         11        0   160
#> [217,]  65  36      1         11        0   140
#> [218,]  61  10      1          2        1   194
#> [219,]  64  32      1          9        1   160
#> [220,]  63  12      1          9        0   114
#> [221,]  63   7      0        180        0   120
#> [222,]  66   5      1          0        1   110
#> [223,]  65   8      1          0        0   168
#> [224,]  64   0      0          0        1    90
#> [225,]  60   6      0        180        0   130
#> [226,]  61  12      1         11        0   154
#> [227,]  64   9      0        180        0   150
#> [228,]  61   4      0        180        1   113
#> [229,]  65   3      0        180        1   190
#> [230,]  63  16      1          7        1   110
#> [231,]  64   7      0        180        1   120
#> [232,]  66   6      1          1        1   130
#> [233,]  63  12      0         12        1   150
#> [234,]  65   6      0          9        0   112
#> [235,]  65   3      1          0        1    80
#> [236,]  63   5      1          4        0   170
#> [237,]  62  13      1         11        0   180
#> [238,]  66  16      1         11        1   169
#> [239,]  61  14      1          5        0   140
#> [240,]  61  15      1         10        0   130
#> [241,]  63   2      1          0        0   140
#> [242,]  64  19      1          8        1   160
#> [243,]  65   8      1          0        1   140
#> [244,]  67   6      0        180        1   170
#> [245,]  64  13      1         12        1   150
#> [246,]  64   6      1          0        1   125
#> [247,]  66   7      1          0        1   115
#> [248,]  66  13      1          0        0   118
#> [249,]  65   3      0          3        0   105
#> [250,]  64   0      0          0        1   148
#> [251,]  67   4      1          3        0   130
#> [252,]  66   3      1          0        1   135
#> [253,]  66   6      1          0        1   140
#> [254,]  68   1      0        180        1   166
#> [255,]  63   7      1          0        0   162
#> [256,]  63  10      0         16        1   160
#> [257,]  66  14      0        180        0   130
#> [258,]  64   1      0          1        1   120
#> [259,]  65  17      1         14        1   100
#> [260,]  63   8      1          1        1   162
#> [261,]  65  18      1          3        0   120
#> [262,]  63   1      1          0        1   155
#> [263,]  63  10      0         18        1   130
#> [264,]  67  11      0         11        0   150
#> [265,]  68  11      0        180        0   160
#> [266,]  68  14      0         79        0   172
#> [267,]  66  12      1         10        1   150
#> [268,]  66  11      1          0        0   100
#> [269,]  65   4      1          2        1   145
#> [270,]  69  12      0         15        1   140
#> [271,]  66  15      1         13        1   160
#> [272,]  63   2      0        180        0   150
#> [273,]  65  11      1          6        0   130
#> [274,]  69  21      1         10        0   180
#> [275,]  69   6      0        180        1   100
#> [276,]  68  14      1         13        1   140
#> [277,]  65   8      1          0        1    90
#> [278,]  69   1      1          0        0   170
#> [279,]  68  10      1         10        1   150
#> [280,]  67   7      1          4        1   130
#> [281,]  67   2      0        180        0   184
#> [282,]  69   6      0         99        1   140
#> [283,]  65   4      1          1        0   130
#> [284,]  64   4      0        179        0   160
#> [285,]  66   4      0        180        1   130
#> [286,]  64  11      0         11        0   125
#> [287,]  64   4      0        180        1   140
#> [288,]  64   0      1          0        1   118
#> [289,]  67   2      0         18        0   131
#> [290,]  66   7      1          5        1   131
#> [291,]  66   4      0        180        0   177
#> [292,]  69   4      1          3        1   150
#> [293,]  69  17      1         10        0   140
#> [294,]  69   8      0         93        0   140
#> [295,]  64  21      0         21        1   155
#> [296,]  66   6      0        180        0   140
#> [297,]  68   4      0          4        1   190
#> [298,]  71   3      0          5        0   112
#> [299,]  70   7      1          0        1   190
#> [300,]  71  20      1          0        1   160
#> [301,]  67   2      0        180        0   128
#> [302,]  66   9      1          3        1   151
#> [303,]  66   1      1          1        1   165
#> [304,]  69   8      0        180        1   153
#> [305,]  70  14      0        171        0   166
#> [306,]  67   6      1          4        0   130
#> [307,]  68  18      1         14        1   170
#> [308,]  69   0      0          0        1   148
#> [309,]  68   7      1          0        1   150
#> [310,]  65  14      1         13        1   150
#> [311,]  69   8      0        180        1   180
#> [312,]  71   7      0          7        0   230
#> [313,]  71   6      0         45        1   158
#> [314,]  69   5      0          5        1   142
#> [315,]  71   3      0        103        0   133
#> [316,]  70  22      1         13        0   103
#> [317,]  67   1      0         36        1   104
#> [318,]  67   5      0          5        0   130
#> [319,]  68   6      0        180        0   145
#> [320,]  69   8      1          5        1   195
#> [321,]  69   6      1          4        1   174
#> [322,]  72   7      0          7        1   110
#> [323,]  67   3      0        180        0   110
#> [324,]  66   2      1          1        0   123
#> [325,]  69  19      0        180        0   130
#> [326,]  68  18      0         18        1   100
#> [327,]  67  14      0        172        1   140
#> [328,]  69  11      1          0        1   120
#> [329,]  66   2      0        180        0   130
#> [330,]  67   7      1          4        0   122
#> [331,]  69   4      1          3        0   132
#> [332,]  68   2      0          7        1   130
#> [333,]  70   3      0        123        0   130
#> [334,]  72   5      1          4        0   170
#> [335,]  67  22      1          1        1   140
#> [336,]  68   3      0         19        0   135
#> [337,]  69   1      0          1        1   110
#> [338,]  67   4      0         60        1   136
#> [339,]  69   5      0         76        0   120
#> [340,]  72  13      1         11        1   195
#> [341,]  70  35      1          0        1   105
#> [342,]  72  30      1          0        1   145
#> [343,]  70   7      0          7        0   102
#> [344,]  68   7      1          2        0   135
#> [345,]  73  20      1          0        1   170
#> [346,]  71   6      0          9        0   120
#> [347,]  69  10      1          6        1   120
#> [348,]  70  11      0        180        1   210
#> [349,]  72  19      1          8        0   120
#> [350,]  72  12      1         10        0   170
#> [351,]  67   8      0        180        1   170
#> [352,]  73  13      0        152        1   130
#> [353,]  70   5      0        180        0   150
#> [354,]  72   2      0          2        1   100
#> [355,]  67   4      1          1        0   134
#> [356,]  72   6      1          5        0   115
#> [357,]  71   1      0        173        1   188
#> [358,]  68  23      0        180        1   220
#> [359,]  70   3      0        180        0   121
#> [360,]  69   3      0        180        0   220
#> [361,]  68   4      1          3        0   210
#> [362,]  71   5      0        180        0   191
#> [363,]  73   6      0        180        1   117
#> [364,]  69  16      1         10        1   140
#> [365,]  69   8      1          1        0   164
#> [366,]  72  16      1          1        1   130
#> [367,]  70   4      0        180        0   180
#> [368,]  69   1      1          0        0   155
#> [369,]  73   6      1          0        1   270
#> [370,]  72   8      1          1        1   150
#> [371,]  71   2      1          0        1   180
#> [372,]  73   7      0          7        1   140
#> [373,]  68  15      1         13        1   130
#> [374,]  70   3      0          3        1   159
#> [375,]  70  13      1          9        0   100
#> [376,]  73   0      0        180        1   161
#> [377,]  74   8      1          0        1    85
#> [378,]  71   3      1          1        0   150
#> [379,]  71  15      1         11        0   165
#> [380,]  74  20      0         20        1   180
#> [381,]  68   9      0        180        1   120
#> [382,]  71  17      1         11        0   160
#> [383,]  71   8      1          7        0   149
#> [384,]  73  10      1          8        0   106
#> [385,]  69  12      1          1        1   149
#> [386,]  70  26      1         11        1   120
#> [387,]  73   4      0         58        1   160
#> [388,]  72   5      1          3        1   160
#> [389,]  70   3      0        180        1   154
#> [390,]  73   6      0        180        0   110
#> [391,]  72   8      1          0        1   140
#> [392,]  74   3      0          3        1   150
#> [393,]  73  17      1         11        0   140
#> [394,]  71  13      1          8        0   121
#> [395,]  70   4      1          0        1   140
#> [396,]  72  10      1          8        1   153
#> [397,]  70   8      0          8        0   120
#> [398,]  71  10      1          9        1   120
#> [399,]  75   1      0          1        0   133
#> [400,]  75   2      1          1        0   145
#> [401,]  73  10      1          9        1   146
#> [402,]  72  10      1          9        1   160
#> [403,]  73  10      1         10        1   120
#> [404,]  74  15      1          9        1   179
#> [405,]  71   2      0         10        1   112
#> [406,]  73   1      0          1        1    80
#> [407,]  71  11      1          8        0   110
#> [408,]  71   4      0          4        0   134
#> [409,]  72  15      1         12        1   120
#> [410,]  73  10      1          8        0   120
#> [411,]  72   1      1          1        0   168
#> [412,]  73  10      0        180        0   162
#> [413,]  72  11      0         11        1   140
#> [414,]  70   3      0          3        0   150
#> [415,]  73   5      1          3        1   112
#> [416,]  72   2      0        180        0   120
#> [417,]  75   1      0        180        1   140
#> [418,]  72   4      1          0        1   197
#> [419,]  73   5      0        180        0   126
#> [420,]  73   4      0        180        0   124
#> [421,]  74  34      1          8        1   233
#> [422,]  71  32      1         12        1   107
#> [423,]  72   5      0        180        0   154
#> [424,]  76   5      0          5        1   130
#> [425,]  77  11      0         11        1   150
#> [426,]  77   4      0          4        0   185
#> [427,]  75   3      1          1        0   180
#> [428,]  72   7      1          2        0   142
#> [429,]  73  15      0         15        1   160
#> [430,]  74   7      0        180        1   150
#> [431,]  76   1      0        180        0   114
#> [432,]  73   6      0          6        1   114
#> [433,]  75  23      1         14        1   110
#> [434,]  72   4      1          3        0   160
#> [435,]  76  17      1          0        1   200
#> [436,]  73   4      1          3        1   125
#> [437,]  73  13      1         11        0   195
#> [438,]  74   8      1          0        1   105
#> [439,]  76  13      1          8        1   148
#> [440,]  75   4      1          2        1   188
#> [441,]  74   6      0        180        0   160
#> [442,]  76   4      0          4        1   155
#> [443,]  75   1      0          1        1   125
#> [444,]  74   2      0        180        0   111
#> [445,]  73   1      0         52        1   105
#> [446,]  73   0      0        180        0   156
#> [447,]  72   5      0        180        0   120
#> [448,]  78  12      1         11        1   160
#> [449,]  76   5      0        180        0   185
#> [450,]  76   5      1          0        1   167
#> [451,]  75   9      0        180        1   140
#> [452,]  73  33      1         12        1   175
#> [453,]  77   5      1          0        0   123
#> [454,]  73  10      1          9        0   146
#> [455,]  77   1      1          0        1    90
#> [456,]  76  12      1         11        1   120
#> [457,]  73   7      1          0        0   174
#> [458,]  74   6      0         79        1   140
#> [459,]  75   3      1          1        1   171
#> [460,]  74   9      1          8        0   200
#> [461,]  75   6      0        180        0   150
#> [462,]  79  10      1          8        0   190
#> [463,]  74   2      1          0        1   130
#> [464,]  78  18      0         18        1   144
#> [465,]  76  29      0         47        0    90
#> [466,]  73   8      1          1        1   162
#> [467,]  74   2      0        180        0   100
#> [468,]  74   7      0          7        0   161
#> [469,]  76  13      1          1        1   170
#> [470,]  78   0      0        180        1   212
#> [471,]  78  13      1          5        0   130
#> [472,]  75   5      0        119        1   150
#> [473,]  80   8      0          8        1   120
#> [474,]  74  10      1          8        0   135
#> [475,]  79   4      0         80        0   145
#> [476,]  78  12      1          9        0   150
#> [477,]  75   4      1          0        0   212
#> [478,]  77   2      1          0        1   143
#> [479,]  78  10      0        180        1   130
#> [480,]  75  11      1          4        0   162
#> [481,]  75   3      0          3        0     0
#> [482,]  76   7      0         29        1   150
#> [483,]  77  24      0         24        1   160
#> [484,]  79   8      0         32        1   120
#> [485,]  80   6      0          6        1   150
#> [486,]  78   6      1          0        1   240
#> [487,]  76   3      1          0        1   140
#> [488,]  79  11      0        180        0   160
#> [489,]  79   2      1          0        1   121
#> [490,]  78  14      1          0        1   140
#> [491,]  81   1      0          1        0   130
#> [492,]  78  11      1          8        1   118
#> [493,]  76   4      0          4        1   160
#> [494,]  79   4      0          4        1   125
#> [495,]  76  12      1         10        1   127
#> [496,]  77   6      0          6        1   107
#> [497,]  80   3      1          0        1   120
#> [498,]  75   2      1          1        1   204
#> [499,]  78  11      0        180        1   135
#> [500,]  77  31      1          3        1   161
#> [501,]  76   1      0          1        1    90
#> [502,]  78   7      1          0        1   110
#> [503,]  79   3      0          3        0   120
#> [504,]  79   4      1          0        1   120
#> [505,]  80  15      1         12        1   150
#> [506,]  77   9      1          4        0   141
#> [507,]  82   5      0          8        1   120
#> [508,]  80  40      1          0        1   138
#> [509,]  80  17      1         12        0   100
#> [510,]  76   7      0        161        0   151
#> [511,]  80  15      1          0        1    90
#> [512,]  79  28      0        164        0   100
#> [513,]  79   1      0         37        1   140
#> [514,]  81   3      0        180        0   184
#> [515,]  78   7      0          7        1   147
#> [516,]  77  13      1          0        1   190
#> [517,]  78  15      0         15        0   165
#> [518,]  78   4      0        180        0   175
#> [519,]  78  26      1          5        0   194
#> [520,]  77   5      0         85        0   188
#> [521,]  80   2      1          1        0   168
#> [522,]  79   6      0          6        0   152
#> [523,]  80   6      1          0        1   119
#> [524,]  78   2      0        180        0   148
#> [525,]  80   5      0          5        1   130
#> [526,]  82   1      1          0        1    82
#> [527,]  79  10      0        180        1   150
#> [528,]  77   4      0        180        1    98
#> [529,]  78  12      0        180        0   134
#> [530,]  79   1      0        125        0   193
#> [531,]  82  21      1          2        0   155
#> [532,]  84  22      1         10        0   180
#> [533,]  79   4      0          4        1   121
#> [534,]  80   6      0          6        1   110
#> [535,]  82   5      0        180        0   110
#> [536,]  83   5      0        180        0   148
#> [537,]  79   7      1          6        0   130
#> [538,]  83   4      0        103        0    97
#> [539,]  81  11      1          8        0   160
#> [540,]  81   5      0        177        0    41
#> [541,]  80  11      1          8        0   170
#> [542,]  78  23      1         10        1   145
#> [543,]  82   8      1          1        0   128
#> [544,]  79   1      0        180        1   170
#> [545,]  81  15      0        180        1   140
#> [546,]  80   7      1          0        1   146
#> [547,]  81  20      1          9        0   170
#> [548,]  81  16      0         16        1   110
#> [549,]  80   6      1          0        1   150
#> [550,]  80  11      1          8        0   110
#> [551,]  81   8      0        180        0   146
#> [552,]  80   8      1          7        0   160
#> [553,]  79   7      0        177        0   197
#> [554,]  85   4      0        180        0    90
#> [555,]  81   2      1          1        0   198
#> [556,]  82   6      0        128        1   100
#> [557,]  80   3      1          1        1   230
#> [558,]  82  23      1          0        0   110
#> [559,]  84   5      0        180        1   203
#> [560,]  84   4      0          4        1    85
#> [561,]  84   1      0         38        1   205
#> [562,]  79   9      1          8        0   150
#> [563,]  80  13      1          8        1   140
#> [564,]  84   4      0         89        1   129
#> [565,]  79   4      0          4        1    60
#> [566,]  80   6      0         71        1   189
#> [567,]  83   1      0          1        1   100
#> [568,]  82  19      0         19        0   120
#> [569,]  80  30      1         13        0   220
#> [570,]  83   9      0        180        0   198
#> [571,]  79  14      1          0        0   110
#> [572,]  83   3      0        114        0    98
#> [573,]  81  14      1         12        1   128
#> [574,]  83   2      0        154        0   130
#> [575,]  82   0      0          2        1   100
#> [576,]  85   9      1          6        1   160
#> [577,]  83   1      0        180        0   160
#> [578,]  84  15      1         13        1   110
#> [579,]  82   5      1          0        1   146
#> [580,]  81   4      0          4        0   160
#> [581,]  83  12      1          2        1   170
#> [582,]  81  19      1         14        0   120
#> [583,]  82   3      1          2        0   130
#> [584,]  82  15      1          0        0   183
#> [585,]  80   2      0         88        0   135
#> [586,]  86   8      0          8        1   132
#> [587,]  81  16      1          9        0   180
#> [588,]  84   6      0        165        0   145
#> [589,]  86   3      0          3        1   140
#> [590,]  82   9      0        180        1   134
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  85   3      0          3        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  87   2      0          5        1   137
#> [597,]  86  12      1          0        1   132
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  83  19      0         43        0   150
#> [601,]  84   3      1          2        0   125
#> [602,]  86   2      0        180        1   169
#> [603,]  88  14      1          3        1   130
#> [604,]  84   3      0          3        1   121
#> [605,]  83  13      1         12        0   170
#> [606,]  84   7      1          2        0   148
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  83  20      1          3        1   150
#> [615,]  88   4      0          4        1   115
#> [616,]  83   9      0         65        1   150
#> [617,]  86   9      1          7        1   142
#> [618,]  88   3      0        115        0   110
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   4      0          4        1   153
#> [625,]  87   6      0        180        1   110
#> [626,]  84   8      0        180        1   119
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  91   8      0          8        0   100
#> [634,]  87   6      1          0        0   125
#> [635,]  91  10      0        145        0   135
#> [636,]  86   3      1          0        1    80
#> [637,]  88   7      0         24        0   119
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  86  10      0        180        1   137
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  90   5      1          0        1   125
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89  14      0        180        1    84
#> [655,]  90  18      0        180        0   188
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [31] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  179.0+ 179.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  88.0+   4.0+
#>  [71] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+  85.0 
#>  [81] 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+ 180.0+ 180.0+
#>  [91]  13.0+ 171.0+ 180.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+ 180.0+ 180.0+
#> [101] 175.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0+ 180.0+
#> [111] 180.0+ 180.0+  12.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 140.0  180.0+
#> [121]   1.0  165.0  180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 166.0+   5.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0    2.0+ 180.0+ 180.0+
#> [141] 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+
#> [151]   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0    1.0  180.0+  10.0+ 180.0+
#> [161] 180.0+  17.0    3.0+  19.0  180.0+   9.0+ 172.0+  24.0  180.0+ 180.0+
#> [171]   1.0+  15.0  180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 169.0  180.0+
#> [181] 180.0+ 180.0+ 180.0+   3.0+  30.0   28.0   13.0+   5.0  180.0+   1.0 
#> [191] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0 
#> [201] 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   4.0+   3.0+
#> [211] 167.0    6.0+ 180.0+  17.0  180.0+  12.0   36.0   88.0  180.0+  12.0 
#> [221] 180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+  12.0    9.0    3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [241]   2.0+ 103.0   15.0  180.0+  13.0  180.0+ 179.0+ 166.0+   3.0    0.5+
#> [251] 180.0+   3.0+ 180.0+ 180.0+   7.0+  16.0  180.0+   1.0  180.0+ 180.0+
#> [261] 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0  180.0+   4.0+  15.0 
#> [271] 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+ 175.0   10.0  180.0+
#> [281] 180.0+  99.0  180.0+ 179.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+
#> [291] 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+   4.0    5.0    7.0+ 180.0+
#> [301] 180.0+ 180.0+   1.0  180.0+ 171.0    6.0  180.0+   0.5  180.0+  14.0+
#> [311] 180.0+   7.0+  45.0    5.0+ 103.0  180.0+  36.0    5.0+ 180.0+ 180.0+
#> [321]  97.0    7.0  180.0+   2.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0 
#> [331] 180.0+   7.0  123.0  180.0+  51.0   19.0    1.0   60.0   76.0  132.0 
#> [341] 180.0+ 162.0    7.0+   7.0+ 124.0    9.0  180.0+ 180.0+ 180.0+  12.0 
#> [351] 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+
#> [361] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+
#> [371] 180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0 
#> [381] 180.0+ 180.0+   8.0   87.0   12.0  180.0+  58.0  180.0+ 180.0+ 180.0+
#> [391] 180.0+   3.0  180.0+ 175.0  180.0+  10.0+   8.0+ 179.0+   1.0  180.0+
#> [401] 180.0+ 159.0   15.0  180.0+  10.0    1.0  180.0+   4.0+ 180.0+  10.0 
#> [411]   1.0  180.0+  11.0    3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [421]  34.0  177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+   7.0   15.0+ 180.0+
#> [431] 180.0+   6.0  180.0+ 180.0+  17.0+ 180.0+ 180.0+ 180.0+ 180.0+  46.0 
#> [441] 180.0+   4.0    1.0  180.0+  52.0  180.0+ 180.0+  12.0  180.0+ 180.0+
#> [451] 180.0+  33.0    5.0  180.0+   1.0   12.0    7.0+  79.0    3.0  168.0+
#> [461] 180.0+ 180.0+ 176.0+  18.0   47.0  180.0+ 180.0+   7.0  180.0+ 180.0+
#> [471] 172.0  119.0    8.0  180.0+  80.0  180.0+   4.0+   2.0  180.0+ 152.0+
#> [481]   3.0   29.0   24.0   32.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [491]   1.0   11.0    4.0    4.0  180.0+   6.0    3.0+   2.0+ 180.0+ 171.0 
#> [501]   1.0   43.0    3.0  138.0  180.0+  71.0    8.0   40.0   17.0  161.0 
#> [511] 180.0+ 164.0   37.0  180.0+   7.0+  22.0   15.0+ 180.0+ 171.0+  85.0 
#> [521]  10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 180.0+ 125.0 
#> [531] 180.0+ 180.0+   4.0    6.0  180.0+ 180.0+ 180.0+ 103.0  180.0+ 177.0+
#> [541] 169.0   70.0  180.0+ 180.0+ 180.0+   7.0+  20.0   16.0  180.0+ 180.0+
#> [551] 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 128.0    3.0+  62.0  180.0+   4.0 
#> [561]  38.0  180.0+ 180.0+  89.0    4.0   71.0    1.0   19.0   30.0  180.0+
#> [571] 180.0+ 114.0  180.0+ 154.0    2.0  180.0+ 180.0+ 180.0+   5.0+   4.0+
#> [581]  77.0  180.0+   3.0   83.0   88.0    8.0  180.0+ 165.0    3.0  180.0+
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   43.0 
#> [601] 180.0+ 180.0+  14.0    3.0   13.0  180.0+  92.0  180.0+ 177.0    3.0+
#> [611]   6.0+  62.0    6.0+  20.0    4.0   65.0   11.0  115.0  180.0+   3.0+
#> [621]   8.0+ 180.0+   4.0    4.0  180.0+ 180.0+ 110.0   29.0  180.0+  14.0 
#> [631]   1.0+ 180.0+   8.0   25.0  145.0    3.0   24.0   50.0   11.0  126.0 
#> [641] 180.0+   4.0    1.0  178.0+  89.0    3.0+   1.0   33.0  158.0  168.0 
#> [651] 169.0   52.0    7.0  180.0+ 180.0+ 180.0+  50.0    1.0+ 179.0+   8.0+
#> [661]  76.0  180.0+  16.0    8.0   26.0   53.0    7.0+   0.5  180.0+   3.0 
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
#>   0.8389603 
```
