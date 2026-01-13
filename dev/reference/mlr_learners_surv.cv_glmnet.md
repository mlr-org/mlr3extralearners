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
#> min 0.00350    44   2.798 0.1792       6
#> 1se 0.07531    11   2.952 0.1664       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  33   6      1          1        1   115
#>  [15,]  38  16      1         10        0   160
#>  [16,]  38  12      1         11        1    92
#>  [17,]  42   3      1          1        1   130
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  40   6      0        180        1   138
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  40   1      1          0        1   145
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  45   3      0        180        1   154
#>  [28,]  41  10      1          8        0   150
#>  [29,]  44   3      0        180        0   141
#>  [30,]  41  13      1          1        0   140
#>  [31,]  45   9      1          7        0   110
#>  [32,]  45   6      0        180        1   170
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  47   4      1          3        0   118
#>  [37,]  48  15      0        180        1   160
#>  [38,]  45   3      0        150        0   130
#>  [39,]  44   3      1          0        1   180
#>  [40,]  44   0      1          0        1    96
#>  [41,]  47   4      1          3        1   160
#>  [42,]  43   3      1          0        1   124
#>  [43,]  49   5      0         73        1   136
#>  [44,]  45   5      0          5        0   141
#>  [45,]  45   5      0        180        1   190
#>  [46,]  46   5      1          3        0   130
#>  [47,]  46   4      0        180        1   121
#>  [48,]  44   2      0        180        0   142
#>  [49,]  46  15      0        180        1   120
#>  [50,]  48   3      0        180        0   154
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   9      1          6        0   170
#>  [53,]  46   3      1          0        1   119
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   4      1          1        0   125
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  49  23      0        179        1   112
#>  [65,]  46   6      1          0        1   156
#>  [66,]  52   2      0        180        1   170
#>  [67,]  50   7      1          0        1    92
#>  [68,]  50   4      0          4        1   100
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   1      1          0        0   150
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  47   6      0        180        1   162
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   1      1          1        0   145
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  54   6      1          3        0   129
#>  [87,]  50   2      0          5        1   106
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48   6      0        180        0   160
#>  [96,]  48  11      1         10        0   120
#>  [97,]  51  13      0         99        1   160
#>  [98,]  49  16      0         16        0   125
#>  [99,]  55   3      1          1        0   150
#> [100,]  52   7      1          2        0   154
#> [101,]  55   6      1          2        1   114
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  52   4      0        180        1   180
#> [105,]  50   5      1          4        1   150
#> [106,]  52   4      0        180        0   183
#> [107,]  49   6      1          0        1   130
#> [108,]  50   7      1          1        0   156
#> [109,]  53   9      0          9        1    95
#> [110,]  50   7      1          0        1   127
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   1      0        180        0   127
#> [114,]  55   2      0          2        0   145
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  53  18      1          9        1   150
#> [118,]  54   3      0        180        1   180
#> [119,]  55   6      0        180        0   170
#> [120,]  53  10      1          9        0   172
#> [121,]  52  16      1         14        0   170
#> [122,]  53   4      0        180        1   150
#> [123,]  55   6      0        180        1   100
#> [124,]  55   6      1          5        1   138
#> [125,]  54  12      1          0        1   190
#> [126,]  54   3      0        180        0   128
#> [127,]  56   3      0          8        1   139
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  52   9      1          3        0   170
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  52  15      1         14        0   130
#> [134,]  56  14      1         11        0   130
#> [135,]  53   3      1          0        1   200
#> [136,]  57  10      0        180        1   170
#> [137,]  58   8      0          8        1   130
#> [138,]  54   5      0        180        1   108
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  53  21      1         13        1   130
#> [142,]  57   4      0        180        1   119
#> [143,]  58   6      1          0        1    90
#> [144,]  53  15      1         10        1   130
#> [145,]  55   9      1          2        1   147
#> [146,]  54  23      1          8        0   120
#> [147,]  57   4      1          2        1   185
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   5      0          5        1   131
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  58   1      1          1        1   200
#> [154,]  55   5      1          0        0   140
#> [155,]  56   7      1          5        1   120
#> [156,]  55   2      0          2        0   106
#> [157,]  59   9      1          1        1   125
#> [158,]  58   4      1          0        1   160
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  58  11      1          9        1   124
#> [162,]  55   5      1          0        1   160
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  59   2      1          1        0   140
#> [168,]  58  14      1          6        0   190
#> [169,]  61   4      1          3        0   151
#> [170,]  58   1      0          1        1   100
#> [171,]  61  20      1         13        0   130
#> [172,]  57  13      1         10        0   110
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  57   4      1          3        0   138
#> [176,]  61   3      0         17        0   143
#> [177,]  58  19      1         13        1   140
#> [178,]  56  18      1         11        1   165
#> [179,]  55   4      1          3        1   160
#> [180,]  60  12      1          0        1   114
#> [181,]  61   4      1          0        1   115
#> [182,]  61  13      1         12        1   130
#> [183,]  59  11      1          8        1   190
#> [184,]  57   1      0          1        0   126
#> [185,]  57  15      1         13        1   110
#> [186,]  59  10      0        180        0   160
#> [187,]  61   8      0         77        0   120
#> [188,]  61  13      0         13        0   210
#> [189,]  58   8      1          5        0   152
#> [190,]  61  18      0        170        0   140
#> [191,]  61  28      1          7        0   133
#> [192,]  58   8      1          3        1   150
#> [193,]  57   7      0        169        0   180
#> [194,]  60   7      0          7        0   147
#> [195,]  59  13      1          2        0   198
#> [196,]  57  12      1          9        1   120
#> [197,]  62   4      1          0        0   160
#> [198,]  60  17      1          8        1   140
#> [199,]  58   3      1          0        1   146
#> [200,]  58   2      0         30        0   202
#> [201,]  59   1      0        180        0   155
#> [202,]  61  13      0         13        0   120
#> [203,]  61   5      0          5        1   110
#> [204,]  57  18      1          9        1    93
#> [205,]  58  11      1          9        0   179
#> [206,]  57   2      1          1        0   159
#> [207,]  62   1      1          0        1   172
#> [208,]  58   7      0        180        1   150
#> [209,]  63   3      1          1        0   180
#> [210,]  63   1      0        180        1   130
#> [211,]  61   7      0        180        0   135
#> [212,]  63   4      1          3        0   222
#> [213,]  62   3      0        180        1   105
#> [214,]  63   4      0        180        1   190
#> [215,]  63  15      1         10        1   126
#> [216,]  64   4      0        180        0   130
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  62   7      0          7        0   150
#> [221,]  59   1      0         22        1   162
#> [222,]  60   7      0          7        0   140
#> [223,]  63   1      0          1        0   130
#> [224,]  62   6      0        180        0   170
#> [225,]  61  15      1         13        0   170
#> [226,]  59   4      0          4        0   149
#> [227,]  60   3      0          3        0   168
#> [228,]  64  10      1          9        0   160
#> [229,]  62   6      0          6        0   120
#> [230,]  63  12      1         10        0   200
#> [231,]  59  10      0        180        1   130
#> [232,]  64  12      1         11        0   160
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  63   4      1          3        0   162
#> [236,]  66   3      1          1        0   127
#> [237,]  63  12      1          9        0   114
#> [238,]  66   5      1          0        1   110
#> [239,]  60   6      0        180        0   130
#> [240,]  64  21      1         10        0   190
#> [241,]  61  12      1         11        0   154
#> [242,]  61   4      0        180        1   113
#> [243,]  65   3      0        180        1   190
#> [244,]  63  16      1          7        1   110
#> [245,]  64   7      0        180        1   120
#> [246,]  63  12      0         12        1   150
#> [247,]  62   3      1          1        1   199
#> [248,]  63   5      1          4        0   170
#> [249,]  63   2      1          1        0   180
#> [250,]  62  13      1         11        0   180
#> [251,]  67  11      0         11        1   100
#> [252,]  64   2      0          2        0   201
#> [253,]  66  18      1          5        0   142
#> [254,]  66  16      1         11        1   169
#> [255,]  62   9      0        180        0   145
#> [256,]  61  14      1          5        0   140
#> [257,]  61  15      1         10        0   130
#> [258,]  63   9      1          8        1   160
#> [259,]  63   3      1          2        0   120
#> [260,]  63   2      1          0        0   140
#> [261,]  65   8      1          0        1   140
#> [262,]  65  15      1         11        1   160
#> [263,]  68   5      1          4        1   150
#> [264,]  64  13      1         12        1   150
#> [265,]  64   6      1          0        1   125
#> [266,]  66  13      1          0        0   118
#> [267,]  64  14      1         13        1   150
#> [268,]  67   4      1          3        0   130
#> [269,]  66   3      1          0        1   135
#> [270,]  66   6      1          0        1   140
#> [271,]  68   1      0        180        1   166
#> [272,]  64  10      1          9        1   110
#> [273,]  67   8      1          1        1   130
#> [274,]  63  10      0         16        1   160
#> [275,]  64   1      0          1        1   120
#> [276,]  68  18      0        180        1   260
#> [277,]  65  17      1         14        1   100
#> [278,]  63   8      1          1        1   162
#> [279,]  65  18      1          3        0   120
#> [280,]  63   1      1          0        1   155
#> [281,]  63  10      0         18        1   130
#> [282,]  67  11      0         11        0   150
#> [283,]  68  11      0        180        0   160
#> [284,]  68  14      0         79        0   172
#> [285,]  66  12      1         10        1   150
#> [286,]  65  15      1         12        1   150
#> [287,]  65   4      1          2        1   145
#> [288,]  69  21      1         10        0   180
#> [289,]  69   6      0        180        1   100
#> [290,]  66   9      1          8        0   130
#> [291,]  63   8      0        180        1   120
#> [292,]  68  14      1         13        1   140
#> [293,]  65   8      1          0        1    90
#> [294,]  66   3      0          3        1   138
#> [295,]  67   1      0        180        1   160
#> [296,]  68  10      1         10        1   150
#> [297,]  65   1      1          0        0   133
#> [298,]  67   7      1          4        1   130
#> [299,]  63   2      1          0        0    99
#> [300,]  65   6      0          6        0    80
#> [301,]  65  10      1          1        1   148
#> [302,]  66  19      1         12        1   150
#> [303,]  69   6      0         99        1   140
#> [304,]  64   4      0        179        0   160
#> [305,]  66   4      0        180        1   130
#> [306,]  70  15      1         12        1   132
#> [307,]  64  11      0         11        0   125
#> [308,]  64   4      0        180        1   140
#> [309,]  64   0      1          0        1   118
#> [310,]  67   2      0         18        0   131
#> [311,]  66   7      1          5        1   131
#> [312,]  66   4      0        180        0   177
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  66   6      0        180        0   140
#> [317,]  65   1      0          1        1   120
#> [318,]  68  18      1          0        1   160
#> [319,]  65   6      0        101        1   115
#> [320,]  71   3      0          5        0   112
#> [321,]  70   7      1          0        1   190
#> [322,]  71  20      1          0        1   160
#> [323,]  67   2      0        180        0   128
#> [324,]  70   4      1          0        1   180
#> [325,]  69   8      0        180        1   153
#> [326,]  70  14      0        171        0   166
#> [327,]  66   4      0        180        0   130
#> [328,]  67  10      1          9        0   200
#> [329,]  67   6      1          4        0   130
#> [330,]  68  18      1         14        1   170
#> [331,]  65   2      0        180        0   130
#> [332,]  68   7      1          0        1   150
#> [333,]  69   3      1          2        0   151
#> [334,]  65  14      1         13        1   150
#> [335,]  69   8      0        180        1   180
#> [336,]  71   7      0          7        0   230
#> [337,]  69   3      0          3        1   130
#> [338,]  67   1      0         36        1   104
#> [339,]  67   5      0          5        0   130
#> [340,]  68   6      0        180        0   145
#> [341,]  69   8      1          5        1   195
#> [342,]  69   6      1          4        1   174
#> [343,]  72   3      1          0        1   132
#> [344,]  67   3      0        180        0   110
#> [345,]  66   2      1          1        0   123
#> [346,]  68  18      0         18        1   100
#> [347,]  67  14      0        172        1   140
#> [348,]  69  11      1          0        1   120
#> [349,]  66   2      0        180        0   130
#> [350,]  69   4      1          3        0   132
#> [351,]  70   9      0        180        1   142
#> [352,]  72   5      1          4        0   170
#> [353,]  67  22      1          1        1   140
#> [354,]  68   3      0         19        0   135
#> [355,]  67  12      1          8        0   120
#> [356,]  69   1      0          1        1   110
#> [357,]  67   1      0          1        1    60
#> [358,]  67   4      0         60        1   136
#> [359,]  68  10      1          8        1   160
#> [360,]  70   7      0          7        0   102
#> [361,]  73  20      1          0        1   170
#> [362,]  71   6      0          9        0   120
#> [363,]  69  10      1          6        1   120
#> [364,]  70  11      0        180        1   210
#> [365,]  72  12      1         10        0   170
#> [366,]  67   8      0        180        1   170
#> [367,]  67   5      1          0        1   147
#> [368,]  67   9      0        180        0   158
#> [369,]  73  13      0        152        1   130
#> [370,]  67   4      1          1        0   134
#> [371,]  72   6      1          5        0   115
#> [372,]  71   1      0        173        1   188
#> [373,]  68  23      0        180        1   220
#> [374,]  70   3      0        180        0   121
#> [375,]  69   3      0        180        0   220
#> [376,]  71   3      1          2        0   150
#> [377,]  68   4      1          3        0   210
#> [378,]  71   5      0        180        0   191
#> [379,]  73   6      0        180        1   117
#> [380,]  69  16      1         10        1   140
#> [381,]  72  16      1          1        1   130
#> [382,]  69   1      1          0        0   155
#> [383,]  73   6      1          0        1   270
#> [384,]  73   7      0          7        1   140
#> [385,]  68  15      1         13        1   130
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  73   4      0        180        1   154
#> [391,]  69   2      1          0        1   110
#> [392,]  71  15      1         11        0   165
#> [393,]  74  20      0         20        1   180
#> [394,]  71  20      1         10        0   140
#> [395,]  73   3      1          0        1   136
#> [396,]  71  17      1         11        0   160
#> [397,]  71   8      1          7        0   149
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
#> [408,]  72   8      1          0        1   140
#> [409,]  74   3      0          3        1   150
#> [410,]  73  17      1         11        0   140
#> [411,]  71  13      1          8        0   121
#> [412,]  70   4      1          0        1   140
#> [413,]  71  14      1         13        1   170
#> [414,]  74   7      1          0        1   117
#> [415,]  72  15      1         13        0   156
#> [416,]  70   8      0          8        0   120
#> [417,]  71  10      1          9        1   120
#> [418,]  72  10      1          9        1   160
#> [419,]  73  10      1         10        1   120
#> [420,]  74  15      1          9        1   179
#> [421,]  73   1      0          1        1    80
#> [422,]  75   9      1          7        0   140
#> [423,]  75  13      1          1        1   130
#> [424,]  71   4      0          4        0   134
#> [425,]  72  15      1         12        1   120
#> [426,]  73  10      1          8        0   120
#> [427,]  70   7      1          4        0   184
#> [428,]  72   1      1          1        0   168
#> [429,]  73  10      0        180        0   162
#> [430,]  72  11      0         11        1   140
#> [431,]  75   1      0        180        1   140
#> [432,]  71   3      1          0        0   144
#> [433,]  73   5      0        180        0   126
#> [434,]  73   4      0        180        0   124
#> [435,]  74  34      1          8        1   233
#> [436,]  71  32      1         12        1   107
#> [437,]  72   3      0        180        0   160
#> [438,]  76   5      0          5        1   130
#> [439,]  77  11      0         11        1   150
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  73  10      1         10        0   124
#> [443,]  74   7      0        180        1   150
#> [444,]  74   3      0          3        1   128
#> [445,]  76   1      0        180        0   114
#> [446,]  73   6      0          6        1   114
#> [447,]  75  23      1         14        1   110
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      0         85        1   120
#> [450,]  72   4      1          3        0   160
#> [451,]  73   4      1          3        1   125
#> [452,]  76  13      1         10        0   110
#> [453,]  75   4      1          0        1   122
#> [454,]  75   7      0          7        0   190
#> [455,]  75   0      0          0        1   130
#> [456,]  75  12      0         12        1   160
#> [457,]  74   8      1          0        1   105
#> [458,]  76  13      1          8        1   148
#> [459,]  75   4      1          2        1   188
#> [460,]  74   6      0        180        0   160
#> [461,]  75   1      0          1        1   125
#> [462,]  74   2      0        180        0   111
#> [463,]  73   1      0         52        1   105
#> [464,]  72   5      0        180        0   120
#> [465,]  78  12      1         11        1   160
#> [466,]  76  44      1         10        0   105
#> [467,]  76   5      0        180        0   185
#> [468,]  74   8      1          8        1   170
#> [469,]  77   5      1          0        0   123
#> [470,]  73  10      1          9        0   146
#> [471,]  77  12      0        180        0   130
#> [472,]  77   1      1          0        1    90
#> [473,]  78   5      1          0        1   170
#> [474,]  74   6      0         79        1   140
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  75   6      0        180        0   150
#> [478,]  79  10      1          8        0   190
#> [479,]  78  18      0         18        1   144
#> [480,]  76  29      0         47        0    90
#> [481,]  73  11      1          2        1   110
#> [482,]  74   2      0        180        0   100
#> [483,]  78   7      0          7        1   133
#> [484,]  74  15      0        180        1   172
#> [485,]  74   7      0          7        0   161
#> [486,]  76  13      1          1        1   170
#> [487,]  78  32      1          9        1   198
#> [488,]  79   6      0        180        0   170
#> [489,]  80  10      1          6        1   147
#> [490,]  78   0      0        180        1   212
#> [491,]  78  13      1          5        0   130
#> [492,]  75   5      0        119        1   150
#> [493,]  75  13      1          6        0   150
#> [494,]  76   1      0          1        1    83
#> [495,]  79   4      0         80        0   145
#> [496,]  77   2      1          0        1   143
#> [497,]  76  11      1          0        0   120
#> [498,]  75  11      1          4        0   162
#> [499,]  75   3      0          3        0     0
#> [500,]  76   7      0         29        1   150
#> [501,]  80   9      0         23        1   128
#> [502,]  80   6      0          6        1   150
#> [503,]  78   6      1          0        1   240
#> [504,]  78  11      1          1        1   140
#> [505,]  79  11      0        180        0   160
#> [506,]  79   2      1          0        1   121
#> [507,]  81   1      0          1        0   130
#> [508,]  76   4      0          4        1   160
#> [509,]  80   3      1          0        1   120
#> [510,]  75   2      1          1        1   204
#> [511,]  76   1      0          1        1    90
#> [512,]  79   4      1          0        1   120
#> [513,]  82   5      0          8        1   120
#> [514,]  80  40      1          0        1   138
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  81   4      1          2        1   126
#> [519,]  79  28      0        164        0   100
#> [520,]  78  32      0        180        1   130
#> [521,]  79   1      0         37        1   140
#> [522,]  81   3      0        180        0   184
#> [523,]  81   2      0        175        0   172
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  78   4      0        180        0   175
#> [528,]  79   3      0          3        1   101
#> [529,]  78  26      1          5        0   194
#> [530,]  76   1      0        166        0   131
#> [531,]  78  20      1          0        1   109
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  77  10      1          8        1   130
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  80   2      1          1        0   168
#> [538,]  79   6      0          6        0   152
#> [539,]  80   6      1          0        1   119
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  82   1      1          0        1    82
#> [543,]  79  10      0        180        1   150
#> [544,]  77   4      0        180        1    98
#> [545,]  78  12      0        180        0   134
#> [546,]  84  22      1         10        0   180
#> [547,]  80   6      0          6        1   110
#> [548,]  82   5      0        180        0   110
#> [549,]  83   5      0        180        0   148
#> [550,]  79   7      1          6        0   130
#> [551,]  83   4      0        103        0    97
#> [552,]  81  11      1          8        0   160
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  79   4      0          4        1   183
#> [556,]  78   9      1          4        1   120
#> [557,]  81  15      0        180        1   140
#> [558,]  80   7      1          0        1   146
#> [559,]  84   5      1          1        1    85
#> [560,]  81  20      1          9        0   170
#> [561,]  81  16      0         16        1   110
#> [562,]  81   8      0        180        0   146
#> [563,]  80   8      1          7        0   160
#> [564,]  79   0      1          0        1    96
#> [565,]  85   4      0        180        0    90
#> [566,]  83   2      0          2        1   155
#> [567,]  80   3      1          1        1   230
#> [568,]  84   4      0          4        1    85
#> [569,]  84   1      0         38        1   205
#> [570,]  81   4      0         90        1   138
#> [571,]  79   9      1          8        0   150
#> [572,]  80   6      0         71        1   189
#> [573,]  83   1      0          1        1   100
#> [574,]  82  19      0         19        0   120
#> [575,]  83   9      0        180        0   198
#> [576,]  79  14      1          0        0   110
#> [577,]  83   3      0        114        0    98
#> [578,]  81  14      1         12        1   128
#> [579,]  85   9      1          6        1   160
#> [580,]  81   4      0          4        0   175
#> [581,]  84  15      1         13        1   110
#> [582,]  81  12      0         12        1   163
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  86  12      0        180        1   120
#> [586,]  81  19      1         14        0   120
#> [587,]  82   3      1          2        0   130
#> [588,]  82  15      1          0        0   183
#> [589,]  83   7      0        126        0   135
#> [590,]  84   6      0        165        0   145
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  85   3      0          3        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  83   4      0          4        0   130
#> [598,]  87   2      0          5        1   137
#> [599,]  86  12      1          0        1   132
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  83  19      0         43        0   150
#> [603,]  84   3      1          2        0   125
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  87   2      0        180        0   113
#> [609,]  84   9      0         92        1   110
#> [610,]  84   3      0        180        1   170
#> [611,]  86   4      0         38        1   122
#> [612,]  82   4      0          4        0   130
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  84  13      0         62        1   100
#> [617,]  86   6      1          1        0   112
#> [618,]  88   4      0          4        0   100
#> [619,]  83  20      1          3        1   150
#> [620,]  88   4      0          4        1   115
#> [621,]  83   9      0         65        1   150
#> [622,]  86   9      1          7        1   142
#> [623,]  87   2      0        180        1   130
#> [624,]  86   6      0         46        0   173
#> [625,]  88   2      0        180        1    68
#> [626,]  83   3      0          3        1   130
#> [627,]  89   5      0        119        1   140
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  87   2      0        180        0   160
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  87   6      0        126        1   168
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  91   1      0          1        1    74
#> [647,]  87  43      0        178        1   130
#> [648,]  90   5      1          0        1   125
#> [649,]  88   3      1          2        0   159
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  87   7      0         74        1   105
#> [654,]  89  12      1          0        1   130
#> [655,]  91   5      0        169        1   176
#> [656,]  89  52      0         52        1   130
#> [657,]  92   7      0          7        1   110
#> [658,]  91   0      0          0        0     0
#> [659,]  89  14      0        180        1    84
#> [660,]  91   4      1          0        1   120
#> [661,]  90  19      1         11        1   129
#> [662,]  94   6      0         50        0    78
#> [663,]  91   1      0        180        0   158
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  95   8      1          5        1   150
#> [667,]  94   3      0         26        1   144
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+ 180.0+  73.0    5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [61]   1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+  99.0   16.0+ 180.0+   7.0+
#> [101]   6.0+ 180.0+ 180.0+ 180.0+ 171.0+ 180.0+   6.0+ 180.0+   9.0+ 180.0+
#> [111] 180.0+ 175.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  16.0  180.0+ 180.0+ 180.0+  12.0+ 180.0+   8.0    2.0    3.0+ 180.0+
#> [131] 140.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 180.0+  15.0  180.0+   4.0+ 180.0+ 180.0+   5.0+
#> [151] 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 171.0+ 180.0+   1.0 
#> [171] 180.0+ 180.0+ 180.0+  10.0+ 180.0+  17.0   19.0  180.0+ 180.0+ 172.0+
#> [181] 180.0+ 180.0+ 180.0+   1.0+  15.0  180.0+  77.0   13.0+   8.0+ 170.0 
#> [191]  94.0  180.0+ 169.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+  30.0 
#> [201] 180.0+  13.0+   5.0   18.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   7.0+
#> [221]  22.0    7.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+
#> [231] 180.0+  12.0  180.0+ 180.0+ 180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+
#> [241]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [251]  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+
#> [261]  15.0  180.0+   5.0+  13.0  180.0+ 166.0+  14.0+ 180.0+   3.0+ 180.0+
#> [271] 180.0+ 180.0+   8.0   16.0    1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+
#> [281]  18.0   11.0+ 180.0+  79.0   80.0   15.0+   4.0+ 174.0+ 180.0+ 180.0+
#> [291] 180.0+ 180.0+   8.0+   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+   6.0 
#> [301] 180.0+  19.0+  99.0  179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0 
#> [311]   7.0+ 180.0+ 180.0+ 180.0+  21.0+ 180.0+   1.0   18.0+ 101.0    5.0 
#> [321]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+
#> [331] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   3.0+  36.0    5.0+ 180.0+
#> [341] 180.0+  97.0  180.0+ 180.0+   2.0+  18.0  172.0+ 180.0+ 180.0+ 180.0+
#> [351] 180.0+ 180.0+  51.0   19.0  180.0+   1.0    1.0   60.0   10.0+   7.0+
#> [361] 124.0    9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0   76.0 
#> [371] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [381]  16.0+ 180.0+   6.0    7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [391]   2.0  180.0+  20.0   20.0  180.0+ 180.0+   8.0   87.0   12.0  180.0+
#> [401]   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+
#> [411] 175.0  180.0+  14.0+ 180.0+ 180.0+   8.0+ 179.0+ 159.0   15.0  180.0+
#> [421]   1.0  180.0+  13.0    4.0+ 180.0+  10.0  104.0+   1.0  180.0+  11.0 
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+   5.0   11.0+   4.0+
#> [441] 180.0+  10.0  180.0+   3.0  180.0+   6.0  180.0+ 180.0+  85.0  180.0+
#> [451] 180.0+ 174.0+   4.0    7.0    0.5   12.0  180.0+ 180.0+  46.0  180.0+
#> [461]   1.0  180.0+  52.0  180.0+  12.0  180.0+ 180.0+   8.0    5.0  180.0+
#> [471] 180.0+   1.0  180.0+  79.0    3.0  168.0+ 180.0+ 180.0+  18.0   47.0 
#> [481]  11.0  180.0+   7.0  180.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+
#> [491] 172.0  119.0  180.0+   1.0   80.0    2.0   11.0  152.0+   3.0   29.0 
#> [501]  23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   1.0    4.0    3.0+   2.0+
#> [511]   1.0  138.0    8.0   40.0   17.0  161.0   10.0+  93.0  164.0  180.0+
#> [521]  37.0  180.0+ 175.0+   7.0+  22.0   15.0+ 180.0+   3.0  171.0+ 166.0+
#> [531]  20.0+   1.0    3.0+  10.0  180.0+  85.0   10.0    6.0+   6.0  180.0+
#> [541]   5.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+
#> [551] 103.0  180.0+ 169.0   70.0    4.0  180.0+ 180.0+   7.0+ 180.0+  20.0 
#> [561]  16.0  180.0+ 180.0+   0.5  180.0+   2.0    3.0+   4.0   38.0   90.0 
#> [571] 180.0+  71.0    1.0   19.0  180.0+ 180.0+ 114.0  180.0+ 180.0+   4.0+
#> [581] 180.0+  12.0    5.0+   4.0+ 180.0+ 180.0+   3.0   83.0  126.0  165.0 
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+   6.0 
#> [601]  70.0   43.0  180.0+ 180.0+   3.0   13.0  180.0+ 180.0+  92.0  180.0+
#> [611]  38.0    4.0  177.0    3.0+   6.0+  62.0    6.0+   4.0+  20.0    4.0 
#> [621]  65.0   11.0  180.0+  46.0  180.0+   3.0+ 119.0    1.0+ 180.0+ 110.0 
#> [631]  29.0   46.0   14.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0   24.0 
#> [641]  50.0   11.0  126.0  180.0+   4.0    1.0  178.0+  89.0   75.0    1.0 
#> [651]  33.0  158.0   74.0  180.0+ 169.0   52.0    7.0    0.5  180.0+   4.0 
#> [661] 180.0+  50.0  180.0+  67.0   12.0    8.0   26.0    2.0    3.0   15.0+
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
#>   0.8347844 
```
