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
#> min 0.00320    45   2.766 0.08974       6
#> 1se 0.05218    15   2.852 0.09340       4
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
#>   [8,]  38  13      1          0        1   161
#>   [9,]  35   0      0        180        1   119
#>  [10,]  36   5      1          0        1   115
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  42   4      0        180        0   162
#>  [23,]  42  15      1         13        1   125
#>  [24,]  40   3      1          1        0   170
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  45   2      0        180        1   140
#>  [34,]  47   4      1          3        0   118
#>  [35,]  48  15      0        180        1   160
#>  [36,]  45   3      0        150        0   130
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  46  13      1         10        0   100
#>  [40,]  47   4      1          3        1   160
#>  [41,]  43   3      1          0        1   124
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  44   9      1          8        1   135
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   4      0        180        1   121
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  48  12      1         11        0   200
#>  [56,]  47   5      1          3        1   130
#>  [57,]  47   9      1          6        0   170
#>  [58,]  49   4      0        180        0   117
#>  [59,]  50   1      1          0        1   129
#>  [60,]  48   2      1          0        0   184
#>  [61,]  47   7      0        180        0   145
#>  [62,]  50   4      1          1        0   125
#>  [63,]  50   6      1          2        1   140
#>  [64,]  46   9      1          9        1   122
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  51   1      0          1        1   145
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  50   9      0        180        0   130
#>  [75,]  47   8      0        180        0   160
#>  [76,]  51   8      0        180        1   140
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48   7      1          0        1   110
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  47   2      1          1        0   110
#>  [85,]  52   4      1          4        0   152
#>  [86,]  49   9      1          3        0   102
#>  [87,]  49  15      0        180        1   160
#>  [88,]  53   5      0        180        1   140
#>  [89,]  53   5      0         77        0   159
#>  [90,]  51   3      1          1        0   140
#>  [91,]  50   2      0          5        1   106
#>  [92,]  53   8      1          7        0   160
#>  [93,]  48   3      1          2        0   150
#>  [94,]  51  25      1          1        0   202
#>  [95,]  52  14      1          7        1   200
#>  [96,]  48   6      0        180        0   160
#>  [97,]  48  11      1         10        0   120
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  54   9      1          1        0   130
#> [101,]  55   4      1          2        0   150
#> [102,]  52   4      0        180        1   180
#> [103,]  51  13      1         11        0   145
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
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
#> [126,]  54  12      1          0        1   190
#> [127,]  55   2      0        134        1   140
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   2      1          1        0   135
#> [131,]  52   9      1          3        0   170
#> [132,]  57   5      1          3        1   138
#> [133,]  56   4      1          0        1   140
#> [134,]  52   2      0        180        0   140
#> [135,]  55  11      1          7        0   104
#> [136,]  53   3      1          0        1   200
#> [137,]  58   8      0          8        1   130
#> [138,]  54   5      0        180        1   108
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  54  17      1          8        1   227
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  54  23      1          8        0   120
#> [145,]  57   4      1          2        1   185
#> [146,]  53   7      1          0        1   120
#> [147,]  57  11      1         10        1   129
#> [148,]  55   3      1          2        0   140
#> [149,]  54   7      1          0        1   141
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  57   1      0        180        0   148
#> [157,]  60  11      1          9        0   106
#> [158,]  59   3      0        180        0   120
#> [159,]  58   4      1          0        1   160
#> [160,]  57   2      0          2        1   120
#> [161,]  60   5      1          1        0   138
#> [162,]  57   5      0        180        1   130
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   5      0        180        1   155
#> [166,]  59   4      1          0        1   152
#> [167,]  58  26      1          0        1   189
#> [168,]  61   9      0          9        1   160
#> [169,]  58   4      1          3        0   120
#> [170,]  59   2      1          1        0   140
#> [171,]  58   8      0        161        1   140
#> [172,]  58  14      1          6        0   190
#> [173,]  61   4      1          3        0   151
#> [174,]  58   1      0          1        1   100
#> [175,]  61  20      1         13        0   130
#> [176,]  57  13      1         10        0   110
#> [177,]  57   2      1          0        1   116
#> [178,]  57   4      1          3        0   138
#> [179,]  57  11      0        180        1   150
#> [180,]  61   3      0         17        0   143
#> [181,]  56  14      0         45        0   130
#> [182,]  57   3      1          2        0   120
#> [183,]  58  19      1         13        1   140
#> [184,]  56  13      1          6        1   158
#> [185,]  56  18      1         11        1   165
#> [186,]  59   9      1          0        1    80
#> [187,]  58  11      0        172        1   135
#> [188,]  60  12      1          0        1   114
#> [189,]  55   9      1          7        1   135
#> [190,]  56   8      1          8        0   120
#> [191,]  59   5      1          2        0   182
#> [192,]  59  10      0        180        0   160
#> [193,]  58   8      1          5        0   152
#> [194,]  57   3      1          0        0   100
#> [195,]  61  18      0        170        0   140
#> [196,]  58   8      1          3        1   150
#> [197,]  57   7      0        169        0   180
#> [198,]  61   7      0          7        1   150
#> [199,]  60   7      0          7        0   147
#> [200,]  61   6      0          6        0   134
#> [201,]  59  13      1          2        0   198
#> [202,]  62   4      1          0        0   160
#> [203,]  58   3      1          0        1   146
#> [204,]  62   4      1          3        0   173
#> [205,]  59   1      0        180        0   155
#> [206,]  59  16      1          9        1   133
#> [207,]  63   6      0         28        1   120
#> [208,]  61  13      0         13        0   120
#> [209,]  61   5      0          5        1   110
#> [210,]  57  18      1          9        1    93
#> [211,]  61   5      0          5        1   160
#> [212,]  57   2      1          1        0   159
#> [213,]  62  17      1         10        1   180
#> [214,]  62   1      1          0        1   172
#> [215,]  63   1      0        180        1   130
#> [216,]  61   7      0        180        0   135
#> [217,]  63   4      1          3        0   222
#> [218,]  63   4      0        180        1   190
#> [219,]  64   4      0        180        0   130
#> [220,]  63   4      1          1        0   155
#> [221,]  61   9      1          9        1   150
#> [222,]  58   9      1          9        0   110
#> [223,]  59   4      0        180        0   196
#> [224,]  60   7      1          5        1   141
#> [225,]  60   7      0          7        0   140
#> [226,]  60   7      1          1        1    90
#> [227,]  65  13      0        180        1   100
#> [228,]  63   1      0          1        0   130
#> [229,]  61  15      1         13        0   170
#> [230,]  60   3      0          3        0   168
#> [231,]  62   6      0          6        0   120
#> [232,]  63  12      1         10        0   200
#> [233,]  59  10      0        180        1   130
#> [234,]  60   8      0         17        1   130
#> [235,]  61   6      1          1        1   117
#> [236,]  64  12      1         11        0   160
#> [237,]  64   6      1          0        1   140
#> [238,]  63  10      1          0        1   148
#> [239,]  63  14      1          9        0   123
#> [240,]  65  36      1         11        0   140
#> [241,]  66   3      1          1        0   127
#> [242,]  63   7      0        180        0   120
#> [243,]  65  10      1          8        1   120
#> [244,]  64   0      0          0        1    90
#> [245,]  64  21      1         10        0   190
#> [246,]  61   4      0        180        1   113
#> [247,]  65   3      0        180        1   190
#> [248,]  63  16      1          7        1   110
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  65   6      0          9        0   112
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  63   2      1          1        0   180
#> [255,]  64   2      0          2        0   201
#> [256,]  66  18      1          5        0   142
#> [257,]  66  16      1         11        1   169
#> [258,]  61  15      1         10        0   130
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  67   6      0        180        1   170
#> [262,]  64  13      1         12        1   150
#> [263,]  64   6      1          0        1   125
#> [264,]  66  13      1          0        0   118
#> [265,]  64  14      1         13        1   150
#> [266,]  65   3      0          3        0   105
#> [267,]  66   3      1          0        1   135
#> [268,]  65   2      1          1        1   170
#> [269,]  68   1      0        180        1   166
#> [270,]  64  10      1          9        1   110
#> [271,]  63   7      1          0        0   162
#> [272,]  68   5      0          5        1    90
#> [273,]  68  18      0        180        1   260
#> [274,]  65  17      1         14        1   100
#> [275,]  65  18      1          3        0   120
#> [276,]  63   1      1          0        1   155
#> [277,]  63  10      0         18        1   130
#> [278,]  67  11      0         11        0   150
#> [279,]  68  11      0        180        0   160
#> [280,]  68  14      0         79        0   172
#> [281,]  66  12      1         10        1   150
#> [282,]  66  11      1          0        0   100
#> [283,]  65   4      1          2        1   145
#> [284,]  69  12      0         15        1   140
#> [285,]  66  15      1         13        1   160
#> [286,]  63   2      0        180        0   150
#> [287,]  69  21      1         10        0   180
#> [288,]  69   6      0        180        1   100
#> [289,]  66   9      1          8        0   130
#> [290,]  63   8      0        180        1   120
#> [291,]  69   1      1          0        0   170
#> [292,]  67   1      0        180        1   160
#> [293,]  68  10      1         10        1   150
#> [294,]  63   2      1          0        0    99
#> [295,]  65   6      0          6        0    80
#> [296,]  65  10      1          1        1   148
#> [297,]  66  19      1         12        1   150
#> [298,]  67  12      1         12        0   160
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64   4      0        180        1   140
#> [304,]  64   0      1          0        1   118
#> [305,]  67   2      0         18        0   131
#> [306,]  66   7      1          5        1   131
#> [307,]  66   4      0        180        0   177
#> [308,]  69  17      1         10        0   140
#> [309,]  69   8      0         93        0   140
#> [310,]  64  21      0         21        1   155
#> [311,]  66   6      0        180        0   140
#> [312,]  65   1      0          1        1   120
#> [313,]  68  18      1          0        1   160
#> [314,]  65   6      0        101        1   115
#> [315,]  68   4      0          4        1   190
#> [316,]  71   3      0          5        0   112
#> [317,]  70   7      1          0        1   190
#> [318,]  68   7      0        150        0   210
#> [319,]  71  20      1          0        1   160
#> [320,]  70   4      1          0        1   180
#> [321,]  69   8      0        180        1   153
#> [322,]  70  14      0        171        0   166
#> [323,]  66   4      0        180        0   130
#> [324,]  67  10      1          9        0   200
#> [325,]  67   6      1          4        0   130
#> [326,]  68  18      1         14        1   170
#> [327,]  69   0      0          0        1   148
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  66   2      0          2        1   228
#> [333,]  71   6      0         45        1   158
#> [334,]  69   5      0          5        1   142
#> [335,]  69   3      0          3        1   130
#> [336,]  70  22      1         13        0   103
#> [337,]  67   1      0         36        1   104
#> [338,]  68   6      0        180        0   145
#> [339,]  69   6      1          4        1   174
#> [340,]  72   3      1          0        1   132
#> [341,]  72   7      0          7        1   110
#> [342,]  67   3      0        180        0   110
#> [343,]  66   2      1          1        0   123
#> [344,]  69  19      0        180        0   130
#> [345,]  66   2      0        180        0   130
#> [346,]  67   7      1          4        0   122
#> [347,]  69   4      1          3        0   132
#> [348,]  69   8      1          2        0   121
#> [349,]  67  13      1          9        0   130
#> [350,]  70   3      0        123        0   130
#> [351,]  70   9      0        180        1   142
#> [352,]  69   1      0          1        1   110
#> [353,]  67   1      0          1        1    60
#> [354,]  67   4      0         60        1   136
#> [355,]  69   5      0         76        0   120
#> [356,]  67   8      1          0        1   130
#> [357,]  72  13      1         11        1   195
#> [358,]  68  10      1          8        1   160
#> [359,]  66  24      1         13        0   130
#> [360,]  70  35      1          0        1   105
#> [361,]  72  30      1          0        1   145
#> [362,]  70   7      0          7        0   102
#> [363,]  73  20      1          0        1   170
#> [364,]  70  11      0        180        1   210
#> [365,]  72  12      1         10        0   170
#> [366,]  67   8      0        180        1   170
#> [367,]  67   9      0        180        0   158
#> [368,]  67   4      1          1        0   134
#> [369,]  71   1      0        173        1   188
#> [370,]  68  23      0        180        1   220
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  72   5      0         28        0   120
#> [374,]  69  16      1         10        1   140
#> [375,]  68   7      0        180        1   130
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  72   8      1          1        1   150
#> [380,]  71   2      1          0        1   180
#> [381,]  73   7      0          7        1   140
#> [382,]  68  15      1         13        1   130
#> [383,]  73   4      0        180        1   154
#> [384,]  69   2      1          0        1   110
#> [385,]  71   3      1          1        0   150
#> [386,]  71  15      1         11        0   165
#> [387,]  74  20      0         20        1   180
#> [388,]  68   9      0        180        1   120
#> [389,]  71  20      1         10        0   140
#> [390,]  70   5      1          0        1   190
#> [391,]  71   8      1          7        0   149
#> [392,]  71   3      1          2        1   190
#> [393,]  73  10      1          8        0   106
#> [394,]  70  26      1         11        1   120
#> [395,]  74   4      0          4        0   120
#> [396,]  73   4      0         58        1   160
#> [397,]  72   5      1          3        1   160
#> [398,]  73   6      0        180        0   110
#> [399,]  72  15      1          0        1   150
#> [400,]  71   7      1          2        0   143
#> [401,]  73  17      1         11        0   140
#> [402,]  71  13      1          8        0   121
#> [403,]  69   2      1          1        1    80
#> [404,]  70   4      1          0        1   140
#> [405,]  72  10      1          8        1   153
#> [406,]  69   7      0        180        1   144
#> [407,]  70   8      0          8        0   120
#> [408,]  75   1      0          1        0   133
#> [409,]  75   2      1          1        0   145
#> [410,]  73  10      1          9        1   146
#> [411,]  72  10      1          9        1   160
#> [412,]  73  10      1         10        1   120
#> [413,]  74  15      1          9        1   179
#> [414,]  73   1      0          1        1    80
#> [415,]  75   9      1          7        0   140
#> [416,]  71  11      1          8        0   110
#> [417,]  70   7      1          4        0   184
#> [418,]  72   7      0         57        1   145
#> [419,]  73  10      0        180        0   162
#> [420,]  72  11      0         11        1   140
#> [421,]  73   5      1          3        1   112
#> [422,]  76  25      1         12        1   170
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  73   5      0        180        0   126
#> [426,]  73   4      0        180        0   124
#> [427,]  74  34      1          8        1   233
#> [428,]  76   3      1          0        1   120
#> [429,]  76   5      0          5        1   130
#> [430,]  77  11      0         11        1   150
#> [431,]  77   4      0          4        0   185
#> [432,]  73  15      0         15        1   160
#> [433,]  73  10      1         10        0   124
#> [434,]  76   1      0        180        0   114
#> [435,]  74   2      1          1        0   140
#> [436,]  76   8      1          0        1   141
#> [437,]  74  19      1          4        1   200
#> [438,]  75  23      1         14        1   110
#> [439,]  74   2      0        180        0   190
#> [440,]  72   4      0         85        1   120
#> [441,]  76  17      1          0        1   200
#> [442,]  73   4      1          3        1   125
#> [443,]  76  13      1         10        0   110
#> [444,]  75   4      1          0        1   122
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  76   4      0          4        1   155
#> [449,]  74   2      0        180        0   111
#> [450,]  73   1      0         52        1   105
#> [451,]  72   5      0        180        0   120
#> [452,]  76  44      1         10        0   105
#> [453,]  76   5      0        180        0   185
#> [454,]  76   5      1          0        1   167
#> [455,]  74   8      1          8        1   170
#> [456,]  75   9      0        180        1   140
#> [457,]  77  12      1          9        1   100
#> [458,]  73  10      1          9        0   146
#> [459,]  77  12      0        180        0   130
#> [460,]  73   7      1          0        0   174
#> [461,]  74   6      0         79        1   140
#> [462,]  75   3      1          1        1   171
#> [463,]  75   6      0        180        0   150
#> [464,]  79  10      1          8        0   190
#> [465,]  78  18      0         18        1   144
#> [466,]  76  29      0         47        0    90
#> [467,]  73   8      1          1        1   162
#> [468,]  74   2      0        180        0   100
#> [469,]  78   7      0          7        1   133
#> [470,]  74  15      0        180        1   172
#> [471,]  78   8      1          6        1   110
#> [472,]  74   7      0          7        0   161
#> [473,]  78  32      1          9        1   198
#> [474,]  79   6      0        180        0   170
#> [475,]  80  10      1          6        1   147
#> [476,]  78  13      1          5        0   130
#> [477,]  78  15      0        180        1   270
#> [478,]  80   8      0          8        1   120
#> [479,]  75  13      1          6        0   150
#> [480,]  76   1      0          1        1    83
#> [481,]  79   4      0         80        0   145
#> [482,]  78  12      1          9        0   150
#> [483,]  78   2      1          1        0   130
#> [484,]  75   4      1          0        0   212
#> [485,]  78  10      0        180        1   130
#> [486,]  76  11      1          0        0   120
#> [487,]  76   7      0         29        1   150
#> [488,]  79   8      0         32        1   120
#> [489,]  80   6      0          6        1   150
#> [490,]  78   6      1          0        1   240
#> [491,]  78  11      1          1        1   140
#> [492,]  79   2      1          0        1   121
#> [493,]  78  14      1          0        1   140
#> [494,]  78  11      1          8        1   118
#> [495,]  76   4      0          4        1   160
#> [496,]  76  12      1         10        1   127
#> [497,]  77   6      0          6        1   107
#> [498,]  80   3      1          0        1   120
#> [499,]  75   2      1          1        1   204
#> [500,]  78  11      0        180        1   135
#> [501,]  77  31      1          3        1   161
#> [502,]  76   1      0          1        1    90
#> [503,]  77   7      0        180        1   170
#> [504,]  77   6      0          6        1   144
#> [505,]  81   1      0        180        0   120
#> [506,]  80  15      1         12        1   150
#> [507,]  77   9      1          4        0   141
#> [508,]  80  40      1          0        1   138
#> [509,]  80  17      1         12        0   100
#> [510,]  79  10      0         10        1   120
#> [511,]  81   4      1          2        1   126
#> [512,]  79  28      0        164        0   100
#> [513,]  80   9      0        118        1   186
#> [514,]  79   1      0         37        1   140
#> [515,]  77  13      1          0        1   190
#> [516,]  78  15      0         15        0   165
#> [517,]  80   5      1          1        1   108
#> [518,]  78   4      0        180        0   175
#> [519,]  79   3      0          3        1   101
#> [520,]  78  26      1          5        0   194
#> [521,]  76   1      0        166        0   131
#> [522,]  81   4      1          1        1   104
#> [523,]  80   1      0          1        0   100
#> [524,]  78   3      1          1        1   152
#> [525,]  79   6      0          6        0   152
#> [526,]  80   6      1          0        1   119
#> [527,]  78   2      0        180        0   148
#> [528,]  82   1      1          0        1    82
#> [529,]  79  10      0        180        1   150
#> [530,]  77   4      0        180        1    98
#> [531,]  81   1      0        108        0   129
#> [532,]  78  12      0        180        0   134
#> [533,]  79   1      0        125        0   193
#> [534,]  82  21      1          2        0   155
#> [535,]  84  22      1         10        0   180
#> [536,]  79   4      0          4        1   121
#> [537,]  83   9      1          5        1   170
#> [538,]  82   5      0        180        0   110
#> [539,]  83   5      0        180        0   148
#> [540,]  79   7      1          6        0   130
#> [541,]  81  11      1          8        0   160
#> [542,]  81   5      0        177        0    41
#> [543,]  78  23      1         10        1   145
#> [544,]  79   4      0          4        1   183
#> [545,]  78   9      1          4        1   120
#> [546,]  82   8      1          1        0   128
#> [547,]  79   1      0        180        1   170
#> [548,]  81  15      0        180        1   140
#> [549,]  80   7      1          0        1   146
#> [550,]  84   5      1          1        1    85
#> [551,]  81  20      1          9        0   170
#> [552,]  83   8      0          8        0   115
#> [553,]  81  16      0         16        1   110
#> [554,]  80  11      1          8        0   110
#> [555,]  81   8      0        180        0   146
#> [556,]  85   4      0        180        0    90
#> [557,]  83   2      0          2        1   155
#> [558,]  82   6      0        128        1   100
#> [559,]  84   4      0        167        0   198
#> [560,]  82  23      1          0        0   110
#> [561,]  84   4      0          4        1    85
#> [562,]  81   1      0          1        1   150
#> [563,]  84   1      0         38        1   205
#> [564,]  83   3      0        180        0   174
#> [565,]  81   4      0         90        1   138
#> [566,]  85   3      1          2        1   160
#> [567,]  80  13      1          8        1   140
#> [568,]  84   4      0         89        1   129
#> [569,]  80   2      1          0        1   130
#> [570,]  79   4      0          4        1    60
#> [571,]  80   6      0         71        1   189
#> [572,]  83   1      0          1        1   100
#> [573,]  83   9      0        180        0   198
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  83   1      0        180        0   160
#> [577,]  81   4      0          4        0   175
#> [578,]  84  15      1         13        1   110
#> [579,]  81  12      0         12        1   163
#> [580,]  82   5      1          0        1   146
#> [581,]  81   4      0          4        0   160
#> [582,]  86  12      0        180        1   120
#> [583,]  83  12      1          2        1   170
#> [584,]  82   3      1          2        0   130
#> [585,]  82  15      1          0        0   183
#> [586,]  80   2      0         88        0   135
#> [587,]  86   8      0          8        1   132
#> [588,]  81  16      1          9        0   180
#> [589,]  84   6      0        165        0   145
#> [590,]  86   3      0          3        1   140
#> [591,]  82   9      0        180        1   134
#> [592,]  84   3      0        180        1   120
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  81   4      0        180        0   160
#> [596,]  83   9      0        180        1   149
#> [597,]  83   4      0          4        0   130
#> [598,]  86  12      1          0        1   132
#> [599,]  82  14      1         11        1   103
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  88  14      1          3        1   130
#> [606,]  83  13      1         12        0   170
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  82   4      0          4        0   130
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  86   6      1          1        0   112
#> [613,]  88   4      0          4        0   100
#> [614,]  88   4      0          4        1   115
#> [615,]  83   9      0         65        1   150
#> [616,]  87   2      0        180        1   130
#> [617,]  86   6      0         46        0   173
#> [618,]  88   3      0        115        0   110
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  89   4      0          4        1   153
#> [624,]  87   1      0          1        0   170
#> [625,]  85   8      0          8        1   136
#> [626,]  84   2      0        110        1   174
#> [627,]  87  29      0         29        1    97
#> [628,]  87  15      1          9        1   138
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  87   2      0        180        0   160
#> [633,]  88   8      0         50        1   154
#> [634,]  90  11      1         10        1   186
#> [635,]  87   6      0        126        1   168
#> [636,]  86  10      0        180        1   137
#> [637,]  86   9      1          7        0   130
#> [638,]  90   4      1          0        0   121
#> [639,]  91   1      0          1        1    74
#> [640,]  87   5      0         36        1   150
#> [641,]  88   3      1          2        0   159
#> [642,]  89   3      1          1        1   160
#> [643,]  92   1      0          1        1   167
#> [644,]  91   3      0         33        1   137
#> [645,]  88   5      0        158        0   100
#> [646,]  87   7      0         74        1   105
#> [647,]  89  12      1          0        1   130
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  92   7      0          7        1   110
#> [652,]  89   4      0          4        1   159
#> [653,]  91   0      0          0        0     0
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  91   2      0          2        1   116
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    1.0  180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+
#>  [91]   5.0  180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+   7.0+   6.0+ 180.0+
#> [101] 180.0+ 180.0+  13.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0    9.0+ 180.0+
#> [111] 180.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  15.0+ 180.0+ 180.0+  12.0+ 134.0+   2.0    3.0+ 180.0+
#> [131] 180.0+ 140.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5 
#> [141] 171.0+  15.0  166.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [151] 180.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+
#> [171] 161.0+ 171.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0 
#> [181]  45.0    3.0+  19.0  180.0+ 180.0+   9.0+ 172.0+ 172.0+  24.0    8.0 
#> [191] 180.0+ 180.0+   8.0+ 180.0+ 170.0  180.0+ 169.0    7.0    7.0+   6.0 
#> [201] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0   18.0 
#> [211]   5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 180.0+   9.0  180.0+  84.0    7.0+ 180.0+ 180.0+   1.0  180.0+   3.0+
#> [231]   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0 
#> [241]   3.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [251]   9.0    3.0  180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+   2.0+ 103.0 
#> [261] 180.0+  13.0  180.0+ 166.0+  14.0+   3.0    3.0+ 175.0+ 180.0+ 180.0+
#> [271]   7.0+   5.0  180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0 
#> [281]  80.0  180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+
#> [291] 175.0  180.0+  10.0  180.0+   6.0  180.0+  19.0+  12.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+  93.0   21.0+
#> [311] 180.0+   1.0   18.0+ 101.0    4.0    5.0    7.0+ 150.0  180.0+ 180.0+
#> [321] 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+  14.0+
#> [331] 180.0+   2.0   45.0    5.0+   3.0+ 180.0+  36.0  180.0+  97.0  180.0+
#> [341]   7.0  180.0+   2.0+ 180.0+ 180.0+   7.0  180.0+   8.0+  13.0+ 123.0 
#> [351] 180.0+   1.0    1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+
#> [361] 162.0    7.0+ 124.0  180.0+  12.0  180.0+ 180.0+  76.0  173.0+ 180.0+
#> [371] 180.0+ 180.0+  28.0   16.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]   7.0+  15.0  180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0  180.0+
#> [391]   8.0    3.0   87.0  180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+
#> [401] 180.0+ 175.0    2.0  180.0+  10.0+ 180.0+   8.0+   1.0  180.0+ 180.0+
#> [411] 159.0   15.0  180.0+   1.0  180.0+ 180.0+ 104.0+  57.0  180.0+  11.0 
#> [421]   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+  34.0  180.0+   5.0   11.0+
#> [431]   4.0+  15.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0 
#> [441]  17.0+ 180.0+ 174.0+   4.0  180.0+  46.0  180.0+   4.0  180.0+  52.0 
#> [451] 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [461]  79.0    3.0  180.0+ 180.0+  18.0   47.0  180.0+ 180.0+   7.0  180.0+
#> [471]   8.0+   7.0   32.0  180.0+  10.0  172.0  180.0+   8.0  180.0+   1.0 
#> [481]  80.0  180.0+ 180.0+   4.0+ 180.0+  11.0   29.0   32.0    6.0  180.0+
#> [491] 180.0+ 180.0+ 180.0+  11.0    4.0  180.0+   6.0    3.0+   2.0+ 180.0+
#> [501] 171.0    1.0  180.0+   6.0  180.0+ 180.0+  71.0   40.0   17.0   10.0+
#> [511]  93.0  164.0  118.0   37.0   22.0   15.0+   5.0+ 180.0+   3.0  171.0+
#> [521] 166.0+  71.0    1.0    3.0+   6.0+   6.0  180.0+   1.0  180.0+ 180.0+
#> [531] 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    9.0+ 180.0+ 180.0+ 180.0+
#> [541] 180.0+ 177.0+  70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [551]  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+   2.0  128.0  167.0   62.0 
#> [561]   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0  180.0+   4.0 
#> [571]  71.0    1.0  180.0+ 114.0  180.0+ 180.0+   4.0+ 180.0+  12.0    5.0+
#> [581]   4.0+ 180.0+  77.0    3.0   83.0   88.0    8.0  180.0+ 165.0    3.0 
#> [591] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+ 180.0+ 174.0    6.0 
#> [601]  70.0  180.0+ 180.0+ 180.0+  14.0   13.0   92.0  180.0+   4.0    3.0+
#> [611]   6.0+   6.0+   4.0+   4.0   65.0  180.0+  46.0  115.0  180.0+   3.0+
#> [621]   8.0+ 180.0+   4.0    1.0+   8.0  110.0   29.0  180.0+  46.0   14.0 
#> [631]   1.0+ 180.0+  50.0   11.0  126.0  180.0+ 180.0+   4.0    1.0   36.0 
#> [641]  75.0    3.0+   1.0   33.0  158.0   74.0  180.0+ 168.0  169.0   52.0 
#> [651]   7.0    4.0    0.5  180.0+   4.0  180.0+  50.0    2.0    8.0+  76.0 
#> [661] 180.0+  16.0   67.0   12.0    8.0    0.5   69.0  180.0+   3.0   15.0+
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
#>   0.8175083 
```
