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
#> min 0.00325    45   2.851 0.1745       6
#> 1se 0.07675    11   3.012 0.1753       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40  12      1          9        0   153
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  15      1         13        1   125
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  41  13      1          1        0   140
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  48  15      0        180        1   160
#>  [41,]  45   3      0        150        0   130
#>  [42,]  44   3      1          0        1   180
#>  [43,]  46   7      1          2        0   166
#>  [44,]  43  29      0        180        1   180
#>  [45,]  45   4      1          0        0   124
#>  [46,]  47   6      1          0        1   116
#>  [47,]  44   0      1          0        1    96
#>  [48,]  47   4      1          3        1   160
#>  [49,]  43   3      1          0        1   124
#>  [50,]  45   8      1          0        1   117
#>  [51,]  49   5      0         73        1   136
#>  [52,]  46   2      1          1        1   122
#>  [53,]  46   6      1          0        1   100
#>  [54,]  44   9      1          8        1   135
#>  [55,]  46   4      0        180        1   121
#>  [56,]  45   9      1          0        1   145
#>  [57,]  48   3      0        180        0   154
#>  [58,]  48  12      1         11        0   200
#>  [59,]  47   5      1          3        1   130
#>  [60,]  47   9      1          6        0   170
#>  [61,]  47  10      0         10        1   140
#>  [62,]  50   1      1          0        1   129
#>  [63,]  50   4      1          1        0   125
#>  [64,]  50   6      1          2        1   140
#>  [65,]  49   7      1          7        1   110
#>  [66,]  46   3      1          1        1   140
#>  [67,]  46   9      1          9        1   122
#>  [68,]  50   7      0        180        1   110
#>  [69,]  51   1      0          1        1   145
#>  [70,]  49  15      1         11        1   160
#>  [71,]  49  23      0        179        1   112
#>  [72,]  52   2      0        180        1   170
#>  [73,]  51   3      1          2        0   113
#>  [74,]  50   1      1          0        0   150
#>  [75,]  50   9      0        180        0   130
#>  [76,]  49   7      1          4        1    90
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48   7      1          0        1   110
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  47   2      1          1        0   110
#>  [85,]  49   9      1          3        0   102
#>  [86,]  49  15      0        180        1   160
#>  [87,]  53   5      0         77        0   159
#>  [88,]  51   3      1          1        0   140
#>  [89,]  50   2      0          5        1   106
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  52  14      1          7        1   200
#>  [94,]  48   6      0        180        0   160
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  51  13      0         99        1   160
#>  [98,]  49  16      0         16        0   125
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  54   9      1          1        0   130
#> [102,]  50   5      1          4        1   150
#> [103,]  54   4      1          0        1   121
#> [104,]  52   4      0        180        0   183
#> [105,]  50   3      0        174        1   153
#> [106,]  49   6      1          0        1   130
#> [107,]  49   1      0          1        1   110
#> [108,]  50   7      1          1        0   156
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   1      0        180        0   127
#> [114,]  55   2      0          2        0   145
#> [115,]  54   1      0        180        0   162
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  55   5      1          4        1   120
#> [119,]  52   8      0        180        0   119
#> [120,]  54   3      0        180        1   180
#> [121,]  53  10      1          9        0   172
#> [122,]  52  16      1         14        0   170
#> [123,]  53  15      0         15        1    90
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  54   3      0        180        0   128
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  57   1      0          1        1   100
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  54   5      0        180        1   108
#> [140,]  55   3      1          1        1   156
#> [141,]  57   0      0          0        1   150
#> [142,]  53  21      1         13        1   130
#> [143,]  59   3      1          1        0   172
#> [144,]  57   4      0        180        1   119
#> [145,]  58   6      1          0        1    90
#> [146,]  53  15      1         10        1   130
#> [147,]  54  17      1          8        1   227
#> [148,]  55   9      1          2        1   147
#> [149,]  57   4      1          2        1   185
#> [150,]  53   7      1          0        1   120
#> [151,]  57  11      1         10        1   129
#> [152,]  55   3      1          2        0   140
#> [153,]  54   7      1          0        1   141
#> [154,]  56   4      0          4        0   164
#> [155,]  59  15      1         10        0   140
#> [156,]  55   5      1          0        0   140
#> [157,]  56   7      1          5        1   120
#> [158,]  55   2      0          2        0   106
#> [159,]  59   9      1          1        1   125
#> [160,]  60  11      1          9        0   106
#> [161,]  59   3      0        180        0   120
#> [162,]  58   4      1          0        1   160
#> [163,]  57   2      0          2        1   120
#> [164,]  58  11      1          9        1   124
#> [165,]  57  10      1          9        0   103
#> [166,]  59   6      1          0        1   140
#> [167,]  59   4      1          0        1   152
#> [168,]  60   0      1          0        1    80
#> [169,]  58  14      1          6        0   190
#> [170,]  61   4      1          3        0   151
#> [171,]  61   9      1          8        0   150
#> [172,]  61  20      1         13        0   130
#> [173,]  58  10      0         10        1   150
#> [174,]  57   4      1          3        0   138
#> [175,]  57  11      0        180        1   150
#> [176,]  61   3      0         17        0   143
#> [177,]  56  14      0         45        0   130
#> [178,]  58  19      1         13        1   140
#> [179,]  56  13      1          6        1   158
#> [180,]  56  18      1         11        1   165
#> [181,]  59   9      1          0        1    80
#> [182,]  55   4      1          3        1   160
#> [183,]  58  11      0        172        1   135
#> [184,]  60  12      1          0        1   114
#> [185,]  55   9      1          7        1   135
#> [186,]  61   4      1          0        1   115
#> [187,]  61  13      1         12        1   130
#> [188,]  57   1      0          1        0   126
#> [189,]  59   5      1          2        0   182
#> [190,]  58   5      1          1        1   135
#> [191,]  61  13      0         13        0   210
#> [192,]  58   8      1          5        0   152
#> [193,]  62  10      1          0        1   153
#> [194,]  62   7      1          2        1   180
#> [195,]  57   3      1          0        0   100
#> [196,]  61  18      0        170        0   140
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   6      0          6        0   134
#> [200,]  59  13      1          2        0   198
#> [201,]  62   4      1          0        0   160
#> [202,]  58   3      1          0        1   146
#> [203,]  62   4      1          3        0   173
#> [204,]  58   2      0         30        0   202
#> [205,]  63   6      0         28        1   120
#> [206,]  61  13      0         13        0   120
#> [207,]  57  18      1          9        1    93
#> [208,]  61   5      0          5        1   160
#> [209,]  57   2      1          1        0   159
#> [210,]  63   1      0        180        1   130
#> [211,]  61   7      0        180        0   135
#> [212,]  63   4      1          3        0   222
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  64   4      0        180        0   130
#> [216,]  63   4      1          1        0   155
#> [217,]  60  18      1         13        0   132
#> [218,]  59   8      0        180        1   140
#> [219,]  61   9      1          9        1   150
#> [220,]  58   9      1          9        0   110
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  59   4      0        180        0   196
#> [224,]  60   7      1          5        1   141
#> [225,]  60   7      0          7        0   140
#> [226,]  59   5      1          1        0   148
#> [227,]  60   7      1          1        1    90
#> [228,]  62   6      0        180        0   170
#> [229,]  61  15      1         13        0   170
#> [230,]  59   4      0          4        0   149
#> [231,]  64  10      1          9        0   160
#> [232,]  63  12      1         10        0   200
#> [233,]  60   8      0         17        1   130
#> [234,]  61   6      1          1        1   117
#> [235,]  66   1      1          0        1   120
#> [236,]  64   6      1          0        1   140
#> [237,]  63  10      1          0        1   148
#> [238,]  63  14      1          9        0   123
#> [239,]  63   4      1          3        0   162
#> [240,]  61  10      1          2        1   194
#> [241,]  63   7      0        180        0   120
#> [242,]  64   0      0          0        1    90
#> [243,]  60   6      0        180        0   130
#> [244,]  64  21      1         10        0   190
#> [245,]  61   4      0        180        1   113
#> [246,]  65   3      0        180        1   190
#> [247,]  64   7      0        180        1   120
#> [248,]  66   6      1          1        1   130
#> [249,]  62   3      1          1        1   199
#> [250,]  65   6      0          9        0   112
#> [251,]  63   5      1          4        0   170
#> [252,]  63   2      1          1        0   180
#> [253,]  62  13      1         11        0   180
#> [254,]  67  11      0         11        1   100
#> [255,]  64   2      0          2        0   201
#> [256,]  62   9      0        180        0   145
#> [257,]  63   3      1          2        0   120
#> [258,]  63   2      1          0        0   140
#> [259,]  64  19      1          8        1   160
#> [260,]  67   6      0        180        1   170
#> [261,]  65  15      1         11        1   160
#> [262,]  64  13      1         12        1   150
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  67   4      1          3        0   130
#> [266,]  66   6      1          0        1   140
#> [267,]  65   2      1          1        1   170
#> [268,]  68   1      0        180        1   166
#> [269,]  64  10      1          9        1   110
#> [270,]  67   8      1          1        1   130
#> [271,]  68   5      0          5        1    90
#> [272,]  63  10      0         16        1   160
#> [273,]  66  14      0        180        0   130
#> [274,]  68  18      0        180        1   260
#> [275,]  65  17      1         14        1   100
#> [276,]  63   8      1          1        1   162
#> [277,]  63   1      1          0        1   155
#> [278,]  63  10      0         18        1   130
#> [279,]  67  11      0         11        0   150
#> [280,]  65  15      1         12        1   150
#> [281,]  65   4      1          2        1   145
#> [282,]  69  12      0         15        1   140
#> [283,]  66  15      1         13        1   160
#> [284,]  63   2      0        180        0   150
#> [285,]  65  11      1          6        0   130
#> [286,]  69  21      1         10        0   180
#> [287,]  66   9      1          8        0   130
#> [288,]  63   8      0        180        1   120
#> [289,]  68  14      1         13        1   140
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  69   1      1          0        0   170
#> [293,]  67   7      1          4        1   130
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  65  10      1          1        1   148
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64  11      0         11        0   125
#> [304,]  64   4      0        180        1   140
#> [305,]  67   2      0         18        0   131
#> [306,]  66   7      1          5        1   131
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  65  13      1         12        1   130
#> [310,]  69  17      1         10        0   140
#> [311,]  69   8      0         93        0   140
#> [312,]  64  21      0         21        1   155
#> [313,]  65   1      0          1        1   120
#> [314,]  68  18      1          0        1   160
#> [315,]  68   4      0          4        1   190
#> [316,]  71   3      0          5        0   112
#> [317,]  70   7      1          0        1   190
#> [318,]  68   7      0        150        0   210
#> [319,]  71  20      1          0        1   160
#> [320,]  67   2      0        180        0   128
#> [321,]  66   9      1          3        1   151
#> [322,]  66   1      1          1        1   165
#> [323,]  70   4      1          0        1   180
#> [324,]  70  14      0        171        0   166
#> [325,]  66   4      0        180        0   130
#> [326,]  67  10      1          9        0   200
#> [327,]  67   6      1          4        0   130
#> [328,]  68  18      1         14        1   170
#> [329,]  69   0      0          0        1   148
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  66   2      0          2        1   228
#> [333,]  71   6      0         45        1   158
#> [334,]  71   3      0        103        0   133
#> [335,]  70  22      1         13        0   103
#> [336,]  67   5      0          5        0   130
#> [337,]  69   6      1          4        1   174
#> [338,]  72   3      1          0        1   132
#> [339,]  69   8      1          7        1   108
#> [340,]  66   2      1          1        0   123
#> [341,]  67  14      0        172        1   140
#> [342,]  69  11      1          0        1   120
#> [343,]  66   2      0        180        0   130
#> [344,]  67   7      1          4        0   122
#> [345,]  68   2      0          7        1   130
#> [346,]  69   8      1          2        0   121
#> [347,]  67  13      1          9        0   130
#> [348,]  70   9      0        180        1   142
#> [349,]  67  22      1          1        1   140
#> [350,]  69   1      0          1        1   110
#> [351,]  67   4      0         60        1   136
#> [352,]  67   8      1          0        1   130
#> [353,]  68  10      1          8        1   160
#> [354,]  66  24      1         13        0   130
#> [355,]  70  35      1          0        1   105
#> [356,]  72  30      1          0        1   145
#> [357,]  70   7      0          7        0   102
#> [358,]  68   7      1          2        0   135
#> [359,]  73  20      1          0        1   170
#> [360,]  71   6      0          9        0   120
#> [361,]  72  19      1          8        0   120
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  67   9      0        180        0   158
#> [365,]  73  13      0        152        1   130
#> [366,]  72   2      0          2        1   100
#> [367,]  67   4      1          1        0   134
#> [368,]  71   1      0        173        1   188
#> [369,]  68  23      0        180        1   220
#> [370,]  70   3      0        180        0   121
#> [371,]  69   3      0        180        0   220
#> [372,]  71   3      1          2        0   150
#> [373,]  68   4      1          3        0   210
#> [374,]  72   5      0         28        0   120
#> [375,]  68   7      0        180        1   130
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  71   2      1          0        1   180
#> [380,]  68  15      1         13        1   130
#> [381,]  70   3      0          3        1   159
#> [382,]  72   6      0        180        1   130
#> [383,]  73   0      0        180        1   161
#> [384,]  69   2      1          0        1   110
#> [385,]  71   3      1          1        0   150
#> [386,]  71  15      1         11        0   165
#> [387,]  74  20      0         20        1   180
#> [388,]  68   9      0        180        1   120
#> [389,]  74   0      1          0        1    90
#> [390,]  73   3      1          0        1   136
#> [391,]  70   5      1          0        1   190
#> [392,]  71   8      1          7        0   149
#> [393,]  71   3      1          2        1   190
#> [394,]  73  10      1          8        0   106
#> [395,]  69  12      1          1        1   149
#> [396,]  70  26      1         11        1   120
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  73   6      0        180        0   110
#> [401,]  72  15      1          0        1   150
#> [402,]  71   7      1          2        0   143
#> [403,]  72   8      1          0        1   140
#> [404,]  70   4      1          0        1   140
#> [405,]  74   7      1          0        1   117
#> [406,]  72  10      1          8        1   153
#> [407,]  70   8      0          8        0   120
#> [408,]  75   1      0          1        0   133
#> [409,]  75   2      1          1        0   145
#> [410,]  73  10      1          9        1   146
#> [411,]  72  10      1          9        1   160
#> [412,]  73  10      1         10        1   120
#> [413,]  74  15      1          9        1   179
#> [414,]  71   2      0         10        1   112
#> [415,]  73   1      0          1        1    80
#> [416,]  75   9      1          7        0   140
#> [417,]  75  13      1          1        1   130
#> [418,]  71  11      1          8        0   110
#> [419,]  72  15      1         12        1   120
#> [420,]  73  10      1          8        0   120
#> [421,]  72   1      1          1        0   168
#> [422,]  72   7      0         57        1   145
#> [423,]  73  10      0        180        0   162
#> [424,]  72  11      0         11        1   140
#> [425,]  70   3      0          3        0   150
#> [426,]  76  25      1         12        1   170
#> [427,]  75   1      0        180        1   140
#> [428,]  72   4      1          0        1   197
#> [429,]  71   3      1          0        0   144
#> [430,]  73   5      0        180        0   126
#> [431,]  73   4      0        180        0   124
#> [432,]  74  34      1          8        1   233
#> [433,]  76   3      1          0        1   120
#> [434,]  71  32      1         12        1   107
#> [435,]  72   5      0        180        0   154
#> [436,]  76   5      0          5        1   130
#> [437,]  77  11      0         11        1   150
#> [438,]  77   4      0          4        0   185
#> [439,]  75   3      1          1        0   180
#> [440,]  73  15      0         15        1   160
#> [441,]  71  16      0        180        0   140
#> [442,]  73  10      1         10        0   124
#> [443,]  74   7      0        180        1   150
#> [444,]  74   3      0          3        1   128
#> [445,]  76   8      1          0        1   141
#> [446,]  74  19      1          4        1   200
#> [447,]  73   6      0          6        1   114
#> [448,]  75  23      1         14        1   110
#> [449,]  74   2      0        180        0   190
#> [450,]  72   4      0         85        1   120
#> [451,]  73   4      1          3        1   125
#> [452,]  75   7      0          7        0   190
#> [453,]  73  13      1         11        0   195
#> [454,]  75  12      0         12        1   160
#> [455,]  76  13      1          8        1   148
#> [456,]  75   4      1          2        1   188
#> [457,]  74   6      0        180        0   160
#> [458,]  76   4      0          4        1   155
#> [459,]  73   1      0         52        1   105
#> [460,]  73   0      0        180        0   156
#> [461,]  78  12      1         11        1   160
#> [462,]  76  44      1         10        0   105
#> [463,]  76   5      0        180        0   185
#> [464,]  74   8      1          8        1   170
#> [465,]  75   9      0        180        1   140
#> [466,]  73  33      1         12        1   175
#> [467,]  77   5      1          0        0   123
#> [468,]  77  12      1          9        1   100
#> [469,]  73  10      1          9        0   146
#> [470,]  77   1      1          0        1    90
#> [471,]  76  12      1         11        1   120
#> [472,]  73   7      1          0        0   174
#> [473,]  75   3      1          1        1   171
#> [474,]  74   9      1          8        0   200
#> [475,]  75   6      0        180        0   150
#> [476,]  79  10      1          8        0   190
#> [477,]  78  18      0         18        1   144
#> [478,]  77   3      0        180        0   110
#> [479,]  76  29      0         47        0    90
#> [480,]  73  11      1          2        1   110
#> [481,]  78   7      0          7        1   133
#> [482,]  78   8      1          6        1   110
#> [483,]  76  13      1          1        1   170
#> [484,]  79   6      0        180        0   170
#> [485,]  78  13      1          5        0   130
#> [486,]  75  12      1          1        1   120
#> [487,]  80   8      0          8        1   120
#> [488,]  75  13      1          6        0   150
#> [489,]  74  10      1          8        0   135
#> [490,]  76   1      0          1        1    83
#> [491,]  78  12      1          9        0   150
#> [492,]  78   2      1          1        0   130
#> [493,]  78  10      0        180        1   130
#> [494,]  76  11      1          0        0   120
#> [495,]  75  11      1          4        0   162
#> [496,]  75   3      0          3        0     0
#> [497,]  80   9      0         23        1   128
#> [498,]  80   6      0          6        1   150
#> [499,]  76   3      1          0        1   140
#> [500,]  78  11      1          1        1   140
#> [501,]  79   2      1          0        1   121
#> [502,]  78  14      1          0        1   140
#> [503,]  81   1      0          1        0   130
#> [504,]  76   4      0          4        1   160
#> [505,]  76  10      1          8        0   180
#> [506,]  76  12      1         10        1   127
#> [507,]  75   2      1          1        1   204
#> [508,]  76   1      0          1        1   140
#> [509,]  76   1      0          1        1    90
#> [510,]  78   7      1          0        1   110
#> [511,]  79   3      0          3        0   120
#> [512,]  77   6      0          6        1   144
#> [513,]  81   1      0        180        0   120
#> [514,]  80  15      1         12        1   150
#> [515,]  77   9      1          4        0   141
#> [516,]  82   5      0          8        1   120
#> [517,]  80  40      1          0        1   138
#> [518,]  78   4      0         59        1   112
#> [519,]  80  17      1         12        0   100
#> [520,]  76   7      0        161        0   151
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  81   3      0        180        0   184
#> [527,]  81   2      0        175        0   172
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  78   4      0        180        0   175
#> [531,]  79   3      0          3        1   101
#> [532,]  78  26      1          5        0   194
#> [533,]  76   1      0        166        0   131
#> [534,]  81   4      1          1        1   104
#> [535,]  78   3      1          1        1   152
#> [536,]  82   3      1          1        1   144
#> [537,]  77   5      0         85        0   188
#> [538,]  79   6      0          6        0   152
#> [539,]  78   2      0        180        0   148
#> [540,]  79  10      0        180        1   150
#> [541,]  82  21      1          2        0   155
#> [542,]  84  22      1         10        0   180
#> [543,]  79   4      0          4        1   121
#> [544,]  82   5      0        180        0   110
#> [545,]  79   7      1          6        0   130
#> [546,]  81   5      0        177        0    41
#> [547,]  80  11      1          8        0   170
#> [548,]  78  23      1         10        1   145
#> [549,]  81  15      0        180        1   140
#> [550,]  80   7      1          0        1   146
#> [551,]  84   5      1          1        1    85
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  80   6      1          0        1   150
#> [555,]  80  11      1          8        0   110
#> [556,]  80   8      1          7        0   160
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  83   2      0          2        1   155
#> [561,]  84   4      0        167        0   198
#> [562,]  84   4      0          4        1    85
#> [563,]  81   1      0          1        1   150
#> [564,]  83   3      0        180        0   174
#> [565,]  81   4      0         90        1   138
#> [566,]  79   9      1          8        0   150
#> [567,]  85   3      1          2        1   160
#> [568,]  80  13      1          8        1   140
#> [569,]  80   2      1          0        1   130
#> [570,]  79   4      0          4        1    60
#> [571,]  80   6      0         71        1   189
#> [572,]  83   1      0          1        1   100
#> [573,]  82  19      0         19        0   120
#> [574,]  79  14      1          0        0   110
#> [575,]  83   3      0        114        0    98
#> [576,]  81  14      1         12        1   128
#> [577,]  82   0      0          2        1   100
#> [578,]  83   1      0        180        0   160
#> [579,]  81   4      0          4        0   175
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  81  12      0         12        1   163
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  83  12      1          2        1   170
#> [586,]  82  15      1          0        0   183
#> [587,]  86   8      0          8        1   132
#> [588,]  84   6      0        165        0   145
#> [589,]  82   9      0        180        1   134
#> [590,]  84   3      0        180        1   120
#> [591,]  85   3      0          3        1   118
#> [592,]  81   4      0        180        0   160
#> [593,]  83   9      0        180        1   149
#> [594,]  82   1      0        180        1   193
#> [595,]  87   2      0          5        1   137
#> [596,]  86  12      1          0        1   132
#> [597,]  82  14      1         11        1   103
#> [598,]  86   6      1          0        1   140
#> [599,]  84  16      0         70        1   150
#> [600,]  83  19      0         43        0   150
#> [601,]  83  10      1          0        1   190
#> [602,]  86   2      0        180        1   169
#> [603,]  84   3      0          3        1   121
#> [604,]  83  13      1         12        0   170
#> [605,]  84   9      0         92        1   110
#> [606,]  84   3      0        180        1   170
#> [607,]  86   4      0         38        1   122
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  84  13      0         62        1   100
#> [611,]  86   6      1          1        0   112
#> [612,]  88   4      0          4        0   100
#> [613,]  85  22      0         22        1   184
#> [614,]  83   9      0         65        1   150
#> [615,]  86   9      1          7        1   142
#> [616,]  87   2      0        180        1   130
#> [617,]  86   6      0         46        0   173
#> [618,]  88   3      0        115        0   110
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  86  15      1          8        1   109
#> [622,]  88   4      0          4        0    86
#> [623,]  89   4      0          4        1   153
#> [624,]  89   5      0        119        1   140
#> [625,]  87   6      0        180        1   110
#> [626,]  87   1      0          1        0   170
#> [627,]  84   8      0        180        1   119
#> [628,]  85   8      0          8        1   136
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  86  10      0        180        1   137
#> [644,]  90   4      1          0        0   121
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  88   3      1          2        0   159
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  91   5      0        169        1   176
#> [654,]  89  52      0         52        1   130
#> [655,]  89   4      0          4        1   159
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  91   4      1          0        1   120
#> [659,]  94   6      0         50        0    78
#> [660,]  93   8      0        179        1   110
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 115.0  180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]  73.0  161.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   1.0  179.0+
#>  [71] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   7.0   36.0   88.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+
#>  [91] 180.0+ 180.0+  85.0  180.0+ 180.0+ 166.0+  99.0   16.0+ 152.0+   7.0+
#> [101] 180.0+ 171.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0  180.0+   9.0+ 180.0+
#> [111] 180.0+ 175.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [141]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0    4.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+   2.0  180.0+ 180.0+  64.0  180.0+   0.5  171.0+ 180.0+
#> [171] 180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0   19.0  180.0+ 180.0+
#> [181]   9.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+   1.0+ 180.0+ 180.0+
#> [191]  13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0  180.0+ 169.0    6.0  180.0+
#> [201] 180.0+   3.0+ 180.0+  30.0   28.0   13.0+  18.0    5.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [221]   7.0+  22.0  180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [231] 167.0  180.0+  17.0  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+  88.0 
#> [241] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [251] 180.0+ 180.0+ 180.0+  11.0+   2.0+ 180.0+   3.0+   2.0+ 103.0  180.0+
#> [261] 180.0+  13.0  179.0+ 166.0+ 180.0+ 180.0+ 175.0+ 180.0+ 180.0+   8.0 
#> [271]   5.0   16.0  180.0+ 180.0+ 180.0+ 180.0+   1.0+  18.0   11.0+  15.0+
#> [281]   4.0+  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  175.0  180.0+ 180.0+   6.0  180.0+  12.0   99.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+  11.0+ 180.0+  18.0    7.0+ 180.0+ 152.0+ 180.0+ 180.0+
#> [311]  93.0   21.0+   1.0   18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+
#> [321] 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+   6.0  180.0+   0.5   14.0+
#> [331] 180.0+   2.0   45.0  103.0  180.0+   5.0+  97.0  180.0+   8.0+   2.0+
#> [341] 172.0+ 180.0+ 180.0+   7.0    7.0    8.0+  13.0+ 180.0+  51.0    1.0 
#> [351]  60.0  180.0+  10.0+ 180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0    9.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 152.0    2.0   76.0  173.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+ 180.0+  15.0 
#> [381]   3.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+   0.5  180.0+
#> [391] 180.0+   8.0    3.0   87.0   12.0  180.0+   4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+   8.0+   1.0  180.0+ 180.0+
#> [411] 159.0   15.0  180.0+  10.0    1.0  180.0+  13.0  180.0+ 180.0+  10.0 
#> [421]   1.0   57.0  180.0+  11.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+
#> [441] 180.0+  10.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+  85.0 
#> [451] 180.0+   7.0  180.0+  12.0  180.0+  46.0  180.0+   4.0   52.0  180.0+
#> [461]  12.0  180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+   1.0 
#> [471]  12.0    7.0+   3.0  168.0+ 180.0+ 180.0+  18.0  180.0+  47.0   11.0 
#> [481]   7.0    8.0+ 180.0+ 180.0+ 172.0   12.0    8.0  180.0+ 180.0+   1.0 
#> [491] 180.0+ 180.0+ 180.0+  11.0  152.0+   3.0   23.0    6.0    3.0+ 180.0+
#> [501] 180.0+ 180.0+   1.0    4.0   10.0+ 180.0+   2.0+   1.0    1.0   43.0 
#> [511]   3.0    6.0  180.0+ 180.0+  71.0    8.0   40.0   59.0   17.0  161.0 
#> [521]  10.0+ 180.0+  93.0  164.0  118.0  180.0+ 175.0+   7.0+  22.0  180.0+
#> [531]   3.0  171.0+ 166.0+  71.0    3.0+ 180.0+  85.0    6.0+ 180.0+ 180.0+
#> [541] 180.0+ 180.0+   4.0  180.0+ 180.0+ 177.0+ 169.0   70.0  180.0+   7.0+
#> [551] 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+   2.0 
#> [561] 167.0    4.0    1.0  180.0+  90.0  180.0+ 180.0+ 180.0+ 180.0+   4.0 
#> [571]  71.0    1.0   19.0  180.0+ 114.0  180.0+   2.0  180.0+   4.0+ 180.0+
#> [581]   1.0   12.0   16.0+   5.0+  77.0   83.0    8.0  165.0  180.0+ 180.0+
#> [591]   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0   43.0 
#> [601] 180.0+ 180.0+   3.0   13.0   92.0  180.0+  38.0    4.0  177.0   62.0 
#> [611]   6.0+   4.0+  22.0   65.0   11.0  180.0+  46.0  115.0  180.0+   3.0+
#> [621] 180.0+   4.0    4.0  119.0  180.0+   1.0+ 180.0+   8.0   29.0  180.0+
#> [631] 180.0+  46.0   14.0  180.0+   8.0  180.0+  25.0  145.0    3.0   24.0 
#> [641]  50.0   11.0  180.0+   4.0    1.0  178.0+  36.0   89.0   75.0    1.0 
#> [651]  33.0  158.0  169.0   52.0    4.0  180.0+ 180.0+   4.0   50.0  179.0+
#> [661]  76.0   16.0   67.0    8.0   26.0   53.0    7.0+   0.5   69.0  180.0+
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
#>   0.8361911 
```
