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
#> min 0.00350    44   2.783 0.1843       6
#> 1se 0.07535    11   2.944 0.1838       4
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
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  36   5      1          0        1   115
#>  [15,]  33   6      1          1        1   115
#>  [16,]  38  16      1         10        0   160
#>  [17,]  38  12      1         11        1    92
#>  [18,]  40  12      1          9        0   153
#>  [19,]  42   3      1          1        1   130
#>  [20,]  37   1      1          0        1   146
#>  [21,]  40   2      1          1        1   148
#>  [22,]  42   2      0        180        1   100
#>  [23,]  38   5      1          3        0   125
#>  [24,]  40  11      1         10        1   120
#>  [25,]  42   2      0        180        0   100
#>  [26,]  43   3      1          0        1   100
#>  [27,]  41   2      1          1        0   166
#>  [28,]  40   1      1          0        1   145
#>  [29,]  42  12      1         10        1   170
#>  [30,]  43   2      1          1        1   116
#>  [31,]  42   2      0        180        1   124
#>  [32,]  44   5      1          1        0   170
#>  [33,]  45   3      0        180        1   154
#>  [34,]  44   3      0        180        0   141
#>  [35,]  41  13      1          1        0   140
#>  [36,]  45   6      0        180        1   170
#>  [37,]  44   2      1          1        1   150
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  47   4      1          3        0   118
#>  [41,]  48  15      0        180        1   160
#>  [42,]  44   3      1          0        1   180
#>  [43,]  46   7      1          2        0   166
#>  [44,]  43  10      0        180        0   185
#>  [45,]  47   6      1          0        1   116
#>  [46,]  46  13      1         10        0   100
#>  [47,]  44   0      1          0        1    96
#>  [48,]  49   5      0         73        1   136
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   6      1          0        1   100
#>  [51,]  44   4      1          0        1   114
#>  [52,]  47   2      0        180        0   108
#>  [53,]  44   9      1          8        1   135
#>  [54,]  45   5      0        180        1   190
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46   4      0        180        1   121
#>  [57,]  44   2      0        180        0   142
#>  [58,]  46  15      0        180        1   120
#>  [59,]  45   9      1          0        1   145
#>  [60,]  48   3      0        180        0   154
#>  [61,]  48  12      1         11        0   200
#>  [62,]  47   5      1          3        1   130
#>  [63,]  47   9      1          6        0   170
#>  [64,]  46   3      1          0        1   119
#>  [65,]  47  10      0         10        1   140
#>  [66,]  50   1      1          0        1   129
#>  [67,]  48   2      1          0        0   184
#>  [68,]  47   7      0        180        0   145
#>  [69,]  50   4      1          1        0   125
#>  [70,]  50   6      1          2        1   140
#>  [71,]  49   7      1          7        1   110
#>  [72,]  50   7      0        180        1   110
#>  [73,]  49   2      0          2        0   105
#>  [74,]  51   1      0          1        1   145
#>  [75,]  49  15      1         11        1   160
#>  [76,]  49  23      0        179        1   112
#>  [77,]  50   7      1          0        1    92
#>  [78,]  50   4      0          4        1   100
#>  [79,]  51   3      1          2        0   113
#>  [80,]  50   1      1          0        0   150
#>  [81,]  49   7      1          4        1    90
#>  [82,]  47   8      0        180        0   160
#>  [83,]  47   6      0        180        1   162
#>  [84,]  52   2      0        180        0   155
#>  [85,]  46   3      0        180        1   120
#>  [86,]  46   1      1          1        0   145
#>  [87,]  50   4      1          1        0   150
#>  [88,]  48   7      1          0        1   110
#>  [89,]  47   2      1          1        0   110
#>  [90,]  49   9      1          3        0   102
#>  [91,]  54  17      1         12        1   102
#>  [92,]  50   2      0          5        1   106
#>  [93,]  50  10      1          6        0   122
#>  [94,]  50  14      1         13        0   170
#>  [95,]  53   8      1          7        0   160
#>  [96,]  48   3      1          2        0   150
#>  [97,]  49   5      1          2        1   150
#>  [98,]  53   4      0          4        0   140
#>  [99,]  48  11      1         10        0   120
#> [100,]  51  13      0         99        1   160
#> [101,]  49  16      0         16        0   125
#> [102,]  54  23      1         10        0   131
#> [103,]  52   7      1          2        0   154
#> [104,]  55   6      1          2        1   114
#> [105,]  54   9      1          1        0   130
#> [106,]  52   4      0        180        1   180
#> [107,]  51  13      1         11        0   145
#> [108,]  50   5      1          4        1   150
#> [109,]  52   4      0        180        0   183
#> [110,]  49   1      0          1        1   110
#> [111,]  50   7      1          1        0   156
#> [112,]  53   9      0          9        1    95
#> [113,]  56   4      1          1        1   130
#> [114,]  52   5      0        175        1   117
#> [115,]  55   1      0        180        0   127
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  52   8      0        180        0   119
#> [119,]  53  18      1          9        1   150
#> [120,]  54   3      0        180        1   180
#> [121,]  55   6      0        180        0   170
#> [122,]  53  10      1          9        0   172
#> [123,]  53  15      0         15        1    90
#> [124,]  53   4      0        180        1   150
#> [125,]  55   6      0        180        1   100
#> [126,]  55   6      1          5        1   138
#> [127,]  54  12      1          0        1   190
#> [128,]  56   3      0          8        1   139
#> [129,]  55   1      0          2        0   130
#> [130,]  54   7      1          2        0   129
#> [131,]  52   9      1          3        0   170
#> [132,]  54   2      1          1        1   176
#> [133,]  57   5      1          3        1   138
#> [134,]  57   1      0        180        1   156
#> [135,]  57   1      0          1        1   100
#> [136,]  56   4      1          0        1   140
#> [137,]  55  11      1          7        0   104
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
#> [148,]  53  15      1         10        1   130
#> [149,]  54  17      1          8        1   227
#> [150,]  55   9      1          2        1   147
#> [151,]  55  13      0        166        1   140
#> [152,]  56   5      0          5        1   150
#> [153,]  53   4      0        147        1   145
#> [154,]  53   7      1          0        1   120
#> [155,]  55   5      0          5        1   131
#> [156,]  56   4      0          4        0   164
#> [157,]  59  15      1         10        0   140
#> [158,]  58   9      1          0        1   180
#> [159,]  58   1      1          1        1   200
#> [160,]  55   5      1          0        0   140
#> [161,]  56   7      1          5        1   120
#> [162,]  55   2      0          2        0   106
#> [163,]  59   9      1          1        1   125
#> [164,]  57   1      0        180        0   148
#> [165,]  60  11      1          9        0   106
#> [166,]  58   4      1          0        1   160
#> [167,]  57   2      0          2        1   120
#> [168,]  57   5      0        180        1   130
#> [169,]  58  11      1          9        1   124
#> [170,]  55   5      1          0        1   160
#> [171,]  57  10      1          9        0   103
#> [172,]  59   6      1          0        1   140
#> [173,]  59   4      1          0        1   152
#> [174,]  58  26      1          0        1   189
#> [175,]  61   9      0          9        1   160
#> [176,]  58   4      1          3        0   120
#> [177,]  60   0      1          0        1    80
#> [178,]  59   2      1          1        0   140
#> [179,]  58   8      0        161        1   140
#> [180,]  61   4      1          3        0   151
#> [181,]  61  20      1         13        0   130
#> [182,]  57   2      1          0        1   116
#> [183,]  58  10      0         10        1   150
#> [184,]  57  11      0        180        1   150
#> [185,]  61   3      0         17        0   143
#> [186,]  56  14      0         45        0   130
#> [187,]  57   3      1          2        0   120
#> [188,]  58  19      1         13        1   140
#> [189,]  56  13      1          6        1   158
#> [190,]  59   9      1          0        1    80
#> [191,]  58  11      0        172        1   135
#> [192,]  60  12      1          0        1   114
#> [193,]  55   9      1          7        1   135
#> [194,]  61   4      1          0        1   115
#> [195,]  56   8      1          8        0   120
#> [196,]  57   1      0          1        0   126
#> [197,]  59   5      1          2        0   182
#> [198,]  58   5      1          1        1   135
#> [199,]  61  13      0         13        0   210
#> [200,]  58   8      1          5        0   152
#> [201,]  62  10      1          0        1   153
#> [202,]  62   7      1          2        1   180
#> [203,]  61  18      0        170        0   140
#> [204,]  61  28      1          7        0   133
#> [205,]  61   6      0          6        0   134
#> [206,]  59  13      1          2        0   198
#> [207,]  57  12      1          9        1   120
#> [208,]  62   4      1          0        0   160
#> [209,]  60  17      1          8        1   140
#> [210,]  58   3      1          0        1   146
#> [211,]  62   4      1          3        0   173
#> [212,]  58   2      0         30        0   202
#> [213,]  59  16      1          9        1   133
#> [214,]  61  13      0         13        0   120
#> [215,]  57  18      1          9        1    93
#> [216,]  61   5      0          5        1   160
#> [217,]  58  11      1          9        0   179
#> [218,]  62  17      1         10        1   180
#> [219,]  62   1      1          0        1   172
#> [220,]  58   7      0        180        1   150
#> [221,]  63   3      1          1        0   180
#> [222,]  61   7      0        180        0   135
#> [223,]  60  18      1         13        0   132
#> [224,]  59   8      0        180        1   140
#> [225,]  61   9      1          9        1   150
#> [226,]  62   7      0          7        0   150
#> [227,]  59   1      0         22        1   162
#> [228,]  58   2      0        180        0   127
#> [229,]  60   7      1          5        1   141
#> [230,]  59   5      1          1        0   148
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   162
#> [234,]  63   1      0          1        0   130
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  66   1      1          0        1   120
#> [239,]  63  10      1          0        1   148
#> [240,]  63  14      1          9        0   123
#> [241,]  65  36      1         11        0   140
#> [242,]  63   4      1          3        0   162
#> [243,]  61  10      1          2        1   194
#> [244,]  63  12      1          9        0   114
#> [245,]  66   5      1          0        1   110
#> [246,]  65   8      1          0        0   168
#> [247,]  65  10      1          8        1   120
#> [248,]  64   0      0          0        1    90
#> [249,]  60   6      0        180        0   130
#> [250,]  64  21      1         10        0   190
#> [251,]  64   9      0        180        0   150
#> [252,]  65   3      0        180        1   190
#> [253,]  63  16      1          7        1   110
#> [254,]  62   3      1          1        1   199
#> [255,]  65   6      0          9        0   112
#> [256,]  65   3      1          0        1    80
#> [257,]  63   2      1          1        0   180
#> [258,]  64   2      0          2        0   201
#> [259,]  66  18      1          5        0   142
#> [260,]  66  16      1         11        1   169
#> [261,]  62   9      0        180        0   145
#> [262,]  61  14      1          5        0   140
#> [263,]  61  15      1         10        0   130
#> [264,]  63   3      1          2        0   120
#> [265,]  63   2      1          0        0   140
#> [266,]  65   8      1          0        1   140
#> [267,]  67   6      0        180        1   170
#> [268,]  64  13      1         12        1   150
#> [269,]  66   7      1          0        1   115
#> [270,]  65   3      0          3        0   105
#> [271,]  64   0      0          0        1   148
#> [272,]  67   4      1          3        0   130
#> [273,]  66   3      1          0        1   135
#> [274,]  65   2      1          1        1   170
#> [275,]  68   1      0        180        1   166
#> [276,]  64  10      1          9        1   110
#> [277,]  63   7      1          0        0   162
#> [278,]  68   5      0          5        1    90
#> [279,]  64   1      0          1        1   120
#> [280,]  68  18      0        180        1   260
#> [281,]  65  17      1         14        1   100
#> [282,]  65  18      1          3        0   120
#> [283,]  63  10      0         18        1   130
#> [284,]  67  11      0         11        0   150
#> [285,]  68  11      0        180        0   160
#> [286,]  66  12      1         10        1   150
#> [287,]  65  15      1         12        1   150
#> [288,]  66  11      1          0        0   100
#> [289,]  69  12      0         15        1   140
#> [290,]  66  15      1         13        1   160
#> [291,]  63   2      0        180        0   150
#> [292,]  65  11      1          6        0   130
#> [293,]  69  21      1         10        0   180
#> [294,]  65   8      1          0        1    90
#> [295,]  66   3      0          3        1   138
#> [296,]  69   1      1          0        0   170
#> [297,]  67   1      0        180        1   160
#> [298,]  68  10      1         10        1   150
#> [299,]  65   1      1          0        0   133
#> [300,]  67   7      1          4        1   130
#> [301,]  65   6      0          6        0    80
#> [302,]  65  10      1          1        1   148
#> [303,]  66  19      1         12        1   150
#> [304,]  67  12      1         12        0   160
#> [305,]  65   4      1          1        0   130
#> [306,]  64   4      0        179        0   160
#> [307,]  66   4      0        180        1   130
#> [308,]  70  15      1         12        1   132
#> [309,]  64   4      0        180        1   140
#> [310,]  64   0      1          0        1   118
#> [311,]  67   2      0         18        0   131
#> [312,]  66   7      1          5        1   131
#> [313,]  66   4      0        180        0   177
#> [314,]  68   4      1          0        1   160
#> [315,]  69   4      1          3        1   150
#> [316,]  69  17      1         10        0   140
#> [317,]  69   8      0         93        0   140
#> [318,]  66   6      0        180        0   140
#> [319,]  65   1      0          1        1   120
#> [320,]  65   6      0        101        1   115
#> [321,]  68   4      0          4        1   190
#> [322,]  71   3      0          5        0   112
#> [323,]  70   7      1          0        1   190
#> [324,]  67   2      0        180        0   128
#> [325,]  66   9      1          3        1   151
#> [326,]  66   4      0        180        0   130
#> [327,]  67  10      1          9        0   200
#> [328,]  67   6      1          4        0   130
#> [329,]  68  18      1         14        1   170
#> [330,]  69   0      0          0        1   148
#> [331,]  65   2      0        180        0   130
#> [332,]  69   3      1          2        0   151
#> [333,]  69   8      0        180        1   180
#> [334,]  66   2      0          2        1   228
#> [335,]  71   6      0         45        1   158
#> [336,]  69   5      0          5        1   142
#> [337,]  71   3      0        103        0   133
#> [338,]  70  22      1         13        0   103
#> [339,]  67   1      0         36        1   104
#> [340,]  67   5      0          5        0   130
#> [341,]  69   8      1          5        1   195
#> [342,]  69   6      1          4        1   174
#> [343,]  66   2      1          1        0   123
#> [344,]  68  18      0         18        1   100
#> [345,]  67  14      0        172        1   140
#> [346,]  66   2      0        180        0   130
#> [347,]  69   8      1          2        0   121
#> [348,]  70   9      0        180        1   142
#> [349,]  72   5      1          4        0   170
#> [350,]  68   3      0         19        0   135
#> [351,]  67  12      1          8        0   120
#> [352,]  69   1      0          1        1   110
#> [353,]  67   1      0          1        1    60
#> [354,]  67   8      1          0        1   130
#> [355,]  72  13      1         11        1   195
#> [356,]  68  10      1          8        1   160
#> [357,]  66  24      1         13        0   130
#> [358,]  70  35      1          0        1   105
#> [359,]  70   7      0          7        0   102
#> [360,]  73  20      1          0        1   170
#> [361,]  71   6      0          9        0   120
#> [362,]  70  11      0        180        1   210
#> [363,]  72  19      1          8        0   120
#> [364,]  72  12      1         10        0   170
#> [365,]  67   8      0        180        1   170
#> [366,]  67   9      0        180        0   158
#> [367,]  73  13      0        152        1   130
#> [368,]  70   5      0        180        0   150
#> [369,]  72   2      0          2        1   100
#> [370,]  67   4      1          1        0   134
#> [371,]  72   6      1          5        0   115
#> [372,]  71   1      0        173        1   188
#> [373,]  68  23      0        180        1   220
#> [374,]  70   3      0        180        0   121
#> [375,]  68   4      1          3        0   210
#> [376,]  72   5      0         28        0   120
#> [377,]  71   5      0        180        0   191
#> [378,]  73   6      0        180        1   117
#> [379,]  69  16      1         10        1   140
#> [380,]  69   8      1          1        0   164
#> [381,]  68   7      0        180        1   130
#> [382,]  72   8      1          1        1   150
#> [383,]  71   2      1          0        1   180
#> [384,]  68  15      1         13        1   130
#> [385,]  70  13      1          9        0   100
#> [386,]  73   4      0        180        1   154
#> [387,]  71   3      1          1        0   150
#> [388,]  74  20      0         20        1   180
#> [389,]  71  20      1         10        0   140
#> [390,]  74   0      1          0        1    90
#> [391,]  73   3      1          0        1   136
#> [392,]  71  17      1         11        0   160
#> [393,]  71   8      1          7        0   149
#> [394,]  71   3      1          2        1   190
#> [395,]  73  10      1          8        0   106
#> [396,]  74   4      0          4        0   120
#> [397,]  73   4      0         58        1   160
#> [398,]  72   5      1          3        1   160
#> [399,]  73   6      0        180        0   110
#> [400,]  71   7      1          2        0   143
#> [401,]  72   8      1          0        1   140
#> [402,]  74   3      0          3        1   150
#> [403,]  71  13      1          8        0   121
#> [404,]  69   2      1          1        1    80
#> [405,]  70   4      1          0        1   140
#> [406,]  74   7      1          0        1   117
#> [407,]  69   7      0        180        1   144
#> [408,]  72  15      1         13        0   156
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  73  10      1         10        1   120
#> [413,]  74  15      1          9        1   179
#> [414,]  71   2      0         10        1   112
#> [415,]  73   1      0          1        1    80
#> [416,]  75   9      1          7        0   140
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  70   7      1          4        0   184
#> [420,]  72   7      0         57        1   145
#> [421,]  73  10      0        180        0   162
#> [422,]  70   3      0          3        0   150
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  71   3      1          0        0   144
#> [427,]  73   5      0        180        0   126
#> [428,]  73   4      0        180        0   124
#> [429,]  76   3      1          0        1   120
#> [430,]  71  32      1         12        1   107
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
#> [443,]  75  23      1         14        1   110
#> [444,]  76  17      1          0        1   200
#> [445,]  76  13      1         10        0   110
#> [446,]  75   4      1          0        1   122
#> [447,]  75   7      0          7        0   190
#> [448,]  75   0      0          0        1   130
#> [449,]  73  13      1         11        0   195
#> [450,]  75  12      0         12        1   160
#> [451,]  74   8      1          0        1   105
#> [452,]  76  13      1          8        1   148
#> [453,]  74   6      0        180        0   160
#> [454,]  75   1      0          1        1   125
#> [455,]  74   2      0        180        0   111
#> [456,]  73   1      0         52        1   105
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  74  10      1          0        1   135
#> [460,]  74   8      1          8        1   170
#> [461,]  75   9      0        180        1   140
#> [462,]  77   5      1          0        0   123
#> [463,]  73  10      1          9        0   146
#> [464,]  77  12      0        180        0   130
#> [465,]  78   5      1          0        1   170
#> [466,]  74   6      0         79        1   140
#> [467,]  75   3      1          1        1   171
#> [468,]  74   9      1          8        0   200
#> [469,]  75   6      0        180        0   150
#> [470,]  79  10      1          8        0   190
#> [471,]  78  18      0         18        1   144
#> [472,]  76  29      0         47        0    90
#> [473,]  73   8      1          1        1   162
#> [474,]  74   2      0        180        0   100
#> [475,]  78   7      0          7        1   133
#> [476,]  74  15      0        180        1   172
#> [477,]  76  13      1          1        1   170
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  80  10      1          6        1   147
#> [481,]  78   0      0        180        1   212
#> [482,]  78  15      0        180        1   270
#> [483,]  80   8      0          8        1   120
#> [484,]  75  13      1          6        0   150
#> [485,]  78   2      1          1        0   130
#> [486,]  75   4      1          0        0   212
#> [487,]  77   2      1          0        1   143
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  75   3      0          3        0     0
#> [491,]  76   7      0         29        1   150
#> [492,]  79   8      0         32        1   120
#> [493,]  80   9      0         23        1   128
#> [494,]  80   6      0          6        1   150
#> [495,]  78   6      1          0        1   240
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  81   1      0          1        0   130
#> [501,]  76   4      0          4        1   160
#> [502,]  79   4      0          4        1   125
#> [503,]  76  10      1          8        0   180
#> [504,]  76  12      1         10        1   127
#> [505,]  77   6      0          6        1   107
#> [506,]  80   3      1          0        1   120
#> [507,]  75   2      1          1        1   204
#> [508,]  78  11      0        180        1   135
#> [509,]  77  31      1          3        1   161
#> [510,]  78   7      1          0        1   110
#> [511,]  79   3      0          3        0   120
#> [512,]  77   7      0        180        1   170
#> [513,]  77   6      0          6        1   144
#> [514,]  79   4      1          0        1   120
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  79  10      0         10        1   120
#> [523,]  80  15      1          0        1    90
#> [524,]  81   4      1          2        1   126
#> [525,]  79  28      0        164        0   100
#> [526,]  80   9      0        118        1   186
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  81   2      0        175        0   172
#> [531,]  78   7      0          7        1   147
#> [532,]  78  15      0         15        0   165
#> [533,]  80   5      1          1        1   108
#> [534,]  78   4      0        180        0   175
#> [535,]  79   3      0          3        1   101
#> [536,]  76   1      0        166        0   131
#> [537,]  81   4      1          1        1   104
#> [538,]  78  20      1          0        1   109
#> [539,]  80   1      0          1        0   100
#> [540,]  82   3      1          1        1   144
#> [541,]  77   5      0         85        0   188
#> [542,]  80   2      1          1        0   168
#> [543,]  80   6      1          0        1   119
#> [544,]  82   1      1          0        1    82
#> [545,]  79  10      0        180        1   150
#> [546,]  77   4      0        180        1    98
#> [547,]  81   1      0        108        0   129
#> [548,]  78  12      0        180        0   134
#> [549,]  79   4      0          4        1   121
#> [550,]  80   6      0          6        1   110
#> [551,]  83   9      1          5        1   170
#> [552,]  79   7      1          6        0   130
#> [553,]  81  11      1          8        0   160
#> [554,]  81   5      0        177        0    41
#> [555,]  82   8      1          1        0   128
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  83   8      0          8        0   115
#> [561,]  81  16      0         16        1   110
#> [562,]  80   6      1          0        1   150
#> [563,]  80  11      1          8        0   110
#> [564,]  80   8      1          7        0   160
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  81   4      0         90        1   138
#> [572,]  84   4      0         89        1   129
#> [573,]  80   2      1          0        1   130
#> [574,]  80   6      0         71        1   189
#> [575,]  83   1      0          1        1   100
#> [576,]  82  19      0         19        0   120
#> [577,]  80  30      1         13        0   220
#> [578,]  83   9      0        180        0   198
#> [579,]  81  14      1         12        1   128
#> [580,]  83   2      0        154        0   130
#> [581,]  82   0      0          2        1   100
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   4      0          4        0   175
#> [585,]  81   1      0          1        1   145
#> [586,]  81  12      0         12        1   163
#> [587,]  81   4      0          4        0   160
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  82  15      1          0        0   183
#> [591,]  80   2      0         88        0   135
#> [592,]  83   7      0        126        0   135
#> [593,]  86   8      0          8        1   132
#> [594,]  81  16      1          9        0   180
#> [595,]  84   6      0        165        0   145
#> [596,]  86   3      0          3        1   140
#> [597,]  82   9      0        180        1   134
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  82   1      0        180        1   193
#> [601,]  87   2      0          5        1   137
#> [602,]  86  12      1          0        1   132
#> [603,]  82  14      1         11        1   103
#> [604,]  86   6      1          0        1   140
#> [605,]  84  16      0         70        1   150
#> [606,]  84   3      1          2        0   125
#> [607,]  83  10      1          0        1   190
#> [608,]  86   2      0        180        1   169
#> [609,]  88  14      1          3        1   130
#> [610,]  84   3      0          3        1   121
#> [611,]  83  13      1         12        0   170
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  82   4      0          4        0   130
#> [616,]  85   3      0          3        1   113
#> [617,]  86   6      1          1        0   112
#> [618,]  83  20      1          3        1   150
#> [619,]  88   4      0          4        1   115
#> [620,]  85  22      0         22        1   184
#> [621,]  83   9      0         65        1   150
#> [622,]  86   9      1          7        1   142
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  84   8      0        180        1   119
#> [631,]  85   8      0          8        1   136
#> [632,]  84   2      0        110        1   174
#> [633,]  87  29      0         29        1    97
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  88   1      0          1        0   135
#> [638,]  91   8      0          8        0   100
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  87   6      0        126        1   168
#> [644,]  86  10      0        180        1   137
#> [645,]  90   4      1          0        0   121
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  87   7      0         74        1   105
#> [654,]  89   2      0        168        0   118
#> [655,]  89  14      0        180        1    84
#> [656,]  91   4      1          0        1   120
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [11] 115.0  180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21]   2.0+ 180.0+   5.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+   2.0+
#>  [31] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71]   7.0  180.0+   2.0    1.0  179.0+ 179.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [91] 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+  99.0 
#> [101]  16.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+   1.0 
#> [111] 180.0+   9.0+ 180.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+  12.0+   8.0    2.0  180.0+
#> [131] 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+
#> [141]   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0 
#> [151] 166.0+   5.0+ 147.0+ 180.0+   5.0+   4.0+ 180.0+   9.0+   1.0  180.0+
#> [161] 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [171] 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+ 180.0+
#> [181] 180.0+ 180.0+  10.0+ 180.0+  17.0   45.0    3.0+  19.0  180.0+   9.0+
#> [191] 172.0+ 172.0+  24.0  180.0+   8.0    1.0+ 180.0+ 180.0+  13.0+   8.0+
#> [201] 180.0+ 180.0+ 170.0   94.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [211] 180.0+  30.0  180.0+  13.0+  18.0    5.0+ 180.0+ 180.0+   1.0  180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0  180.0+  84.0  180.0+
#> [231] 180.0+ 180.0+   1.0    1.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+
#> [241]  36.0  180.0+  88.0   12.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+   2.0+  18.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0  180.0+  13.0  179.0+   3.0 
#> [271]   0.5+ 180.0+   3.0+ 175.0+ 180.0+ 180.0+   7.0+   5.0    1.0  180.0+
#> [281] 180.0+ 123.0+  18.0   11.0+ 180.0+  80.0   15.0+ 180.0+  15.0  180.0+
#> [291] 180.0+ 180.0+ 174.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+
#> [301]   6.0  180.0+  19.0+  12.0  180.0+ 179.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [311]  18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0  180.0+   1.0  101.0 
#> [321]   4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+ 174.0+   6.0  180.0+   0.5 
#> [331] 180.0+ 180.0+ 180.0+   2.0   45.0    5.0+ 103.0  180.0+  36.0    5.0+
#> [341] 180.0+  97.0    2.0+  18.0  172.0+ 180.0+   8.0+ 180.0+ 180.0+  19.0 
#> [351] 180.0+   1.0    1.0  180.0+ 132.0   10.0+ 180.0+ 180.0+   7.0+ 124.0 
#> [361]   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+   2.0   76.0 
#> [371] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+  15.0   13.0+ 180.0+   3.0+  20.0   20.0    0.5 
#> [391] 180.0+ 180.0+   8.0    3.0   87.0    4.0+  58.0  180.0+ 180.0+ 180.0+
#> [401] 180.0+   3.0  175.0    2.0  180.0+ 180.0+ 180.0+ 180.0+ 179.0+   1.0 
#> [411] 180.0+  15.0  180.0+  10.0    1.0  180.0+ 180.0+   4.0+ 104.0+  57.0 
#> [421] 180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [431] 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+  10.0  180.0+   3.0  180.0+
#> [441] 180.0+ 180.0+ 180.0+  17.0+ 174.0+   4.0    7.0    0.5  180.0+  12.0 
#> [451] 180.0+ 180.0+ 180.0+   1.0  180.0+  52.0   12.0  180.0+ 180.0+   8.0 
#> [461] 180.0+   5.0  180.0+ 180.0+ 180.0+  79.0    3.0  168.0+ 180.0+ 180.0+
#> [471]  18.0   47.0  180.0+ 180.0+   7.0  180.0+ 180.0+  32.0  180.0+  10.0 
#> [481] 180.0+ 180.0+   8.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0    3.0 
#> [491]  29.0   32.0   23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [501]   4.0    4.0   10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+ 171.0   43.0 
#> [511]   3.0  180.0+   6.0  138.0  180.0+ 180.0+  71.0    8.0   40.0   59.0 
#> [521]  17.0   10.0+ 180.0+  93.0  164.0  118.0  180.0+  37.0  180.0+ 175.0+
#> [531]   7.0+  15.0+   5.0+ 180.0+   3.0  166.0+  71.0   20.0+   1.0  180.0+
#> [541]  85.0   10.0    6.0    1.0  180.0+ 180.0+ 108.0  180.0+   4.0    6.0 
#> [551]   9.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+
#> [561]  16.0  180.0+ 180.0+ 180.0+ 128.0  167.0    3.0+  62.0    1.0   38.0 
#> [571]  90.0   89.0  180.0+  71.0    1.0   19.0   30.0  180.0+ 180.0+ 154.0 
#> [581]   2.0  180.0+ 180.0+   4.0+   1.0   12.0    4.0+ 180.0+   3.0   83.0 
#> [591]  88.0  126.0    8.0  180.0+ 165.0    3.0  180.0+ 180.0+ 180.0+ 180.0+
#> [601]   5.0  180.0+ 174.0    6.0   70.0  180.0+ 180.0+ 180.0+  14.0    3.0 
#> [611]  13.0  180.0+  92.0  180.0+   4.0    3.0+   6.0+  20.0    4.0   22.0 
#> [621]  65.0   11.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0  180.0+ 180.0+
#> [631]   8.0  110.0   29.0  180.0+ 180.0+  46.0    1.0+   8.0   25.0    3.0 
#> [641]  50.0   11.0  126.0  180.0+   4.0  178.0+  36.0   89.0    3.0+   1.0 
#> [651]  33.0  158.0   74.0  168.0  180.0+   4.0   50.0    1.0+ 179.0+   8.0+
#> [661] 180.0+  16.0   67.0    8.0    0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8210074 
```
