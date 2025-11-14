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
#> min 0.00336    45   2.863 0.10555       6
#> 1se 0.06018    14   2.960 0.09976       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   3      0        180        0   141
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   6      0        180        1   170
#>  [28,]  44   2      1          1        1   150
#>  [29,]  43   2      0        180        1   140
#>  [30,]  45   2      0        180        1   140
#>  [31,]  46  15      0        180        0   120
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  44   3      1          0        1   180
#>  [36,]  46   7      1          2        0   166
#>  [37,]  45   4      1          0        0   124
#>  [38,]  43  10      0        180        0   185
#>  [39,]  47   6      1          0        1   116
#>  [40,]  46  13      1         10        0   100
#>  [41,]  44   0      1          0        1    96
#>  [42,]  43   3      1          0        1   124
#>  [43,]  45   8      1          0        1   117
#>  [44,]  45   5      0          5        0   141
#>  [45,]  47   2      0        180        0   108
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  47   7      0        180        0   145
#>  [62,]  49   2      0          2        0   105
#>  [63,]  51   1      0          1        1   145
#>  [64,]  49  23      0        179        1   112
#>  [65,]  52   2      0        180        1   170
#>  [66,]  50   7      1          0        1    92
#>  [67,]  51   3      1          2        0   113
#>  [68,]  50   1      1          0        0   150
#>  [69,]  50   9      0        180        0   130
#>  [70,]  49   7      1          4        1    90
#>  [71,]  47   8      0        180        0   160
#>  [72,]  47   6      0        180        1   162
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   3      0        180        1   120
#>  [75,]  46   1      1          1        0   145
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49  15      0        180        1   160
#>  [81,]  53   5      0        180        1   140
#>  [82,]  54  17      1         12        1   102
#>  [83,]  53   7      1          0        0   199
#>  [84,]  54   6      1          3        0   129
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  53   4      1          0        1   156
#>  [94,]  51  13      0         99        1   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  49  16      0         16        0   125
#>  [97,]  54  23      1         10        0   131
#>  [98,]  55   6      1          2        1   114
#>  [99,]  55   4      1          2        0   150
#> [100,]  52   4      0        180        1   180
#> [101,]  50   5      1          4        1   150
#> [102,]  54   4      1          0        1   121
#> [103,]  52   4      0        180        0   183
#> [104,]  49   6      1          0        1   130
#> [105,]  49   1      0          1        1   110
#> [106,]  50   7      1          1        0   156
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  55   1      0        180        0   127
#> [110,]  54   1      0        180        0   162
#> [111,]  54   7      1          0        1   100
#> [112,]  56   2      0        180        0   132
#> [113,]  53  18      1          9        1   150
#> [114,]  52  16      0         16        0   152
#> [115,]  53  10      1          9        0   172
#> [116,]  52  16      1         14        0   170
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      1          5        1   138
#> [119,]  55   2      0        134        1   140
#> [120,]  54   3      0        180        0   128
#> [121,]  55   1      0          2        0   130
#> [122,]  57   1      0          1        1   100
#> [123,]  56   4      1          0        1   140
#> [124,]  55  11      1          7        0   104
#> [125,]  52  15      1         14        0   130
#> [126,]  58   8      0          8        1   130
#> [127,]  54   5      0        180        1   108
#> [128,]  55   3      1          1        1   156
#> [129,]  57   0      0          0        1   150
#> [130,]  59   3      1          1        0   172
#> [131,]  57   4      0        180        1   119
#> [132,]  58   6      1          0        1    90
#> [133,]  53  15      1         10        1   130
#> [134,]  54  17      1          8        1   227
#> [135,]  55   9      1          2        1   147
#> [136,]  55  13      0        166        1   140
#> [137,]  56   5      0          5        1   150
#> [138,]  57   4      1          2        1   185
#> [139,]  53   7      1          0        1   120
#> [140,]  57  11      1         10        1   129
#> [141,]  55   3      1          2        0   140
#> [142,]  56   4      0          4        0   164
#> [143,]  58   1      1          1        1   200
#> [144,]  55   5      1          0        0   140
#> [145,]  56   7      1          5        1   120
#> [146,]  55   2      0          2        0   106
#> [147,]  59   9      1          1        1   125
#> [148,]  58   4      1          0        1   160
#> [149,]  57   2      0          2        1   120
#> [150,]  60   5      1          1        0   138
#> [151,]  57   5      0        180        1   130
#> [152,]  55   5      1          0        1   160
#> [153,]  59   4      1          0        1   152
#> [154,]  58  26      1          0        1   189
#> [155,]  58   8      0        161        1   140
#> [156,]  61   4      1          3        0   151
#> [157,]  61   3      1          2        1   102
#> [158,]  58   1      0          1        1   100
#> [159,]  61  20      1         13        0   130
#> [160,]  57  13      1         10        0   110
#> [161,]  57   2      1          0        1   116
#> [162,]  58  10      0         10        1   150
#> [163,]  57  11      0        180        1   150
#> [164,]  61   3      0         17        0   143
#> [165,]  56  14      0         45        0   130
#> [166,]  56  13      1          6        1   158
#> [167,]  55   4      1          3        1   160
#> [168,]  58  11      0        172        1   135
#> [169,]  55   9      1          7        1   135
#> [170,]  61   4      1          0        1   115
#> [171,]  59  11      1          8        1   190
#> [172,]  57   1      0          1        0   126
#> [173,]  59   5      1          2        0   182
#> [174,]  61   8      0         77        0   120
#> [175,]  61  13      0         13        0   210
#> [176,]  58   8      1          5        0   152
#> [177,]  62  10      1          0        1   153
#> [178,]  61  18      0        170        0   140
#> [179,]  61   7      0          7        1   150
#> [180,]  60   7      0          7        0   147
#> [181,]  59  13      1          2        0   198
#> [182,]  57  12      1          9        1   120
#> [183,]  62   4      1          0        0   160
#> [184,]  58   3      1          0        1   146
#> [185,]  62   4      1          3        0   173
#> [186,]  58   2      0         30        0   202
#> [187,]  63   6      0         28        1   120
#> [188,]  61  13      0         13        0   120
#> [189,]  61   5      0          5        1   110
#> [190,]  57  18      1          9        1    93
#> [191,]  61   5      0          5        1   160
#> [192,]  58  11      1          9        0   179
#> [193,]  62   1      1          0        1   172
#> [194,]  63   1      0        180        1   130
#> [195,]  61   7      0        180        0   135
#> [196,]  63   4      1          3        0   222
#> [197,]  62   3      0        180        1   105
#> [198,]  63   4      0        180        1   190
#> [199,]  64   4      0        180        0   130
#> [200,]  63   4      1          1        0   155
#> [201,]  59   8      0        180        1   140
#> [202,]  58   9      1          9        0   110
#> [203,]  62   7      0          7        0   150
#> [204,]  58   2      0        180        0   127
#> [205,]  59   4      0        180        0   196
#> [206,]  60   7      1          5        1   141
#> [207,]  59   5      1          1        0   148
#> [208,]  60   7      1          1        1    90
#> [209,]  65  13      0        180        1   100
#> [210,]  63   1      0          1        0   162
#> [211,]  62   6      0        180        0   170
#> [212,]  61  15      1         13        0   170
#> [213,]  59   4      0          4        0   149
#> [214,]  60   3      0          3        0   168
#> [215,]  64  10      1          9        0   160
#> [216,]  62   6      0          6        0   120
#> [217,]  63  12      1         10        0   200
#> [218,]  59  10      0        180        1   130
#> [219,]  60   8      0         17        1   130
#> [220,]  61   6      1          1        1   117
#> [221,]  66   1      1          0        1   120
#> [222,]  64   6      1          0        1   140
#> [223,]  63  10      1          0        1   148
#> [224,]  65  36      1         11        0   140
#> [225,]  63   4      1          3        0   162
#> [226,]  66   3      1          1        0   127
#> [227,]  64  32      1          9        1   160
#> [228,]  63  12      1          9        0   114
#> [229,]  63   7      0        180        0   120
#> [230,]  66   5      1          0        1   110
#> [231,]  65   8      1          0        0   168
#> [232,]  65  10      1          8        1   120
#> [233,]  64  21      1         10        0   190
#> [234,]  61  12      1         11        0   154
#> [235,]  61   4      0        180        1   113
#> [236,]  64   7      0        180        1   120
#> [237,]  62   3      1          1        1   199
#> [238,]  65   6      0          9        0   112
#> [239,]  65   3      1          0        1    80
#> [240,]  63   5      1          4        0   170
#> [241,]  63   2      1          1        0   180
#> [242,]  62  13      1         11        0   180
#> [243,]  67  11      0         11        1   100
#> [244,]  64   2      0          2        0   201
#> [245,]  66  18      1          5        0   142
#> [246,]  62   9      0        180        0   145
#> [247,]  61  14      1          5        0   140
#> [248,]  63   9      1          8        1   160
#> [249,]  63   2      1          0        0   140
#> [250,]  64  19      1          8        1   160
#> [251,]  65   8      1          0        1   140
#> [252,]  67   6      0        180        1   170
#> [253,]  68   5      1          4        1   150
#> [254,]  64   6      1          0        1   125
#> [255,]  66   7      1          0        1   115
#> [256,]  66  13      1          0        0   118
#> [257,]  64  14      1         13        1   150
#> [258,]  65   3      0          3        0   105
#> [259,]  67   4      1          3        0   130
#> [260,]  66   3      1          0        1   135
#> [261,]  65   2      1          1        1   170
#> [262,]  68   1      0        180        1   166
#> [263,]  64  10      1          9        1   110
#> [264,]  67   8      1          1        1   130
#> [265,]  63  10      0         16        1   160
#> [266,]  66  14      0        180        0   130
#> [267,]  64   1      0          1        1   120
#> [268,]  63   8      1          1        1   162
#> [269,]  65  18      1          3        0   120
#> [270,]  63   1      1          0        1   155
#> [271,]  63  10      0         18        1   130
#> [272,]  67  11      0         11        0   150
#> [273,]  68  11      0        180        0   160
#> [274,]  68  14      0         79        0   172
#> [275,]  65  15      1         12        1   150
#> [276,]  66  11      1          0        0   100
#> [277,]  65   4      1          2        1   145
#> [278,]  69  12      0         15        1   140
#> [279,]  66  15      1         13        1   160
#> [280,]  69   6      0        180        1   100
#> [281,]  66   9      1          8        0   130
#> [282,]  68  14      1         13        1   140
#> [283,]  65   8      1          0        1    90
#> [284,]  69   1      1          0        0   170
#> [285,]  67   1      0        180        1   160
#> [286,]  68  10      1         10        1   150
#> [287,]  65   1      1          0        0   133
#> [288,]  67   7      1          4        1   130
#> [289,]  63   2      1          0        0    99
#> [290,]  67   2      0        180        0   184
#> [291,]  65   6      0          6        0    80
#> [292,]  65  10      1          1        1   148
#> [293,]  66  19      1         12        1   150
#> [294,]  67  12      1         12        0   160
#> [295,]  69   6      0         99        1   140
#> [296,]  64   4      0        179        0   160
#> [297,]  64  11      0         11        0   125
#> [298,]  64   0      1          0        1   118
#> [299,]  66   4      0        180        0   177
#> [300,]  68   4      1          0        1   160
#> [301,]  69   4      1          3        1   150
#> [302,]  65  13      1         12        1   130
#> [303,]  69  17      1         10        0   140
#> [304,]  69   8      0         93        0   140
#> [305,]  64  21      0         21        1   155
#> [306,]  66   6      0        180        0   140
#> [307,]  65   6      0        101        1   115
#> [308,]  68   4      0          4        1   190
#> [309,]  71   3      0          5        0   112
#> [310,]  70   7      1          0        1   190
#> [311,]  68   7      0        150        0   210
#> [312,]  71  20      1          0        1   160
#> [313,]  70   4      1          0        1   180
#> [314,]  70  14      0        171        0   166
#> [315,]  67   6      1          4        0   130
#> [316,]  69   0      0          0        1   148
#> [317,]  67  14      1         13        0   130
#> [318,]  65  14      1         13        1   150
#> [319,]  69   8      0        180        1   180
#> [320,]  71   7      0          7        0   230
#> [321,]  66   2      0          2        1   228
#> [322,]  71   6      0         45        1   158
#> [323,]  71   3      0        103        0   133
#> [324,]  69   3      0          3        1   130
#> [325,]  70  22      1         13        0   103
#> [326,]  67   1      0         36        1   104
#> [327,]  67   5      0          5        0   130
#> [328,]  68   6      0        180        0   145
#> [329,]  69   8      1          5        1   195
#> [330,]  69   6      1          4        1   174
#> [331,]  72   7      0          7        1   110
#> [332,]  67   3      0        180        0   110
#> [333,]  67  14      0        172        1   140
#> [334,]  69  11      1          0        1   120
#> [335,]  66   2      0        180        0   130
#> [336,]  67   7      1          4        0   122
#> [337,]  69   4      1          3        0   132
#> [338,]  68   2      0          7        1   130
#> [339,]  69   8      1          2        0   121
#> [340,]  70   3      0        123        0   130
#> [341,]  70   9      0        180        1   142
#> [342,]  72   5      1          4        0   170
#> [343,]  67  22      1          1        1   140
#> [344,]  67  12      1          8        0   120
#> [345,]  67   1      0          1        1    60
#> [346,]  67   4      0         60        1   136
#> [347,]  72  13      1         11        1   195
#> [348,]  66  24      1         13        0   130
#> [349,]  70  35      1          0        1   105
#> [350,]  72  30      1          0        1   145
#> [351,]  70   7      0          7        0   102
#> [352,]  73  20      1          0        1   170
#> [353,]  71   6      0          9        0   120
#> [354,]  69  10      1          6        1   120
#> [355,]  72  19      1          8        0   120
#> [356,]  72  12      1         10        0   170
#> [357,]  67   8      0        180        1   170
#> [358,]  67   5      1          0        1   147
#> [359,]  67   9      0        180        0   158
#> [360,]  73  13      0        152        1   130
#> [361,]  72   6      1          5        0   115
#> [362,]  71   1      0        173        1   188
#> [363,]  68  23      0        180        1   220
#> [364,]  70   3      0        180        0   121
#> [365,]  69   3      0        180        0   220
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  72   5      0         28        0   120
#> [369,]  73   6      0        180        1   117
#> [370,]  69  16      1         10        1   140
#> [371,]  68   7      0        180        1   130
#> [372,]  72  16      1          1        1   130
#> [373,]  70   4      0        180        0   180
#> [374,]  69   1      1          0        0   155
#> [375,]  72   8      1          1        1   150
#> [376,]  71   2      1          0        1   180
#> [377,]  68  15      1         13        1   130
#> [378,]  70  13      1          9        0   100
#> [379,]  73   0      0        180        1   161
#> [380,]  74   8      1          0        1    85
#> [381,]  73   4      0        180        1   154
#> [382,]  69   2      1          0        1   110
#> [383,]  71   3      1          1        0   150
#> [384,]  71  15      1         11        0   165
#> [385,]  74   0      1          0        1    90
#> [386,]  73   3      1          0        1   136
#> [387,]  70   5      1          0        1   190
#> [388,]  71   8      1          7        0   149
#> [389,]  73  10      1          8        0   106
#> [390,]  69  12      1          1        1   149
#> [391,]  70  26      1         11        1   120
#> [392,]  74   4      0          4        0   120
#> [393,]  72   5      1          3        1   160
#> [394,]  73   6      0        180        0   110
#> [395,]  71   7      1          2        0   143
#> [396,]  72   8      1          0        1   140
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  70   4      1          0        1   140
#> [402,]  74   7      1          0        1   117
#> [403,]  72  10      1          8        1   153
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  70   8      0          8        0   120
#> [407,]  75   1      0          1        0   133
#> [408,]  75   2      1          1        0   145
#> [409,]  73  10      1         10        1   120
#> [410,]  74  15      1          9        1   179
#> [411,]  73   1      0          1        1    80
#> [412,]  75   9      1          7        0   140
#> [413,]  71  11      1          8        0   110
#> [414,]  71   4      0          4        0   134
#> [415,]  72  15      1         12        1   120
#> [416,]  72   1      1          1        0   168
#> [417,]  72   7      0         57        1   145
#> [418,]  73  10      0        180        0   162
#> [419,]  72  11      0         11        1   140
#> [420,]  73   5      1          3        1   112
#> [421,]  76  25      1         12        1   170
#> [422,]  73  12      1         12        1   140
#> [423,]  72   2      0        180        0   120
#> [424,]  72   4      1          0        1   197
#> [425,]  71   3      1          0        0   144
#> [426,]  73   4      0        180        0   124
#> [427,]  71  32      1         12        1   107
#> [428,]  72   5      0        180        0   154
#> [429,]  72   3      0        180        0   160
#> [430,]  76   5      0          5        1   130
#> [431,]  77  11      0         11        1   150
#> [432,]  75   3      1          1        0   180
#> [433,]  73  15      0         15        1   160
#> [434,]  71  16      0        180        0   140
#> [435,]  74   7      0        180        1   150
#> [436,]  76   1      0        180        0   114
#> [437,]  76   8      1          0        1   141
#> [438,]  73   6      0          6        1   114
#> [439,]  74   2      0        180        0   190
#> [440,]  72   4      0         85        1   120
#> [441,]  72   4      1          3        0   160
#> [442,]  76  17      1          0        1   200
#> [443,]  76  13      1         10        0   110
#> [444,]  75   4      1          0        1   122
#> [445,]  75   7      0          7        0   190
#> [446,]  75   0      0          0        1   130
#> [447,]  75  12      0         12        1   160
#> [448,]  74   8      1          0        1   105
#> [449,]  76  13      1          8        1   148
#> [450,]  75   4      1          2        1   188
#> [451,]  76   4      0          4        1   155
#> [452,]  75   1      0          1        1   125
#> [453,]  74   2      0        180        0   111
#> [454,]  73   1      0         52        1   105
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  76   5      1          0        1   167
#> [460,]  74   8      1          8        1   170
#> [461,]  73  33      1         12        1   175
#> [462,]  77   5      1          0        0   123
#> [463,]  77  12      1          9        1   100
#> [464,]  73  10      1          9        0   146
#> [465,]  77  12      0        180        0   130
#> [466,]  76  12      1         11        1   120
#> [467,]  73   7      1          0        0   174
#> [468,]  75   3      1          1        1   171
#> [469,]  74   9      1          8        0   200
#> [470,]  75   6      0        180        0   150
#> [471,]  74   2      1          0        1   130
#> [472,]  78  18      0         18        1   144
#> [473,]  77   3      0        180        0   110
#> [474,]  76  29      0         47        0    90
#> [475,]  73  11      1          2        1   110
#> [476,]  78   7      0          7        1   133
#> [477,]  74  15      0        180        1   172
#> [478,]  78   8      1          6        1   110
#> [479,]  76  13      1          1        1   170
#> [480,]  78  32      1          9        1   198
#> [481,]  78   0      0        180        1   212
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  80   8      0          8        1   120
#> [486,]  75  13      1          6        0   150
#> [487,]  76   1      0          1        1    83
#> [488,]  79   4      0         80        0   145
#> [489,]  78  12      1          9        0   150
#> [490,]  75   4      1          0        0   212
#> [491,]  78  10      0        180        1   130
#> [492,]  76  11      1          0        0   120
#> [493,]  75   3      0          3        0     0
#> [494,]  76   7      0         29        1   150
#> [495,]  79   8      0         32        1   120
#> [496,]  80   6      0          6        1   150
#> [497,]  76   3      1          0        1   140
#> [498,]  79  11      0        180        0   160
#> [499,]  79   2      1          0        1   121
#> [500,]  78  14      1          0        1   140
#> [501,]  81   1      0          1        0   130
#> [502,]  76   4      0          4        1   160
#> [503,]  79   4      0          4        1   125
#> [504,]  76  10      1          8        0   180
#> [505,]  76  12      1         10        1   127
#> [506,]  77   6      0          6        1   107
#> [507,]  75   2      1          1        1   204
#> [508,]  76   1      0          1        1   140
#> [509,]  77  31      1          3        1   161
#> [510,]  76   1      0          1        1    90
#> [511,]  78   7      1          0        1   110
#> [512,]  81   1      0        180        0   120
#> [513,]  80  15      1         12        1   150
#> [514,]  82   5      0          8        1   120
#> [515,]  80  40      1          0        1   138
#> [516,]  80  17      1         12        0   100
#> [517,]  76   7      0        161        0   151
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  81   4      1          2        1   126
#> [521,]  79  28      0        164        0   100
#> [522,]  80   6      0        173        1   160
#> [523,]  79   1      0         37        1   140
#> [524,]  81   3      0        180        0   184
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  78  26      1          5        0   194
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
#> [530,]  78   3      1          1        1   152
#> [531,]  77  10      1          8        1   130
#> [532,]  77   5      0         85        0   188
#> [533,]  79   6      0          6        0   152
#> [534,]  80   6      1          0        1   119
#> [535,]  78   2      0        180        0   148
#> [536,]  82   1      1          0        1    82
#> [537,]  79  10      0        180        1   150
#> [538,]  77   4      0        180        1    98
#> [539,]  81   1      0        108        0   129
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  83   9      1          5        1   170
#> [545,]  82   5      0        180        0   110
#> [546,]  83   5      0        180        0   148
#> [547,]  79   7      1          6        0   130
#> [548,]  83   4      0        103        0    97
#> [549,]  81  11      1          8        0   160
#> [550,]  81   5      0        177        0    41
#> [551,]  80  11      1          8        0   170
#> [552,]  78   9      1          4        1   120
#> [553,]  84   5      1          1        1    85
#> [554,]  80   6      1          0        1   150
#> [555,]  81   8      0        180        0   146
#> [556,]  80   8      1          7        0   160
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  84   4      0        167        0   198
#> [562,]  80   3      1          1        1   230
#> [563,]  82  23      1          0        0   110
#> [564,]  84   5      0        180        1   203
#> [565,]  81   1      0          1        1   150
#> [566,]  84   1      0         38        1   205
#> [567,]  83   3      0        180        0   174
#> [568,]  81   4      0         90        1   138
#> [569,]  79   9      1          8        0   150
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  80   2      1          0        1   130
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  82  19      0         19        0   120
#> [576,]  80  30      1         13        0   220
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  83   2      0        154        0   130
#> [580,]  82   0      0          2        1   100
#> [581,]  83   1      0        180        0   160
#> [582,]  84  15      1         13        1   110
#> [583,]  81   1      0          1        1   145
#> [584,]  81  12      0         12        1   163
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  80   2      0         88        0   135
#> [591,]  86   8      0          8        1   132
#> [592,]  81  16      1          9        0   180
#> [593,]  86   3      0          3        1   140
#> [594,]  84   3      0        180        1   120
#> [595,]  85   3      0          3        1   118
#> [596,]  81   2      1          0        1   118
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  82  14      1         11        1   103
#> [602,]  84  16      0         70        1   150
#> [603,]  88  14      1          3        1   130
#> [604,]  83  13      1         12        0   170
#> [605,]  84   7      1          2        0   148
#> [606,]  87   2      0        180        0   113
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  82   4      0          4        0   130
#> [610,]  86  13      0        177        0   163
#> [611,]  85   3      0          3        1   113
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  88   4      0          4        0    86
#> [626,]  89   5      0        119        1   140
#> [627,]  87   1      0          1        0   170
#> [628,]  85   8      0          8        1   136
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  91   8      0          8        0   100
#> [635,]  87   2      0        180        0   160
#> [636,]  91  10      0        145        0   135
#> [637,]  88   8      0         50        1   154
#> [638,]  90  11      1         10        1   186
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  90   4      1          0        0   121
#> [642,]  87  43      0        178        1   130
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89  52      0         52        1   130
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  89  14      0        180        1    84
#> [655,]  91   4      1          0        1   120
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  94   8      0          8        1   142
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+  12.0 
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  88.0+ 180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  166.0+  99.0  180.0+  16.0+ 152.0+   6.0+ 180.0+ 180.0+
#> [101] 171.0+ 180.0+ 180.0+   6.0+   1.0  180.0+ 180.0+ 175.0+ 180.0+ 180.0+
#> [111]   7.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+ 180.0+ 134.0+ 180.0+
#> [121]   2.0    1.0  165.0  180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+
#> [131] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 180.0+ 180.0+
#> [141] 180.0+   4.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+   2.0  180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 161.0+ 180.0+   3.0    1.0  180.0+ 180.0+
#> [161] 180.0+  10.0+ 180.0+  17.0   45.0  180.0+ 180.0+ 172.0+  24.0  180.0+
#> [171] 180.0+   1.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 170.0    7.0    7.0+
#> [181] 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0   28.0   13.0+   5.0   18.0 
#> [191]   5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [201] 180.0+   9.0    7.0+ 180.0+ 180.0+  84.0  180.0+ 180.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+
#> [221] 180.0+ 180.0+ 180.0+  36.0  180.0+   3.0+ 180.0+  12.0  180.0+ 180.0+
#> [231] 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+
#> [241] 180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0 
#> [251]  15.0  180.0+   5.0+ 180.0+ 179.0+ 166.0+  14.0+   3.0  180.0+   3.0+
#> [261] 175.0+ 180.0+ 180.0+   8.0   16.0  180.0+   1.0  180.0+ 123.0+   1.0+
#> [271]  18.0   11.0+ 180.0+  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+
#> [281] 180.0+ 180.0+   8.0+ 175.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+
#> [291]   6.0  180.0+  19.0+  12.0   99.0  179.0+  11.0+   0.5  180.0+ 180.0+
#> [301] 152.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+ 101.0    4.0    5.0    7.0+
#> [311] 150.0  180.0+ 180.0+ 171.0    6.0    0.5  180.0+  14.0+ 180.0+   7.0+
#> [321]   2.0   45.0  103.0    3.0+ 180.0+  36.0    5.0+ 180.0+ 180.0+  97.0 
#> [331]   7.0  180.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+   7.0    8.0+ 123.0 
#> [341] 180.0+ 180.0+  51.0  180.0+   1.0   60.0  132.0  180.0+ 180.0+ 162.0 
#> [351]   7.0+ 124.0    9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0 
#> [361] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+
#> [371] 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0   13.0+ 180.0+ 180.0+
#> [381] 180.0+   2.0    3.0+ 180.0+   0.5  180.0+ 180.0+   8.0   87.0   12.0 
#> [391] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [401] 180.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+   1.0  180.0+  15.0  180.0+
#> [411]   1.0  180.0+ 180.0+   4.0+ 180.0+   1.0   57.0  180.0+  11.0    5.0 
#> [421] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   5.0 
#> [431]  11.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0 
#> [441] 180.0+  17.0+ 174.0+   4.0    7.0    0.5   12.0  180.0+ 180.0+  46.0 
#> [451]   4.0    1.0  180.0+  52.0  180.0+ 180.0+  12.0  180.0+ 180.0+   8.0 
#> [461]  33.0    5.0  180.0+ 180.0+ 180.0+  12.0    7.0+   3.0  168.0+ 180.0+
#> [471] 176.0+  18.0  180.0+  47.0   11.0    7.0  180.0+   8.0+ 180.0+  32.0 
#> [481] 180.0+ 172.0  119.0   12.0    8.0  180.0+   1.0   80.0  180.0+   4.0+
#> [491] 180.0+  11.0    3.0   29.0   32.0    6.0    3.0+ 180.0+ 180.0+ 180.0+
#> [501]   1.0    4.0    4.0   10.0+ 180.0+   6.0    2.0+   1.0  171.0    1.0 
#> [511]  43.0  180.0+ 180.0+   8.0   40.0   17.0  161.0   10.0+ 180.0+  93.0 
#> [521] 164.0  173.0   37.0  180.0+   7.0+  22.0  171.0+  20.0+   1.0    3.0+
#> [531]  10.0   85.0    6.0+   6.0  180.0+   1.0  180.0+ 180.0+ 108.0  180.0+
#> [541] 125.0  180.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 103.0  180.0+ 177.0+
#> [551] 169.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+
#> [561] 167.0    3.0+  62.0  180.0+   1.0   38.0  180.0+  90.0  180.0+ 180.0+
#> [571] 180.0+ 180.0+  71.0    1.0   19.0   30.0  180.0+ 114.0  154.0    2.0 
#> [581] 180.0+ 180.0+   1.0   12.0    5.0+   4.0+  77.0  180.0+   3.0   88.0 
#> [591]   8.0  180.0+   3.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 174.0   70.0   14.0   13.0  180.0+ 180.0+  92.0  180.0+   4.0  177.0 
#> [611]   3.0+  62.0    6.0+   4.0+  20.0    4.0   22.0   65.0  180.0+  46.0 
#> [621] 115.0  180.0+   3.0+   8.0+   4.0  119.0    1.0+   8.0   29.0  180.0+
#> [631] 180.0+  14.0    1.0+   8.0  180.0+ 145.0   50.0   11.0  126.0  180.0+
#> [641]   4.0  178.0+  36.0   89.0   75.0    3.0+   1.0   33.0  158.0   74.0 
#> [651]  52.0    7.0    4.0  180.0+   4.0   50.0    1.0+   2.0    8.0+  16.0 
#> [661]  67.0   12.0    8.0   53.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8359734 
```
