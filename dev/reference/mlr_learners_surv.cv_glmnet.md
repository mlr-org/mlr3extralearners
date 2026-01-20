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
#> min 0.00371    43   2.812 0.1825       6
#> 1se 0.07996    10   2.991 0.1630       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  40  12      1          9        0   153
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  40  11      1         10        1   120
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  44   5      1          1        0   170
#>  [31,]  45   3      0        180        1   154
#>  [32,]  41  10      1          8        0   150
#>  [33,]  41  13      1          1        0   140
#>  [34,]  45   9      1          7        0   110
#>  [35,]  45   6      0        180        1   170
#>  [36,]  41   5      1          4        1   141
#>  [37,]  44   2      1          1        1   150
#>  [38,]  43   2      0        180        1   140
#>  [39,]  45   2      0        180        1   140
#>  [40,]  46   7      1          2        0   166
#>  [41,]  43  29      0        180        1   180
#>  [42,]  43  10      0        180        0   185
#>  [43,]  46  13      1         10        0   100
#>  [44,]  44   0      1          0        1    96
#>  [45,]  47   4      1          3        1   160
#>  [46,]  43   3      1          0        1   124
#>  [47,]  49   5      0         73        1   136
#>  [48,]  44   4      1          0        1   114
#>  [49,]  47   2      0        180        0   108
#>  [50,]  44   9      1          8        1   135
#>  [51,]  45   5      0        180        1   190
#>  [52,]  46   4      0        180        1   121
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  48  12      1         11        0   200
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  46   9      1          9        1   122
#>  [66,]  50   7      0        180        1   110
#>  [67,]  49   2      0          2        0   105
#>  [68,]  51   1      0          1        1   145
#>  [69,]  49  15      1         11        1   160
#>  [70,]  47   2      0        180        0   150
#>  [71,]  49  23      0        179        1   112
#>  [72,]  46   6      1          0        1   156
#>  [73,]  50   7      1          0        1    92
#>  [74,]  50   4      0          4        1   100
#>  [75,]  51   3      1          2        0   113
#>  [76,]  50   1      1          0        0   150
#>  [77,]  47   8      0        180        0   160
#>  [78,]  47   6      0        180        1   162
#>  [79,]  51   8      0        180        1   140
#>  [80,]  52   2      0        180        0   155
#>  [81,]  46   1      1          1        0   145
#>  [82,]  50   4      1          1        0   150
#>  [83,]  48   7      1          0        1   110
#>  [84,]  53   8      0         36        1   160
#>  [85,]  48  17      1         10        0   111
#>  [86,]  47   2      1          1        0   110
#>  [87,]  52   4      1          4        0   152
#>  [88,]  53   5      0        180        1   140
#>  [89,]  54  17      1         12        1   102
#>  [90,]  53   7      1          0        0   199
#>  [91,]  54   6      1          3        0   129
#>  [92,]  51   3      1          1        0   140
#>  [93,]  50  10      1          6        0   122
#>  [94,]  53   8      1          7        0   160
#>  [95,]  51  25      1          1        0   202
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  51  13      0         99        1   160
#> [101,]  49  16      0         16        0   125
#> [102,]  55   3      1          1        0   150
#> [103,]  52   7      1          2        0   154
#> [104,]  55   6      1          2        1   114
#> [105,]  54   9      1          1        0   130
#> [106,]  55   4      1          2        0   150
#> [107,]  52   4      0        180        1   180
#> [108,]  51  13      1         11        0   145
#> [109,]  54   4      1          0        1   121
#> [110,]  52   4      0        180        0   183
#> [111,]  50   3      0        174        1   153
#> [112,]  55  28      1         13        1   160
#> [113,]  49   6      1          0        1   130
#> [114,]  49   1      0          1        1   110
#> [115,]  50   7      1          1        0   156
#> [116,]  53   9      0          9        1    95
#> [117,]  50   7      1          0        1   127
#> [118,]  52   5      0        175        1   117
#> [119,]  55   1      0        180        0   127
#> [120,]  55   2      0          2        0   145
#> [121,]  54   1      0        180        0   162
#> [122,]  56   2      0        180        0   132
#> [123,]  52   8      0        180        0   119
#> [124,]  55   6      0        180        0   170
#> [125,]  52  16      0         16        0   152
#> [126,]  53  10      1          9        0   172
#> [127,]  52  16      1         14        0   170
#> [128,]  55   6      0        180        1   100
#> [129,]  54  12      1          0        1   190
#> [130,]  55   2      0        134        1   140
#> [131,]  56   3      0          8        1   139
#> [132,]  55   1      0          2        0   130
#> [133,]  54   7      1          2        0   129
#> [134,]  52   9      1          3        0   170
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0          1        1   100
#> [137,]  56   4      1          0        1   140
#> [138,]  52   2      0        180        0   140
#> [139,]  52  15      1         14        0   130
#> [140,]  56  14      1         11        0   130
#> [141,]  53   3      1          0        1   200
#> [142,]  57  10      0        180        1   170
#> [143,]  58   8      0          8        1   130
#> [144,]  54   5      0        180        1   108
#> [145,]  55   3      1          1        1   156
#> [146,]  57   4      0        180        1   119
#> [147,]  53  15      1         10        1   130
#> [148,]  54  17      1          8        1   227
#> [149,]  55  13      0        166        1   140
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   3      1          2        0   140
#> [154,]  55   5      0          5        1   131
#> [155,]  54   7      1          0        1   141
#> [156,]  56   4      0          4        0   164
#> [157,]  59  15      1         10        0   140
#> [158,]  58   9      1          0        1   180
#> [159,]  58   1      1          1        1   200
#> [160,]  55   5      1          0        0   140
#> [161,]  56   7      1          5        1   120
#> [162,]  59   9      1          1        1   125
#> [163,]  59   3      0        180        0   120
#> [164,]  58   4      1          0        1   160
#> [165,]  57   2      0          2        1   120
#> [166,]  60   5      1          1        0   138
#> [167,]  55   5      1          0        1   160
#> [168,]  57  10      1          9        0   103
#> [169,]  59   6      1          0        1   140
#> [170,]  59   5      0        180        1   155
#> [171,]  59   4      1          0        1   152
#> [172,]  58  26      1          0        1   189
#> [173,]  61   9      0          9        1   160
#> [174,]  60   0      1          0        1    80
#> [175,]  59   2      1          1        0   140
#> [176,]  58   8      0        161        1   140
#> [177,]  58  14      1          6        0   190
#> [178,]  61   4      1          3        0   151
#> [179,]  61   3      1          2        1   102
#> [180,]  58   1      0          1        1   100
#> [181,]  61  20      1         13        0   130
#> [182,]  57  13      1         10        0   110
#> [183,]  57   4      1          3        0   138
#> [184,]  57  11      0        180        1   150
#> [185,]  61   3      0         17        0   143
#> [186,]  56  14      0         45        0   130
#> [187,]  57   3      1          2        0   120
#> [188,]  58  19      1         13        1   140
#> [189,]  56  13      1          6        1   158
#> [190,]  56  18      1         11        1   165
#> [191,]  55   4      1          3        1   160
#> [192,]  58  11      0        172        1   135
#> [193,]  60  12      1          0        1   114
#> [194,]  61   4      1          0        1   115
#> [195,]  56   8      1          8        0   120
#> [196,]  61  13      1         12        1   130
#> [197,]  59  11      1          8        1   190
#> [198,]  57   1      0          1        0   126
#> [199,]  57  15      1         13        1   110
#> [200,]  58   5      1          1        1   135
#> [201,]  59  10      0        180        0   160
#> [202,]  61   8      0         77        0   120
#> [203,]  61  13      0         13        0   210
#> [204,]  58   8      1          5        0   152
#> [205,]  62  10      1          0        1   153
#> [206,]  62   7      1          2        1   180
#> [207,]  57   3      1          0        0   100
#> [208,]  61  18      0        170        0   140
#> [209,]  58   8      1          3        1   150
#> [210,]  61   7      0          7        1   150
#> [211,]  60   7      0          7        0   147
#> [212,]  61   6      0          6        0   134
#> [213,]  59  13      1          2        0   198
#> [214,]  62   4      1          0        0   160
#> [215,]  60  17      1          8        1   140
#> [216,]  58   3      1          0        1   146
#> [217,]  62   4      1          3        0   173
#> [218,]  58   2      0         30        0   202
#> [219,]  59  16      1          9        1   133
#> [220,]  61   5      0          5        1   110
#> [221,]  57  18      1          9        1    93
#> [222,]  58  11      1          9        0   179
#> [223,]  57   2      1          1        0   159
#> [224,]  58   7      0        180        1   150
#> [225,]  63   1      0        180        1   130
#> [226,]  61   7      0        180        0   135
#> [227,]  63   4      1          3        0   222
#> [228,]  62   3      0        180        1   105
#> [229,]  63  15      1         10        1   126
#> [230,]  64   4      0        180        0   130
#> [231,]  60  18      1         13        0   132
#> [232,]  61   9      1          9        1   150
#> [233,]  59   1      0         22        1   162
#> [234,]  59   4      0        180        0   196
#> [235,]  65  13      0        180        1   100
#> [236,]  59   4      0          4        0   149
#> [237,]  64  10      1          9        0   160
#> [238,]  62   6      0          6        0   120
#> [239,]  63  12      1         10        0   200
#> [240,]  59  10      0        180        1   130
#> [241,]  61   6      1          1        1   117
#> [242,]  64  12      1         11        0   160
#> [243,]  63  10      1          0        1   148
#> [244,]  65  36      1         11        0   140
#> [245,]  63   4      1          3        0   162
#> [246,]  61  10      1          2        1   194
#> [247,]  64  32      1          9        1   160
#> [248,]  64   0      0          0        1    90
#> [249,]  60   6      0        180        0   130
#> [250,]  64   9      0        180        0   150
#> [251,]  61   4      0        180        1   113
#> [252,]  65   3      0        180        1   190
#> [253,]  66   6      1          1        1   130
#> [254,]  63  12      0         12        1   150
#> [255,]  62   3      1          1        1   199
#> [256,]  65   6      0          9        0   112
#> [257,]  65   3      1          0        1    80
#> [258,]  64   2      0          2        0   201
#> [259,]  66  16      1         11        1   169
#> [260,]  62   9      0        180        0   145
#> [261,]  61  14      1          5        0   140
#> [262,]  61  15      1         10        0   130
#> [263,]  63   9      1          8        1   160
#> [264,]  63   2      1          0        0   140
#> [265,]  64  19      1          8        1   160
#> [266,]  65   8      1          0        1   140
#> [267,]  67   6      0        180        1   170
#> [268,]  68   5      1          4        1   150
#> [269,]  64  13      1         12        1   150
#> [270,]  64   6      1          0        1   125
#> [271,]  66   7      1          0        1   115
#> [272,]  66  13      1          0        0   118
#> [273,]  65   3      0          3        0   105
#> [274,]  64   0      0          0        1   148
#> [275,]  67   4      1          3        0   130
#> [276,]  66   6      1          0        1   140
#> [277,]  68   1      0        180        1   166
#> [278,]  63   7      1          0        0   162
#> [279,]  68   5      0          5        1    90
#> [280,]  63  10      0         16        1   160
#> [281,]  64   1      0          1        1   120
#> [282,]  65  18      1          3        0   120
#> [283,]  63   1      1          0        1   155
#> [284,]  67  11      0         11        0   150
#> [285,]  68  14      0         79        0   172
#> [286,]  66  12      1         10        1   150
#> [287,]  65  15      1         12        1   150
#> [288,]  66  11      1          0        0   100
#> [289,]  69  12      0         15        1   140
#> [290,]  66  15      1         13        1   160
#> [291,]  65  11      1          6        0   130
#> [292,]  69  21      1         10        0   180
#> [293,]  69   6      0        180        1   100
#> [294,]  66   9      1          8        0   130
#> [295,]  63   8      0        180        1   120
#> [296,]  67   1      0        180        1   160
#> [297,]  68  10      1         10        1   150
#> [298,]  65   1      1          0        0   133
#> [299,]  63   2      1          0        0    99
#> [300,]  67   2      0        180        0   184
#> [301,]  65   6      0          6        0    80
#> [302,]  65  10      1          1        1   148
#> [303,]  66  19      1         12        1   150
#> [304,]  64   4      0        179        0   160
#> [305,]  66   4      0        180        1   130
#> [306,]  64  11      0         11        0   125
#> [307,]  64   4      0        180        1   140
#> [308,]  64   0      1          0        1   118
#> [309,]  67   2      0         18        0   131
#> [310,]  66   7      1          5        1   131
#> [311,]  66   4      0        180        0   177
#> [312,]  66   6      0        180        0   140
#> [313,]  65   6      0        101        1   115
#> [314,]  71  20      1          0        1   160
#> [315,]  66   1      1          1        1   165
#> [316,]  69   8      0        180        1   153
#> [317,]  70  14      0        171        0   166
#> [318,]  68  18      1         14        1   170
#> [319,]  69   0      0          0        1   148
#> [320,]  65   2      0        180        0   130
#> [321,]  69   3      1          2        0   151
#> [322,]  65  14      1         13        1   150
#> [323,]  69   8      0        180        1   180
#> [324,]  71   7      0          7        0   230
#> [325,]  66   2      0          2        1   228
#> [326,]  71   3      0        103        0   133
#> [327,]  69   3      0          3        1   130
#> [328,]  70  22      1         13        0   103
#> [329,]  67   1      0         36        1   104
#> [330,]  67   5      0          5        0   130
#> [331,]  68   6      0        180        0   145
#> [332,]  69   8      1          5        1   195
#> [333,]  72   3      1          0        1   132
#> [334,]  69   8      1          7        1   108
#> [335,]  66   2      1          1        0   123
#> [336,]  69  19      0        180        0   130
#> [337,]  67  14      0        172        1   140
#> [338,]  66   2      0        180        0   130
#> [339,]  69   8      1          2        0   121
#> [340,]  67  13      1          9        0   130
#> [341,]  70   9      0        180        1   142
#> [342,]  67  22      1          1        1   140
#> [343,]  68   3      0         19        0   135
#> [344,]  69   1      0          1        1   110
#> [345,]  67   1      0          1        1    60
#> [346,]  67   4      0         60        1   136
#> [347,]  69   5      0         76        0   120
#> [348,]  68  10      1          8        1   160
#> [349,]  66  24      1         13        0   130
#> [350,]  72  30      1          0        1   145
#> [351,]  70   7      0          7        0   102
#> [352,]  68   7      1          2        0   135
#> [353,]  71   6      0          9        0   120
#> [354,]  69  10      1          6        1   120
#> [355,]  72  12      1         10        0   170
#> [356,]  67   9      0        180        0   158
#> [357,]  73  13      0        152        1   130
#> [358,]  70   5      0        180        0   150
#> [359,]  72   2      0          2        1   100
#> [360,]  67   4      1          1        0   134
#> [361,]  72   6      1          5        0   115
#> [362,]  71   1      0        173        1   188
#> [363,]  68  23      0        180        1   220
#> [364,]  70   3      0        180        0   121
#> [365,]  69   3      0        180        0   220
#> [366,]  71   3      1          2        0   150
#> [367,]  72   5      0         28        0   120
#> [368,]  71   5      0        180        0   191
#> [369,]  73   6      0        180        1   117
#> [370,]  68   7      0        180        1   130
#> [371,]  70   4      0        180        0   180
#> [372,]  69   1      1          0        0   155
#> [373,]  73   6      1          0        1   270
#> [374,]  72   8      1          1        1   150
#> [375,]  71   2      1          0        1   180
#> [376,]  73   7      0          7        1   140
#> [377,]  68  15      1         13        1   130
#> [378,]  70  13      1          9        0   100
#> [379,]  73   0      0        180        1   161
#> [380,]  73   4      0        180        1   154
#> [381,]  69   2      1          0        1   110
#> [382,]  71   3      1          1        0   150
#> [383,]  71  15      1         11        0   165
#> [384,]  68   9      0        180        1   120
#> [385,]  73   3      1          0        1   136
#> [386,]  70   5      1          0        1   190
#> [387,]  71  17      1         11        0   160
#> [388,]  71   8      1          7        0   149
#> [389,]  71   3      1          2        1   190
#> [390,]  73  10      1          8        0   106
#> [391,]  69  12      1          1        1   149
#> [392,]  70  26      1         11        1   120
#> [393,]  73   4      0         58        1   160
#> [394,]  72   5      1          3        1   160
#> [395,]  70   3      0        180        1   154
#> [396,]  72  15      1          0        1   150
#> [397,]  71   7      1          2        0   143
#> [398,]  72   8      1          0        1   140
#> [399,]  73  17      1         11        0   140
#> [400,]  69   2      1          1        1    80
#> [401,]  74   7      1          0        1   117
#> [402,]  72  10      1          8        1   153
#> [403,]  72  15      1         13        0   156
#> [404,]  70   8      0          8        0   120
#> [405,]  75   1      0          1        0   133
#> [406,]  75   2      1          1        0   145
#> [407,]  73  10      1          9        1   146
#> [408,]  72  10      1          9        1   160
#> [409,]  73  10      1         10        1   120
#> [410,]  74  15      1          9        1   179
#> [411,]  71   2      0         10        1   112
#> [412,]  75   9      1          7        0   140
#> [413,]  75  13      1          1        1   130
#> [414,]  71  11      1          8        0   110
#> [415,]  71   4      0          4        0   134
#> [416,]  72  15      1         12        1   120
#> [417,]  73  10      1          8        0   120
#> [418,]  70   7      1          4        0   184
#> [419,]  72   1      1          1        0   168
#> [420,]  72   7      0         57        1   145
#> [421,]  73  10      0        180        0   162
#> [422,]  72  11      0         11        1   140
#> [423,]  70   3      0          3        0   150
#> [424,]  73   5      1          3        1   112
#> [425,]  73  12      1         12        1   140
#> [426,]  72   2      0        180        0   120
#> [427,]  75   1      0        180        1   140
#> [428,]  72   4      1          0        1   197
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  71  32      1         12        1   107
#> [432,]  76   5      0          5        1   130
#> [433,]  77  11      0         11        1   150
#> [434,]  77   4      0          4        0   185
#> [435,]  75   3      1          1        0   180
#> [436,]  72   7      1          2        0   142
#> [437,]  73  15      0         15        1   160
#> [438,]  71  16      0        180        0   140
#> [439,]  74   7      0        180        1   150
#> [440,]  76   1      0        180        0   114
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  74  19      1          4        1   200
#> [444,]  73   6      0          6        1   114
#> [445,]  75  23      1         14        1   110
#> [446,]  74   2      0        180        0   190
#> [447,]  72   4      0         85        1   120
#> [448,]  72   4      1          3        0   160
#> [449,]  76  17      1          0        1   200
#> [450,]  73   4      1          3        1   125
#> [451,]  75   4      1          0        1   122
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  75   4      1          2        1   188
#> [455,]  76   4      0          4        1   155
#> [456,]  73   1      0         52        1   105
#> [457,]  72   5      0        180        0   120
#> [458,]  78  12      1         11        1   160
#> [459,]  76  44      1         10        0   105
#> [460,]  76   5      0        180        0   185
#> [461,]  76   5      1          0        1   167
#> [462,]  74   8      1          8        1   170
#> [463,]  73  33      1         12        1   175
#> [464,]  77  12      1          9        1   100
#> [465,]  73  10      1          9        0   146
#> [466,]  78   5      1          0        1   170
#> [467,]  73   7      1          0        0   174
#> [468,]  74   6      0         79        1   140
#> [469,]  75   3      1          1        1   171
#> [470,]  75   6      0        180        0   150
#> [471,]  79  10      1          8        0   190
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  76  29      0         47        0    90
#> [475,]  73   8      1          1        1   162
#> [476,]  73  11      1          2        1   110
#> [477,]  74   2      0        180        0   100
#> [478,]  78   7      0          7        1   133
#> [479,]  74   7      0          7        0   161
#> [480,]  78  32      1          9        1   198
#> [481,]  79   6      0        180        0   170
#> [482,]  80  10      1          6        1   147
#> [483,]  78   0      0        180        1   212
#> [484,]  78  13      1          5        0   130
#> [485,]  75   5      0        119        1   150
#> [486,]  75  12      1          1        1   120
#> [487,]  78  15      0        180        1   270
#> [488,]  80   8      0          8        1   120
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  10      0        180        1   130
#> [494,]  76  11      1          0        0   120
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  77  24      0         24        1   160
#> [498,]  80   6      0          6        1   150
#> [499,]  78   6      1          0        1   240
#> [500,]  76   3      1          0        1   140
#> [501,]  79   2      1          0        1   121
#> [502,]  78  14      1          0        1   140
#> [503,]  81   1      0          1        0   130
#> [504,]  78  11      1          8        1   118
#> [505,]  76   4      0          4        1   160
#> [506,]  79   4      0          4        1   125
#> [507,]  76  10      1          8        0   180
#> [508,]  77   6      0          6        1   107
#> [509,]  80   3      1          0        1   120
#> [510,]  75   2      1          1        1   204
#> [511,]  78  11      0        180        1   135
#> [512,]  77  31      1          3        1   161
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   6      0          6        1   144
#> [516,]  79   4      1          0        1   120
#> [517,]  81   1      0        180        0   120
#> [518,]  80  15      1         12        1   150
#> [519,]  82   5      0          8        1   120
#> [520,]  80  17      1         12        0   100
#> [521,]  80  15      1          0        1    90
#> [522,]  81   4      1          2        1   126
#> [523,]  80   9      0        118        1   186
#> [524,]  80   6      0        173        1   160
#> [525,]  78  32      0        180        1   130
#> [526,]  79   1      0         37        1   140
#> [527,]  81   2      0        175        0   172
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  78  15      0         15        0   165
#> [531,]  80   5      1          1        1   108
#> [532,]  78   4      0        180        0   175
#> [533,]  79   3      0          3        1   101
#> [534,]  78  26      1          5        0   194
#> [535,]  81   4      1          1        1   104
#> [536,]  78  20      1          0        1   109
#> [537,]  78   3      1          1        1   152
#> [538,]  77   5      0         85        0   188
#> [539,]  79   6      0          6        0   152
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  79  10      0        180        1   150
#> [543,]  77   4      0        180        1    98
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  84  22      1         10        0   180
#> [547,]  79   4      0          4        1   121
#> [548,]  80   6      0          6        1   110
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  81  11      1          8        0   160
#> [552,]  81   5      0        177        0    41
#> [553,]  80  11      1          8        0   170
#> [554,]  79   4      0          4        1   183
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  81  15      0        180        1   140
#> [558,]  80   7      1          0        1   146
#> [559,]  81  20      1          9        0   170
#> [560,]  81  16      0         16        1   110
#> [561,]  81   8      0        180        0   146
#> [562,]  80   8      1          7        0   160
#> [563,]  79   7      0        177        0   197
#> [564,]  85   4      0        180        0    90
#> [565,]  81   2      1          1        0   198
#> [566,]  82   6      0        128        1   100
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  84   4      0         89        1   129
#> [576,]  80   6      0         71        1   189
#> [577,]  83   1      0          1        1   100
#> [578,]  82  19      0         19        0   120
#> [579,]  80  30      1         13        0   220
#> [580,]  83   9      0        180        0   198
#> [581,]  81  14      1         12        1   128
#> [582,]  82   0      0          2        1   100
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  82  16      1          8        0   103
#> [589,]  82   5      1          0        1   146
#> [590,]  81   4      0          4        0   160
#> [591,]  86  12      0        180        1   120
#> [592,]  83  12      1          2        1   170
#> [593,]  82  15      1          0        0   183
#> [594,]  80   2      0         88        0   135
#> [595,]  84   6      0        165        0   145
#> [596,]  86   3      0          3        1   140
#> [597,]  82   9      0        180        1   134
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  81   4      0        180        0   160
#> [601,]  83   9      0        180        1   149
#> [602,]  82   1      0        180        1   193
#> [603,]  83   4      0          4        0   130
#> [604,]  87   2      0          5        1   137
#> [605,]  82  14      1         11        1   103
#> [606,]  84  16      0         70        1   150
#> [607,]  83  19      0         43        0   150
#> [608,]  84   3      1          2        0   125
#> [609,]  86   2      0        180        1   169
#> [610,]  84   3      0          3        1   121
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  82   4      0          4        0   130
#> [614,]  85   3      0          3        1   113
#> [615,]  84  13      0         62        1   100
#> [616,]  86   6      1          1        0   112
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  85  22      0         22        1   184
#> [620,]  83   9      0         65        1   150
#> [621,]  87   2      0        180        1   130
#> [622,]  88   3      0        115        0   110
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  89   5      0        119        1   140
#> [626,]  87   1      0          1        0   170
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  84   0      0        180        1   136
#> [631,]  89  10      0         46        1   170
#> [632,]  88   1      0          1        0   135
#> [633,]  86   4      0        180        1   145
#> [634,]  91   8      0          8        0   100
#> [635,]  87   2      0        180        0   160
#> [636,]  91  10      0        145        0   135
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  88   8      0         50        1   154
#> [640,]  90  11      1         10        1   186
#> [641,]  90   4      1          0        0   121
#> [642,]  87  43      0        178        1   130
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  90  18      0        180        0   188
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  93   8      0        179        1   110
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 155.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0  180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+
#>  [71] 179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+ 166.0+  99.0 
#> [101]  16.0+ 180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 180.0+ 180.0+
#> [111] 174.0+  28.0    6.0+   1.0  180.0+   9.0+ 180.0+ 175.0+ 180.0+   2.0 
#> [121] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+  12.0+ 134.0+
#> [131]   8.0    2.0  180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+ 147.0+
#> [151] 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+
#> [171] 180.0+ 180.0+   9.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0    1.0 
#> [181] 180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0  180.0+ 180.0+
#> [191] 180.0+ 172.0+ 172.0+ 180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+
#> [201] 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0  180.0+   7.0 
#> [211]   7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+   5.0 
#> [221]  18.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+  22.0  180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+
#> [241] 180.0+  12.0  180.0+  36.0  180.0+  88.0  180.0+   0.5  180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0    2.0+ 180.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+   5.0+  13.0  180.0+
#> [271] 179.0+ 166.0+   3.0    0.5+ 180.0+ 180.0+ 180.0+   7.0+   5.0   16.0 
#> [281]   1.0  123.0+   1.0+  11.0+  79.0   80.0   15.0+ 180.0+  15.0  180.0+
#> [291] 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+
#> [301]   6.0  180.0+  19.0+ 179.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+
#> [311] 180.0+ 180.0+ 101.0  180.0+   1.0  180.0+ 171.0  180.0+   0.5  180.0+
#> [321] 180.0+  14.0+ 180.0+   7.0+   2.0  103.0    3.0+ 180.0+  36.0    5.0+
#> [331] 180.0+ 180.0+ 180.0+   8.0+   2.0+ 180.0+ 172.0+ 180.0+   8.0+  13.0+
#> [341] 180.0+  51.0   19.0    1.0    1.0   60.0   76.0   10.0+ 180.0+ 162.0 
#> [351]   7.0+   7.0+   9.0  180.0+  12.0  180.0+ 152.0  180.0+   2.0   76.0 
#> [361] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+
#> [381]   2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0    3.0   87.0 
#> [391]  12.0  180.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [401] 180.0+  10.0+ 180.0+   8.0+   1.0  180.0+ 180.0+ 159.0   15.0  180.0+
#> [411]  10.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+   1.0   57.0 
#> [421] 180.0+  11.0    3.0+   5.0   12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [431] 177.0+   5.0   11.0+   4.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+ 180.0+
#> [441] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+
#> [451]   4.0    0.5  180.0+  46.0    4.0   52.0  180.0+  12.0  180.0+ 180.0+
#> [461] 180.0+   8.0   33.0  180.0+ 180.0+ 180.0+   7.0+  79.0    3.0  180.0+
#> [471] 180.0+ 176.0+  18.0   47.0  180.0+  11.0  180.0+   7.0    7.0   32.0 
#> [481] 180.0+  10.0  180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+
#> [491]   1.0   80.0  180.0+  11.0    3.0   29.0   24.0    6.0  180.0+   3.0+
#> [501] 180.0+ 180.0+   1.0   11.0    4.0    4.0   10.0+   6.0    3.0+   2.0+
#> [511] 180.0+ 171.0   43.0    3.0    6.0  138.0  180.0+ 180.0+   8.0   17.0 
#> [521] 180.0+  93.0  118.0  173.0  180.0+  37.0  175.0+   7.0+  22.0   15.0+
#> [531]   5.0+ 180.0+   3.0  171.0+  71.0   20.0+   3.0+  85.0    6.0+ 180.0+
#> [541]   5.0  180.0+ 180.0+ 125.0  180.0+ 180.0+   4.0    6.0  180.0+ 180.0+
#> [551] 180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+  20.0   16.0 
#> [561] 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 128.0    3.0+  62.0    4.0    1.0 
#> [571]  38.0  180.0+ 180.0+ 180.0+  89.0   71.0    1.0   19.0   30.0  180.0+
#> [581] 180.0+   2.0  180.0+ 180.0+ 180.0+   1.0   12.0   16.0+   5.0+   4.0+
#> [591] 180.0+  77.0   83.0   88.0  165.0    3.0  180.0+ 180.0+ 180.0+ 180.0+
#> [601] 180.0+ 180.0+   4.0+   5.0  174.0   70.0   43.0  180.0+ 180.0+   3.0 
#> [611] 180.0+  38.0    4.0    3.0+  62.0    6.0+  20.0    4.0   22.0   65.0 
#> [621] 180.0+ 115.0    3.0+   8.0+ 119.0    1.0+ 110.0   29.0  180.0+ 180.0+
#> [631]  46.0    1.0+ 180.0+   8.0  180.0+ 145.0    3.0   24.0   50.0   11.0 
#> [641]   4.0  178.0+  36.0   89.0   75.0    3.0+   1.0   33.0  158.0  180.0+
#> [651] 168.0  169.0   52.0    7.0  180.0+ 180.0+  50.0    1.0+ 179.0+  76.0 
#> [661] 180.0+  16.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0   15.0+
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
#>   0.8292663 
```
