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
#> min 0.00357    44   2.820 0.1637       6
#> 1se 0.07684    11   2.982 0.1633       4
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
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38  12      1          8        1   120
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  40   6      0        180        1   138
#>  [21,]  40  11      1         10        1   120
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  42  12      1         10        1   170
#>  [25,]  43   2      1          1        1   116
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  46   2      1          1        0   126
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  46   7      1          2        0   166
#>  [36,]  43  29      0        180        1   180
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  44   0      1          0        1    96
#>  [40,]  47   4      1          3        1   160
#>  [41,]  45   8      1          0        1   117
#>  [42,]  46   6      1          0        1   100
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   9      1          6        0   170
#>  [52,]  46   3      1          0        1   119
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   4      1          1        0   125
#>  [57,]  50   6      1          2        1   140
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   9      1          9        1   122
#>  [60,]  50   7      0        180        1   110
#>  [61,]  49   2      0          2        0   105
#>  [62,]  49  23      0        179        1   112
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   8      0        180        0   160
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  46   3      0        180        1   120
#>  [73,]  46   1      1          1        0   145
#>  [74,]  48   7      1          0        1   110
#>  [75,]  53   8      0         36        1   160
#>  [76,]  47   2      1          1        0   110
#>  [77,]  52   4      1          4        0   152
#>  [78,]  54  17      1         12        1   102
#>  [79,]  53   5      0         77        0   159
#>  [80,]  53   7      1          0        0   199
#>  [81,]  54   6      1          3        0   129
#>  [82,]  50  10      1          6        0   122
#>  [83,]  50  14      1         13        0   170
#>  [84,]  53   8      1          7        0   160
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  49   5      1          2        1   150
#>  [88,]  53   4      0          4        0   140
#>  [89,]  52  14      1          7        1   200
#>  [90,]  48   6      0        180        0   160
#>  [91,]  48  11      1         10        0   120
#>  [92,]  54   9      1          0        1   138
#>  [93,]  49  16      0         16        0   125
#>  [94,]  55   3      1          1        0   150
#>  [95,]  54  23      1         10        0   131
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   6      1          2        1   114
#>  [98,]  55   4      1          2        0   150
#>  [99,]  52   4      0        180        1   180
#> [100,]  51  13      1         11        0   145
#> [101,]  50   5      1          4        1   150
#> [102,]  52   4      0        180        0   183
#> [103,]  50   3      0        174        1   153
#> [104,]  55  28      1         13        1   160
#> [105,]  49   6      1          0        1   130
#> [106,]  53   8      1          0        1   130
#> [107,]  50   7      1          0        1   127
#> [108,]  56   4      1          1        1   130
#> [109,]  52   5      0        175        1   117
#> [110,]  55   1      0        180        0   127
#> [111,]  54   1      0        180        0   162
#> [112,]  54   7      1          0        1   100
#> [113,]  56   3      0        180        1   193
#> [114,]  56   2      0        180        0   132
#> [115,]  55   5      1          4        1   120
#> [116,]  53  18      1          9        1   150
#> [117,]  54   3      0        180        1   180
#> [118,]  52  16      0         16        0   152
#> [119,]  52  16      1         14        0   170
#> [120,]  55   6      0        180        1   100
#> [121,]  54  12      1          0        1   190
#> [122,]  55   2      0        134        1   140
#> [123,]  54   3      0        180        0   128
#> [124,]  56   3      0          8        1   139
#> [125,]  55   1      0          2        0   130
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   1      0        180        1   156
#> [132,]  57   1      0          1        1   100
#> [133,]  52   2      0        180        0   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  54   5      0        180        1   108
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  53  21      1         13        1   130
#> [142,]  59   3      1          1        0   172
#> [143,]  57   4      0        180        1   119
#> [144,]  58   6      1          0        1    90
#> [145,]  53  15      1         10        1   130
#> [146,]  55   9      1          2        1   147
#> [147,]  55  13      0        166        1   140
#> [148,]  56   5      0          5        1   150
#> [149,]  54  23      1          8        0   120
#> [150,]  57   4      1          2        1   185
#> [151,]  53   4      0        147        1   145
#> [152,]  53   7      1          0        1   120
#> [153,]  55   3      1          2        0   140
#> [154,]  55   5      0          5        1   131
#> [155,]  56   4      0          4        0   164
#> [156,]  58   9      1          0        1   180
#> [157,]  55   5      1          0        0   140
#> [158,]  56   7      1          5        1   120
#> [159,]  59   9      1          1        1   125
#> [160,]  57   1      0        180        0   148
#> [161,]  60  11      1          9        0   106
#> [162,]  59   3      0        180        0   120
#> [163,]  57   2      0          2        1   120
#> [164,]  60   5      1          1        0   138
#> [165,]  57   5      0        180        1   130
#> [166,]  58  11      1          9        1   124
#> [167,]  55   5      1          0        1   160
#> [168,]  57  10      1          9        0   103
#> [169,]  59   6      1          0        1   140
#> [170,]  60   0      1          0        1    80
#> [171,]  58  14      1          6        0   190
#> [172,]  61   4      1          3        0   151
#> [173,]  61   9      1          8        0   150
#> [174,]  61   3      1          2        1   102
#> [175,]  61  20      1         13        0   130
#> [176,]  57   2      1          0        1   116
#> [177,]  58  10      0         10        1   150
#> [178,]  57   4      1          3        0   138
#> [179,]  57  11      0        180        1   150
#> [180,]  61   3      0         17        0   143
#> [181,]  56  14      0         45        0   130
#> [182,]  57   3      1          2        0   120
#> [183,]  58  19      1         13        1   140
#> [184,]  56  18      1         11        1   165
#> [185,]  59   9      1          0        1    80
#> [186,]  55   4      1          3        1   160
#> [187,]  60  12      1          0        1   114
#> [188,]  55   9      1          7        1   135
#> [189,]  61   4      1          0        1   115
#> [190,]  56   8      1          8        0   120
#> [191,]  59  11      1          8        1   190
#> [192,]  59   5      1          2        0   182
#> [193,]  58   5      1          1        1   135
#> [194,]  59  10      0        180        0   160
#> [195,]  61   8      0         77        0   120
#> [196,]  61  13      0         13        0   210
#> [197,]  58   8      1          5        0   152
#> [198,]  62  10      1          0        1   153
#> [199,]  57   3      1          0        0   100
#> [200,]  61  28      1          7        0   133
#> [201,]  58   8      1          3        1   150
#> [202,]  57   7      0        169        0   180
#> [203,]  61   7      0          7        1   150
#> [204,]  60   7      0          7        0   147
#> [205,]  61   6      0          6        0   134
#> [206,]  59  13      1          2        0   198
#> [207,]  57  12      1          9        1   120
#> [208,]  62   4      1          0        0   160
#> [209,]  60  17      1          8        1   140
#> [210,]  58   3      1          0        1   146
#> [211,]  58   2      0         30        0   202
#> [212,]  63   6      0         28        1   120
#> [213,]  61  13      0         13        0   120
#> [214,]  61   5      0          5        1   160
#> [215,]  57   2      1          1        0   159
#> [216,]  62  17      1         10        1   180
#> [217,]  58   7      0        180        1   150
#> [218,]  63   3      1          1        0   180
#> [219,]  63   1      0        180        1   130
#> [220,]  61   7      0        180        0   135
#> [221,]  63   4      1          3        0   222
#> [222,]  62   3      0        180        1   105
#> [223,]  63   4      0        180        1   190
#> [224,]  63  15      1         10        1   126
#> [225,]  64   4      0        180        0   130
#> [226,]  63   4      1          1        0   155
#> [227,]  59   8      0        180        1   140
#> [228,]  61   9      1          9        1   150
#> [229,]  62   7      0          7        0   150
#> [230,]  59   1      0         22        1   162
#> [231,]  59   4      0        180        0   196
#> [232,]  60   7      1          5        1   141
#> [233,]  60   7      0          7        0   140
#> [234,]  60   7      1          1        1    90
#> [235,]  65  13      0        180        1   100
#> [236,]  63   1      0          1        0   162
#> [237,]  63   1      0          1        0   130
#> [238,]  62   6      0        180        0   170
#> [239,]  60   3      0          3        0   168
#> [240,]  64  10      1          9        0   160
#> [241,]  62   6      0          6        0   120
#> [242,]  59  10      0        180        1   130
#> [243,]  60   8      0         17        1   130
#> [244,]  61   6      1          1        1   117
#> [245,]  64  12      1         11        0   160
#> [246,]  66   1      1          0        1   120
#> [247,]  64   6      1          0        1   140
#> [248,]  63  10      1          0        1   148
#> [249,]  65  36      1         11        0   140
#> [250,]  63   4      1          3        0   162
#> [251,]  66   3      1          1        0   127
#> [252,]  61  10      1          2        1   194
#> [253,]  63  12      1          9        0   114
#> [254,]  63   7      0        180        0   120
#> [255,]  65   8      1          0        0   168
#> [256,]  65  10      1          8        1   120
#> [257,]  60   6      0        180        0   130
#> [258,]  64  21      1         10        0   190
#> [259,]  61  12      1         11        0   154
#> [260,]  65   3      0        180        1   190
#> [261,]  64   7      0        180        1   120
#> [262,]  66   6      1          1        1   130
#> [263,]  62   3      1          1        1   199
#> [264,]  65   6      0          9        0   112
#> [265,]  65   3      1          0        1    80
#> [266,]  63   5      1          4        0   170
#> [267,]  63   2      1          1        0   180
#> [268,]  62  13      1         11        0   180
#> [269,]  64   2      0          2        0   201
#> [270,]  66  18      1          5        0   142
#> [271,]  66  16      1         11        1   169
#> [272,]  61  15      1         10        0   130
#> [273,]  63   9      1          8        1   160
#> [274,]  63   2      1          0        0   140
#> [275,]  64  19      1          8        1   160
#> [276,]  65   8      1          0        1   140
#> [277,]  67   6      0        180        1   170
#> [278,]  68   5      1          4        1   150
#> [279,]  64  13      1         12        1   150
#> [280,]  66   7      1          0        1   115
#> [281,]  65   3      0          3        0   105
#> [282,]  64   0      0          0        1   148
#> [283,]  67   4      1          3        0   130
#> [284,]  66   6      1          0        1   140
#> [285,]  65   2      1          1        1   170
#> [286,]  68   1      0        180        1   166
#> [287,]  64  10      1          9        1   110
#> [288,]  68   5      0          5        1    90
#> [289,]  63  10      0         16        1   160
#> [290,]  66  14      0        180        0   130
#> [291,]  64   1      0          1        1   120
#> [292,]  68  18      0        180        1   260
#> [293,]  63  10      0         18        1   130
#> [294,]  68  11      0        180        0   160
#> [295,]  66  12      1         10        1   150
#> [296,]  66  11      1          0        0   100
#> [297,]  69  12      0         15        1   140
#> [298,]  66  15      1         13        1   160
#> [299,]  63   2      0        180        0   150
#> [300,]  63   8      0        180        1   120
#> [301,]  68  14      1         13        1   140
#> [302,]  66   3      0          3        1   138
#> [303,]  69   1      1          0        0   170
#> [304,]  67   1      0        180        1   160
#> [305,]  68  10      1         10        1   150
#> [306,]  67   7      1          4        1   130
#> [307,]  67   2      0        180        0   184
#> [308,]  65  10      1          1        1   148
#> [309,]  67  12      1         12        0   160
#> [310,]  65   4      1          1        0   130
#> [311,]  66   4      0        180        1   130
#> [312,]  70  15      1         12        1   132
#> [313,]  64   4      0        180        1   140
#> [314,]  64   0      1          0        1   118
#> [315,]  67   2      0         18        0   131
#> [316,]  66   7      1          5        1   131
#> [317,]  66   4      0        180        0   177
#> [318,]  68   4      1          0        1   160
#> [319,]  64  21      0         21        1   155
#> [320,]  66   6      0        180        0   140
#> [321,]  65   1      0          1        1   120
#> [322,]  68  18      1          0        1   160
#> [323,]  65   6      0        101        1   115
#> [324,]  71   3      0          5        0   112
#> [325,]  67   2      0        180        0   128
#> [326,]  66   9      1          3        1   151
#> [327,]  66   1      1          1        1   165
#> [328,]  70  14      0        171        0   166
#> [329,]  67  10      1          9        0   200
#> [330,]  68  18      1         14        1   170
#> [331,]  69   0      0          0        1   148
#> [332,]  69   3      1          2        0   151
#> [333,]  67  14      1         13        0   130
#> [334,]  69   8      0        180        1   180
#> [335,]  71   7      0          7        0   230
#> [336,]  66   2      0          2        1   228
#> [337,]  71   6      0         45        1   158
#> [338,]  71   3      0        103        0   133
#> [339,]  69   3      0          3        1   130
#> [340,]  67   1      0         36        1   104
#> [341,]  67   5      0          5        0   130
#> [342,]  69   6      1          4        1   174
#> [343,]  72   3      1          0        1   132
#> [344,]  72   7      0          7        1   110
#> [345,]  69   8      1          7        1   108
#> [346,]  66   2      1          1        0   123
#> [347,]  67  14      0        172        1   140
#> [348,]  66   2      0        180        0   130
#> [349,]  67   7      1          4        0   122
#> [350,]  68   2      0          7        1   130
#> [351,]  69   8      1          2        0   121
#> [352,]  67  13      1          9        0   130
#> [353,]  70   3      0        123        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  72   5      1          4        0   170
#> [356,]  69   1      0          1        1   110
#> [357,]  67   1      0          1        1    60
#> [358,]  69   5      0         76        0   120
#> [359,]  72  13      1         11        1   195
#> [360,]  68  10      1          8        1   160
#> [361,]  66  24      1         13        0   130
#> [362,]  70  35      1          0        1   105
#> [363,]  70   7      0          7        0   102
#> [364,]  68   7      1          2        0   135
#> [365,]  71   6      0          9        0   120
#> [366,]  69  10      1          6        1   120
#> [367,]  70  11      0        180        1   210
#> [368,]  73  13      0        152        1   130
#> [369,]  70   5      0        180        0   150
#> [370,]  67   4      1          1        0   134
#> [371,]  71   1      0        173        1   188
#> [372,]  68  23      0        180        1   220
#> [373,]  69   3      0        180        0   220
#> [374,]  71   3      1          2        0   150
#> [375,]  68   4      1          3        0   210
#> [376,]  72   5      0         28        0   120
#> [377,]  71   5      0        180        0   191
#> [378,]  73   6      0        180        1   117
#> [379,]  69  16      1         10        1   140
#> [380,]  70   4      0        180        0   180
#> [381,]  69   1      1          0        0   155
#> [382,]  71   2      1          0        1   180
#> [383,]  68  15      1         13        1   130
#> [384,]  70   3      0          3        1   159
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  74   8      1          0        1    85
#> [388,]  73   4      0        180        1   154
#> [389,]  71   3      1          1        0   150
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  74   0      1          0        1    90
#> [393,]  70   5      1          0        1   190
#> [394,]  71   8      1          7        0   149
#> [395,]  71   3      1          2        1   190
#> [396,]  73  10      1          8        0   106
#> [397,]  69  12      1          1        1   149
#> [398,]  74   4      0          4        0   120
#> [399,]  73   4      0         58        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  73   6      0        180        0   110
#> [402,]  71   7      1          2        0   143
#> [403,]  74   3      0          3        1   150
#> [404,]  71  13      1          8        0   121
#> [405,]  69   2      1          1        1    80
#> [406,]  75   2      1          1        0   145
#> [407,]  73  10      1         10        1   120
#> [408,]  74  15      1          9        1   179
#> [409,]  71   2      0         10        1   112
#> [410,]  73   1      0          1        1    80
#> [411,]  75   9      1          7        0   140
#> [412,]  71   4      0          4        0   134
#> [413,]  72  15      1         12        1   120
#> [414,]  73  10      1          8        0   120
#> [415,]  70   7      1          4        0   184
#> [416,]  72   7      0         57        1   145
#> [417,]  73  10      0        180        0   162
#> [418,]  72  11      0         11        1   140
#> [419,]  73   5      1          3        1   112
#> [420,]  76  25      1         12        1   170
#> [421,]  73  12      1         12        1   140
#> [422,]  75   1      0        180        1   140
#> [423,]  72   4      1          0        1   197
#> [424,]  71   3      1          0        0   144
#> [425,]  73   5      0        180        0   126
#> [426,]  73   4      0        180        0   124
#> [427,]  74  34      1          8        1   233
#> [428,]  76   3      1          0        1   120
#> [429,]  71  32      1         12        1   107
#> [430,]  72   5      0        180        0   154
#> [431,]  72   3      0        180        0   160
#> [432,]  76   5      0          5        1   130
#> [433,]  77  11      0         11        1   150
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   7      0        180        1   150
#> [438,]  76   1      0        180        0   114
#> [439,]  76   8      1          0        1   141
#> [440,]  74  19      1          4        1   200
#> [441,]  75  23      1         14        1   110
#> [442,]  72   4      0         85        1   120
#> [443,]  72   4      1          3        0   160
#> [444,]  76  17      1          0        1   200
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  75   0      0          0        1   130
#> [448,]  75  12      0         12        1   160
#> [449,]  74   8      1          0        1   105
#> [450,]  76  13      1          8        1   148
#> [451,]  75   4      1          2        1   188
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  74   2      0        180        0   111
#> [455,]  73   1      0         52        1   105
#> [456,]  73   0      0        180        0   156
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  74  10      1          0        1   135
#> [460,]  76   5      1          0        1   167
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  73  10      1          9        0   146
#> [465,]  77  12      0        180        0   130
#> [466,]  77   1      1          0        1    90
#> [467,]  73   7      1          0        0   174
#> [468,]  74   6      0         79        1   140
#> [469,]  74   9      1          8        0   200
#> [470,]  79  10      1          8        0   190
#> [471,]  74   2      1          0        1   130
#> [472,]  78  18      0         18        1   144
#> [473,]  77   3      0        180        0   110
#> [474,]  73  11      1          2        1   110
#> [475,]  78   7      0          7        1   133
#> [476,]  74  15      0        180        1   172
#> [477,]  78   8      1          6        1   110
#> [478,]  74   7      0          7        0   161
#> [479,]  76  13      1          1        1   170
#> [480,]  78  32      1          9        1   198
#> [481,]  79   6      0        180        0   170
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  80   8      0          8        1   120
#> [486,]  75  13      1          6        0   150
#> [487,]  74  10      1          8        0   135
#> [488,]  76   1      0          1        1    83
#> [489,]  79   4      0         80        0   145
#> [490,]  78  12      1          9        0   150
#> [491,]  78   2      1          1        0   130
#> [492,]  75   4      1          0        0   212
#> [493,]  77   2      1          0        1   143
#> [494,]  78  10      0        180        1   130
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  77  24      0         24        1   160
#> [498,]  79   8      0         32        1   120
#> [499,]  80   9      0         23        1   128
#> [500,]  80   6      0          6        1   150
#> [501,]  78   6      1          0        1   240
#> [502,]  76   3      1          0        1   140
#> [503,]  78  11      1          1        1   140
#> [504,]  79   2      1          0        1   121
#> [505,]  76  10      1          8        0   180
#> [506,]  76  12      1         10        1   127
#> [507,]  77   6      0          6        1   107
#> [508,]  78  11      0        180        1   135
#> [509,]  77  31      1          3        1   161
#> [510,]  79   3      0          3        0   120
#> [511,]  77   7      0        180        1   170
#> [512,]  77   6      0          6        1   144
#> [513,]  81   1      0        180        0   120
#> [514,]  80  15      1         12        1   150
#> [515,]  82   5      0          8        1   120
#> [516,]  80  40      1          0        1   138
#> [517,]  78   4      0         59        1   112
#> [518,]  80  17      1         12        0   100
#> [519,]  80  15      1          0        1    90
#> [520,]  80   9      0        118        1   186
#> [521,]  80   6      0        173        1   160
#> [522,]  78  32      0        180        1   130
#> [523,]  81   3      0        180        0   184
#> [524,]  81   2      0        175        0   172
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  78   4      0        180        0   175
#> [528,]  78  26      1          5        0   194
#> [529,]  76   1      0        166        0   131
#> [530,]  81   4      1          1        1   104
#> [531,]  78  20      1          0        1   109
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  77  10      1          8        1   130
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  80   6      1          0        1   119
#> [538,]  78   2      0        180        0   148
#> [539,]  80   5      0          5        1   130
#> [540,]  82   1      1          0        1    82
#> [541,]  81   1      0        108        0   129
#> [542,]  79   1      0        125        0   193
#> [543,]  82  21      1          2        0   155
#> [544,]  84  22      1         10        0   180
#> [545,]  80   6      0          6        1   110
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  81  11      1          8        0   160
#> [550,]  81   5      0        177        0    41
#> [551,]  80  11      1          8        0   170
#> [552,]  78  23      1         10        1   145
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  79   1      0        180        1   170
#> [556,]  81  20      1          9        0   170
#> [557,]  83   8      0          8        0   115
#> [558,]  80   6      1          0        1   150
#> [559,]  81   8      0        180        0   146
#> [560,]  80   8      1          7        0   160
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  83   2      0          2        1   155
#> [564,]  82  23      1          0        0   110
#> [565,]  84   5      0        180        1   203
#> [566,]  81   1      0          1        1   150
#> [567,]  84   1      0         38        1   205
#> [568,]  79   9      1          8        0   150
#> [569,]  85   3      1          2        1   160
#> [570,]  80  13      1          8        1   140
#> [571,]  84   4      0         89        1   129
#> [572,]  80   2      1          0        1   130
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  82  19      0         19        0   120
#> [576,]  80  30      1         13        0   220
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  83   2      0        154        0   130
#> [581,]  82   0      0          2        1   100
#> [582,]  83   1      0        180        0   160
#> [583,]  81   4      0          4        0   175
#> [584,]  81   4      0          4        0   160
#> [585,]  86  12      0        180        1   120
#> [586,]  82   3      1          2        0   130
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   8      0          8        1   132
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  85   3      0          3        1   118
#> [595,]  81   2      1          0        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  86  12      1          0        1   132
#> [602,]  82  14      1         11        1   103
#> [603,]  86   6      1          0        1   140
#> [604,]  84  16      0         70        1   150
#> [605,]  83  19      0         43        0   150
#> [606,]  84   3      1          2        0   125
#> [607,]  83  10      1          0        1   190
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  87   2      0        180        0   113
#> [611,]  84   9      0         92        1   110
#> [612,]  86   4      0         38        1   122
#> [613,]  82   4      0          4        0   130
#> [614,]  85   3      0          3        1   113
#> [615,]  84  13      0         62        1   100
#> [616,]  83  20      1          3        1   150
#> [617,]  88   4      0          4        1   115
#> [618,]  85  22      0         22        1   184
#> [619,]  83   9      0         65        1   150
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  88   2      0        180        1    68
#> [625,]  86  15      1          8        1   109
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  85   8      0          8        1   136
#> [630,]  84   2      0        110        1   174
#> [631,]  87  15      1          9        1   138
#> [632,]  84   0      0        180        1   136
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   6      1          0        0   125
#> [639,]  86   3      1          0        1    80
#> [640,]  87   6      0        126        1   168
#> [641,]  86  10      0        180        1   137
#> [642,]  90   4      1          0        0   121
#> [643,]  87  43      0        178        1   130
#> [644,]  87   5      0         36        1   150
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89  12      1          0        1   130
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  94   3      0         26        1   144
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+  12.0 
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61]   2.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0   36.0  180.0+   4.0+ 180.0+  77.0  180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+
#>  [91] 180.0+ 180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+
#> [101] 171.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+
#> [111] 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0  180.0+
#> [121]  12.0+ 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0  166.0+   5.0+ 180.0+   4.0+
#> [151] 147.0+ 180.0+ 180.0+   5.0+   4.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0    0.5 
#> [171] 171.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0 
#> [181]  45.0    3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+  24.0  180.0+   8.0 
#> [191] 180.0+ 180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+  94.0 
#> [201] 180.0+ 169.0    7.0    7.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [211]  30.0   28.0   13.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   7.0+  22.0 
#> [231] 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   3.0+ 167.0 
#> [241]   6.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+  36.0  180.0+
#> [251]   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+ 180.0+   2.0+  18.0+
#> [271] 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+   5.0+  13.0  179.0+
#> [281]   3.0    0.5+ 180.0+ 180.0+ 175.0+ 180.0+ 180.0+   5.0   16.0  180.0+
#> [291]   1.0  180.0+  18.0  180.0+  80.0  180.0+  15.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+ 180.0+  12.0  180.0+
#> [311] 180.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+  21.0+ 180.0+
#> [321]   1.0   18.0+ 101.0    5.0  180.0+ 180.0+   1.0  171.0  174.0+ 180.0+
#> [331]   0.5  180.0+ 180.0+ 180.0+   7.0+   2.0   45.0  103.0    3.0+  36.0 
#> [341]   5.0+  97.0  180.0+   7.0    8.0+   2.0+ 172.0+ 180.0+   7.0    7.0 
#> [351]   8.0+  13.0+ 123.0  180.0+ 180.0+   1.0    1.0   76.0  132.0   10.0+
#> [361] 180.0+ 180.0+   7.0+   7.0+   9.0  180.0+ 180.0+ 152.0  180.0+  76.0 
#> [371] 173.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+   3.0+  20.0 
#> [391] 180.0+   0.5  180.0+   8.0    3.0   87.0   12.0    4.0+  58.0  180.0+
#> [401] 180.0+ 180.0+   3.0  175.0    2.0  180.0+  15.0  180.0+  10.0    1.0 
#> [411] 180.0+   4.0+ 180.0+  10.0  104.0+  57.0  180.0+  11.0    5.0  180.0+
#> [421]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+
#> [431] 180.0+   5.0   11.0+  15.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+
#> [441] 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   0.5   12.0  180.0+ 180.0+
#> [451]  46.0    4.0    1.0  180.0+  52.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0  180.0+ 180.0+   1.0    7.0+  79.0  168.0+ 180.0+
#> [471] 176.0+  18.0  180.0+  11.0    7.0  180.0+   8.0+   7.0  180.0+  32.0 
#> [481] 180.0+ 172.0  119.0   12.0    8.0  180.0+ 180.0+   1.0   80.0  180.0+
#> [491] 180.0+   4.0+   2.0  180.0+   3.0   29.0   24.0   32.0   23.0    6.0 
#> [501] 180.0+   3.0+ 180.0+ 180.0+  10.0+ 180.0+   6.0  180.0+ 171.0    3.0 
#> [511] 180.0+   6.0  180.0+ 180.0+   8.0   40.0   59.0   17.0  180.0+ 118.0 
#> [521] 173.0  180.0+ 180.0+ 175.0+   7.0+  22.0  180.0+ 171.0+ 166.0+  71.0 
#> [531]  20.0+   1.0    3.0+  10.0  180.0+  85.0    6.0  180.0+   5.0    1.0 
#> [541] 108.0  125.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [551] 169.0   70.0    4.0  180.0+ 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+
#> [561] 180.0+ 180.0+   2.0   62.0  180.0+   1.0   38.0  180.0+ 180.0+ 180.0+
#> [571]  89.0  180.0+  71.0    1.0   19.0   30.0  180.0+ 114.0  180.0+ 154.0 
#> [581]   2.0  180.0+   4.0+   4.0+ 180.0+   3.0   88.0  126.0    8.0  180.0+
#> [591] 165.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 180.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+   3.0   13.0  180.0+
#> [611]  92.0   38.0    4.0    3.0+  62.0   20.0    4.0   22.0   65.0   11.0 
#> [621] 180.0+  46.0  115.0  180.0+ 180.0+ 119.0  180.0+   1.0+   8.0  110.0 
#> [631] 180.0+ 180.0+  46.0   14.0    1.0+ 180.0+   8.0   25.0    3.0  126.0 
#> [641] 180.0+   4.0  178.0+  36.0   75.0    3.0+   1.0   33.0  158.0   74.0 
#> [651] 180.0+ 169.0   52.0    0.5  180.0+ 180.0+   4.0  180.0+   1.0+   2.0 
#> [661]  76.0  180.0+  16.0   12.0    8.0   26.0    0.5    2.0    3.0   15.0+
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
#>   0.8321141 
```
