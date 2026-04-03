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
#> min 0.00326    44   2.769 0.1552       6
#> 1se 0.07033    11   2.908 0.1591       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40  11      1         10        1   120
#>  [18,]  43   3      1          0        1   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42   2      0        180        1   124
#>  [24,]  41  10      1          8        0   150
#>  [25,]  44   3      0        180        0   141
#>  [26,]  45   9      1          7        0   110
#>  [27,]  45   6      0        180        1   170
#>  [28,]  44   2      1          1        1   150
#>  [29,]  43   2      0        180        1   140
#>  [30,]  45   2      0        180        1   140
#>  [31,]  46  15      0        180        0   120
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  43  10      0        180        0   185
#>  [38,]  46  13      1         10        0   100
#>  [39,]  43   3      1          0        1   124
#>  [40,]  45   8      1          0        1   117
#>  [41,]  45   5      0          5        0   141
#>  [42,]  46   2      1          1        1   122
#>  [43,]  46   6      1          0        1   100
#>  [44,]  44   4      1          0        1   114
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  47   3      1          1        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47   9      1          6        0   170
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  50   4      1          1        0   125
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   9      1          9        1   122
#>  [59,]  49   2      0          2        0   105
#>  [60,]  51   1      0          1        1   145
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   1      1          0        0   150
#>  [66,]  50   9      0        180        0   130
#>  [67,]  49   7      1          4        1    90
#>  [68,]  47   6      0        180        1   162
#>  [69,]  53   8      0         36        1   160
#>  [70,]  48  17      1         10        0   111
#>  [71,]  47   2      1          1        0   110
#>  [72,]  52   4      1          4        0   152
#>  [73,]  49  15      0        180        1   160
#>  [74,]  53   5      0        180        1   140
#>  [75,]  54  17      1         12        1   102
#>  [76,]  53   5      0         77        0   159
#>  [77,]  54   6      1          3        0   129
#>  [78,]  51   3      1          1        0   140
#>  [79,]  50   2      0          5        1   106
#>  [80,]  50  14      1         13        0   170
#>  [81,]  53   8      1          7        0   160
#>  [82,]  51  25      1          1        0   202
#>  [83,]  49   5      1          2        1   150
#>  [84,]  53   4      0          4        0   140
#>  [85,]  52  14      1          7        1   200
#>  [86,]  48   6      0        180        0   160
#>  [87,]  48  11      1         10        0   120
#>  [88,]  53   4      1          0        1   156
#>  [89,]  54   9      1          0        1   138
#>  [90,]  49  16      0         16        0   125
#>  [91,]  55   3      1          1        0   150
#>  [92,]  54  23      1         10        0   131
#>  [93,]  52   7      1          2        0   154
#>  [94,]  55   6      1          2        1   114
#>  [95,]  55   4      1          2        0   150
#>  [96,]  52   4      0        180        1   180
#>  [97,]  51  13      1         11        0   145
#>  [98,]  50   5      1          4        1   150
#>  [99,]  52   4      0        180        0   183
#> [100,]  49   1      0          1        1   110
#> [101,]  50   7      1          1        0   156
#> [102,]  53   9      0          9        1    95
#> [103,]  53   8      1          0        1   130
#> [104,]  50   7      1          0        1   127
#> [105,]  56   4      1          1        1   130
#> [106,]  52   5      0        175        1   117
#> [107,]  55   1      0        180        0   127
#> [108,]  54   1      0        180        0   162
#> [109,]  54   7      1          0        1   100
#> [110,]  56   3      0        180        1   193
#> [111,]  56   2      0        180        0   132
#> [112,]  55   5      1          4        1   120
#> [113,]  52   8      0        180        0   119
#> [114,]  54   3      0        180        1   180
#> [115,]  55   6      0        180        0   170
#> [116,]  52  16      0         16        0   152
#> [117,]  53  10      1          9        0   172
#> [118,]  52  16      1         14        0   170
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      0        180        1   100
#> [121,]  55   2      0        134        1   140
#> [122,]  57   3      0          3        0   120
#> [123,]  54   7      1          2        0   129
#> [124,]  54   2      1          1        0   135
#> [125,]  57   5      1          3        1   138
#> [126,]  57   1      0        180        1   156
#> [127,]  57   1      0          1        1   100
#> [128,]  56   4      1          0        1   140
#> [129,]  52   2      0        180        0   140
#> [130,]  55  11      1          7        0   104
#> [131,]  56  14      1         11        0   130
#> [132,]  57  10      0        180        1   170
#> [133,]  58   8      0          8        1   130
#> [134,]  54   5      0        180        1   108
#> [135,]  53  21      1         13        1   130
#> [136,]  58   6      1          0        1    90
#> [137,]  55   9      1          2        1   147
#> [138,]  56   5      0          5        1   150
#> [139,]  54  23      1          8        0   120
#> [140,]  57   4      1          2        1   185
#> [141,]  57  11      1         10        1   129
#> [142,]  55   3      1          2        0   140
#> [143,]  55   5      0          5        1   131
#> [144,]  56   4      0          4        0   164
#> [145,]  59  15      1         10        0   140
#> [146,]  58   9      1          0        1   180
#> [147,]  55   5      1          0        0   140
#> [148,]  56   7      1          5        1   120
#> [149,]  57   1      0        180        0   148
#> [150,]  60  11      1          9        0   106
#> [151,]  57   2      0          2        1   120
#> [152,]  55   5      1          0        1   160
#> [153,]  57  10      1          9        0   103
#> [154,]  59   6      1          0        1   140
#> [155,]  59   4      1          0        1   152
#> [156,]  58  26      1          0        1   189
#> [157,]  58   4      1          3        0   120
#> [158,]  60   0      1          0        1    80
#> [159,]  58   8      0        161        1   140
#> [160,]  58  14      1          6        0   190
#> [161,]  61   4      1          3        0   151
#> [162,]  58   1      0          1        1   100
#> [163,]  61  20      1         13        0   130
#> [164,]  57  13      1         10        0   110
#> [165,]  57  11      0        180        1   150
#> [166,]  61   3      0         17        0   143
#> [167,]  56  14      0         45        0   130
#> [168,]  57   3      1          2        0   120
#> [169,]  58  19      1         13        1   140
#> [170,]  56  13      1          6        1   158
#> [171,]  56  18      1         11        1   165
#> [172,]  59   9      1          0        1    80
#> [173,]  55   4      1          3        1   160
#> [174,]  58  11      0        172        1   135
#> [175,]  55   9      1          7        1   135
#> [176,]  61   4      1          0        1   115
#> [177,]  61  13      1         12        1   130
#> [178,]  59  11      1          8        1   190
#> [179,]  57   1      0          1        0   126
#> [180,]  59   5      1          2        0   182
#> [181,]  59  10      0        180        0   160
#> [182,]  61   8      0         77        0   120
#> [183,]  61  13      0         13        0   210
#> [184,]  58   8      1          5        0   152
#> [185,]  62   7      1          2        1   180
#> [186,]  57   3      1          0        0   100
#> [187,]  61  18      0        170        0   140
#> [188,]  61  28      1          7        0   133
#> [189,]  58   8      1          3        1   150
#> [190,]  57   7      0        169        0   180
#> [191,]  61   7      0          7        1   150
#> [192,]  60   7      0          7        0   147
#> [193,]  57  12      1          9        1   120
#> [194,]  60  17      1          8        1   140
#> [195,]  58   3      1          0        1   146
#> [196,]  62   4      1          3        0   173
#> [197,]  59   1      0        180        0   155
#> [198,]  59  16      1          9        1   133
#> [199,]  63   6      0         28        1   120
#> [200,]  61   5      0          5        1   110
#> [201,]  57  18      1          9        1    93
#> [202,]  61   5      0          5        1   160
#> [203,]  57   2      1          1        0   159
#> [204,]  58   7      0        180        1   150
#> [205,]  63   3      1          1        0   180
#> [206,]  63   1      0        180        1   130
#> [207,]  61   7      0        180        0   135
#> [208,]  63   4      1          3        0   222
#> [209,]  63  15      1         10        1   126
#> [210,]  64   4      0        180        0   130
#> [211,]  63   4      1          1        0   155
#> [212,]  60  18      1         13        0   132
#> [213,]  59   8      0        180        1   140
#> [214,]  61   9      1          9        1   150
#> [215,]  58   9      1          9        0   110
#> [216,]  58   2      0        180        0   127
#> [217,]  59   4      0        180        0   196
#> [218,]  60   7      1          5        1   141
#> [219,]  60   7      0          7        0   140
#> [220,]  59   5      1          1        0   148
#> [221,]  63   1      0          1        0   162
#> [222,]  63   1      0          1        0   130
#> [223,]  62   6      0        180        0   170
#> [224,]  61  15      1         13        0   170
#> [225,]  59   4      0          4        0   149
#> [226,]  64  10      1          9        0   160
#> [227,]  62   6      0          6        0   120
#> [228,]  59  10      0        180        1   130
#> [229,]  60   8      0         17        1   130
#> [230,]  61   6      1          1        1   117
#> [231,]  64  12      1         11        0   160
#> [232,]  66   1      1          0        1   120
#> [233,]  63  14      1          9        0   123
#> [234,]  65  36      1         11        0   140
#> [235,]  63   4      1          3        0   162
#> [236,]  61  10      1          2        1   194
#> [237,]  64  32      1          9        1   160
#> [238,]  63  12      1          9        0   114
#> [239,]  63   7      0        180        0   120
#> [240,]  66   5      1          0        1   110
#> [241,]  65   8      1          0        0   168
#> [242,]  65  10      1          8        1   120
#> [243,]  64   0      0          0        1    90
#> [244,]  60   6      0        180        0   130
#> [245,]  64  21      1         10        0   190
#> [246,]  64   9      0        180        0   150
#> [247,]  61   4      0        180        1   113
#> [248,]  64   7      0        180        1   120
#> [249,]  66   6      1          1        1   130
#> [250,]  65   6      0          9        0   112
#> [251,]  65   3      1          0        1    80
#> [252,]  63   5      1          4        0   170
#> [253,]  67  11      0         11        1   100
#> [254,]  66  18      1          5        0   142
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  61  15      1         10        0   130
#> [258,]  63   9      1          8        1   160
#> [259,]  63   3      1          2        0   120
#> [260,]  63   2      1          0        0   140
#> [261,]  64  19      1          8        1   160
#> [262,]  65  15      1         11        1   160
#> [263,]  64  13      1         12        1   150
#> [264,]  66   7      1          0        1   115
#> [265,]  66  13      1          0        0   118
#> [266,]  64  14      1         13        1   150
#> [267,]  65   3      0          3        0   105
#> [268,]  64   0      0          0        1   148
#> [269,]  67   4      1          3        0   130
#> [270,]  66   3      1          0        1   135
#> [271,]  66   6      1          0        1   140
#> [272,]  65   2      1          1        1   170
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  63   1      1          0        1   155
#> [277,]  67  11      0         11        0   150
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65   4      1          2        1   145
#> [281,]  69  12      0         15        1   140
#> [282,]  66  15      1         13        1   160
#> [283,]  63   2      0        180        0   150
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  69   6      0        180        1   100
#> [287,]  63   8      0        180        1   120
#> [288,]  68  14      1         13        1   140
#> [289,]  65   8      1          0        1    90
#> [290,]  66   3      0          3        1   138
#> [291,]  69   1      1          0        0   170
#> [292,]  68  10      1         10        1   150
#> [293,]  67   7      1          4        1   130
#> [294,]  63   2      1          0        0    99
#> [295,]  69   6      0         99        1   140
#> [296,]  65   4      1          1        0   130
#> [297,]  64   4      0        179        0   160
#> [298,]  66   4      0        180        1   130
#> [299,]  64  11      0         11        0   125
#> [300,]  64   4      0        180        1   140
#> [301,]  64   0      1          0        1   118
#> [302,]  66   7      1          5        1   131
#> [303,]  66   4      0        180        0   177
#> [304,]  68   4      1          0        1   160
#> [305,]  69  17      1         10        0   140
#> [306,]  64  21      0         21        1   155
#> [307,]  65   1      0          1        1   120
#> [308,]  68  18      1          0        1   160
#> [309,]  65   6      0        101        1   115
#> [310,]  68   4      0          4        1   190
#> [311,]  71   3      0          5        0   112
#> [312,]  70   7      1          0        1   190
#> [313,]  68   7      0        150        0   210
#> [314,]  71  20      1          0        1   160
#> [315,]  66   9      1          3        1   151
#> [316,]  69   8      0        180        1   153
#> [317,]  66   4      0        180        0   130
#> [318,]  67  10      1          9        0   200
#> [319,]  67   6      1          4        0   130
#> [320,]  68  18      1         14        1   170
#> [321,]  65   2      0        180        0   130
#> [322,]  68   7      1          0        1   150
#> [323,]  65  14      1         13        1   150
#> [324,]  69   8      0        180        1   180
#> [325,]  71   7      0          7        0   230
#> [326,]  66   2      0          2        1   228
#> [327,]  69   5      0          5        1   142
#> [328,]  71   3      0        103        0   133
#> [329,]  70  22      1         13        0   103
#> [330,]  67   1      0         36        1   104
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  69   8      1          5        1   195
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67  14      0        172        1   140
#> [338,]  69  11      1          0        1   120
#> [339,]  66   2      0        180        0   130
#> [340,]  67   7      1          4        0   122
#> [341,]  69   4      1          3        0   132
#> [342,]  68   2      0          7        1   130
#> [343,]  69   8      1          2        0   121
#> [344,]  70   3      0        123        0   130
#> [345,]  68   3      0         19        0   135
#> [346,]  67  12      1          8        0   120
#> [347,]  69   1      0          1        1   110
#> [348,]  67   1      0          1        1    60
#> [349,]  67   4      0         60        1   136
#> [350,]  69   5      0         76        0   120
#> [351,]  67   8      1          0        1   130
#> [352,]  68  10      1          8        1   160
#> [353,]  66  24      1         13        0   130
#> [354,]  70  35      1          0        1   105
#> [355,]  70   7      0          7        0   102
#> [356,]  68   7      1          2        0   135
#> [357,]  73  20      1          0        1   170
#> [358,]  71   6      0          9        0   120
#> [359,]  69  10      1          6        1   120
#> [360,]  70  11      0        180        1   210
#> [361,]  72  12      1         10        0   170
#> [362,]  67   8      0        180        1   170
#> [363,]  67   9      0        180        0   158
#> [364,]  73  13      0        152        1   130
#> [365,]  72   2      0          2        1   100
#> [366,]  71   1      0        173        1   188
#> [367,]  68  23      0        180        1   220
#> [368,]  70   3      0        180        0   121
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69   8      1          1        0   164
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  73   7      0          7        1   140
#> [377,]  68  15      1         13        1   130
#> [378,]  70  13      1          9        0   100
#> [379,]  72   6      0        180        1   130
#> [380,]  73   0      0        180        1   161
#> [381,]  74   8      1          0        1    85
#> [382,]  74  20      0         20        1   180
#> [383,]  68   9      0        180        1   120
#> [384,]  71  20      1         10        0   140
#> [385,]  74   0      1          0        1    90
#> [386,]  73   3      1          0        1   136
#> [387,]  71  17      1         11        0   160
#> [388,]  71   8      1          7        0   149
#> [389,]  71   3      1          2        1   190
#> [390,]  73  10      1          8        0   106
#> [391,]  69  12      1          1        1   149
#> [392,]  70  26      1         11        1   120
#> [393,]  74   4      0          4        0   120
#> [394,]  70   3      0        180        1   154
#> [395,]  73   6      0        180        0   110
#> [396,]  71   7      1          2        0   143
#> [397,]  72   8      1          0        1   140
#> [398,]  74   3      0          3        1   150
#> [399,]  73  17      1         11        0   140
#> [400,]  71  13      1          8        0   121
#> [401,]  69   2      1          1        1    80
#> [402,]  71  14      1         13        1   170
#> [403,]  72  10      1          8        1   153
#> [404,]  69   7      0        180        1   144
#> [405,]  70   8      0          8        0   120
#> [406,]  75   1      0          1        0   133
#> [407,]  75   2      1          1        0   145
#> [408,]  73  10      1          9        1   146
#> [409,]  73  10      1         10        1   120
#> [410,]  74  15      1          9        1   179
#> [411,]  73   1      0          1        1    80
#> [412,]  75   9      1          7        0   140
#> [413,]  71  11      1          8        0   110
#> [414,]  71   4      0          4        0   134
#> [415,]  73  10      1          8        0   120
#> [416,]  73  10      0        180        0   162
#> [417,]  72  11      0         11        1   140
#> [418,]  76  25      1         12        1   170
#> [419,]  73  12      1         12        1   140
#> [420,]  72   2      0        180        0   120
#> [421,]  75   1      0        180        1   140
#> [422,]  72   4      1          0        1   197
#> [423,]  71   3      1          0        0   144
#> [424,]  73   5      0        180        0   126
#> [425,]  76   3      1          0        1   120
#> [426,]  71  32      1         12        1   107
#> [427,]  72   5      0        180        0   154
#> [428,]  77  11      0         11        1   150
#> [429,]  77   4      0          4        0   185
#> [430,]  75   3      1          1        0   180
#> [431,]  71  16      0        180        0   140
#> [432,]  74   3      0          3        1   128
#> [433,]  74   2      1          1        0   140
#> [434,]  76   8      1          0        1   141
#> [435,]  74  19      1          4        1   200
#> [436,]  73   6      0          6        1   114
#> [437,]  75  23      1         14        1   110
#> [438,]  74   2      0        180        0   190
#> [439,]  72   4      0         85        1   120
#> [440,]  73   4      1          3        1   125
#> [441,]  76  13      1         10        0   110
#> [442,]  75   0      0          0        1   130
#> [443,]  73  13      1         11        0   195
#> [444,]  75  12      0         12        1   160
#> [445,]  74   8      1          0        1   105
#> [446,]  75   1      0          1        1   125
#> [447,]  74   2      0        180        0   111
#> [448,]  73   1      0         52        1   105
#> [449,]  73   0      0        180        0   156
#> [450,]  72   5      0        180        0   120
#> [451,]  78  12      1         11        1   160
#> [452,]  76  44      1         10        0   105
#> [453,]  76   5      1          0        1   167
#> [454,]  75   9      0        180        1   140
#> [455,]  77   5      1          0        0   123
#> [456,]  77  12      1          9        1   100
#> [457,]  73  10      1          9        0   146
#> [458,]  77  12      0        180        0   130
#> [459,]  76  12      1         11        1   120
#> [460,]  78   5      1          0        1   170
#> [461,]  75   3      1          1        1   171
#> [462,]  75   6      0        180        0   150
#> [463,]  79  10      1          8        0   190
#> [464,]  73   8      1          1        1   162
#> [465,]  73  11      1          2        1   110
#> [466,]  74   2      0        180        0   100
#> [467,]  74  15      0        180        1   172
#> [468,]  78   8      1          6        1   110
#> [469,]  74   7      0          7        0   161
#> [470,]  76  13      1          1        1   170
#> [471,]  78  32      1          9        1   198
#> [472,]  79   6      0        180        0   170
#> [473,]  80  10      1          6        1   147
#> [474,]  78   0      0        180        1   212
#> [475,]  78  13      1          5        0   130
#> [476,]  75   5      0        119        1   150
#> [477,]  75  13      1          6        0   150
#> [478,]  74  10      1          8        0   135
#> [479,]  76   1      0          1        1    83
#> [480,]  79   4      0         80        0   145
#> [481,]  78  12      1          9        0   150
#> [482,]  78   2      1          1        0   130
#> [483,]  75   4      1          0        0   212
#> [484,]  77   2      1          0        1   143
#> [485,]  78  10      0        180        1   130
#> [486,]  75   3      0          3        0     0
#> [487,]  77  24      0         24        1   160
#> [488,]  80   9      0         23        1   128
#> [489,]  78   6      1          0        1   240
#> [490,]  78  11      1          1        1   140
#> [491,]  79  11      0        180        0   160
#> [492,]  79   2      1          0        1   121
#> [493,]  78  14      1          0        1   140
#> [494,]  81   1      0          1        0   130
#> [495,]  76   4      0          4        1   160
#> [496,]  79   4      0          4        1   125
#> [497,]  77   6      0          6        1   107
#> [498,]  80   3      1          0        1   120
#> [499,]  75   2      1          1        1   204
#> [500,]  76   1      0          1        1   140
#> [501,]  77  31      1          3        1   161
#> [502,]  76   1      0          1        1    90
#> [503,]  78   7      1          0        1   110
#> [504,]  79   3      0          3        0   120
#> [505,]  77   6      0          6        1   144
#> [506,]  79   4      1          0        1   120
#> [507,]  81   1      0        180        0   120
#> [508,]  80  15      1         12        1   150
#> [509,]  82   5      0          8        1   120
#> [510,]  80  40      1          0        1   138
#> [511,]  78   4      0         59        1   112
#> [512,]  80  17      1         12        0   100
#> [513,]  76   7      0        161        0   151
#> [514,]  79  10      0         10        1   120
#> [515,]  80  15      1          0        1    90
#> [516,]  79  28      0        164        0   100
#> [517,]  78  32      0        180        1   130
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  78   7      0          7        1   147
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  80   5      1          1        1   108
#> [524,]  79   3      0          3        1   101
#> [525,]  78  26      1          5        0   194
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  78  20      1          0        1   109
#> [529,]  78   3      1          1        1   152
#> [530,]  77  10      1          8        1   130
#> [531,]  77   5      0         85        0   188
#> [532,]  80   2      1          1        0   168
#> [533,]  79   6      0          6        0   152
#> [534,]  80   6      1          0        1   119
#> [535,]  78   2      0        180        0   148
#> [536,]  80   5      0          5        1   130
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  77   4      0        180        1    98
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  84  22      1         10        0   180
#> [543,]  80   6      0          6        1   110
#> [544,]  83   9      1          5        1   170
#> [545,]  82   5      0        180        0   110
#> [546,]  81  11      1          8        0   160
#> [547,]  81   5      0        177        0    41
#> [548,]  80  11      1          8        0   170
#> [549,]  79   4      0          4        1   183
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  81  15      0        180        1   140
#> [553,]  80   7      1          0        1   146
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  79   0      1          0        1    96
#> [561,]  81   2      1          1        0   198
#> [562,]  83   2      0          2        1   155
#> [563,]  82   6      0        128        1   100
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  84   4      0          4        1    85
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  80  30      1         13        0   220
#> [580,]  83   9      0        180        0   198
#> [581,]  83   3      0        114        0    98
#> [582,]  83   2      0        154        0   130
#> [583,]  85   9      1          6        1   160
#> [584,]  81   4      0          4        0   175
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  82  16      1          8        0   103
#> [589,]  81   4      0          4        0   160
#> [590,]  86  12      0        180        1   120
#> [591,]  81  19      1         14        0   120
#> [592,]  82   3      1          2        0   130
#> [593,]  80   2      0         88        0   135
#> [594,]  86   8      0          8        1   132
#> [595,]  81  16      1          9        0   180
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  81   2      1          0        1   118
#> [601,]  83   9      0        180        1   149
#> [602,]  82   1      0        180        1   193
#> [603,]  83   4      0          4        0   130
#> [604,]  86  12      1          0        1   132
#> [605,]  82  14      1         11        1   103
#> [606,]  86   6      1          0        1   140
#> [607,]  83  19      0         43        0   150
#> [608,]  84   3      1          2        0   125
#> [609,]  83  10      1          0        1   190
#> [610,]  88  14      1          3        1   130
#> [611,]  84   3      0          3        1   121
#> [612,]  84   7      1          2        0   148
#> [613,]  87   2      0        180        0   113
#> [614,]  84   9      0         92        1   110
#> [615,]  84   3      0        180        1   170
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  85   3      0          3        1   113
#> [619,]  84  13      0         62        1   100
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  88   2      0        180        1    68
#> [625,]  83   3      0          3        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  87   6      0        180        1   110
#> [630,]  84   8      0        180        1   119
#> [631,]  84   2      0        110        1   174
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  91   8      0          8        0   100
#> [637,]  87   2      0        180        0   160
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  87   6      0        126        1   168
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  89  52      0         52        1   130
#> [655,]  92   7      0          7        1   110
#> [656,]  89   4      0          4        1   159
#> [657,]  91   0      0          0        0     0
#> [658,]  90  18      0        180        0   188
#> [659,]  94   6      0         50        0    78
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  91   1      0        180        0   158
#> [665,]  90  16      0         16        1   106
#> [666,]  95   8      1          5        1   150
#> [667,]  94   3      0         26        1   144
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]   5.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   2.0    1.0 
#>  [61] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+
#>  [71] 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+
#>  [81] 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+ 180.0+  16.0+
#>  [91] 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+   1.0 
#> [101] 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+ 180.0+
#> [121] 134.0+   3.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+  15.0    5.0+ 180.0+   4.0+
#> [141] 180.0+ 180.0+   5.0+   4.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151]   2.0  180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   0.5  161.0+ 171.0+
#> [161] 180.0+   1.0  180.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0  180.0+
#> [171] 180.0+   9.0+ 180.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+   1.0+ 180.0+
#> [181] 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [191]   7.0    7.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0    5.0 
#> [201]  18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211]   4.0+ 180.0+ 180.0+ 180.0+   9.0  180.0+ 180.0+  84.0    7.0+ 180.0+
#> [221]   1.0    1.0  180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+  17.0  180.0+
#> [231]  12.0  180.0+  14.0+  36.0  180.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [241] 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [251]   3.0  180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+
#> [261] 103.0  180.0+  13.0  179.0+ 166.0+  14.0+   3.0    0.5+ 180.0+   3.0+
#> [271] 180.0+ 175.0+   8.0    5.0   16.0    1.0+  11.0+  79.0   80.0    4.0+
#> [281]  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0 
#> [291] 175.0   10.0  180.0+ 180.0+  99.0  180.0+ 179.0+ 180.0+  11.0+ 180.0+
#> [301]   0.5    7.0+ 180.0+ 180.0+ 180.0+  21.0+   1.0   18.0+ 101.0    4.0 
#> [311]   5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 174.0+   6.0  180.0+
#> [321] 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0    5.0+ 103.0  180.0+  36.0 
#> [331]   5.0+ 180.0+ 180.0+ 180.0+   7.0    8.0+ 172.0+ 180.0+ 180.0+   7.0 
#> [341] 180.0+   7.0    8.0+ 123.0   19.0  180.0+   1.0    1.0   60.0   76.0 
#> [351] 180.0+  10.0+ 180.0+ 180.0+   7.0+   7.0+ 124.0    9.0  180.0+ 180.0+
#> [361]  12.0  180.0+ 180.0+ 152.0    2.0  173.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+
#> [381] 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+   8.0    3.0   87.0 
#> [391]  12.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0 
#> [401]   2.0   14.0+  10.0+ 180.0+   8.0+   1.0  180.0+ 180.0+  15.0  180.0+
#> [411]   1.0  180.0+ 180.0+   4.0+  10.0  180.0+  11.0  180.0+  12.0  180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+  11.0+   4.0+ 180.0+
#> [431] 180.0+   3.0  180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  85.0  180.0+
#> [441] 174.0+   0.5  180.0+  12.0  180.0+   1.0  180.0+  52.0  180.0+ 180.0+
#> [451]  12.0  180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+  12.0  180.0+
#> [461]   3.0  180.0+ 180.0+ 180.0+  11.0  180.0+ 180.0+   8.0+   7.0  180.0+
#> [471]  32.0  180.0+  10.0  180.0+ 172.0  119.0  180.0+ 180.0+   1.0   80.0 
#> [481] 180.0+ 180.0+   4.0+   2.0  180.0+   3.0   24.0   23.0  180.0+ 180.0+
#> [491] 180.0+ 180.0+ 180.0+   1.0    4.0    4.0    6.0    3.0+   2.0+   1.0 
#> [501] 171.0    1.0   43.0    3.0    6.0  138.0  180.0+ 180.0+   8.0   40.0 
#> [511]  59.0   17.0  161.0   10.0+ 180.0+ 164.0  180.0+  37.0  180.0+   7.0+
#> [521]  22.0   15.0+   5.0+   3.0  171.0+ 166.0+  71.0   20.0+   3.0+  10.0 
#> [531]  85.0   10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 180.0+
#> [541] 125.0  180.0+   6.0    9.0+ 180.0+ 180.0+ 177.0+ 169.0    4.0  180.0+
#> [551] 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 180.0+   0.5 
#> [561] 180.0+   2.0  128.0  167.0    3.0+  62.0  180.0+   4.0    1.0   38.0 
#> [571] 180.0+  90.0  180.0+ 180.0+ 180.0+   4.0   71.0    1.0   30.0  180.0+
#> [581] 114.0  154.0  180.0+   4.0+ 180.0+   1.0   12.0   16.0+   4.0+ 180.0+
#> [591] 180.0+   3.0   88.0    8.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+ 180.0+   4.0+ 180.0+ 174.0    6.0   43.0  180.0+ 180.0+  14.0 
#> [611]   3.0  180.0+ 180.0+  92.0  180.0+   4.0  177.0    3.0+  62.0   20.0 
#> [621]   4.0   46.0  115.0  180.0+   3.0+   8.0+   4.0    4.0  180.0+ 180.0+
#> [631] 110.0   29.0  180.0+  14.0    1.0+   8.0  180.0+  25.0  145.0   24.0 
#> [641]  50.0  126.0  180.0+ 180.0+   1.0  178.0+  36.0   75.0    1.0   33.0 
#> [651] 158.0  168.0  169.0   52.0    7.0    4.0    0.5  180.0+  50.0    2.0 
#> [661] 179.0+   8.0+  76.0  180.0+  16.0    8.0   26.0    2.0  180.0+  15.0+
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
#>   0.8408847 
```
